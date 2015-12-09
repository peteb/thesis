/*
 * $Id: float.c 1373 2010-05-06 15:50:47Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include <stdio.h>
#include <assert.h>

#include "float.h"
#include "string.h"
#include "closure.h"
#include "object_builder.h"

GLOBAL_SYM(to_s);
GLOBAL_SYM(class);

static METHOD(float, to_s);
static METHOD(float, class);

object_t float_object(float value) {
	object_t obj = object_alloc(2, OBJ_FLOAT|OBJ_METADATA);
	object_set_metadata(obj, *(void **)&value);
	REG_METHOD(obj, float, to_s);
	REG_METHOD(obj, float, class);
	
	return obj;
}

METHOD(float, to_s) {
	assert(OBJ_TYPE(self) == OBJ_FLOAT);
	
	void * vval = object_get_metadata(self);
	float value = *(float*)&vval;
	char buffer[32];
	sprintf(buffer, "%f", value);
	
	RET(string_object(buffer));
}

METHOD(float, class) {
	RET(string_object("float"));
}