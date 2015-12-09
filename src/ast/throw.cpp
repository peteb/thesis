/*
 * $Id: throw.cpp 1112 2010-04-19 10:51:33Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include "throw.h"
#include "lexscope.h"
#include "lexentry.h"
#include "builder.h"
#include "visitor.h"

#include <llvm/IR/Module.h>

using namespace llvm;

AST::Throw::Throw(AST::Expression * value) {
        _value = value;
}

AST::Throw::~Throw() {
        delete _value;
}

llvm::Value * AST::Throw::genCode(Builder & builder) const {
        assert(_value);

        Value * throwVal = _value->genCode(builder);
        Function * __t_throw = builder.getModule()->getFunction("__t_throw");
        assert(__t_throw);

        Value * ret = builder.irb().CreateCall(__t_throw, throwVal);
        builder.CreateExcForward(ret);

        return throwVal;
}

void AST::Throw::accept(AST::Visitor & visitor) {
        visitor.visit(*this);
}

AST::Expression * AST::Throw::getValue() const {
        return _value;
}
