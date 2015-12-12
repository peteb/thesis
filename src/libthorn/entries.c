/*
 * $Id$
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#include <assert.h>
#include <stdio.h>

#include "object.h"
#include "array.h"
#include "sym.h"
#include "object_builder.h"
#include "closure.h"
#include "config.h"

GLOBAL_SYM(clone);
GLOBAL_SYM(__value);

static ret_t __t_wrapped_value(object_t this, object_t self, object_t args);

object_t __t_clone(object_t obj) {
	// TODO: check if object is completely immutable, if it is, just pass it on
	
	_DEBUG("__t_clone: %p\n", obj);
	
	ret_t ret = object_exec(obj, SYM(clone), array_object(0));
	assert(RET_VAL(ret));
	
	return RET_VAL(ret);
}

object_t __t_wrap_value(object_t value) {	
	if (object_get_type(value) == OBJ_CLOSURE) {
		return value;
	}
	
	object_t closure = closure_object(__t_wrapped_value, 1);
	object_set_slot(closure, SYM(__value), value, 0);
	
	return closure;
}

ret_t __t_wrapped_value(object_t this, object_t self, object_t args) {
	object_t ret = object_get_slot(self, SYM(__value));
	
	RET(ret);
}




