/*
 * $Id: builder.h 1280 2010-05-02 18:21:34Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved.
 */

#ifndef BUILDER_H_HEM9W4T4
#define BUILDER_H_HEM9W4T4

#include <llvm/IR/IRBuilder.h>
#include "libthorn/object.h"

class LexScope;
class LexScopeEntry;

namespace llvm {
  class Value;
  class Module;
  class BasicBlock;
}

enum ExceptionHandling {
  MRVExceptions,
  NoExceptions
};

class Builder {
 public:
  Builder(Builder & builder, LexScope & ns, llvm::Module * mod);
  Builder(llvm::IRBuilder<> & builder, LexScope & ns, llvm::Module * mod);

  void setExceptionHandling(ExceptionHandling & eh);

  llvm::Value * CreateStoreReturn(llvm::Value * ret, llvm::Value * exc);
  llvm::Value * CreateBranchToRet();
  llvm::Value * CreateExcForward(llvm::Value * retvalAgg);
  llvm::Value * CreateSymbol(const std::string & name);

  llvm::Value * CreateStoreReturnMRV(llvm::Value * ret, llvm::Value * exc);
  llvm::Value * CreateStoreReturnSimple(llvm::Value * ret);

  llvm::Value * CreateWrappedValue(llvm::Value * val);

  llvm::Value * CreateCachePoint();
  llvm::Value * CreateLocalVariable(const std::string & name);
  llvm::Value * CreateReturnVar();

  llvm::Value * CreateInt32(int val);
  llvm::Value * CreateInt64(long long val);
  llvm::Value * CreateLong(long val);
  llvm::Value * CreatePtr(object_t ptr);

  static llvm::Type * getObjectType(llvm::Module * module);

  void PromoteEntry(LexScopeEntry * entry);
  void DemoteEntry(LexScopeEntry * entry, const std::string & name);

  llvm::IRBuilder<> & irb();
  LexScope & getLexScope() const;
  llvm::Module * getModule() const;

 private:
  llvm::Value * CreateExcForwardMRV(llvm::Value * retval);
  llvm::Value * CreateExcForwardSimple(llvm::Value * retval);

  llvm::IRBuilder<> & _builder;
  LexScope & _scope;
  llvm::Module * _mod;

  ExceptionHandling _eh;
};

#endif /* end of include guard: BUILDER_H_HEM9W4T4 */
