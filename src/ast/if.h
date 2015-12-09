/*
 * $Id: if.h 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef IF_H_U4AYYGP7
#define IF_H_U4AYYGP7

#include "expression.h"

namespace AST {
	class If : public Expression {
	public:
		If();
		~If();
		
		llvm::Value * genCode(Builder & builder) const;	
		void accept(AST::Visitor & visitor);				

		void setCondition(AST::Expression * cond);
		void setThen(AST::Expression * thenDo);
		void setElse(AST::Expression * elseDo);
		
		AST::Expression * getCondition() const;
		AST::Expression * getThen() const;
		AST::Expression * getElse() const;
		
	private:
		AST::Expression * _cond, * _then, * _else;				
	};
	
}

#endif /* end of include guard: IF_H_U4AYYGP7 */
