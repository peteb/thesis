/*
 * $Id: array.cpp 1252 2010-04-27 13:18:54Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include "array.h"
#include "builder.h"
#include "visitor.h"

#include <llvm/IR/Module.h>

using namespace llvm;

llvm::Value * AST::Array::genCode(Builder & builder) const {
        Module * module = builder.getModule();

        Function * array_object = module->getFunction("array_object");
        Function * array_set_elementC = module->getFunction("array_set_elementC");

        assert(array_object);
        assert(array_set_elementC);

        Value * arrayLength = builder.CreateInt32(_members.size());
        Value * arrayObject = builder.irb().CreateCall(array_object, arrayLength);

        for (unsigned i = 0; i < _members.size(); ++i) {
                Value * index = builder.CreateInt32(i);
                Value * memberval = _members[i]->genCode(builder);
                builder.irb().CreateCall3(array_set_elementC, arrayObject, index, memberval);
        }

        return arrayObject;
}

void AST::Array::addMember(AST::Expression * member) {
        _members.push_back(member);
}

unsigned AST::Array::numMembers() const {
        return _members.size();
}

AST::Expression * AST::Array::getMember(unsigned i) const {
        return _members[i];
}

void AST::Array::accept(AST::Visitor & visitor) {
        visitor.visit(*this);
}
