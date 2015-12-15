/*
 * $Id: array.h 865 2010-03-31 08:40:30Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#ifndef LIBTHORN_ARRAY_H_SDUY1YCO
#define LIBTHORN_ARRAY_H_SDUY1YCO

#include "object.h"

object_t array_object(int size);
object_t array_inplace(void *data, int size);
object_t array_get_elementC(object_t self, int index);
object_t array_set_elementC(object_t self, int index, object_t value);
unsigned array_get_sizeC(object_t self);

#endif /* end of include guard: LIBTHORN_ARRAY_H_SDUY1YCO */
