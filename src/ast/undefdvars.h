/*
 * $Id: undefdvars.h 1257 2010-04-27 17:42:02Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef UNDEFDVARS_H_UNW63WR3
#define UNDEFDVARS_H_UNW63WR3

#include "ast/visitor.h"
#include "ast/var.h"
#include "ast/vardef.h"
#include "ast/assignment.h"

#include "lexscope.h"

#include <iostream>
#include <set>

namespace AST {
	class UndefinedVars : public AST::Visitor {
	public:
		std::vector<std::string> result;
		
		UndefinedVars();
		
		void visit(AST::Var & var);
		void visit(AST::Vardef & vardef);
		void visit(AST::Unit & unit);
		void visit(AST::Block & block);
		void visit(AST::Assignment & assig);
		
		void insertScope(LexScope & scope);

	private:
		typedef std::set<std::string> StackFrame;
		typedef std::vector<StackFrame> Stack;

		void pushFrame();
		void popFrame();		
		void defineEntry(const std::string & entry);
		bool entryDefined(const std::string & entry) const;
		bool entryAlreadyMarked(const std::string & entry) const;
		
		Stack _stack;
	};
}

#endif /* end of include guard: UNDEFDVARS_H_UNW63WR3 */
