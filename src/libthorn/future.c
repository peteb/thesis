/*
 * $Id: future.c 1919 2010-08-02 00:56:31Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#include <assert.h>
#include <pthread.h>
#include <stdint.h>
#include <stdio.h>

#include "future.h"
#include "bool.h"
#include "string.h"
#include "object_proto.h"
#include "object_builder.h"
#include "ptr_tag.h"
#include "callsite.h"

GLOBAL_SYM(class);
GLOBAL_SYM(respond);
GLOBAL_SYM(wait);
GLOBAL_SYM(ready_q);
GLOBAL_SYM(clone);
GLOBAL_SYM(__mbox);

static METHOD(future, class);
static METHOD(future, respond);
static METHOD(future, wait);
static METHOD(future, ready_q);

static pthread_mutex_t future_prototype_m = PTHREAD_MUTEX_INITIALIZER;

// -- prototype ----------------------------------------------------------------------
object_t future_prototype() {
  static object_t prototype = 0;

  BEGIN_MUTEX_CACHE(prototype, future_prototype_m);
  prototype = object_alloc(3, 0);
  object_set_delegate(prototype, object_prototype());

  REG_METHOD(prototype, future, wait);
  REG_METHOD(prototype, future, class);
  REG_METHOD(prototype, future, ready_q);
  object_freeze(prototype);
  END_MUTEX_CACHE(prototype, future_prototype_m);

  return prototype;
}

// -- constructors -------------------------------------------------------------------
object_t future_create(msg_queue_t * queue) {
  object_t obj = object_alloc(1, OBJ_EMPTY|OBJ_METADATA);
  object_set_slot(obj, SYM(__mbox), queue, SLOT_METADATA);
  object_set_delegate(obj, future_prototype());

  return obj;
}

// -- accessors ----------------------------------------------------------------------
void future_extend_msgobj(object_t obj) {
  REG_METHOD(obj, future, respond);
}

// -- methods ------------------------------------------------------------------------
METHOD(future, class) {
  RET(string_object("future"));
}

METHOD(future, respond) {
  _DEBUG("future.respond %p\n", ARG(0));
  object_t cloned_message = 0;

  if (PTR_TAG_ZERO(ARG(0))) {
    cloned_message = CALL_METHOD(ARG(0), clone, array_object(0));
    assert(cloned_message);
  }
  else {
    cloned_message = ptr_unline(ARG(0)); // apparently it's faster if we unline. WHY?
  }

  msg_queue_t * future_mbox = object_get_slot(self, SYM(__mbox));
  assert(future_mbox);

  msg_queue_push(future_mbox, cloned_message);
  RET(ARG(0));
}

METHOD(future, wait) {
  msg_queue_t * future_mbox = object_get_slot(self, SYM(__mbox));
  assert(future_mbox);

  object_t ret = msg_queue_pop(future_mbox);

  RET(ret);
}

METHOD_Q(future, ready) {
  msg_queue_t * future_mbox = object_get_slot(self, SYM(__mbox));
  assert(future_mbox);

  int empty = msg_queue_empty(future_mbox);

  RET(bool_object(!empty));
}
