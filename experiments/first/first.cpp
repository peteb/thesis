#include <iostream>

#include "llvm/IR/Module.h"
#include "llvm/Function.h"
#include "llvm/PassManager.h"
#include "llvm/CallingConv.h"
#include "llvm/IR/Verifier.h"
#include <llvm/IR/IRPrintingPasses.h>
#include "llvm/Bitcode/ReaderWriter.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

Module* makeLLVMModule();

int main() {
        Module* Mod = makeLLVMModule();

        verifyModule(*Mod, PrintMessageAction);

        PassManager PM;
        PM.add(createPrintModulePass(&outs()));

        PM.run(*Mod);

        //WriteBitcodeToFile(Mod, std::cout);

        delete Mod;
}

Module* makeLLVMModule() {
  // Module Construction
        Module* mod = new Module("test", getGlobalContext());

        Constant* c = mod->getOrInsertFunction("mul_add",
        /*ret type*/								IntegerType::get(getGlobalContext(), 32),
        /*args*/										IntegerType::get(getGlobalContext(), 32),
                                                                                                        IntegerType::get(getGlobalContext(), 32),
                                                                                                        IntegerType::get(getGlobalContext(), 32),
        /*varargs terminated with null*/                  NULL);

        Function* mul_add = cast<Function>(c);
        mul_add->setCallingConv(CallingConv::C);

        Function::arg_iterator args = mul_add->arg_begin();
        Value* x = args++;
        x->setName("x");
        Value* y = args++;
        y->setName("y");
        Value* z = args++;
        z->setName("z");

        BasicBlock* block = BasicBlock::Create(getGlobalContext(), "entry", mul_add);
        IRBuilder<> builder(block);

        Value* tmp = builder.CreateBinOp(Instruction::Mul, x, y, "tmp");
        Value* tmp2 = builder.CreateBinOp(Instruction::Add, tmp, z, "tmp2");

        builder.CreateRet(tmp2);


        {
                Constant * mainConstant = mod->getOrInsertFunction("main",
                                                                                  IntegerType::get(getGlobalContext(), 32), NULL);

                Function * mainFunction = cast<Function>(mainConstant);
                mainFunction->setCallingConv(CallingConv::C);

                Function::arg_iterator args = mainFunction->arg_begin();
        //	(args++)->setName("argc");
        //	(args++)->setName("argv");


                // body
                BasicBlock * mainBlock = BasicBlock::Create(getGlobalContext(), "entry",
                                                                                                                                  mainFunction);
                IRBuilder<> builder(mainBlock);
                Value * ret = Constant::getIntegerValue(IntegerType::get(
                                                                                                        getGlobalContext(), 32), APInt(32, 3));

                builder.CreateRet(ret);
        }


        return mod;
}
