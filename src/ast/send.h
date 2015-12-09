/*
 * $Id: send.h 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef SEND_H_46M55ZT2
#define SEND_H_46M55ZT2

#include "expression.h"

namespace AST {
	class Send : public Expression {
	public:
		Send();
		~Send();
		
		llvm::Value * genCode(Builder & builder) const;		
		void accept(AST::Visitor & visitor);
		
		void setTarget(AST::Expression * target);
		void setValue(AST::Expression * value);
		
		AST::Expression * getTarget() const;
		AST::Expression * getValue() const;
		
	private:
		AST::Expression * _target, * _value;
	};
	
}

#endif /* end of include guard: SEND_H_46M55ZT2 */
