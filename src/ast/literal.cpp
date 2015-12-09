/*
 * $Id: literal.cpp 1253 2010-04-27 14:01:49Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include "literal.h"
#include "lexscope.h"
#include "lexentry.h"
#include "builder.h"
#include "visitor.h"
#include "libthorn/integer.h"
#include "libthorn/ptr_tag.h"

#include <sstream>
#include <llvm/IR/Module.h>
#include <stdexcept>

using namespace llvm;

AST::Literal::Literal(LiteralType type)
        : _type(type)
{
        _value.i = 0;
}

AST::Literal::~Literal() {
//      if (_type == AST::LiteralString)		// TODO: eh.....
//              delete _value.str;
}


Value * AST::Literal::genCode(Builder & builder) const {
        switch (_type) {
                case AST::LiteralInt:    return genInt(builder);
                case AST::LiteralString: return genString(builder);
                case AST::LiteralFloat:  return genFloat(builder);
                case AST::LiteralBool:   return genBool(builder);
                case AST::LiteralNull:   return genNull(builder);
        }

        throw std::runtime_error("literal type allowed but not supported");
}

Value * AST::Literal::genInt(Builder & builder) const {
        Value * ret = 0;

        if (INT_CAN_INLINE(_value.i)) {
                object_t obj = PTR_TAG_SHIFTED(_value.i, PTR_INT);
                ret = builder.CreatePtr(obj);
        }
        else {
                Function * int_object = builder.getModule()->getFunction("int_object");

                Value * val = builder.CreateLong(_value.i);
                ret = builder.irb().CreateCall(int_object, val);
        }

        return ret;
}

llvm::Value * AST::Literal::genString(Builder & builder) const {
        Function * string_object = builder.getModule()->getFunction("string_object");

        Value * literal = builder.irb().CreateGlobalStringPtr(_value.str->c_str());
        Value * boxed = builder.irb().CreateCall(string_object, literal);

        return boxed;
}

llvm::Value * AST::Literal::genBool(Builder & builder) const {
        Function * bool_object = builder.getModule()->getFunction("bool_object");

        Value * literal = builder.CreateInt32(_value.b);
        Value * boxed = builder.irb().CreateCall(bool_object, literal);

        return boxed;
}

llvm::Value * AST::Literal::genFloat(Builder & builder) const {
        Module * module = builder.getModule();
        Function * float_object = builder.getModule()->getFunction("float_object");

        Value * literal = ConstantFP::get(module->getContext(), APFloat(_value.f));
        Value * boxed = builder.irb().CreateCall(float_object, literal);

        return boxed;
}

llvm::Value * AST::Literal::genNull(Builder & builder) const {
        Function * null_object = builder.getModule()->getFunction("null_object");

        Value * boxed = builder.irb().CreateCall(null_object, "null");

        return boxed;
}

void AST::Literal::setInt(long val) {
        assert(_type == AST::LiteralInt);
        _value.i = val;
}

void AST::Literal::setString(const std::string & str) {
        assert(_type == AST::LiteralString);
        _value.str = new std::string(str);
}

void AST::Literal::setBool(bool val) {
        assert(_type == AST::LiteralBool);
        _value.b = val;
}

void AST::Literal::setFloat(float val) {
        assert(_type == AST::LiteralFloat);
        _value.f = val;
}

int AST::Literal::getInt() const {
        assert(_type == AST::LiteralInt);
        return _value.i;
}

const std::string & AST::Literal::getString() const {
        assert(_type == AST::LiteralString);
        return *_value.str;
}

bool AST::Literal::getBool() const {
        assert(_type == AST::LiteralBool);
        return _value.b;
}

float AST::Literal::getFloat() const {
        assert(_type == AST::LiteralFloat);
        return _value.f;
}

void AST::Literal::accept(AST::Visitor & visitor) {
        visitor.visit(*this);
}

bool AST::Literal::isConstant() const {
        return true;
}

AST::LiteralType AST::Literal::getType() const {
        return _type;
}
