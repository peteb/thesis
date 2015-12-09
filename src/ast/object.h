/*
 * $Id: object.h 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef OBJECT_H_QMFBHAOR
#define OBJECT_H_QMFBHAOR

#include "expression.h"
#include <vector>

namespace AST {
	class Vardef;
	
	class Object : public Expression {
	public:
		~Object();
		
		llvm::Value * genCode(Builder & builder) const;	
		void accept(AST::Visitor & visitor);
							
		void addMember(AST::Vardef * vardef);
		unsigned numMembers() const;
		AST::Vardef * getMember(unsigned i);
				
	private:
		std::vector<AST::Vardef *> _body;
	};
	
}

#endif /* end of include guard: OBJECT_H_QMFBHAOR */
