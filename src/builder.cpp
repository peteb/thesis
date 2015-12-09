/*
 * $Id: builder.cpp 1287 2010-05-03 14:43:48Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "builder.h"
#include "lexentry.h"
#include "lexscope.h"
#include "str_util.h"
#include "libthorn/sym.h"

#include <llvm/Module.h>
#include <climits>


using namespace llvm;

Builder::Builder(Builder & builder, LexScope & ns, llvm::Module * mod) 
	: _builder(builder.irb())
	, _scope(ns)
	, _mod(mod)
{
	_eh = builder._eh;
}

Builder::Builder(IRBuilder<> & builder, LexScope & ns, llvm::Module * mod) 
	: _builder(builder)
	, _scope(ns)
	, _mod(mod)
{

}


IRBuilder<> & Builder::irb() {
	return _builder;
}

LexScope & Builder::getLexScope() const {
	return _scope;
}

llvm::Module * Builder::getModule() const {
	return _mod;
}

llvm::Value * Builder::CreateStoreReturn(llvm::Value * ret, llvm::Value * exc) {
	#ifdef EH_MRV
		if (_eh == MRVExceptions)
			return CreateStoreReturnMRV(ret, exc);
		else
			return CreateStoreReturnSimple(ret);
	#else
		LexScopeEntry * retEntry = _scope.getEntry("__retval");
		retEntry->genStore(ret, *this);
		return ret;
	#endif	
}

llvm::Value * Builder::CreateStoreReturnMRV(llvm::Value * ret, llvm::Value * exc) {
	LexScopeEntry * retEntry = _scope.getEntry("__retval");
	
	const Type * objectTy = _mod->getTypeByName("object");
	Constant * nullVal = Constant::getNullValue(objectTy);
		
	Value * retVal = (ret ? ret : nullVal);
	Value * excVal = (exc ? exc : nullVal);

	Value * retEntryPtr = retEntry->genLoad(*this);
	Value * imm = _builder.CreateInsertValue(retEntryPtr, retVal, 0);
	Value * imm2 = _builder.CreateInsertValue(imm, excVal, 1);
	retEntry->genStore(imm2, *this);
	
	return ret;
}

llvm::Value * Builder::CreateStoreReturnSimple(llvm::Value * ret) {
	LexScopeEntry * retEntry = _scope.getEntry("__retval");
	
	const Type * objectTy = _mod->getTypeByName("object");
	Constant * nullVal = Constant::getNullValue(objectTy);
		
	Value * retVal = (ret ? ret : nullVal);
	
	Value * retEntryPtr = retEntry->genLoad(*this);
	Value * imm = _builder.CreateInsertValue(retEntryPtr, retVal, 0);
	retEntry->genStore(imm, *this);
	
	return ret;
}

llvm::Value * Builder::CreateBranchToRet() {
	Value * retlabel = _scope.getEntry("__retlabel")->genLoad(*this);
	_builder.CreateBr(cast<BasicBlock>(retlabel));
	
	return retlabel;
}

llvm::Value * Builder::CreateExcForward(llvm::Value * retvalAgg) {
	#ifdef EH_MRV
		if (_eh == MRVExceptions)
			return CreateExcForwardMRV(retvalAgg);
		else
			return CreateExcForwardSimple(retvalAgg);
	#else
		return retvalAgg;
	#endif
}

llvm::Value * Builder::CreateExcForwardMRV(llvm::Value * retvalAgg) {
	// retvalAgg = {i8*, i8*}, ret from a function call
	Value * retVal = _builder.CreateExtractValue(retvalAgg, 0, "retval");
	Value * excVal = _builder.CreateExtractValue(retvalAgg, 1, "excval");
	
	Value * excIsNull = irb().CreateIsNull(excVal);
	
	Function * fun = _builder.GetInsertBlock()->getParent();
	assert(fun);
	
	BasicBlock * forwardBlock = BasicBlock::Create(_mod->getContext(), "forward", fun);
	BasicBlock * contBlock = BasicBlock::Create(_mod->getContext(), "cont", fun);
	
	_builder.CreateCondBr(excIsNull, contBlock, forwardBlock);
	
	// forward exception
	_builder.SetInsertPoint(forwardBlock);
	
	//Function * abort = _mod->getFunction("abort");
	//assert(abort);
	
	//_builder.CreateCall(abort);
	
	if (_scope.hasEntry("CATCH")) {
		Value * catchVal = _scope.getEntry("CATCH")->genLoad(*this);
		BasicBlock * catchBlock = cast<BasicBlock>(catchVal);
		
		_scope.getEntry("CATCH_PARAM")->genStore(excVal, *this);
		
		_builder.CreateBr(catchBlock);
	}
	else {
		CreateStoreReturn(0, excVal);
		CreateBranchToRet();
	}
	
	_builder.SetInsertPoint(contBlock);
		
	return retVal;	
}

llvm::Value * Builder::CreateExcForwardSimple(llvm::Value * retvalAgg) {
	// used when libthorn is compiled for exceptions, but compiler doesn't
	// use mrv exceptions
	
	// retvalAgg = {i8*, i8*}, ret from a function call
	Value * retVal = _builder.CreateExtractValue(retvalAgg, 0, "retval");
	
	return retVal;	
}

llvm::Value * Builder::CreateSymbol(const std::string & name) {
	#ifdef SYM_ADDRESS
		std::string fixedName = name;
		string_replace(fixedName, "?", "_q");
		
		const std::string symName = "__sym_" + fixedName;
		const Type * rettype = Type::getInt32Ty(_mod->getContext());

		GlobalVariable * gv = _mod->getGlobalVariable(symName);
		if (!gv) {
			Constant * null = Constant::getNullValue(rettype);
		
			gv = new GlobalVariable(
				*_mod, rettype, false, GlobalValue::WeakAnyLinkage, null, symName.c_str()
			);
    	}

	   Value * ptr = _builder.CreateConstGEP1_32(gv, 0, name);
		return ptr;
	#else
		return _builder.CreateGlobalStringPtr(name.c_str());
	#endif
}

Value * Builder::CreateWrappedValue(llvm::Value * val) {
	Function * __t_wrap_value = _mod->getFunction("__t_wrap_value");
	
	return _builder.CreateCall(__t_wrap_value, val);
}

Value * Builder::CreateCachePoint() {
	BasicBlock * caller = _builder.GetInsertBlock();
	BasicBlock * cacheBlock = BasicBlock::Create(
		_mod->getContext(), "cache", caller->getParent()
	);

	BasicBlock * contBlock = BasicBlock::Create(
		_mod->getContext(), "cont", caller->getParent()
	);
	
	_builder.CreateBr(cacheBlock);
	_builder.SetInsertPoint(cacheBlock);
	_builder.CreateBr(contBlock);
	_builder.SetInsertPoint(contBlock);
	
	return cacheBlock;
}

llvm::Value * Builder::CreateLocalVariable(const std::string & name) {
	LexScopeEntry * cachePoint = 0;
	BasicBlock * previousBlock = 0;
	BasicBlock * cacheBlock = 0;
	
	const Type * objectTy = _mod->getTypeByName("object");
	Value * stackvar = 0;
	
	if (_scope.hasEntry("__CACHE")) {
		cachePoint = _scope.getEntry("__CACHE");
		assert(cachePoint && "no cache point defined");
	
		Value * bb = cachePoint->genLoad(*this);
		previousBlock = _builder.GetInsertBlock();
		cacheBlock = cast<BasicBlock>(bb);
	
		_builder.SetInsertPoint(cacheBlock);
		stackvar = _builder.CreateAlloca(objectTy, NULL, name);
		assert(stackvar && "failed to create alloca instruction");
	
		_builder.SetInsertPoint(previousBlock);
	}
	else {
		stackvar = _builder.CreateAlloca(objectTy, NULL, name);
	}
	
	return stackvar;
}

llvm::Value * Builder::CreateInt32(int val) {
	return ConstantInt::get(_mod->getContext(), APInt(32, val));
}

llvm::Value * Builder::CreateInt64(long long val) {
	return ConstantInt::get(_mod->getContext(), APInt(64, val));	
}

llvm::Value * Builder::CreateLong(long val) {
	// 32bit on 32bit, 64bit on 64bit
	return ConstantInt::get(_mod->getContext(), APInt(sizeof(long) * CHAR_BIT, val));
}

llvm::Value * Builder::CreatePtr(object_t ptr) {
	const Type * objectTy = _mod->getTypeByName("object");
	llvm::Value * val = CreateLong((long)ptr);
	llvm::Value * casted = _builder.CreateIntToPtr(val, objectTy);

	return casted;
}

llvm::Value * Builder::CreateReturnVar() {
	const Type * objectTy = _mod->getTypeByName("object");
	const Type * retTy = _mod->getTypeByName("ret");

	assert(objectTy);
	assert(retTy);

	Value * retval = _builder.CreateAlloca(retTy, 0);
	
	#ifdef EH_MRV
	// if (_eh == MRVExceptions) {
		Value * ret = _builder.CreateLoad(retval);
		Value * zeroed = _builder.CreateInsertValue(
			ret, Constant::getNullValue(objectTy), 1
		);
	
		_builder.CreateStore(zeroed, retval);
	// }
	#endif
	
	return retval;	
}

void Builder::PromoteEntry(LexScopeEntry * entry) {
	abort();
}

void Builder::DemoteEntry(LexScopeEntry * entry, const std::string & name) {
	// this function moves a variable into a slot, further references to that variable
	// will be to the slot
	
	unsigned flags = LexScopeSlot;
	Value * slotName = CreateSymbol(name);
	
	if (entry->getFlags() & LexScopeMutable) {
		flags |= LexScopeMutable;
	}

	LexScopeEntry * slottedEntry = new LexScopeEntry(slotName, flags, name);
	Value * oldValue = entry->genLoad(*this);
	slottedEntry->genStore(oldValue, *this);
	// _scope.removeEntry(name);
	// _scope.setEntry(name, slottedEntry);
	_scope.replaceEntry(name, slottedEntry);
}


void Builder::setExceptionHandling(ExceptionHandling & eh) {
	_eh = eh;
}
