/*
 * $Id: data.c 1432 2010-05-10 14:08:19Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#include <pthread.h>
#include <assert.h>

#include "data.h"
#include "object.h"
#include "object_builder.h"
#include "object_proto.h"
#include "string.h"
#include "memory.h"
#include "integer.h"

GLOBAL_SYM(class);
GLOBAL_SYM(size);
GLOBAL_SYM(to_s);
GLOBAL_SYM(add);

static METHOD(data, class);
static METHOD(data, size);
static METHOD(data, to_s);
static METHOD(data, add);

static pthread_mutex_t data_prototype_m = PTHREAD_MUTEX_INITIALIZER;

// -- prototype ----------------------------------------------------------------------
object_t data_prototype() {
  static object_t prototype = 0;

  BEGIN_MUTEX_CACHE(prototype, data_prototype_m);
    prototype = object_alloc(4, 0);
    object_set_delegate(prototype, object_prototype());

    REG_METHOD(prototype, data, class);
    REG_METHOD(prototype, data, size);
    REG_METHOD(prototype, data, to_s);
    REG_METHOD(prototype, data, add);
    object_freeze(prototype);
  END_MUTEX_CACHE(prototype, data_prototype_m);

  return prototype;
}

// -- constructors -------------------------------------------------------------------
object_t data_object_nocopy(int size, void * data) {
  data_t * bytes = MEM_ALLOC(sizeof(data_t), 0);
  bytes->data = data;
  bytes->size = size;

  object_t obj = object_alloc(0, OBJ_EMPTY|OBJ_METADATA);
  object_set_metadata(obj, bytes);
  object_set_delegate(obj, data_prototype());

  return obj;
}

// -- accessors ----------------------------------------------------------------------
data_t * data_get_bytesC(object_t obj) {
  assert(OBJ_VALID(obj));

  return (data_t *)object_get_metadata(obj);
}

// -- methods ------------------------------------------------------------------------
METHOD(data, class) {
  RET(string_object("data"));
}

METHOD(data, size) {
  data_t * data = data_get_bytesC(self);
  RET(int_object(data->size));
}

METHOD(data, to_s) {
  data_t * data = data_get_bytesC(self);
  char * buf = MEM_ALLOC(data->size + 1, ALLOC_BLOB);
  memcpy(buf, data->data, data->size);
  buf[data->size] = 0;

  RET(string_object_nocopy(buf));
}

METHOD(data, add) {
  data_t * self_data = data_get_bytesC(self);
  data_t * other_data = data_get_bytesC(ARG(0));

  size_t sum_size = self_data->size + other_data->size;

  char * buf = MEM_ALLOC(sum_size, ALLOC_BLOB);
  memcpy(buf, self_data, self_data->size);
  memcpy(buf + self_data->size, other_data, other_data->size);

  RET(data_object_nocopy(sum_size, buf));
}
