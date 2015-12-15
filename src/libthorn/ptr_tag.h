/*
 * $Id: ptr_tag.h 1457 2010-05-12 14:35:58Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#ifndef LIBTHORN_PTR_TAG_H_J3R4XRAH
#define LIBTHORN_PTR_TAG_H_J3R4XRAH

#include "object.h"

typedef unsigned int ptr_tag_t;

typedef object_t(*ptr_unliner)(object_t);

#define PTR_ZERO     0
#define PTR_INT      OBJ_INTEGER
#define PTR_CLOSURE  OBJ_CLOSURE
#define PTR_BOOL     OBJ_BOOL
#define PTR_ARRAY    OBJ_ARRAY

// PTR_SYMBOL? OBJ_SYMBOL??

#define PTR_TAG_BITS              4L
#define PTR_TAG_MAX               ((1L << PTR_TAG_BITS) - 1L)
#define PTR_TAG(ptr)              (ptr_tag_t)((uintptr_t)(ptr) & PTR_TAG_MAX)
#define PTR_TAG_VAL_SHIFTED(ptr)  ((uintptr_t)(ptr) >> PTR_TAG_BITS)
#define PTR_TAG_VAL_ALIGNED(ptr)  ((uintptr_t)(ptr) & ~PTR_TAG_MAX)
#define PTR_TAG_SHIFTED(val, tag)     \
   (object_t)(((val) << PTR_TAG_BITS) | ((tag) & PTR_TAG_MAX))
#define PTR_TAG_ALIGNED(ptr, tag)     \
   (object_t)(((uintptr_t)(ptr) & ~PTR_TAG_BITS) | ((tag) & PTR_TAG_MAX))
#define PTR_TAG_ZERO(ptr) (((uintptr_t)(ptr) & PTR_TAG_MAX) == 0L)
#define PTR_UPPER_TAG(ptr)            \
   ( (((long)(ptr)) >> ((sizeof(uintptr_t)*8) - PTR_TAG_BITS) ) & PTR_TAG_MAX)

#ifdef INLINE_OBJECTS
#define CAN_INLINE(x) (PTR_UPPER_TAG(x) == 0L)
#else
#define CAN_INLINE(x) 0
#endif

void        ptr_tag_reg_receiver(ptr_tag_t t_id, object_t t_obj);
object_t    ptr_tag_get_receiver(ptr_tag_t t_id);
void        ptr_tag_reg_unliner(ptr_tag_t t_id, ptr_unliner fptr);
ptr_unliner ptr_tag_get_unliner(ptr_tag_t t_id);
object_t    ptr_unline(object_t obj);

#endif /* end of include guard: LIBTHORN_PTR_TAG_H_J3R4XRAH */
