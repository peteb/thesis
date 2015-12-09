/*
 * $Id: spawn.h 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef SPAWN_H_T9QSMIVA
#define SPAWN_H_T9QSMIVA

#include "expression.h"

namespace AST {
	class Closure;
	
	class Spawn : public Expression {
	public:
		Spawn(AST::Closure * closure);
		~Spawn();
		
		llvm::Value * genCode(Builder & builder) const;	
		void accept(AST::Visitor & visitor);
		
		AST::Closure * getClosure() const;
		
	private:
		AST::Closure * _closure;
	};
	
}
#endif /* end of include guard: SPAWN_H_T9QSMIVA */
