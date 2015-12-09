/*
 * $Id: lexentry.cpp 1272 2010-04-29 15:34:23Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include "lexentry.h"
#include "lexscope.h"
#include "libthorn/object.h"
#include "builder.h"

#include <stdexcept>
#include <iomanip>
#include <sstream>
#include <llvm/Module.h>

using namespace llvm;

LexScopeEntry::LexScopeEntry(Value * value, unsigned int flags, 
	const std::string & name) 
	: _name(name)
{
	assert(flags != 0 && "0 is an invalid var type");
	
	_var = value;
	_flags = flags;
	
	_storeCount = ((flags & LexScopeNegRef) ? -1 : 0);
	_storeCount = ((flags & LexScopePosRef) ? 1 : _storeCount);
}

Value * LexScopeEntry::genStore(Value * value, Builder & builder) {
	if (_storeCount > 0 && !(_flags & LexScopeMutable))
		throw std::runtime_error("trying to re-assign " + asString());
	
	const unsigned char type = _flags & 0xFF;
	Module * module = builder.getModule();
	Value * ret = 0;

	Function * object_set_slot = module->getFunction("object_set_slot");
	assert(object_set_slot);

	unsigned short fixedFlags = 0;
	if (_storeCount > 0)					fixedFlags |= SLOT_ASSIGNMENT;
	if (_flags & LexScopeMutable)		fixedFlags |= SLOT_MUTABLE;
	
	if (type == LexScopeLS) {
		StoreInst * store = builder.irb().CreateStore(value, _var);
		// store->setVolatile(true);	// volatile because of longjmp
		ret = store;
	}
	else if (type == LexScopeImm) {
		// repoint immediate
		_var = value;
		ret = value;
	}
	else if (type == LexScopeUp) {
		// set slot in closure
		LexScopeEntry * closureSelfEntry = builder.getLexScope().getEntry("self");
		assert(closureSelfEntry);
		
		Value * closureObj = closureSelfEntry->genLoad(builder);
		Value * flags = builder.CreateInt32(fixedFlags);
		
		assert(closureObj);
		
		ret = builder.irb().CreateCall4(object_set_slot, closureObj, _var, value, flags);
	}
	else if (type == LexScopeSlot) {
		LexScopeEntry * selfEntry = builder.getLexScope().getEntry("self");
		
		Value * self = selfEntry->genLoad(builder);
		Value * flags = builder.CreateInt32(fixedFlags);
		
		ret = builder.irb().CreateCall4(object_set_slot, self, _var, value, flags);
	}
	else if (type == LexScopePtr) {
		// TODO: dunno what this is.
		_var = value;
	}
	else if (type == LexScopeParentSlot) {
		LexScopeEntry * parentEntry = builder.getLexScope().getEntry("_parent");
		Value * parent = parentEntry->genLoad(builder);
		Value * flags = builder.CreateInt32(fixedFlags);
		ret = builder.irb().CreateCall4(object_set_slot, parent, _var, value, flags);
		
	}
	
	// else if (type == LexScopeGEP) {
	// 		_var = value;
	// 	}
	else {
		throw std::runtime_error("entry.store: invalid lexscope entry type");
	}
	
	_storeCount++;

	return ret;
}

Value * LexScopeEntry::genLoad(Builder & builder) {
	const unsigned char type = _flags & 0xFF;
	Module * module = builder.getModule();
	Value * ret = 0;
	
	Function * object_get_slot = module->getFunction("object_get_slot");
	assert(object_get_slot);

	if (type == LexScopeLS || type == LexScopePtr) {
		LoadInst * load = builder.irb().CreateLoad(_var);
		ret = load;
	}
	else if (type == LexScopeImm) {
		// return immediate
		ret = _var;
	}
	else if (type == LexScopeUp) {
		// get slot in closure for upvalue
		LexScopeEntry * selfEntry = builder.getLexScope().getEntry("self");
		Value * self = selfEntry->genLoad(builder);
		ret = builder.irb().CreateCall2(object_get_slot, self, _var);
	}
	else if (type == LexScopeSlot) {
		LexScopeEntry * selfEntry = builder.getLexScope().getEntry("self");
		Value * self = selfEntry->genLoad(builder);
		ret = builder.irb().CreateCall2(object_get_slot, self, _var);
	}
	else if (type == LexScopeParentSlot) {
		LexScopeEntry * parentEntry = builder.getLexScope().getEntry("_parent");
		Value * parent = parentEntry->genLoad(builder);
		ret = builder.irb().CreateCall2(object_get_slot, parent, _var);
		
	}
	// else if (type == LexScopeGEP) {
	// 	return builder.CreateConstGEP2_32(_var, 0, 0);
	// }
	else {
		throw std::runtime_error("entry.load: invalid lexscope entry type");
	}
	
	return ret;
}

unsigned int LexScopeEntry::getFlags() const {
	return _flags;
}

std::string LexScopeEntry::asString() const {
	unsigned short type = _flags & 0xFF;
	
	std::string typeString;
	
	if (type == LexScopeLS)
		typeString = "Load/Store";
	else if (type == LexScopeImm)
		typeString = "Immediate";
	else if (type == LexScopeUp)
		typeString = "Upvalue";
	else if (type == LexScopeTag)
		typeString = "Tag";
	else if (type == LexScopeSlot)
		typeString = "Slot";
	else if (type == LexScopeParentSlot)
		typeString = "ParentSlot";
	else
		typeString = "Unknown";
	
	unsigned short flags = _flags & 0xFF00;
	if (flags & LexScopeMutable)
		typeString += ", Mutable";
	else
		typeString += ", Immutable";
	
	if (flags & LexScopeNoClone)
		typeString += ", NoClone";
			
	std::stringstream ss;
	ss << _name << ": ";
	ss << "[";
	ss.clear();
	ss << "type: " << typeString << "]";
	
	return ss.str();
}
