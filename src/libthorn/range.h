/*
 * $Id: range.h 1878 2010-07-07 14:34:47Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_RANGE_H_M5WOPNEL
#define LIBTHORN_RANGE_H_M5WOPNEL

#include "object.h"
   
object_t range_create(object_t start, object_t end);
object_t range_get_startC(object_t obj);
object_t range_get_endC(object_t obj);

void range_int_fix(long * start, long * end, size_t min, size_t max);
void range_int_get(object_t range, long * start, long * end);

#endif /* end of include guard: LIBTHORN_RANGE_H_M5WOPNEL */
