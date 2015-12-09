/*
 * $Id: assignment.h 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef ASSIGNMENT_H_PADX0Y0N
#define ASSIGNMENT_H_PADX0Y0N

#include "expression.h"

namespace AST {
	class Assignment : public Expression {
	public:
		Assignment(const std::string & name);
		~Assignment();
		
		llvm::Value * genCode(Builder & builder) const;	
		void accept(AST::Visitor & visitor);
		
		void setExpr(AST::Expression * target, AST::Expression * value);		
		const std::string & getName() const;
		AST::Expression * getValue() const;
		AST::Expression * getTarget() const;
		
	private:
		AST::Expression * _value, * _target;
		const std::string _name;
	};
	
}

#endif /* end of include guard: ASSIGNMENT_H_PADX0Y0N */
