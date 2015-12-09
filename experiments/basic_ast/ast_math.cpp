#include "ast_math.h"
#include <llvm/Function.h>
#include <llvm/CallingConv.h>
#include <llvm/Type.h>
#include <llvm/DerivedTypes.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/IRBuilder.h>
#include "namespace.h"

using namespace llvm;

AST::Math::Math(MathType type)
        : _type(type)
{
}

Value * AST::Math::generateCode(Namespace & ns, Module * module, BasicBlock * block) const {
        Namespace & localSpace = ns;

        Value * retval = NULL;

        switch (_type) {
                case MathAdd:
                        retval = generateAddition(localSpace, module, block);
                        break;

                case MathLast:
                        retval = generateLast(localSpace, module, block);
                        break;
        }

        return retval;
}

Value * AST::Math::generateAddition(Namespace & ns, Module * module, BasicBlock * block) const {
        std::vector<Value *> values;

        for (unsigned i = 0; i < _operands.size(); ++i) {
                values.push_back(_operands[i]->generateCode(ns, module, block));
        }

        Value * ret = values.at(0);
        IRBuilder<> builder(block);

        for (unsigned i = 1; i < values.size(); ++i) {
                ret = builder.CreateAdd(ret, values[i], "addtmp");
        }

        return ret;
}

Value * AST::Math::generateLast(Namespace & ns, Module * module, BasicBlock * block) const {
        std::vector<Value *> values;

        for (unsigned i = 0; i < _operands.size(); ++i) {
                values.push_back(_operands[i]->generateCode(ns, module, block));
        }

        return values.at(values.size() - 1);
}


void AST::Math::addOperand(AST::Expression * operand) {
        _operands.push_back(operand);
}
