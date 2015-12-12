/*
 * $Id: string.h 1030 2010-04-13 12:54:29Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_STRING_H_XASTRQ5
#define LIBTHORN_STRING_H_XASTRQ5

#include "object.h"

object_t string_object(const char * value);
object_t string_object_size(const char * value, unsigned siz);
object_t string_object_nocopy(char * value);
const char * string_cstrC(object_t self);

#endif /* end of include guard: LIBTHORN_STRING_H_XASTRQ5 */
