/*
 * $Id: methodcall.cpp 1262 2010-04-29 12:59:01Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include "methodcall.h"
#include "lexentry.h"
#include "lexscope.h"
#include "builder.h"
#include "visitor.h"

#include <llvm/IR/Module.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/Support/raw_ostream.h>

using namespace llvm;

AST::MethodCall::IdentifierMap AST::MethodCall::_identifiers;

AST::MethodCall::MethodCall(const std::string & name)
  : _name(name)
{
  _target = 0;
}

AST::MethodCall::~MethodCall() {
  delete _target;

  for (unsigned i = 0; i < _arguments.size(); ++i)
    delete _arguments[i];
}
#include <iostream>

Value * AST::MethodCall::genCode(Builder & builder) const {
  Value * target = _target->genCode(builder);
  assert(target);

  Module * module = builder.getModule();

  // acquire handle to 'object_exec'
  Function * object_exec = module->getFunction("object_exec");
  Function * array_object = module->getFunction("array_object");
  Function * array_set_elementC = module->getFunction("array_set_elementC");
  // Function * object_lookup_method = module->getFunction("object_lookup_method");

  assert(object_exec);
  assert(array_object);
  assert(array_set_elementC);


  LexScopeEntry * cachePoint = 0;
  BasicBlock * previousBlock = 0;
  BasicBlock * cacheBlock = 0;

  int numLoops = builder.getLexScope().countEntries("__LOOP", LexScopeTag);

  // if (numLoops > 0) {	//< only cache stuff if we're nested inside a loop
  cachePoint = builder.getLexScope().getEntry("__CACHE");
  // }

  if (cachePoint) {
    Value * bb = cachePoint->genLoad(builder);

    previousBlock = builder.irb().GetInsertBlock();
    cacheBlock = cast<BasicBlock>(bb);
    // builder.irb().SetInsertPoint(block, block->front());
  }

  Function * __t_callsite = module->getFunction("__t_callsite");
  Function * __t_call = module->getFunction("__t_call");
  assert(__t_callsite);
  assert(__t_call);

  if (cacheBlock)
    builder.irb().SetInsertPoint(cacheBlock/*, cacheBlock->front()*/);

  //Constant * identifier = getIdentifier(_name, module);
  Value * val = builder.CreateSymbol(_name);

  //builder.CreateGlobalStringPtr(_name.c_str());
  // builder.CreateConstGEP2_32(identifier, 0, 0);
  Value * numargs = builder.CreateInt32(_arguments.size());
  Type * siteType = module->getTypeByName("callsite");
  Value * csite = builder.irb().CreateAlloca(siteType, 0, "cs_" + _name);


  //	Value * exc = ns.getEntry("EXC")->genLoad(builder, module, ns);
  Value * arglist = builder.irb().CreateCall(array_object, numargs, "args_" + _name);

  BasicBlock::iterator cacheInsert = builder.irb().GetInsertPoint();

  for (unsigned i = 0; i < _arguments.size(); ++i) {
    const bool isConstant = _arguments[i]->isConstant();

    if (isConstant && cacheBlock)
      builder.irb().SetInsertPoint(cacheBlock/*, cacheInsert*/);
    else if (previousBlock)
      builder.irb().SetInsertPoint(previousBlock);

    Value * index = builder.CreateInt32(i);
    Value * argval = _arguments[i]->genCode(builder);
    builder.irb().CreateCall3(array_set_elementC, arglist, index, argval);

    // if (isConstant && cacheBlock)
    // cacheBlock = builder.irb().GetInsertBlock();
    if (!isConstant && previousBlock)
      previousBlock = builder.irb().GetInsertBlock();

  }


  if (cacheBlock)
    builder.irb().SetInsertPoint(cacheBlock/*, cacheInsert*/);

  Type * objectTy = Builder::getObjectType(module);
  Value * env = 0;

  if (builder.getLexScope().hasEntry("this"))
    env = builder.getLexScope().getEntry("THIS")->genLoad(builder);
  else
    env = Constant::getNullValue(objectTy);

  builder.irb().CreateCall4(__t_callsite, csite, val, env, arglist);

  if (previousBlock)
    builder.irb().SetInsertPoint(previousBlock);

  Value * ret = builder.irb().CreateCall2(__t_call, csite, target);

  // Value * ret = builder.irb().CreateCall3(object_exec, target, val, arglist, "calltmp");


  Value * fixedRet = builder.CreateExcForward(ret);

  return fixedRet;
}

void AST::MethodCall::setTarget(AST::Expression * target) {
  delete _target;
  _target = target;
}

void AST::MethodCall::addArgument(AST::Expression * argument) {
  _arguments.push_back(argument);
}

const std::string & AST::MethodCall::getName() const {
  return _name;
}

AST::Expression * AST::MethodCall::getTarget() const {
  return _target;
}

unsigned AST::MethodCall::numArguments() const {
  return _arguments.size();
}

AST::Expression * AST::MethodCall::getArgument(unsigned i) const {
  return _arguments[i];
}

void AST::MethodCall::accept(AST::Visitor & visitor) {
  visitor.visit(*this);
}
