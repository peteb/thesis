#include "ast_val.h"
#include <llvm/Function.h>
#include <llvm/PassManager.h>
#include <llvm/CallingConv.h>
#include <llvm/IR/Verifier.h>
#include <llvm/IR/IRPrintingPasses.h>
#include <llvm/Bitcode/ReaderWriter.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/Support/raw_ostream.h>
#include "namespace.h"
#include "lexical_cast.h"

using namespace llvm;

AST::Val::Val(const std::string & value) {
        _value = value;
}

llvm::Value * AST::Val::generateCode(Namespace & ns, llvm::Module * module, llvm::BasicBlock * block) const {
        // if (_value[0] == '$') {
        //              return ns.valueForName(_value.substr(1));
        //      }

        return ConstantInt::get(module->getContext(), APInt(32, lexical_cast<int>(_value)));
}
