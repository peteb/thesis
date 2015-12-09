/*
 * $Id: tree_printer.cpp 1205 2010-04-26 11:58:38Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include <sstream>

#include "tree_printer.h"
#include "ast/unit.h"
#include "ast/block.h"
#include "ast/vardef.h"
#include "ast/literal.h"
#include "ast/closure.h"
#include "ast/var.h"
#include "ast/object.h"
#include "ast/methodcall.h"
#include "ast/if.h"
#include "ast/return.h"
#include "ast/assignment.h"
#include "ast/while.h"
#include "ast/array.h"
#include "ast/try.h"
#include "ast/throw.h"
#include "ast/spawn.h"
#include "ast/send.h"

AST::TreePrinter::TreePrinter(std::string & res, unsigned level) 
	: _result(res)
{
	_level = level;
}

std::string AST::TreePrinter::LevelIndent(unsigned level) {
	return std::string(level * 3, ' ');
}

AST::TreePrinter AST::TreePrinter::offsetPrinter(unsigned offsetLevel) {
	return TreePrinter(_result, _level + offsetLevel);
}

void AST::TreePrinter::appendResult(unsigned offsetLevel, const std::string & res) {
	_result += LevelIndent(_level + offsetLevel) + res + "\n";
}

void AST::TreePrinter::visit(AST::Unit & unit) {
	appendResult(0, "AST::Unit");
	
	TreePrinter sub = offsetPrinter(1);
		
	for (unsigned i = 0; i < unit.numMembers(); ++i)
		unit.getMember(i)->accept(sub);
}

void AST::TreePrinter::visit(AST::Block & block) {
	appendResult(0, "AST::Block");
	
	TreePrinter sub = offsetPrinter(1);
	
	for (unsigned i = 0; i < block.numMembers(); ++i)
		block.getMember(i)->accept(sub);
}

void AST::TreePrinter::visit(AST::Vardef & vardef) {
	appendResult(0, "AST::Vardef(" + vardef.getName() + ")");
	
	if (vardef.getInit()) {
		TreePrinter sub = offsetPrinter(1);
		vardef.getInit()->accept(sub);
	}
	else {
		appendResult(1, "null");
	}
}

void AST::TreePrinter::visit(AST::Literal & literal) {
	std::stringstream ss;
	ss << "AST::Literal(";
	
	switch (literal.getType()) {
		case AST::LiteralInt:
			ss << literal.getInt();
			break;
			
		case AST::LiteralString:
			ss << "\"" << literal.getString() << "\"";
			break;
			
		case AST::LiteralFloat:
			ss << literal.getFloat();
			break;
		
		case AST::LiteralBool:
			ss << (literal.getBool() ? "true" : "false");
			break;
		
		case AST::LiteralNull:
			ss << "null";
			break;		
	}
	
	ss << ")";
	
	appendResult(0, ss.str());
}

void AST::TreePrinter::visit(AST::Closure & closure) {
	appendResult(0, "AST::Closure");
	appendResult(1, "Formals:");
	
	TreePrinter sub = offsetPrinter(2);
	
	if (closure.numFormals() == 0) {
		appendResult(2, "<none>");
	}
	else {
		for (unsigned i = 0; i < closure.numFormals(); ++i) {
			closure.getFormal(i)->accept(sub);
		}
	}
	
	appendResult(1, "Body:");
	
	if (closure.getBody()) {
		closure.getBody()->accept(sub);
	}
}

void AST::TreePrinter::visit(AST::Var & var) {
	appendResult(0, "AST::Var(" + var.getName() + ")");
}

void AST::TreePrinter::visit(AST::Object & object) {
	appendResult(0, "AST::Object");
	
	TreePrinter sub = offsetPrinter(1);
	for (unsigned i = 0; i < object.numMembers(); ++i)
		object.getMember(i)->accept(sub);
}

void AST::TreePrinter::visit(AST::MethodCall & mcall) {
	appendResult(0, "AST::MethodCall(" + mcall.getName() + ")");

	TreePrinter sub = offsetPrinter(2);
	
	appendResult(1, "Target:");
	mcall.getTarget()->accept(sub);
	
	
	appendResult(1, "Arguments:");
	
	if (mcall.numArguments() == 0) {
		appendResult(2, "<none>");
	}
	else {
		for (unsigned i = 0; i < mcall.numArguments(); ++i) {
			mcall.getArgument(i)->accept(sub);
		}
	}
}

void AST::TreePrinter::visit(AST::If & ifexpr) {
	appendResult(0, "AST::If");
	
	TreePrinter sub = offsetPrinter(2);
	
	appendResult(1, "Condition:");
	ifexpr.getCondition()->accept(sub);
	
	appendResult(1, "Then:");
	ifexpr.getThen()->accept(sub);
	
	appendResult(1, "Else:");
	ifexpr.getElse()->accept(sub);
}

void AST::TreePrinter::visit(AST::Return & retexpr) {
	appendResult(0, "AST::Return");
	
	TreePrinter sub = offsetPrinter(1);
	retexpr.getValue()->accept(sub);
}

void AST::TreePrinter::visit(AST::Assignment & assig) {
	appendResult(0, "AST::Assignment(" + assig.getName() + ")");
	
	TreePrinter sub = offsetPrinter(2);
	
	appendResult(1, "Target:");
	
	if (assig.getTarget()) 
		assig.getTarget()->accept(sub);
	else
		appendResult(2, "<null>");
		
	appendResult(1, "Value:");
	assig.getValue()->accept(sub);
}

void AST::TreePrinter::visit(AST::While & whileexpr) {
	TreePrinter sub = offsetPrinter(2);

	appendResult(0, "AST::While");
	appendResult(1, "Condition:");
	whileexpr.getCondition()->accept(sub);

	appendResult(1, "Body:");
	whileexpr.getBody()->accept(sub);
}

void AST::TreePrinter::visit(AST::Array & array) {
	appendResult(0, "AST::Array");
	
	TreePrinter sub = offsetPrinter(1);
	
	for (unsigned i = 0; i < array.numMembers(); ++i)
		array.getMember(i)->accept(sub);
}

void AST::TreePrinter::visit(AST::Try & tryexpr) {
	appendResult(0, "AST::Try");
	
	TreePrinter sub = offsetPrinter(2);
	
	appendResult(1, "Body:");
	tryexpr.getBody()->accept(sub);
	
	appendResult(1, "Formal:");
	tryexpr.getCatchFormal()->accept(sub);
	
	appendResult(1, "Catch:");
	tryexpr.getCatch()->accept(sub);
}

void AST::TreePrinter::visit(AST::Throw & throwexpr) {
	appendResult(0, "AST::Throw");
	TreePrinter sub = offsetPrinter(1);
	
	throwexpr.getValue()->accept(sub);
}

void AST::TreePrinter::visit(AST::Spawn & spawn) {
	appendResult(0, "AST::Spawn");
	TreePrinter sub = offsetPrinter(1);
	
	spawn.getClosure()->accept(sub);
}

void AST::TreePrinter::visit(AST::Send & send) {
	appendResult(0, "AST::Send");
	TreePrinter sub = offsetPrinter(2);
	
	appendResult(1, "Target:");
	send.getTarget()->accept(sub);
	
	appendResult(1, "Value:");
	send.getValue()->accept(sub);
	
}
