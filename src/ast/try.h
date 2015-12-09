/*
 * $Id: try.h 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef TRY_H_ZWT59L8Z
#define TRY_H_ZWT59L8Z

#include "expression.h"

namespace AST {
	class Vardef;
	
	class Try : public Expression {
	public:
		Try();
		~Try();
		
		llvm::Value * genCode(Builder & builder) const;		
		void accept(AST::Visitor & visitor);
		
		void setBody(AST::Expression * body);
		void setElse(AST::Expression * elseBlock);
		void setFormal(AST::Vardef * formal);
		
		AST::Expression * getBody() const;
		AST::Expression * getCatch() const;
		AST::Vardef * getCatchFormal() const;
		
	private:
		AST::Expression * _body, * _else;				
		AST::Vardef * _formal;
	};
	
}

#endif /* end of include guard: TRY_H_ZWT59L8Z */
