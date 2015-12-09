/*
 * $Id: vardef.cpp 1292 2010-05-03 15:56:25Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "vardef.h"
#include "lexscope.h"
#include "lexentry.h"
#include "builder.h"
#include "ast/visitor.h"
#include "ast/enum_nodes.h"
#include "ast/count_assignments.h"

#include <llvm/Module.h>
#include <cassert>
#include <stdexcept>

using namespace llvm;
using namespace AST;

AST::Vardef::Vardef(const std::string & name, bool isVal)
	: _name(name)
	, _isVal(isVal)
{
	assert(!name.empty() && "constructing vardef with empty name");
	_isFormal = false;
	_isSlot = false;
	_init = 0;
	_storeFlags = 0;
	_parent = 0;
}

AST::Vardef::~Vardef() {
	delete _init;
}

llvm::Value * AST::Vardef::genCode(Builder & builder) const {
	assert(_init && "init expression not given");
	
	// TODO: shadowing, skriv testcases
	// TODO: hasKeySameLevel (ie, allow shadowing)
	
	if (builder.getLexScope().hasEntry(_name))	
		throw std::runtime_error("Variable '" + _name + "' already defined!");
		
	Value * initValue = _init->genCode(builder);

	if (_isFormal)				// function parameter
		return initValue;

	unsigned short flags = _storeFlags;
	if (!_isVal) 
		flags |= LexScopeMutable;	
	
	assert(initValue);

	if (_isSlot)
		return initValue;
	
		
	bool asLocalVar = true;

	if (_parent) {
		std::vector<Closure *> closures = EnumNodes<AST::Closure>(*_parent, true);
	
		// check if there's an assignment to the variable
		for (unsigned i = 0; i < closures.size(); ++i) {
			AST::Closure * closure = closures[i];
			const unsigned numAss = AST::NumAssignments(*closure, _name);
		
			if (numAss > 0) {
				asLocalVar = false;
				break;
			}
		}
	}

	if (asLocalVar) {
		Value * var = builder.CreateLocalVariable(_name);
	
		LexScopeEntry * varEntry = new LexScopeEntry(
			var, LexScopeLS|flags, _name
		);

		varEntry->genStore(initValue, builder);
		builder.getLexScope().setEntry(_name, varEntry);
	}
	else {
		LexScopeEntry * entry = new LexScopeEntry(
			initValue, LexScopeImm|flags, _name
		);
	
		builder.getLexScope().setEntry(_name, entry);
		builder.DemoteEntry(entry, _name);
	}
	
	return initValue; //var;
}

void AST::Vardef::setFormal(bool formal) {
	_isFormal = formal;
}

void AST::Vardef::setSlot(bool slot) {
	_isSlot = slot;
}

const std::string & AST::Vardef::getName() const {
	return _name;
}

bool AST::Vardef::isVal() const {
	return _isVal;
}

void AST::Vardef::accept(AST::Visitor & visitor) {
	visitor.visit(*this);
}

void AST::Vardef::setInit(AST::Expression * init) {
	//delete _init;		// not good, we might be using init elsewhere
	_init = init;
}

AST::Expression * AST::Vardef::getInit() const {
	return _init;
}

void AST::Vardef::setStoreFlags(unsigned int flags) {
	_storeFlags = flags;
}

bool AST::Vardef::isConstant() const {
	return (_init && _init->isConstant() && _isVal);
}

void AST::Vardef::setParent(AST::Expression * parent) {
	_parent = parent;
}

AST::Expression * AST::Vardef::getParent() const {
	return _parent;
}
