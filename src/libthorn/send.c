/*
 * $Id: send.c 1458 2010-05-12 15:53:07Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#include <assert.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "object_builder.h"
#include "send.h"
#include "array.h"
#include "sym.h"
#include "ptr_tag.h"
#include "string.h"

GLOBAL_SYM(write);
GLOBAL_SYM(inspect);
GLOBAL_SYM(to_s);

object_t __t_send(object_t target, object_t value) {
  _DEBUG("send: %p to %p\n", value, target);

  object_t boxed_value = value;
  object_t params = array_object(1);

  array_set_elementC(params, 0, boxed_value);
  ret_t ret = object_exec(target, SYM(write), params);

  if (RET_EXC(ret)) {
    object_exec(RET_EXC(ret), SYM(inspect), array_object(0));
    ret_t to_s_ret = object_exec(RET_EXC(ret), SYM(to_s), array_object(0));
    printf("[error in send: \"%s\"]\n", string_cstrC(RET_VAL(to_s_ret)));
    abort();
  }

  return RET_VAL(ret);
}
