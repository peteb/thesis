/*
 * $Id: var.h 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef VAR_H_GGPBF8JL
#define VAR_H_GGPBF8JL

#include "expression.h"

namespace AST {
	class Var : public Expression {
	public:
		Var(const std::string & name);
		
		llvm::Value * genCode(Builder & builder) const;		
		void accept(AST::Visitor & visitor);
		
		std::string getName() const;
		
	private:
		const std::string _name;
	};
	
}

#endif /* end of include guard: VAR_H_GGPBF8JL */
