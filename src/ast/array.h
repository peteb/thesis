/*
 * $Id: array.h 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef ARRAY_H_NQAVDOLU
#define ARRAY_H_NQAVDOLU

#include "expression.h"

namespace AST {
	class Array : public Expression {
	public:
		llvm::Value * genCode(Builder & builder) const;	

		void addMember(AST::Expression * member);
		void accept(AST::Visitor & visitor);
		
		unsigned numMembers() const;
		AST::Expression * getMember(unsigned i) const;
		
	private:
		std::vector<AST::Expression *> _members;
	};
	
}

#endif /* end of include guard: ARRAY_H_NQAVDOLU */
