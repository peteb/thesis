/*
 * $Id: return.h 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef RETURN_H_HBPPF1ZB
#define RETURN_H_HBPPF1ZB

#include "expression.h"

namespace AST {
	class Return : public Expression {
	public:
		Return(AST::Expression * value);
		~Return();
		
		llvm::Value * genCode(Builder & builder) const;			
		void accept(AST::Visitor & visitor);
		
		AST::Expression * getValue() const;

	private:
		AST::Expression * _value;
	};
	
}

#endif /* end of include guard: RETURN_H_HBPPF1ZB */
