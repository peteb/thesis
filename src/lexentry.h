/*
 * $Id: lexentry.h 1272 2010-04-29 15:34:23Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef LEXENTRY_H_ZTFOPK5S
#define LEXENTRY_H_ZTFOPK5S

#include <string>

namespace llvm {class Value; }

class LexScope;
class Builder;

enum LexScopeFlags {
	// types 		  		  0x00FF
	LexScopeAny 			= 0x0000,
	LexScopeLS				= 0x0001,
	LexScopeImm				= 0x0002,
	LexScopeUp				= 0x0003,
	LexScopePtr				= 0x0004,
	LexScopeTag				= 0x0005,
	LexScopeSlot			= 0x0006,
	LexScopeParentSlot	= 0x0007,
	
	// flags			  		  0xFF00
	LexScopeMutable		= 0x0100,
	LexScopeNoClone		= 0x0200,
	LexScopeNegRef			= 0x1000,
	LexScopePosRef			= 0x2000,
};

class LexScopeEntry {
public:
	LexScopeEntry(llvm::Value * value, unsigned int flags, 
		const std::string & name = "")
	;
	
	llvm::Value * genStore(llvm::Value * value, Builder & builder);
	llvm::Value * genLoad(Builder & builder);
	
	std::string asString() const;
	unsigned int getFlags() const;
				
private:
	std::string _name;
	int _storeCount;
	llvm::Value * _var;
	unsigned int _flags;
};


#endif /* end of include guard: LEXENTRY_H_ZTFOPK5S */
