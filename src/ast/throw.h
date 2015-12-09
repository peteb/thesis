/*
 * $Id: throw.h 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef THROW_H_GUJE1UC2
#define THROW_H_GUJE1UC2

#include "expression.h"

namespace AST {
	class Throw : public Expression {
	public:
		Throw(AST::Expression * value);
		~Throw();
		
		llvm::Value * genCode(Builder & builder) const;	
		void accept(AST::Visitor & visitor);
		
		AST::Expression * getValue() const;
		
	private:
		AST::Expression * _value;
	};
	
}

#endif /* end of include guard: THROW_H_GUJE1UC2 */
