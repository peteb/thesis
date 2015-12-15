/*
 * $Id: modgen.cpp 1396 2010-05-07 16:01:18Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include <llvm/IR/Module.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/Support/SourceMgr.h>
#include <llvm/Support/raw_ostream.h>
#include <llvm/AsmParser/Parser.h>
#include <sstream>
#include <stdexcept>
#include <iostream>

#include "modgen.h"
#include "ast/object.h"
#include "ast/unit.h"
#include "lexscope.h"
#include "lexentry.h"
#include "builder.h"
#include "str_util.h"

#include "libthorn/sym.h"
#include "libthorn/config.h"

using namespace llvm;

ModuleGen::ModuleGen() {
  _name = "unnamed";
  _eh = MRVExceptions;
}

Module * ModuleGen::createTool(AST::Unit * unit) {
  Module * mod = new Module(_name, llvm::getGlobalContext());

  executeDeclares(mod);

  // create entry code
  Type * objectTy = Builder::getObjectType(mod);
  assert(objectTy && "Must find object type");

  // const Type * rettype = IntegerType::get(mod->getContext(), 32);

  std::vector<Type *> parameters;
  parameters.push_back(Type::getInt32Ty(mod->getContext()));
  parameters.push_back(objectTy);

  Function * entryFunction = createFunction(
                                            IntegerType::get(mod->getContext(), 32),
                                            "main",
                                            parameters,
                                            mod
                                            );


  BasicBlock * entryBlock = BasicBlock::Create(
                                               mod->getContext(), "entry", entryFunction)
    ;

  // generate code for "main"
  LexScope lobbyScope;

  IRBuilder<> irb(entryBlock);
  Builder builder(irb, lobbyScope, mod);
  builder.setExceptionHandling(_eh);

  irb.SetInsertPoint(entryBlock);

  // initialize runtime
  Function * __t_init = mod->getFunction("__t_init");
  assert(__t_init);
  builder.irb().CreateCall(__t_init);


  // create lobby AST node, copy vardefs from unit
  AST::Object * lobbyObj = new AST::Object;
  for (unsigned i = 0; i < unit->numMembers(); ++i) {
    lobbyObj->addMember(unit->getMember(i));
  }



  // global map lobby -> address
  LexScopeEntry * lobbyEntry = createGlobalPoint("__lobby_map", mod);
  lobbyScope.setEntry("LOBBY", lobbyEntry);

  // create global mapping points for libraries
  initializeDependencies(builder);

  // create lobby object code
  Builder lobbyBuilder(builder, lobbyScope, mod);
  Value * lobbyObjVal = lobbyObj->genCode(lobbyBuilder);
  lobbyEntry->genStore(lobbyObjVal, lobbyBuilder);



  // call __t_start on the lobby object + argc and argv
  Function * __t_start = mod->getFunction("__t_start");
  assert(__t_start);

  Function::arg_iterator iter = entryFunction->arg_begin();
  Value * argc = iter;
  Value * argv = (++iter);

  Value * ret = builder.irb().CreateCall3(__t_start, argc, argv, lobbyObjVal);
  builder.irb().CreateRet(ret);


  return mod;
}

Module * ModuleGen::createLibrary(AST::Unit * cunit) {
  Module * mod = new Module(_name, llvm::getGlobalContext());

  executeDeclares(mod);

  // create entry code
  Type * objectTy = Builder::getObjectType(mod);


  Function * entryFunction = createFunction(
                                            objectTy,
                                            "__lib_" + lcase(_name) + "_init",
                                            std::vector<Type *>(),
                                            mod
                                            );


  BasicBlock * entryBlock = BasicBlock::Create(
                                               mod->getContext(), "entry", entryFunction)
    ;

  // generate code for "main"
  LexScope libScope;

  IRBuilder<> irb(entryBlock);
  Builder builder(irb, libScope, mod);
  builder.setExceptionHandling(_eh);

  irb.SetInsertPoint(entryBlock);


  // create lib AST node, copy vardefs from unit
  AST::Object * libObj = new AST::Object;
  for (unsigned i = 0; i < cunit->numMembers(); ++i) {
    libObj->addMember(cunit->getMember(i));
  }



  // global map lobby -> address
  LexScopeEntry * libEntry = createGlobalPoint(
                                               "__lib_" + lcase(_name) + "_map", mod
                                               );

  libScope.setEntry(ucase(_name), libEntry);

  // create global mapping points for libraries
  initializeDependencies(builder);

  // create lib object code
  Value * libObjVal = libObj->genCode(builder);
  libEntry->genStore(libObjVal, builder);



  // call __'libname'_init on the object, which should inject C code for the library
  std::vector<Type *> parameters;
  parameters.push_back(objectTy);

  const std::string initname = "__" + lcase(_name) + "_init";
  FunctionType * initFunctionC = FunctionType::get(
                                                   objectTy,
                                                   llvm::ArrayRef<Type *>(parameters),
                                                   false
                                                   );

  Constant * libInit = mod->getOrInsertFunction(initname, initFunctionC);
  assert(libInit);
  builder.irb().CreateCall(libInit, libObjVal);
  builder.irb().CreateRet(libObjVal);

  return mod;
}

void ModuleGen::addDependency(const std::string & library) {
  _dependencies.push_back(library);
}

void ModuleGen::setName(const std::string & name) {
  _name = name;
}

void ModuleGen::setExceptionHandling(ExceptionHandling eh) {
  _eh = eh;

#ifndef EH_MRV
  if (_eh == MRVExceptions) {
    throw std::runtime_error("compiler + runtime not compiled for MRV EH");
  }
#endif
}

LexScopeEntry * ModuleGen::createGlobalPoint(const std::string & sym, Module * mod) {
  Type * objectTy = Builder::getObjectType(mod);
  Constant * nullVal = Constant::getNullValue(objectTy);

  GlobalVariable * gv = new GlobalVariable(*mod,
                                           objectTy, false, GlobalValue::LinkOnceAnyLinkage,
                                           nullVal, sym, 0
                                           );

  return new LexScopeEntry(gv, LexScopeLS|LexScopeNoClone);
}



void ModuleGen::initializeDependencies(Builder & builder) {
  Module * mod = builder.getModule();
  LexScope & scope = builder.getLexScope();

  Type * objectTy = Builder::getObjectType(mod);
  Constant * nullVal = Constant::getNullValue(objectTy);

  FunctionType * initFunction = FunctionType::get(
                                                  objectTy,
                                                  false
                                                  );

  // TODO: create lib objects here?
  for (unsigned i = 0; i < _dependencies.size(); ++i) {
    const std::string libname = _dependencies[i];
    const std::string mapname = "__lib_" + lcase(libname) + "_map";
    const std::string initname = "__lib_" + lcase(libname) + "_init";

    Constant * libInit = mod->getOrInsertFunction(initname, initFunction);
    assert(libInit);

    builder.irb().CreateCall(cast<Function>(libInit));


    GlobalVariable * libMap = new GlobalVariable(*mod,
                                                 objectTy, false, GlobalValue::LinkOnceAnyLinkage,
                                                 nullVal, mapname, 0
                                                 );

    LexScopeEntry * libEntry = new LexScopeEntry(
                                                 libMap, LexScopeLS|LexScopeNoClone
                                                 );

    scope.setEntry(ucase(libname), libEntry);
  }

}

Function * ModuleGen::createFunction(Type * ret, const std::string & name,
                                     const std::vector<Type *> & parameters, Module * mod)
{
  FunctionType * type = FunctionType::get(
                                          ret,
                                          parameters,
                                          false
                                          );

  // create the function
  Function * function = Function::Create(
                                         type,
                                         Function::ExternalLinkage,
                                         name,
                                         mod
                                         );

  function->setCallingConv(CallingConv::C);
  function->setDoesNotThrow();

  return function;
}

void ModuleGen::executeDeclares(llvm::Module * mod) {
  std::vector<std::string> declares;

  declares.push_back("target datalayout = \"e-m:o-i64:64-f80:128-n8:16:32:64-S128\"");
  declares.push_back("%object = type i8*");

#ifdef EH_MRV
  declares.push_back("%ret = type {%object, %object}");
#else
  declares.push_back("%ret = type { %object }");
#endif

#ifdef SYM_ADDRESS
  declares.push_back("%sym = type i32*");
#else
  declares.push_back("%sym = type { i8* }");
#endif

  declares.push_back("%fptr = type %ret (%object, %object, %object)*");
  // declares.push_back("%callsite = type <{%object, %object, %object, %fptr, %sym}>");
  declares.push_back("%callsite = type {%sym, %object, %object, %object, %object, %object, %fptr}");

  declares.push_back("declare %ret @object_exec(%object, %sym, %object)");
  declares.push_back("declare void @object_set_slot(%object, %sym, %object, i32)");
  declares.push_back("declare %object @object_get_slot(%object, %sym)");
  declares.push_back("declare void @object_set_delegate(%object, %object)");

  // declares.push_back("declare %fptr @object_lookup_method(%object, %sym)");

  declares.push_back("declare %object @object_create(i32)");
  declares.push_back("declare %object @string_object(i8* noalias nocapture) readnone");
  declares.push_back("declare %object @int_object(i64) readnone");
  declares.push_back("declare %object @float_object(float) readnone");
  declares.push_back("declare %object @bool_object(i32) readnone");
  declares.push_back("declare %object @null_object() readnone");
  // declares.push_back("declare %object @closure_object_place()");
  declares.push_back("declare %object @closure_object(%fptr, i32)");
  declares.push_back("declare %object @closure_object_null(%fptr)");
  declares.push_back("declare %object @closure_set_fptrC(%object, %fptr)");
  declares.push_back("declare %object @array_get_elementC(%object, i32)");
  declares.push_back("declare %object @array_set_elementC(%object, i32, %object)");
  declares.push_back("declare i32 @bool_get_value(%object) readnone");
  declares.push_back("declare %object @array_object(i32)");
  declares.push_back("declare %ret @__t_throw(%object)");
  declares.push_back("declare i32 @__t_start(i32, %object, %object)");
  declares.push_back("declare void @__t_init()");
  declares.push_back("declare %object @__t_spawn(%object)");
  declares.push_back("declare %object @__t_send(%object, %object)");
  declares.push_back("declare %object @__t_clone(%object)");
  declares.push_back("declare %object @__t_wrap_value(%object)");
  declares.push_back("declare void @__t_callsite(%callsite*, %sym, %object, %object)");
  declares.push_back("declare %ret @__t_call(%callsite*, %object)");

  std::string joint;
  for (unsigned i = 0; i < declares.size(); ++i) {
    joint += declares[i] + "\n";
  }

  SMDiagnostic err;
  llvm::MemoryBufferRef buf(joint, "<string>");

  if (llvm::parseAssemblyInto(buf, *mod, err)) {
    // std::stringstream ss;
    // raw_os_ostream stream(ss);
    // err.Print("", stream);
    // stream.flush();
    err.print("tlc", llvm::outs());
    throw std::runtime_error("failed to parse declare statement\n");
  }
}

ExceptionHandling ModuleGen::ParseEH(const std::string & str) {
  if (str == "mrv")
    return MRVExceptions;
  else if (str == "none")
    return NoExceptions;

  throw std::runtime_error("invalid exception handling mechanism");
}
