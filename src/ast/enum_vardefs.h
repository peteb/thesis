/*
 * $Id: enum_vardefs.h 1339 2010-05-05 13:28:36Z ptr $
 * thorn-llvm
 * 
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef AST_ENUM_VARDEFS_H_IOXC7ZTM
#define AST_ENUM_VARDEFS_H_IOXC7ZTM

#include "ast/vardefs.h"
#include "ast/closure.h"
#include "ast/visitor.h"

namespace AST {
	class VardefEnumerator : public AST::Visitor {
	public:
		VardefEnumerator(const std::string & varname) 
			: _name(name) 
		{
			_enterClosures = false;			
		}

		std::vector<AST::Vardef *> result;
		
		void visit(AST::Vardef & define) {
			if (define.getName() == _name) {
				result.push_back(&define);
			}
			
			AST::Visitor::visit(define);
		}
		
		void visit(AST::Closure & closure) {
			if (_enterClosures)
				AST::Visitor::visit(closure);
		}
		
	private:
		const std::string _name;
		bool _enterClosures;
	}
	
	std::vector<AST::Vardef *> EnumVardefs(AST::Expression & node) {
		
	}
}

#endif /* end of include guard: AST_ENUM_VARDEFS_H_IOXC7ZTM */
