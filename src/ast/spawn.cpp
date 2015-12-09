/*
 * $Id: spawn.cpp 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "spawn.h"
#include "closure.h"
#include "builder.h"
#include "visitor.h"

#include <llvm/Module.h>

using namespace llvm;

AST::Spawn::Spawn(AST::Closure * closure) {
	_closure = closure;
}
	
AST::Spawn::~Spawn() {
	delete _closure;
}

llvm::Value * AST::Spawn::genCode(Builder & builder) const {
	assert(_closure);
	
	Function * __t_spawn = builder.getModule()->getFunction("__t_spawn");
	assert(__t_spawn);
	
	Value * spawnClosure = _closure->genCode(builder);
	
	return builder.irb().CreateCall(__t_spawn, spawnClosure);
}

void AST::Spawn::accept(AST::Visitor & visitor) {
	visitor.visit(*this);
}

AST::Closure * AST::Spawn::getClosure() const {
	return _closure;
}