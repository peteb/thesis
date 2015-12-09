/*
 * $Id: block.h 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef BLOCK_H_N2I860W6
#define BLOCK_H_N2I860W6

#include "expression.h"
#include <vector>

namespace AST {
	class Block : public Expression {
	public:
		~Block();
		
		llvm::Value * genCode(Builder & builder) const;	
		void accept(AST::Visitor & visitor);											
		
		void addMember(AST::Expression * member);
		unsigned numMembers() const;
		AST::Expression * getMember(unsigned id);
		
	private:
		std::vector<AST::Expression *> _members;
	};
	
}

#endif /* end of include guard: BLOCK_H_N2I860W6 */
