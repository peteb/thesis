/*
 * $Id: null.c 1457 2010-05-12 14:35:58Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#include <assert.h>
#include <pthread.h>

#include "null.h"
#include "string.h"
#include "bool.h"
#include "array.h"
#include "object_proto.h"
#include "object_builder.h"
#include "sym.h"

GLOBAL_SYM(to_s);
GLOBAL_SYM(class);
GLOBAL_SYM(clone);
GLOBAL_SYM(neq);
GLOBAL_SYM(eq);

static METHOD(null, to_s);
static METHOD(null, class);
static METHOD(null, clone);
static METHOD(null, eq);
static METHOD(null, neq);
static METHOD(null, wrapped);

static pthread_mutex_t null_cache_m = PTHREAD_MUTEX_INITIALIZER;
static pthread_mutex_t wrapped_cache_m = PTHREAD_MUTEX_INITIALIZER;

static object_t cached_null = 0;

// -- constructors -------------------------------------------------------------------
object_t null_object() {
  return cached_null;
}

object_t wrapped_null_object() {
  static object_t cached_wrap = 0;

  BEGIN_MUTEX_CACHE(cached_wrap, wrapped_cache_m);
  cached_wrap = closure_object(null_wrapped, 0);
  END_MUTEX_CACHE(cached_wrap, wrapped_cache_m);

  return cached_wrap;
}

void null_init() {
  BEGIN_MUTEX_CACHE(cached_null, null_cache_m);
  cached_null = object_alloc(5, OBJ_NULL);
  object_set_delegate(cached_null, object_prototype());
  REG_METHOD(cached_null, null, to_s);
  REG_METHOD(cached_null, null, class);
  // REG_METHOD(cached_null, null, clone);
  REG_METHOD(cached_null, null, neq);
  REG_METHOD(cached_null, null, eq);
  object_freeze(cached_null);
  END_MUTEX_CACHE(cached_null, null_cache_m);
}

// -- methods ------------------------------------------------------------------------
METHOD(null, to_s) {
  RET(string_object("null"));
}

METHOD(null, wrapped) {
  RET(null_object());
}

METHOD(null, class) {
  RET(string_object("null"));
}

METHOD(null, clone) {
  RET(self);
}

METHOD(null, eq) {
  object_t other = ARG(0);
  RET(bool_object(self == other));
}

METHOD(null, neq) {
  object_t other = ARG(0);
  RET(bool_object(self != other));
}
