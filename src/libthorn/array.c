/*
 * $Id: array.c 1919 2010-08-02 00:56:31Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <pthread.h>

#include "array.h"
#include "string.h"
#include "null.h"
#include "integer.h"
#include "bool.h"
#include "memory.h"
#include "object_proto.h"
#include "object_builder.h"
#include "object.h"
#include "sym.h"
#include "range.h"
#include "callsite.h"

GLOBAL_SYM(at);
GLOBAL_SYM(to_s);
GLOBAL_SYM(apply);
GLOBAL_SYM(size);
GLOBAL_SYM(class);
GLOBAL_SYM(clone);
GLOBAL_SYM(each);
GLOBAL_SYM(each_with_index);
GLOBAL_SYM(inject);
GLOBAL_SYM(join);
GLOBAL_SYM(append);
GLOBAL_SYM(all_q);
GLOBAL_SYM(add);
GLOBAL_SYM(filter);
GLOBAL_SYM(map);
GLOBAL_SYM(eq);

static METHOD(array, at);
static METHOD(array, eq);
static METHOD(array, add);			// TODO
static METHOD(array, to_s);
static METHOD(array, apply);
static METHOD(array, size);
static METHOD(array, class);
static METHOD(array, clone);
static METHOD(array, each);
static METHOD(array, filter);
static METHOD(array, map);
static METHOD(array, each_with_index);
static METHOD(array, inject);
static METHOD(array, join);
static METHOD(array, append);
static METHOD_Q(array, all);

// TODO: array.map

static object_t array_prototype();
static object_t empty_array();

static object_t empty_c = 0;
static object_t prototype_c = 0;
static pthread_mutex_t array_cache_m = PTHREAD_MUTEX_INITIALIZER;

// -- prototype ----------------------------------------------------------------------
object_t array_prototype() {
  static object_t prototype = 0;

  BEGIN_MUTEX_CACHE(prototype, array_cache_m);
  prototype = object_alloc(14, 0);
  object_set_delegate(prototype, object_prototype());
  REG_METHOD(prototype, array, at);
  REG_METHOD(prototype, array, eq);
  REG_METHOD(prototype, array, to_s);
  REG_METHOD(prototype, array, apply);
  REG_METHOD(prototype, array, size);
  REG_METHOD(prototype, array, class);
  // REG_METHOD(prototype, array, clone);
  REG_METHOD(prototype, array, append);
  REG_METHOD(prototype, array, add);
  REG_METHOD(prototype, array, each);
  REG_METHOD(prototype, array, filter);
  REG_METHOD(prototype, array, map);
  REG_METHOD(prototype, array, each_with_index);
  REG_METHOD(prototype, array, inject);
  REG_METHOD(prototype, array, join);
  REG_METHOD(prototype, array, all_q);
  //	REG_METHOD_Q(prototype, array, all_q);
  object_freeze(prototype);
  END_MUTEX_CACHE(prototype, array_cache_m);

  return prototype;
}

// TODO: array.to_s som inte går buffer overflow
// TODO: kolla upp varför vi läcker så otroligt mycket minne i perf_array

// -- constructors -------------------------------------------------------------------
object_t array_object(int size) {
  object_t obj = 0;

  if (size == 0) {
    obj = empty_array();
  }
  else {
    void * data = MEM_ALLOC(sizeof(object_t) * (size + 1), 0);
    ((long *)data)[0] = size;

    obj = object_alloc(0, OBJ_ARRAY|OBJ_METADATA);
    object_set_metadata(obj, data);
    object_set_delegate(obj, array_prototype());
    unsigned i;

    for (i = 0; i < size; ++i) {
      array_set_elementC(obj, i, null_object());
    }
  }

  return obj;
}

object_t empty_array() {
  BEGIN_MUTEX_CACHE(empty_c, array_cache_m);
  void * data = MEM_ALLOC(sizeof(object_t), ALLOC_PERSISTENT);
  ((long *)data)[0] = 0;

  empty_c = object_alloc(0, OBJ_ARRAY|OBJ_METADATA|OBJ_PERSISTENT);
  object_set_metadata(empty_c, data);
  object_set_delegate(empty_c, array_prototype());
  END_MUTEX_CACHE(empty_c, array_cache_m);

  return empty_c;
}

// -- accessors ----------------------------------------------------------------------
object_t array_get_elementC(object_t self, int index) {
  void * data = object_get_metadata(self);
  // assert(data);
  long size = ((long *)data)[0];

  object_t ret = 0;
  if (index >= 0 && index < size)
    ret = ((object_t *)data)[index + 1];
  else
    ret = null_object();

  return ret;
}

object_t array_set_elementC(object_t self, int index, object_t value) {
  void * data = object_get_metadata(self);
  assert(data);

  int size = ((int *)data)[0];
  assert(index >= 0 && index < size && "index out of bounds");

  ((object_t *)data)[index + 1] = value;

  return value;
}

unsigned array_get_sizeC(object_t self) {
  // assert(OBJ_TYPE(self) == OBJ_ARRAY);

  void * data = object_get_metadata(self);
  // assert(data);

  return ((unsigned *)data)[0];
}

// -- methods ------------------------------------------------------------------------
METHOD(array, at) {
  // TODO: use ranges too
  object_t indexObject = array_get_elementC(args, 0);
  long index = int_value(indexObject);

  if (index < 0) index = array_get_sizeC(self) + index;

  RET(array_get_elementC(self, index));
}

METHOD(array, eq) {
  // TODO
  RET(bool_object(FALSE));
}

METHOD(array, to_s) {
  char buffer[1024] = {0};

  strcat(buffer, "[");

  unsigned size = array_get_sizeC(self);
  unsigned i;

  for (i = 0; i < size; ++i) {
    object_t element = array_get_elementC(self, i);

    object_t objstr;

    if (object_get_type(element) == OBJ_STRING)
      strcat(buffer, "\"");

    objstr = CALL_METHOD(element, to_s, null_object());
    strcat(buffer, string_cstrC(objstr));

    if (object_get_type(element) == OBJ_STRING)
      strcat(buffer, "\"");

    if (i < (size - 1))
      strcat(buffer, ", ");
  }

  strcat(buffer, "]");

  RET(string_object(buffer));
}

METHOD(array, apply) {
  if (OBJ_TYPE(ARG(0)) == OBJ_INTEGER) {
    // index by int -> element
    return array_at(self, closure, args);
  }
  else {
    // index by range -> array
    long size = array_get_sizeC(self);
    long start = int_value(range_get_startC(ARG(0)));
    long end = int_value(range_get_endC(ARG(0)));


    start = (start > -1 ? start : size + start);
    end = (end > -1 ? end : size + end);

    // printf("Size: %i (%i - %i)\n", ABS(end - start), start, end);

    if (start < 0 || start > size || end < 0 || end > size) {
      RET(array_object(0));
    }

    int diff = (end > start ? 1 : -1);
    end = end + diff;

    int osiz = ABS(end - start);

    object_t new_array = array_object(osiz);

    int idx = start;
    int odx = 0;

    end += diff;	// for inclusive range

    for (; idx != end; idx += diff) {
      if (idx >= 0 && idx < size && odx < osiz) {
        // printf("Setting %i from %i\n", odx, idx);

        object_t element = array_get_elementC(self, idx);
        array_set_elementC(new_array, odx, element);
        odx++;
      }
    }

    RET(new_array);
  }
}

METHOD(array, size) {
  int size = array_get_sizeC(self);

  RET(int_object(size));
}

METHOD(array, class) {
  RET(string_object("array"));
}

METHOD(array, clone) {
  if (array_get_sizeC(args) > 0) {

  }
  RET(self);

  // it's an immutable array, no need for cloning. but it's not, or this wouldn't
  // get called, so make it work.
  // TODO

#if 0
  unsigned self_size = array_get_sizeC(self);
  void * data = mem_alloc(sizeof(object_t) * (self_size + 1), 0, __FILE__, __LINE__);
  ((int *)data)[0] = self_size;

  object_t obj = object_alloc(OBJ_ARRAY|OBJ_METADATA);
  object_set_metadata(obj, data);
  object_set_delegate(obj, array_prototype());		// TODO: clone array_prototype?

  for (unsigned i = 0; i < self_size; ++i) {
    object_t element = array_get_elementC(self, i);
    ret_t clone_ret = object_exec(element, "clone", array_object(0));
    if (clone_ret.exception)
      THROW(clone_ret.exception);

    array_set_elementC(obj, i, clone_ret.val);
  }

  RET(obj);
#endif
}

METHOD(array, each) {
  object_t iter = ARG(0);

  unsigned size = array_get_sizeC(self);
  unsigned i;

  for (i = 0; i < size; ++i) {
    object_t element = array_get_elementC(self, i);
    object_t applyParams = array_object(1);
    array_set_elementC(applyParams, 0, element);

    ret_t ret = object_exec(iter, SYM(apply), applyParams);
  }

  RET(self);
}

METHOD(array, filter) {
  object_t iter = ARG(0);
  object_t buf[256];
  int buf_pos = 0;

  unsigned size = array_get_sizeC(self);
  unsigned i;

  for (i = 0; i < size; ++i) {
    object_t element = array_get_elementC(self, i);
    object_t applyParams = array_object(1);
    array_set_elementC(applyParams, 0, element);

    object_t filter_ret = CALL_METHOD(iter, apply, applyParams);

    if (bool_get_value(filter_ret)) {	// keep element..
      assert(buf_pos < 256 && "only 256 elements supported now...");
      buf[buf_pos++] = element;
    }
  }

  object_t result = array_object(buf_pos);
  for (; i < buf_pos; ++i) {
    array_set_elementC(result, i, buf[i]);
  }

  RET(result);
}

METHOD(array, map) {
  object_t new_array = array_object(array_get_sizeC(self));
  object_t iter = ARG(0);

  unsigned size = array_get_sizeC(self);
  unsigned i;

  for (i = 0; i < size; ++i) {
    object_t element = array_get_elementC(self, i);
    object_t applyParams = array_object(1);
    array_set_elementC(applyParams, 0, element);

    object_t mapped_val = CALL_METHOD(iter, apply, applyParams);
    array_set_elementC(new_array, i, mapped_val);
  }

  RET(new_array);
}

METHOD(array, join) {
  unsigned size = array_get_sizeC(self);
  object_t concat = string_object("");
  object_t combiner = 0;

  if (array_get_sizeC(args) > 0) {
    object_t param = ARG(0);
    combiner = CALL_METHOD(param, to_s, array_object(0));
  }

  unsigned i;
  for (i = 0; i < size; ++i) {
    object_t element = array_get_elementC(self, i);
    object_t to_s_ret = CALL_METHOD(element, to_s, array_object(0));

    object_t params = array_object(1);
    array_set_elementC(params, 0, to_s_ret);

    concat = CALL_METHOD(concat, add, params);

    if (combiner != 0 && i < (size - 1)) {
      array_set_elementC(params, 0, combiner);
      concat = CALL_METHOD(concat, add, params);
    }
  }

  RET(concat);
}

METHOD(array, each_with_index) {
  object_t iter = ARG(0);

  unsigned size = array_get_sizeC(self);
  object_t applyParams = array_object(2);
  unsigned i;

  for (i = 0; i < size; ++i) {
    object_t element = array_get_elementC(self, i);
    array_set_elementC(applyParams, 0, element);
    array_set_elementC(applyParams, 1, int_object(i));

    ret_t ret = object_exec(iter, SYM(apply), applyParams);
  }

  RET(self);
}

METHOD(array, inject) {
  // [first_val, fun]

  object_t iter = ARG(1);

  unsigned size = array_get_sizeC(self);
  object_t applyParams = array_object(2);

  object_t last_val = ARG(0);
  unsigned i;

  for (i = 0; i < size; ++i) {
    object_t element = array_get_elementC(self, i);
    array_set_elementC(applyParams, 0, element);
    array_set_elementC(applyParams, 1, last_val);

    last_val = CALL_METHOD(iter, apply, applyParams);
  }

  RET(last_val);
}

METHOD_Q(array, all) {
  object_t iter = ARG(0);

  unsigned size = array_get_sizeC(self);
  object_t applyParams = array_object(1);
  unsigned num_success = 0;
  unsigned i;

  for (i = 0; i < size; ++i) {
    object_t element = array_get_elementC(self, i);
    array_set_elementC(applyParams, 0, element);

    object_t ret = CALL_METHOD(iter, apply, applyParams);
    if (bool_get_value(ret))
      num_success++;
  }

  RET(bool_object(num_success == size));
}

METHOD(array, add) {
  return array_append(self, closure, args);
}

METHOD(array, append) {
  object_t element = ARG(0);

  unsigned self_size = array_get_sizeC(self);
  unsigned new_size = self_size + 1;

  void * data = MEM_ALLOC(sizeof(object_t) * (new_size + 1), 0);
  ((int *)data)[0] = new_size;

  object_t obj = object_alloc(0, OBJ_ARRAY|OBJ_METADATA);
  object_set_metadata(obj, data);
  object_set_delegate(obj, array_prototype());
  unsigned i;

  for (i = 0; i < self_size; ++i) {
    array_set_elementC(obj, i, array_get_elementC(self, i));
  }

  array_set_elementC(obj, self_size, element);

  RET(obj);
}
