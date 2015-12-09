/*
 * $Id: object.cpp 1373 2010-05-06 15:50:47Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#include "object.h"
#include "lexscope.h"
#include "lexentry.h"
#include "vardef.h"
#include "libthorn/object.h"
#include "builder.h"
#include "visitor.h"

#include <llvm/IR/Module.h>
#include <llvm/IR/IRBuilder.h>

using namespace llvm;

AST::Object::~Object() {
        for (unsigned i = 0; i < _body.size(); ++i)
                delete _body[i];
}

Value * AST::Object::genCode(Builder & builder) const {
        Module * module = builder.getModule();

        Function * object_create = module->getFunction("object_create");
        Function * object_set_slot = module->getFunction("object_set_slot");

        assert(object_create);
        assert(object_set_slot);

        Value * numSlots = builder.CreateInt32(_body.size());
        Value * retval = builder.irb().CreateCall(object_create, numSlots);

        LexScope objectNs(builder.getLexScope());
        //objectNs.setEntry("THIS", new LexScopeEntry(retval, LexScopeImm));

        Builder objectBuilder(builder, objectNs, module);

        for (unsigned i = 0; i < _body.size(); ++i) {
                const AST::Vardef * vardef = _body[i];

                Value * ret = vardef->genCode(objectBuilder);
                Value * val = 0;

                if (vardef->getName() != "delegate")
                        val = objectBuilder.CreateWrappedValue(ret);
                else
                        val = ret;

                unsigned short fixedFlags = 0;
                if (!vardef->isVal())		fixedFlags |= SLOT_MUTABLE;

                Value * slotname = objectBuilder.CreateSymbol(vardef->getName());

                // builder.CreateGlobalStringPtr(vardef->getName().c_str());
                Value * flags = objectBuilder.CreateInt32(fixedFlags);
                // TODO: get flags from vardef

                builder.irb().CreateCall4(object_set_slot, retval, slotname, val, flags);

        }

        return retval;
}

void AST::Object::addMember(AST::Vardef * vardef) {
        _body.push_back(vardef);
}

void AST::Object::accept(AST::Visitor & visitor) {
        visitor.visit(*this);
}

unsigned AST::Object::numMembers() const {
        return _body.size();
}

AST::Vardef * AST::Object::getMember(unsigned i) {
        return _body[i];
}
