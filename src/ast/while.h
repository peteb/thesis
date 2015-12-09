/*
 * $Id: while.h 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef WHILE_H_HUVT785
#define WHILE_H_HUVT785

#include "expression.h"

namespace AST {
	class While : public Expression {
	public:
		While();
		~While();

		llvm::Value * genCode(Builder & builder) const;	
		void accept(AST::Visitor & visitor);
		
		void setCondition(AST::Expression * cond);
		void setBody(AST::Expression * body);
		AST::Expression * getCondition() const;
		AST::Expression * getBody() const;
		
	private:
		AST::Expression * _cond, * _body;
	};
	
}

#endif /* end of include guard: WHILE_H_HUVT785 */
