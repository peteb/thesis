/*
 * $Id: var.cpp 1249 2010-04-27 12:08:58Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "var.h"
#include "lexscope.h"
#include "lexentry.h"
#include "builder.h"
#include "visitor.h"

#include <llvm/Module.h>

using namespace llvm;

AST::Var::Var(const std::string & name)
	: _name(name)
{
	assert(!name.empty() && "request for zero-length varname");
}

llvm::Value * AST::Var::genCode(Builder & builder) const {		
	return builder.getLexScope().getEntry(_name)->genLoad(builder);
}

std::string AST::Var::getName() const {
	return _name;
}

void AST::Var::accept(AST::Visitor & visitor) {
	visitor.visit(*this);
}
