/*
 * $Id: const_precalc.cpp 1090 2010-04-18 21:48:28Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "const_precalc.h"

#include "ast/block.h"
#include "ast/literal.h"
#include "ast/vardef.h"

#include <iostream>
#include <sstream>

class DetermineLiterals : public AST::Visitor {
public:
	std::vector<AST::Literal *> literals;
	
	void visit(AST::Literal & literal) {
		std::cout << "LITERAL" << std::endl;
		literals.push_back(&literal);
	}	
};


void AST::ConstPrecalc::visit(AST::Block & block) {
	std::cout << "BLOCK" << std::endl;
	DetermineLiterals literals;
	block.accept(literals);
	
	for (unsigned i = 0; i < literals.literals.size(); ++i) {
		std::stringstream ss;
		ss << "__lit_cache_";
		ss << i;
		
		AST::Vardef * cacheVar = new AST::Vardef(ss.str(), true);
		cacheVar->setInit(literals.literals[i]);
		block.addMember(cacheVar);
	}
	
	// TODO:
	// block.addMemberFirst
	// ast::expr.replaceNode(...)   <-- ersätter alla förekomster
	
	// AST::Visitor::visit(block);
}

