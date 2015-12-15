/*
 * $Id: try.cpp 1252 2010-04-27 13:18:54Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include "try.h"
#include "lexscope.h"
#include "lexentry.h"
#include "vardef.h"
#include "builder.h"
#include "visitor.h"

#include <llvm/IR/Module.h>

using namespace llvm;

AST::Try::Try() {
  _body = _else = _formal = 0;
}

AST::Try::~Try() {
  delete _body;
  delete _else;
  delete _formal;
}

Value * AST::Try::genCode(Builder & builder) const {
  assert(_body);
  assert(_else);

  IRBuilder<> & irb = builder.irb();
  Module * module = builder.getModule();

  Type * objectTy = Builder::getObjectType(module);
  Function * func = irb.GetInsertBlock()->getParent();

  BasicBlock * tryBlock = BasicBlock::Create(module->getContext(), "try", func);
  BasicBlock * catchBlock = BasicBlock::Create(module->getContext(), "catch", func);
  BasicBlock * mergeBlock = BasicBlock::Create(module->getContext(), "merge", func);

  Value * catchParam = builder.CreateLocalVariable("catch_var");
  // irb.CreateAlloca(voidptr, 0, "catchparam");

  irb.CreateBr(tryBlock);
  irb.SetInsertPoint(tryBlock);

  LexScope tryNs(builder.getLexScope());

  tryNs.setEntry("CATCH", new LexScopeEntry(catchBlock,
                                            LexScopeImm))
    ;

  tryNs.setEntry("CATCH_PARAM", new LexScopeEntry(catchParam,
                                                  LexScopeLS|LexScopeMutable))
    ;

  Builder bodyBuilder(builder, tryNs, module);
  Value * bodyVal = _body->genCode(bodyBuilder);

  tryBlock = irb.GetInsertBlock();

  irb.CreateBr(mergeBlock);
  irb.SetInsertPoint(catchBlock);



  LexScope catchNs(builder.getLexScope());
  catchNs.setEntry(_formal->getName(), new LexScopeEntry(catchParam,
                                                         LexScopeLS))
    ;

  Builder catchBuilder(builder, catchNs, module);
  Value * catchVal = _else->genCode(catchBuilder);

  catchBlock = irb.GetInsertBlock();

  irb.CreateBr(mergeBlock);
  irb.SetInsertPoint(mergeBlock);

  PHINode * pn = irb.CreatePHI(objectTy, 1, "trytmp");
  pn->addIncoming(bodyVal, tryBlock);
  pn->addIncoming(catchVal, catchBlock);

  return pn;
}

void AST::Try::setBody(AST::Expression * body) {
  delete _body;
  _body = body;
}

void AST::Try::setElse(AST::Expression * elseBlock) {
  delete _else;
  _else = elseBlock;
}

void AST::Try::setFormal(AST::Vardef * formal) {
  delete _formal;
  _formal = formal;
}

void AST::Try::accept(AST::Visitor & visitor) {
  visitor.visit(*this);
}

AST::Expression * AST::Try::getBody() const {
  return _body;
}

AST::Expression * AST::Try::getCatch() const {
  return _else;
}

AST::Vardef * AST::Try::getCatchFormal() const {
  return _formal;
}
