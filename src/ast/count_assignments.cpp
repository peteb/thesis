/*
 * $Id$
 * thorn-llvm
 * 
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "ast/count_assignments.h"

unsigned AST::NumAssignments(AST::Expression & node, const std::string & name) {
	AST::AssignmentCounter counter(name);
	node.accept(counter);
	return counter.result;
}

