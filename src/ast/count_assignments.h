/*
 * $Id: count_assignments.h 1290 2010-05-03 15:29:19Z ptr $
 * thorn-llvm
 * 
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef COUNT_ASSIGNMENTS_H_57A1N0BW
#define COUNT_ASSIGNMENTS_H_57A1N0BW

#include "ast/assignment.h"
#include "ast/visitor.h"

namespace AST {
	class AssignmentCounter : public AST::Visitor {
	public:
		AssignmentCounter(const std::string & var) : _var(var) {result = 0;}
		
		unsigned result;
		
		// TODO: AstExpr::genCode ska ha en AstExpr * parent
		// TODO: enum_closures -> enum_nodes<template>
		// TODO: testa om det räcker att byta ut lexnoden på rätt nivå bara
		
		void visit(AST::Assignment & assignment) {
			if (assignment.getName() == _var) {
				result++;
			}
			
			AST::Visitor::visit(assignment);
		}
		
	private:
		const std::string _var;
	};
	
	unsigned NumAssignments(AST::Expression & node, const std::string & name);
}


#endif /* end of include guard: COUNT_ASSIGNMENTS_H_57A1N0BW */
