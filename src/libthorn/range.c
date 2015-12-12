/*
 * $Id: range.c 1878 2010-07-07 14:34:47Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#include <assert.h>
#include <pthread.h>

#include "range.h"
#include "string.h"
#include "array.h"
#include "bool.h"
#include "object_builder.h"
#include "object_proto.h"
#include "sym.h"
#include "config.h"
#include "integer.h"

GLOBAL_SYM(apply);
GLOBAL_SYM(eq);
GLOBAL_SYM(succ);
GLOBAL_SYM(each);
GLOBAL_SYM(__start);
GLOBAL_SYM(__end);

static METHOD(range, each);

static pthread_mutex_t range_prototype_m = PTHREAD_MUTEX_INITIALIZER;

// -- prototype ----------------------------------------------------------------------
static object_t range_prototype() {
  static object_t prototype = 0;

  BEGIN_MUTEX_CACHE(prototype, range_prototype_m);
    prototype = object_alloc(1, 0);
    object_set_delegate(prototype, object_prototype());
    REG_METHOD(prototype, range, each);
    object_freeze(prototype);
  END_MUTEX_CACHE(prototype, range_prototype_m);

  return prototype;
}

// -- constructors -------------------------------------------------------------------
object_t range_create(object_t start, object_t end) {
  object_t range = object_alloc(2, OBJ_EMPTY);
  object_set_slot(range, SYM(__start), start, 0);
  object_set_slot(range, SYM(__end), end, 0);
  object_set_delegate(range, range_prototype());

  return range;
}

// -- accessors ----------------------------------------------------------------------
object_t range_get_startC(object_t obj) {
  return object_get_slot(obj, SYM(__start));
}

object_t range_get_endC(object_t obj) {
  return object_get_slot(obj, SYM(__end));
}

void range_int_fix(long * start, long * end, size_t min, size_t max) {
  if (*start < 0)
    *start += max;

  if (*end < 0)
    *end += max;

  *start = CLAMP(*start, min, max);
  *end = CLAMP(*end, min, max);
}

void range_int_get(object_t range, long * start, long * end) {
  object_t range_start = range_get_startC(range);
  object_t range_end = range_get_endC(range);

  *start = int_value(range_start);
  *end = int_value(range_end);
}

// -- methods ------------------------------------------------------------------------
METHOD(range, each) {
  object_t fun = ARG(0);
  object_t element = object_get_slot(self, SYM(__start));
  object_t end = object_get_slot(self, SYM(__end));
  assert(element);


  while (1) {
    object_t applyParams = array_object(1);
    array_set_elementC(applyParams, 0, element);

    object_t fun_ret;
    CALL(fun_ret, object_exec(fun, SYM(apply), applyParams));

    // check against end
    object_t eq_ret;
    object_t eqParams = array_object(1);
    array_set_elementC(eqParams, 0, end);
    CALL(eq_ret, object_exec(element, SYM(eq), eqParams));

    if (bool_get_value(eq_ret))
      break;

    // go to successor
    object_t succ_ret;
    CALL(succ_ret, object_exec(element, SYM(succ), array_object(0)));

    element = succ_ret;
  }

  RET(element);
}
