/*
 * $Id: string.c 1878 2010-07-07 14:34:47Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <pthread.h>

#include "string.h"
#include "null.h"
#include "bool.h"
#include "integer.h"
#include "object_builder.h"
#include "object_proto.h"
#include "memory.h"
#include "sym.h"
#include "range.h"

#ifndef MIN
#define MIN(X,Y) ((X) < (Y) ? (X) : (Y))
#endif

GLOBAL_SYM(print);
GLOBAL_SYM(apply);
GLOBAL_SYM(puts);
GLOBAL_SYM(to_s);
GLOBAL_SYM(to_i);
GLOBAL_SYM(class);
GLOBAL_SYM(add);
GLOBAL_SYM(clone);
GLOBAL_SYM(eq);
GLOBAL_SYM(neq);
GLOBAL_SYM(size);
GLOBAL_SYM(split);
GLOBAL_SYM(chomp);
GLOBAL_SYM(empty_q);

static METHOD(string, add);
static METHOD(string, apply);
static METHOD(string, eq);
static METHOD(string, neq);
static METHOD(string, print);
static METHOD(string, puts);
static METHOD(string, to_s);
static METHOD(string, to_i);
static METHOD(string, clone);
static METHOD(string, class);
static METHOD(string, size);
static METHOD(string, split);
static METHOD(string, chomp);
static METHOD_Q(string, empty);

static pthread_mutex_t string_prototype_m = PTHREAD_MUTEX_INITIALIZER;

// -- prototype ----------------------------------------------------------------------
object_t string_prototype() {
  static object_t prototype = 0;

  BEGIN_MUTEX_CACHE(prototype, string_prototype_m);
    prototype = object_alloc(14, 0);
    object_set_delegate(prototype, object_prototype());
    REG_METHOD(prototype, string, print);
    REG_METHOD(prototype, string, apply);
    REG_METHOD(prototype, string, puts);
    REG_METHOD(prototype, string, to_s);
    REG_METHOD(prototype, string, to_i);
    // REG_METHOD(prototype, string, clone);
    REG_METHOD(prototype, string, class);
    REG_METHOD(prototype, string, add);
    REG_METHOD(prototype, string, eq);
    REG_METHOD(prototype, string, neq);
    REG_METHOD(prototype, string, size);
    REG_METHOD(prototype, string, split);
    REG_METHOD(prototype, string, chomp);
    REG_METHOD(prototype, string, empty_q);
    object_freeze(prototype);
  END_MUTEX_CACHE(prototype, string_prototype_m);

  return prototype;
}

// -- constructors -------------------------------------------------------------------
object_t string_object(const char * value) {
  char * copy = MEM_ALLOC(strlen(value) + 1, ALLOC_BLOB);
  memcpy(copy, value, strlen(value) + 1);

  return string_object_nocopy(copy);
}

object_t string_object_size(const char * value, unsigned siz) {
  size_t min_size = MIN(siz, strlen(value));

  char * copy = MEM_ALLOC(min_size + 1, ALLOC_BLOB);
  memcpy(copy, value, min_size);
  copy[min_size] = '\0';

  return string_object_nocopy(copy);
}

object_t string_object_nocopy(char * value) {
  object_t obj = object_alloc(0, OBJ_STRING|OBJ_METADATA);
  object_set_metadata(obj, (void *)value);
  object_set_delegate(obj, string_prototype());

  return obj;
}

// -- accessors ----------------------------------------------------------------------
const char * string_cstrC(object_t obj) {
  assert(OBJ_TYPE(obj) == OBJ_STRING);
  // assert(sizeof(const char *) == sizeof(void *));

  return object_get_metadata(obj);
}

// -- methods ------------------------------------------------------------------------
METHOD(string, apply) {
  assert(OBJ_TYPE(self) == OBJ_STRING);

  if (object_get_type(ARG(0)) == OBJ_INTEGER) {
    const char * this_cstr = string_cstrC(self);
    assert(this_cstr);

    long size = strlen(this_cstr);
    int idx = int_value(ARG(0));
    assert(idx >= 0 && idx < size);

    char * new_buf = MEM_ALLOC(2, ALLOC_BLOB);
    new_buf[0] = this_cstr[idx];
    new_buf[1] = '\0';

    RET(string_object_nocopy(new_buf));
  }
  else {
    // index by range -> substr

    const char * cstr = string_cstrC(self);
    long size = strlen(cstr);

    long range_start, range_end;
    range_int_get(ARG(0), &range_start, &range_end);
    range_int_fix(&range_start, &range_end, 0, size);

    size_t length = ABS(range_end - range_start) + 1;
    char * buf = MEM_ALLOC(length + 1, ALLOC_BLOB);
    strncpy(buf, cstr + MIN(range_start, range_end), length);
    buf[length] = '\0';

    RET(string_object_nocopy(buf));
  }
}

METHOD(string, add) {
  assert(OBJ_TYPE(self) == OBJ_STRING);

  const char * this_cstr = string_cstrC(self);
  const char * other_cstr = string_cstrC(ARG(0));

  char * buf = MEM_ALLOC(strlen(this_cstr) + strlen(other_cstr) + 1, ALLOC_BLOB);
  memcpy(buf, this_cstr, strlen(this_cstr) + 1);
  strcat(buf, other_cstr);

  RET(string_object_nocopy(buf));
}

METHOD(string, to_s) {
  assert(OBJ_TYPE(self) == OBJ_STRING);
  RET(self);
}

METHOD(string, to_i) {
  assert(OBJ_TYPE(self) == OBJ_STRING);
  const char * str = string_cstrC(self);
  object_t ret = int_object(strtol(str, 0, 0));

  RET(ret);
}

METHOD(string, eq) {
  assert(OBJ_TYPE(self) == OBJ_STRING);

  object_t param = array_get_elementC(args, 0);
  assert(OBJ_VALID(param));

  if (OBJ_TYPE(param) != OBJ_STRING) {
    RET(bool_object(FALSE));
  }

  const char * s1 = object_get_metadata(self);
  const char * s2 = object_get_metadata(param);

  int cmp = strcmp(s1, s2);

  RET(bool_object(cmp == 0 ? TRUE : FALSE));
}

METHOD(string, neq) {
  object_t other = ARG(0);

  if (OBJ_TYPE(other) != OBJ_STRING) {
    RET(bool_object(TRUE));
  }
  else {
    const char * s1 = object_get_metadata(self);
    const char * s2 = object_get_metadata(other);

    int cmp = strcmp(s1, s2);

    RET(bool_object(cmp != 0 ? TRUE : FALSE));
  }
}

METHOD(string, print) {
  assert(OBJ_TYPE(self) == OBJ_STRING);
  const char * str = (const char *)object_get_metadata(self);
  printf("%s", str);

  RET(self); //null_object();
}

METHOD(string, puts) {
  assert(OBJ_TYPE(self) == OBJ_STRING);
  const char * str = (const char *)object_get_metadata(self);
  puts(str);
  RET(self); //null_object();
}

METHOD(string, clone) {
  // const char * self_str = string_cstrC(self);
  // object_t ret = string_object(self_str);	// TODO: will copy the string, not needed?
  RET(self);
}

METHOD(string, class) {
  RET(string_object("string"));
}

METHOD(string, size) {
  RET(int_object(strlen(string_cstrC(self))));
}

METHOD_Q(string, empty) {
  RET(bool_object(strlen(string_cstrC(self)) == 0));
}

METHOD(string, split) {
  const char * sep = "\r\n";
  const char * str = string_cstrC(self);
  assert(str);

  if (array_get_sizeC(args) > 0) {
    sep = string_cstrC(ARG(0));
  }

  int num_elements = 0;
  const char * pos = str;

  while (pos) {
    num_elements++;
    pos = strpbrk(pos, sep);
    if (pos)
      pos = pos + 1;
  }

  object_t array = array_object(num_elements);
  pos = str;
  int idx = 0;

  while (pos) {
    const char * next_pos = strpbrk(pos, sep);
    object_t element;

    if (next_pos) {
      element = string_object_size(pos, next_pos - pos);
      pos = next_pos + 1;
    }
    else {
      element = string_object(pos);
      pos = next_pos;
    }

    array_set_elementC(array, idx, element);
    idx++;
  }

  RET(array);
}

METHOD(string, chomp) {
  const char * self_str = string_cstrC(self);
  assert(self_str);

  size_t self_len = strlen(self_str);
  size_t chomped_len = self_len;

  if (self_len < 1) {
    RET(self);
  }

  if (array_get_sizeC(args) == 0) {
    if (self_str[self_len - 1] == '\n') {
      chomped_len--;

      if (self_len >= 2 && self_str[self_len - 2] == '\r') {
        chomped_len--;
      }
    }
    else if (self_str[self_len - 1] == '\r') {
      chomped_len--;
    }
  }
  else {
    object_t chomp_obj = ARG(0);
    const char * chomp_str = string_cstrC(chomp_obj);
    assert(chomp_str);
    size_t cstr_len = strlen(chomp_str);

    if (self_len >= strlen(chomp_str)) {
      if (strcmp(self_str + (self_len - cstr_len), chomp_str) == 0) {
        chomped_len -= cstr_len;
      }
    }
  }

  if (chomped_len == self_len) {
    RET(self);
  }
  else {
    RET(string_object_size(self_str, chomped_len));
  }
}
