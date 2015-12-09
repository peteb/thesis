/*
 * $Id: unit.cpp 1091 2010-04-18 23:07:50Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include "unit.h"
#include "lexscope.h"
#include "ast/vardef.h"
#include "ast/visitor.h"
#include "builder.h"

#include <llvm/IR/Module.h>
#include <llvm/IR/IRBuilder.h>
#include <stdexcept>

using namespace llvm;

AST::Unit::~Unit() {
        // TODO... proper mm
        //for (unsigned i = 0; i < _members.size(); ++i)
        //	delete _members[i];
}

llvm::Value * AST::Unit::genCode(Builder & builder) const {
        LexScope unitScope(builder.getLexScope());
        Builder unitBuilder(builder, unitScope, builder.getModule());

        Value * lastVal = 0;

        for (unsigned i = 0; i < _members.size(); ++i)
                lastVal = _members[i]->genCode(unitBuilder);

        return lastVal;
}

void AST::Unit::addMember(AST::Vardef * member) {
        _members.push_back(member);
}

void AST::Unit::accept(AST::Visitor & visitor) {
        visitor.visit(*this);
}

unsigned AST::Unit::numMembers() const {
        return _members.size();
}

AST::Vardef * AST::Unit::getMember(unsigned i) const {
        return _members[i];
}
