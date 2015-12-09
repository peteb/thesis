/*
 * $Id: return.cpp 1091 2010-04-18 23:07:50Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "return.h"
#include "lexscope.h"
#include "lexentry.h"
#include "builder.h"
#include "visitor.h"

#include <llvm/Module.h>

using namespace llvm;

AST::Return::Return(AST::Expression * value) {
	_value = value;
}

AST::Return::~Return() {
	delete _value;
}

llvm::Value * AST::Return::genCode(Builder & builder) const {
	assert(_value);
	
	Value * retval = _value->genCode(builder);
	builder.CreateStoreReturn(retval, 0);
	builder.CreateBranchToRet();
	
	Function * func = builder.irb().GetInsertBlock()->getParent();
	BasicBlock * contbb = BasicBlock::Create(
		builder.getModule()->getContext(), "after_ret", func
	);
	
	builder.irb().SetInsertPoint(contbb);
	builder.irb().CreateUnreachable();
	
	return retval;
}

void AST::Return::accept(AST::Visitor & visitor) {
	visitor.visit(*this);
}

AST::Expression * AST::Return::getValue() const {
	return _value;
}
