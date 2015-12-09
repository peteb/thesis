/*
 * $Id: visitor.cpp 1339 2010-05-05 13:28:36Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "visitor.h"
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

void AST::Visitor::visit(AST::Unit & unit) {
	for (unsigned i = 0; i < unit.numMembers(); ++i) {
		unit.getMember(i)->accept(*this);
	}
}

void AST::Visitor::visit(AST::Block & block) {
	for (unsigned i = 0; i < block.numMembers(); ++i) {
		block.getMember(i)->accept(*this);
	}
}

void AST::Visitor::visit(AST::Vardef & vardef) {
	AST::Expression * initVal = vardef.getInit();
	assert(initVal);
	initVal->accept(*this);
}

void AST::Visitor::visit(AST::Literal & literal) {
	
}

void AST::Visitor::visit(AST::Closure & closure) {
	for (unsigned i = 0; i < closure.numFormals(); ++i) {
		closure.getFormal(i)->accept(*this);
	}
	
	assert(closure.getBody());
	closure.getBody()->accept(*this);
}

void AST::Visitor::visit(AST::Var & var) {
	
}

void AST::Visitor::visit(AST::Object & object) {
	for (unsigned i = 0; i < object.numMembers(); ++i) {
		object.getMember(i)->accept(*this);
	}
}

void AST::Visitor::visit(AST::MethodCall & mcall) {
	assert(mcall.getTarget());
	mcall.getTarget()->accept(*this);
	
	for (unsigned i = 0; i < mcall.numArguments(); ++i) {
		mcall.getArgument(i)->accept(*this);
	}
}

void AST::Visitor::visit(AST::If & ifexpr) {
	ifexpr.getCondition()->accept(*this);
	
	if (ifexpr.getThen())
		ifexpr.getThen()->accept(*this);
		
	if (ifexpr.getElse())
		ifexpr.getElse()->accept(*this);
}

void AST::Visitor::visit(AST::Return & retexpr) {
	retexpr.getValue()->accept(*this);
}

void AST::Visitor::visit(AST::Assignment & assig) {
	if (assig.getTarget())
		assig.getTarget()->accept(*this);
	
	assig.getValue()->accept(*this);
}

void AST::Visitor::visit(AST::While & whileexpr) {
	whileexpr.getCondition()->accept(*this);
	whileexpr.getBody()->accept(*this);
}

void AST::Visitor::visit(AST::Array & array) {
	for (unsigned i = 0; i < array.numMembers(); ++i) {
		array.getMember(i)->accept(*this);
	}
}

void AST::Visitor::visit(AST::Try & tryexpr) {
	tryexpr.getBody()->accept(*this);
	tryexpr.getCatchFormal()->accept(*this);
	tryexpr.getCatch()->accept(*this);
}

void AST::Visitor::visit(AST::Throw & throwexpr) {
	throwexpr.getValue()->accept(*this);
}

void AST::Visitor::visit(AST::Spawn & spawn) {
	spawn.getClosure()->accept(*this);
}

void AST::Visitor::visit(AST::Send & send) {
	send.getTarget()->accept(*this);
	send.getValue()->accept(*this);
}





AST::DelegateVisitor::DelegateVisitor(AST::Visitor & delegate)
	: _delegate(delegate)
{}

void AST::DelegateVisitor::visit(AST::Unit & unit) {
	_delegate.visit(unit);
}

void AST::DelegateVisitor::visit(AST::Block & block) {
	_delegate.visit(block);
}

void AST::DelegateVisitor::visit(AST::Vardef & vardef) {
	_delegate.visit(vardef);
}

void AST::DelegateVisitor::visit(AST::Literal & literal) {
	_delegate.visit(literal);
}

void AST::DelegateVisitor::visit(AST::Closure & closure) {
	_delegate.visit(closure);
}

void AST::DelegateVisitor::visit(AST::Var & var) {
	_delegate.visit(var);
}

void AST::DelegateVisitor::visit(AST::Object & object) {
	_delegate.visit(object);
}

void AST::DelegateVisitor::visit(AST::MethodCall & mcall) {
	_delegate.visit(mcall);
}

void AST::DelegateVisitor::visit(AST::If & ifexpr) {
	_delegate.visit(ifexpr);
}

void AST::DelegateVisitor::visit(AST::Return & retexpr) {
	_delegate.visit(retexpr);
}

void AST::DelegateVisitor::visit(AST::Assignment & assig) {
	_delegate.visit(assig);
}

void AST::DelegateVisitor::visit(AST::While & whileexpr) {
	_delegate.visit(whileexpr);
}

void AST::DelegateVisitor::visit(AST::Array & array) {
	_delegate.visit(array);
}

void AST::DelegateVisitor::visit(AST::Try & tryexpr) {
	_delegate.visit(tryexpr);
}

void AST::DelegateVisitor::visit(AST::Throw & throwexpr) {
	_delegate.visit(throwexpr);
}

void AST::DelegateVisitor::visit(AST::Spawn & spawn) {
	_delegate.visit(spawn);
}

void AST::DelegateVisitor::visit(AST::Send & send) {
	_delegate.visit(send);
}


