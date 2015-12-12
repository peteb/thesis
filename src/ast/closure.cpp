/*
 * $Id: closure.cpp 1893 2010-07-17 13:24:45Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include "closure.h"
#include "ast/vardef.h"
#include "lexscope.h"
#include "lexentry.h"
#include "builder.h"
#include "visitor.h"
#include "libthorn/config.h"
#include "libthorn/ptr_tag.h"
#include "ast/count_assignments.h"
#include "ast/enum_nodes.h"
#include "ast/visit_node.h"

#include <llvm/IR/DerivedTypes.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/IRBuilder.h>
#include <stdexcept>

#include "undefdvars.h"

using namespace llvm;

AST::Closure::Closure() {
        _body = 0;
        _reassignThis = true;
}

AST::Closure::~Closure() {
        delete _body;

        for (unsigned i = 0; i < _formals.size(); ++i)
                delete _formals[i];
}

#include <iostream>

llvm::Value * AST::Closure::genCode(Builder & builder) const {
        Module * module = builder.getModule();
        LLVMContext & context = module->getContext();

        Function * closure_object = module->getFunction("closure_object");
        Function * closure_object_null = module->getFunction("closure_object_null");

        assert(_body && "no body defined for closure");

        const std::string fname = "__closure";


        // Value * closure = builder.CreateLocalVariable("");
        BasicBlock * caller = builder.irb().GetInsertBlock();


        // create the function
        Function * function = Function::Create(
                getFunctionType(builder),
                Function::InternalLinkage,
                fname,
                module
        );

        function->setAlignment(PTR_TAG_MAX + 1);
        function->setCallingConv(CallingConv::C);
        function->setDoesNotThrow();


        // we're gonna start a completely new scope tree
        // outer scope is a scope valid in the caller
        // LexScope outerScope;
        // outerScope.setEntry("self", new LexScopeEntry(closure, LexScopeLS));

        // inner scope is only valid in the callee
        LexScope innerScope;
        // Builder outerBuilder(builder, outerScope, module);
        Builder innerBuilder(builder, innerScope, module);


        // setup function blocks
        BasicBlock * headBlock = BasicBlock::Create(context, "", function);
        BasicBlock * entryBlock = BasicBlock::Create(context, "entry", function);
        BasicBlock * retBlock = BasicBlock::Create(context, "ret", function);


        builder.irb().SetInsertPoint(headBlock);
        Value * retval = builder.CreateReturnVar();



        innerScope.setEntry("__retval",
                new LexScopeEntry(retval, LexScopeLS|LexScopeMutable)
        );

        innerScope.setEntry("__retlabel",
                new LexScopeEntry(retBlock, LexScopeImm)
        );

        LexScopeEntry * cpEntry = new LexScopeEntry(headBlock, LexScopeImm, "__CACHE");
        innerScope.setEntry("__CACHE", cpEntry);


        builder.irb().SetInsertPoint(entryBlock);
        bindParameters(function, innerBuilder);		// this, self, [formals]
        bindFormals(innerBuilder);



        builder.irb().SetInsertPoint(caller);



        // determine undefd vars by syntax tree analysis through abstract interpretation
        UndefinedVars undefd;
        undefd.insertScope(innerScope);
        const_cast<AST::Closure *>(this)->accept(undefd);


        // add upvalues to the closure's scope
        std::vector<SlotBinding> postBindings = prepareUpvalues(
                undefd.result, builder, innerBuilder
        );


        builder.irb().SetInsertPoint(entryBlock);

        // generate code
        Value * bodyVal = _body->genCode(innerBuilder);

        // make sure we're terminating
        if (!builder.irb().GetInsertBlock()->getTerminator()) {
                innerBuilder.CreateStoreReturn(bodyVal, 0);
                builder.irb().CreateBr(retBlock);
        }



        // finalize basic blocks generated, move ret block last
        retBlock->moveAfter(&function->back());

        // branch init/cache/head-block to the entry block (where code is generated)
        builder.irb().SetInsertPoint(headBlock);
        builder.irb().CreateBr(entryBlock);

        // create return code
        builder.irb().SetInsertPoint(retBlock);
        Value * r = builder.irb().CreateLoad(retval);
        builder.irb().CreateRet(r);

        // allocate the closure object
        builder.irb().SetInsertPoint(caller);
        Value * obj = 0;

        // TODO: check all vardefs, whether they're assigned to in a nested cosure


        bool hasBindings = !postBindings.empty();

        AST::NodeEnumerator<AST::Vardef> vardefs(AST::ClosureNode|AST::SpawnNode);
        AST::VisitNode(*const_cast<AST::Closure *>(this), vardefs);

        AST::NodeEnumerator<AST::Closure> closures(AST::ClosureNode|AST::SpawnNode);
        AST::VisitNode(*const_cast<AST::Closure *>(this), closures);

        unsigned upvalsDefined = 0;


        for (unsigned a = 0; a < vardefs.result.size(); ++a) {
                const AST::Vardef * vardef = vardefs.result[a];

                for (unsigned i = 0; i < closures.result.size() /*&& !hasBindings*/; ++i) {
                        AST::Closure * closure = closures.result[i];

                        unsigned assigns = AST::NumAssignments(*closure, vardef->getName());

                        if (assigns > 0) {
                                hasBindings = true;
                                upvalsDefined++;
                                break;
                        }
                }
        }

        unsigned postBindingsNotDelegate = 0;
        for (unsigned i = 0; i < postBindings.size(); ++i) {
                if (postBindings[i].second != "delegate")
                        postBindingsNotDelegate++;
        }

        if (hasBindings) {
                // upvalsDefined: number of variables defined here that is written to in
                //                inner closures
                // postBindings: number of direct values, vals for example.
                //               contains self->delegate-mapping, as well. should be removed?
                //                                        TODO^^^

                Value * numSlots = builder.CreateInt32(upvalsDefined + postBindings.size());
                obj = builder.irb().CreateCall2(closure_object, function, numSlots);
        }
        else {
          closure_object_null->getType()->dump();
          function->getType()->dump();
                obj = builder.irb().CreateCall(closure_object_null, function);
        }

        Function * object_set_slot = module->getFunction("object_set_slot");

        // bindings generated from upvalues
        for (unsigned i = 0; i < postBindings.size(); ++i) {
                const SlotBinding & binding = postBindings[i];

                Value * val = builder.getLexScope().getEntry(binding.first)->genLoad(builder);
                Value * slotName = builder.CreateSymbol(binding.second);
                Value * flags = builder.CreateInt32(0);

                builder.irb().CreateCall4(object_set_slot, obj, slotName, val, flags);
        }

        return obj;
}

std::vector<AST::Closure::SlotBinding> AST::Closure::prepareUpvalues(
        const std::vector<std::string> & _vars,
        Builder & caller, Builder & callee) const
{
        std::vector<SlotBinding> postBindings;

        bool needsParentClosure = false;
        // LexScope & callerScope = caller.getLexScope();
        LexScope & innerScope = callee.getLexScope();

        for (unsigned i = 0; i < _vars.size(); ++i) {
                // std::cout << "UPVAL " << _vars[i] << std::endl;
                const std::string & varName = _vars[i];

                if (!caller.getLexScope().hasEntry(varName))
                        throw std::runtime_error("upvalue '" + varName + "' not defined in parent");

                LexScopeEntry * oldEntry = caller.getLexScope().getEntry(varName);
                unsigned oldFlags = oldEntry->getFlags();

                if (oldFlags & LexScopeNoClone) {
                        LexScopeEntry * newEntry = new LexScopeEntry(*oldEntry);
                        innerScope.setEntry(varName, newEntry);
                }
                else {
                        Value * slotName = caller.CreateSymbol(varName);
                        unsigned innerFlags = LexScopePosRef;

                        const unsigned assignments = AST::NumAssignments(
                                *const_cast<AST::Closure *>(this), varName
                        );

                        // is it a mutable upvalue?
                        if ((oldEntry->getFlags() & LexScopeMutable) && assignments > 0) {
                                // caller.DemoteEntry(oldEntry, varName);
                                innerFlags |= LexScopeSlot|LexScopeMutable;
                                needsParentClosure = true;
                        }
                        else {
                                innerFlags |= LexScopeSlot;
                                postBindings.push_back(SlotBinding(varName, varName));
                        }

                        LexScopeEntry * innerEntry = new LexScopeEntry(slotName, innerFlags, varName);
                        innerScope.setEntry(varName, innerEntry);
                }
        }

        // TODO: kolla om den här verkligen behövs, men den behöver läggas till
        //       i bindingsAfter
        if (needsParentClosure) {	// also not needed if all vars are immutable
                // Value * parentName = caller.CreateSymbol("_parent");
                // LexScopeEntry * parent = new LexScopeEntry(parentName, LexScopeSlot, "_parent");
                // callee.getLexScope().setEntry("_parent", parent);

                postBindings.push_back(SlotBinding("self", "delegate"));
        }

        return postBindings;
}

FunctionType * AST::Closure::getFunctionType(Builder & builder) const {
        Module * module = builder.getModule();

        Type * objectTy = Type::getInt8PtrTy(module->getContext());
        Type * retTy = module->getTypeByName("ret");

        assert(objectTy);
        assert(retTy);

        std::vector<Type *> parameters;

        parameters.push_back(objectTy);	//< this, if a member of an object
        parameters.push_back(objectTy);	//< self, closure object
        parameters.push_back(objectTy);	//< arguments

        // create function type
        FunctionType * type = FunctionType::get(
                retTy,
                ArrayRef<Type *>(parameters),
                false
        );

        return type;
}

void AST::Closure::bindParameters(llvm::Function * function, Builder & builder) const {
        LexScope & scope = builder.getLexScope();
        unsigned int flags = LexScopeImm;
        Function::arg_iterator iter = function->arg_begin();

        if (_reassignThis) {
                LexScopeEntry * thisEntry = new LexScopeEntry(iter, flags);
                thisEntry->genStore(iter, builder);
                scope.setEntry("THIS", thisEntry);	// TODO: remove this when THIS is gone
                thisEntry = new LexScopeEntry(iter, flags);         // ask johan!
                scope.setEntry("this", thisEntry);
                iter->setName("this");
        }

        iter++;
        iter->setName("self");
        scope.setEntry("self", new LexScopeEntry(iter, flags, "self"));

        iter++;
        iter->setName("args");
        scope.setEntry("args", new LexScopeEntry(iter, flags, "args"));
}

void AST::Closure::bindFormals(Builder & builder) const {
        LexScope & scope = builder.getLexScope();
        Module * module = builder.getModule();

        Function * array_get_element = module->getFunction("array_get_elementC");
        assert(array_get_element);

        // acquire reference to ARGS parameter
        Value * args = scope.getEntry("args")->genLoad(builder);

        for (unsigned i = 0; i < _formals.size(); ++i) {
                const std::string name = _formals[i]->getName();
                unsigned short flags = LexScopeLS;

                if (!_formals[i]->isVal())		flags |= LexScopeMutable;

                Value * idx = builder.CreateInt32(i);
                Value * arg = builder.irb().CreateCall2(array_get_element, args, idx);
                Value * var = builder.CreateLocalVariable(name);

                // create the new scope entry for the variabel
                LexScopeEntry * entry = new LexScopeEntry(var, flags, name);
                entry->genStore(arg, builder);
                scope.setEntry(name, entry);
        }
}

void AST::Closure::addParameter(AST::Vardef * param) {
        _formals.push_back(param);
}

void AST::Closure::setBody(AST::Expression * body) {
        delete _body;
        _body = body;
}

void AST::Closure::accept(AST::Visitor & visitor) {
        visitor.visit(*this);
}

void AST::Closure::setReassignThis(bool reassign) {
        // reassign THIS or keep previous?
        _reassignThis = reassign;
}

unsigned AST::Closure::numFormals() const {
        return _formals.size();
}

AST::Vardef * AST::Closure::getFormal(unsigned i) {
        return _formals[i];
}

AST::Expression * AST::Closure::getBody() const {
        return _body;
}
