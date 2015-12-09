/*
 * $Id: closure.c 1522 2010-05-18 09:56:41Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include <assert.h>
#include <stdio.h>
#include <pthread.h>
#include <stdint.h>

#include "closure.h"
#include "string.h"
#include "object_proto.h"
#include "object_builder.h"
#include "sym.h"
#include "ptr_tag.h"
#include "spawn.h"

GLOBAL_SYM(to_s);
GLOBAL_SYM(clone);
GLOBAL_SYM(spwn);
GLOBAL_SYM(class);

static METHOD(closure, to_s);
static METHOD(closure, clone);
static METHOD(closure, class);
static METHOD(closure, spwn);

static pthread_mutex_t closure_prototype_m = PTHREAD_MUTEX_INITIALIZER;

static object_t closure_unliner(object_t ptr);

// -- prototype ----------------------------------------------------------------------
object_t closure_prototype() {
	static object_t prototype = 0;
	
	BEGIN_MUTEX_CACHE(prototype, closure_prototype_m);
		prototype = object_alloc(5, 0);
		object_set_delegate(prototype, object_prototype());

		REG_METHOD(prototype, closure, to_s);
		REG_METHOD(prototype, closure, clone);
		REG_METHOD(prototype, closure, class);		
		REG_METHOD(prototype, closure, spwn);		
		object_freeze(prototype);
	END_MUTEX_CACHE(prototype, closure_prototype_m);
	
	ptr_tag_reg_receiver(PTR_CLOSURE, prototype);
	ptr_tag_reg_unliner(PTR_CLOSURE, closure_unliner);
	
	return prototype;
}

void closure_init() {
	closure_prototype();
}

object_t closure_unliner(object_t ptr) {
	slot_method * fptr = closure_get_fptrC(ptr);
	return closure_object(fptr, 0);
}

// -- constructors -------------------------------------------------------------------
object_t closure_object_nocache(slot_method * fptr, int num_slots) {
	object_t object = object_alloc(num_slots, OBJ_CLOSURE|OBJ_METADATA);
	object_set_metadata(object, fptr);
	object_set_delegate(object, closure_prototype());
	
	return object;
}

object_t closure_object(slot_method * fptr, int num_slots) {
	object_t ret = 0;
	
	if (num_slots == 0 && likely(CLOSURE_CAN_INLINE(fptr))) {
		ret = PTR_TAG_ALIGNED(fptr, PTR_CLOSURE);
	}
	else {
		ret = closure_object_nocache(fptr, num_slots);
	}

	return ret;	
}

object_t closure_object_null(slot_method * fptr) {
	return closure_object(fptr, 0);
}

object_t closure_object_persistent(slot_method * fptr) {
	assert(fptr);
	
	object_t object = object_alloc(0, OBJ_CLOSURE|OBJ_METADATA|OBJ_PERSISTENT);
	object_set_metadata(object, fptr);
	object_set_delegate(object, closure_prototype());
	
	return object;
}

// placeholder, avoids recursion etc
// object_t closure_object_place(slot_method * fptr) {
// 	_DEBUG("closure_object_place %p\n", fptr);
// 	
// 	object_t object = object_alloc(0, OBJ_CLOSURE|OBJ_METADATA);
// 	object_set_delegate(object, closure_prototype());
// 	
// 	return object;
// }

// -- accessors ----------------------------------------------------------------------
void closure_set_fptrC(object_t obj, slot_method * fptr) {
	assert(PTR_TAG_ZERO(obj) && "can't reset inlined closure");
	
	object_set_metadata(obj, fptr);
}

slot_method * closure_get_fptrC(object_t obj) {
	slot_method * ret = 0;	// TODO: slot_method * --> slot_method by fixing typedef
	ptr_tag_t tag = PTR_TAG(obj);
	
	if (likely(tag == PTR_CLOSURE)) {
		ret = (slot_method *)PTR_TAG_VAL_ALIGNED(obj);
	}
	else {
		assert(object_get_type(obj) == OBJ_CLOSURE);
		ret = (slot_method *)object_get_metadata(obj);
	}
	
	return ret;
}

// TODO: kolla tests/borka.anita

// -- methods ------------------------------------------------------------------------
METHOD(closure, to_s) {
	char buf[128];
	sprintf(buf, "[closure: %p]", self);
	RET(string_object(buf));
}

METHOD(closure, clone) {
	RET(self);
}

METHOD(closure, class) {
	RET(string_object("closure"));
}

METHOD(closure, spwn) {
	RET(__t_spawn(self));
}
