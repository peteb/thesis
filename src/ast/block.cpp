/*
 * $Id: block.cpp 1252 2010-04-27 13:18:54Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "block.h"
#include "lexscope.h"
#include "builder.h"
#include "ast/visitor.h"

#include <llvm/Module.h>
#include <iostream>

using namespace llvm;

AST::Block::~Block() {
	for (unsigned i = 0; i < _members.size(); ++i) {
		delete _members[i];
	}
}

llvm::Value * AST::Block::genCode(Builder & builder) const {
	LexScope blockScope(builder.getLexScope());  // create new scope level
	Builder blockBuilder(builder, blockScope, builder.getModule());
	llvm::Value * lastValue = 0;
	
	for (unsigned i = 0; i < _members.size(); ++i) {
		BasicBlock * curbb = builder.irb().GetInsertBlock();
		TerminatorInst * term = curbb->getTerminator();
		
		// make sure we're not trying to generate code in a terminated block
		if (!term) {
			// std::cout << "SCOPE: " << blockScope.asString() << std::endl;
			lastValue = _members[i]->genCode(blockBuilder);
			assert(lastValue && "unit member failed to generate code");
		}
		else {
			return lastValue;	// early-out is possible, I think
			// if (isa<UnreachableInst>(term)) {
			// 	std::cerr 
			// 		<< "app: warning: creating code in unreachable block " 
			// 		<< std::endl
			// 	;
			// }
			// else {
			// 	std::cerr 
			// 		<< "app: warning: creating code in terminated block" 
			// 		<< std::endl
			// 	;
			// }
		}
	}

	assert(lastValue && "no last value defined in block");
	
	return lastValue;
}

void AST::Block::addMember(AST::Expression * member) {
	_members.push_back(member);
}

unsigned AST::Block::numMembers() const {
	return _members.size();
}

AST::Expression * AST::Block::getMember(unsigned id) {
	return _members[id];
}


void AST::Block::accept(AST::Visitor & visitor) {
	visitor.visit(*this);
}