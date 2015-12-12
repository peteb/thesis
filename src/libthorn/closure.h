/*
 * $Id: closure.h 1396 2010-05-07 16:01:18Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_CLOSURE_H_2O4Y2WKJ
#define LIBTHORN_CLOSURE_H_2O4Y2WKJ

#include "config.h"
#include "object.h"

#ifdef INLINE_OBJECTS
#define CLOSURE_CAN_INLINE(x) (PTR_TAG(x) == 0L)
#else
#define CLOSURE_CAN_INLINE(x) 0
#endif

void closure_init();
object_t closure_object(slot_method * fptr, int num_slots);
object_t closure_object_null(slot_method * fptr);
object_t closure_object_persistent(slot_method * fptr);
object_t closure_object_place(slot_method * fptr);
void closure_set_fptrC(object_t obj, slot_method * fptr);
slot_method * closure_get_fptrC(object_t obj);

#endif /* end of include guard: LIBTHORN_CLOSURE_H_2O4Y2WKJ */
