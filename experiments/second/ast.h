/*
 *  ast.h
 *  comptest
 *
 *  Created by Peter Backman on 1/21/10.
 *  Copyright 2010 Peter Backman. All rights reserved.
 *
 */

#ifndef COMPTEST_AST_H
#define COMPTEST_AST_H

#include "llvm/IR/Module.h"
#include "llvm/Function.h"
#include "llvm/PassManager.h"
#include "llvm/CallingConv.h"
#include "llvm/IR/Verifier.h"
#include <llvm/IR/IRPrintingPasses.h>
#include "llvm/Bitcode/ReaderWriter.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include <string>
#include <vector>


// ok, this is not using good coding habits, but it's just an experiment right
using namespace llvm;

template<typename T>
class Node {
public:
        Node(const std::string & name) : _name(name) {}

        virtual ~Node() {}
        virtual T generateCode(Module * mod, IRBuilder<> & builder) const =0;
        const std::string & name() const {return _name; }

private:
        const std::string _name;
};

class IntType : public Node<const Type*> {
public:
        IntType(const std::string & name) : Node<const Type*>(name) {}

        const Type * generateCode(Module * mod, IRBuilder<> & builder) const {
                const Type * type = IntegerType::get(getGlobalContext(), 32);
                return type;
        }
};

class IntValue : public Node<Value *> {
public:
        IntValue(int value) : Node<Value *>("intconst"), value(value) {}

        Value * generateCode(Module * mod, IRBuilder<> & builder) const {
                return ConstantInt::get(getGlobalContext(), APInt(32, value));
        }

private:
        int value;
};

class Call : public Node<Value *> {
public:
        Call(const std::string & target, const std::string & retname) : Node<Value *>(retname), target(target) {}

        Value *generateCode(Module * mod, IRBuilder<> & builder) const {
                Function * targetFunc = mod->getFunction(target);
                assert(targetFunc);


                return builder.CreateCall(targetFunc, name());
        }

private:
        std::string target;
};


class Return : public Node<Value *> {
public:
        Return(Node<Value *> * val) : Node<Value *>("retgrejs"), val(val) {}

        Value * generateCode(Module * mod, IRBuilder<> & builder) const {
                return builder.CreateRet(val->generateCode(mod, builder));
        }

private:
        Node<Value *> * val;
};


class FunctionDef : public Node<void> {
public:
        FunctionDef(const std::string & name, Node<const Type *> * ret)
                : Node<void>(name)
                , ret(ret)
        {
                retop = new Return(new IntValue(1337));
        }

        void generateCode(llvm::Module * mod, IRBuilder<> & builder) const {
                FunctionType * ft = FunctionType::get(ret->generateCode(mod, builder),
                                                                                                                  createParameters(mod, builder), false);
                Function * func = Function::Create(ft, Function::ExternalLinkage, name(), mod);

                int idx = 0;
                for (Function::arg_iterator iter = func->arg_begin(); iter != func->arg_end(); ++iter) {
                        iter->setName(parameters.at(idx)->name());
                        idx++;
                }

                BasicBlock * block = BasicBlock::Create(getGlobalContext(), "entry", func);

                builder.SetInsertPoint(block);
                retop->generateCode(mod, builder);
        }

        void addParameter(Node<const Type *> * param) {
                parameters.push_back(param);
        }

private:
        std::vector<const Type *> createParameters(Module * mod, IRBuilder<> & builder) const {
                std::vector<const Type *> params;

                for (int i = 0; i < parameters.size(); ++i) {
                        const std::string & type = "int";
                        const Type * typ = parameters[i]->generateCode(mod, builder); //IntegerType::get(getGlobalContext(), 32);
                        params.push_back(typ);
                }

                return params;
        }


        Return * retop;
        std::vector<Node<const Type *> *> parameters;
        Node<const Type *> * ret;
};

#endif // !COMPTEST_AST_H
