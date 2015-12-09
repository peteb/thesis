/*
 * $Id: assignment.cpp 1396 2010-05-07 16:01:18Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "assignment.h"
#include "lexscope.h"
#include "lexentry.h"
#include "closure.h"
#include "libthorn/object.h"
#include "builder.h"
#include "visitor.h"

#include <llvm/Module.h>

using namespace llvm;

AST::Assignment::Assignment(const std::string & name) 
	: _name(name)
{
	_value = 0;
	_target = 0;
}

AST::Assignment::~Assignment() {
	delete _value;
	delete _target;
}

llvm::Value * AST::Assignment::genCode(Builder & builder) const {
	assert(_value);
		
	Module * module = builder.getModule();
	Value * value = _value->genCode(builder);
	assert(value);

	Function * object_set_slot = module->getFunction("object_set_slot");
	Function * object_set_delegate = module->getFunction("object_set_delegate");
		
	assert(object_set_slot);
	assert(object_set_delegate);
	
	if (_target) {
		Value * target = _target->genCode(builder);

		if (_name == "delegate") {
			builder.irb().CreateCall2(object_set_delegate, target, value);
		}
		else {
			value = builder.CreateWrappedValue(value);	 // wrap value in closure
		
			Value * name = builder.CreateSymbol(_name);
			Value * flags = builder.CreateInt32(SLOT_ASSIGNMENT);  //< SLOT_* from libthorn
	
			assert(target);
			assert(flags);
	
			builder.irb().CreateCall4(object_set_slot, target, name, value, flags);
		}
	}
	else {
		LexScopeEntry * entry = builder.getLexScope().getEntry(_name);
		entry->genStore(value, builder);
	}

	return value;
}

void AST::Assignment::setExpr(AST::Expression * target, AST::Expression * value) {
	delete _target;
	_target = target;

	delete _value;
	_value = value;	
}

void AST::Assignment::accept(AST::Visitor & visitor) {
	visitor.visit(*this);
}

const std::string & AST::Assignment::getName() const {
	return _name;
}

AST::Expression * AST::Assignment::getValue() const {
	return _value;
}

AST::Expression * AST::Assignment::getTarget() const {
	return _target;
}
