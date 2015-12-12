/*
 * $Id: bool.h 1433 2010-05-10 15:21:36Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_BOOL_H_NJ6CW8Z8
#define LIBTHORN_BOOL_H_NJ6CW8Z8

#include "object.h"

#define TRUE 1
#define FALSE 0

void bool_init();
object_t bool_object(int value);
int bool_get_value(object_t self);	// used in comparisons

#endif /* end of include guard: LIBTHORN_BOOL_H_NJ6CW8Z8 */
