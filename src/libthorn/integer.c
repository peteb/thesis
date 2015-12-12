/*
 * $Id: integer.c 1457 2010-05-12 14:35:58Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#include <stdio.h>
#include <assert.h>
#include <pthread.h>
#include <stdint.h>

#include "integer.h"
#include "string.h"
#include "bool.h"
#include "array.h"
#include "object_proto.h"
#include "object_builder.h"
#include "ptr_tag.h"

GLOBAL_SYM(to_s);
GLOBAL_SYM(class);
GLOBAL_SYM(clone);
GLOBAL_SYM(eq);
GLOBAL_SYM(neq);
GLOBAL_SYM(gt);
GLOBAL_SYM(lt);
GLOBAL_SYM(ge);
GLOBAL_SYM(le);
GLOBAL_SYM(add);
GLOBAL_SYM(sub);
GLOBAL_SYM(mul);
GLOBAL_SYM(div);
GLOBAL_SYM(rem);
GLOBAL_SYM(succ);

static METHOD(int, to_s);
static METHOD(int, class);
static METHOD(int, clone);
static METHOD(int, eq);
static METHOD(int, neq);
static METHOD(int, gt);
static METHOD(int, lt);
static METHOD(int, ge);
static METHOD(int, le);
static METHOD(int, add);
static METHOD(int, sub);
static METHOD(int, mul);
static METHOD(int, div);
static METHOD(int, rem);
static METHOD(int, succ);

#define INT_OP(name, ret, exec) METHOD_OP(int, name, ret, exec)
#define INT_BOOL_OP(name, exec) INT_OP(name, bool_object, exec)
#define INT_INT_OP(name, exec) INT_OP(name, int_object, exec)
#define INT_META(obj) int_value(obj)
// #define NUM_PRECACHED_OBJECTS 35

static pthread_mutex_t int_cache_m = PTHREAD_MUTEX_INITIALIZER;
// static object_t int_cached_objects[NUM_PRECACHED_OBJECTS];

static object_t int_object_nocache(long value);
static object_t int_unliner(object_t ptr);

// -- prototype ----------------------------------------------------------------------
object_t int_prototype() {
	static object_t prototype = 0;
	
	BEGIN_MUTEX_CACHE(prototype, int_cache_m);
		prototype = object_alloc(15, 0);
		object_set_delegate(prototype, object_prototype());
		
		REG_METHOD(prototype, int, to_s);
		REG_METHOD(prototype, int, class);
		// REG_METHOD(prototype, int, clone);
		REG_METHOD(prototype, int, lt);
		REG_METHOD(prototype, int, le);
		REG_METHOD(prototype, int, gt);
		REG_METHOD(prototype, int, ge);
		REG_METHOD(prototype, int, eq);
		REG_METHOD(prototype, int, neq);
		REG_METHOD(prototype, int, add);
		REG_METHOD(prototype, int, sub);
		REG_METHOD(prototype, int, mul);
		REG_METHOD(prototype, int, div);
		REG_METHOD(prototype, int, rem);
		REG_METHOD(prototype, int, succ);
		object_freeze(prototype);
	END_MUTEX_CACHE(prototype, int_cache_m);

	ptr_tag_reg_receiver(PTR_INT, prototype);
	ptr_tag_reg_unliner(PTR_INT, int_unliner);
	
	return prototype;
}

void int_init() {
	int_prototype();
}

object_t int_unliner(object_t ptr) {
	long val = int_value(ptr);
	return int_object_nocache(val);
}

// -- constructors -------------------------------------------------------------------
object_t int_object(long value) {
	object_t ret;
	
	if (likely(INT_CAN_INLINE(value)))  // make sure we won't overwrite any upper bits 
		ret = PTR_TAG_SHIFTED(value, PTR_INT);
	else
		ret = int_object_nocache(value);
	
	return ret;
}

object_t int_object_nocache(long value) {
	object_t obj = object_alloc(0, OBJ_INTEGER|OBJ_METADATA);
	object_set_metadata(obj, (void *)value);
	object_set_delegate(obj, int_prototype());
	
	return obj;
}

// -- accessors ----------------------------------------------------------------------
long int_value(object_t obj) {
	long ret;
	ptr_tag_t tag = PTR_TAG(obj);
	
	if (likely(tag != OBJ_EMPTY))
		ret = PTR_TAG_VAL_SHIFTED(obj);
	else
		ret = (long)object_get_metadata(obj);

	return ret;
}

// -- methods ------------------------------------------------------------------------
METHOD(int, to_s) {
	long value = int_value(self);
	char buffer[64] = {0};
	snprintf(buffer, 64, "%ld", value);

	RET(string_object(buffer));	
}

METHOD(int, class) {
	RET(string_object("int"));
}

METHOD(int, clone) {
	// long self_value = int_value(self);
	// object_t ret = int_object_nocache(self_value);
	RET(self);
}

METHOD(int, succ) {
	long value = int_value(self);
	RET(int_object(value + 1));
}

INT_BOOL_OP(lt, INT_META(self) < INT_META(other) );
INT_BOOL_OP(le, INT_META(self) <= INT_META(other) );
INT_BOOL_OP(gt, INT_META(self) > INT_META(other) );
INT_BOOL_OP(ge, INT_META(self) >= INT_META(other) );
INT_BOOL_OP(eq, (OBJ_TYPE(other) == OBJ_INTEGER && 
	(INT_META(self) == INT_META(other))) 
);
INT_BOOL_OP(neq, (OBJ_TYPE(other) == OBJ_INTEGER && 
	(INT_META(self) != INT_META(other))) 
);

INT_INT_OP(add, INT_META(self) + INT_META(other) );
INT_INT_OP(sub, INT_META(self) - INT_META(other) );
INT_INT_OP(mul, INT_META(self) * INT_META(other) );
INT_INT_OP(div, INT_META(self) / INT_META(other) );
INT_INT_OP(rem, INT_META(self) % INT_META(other) );
