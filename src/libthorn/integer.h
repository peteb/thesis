/*
 * $Id: integer.h 1363 2010-05-06 12:57:24Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_INTEGER_H_QAJALF4B
#define LIBTHORN_INTEGER_H_QAJALF4B

#include "config.h"
#include "object.h"

#ifdef INLINE_OBJECTS
#define INT_CAN_INLINE(x) (PTR_UPPER_TAG(x) == 0L)
#else
#define INT_CAN_INLINE(x) 0
#endif

#define INT_BITS (sizeof(long)*8)

object_t int_object(long value);
long int_value(object_t obj);
void int_init();

#endif /* end of include guard: LIBTHORN_INTEGER_H_QAJALF4B */
