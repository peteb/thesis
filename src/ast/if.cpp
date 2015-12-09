/*
 * $Id: if.cpp 1252 2010-04-27 13:18:54Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include <cassert>
#include <llvm/IR/Module.h>

#include "if.h"
#include "lexscope.h"
#include "builder.h"
#include "visitor.h"

using namespace llvm;

AST::If::If() {
        _cond = _then = _else = 0;
}

AST::If::~If() {
        delete _cond;
        delete _then;
        delete _else;
}

Value * AST::If::genCode(Builder & builder) const {
        assert(_cond);
        assert(_then);
        assert(_else);

        LexScope ifScope(builder.getLexScope());
        Builder ifBuilder(builder, ifScope, builder.getModule());
        Module * module = builder.getModule();

        Value * condObject = _cond->genCode(ifBuilder);
        assert(condObject && "failed to generate code for condition object");

        Function * bool_get_value = module->getFunction("bool_get_value");
        assert(bool_get_value);

        IRBuilder<> & irb = builder.irb();

        Value * condition = irb.CreateCall(bool_get_value, condObject);
        Value * falseValue = ifBuilder.CreateInt32(0);
        assert(condition);
        assert(falseValue);

        Value * eq = irb.CreateICmpNE(condition, falseValue);

        Function * func = irb.GetInsertBlock()->getParent();
        assert(func);

        BasicBlock * thenBlock = BasicBlock::Create(module->getContext(), "then", func);
        BasicBlock * elseBlock = BasicBlock::Create(module->getContext(), "else");
        BasicBlock * mergeBlock = BasicBlock::Create(module->getContext(), "ifcont");

        assert(thenBlock && elseBlock && mergeBlock);

        irb.CreateCondBr(eq, thenBlock, elseBlock);

        std::vector<std::pair<Value *, BasicBlock *> > forPhi;

        // then
        irb.SetInsertPoint(thenBlock);
        Value * thenVal = _then->genCode(ifBuilder);

        thenBlock = irb.GetInsertBlock();

        if (!irb.GetInsertBlock()->getTerminator()) {
                irb.CreateBr(mergeBlock);
                forPhi.push_back(std::make_pair(thenVal, thenBlock));
        }

        // else
        func->getBasicBlockList().push_back(elseBlock);
        irb.SetInsertPoint(elseBlock);
        Value * elseVal = _else->genCode(ifBuilder);

        elseBlock = irb.GetInsertBlock();

        if (!irb.GetInsertBlock()->getTerminator()) {
                irb.CreateBr(mergeBlock);
                forPhi.push_back(std::make_pair(elseVal, elseBlock));
        }

        // merge
        func->getBasicBlockList().push_back(mergeBlock);
        irb.SetInsertPoint(mergeBlock);

        Value * ret = 0;

        if (!forPhi.empty()) {
                Type * objectTy = module->getTypeByName("object");
                PHINode * pn = irb.CreatePHI(objectTy, 1, "iftmp");

                assert(pn);

                for (unsigned i = 0; i < forPhi.size(); ++i)
                        pn->addIncoming(forPhi[i].first, forPhi[i].second);
                //pn->addIncoming(thenVal, thenBlock);
                //pn->addIncoming(elseVal, elseBlock);

                ret = pn;
        }
        else {
                //builder.CreateUnreachable();		// maybe? it's a terminator.
                Function * null_object = module->getFunction("null_object");
                assert(null_object);
                ret = irb.CreateCall(null_object);
        }

        return ret;
}

void AST::If::setCondition(AST::Expression * cond) {
        delete _cond;
        _cond = cond;
}

void AST::If::setThen(AST::Expression * thenDo) {
        delete _then;
        _then = thenDo;
}

void AST::If::setElse(AST::Expression * elseDo) {
        delete _else;
        _else = elseDo;
}

void AST::If::accept(AST::Visitor & visitor) {
        visitor.visit(*this);
}

AST::Expression * AST::If::getCondition() const {
        return _cond;
}

AST::Expression * AST::If::getThen() const {
        return _then;
}

AST::Expression * AST::If::getElse() const {
        return _else;
}
