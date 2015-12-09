/*
 * $Id: undefdvars.cpp 1257 2010-04-27 17:42:02Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "undefdvars.h"

AST::UndefinedVars::UndefinedVars() {
	pushFrame();
}

void AST::UndefinedVars::visit(AST::Var & var) {
	AST::Visitor::visit(var);
	
	const std::string varName = var.getName();
	
	if (!entryDefined(varName) && !entryAlreadyMarked(varName))
		result.push_back(varName);
}

void AST::UndefinedVars::visit(AST::Vardef & vardef) {
	AST::Visitor::visit(vardef);
	defineEntry(vardef.getName());
}

void AST::UndefinedVars::visit(AST::Assignment & assig) {
	AST::Visitor::visit(assig);

	if (!assig.getTarget()) {	// no target
		const std::string varName = assig.getName();

		if (!entryDefined(varName) && !entryAlreadyMarked(varName))
			result.push_back(varName);
		
	}
}

void AST::UndefinedVars::visit(AST::Unit & unit) {
	pushFrame();
	AST::Visitor::visit(unit);
	popFrame();
}

void AST::UndefinedVars::visit(AST::Block & block) {
	pushFrame();
	AST::Visitor::visit(block);
	popFrame();
}

void AST::UndefinedVars::insertScope(LexScope & scope) {
	std::vector<std::string> entries;
	scope.fillEntryNames(entries);
	
	for (unsigned i = 0; i < entries.size(); ++i)
		defineEntry(entries[i]);
}

void AST::UndefinedVars::pushFrame() {
	_stack.push_back(StackFrame());
}

void AST::UndefinedVars::popFrame() {
	_stack.pop_back();
}

void AST::UndefinedVars::defineEntry(const std::string & entry) {
	_stack.back().insert(entry);
}

bool AST::UndefinedVars::entryDefined(const std::string & entry) const {
	Stack::const_reverse_iterator iter = _stack.rbegin();
	for (; iter != _stack.rend(); ++iter) {
		if ((*iter).count(entry) > 0)
			return true;
	}
	
	return false;
}

bool AST::UndefinedVars::entryAlreadyMarked(const std::string & entry) const {
	for (unsigned i = 0; i < result.size(); ++i) {
		if (result[i] == entry) {
			return true;
		}
	}
	
	return false;
}
