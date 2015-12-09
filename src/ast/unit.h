/*
 * $Id: unit.h 1091 2010-04-18 23:07:50Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef UNIT_H_6C3MPUZM
#define UNIT_H_6C3MPUZM

#include "expression.h"
#include "ast/object.h"
#include <vector>

namespace AST {
	class Vardef;
	
	class Unit : public Expression {
	public:
		virtual ~Unit();
		
		llvm::Value * genCode(Builder & builder) const;
		void accept(AST::Visitor & visitor);
		void addMember(AST::Vardef * member);
		
		unsigned numMembers() const;
		AST::Vardef * getMember(unsigned i) const;
		
	private:
		std::vector<AST::Vardef *> _members;
	};
}

#endif /* end of include guard: UNIT_H_6C3MPUZM */
