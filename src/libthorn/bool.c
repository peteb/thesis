/*
 * $Id: bool.c 1457 2010-05-12 14:35:58Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#include <assert.h>
#include <pthread.h>
#include <stdint.h>

#include "bool.h"
#include "string.h"
#include "array.h"
#include "object_proto.h"
#include "object_builder.h"
#include "ptr_tag.h"

#define BOOL_OP(name, ret, exec) METHOD_OP(bool, name, ret, exec)
#define BOOL_BOOL_OP(name, exec) BOOL_OP(name, bool_object, exec)

GLOBAL_SYM(to_s);
GLOBAL_SYM(class);
GLOBAL_SYM(clone);
GLOBAL_SYM(andand);
GLOBAL_SYM(oror);
GLOBAL_SYM(not);
GLOBAL_SYM(eq);
GLOBAL_SYM(neq);

static METHOD(bool, to_s);
static METHOD(bool, class);
static METHOD(bool, clone);
static METHOD(bool, andand);
static METHOD(bool, oror);
static METHOD(bool, not);
static METHOD(bool, eq);
static METHOD(bool, neq);

static object_t bool_true();
static object_t bool_false();

static pthread_mutex_t bool_cache_m = PTHREAD_MUTEX_INITIALIZER;
static object_t cached_true = 0;
static object_t cached_false = 0;

// -- prototype ----------------------------------------------------------------------
object_t bool_prototype() {
  // Warning: not thread-safe, always call through bool_true or bool_false
  static object_t prototype = 0;

  if (!prototype) {
    prototype = object_alloc(8, 0);
    object_set_delegate(prototype, object_prototype());

    // TODO: REG_METHOD_N, för persistent
    REG_METHOD(prototype, bool, to_s);
    REG_METHOD(prototype, bool, class);
    // REG_METHOD(prototype, bool, clone);
    REG_METHOD(prototype, bool, andand);
    REG_METHOD(prototype, bool, oror);
    REG_METHOD(prototype, bool, not);
    REG_METHOD(prototype, bool, eq);
    REG_METHOD(prototype, bool, neq);
    object_freeze(prototype);
  }

  return prototype;
}

// -- constructors -------------------------------------------------------------------
object_t bool_object(int value) {
  return (value ? bool_true() : bool_false());
}

object_t bool_true() {
  return cached_true;
}

object_t bool_false() {
  return cached_false;
}

void bool_init() {
  // BEGIN_MUTEX_CACHE(cached_true, bool_cache_m);
  //  cached_true = object_alloc(0, OBJ_BOOL|OBJ_METADATA|OBJ_PERSISTENT);
  //  object_set_metadata(cached_true, (void *)TRUE);
  //  object_set_delegate(cached_true, bool_prototype());
  // END_MUTEX_CACHE(cached_true, bool_cache_m);
  //
  // BEGIN_MUTEX_CACHE(cached_false, bool_cache_m);
  //  cached_false = object_alloc(0, OBJ_BOOL|OBJ_METADATA|OBJ_PERSISTENT);
  //  object_set_metadata(cached_false, (void *)FALSE);
  //  object_set_delegate(cached_false, bool_prototype());
  // END_MUTEX_CACHE(cached_false, bool_cache_m);

  object_t prototype = bool_prototype();
  ptr_tag_reg_receiver(PTR_BOOL, prototype);

  cached_true = PTR_TAG_SHIFTED(TRUE, PTR_BOOL);
  cached_false = PTR_TAG_SHIFTED(FALSE, PTR_BOOL);
}

// bool_get_value: used in ifs and whiles, etc. checks whether a value should be
//                 treated as true or false
// TODO: __t_as_bool
int bool_get_value(object_t self) {
  if (likely(PTR_TAG(self) == PTR_BOOL)) {
    return PTR_TAG_VAL_ALIGNED(self);     // no shifting is necessary
  }

  if (unlikely(OBJ_TYPE(self) == OBJ_NULL)) return 0;
  //assert(OBJ_TYPE(self) == OBJ_BOOL);

  return (int)object_get_metadata(self) != 0; // TODO: detta är väl inte safe
}

// -- methods ------------------------------------------------------------------------
METHOD(bool, to_s) {
  //assert(OBJ_TYPE(self) == OBJ_BOOL);
  int value = bool_get_value(self);
  RET((value ? string_object("true") : string_object("false")));
}

METHOD(bool, class) {
  RET(string_object("bool"));
}

METHOD(bool, clone) {
  RET(self);
}

METHOD(bool, not) {
  int value = bool_get_value(self);
  RET(bool_object(!value));
}

METHOD(bool, eq) {
  object_t other = ARG(0);
  object_t ret = 0;

  if (OBJ_TYPE(other) != OBJ_BOOL) {
    ret = bool_object(FALSE);
  }
  else {
    int value = bool_get_value(self);
    int other_value = bool_get_value(other);
    ret = bool_object(value == other_value);
  }

  RET(ret);
}

METHOD(bool, neq) {
  object_t other = ARG(0);
  int value = bool_get_value(self);
  int other_value = bool_get_value(other);
  RET(bool_object(value != other_value));
}

BOOL_BOOL_OP(andand, bool_get_value(self) && bool_get_value(other) );
BOOL_BOOL_OP(oror, bool_get_value(self) || bool_get_value(other) );
