/*
 * $Id: send.cpp 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "send.h"
#include "builder.h"
#include "visitor.h"

#include <llvm/Module.h>

using namespace llvm;

AST::Send::Send() {
	_target = _value = 0;
}

AST::Send::~Send() {
	delete _target;
	delete _value;
}

llvm::Value * AST::Send::genCode(Builder & builder) const {
	assert(_target);
	assert(_value);
	
	Function * __t_send = builder.getModule()->getFunction("__t_send");	
	assert(__t_send);
	
	Value * target = _target->genCode(builder);
	Value * value = _value->genCode(builder);

	return builder.irb().CreateCall2(__t_send, target, value);
}

void AST::Send::setTarget(AST::Expression * target) {
	delete _target;
	_target = target;
}

void AST::Send::setValue(AST::Expression * value) {
	delete _value;
	_value = value;
}

void AST::Send::accept(AST::Visitor & visitor) {
	visitor.visit(*this);
}

AST::Expression * AST::Send::getTarget() const {
	return _target;
}

AST::Expression * AST::Send::getValue() const {
	return _value;
}
