/*
 * $Id: while.cpp 1252 2010-04-27 13:18:54Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include "while.h"
#include "lexscope.h"
#include "builder.h"
#include "visitor.h"

#include <llvm/IR/Module.h>

using namespace llvm;

AST::While::While() {
        _cond = 0;
        _body = 0;
}

AST::While::~While() {
        delete _cond;
        delete _body;
}

llvm::Value * AST::While::genCode(Builder & builder) const {
        assert(_cond);
        assert(_body);

        Module * module = builder.getModule();
        IRBuilder<> & irb = builder.irb();

        Function * bool_get_value = module->getFunction("bool_get_value");
        assert(bool_get_value);

        Function * func = irb.GetInsertBlock()->getParent();
        assert(func);

        BasicBlock * loopCond = BasicBlock::Create(module->getContext(), "loopcond", func);
        BasicBlock * loopBody = BasicBlock::Create(module->getContext(), "loop", func);
        BasicBlock * loopCont = BasicBlock::Create(module->getContext(), "loopcont", func);
        assert(loopBody && loopCond && loopCont);

        irb.CreateBr(loopCond);

        LexScope whileScope(builder.getLexScope());
        Builder whileBuilder(builder, whileScope, module);

        whileScope.addTag("__LOOP");

        // condition
        irb.SetInsertPoint(loopCond);

        Value * condValue = _cond->genCode(whileBuilder);
        Value * condition = irb.CreateCall(bool_get_value, condValue);
        Value * falseValue = whileBuilder.CreateInt32(0);

        assert(condition && "failed to generate code for condition object");

        Value * cmp = irb.CreateICmpNE(condition, falseValue);

        irb.CreateCondBr(cmp, loopBody, loopCont);

        // body
        irb.SetInsertPoint(loopBody);

        Value * body = _body->genCode(whileBuilder);
        assert(body && "failed to generate code for body object");


        irb.CreateBr(loopCond);
        irb.SetInsertPoint(loopCont);

        Function * int_object = module->getFunction("int_object");
        assert(int_object);

        // TODO: what should a while-loop return?
        return condValue;
}

void AST::While::setCondition(AST::Expression * cond) {
        delete _cond;
        _cond = cond;
}

void AST::While::setBody(AST::Expression * body) {
        delete _body;
        _body = body;
}

AST::Expression * AST::While::getCondition() const {
        return _cond;
}

AST::Expression * AST::While::getBody() const {
        return _body;
}

void AST::While::accept(AST::Visitor & visitor) {
        visitor.visit(*this);
}
