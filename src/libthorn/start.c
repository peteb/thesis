/*
 * $Id: start.c 1393 2010-05-07 12:25:01Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#define GC_THREADS

#include <gc/gc.h>
#include <stdio.h>
#include <assert.h>
#include <pthread.h>
#include <signal.h>

#include "config.h"
#include "array.h"
#include "string.h"
#include "object.h"
#include "memory.h"
#include "sym.h"

GLOBAL_SYM(main);
GLOBAL_SYM(to_s);

static object_t create_args(int argc, char ** argv);
static void __t_exit();

void __t_init() {
  // atexit(__t_exit);
  assert(mem_init() && "failed to initialize memory management");


  sigset_t signal_mask;
  sigemptyset(&signal_mask);
  sigaddset(&signal_mask, SIGPIPE);
  if (pthread_sigmask(SIG_BLOCK, &signal_mask, NULL) != 0) {
    _DEBUG("failed to set sigmask for pthreads");
  }

  _DEBUG("runtime initialized\n");
}

int __t_start(int argc, char ** argv, object_t lobby) {
  object_t args = create_args(argc, argv);
  printf("[tool entry: " SYM_FMT "]\n", SYM(main));
  ret_t ret = object_exec(lobby, SYM(main), args);

#ifdef EH_MRV
  printf("[tool return: %p exception: %p]\n", ret.val, ret.exception);

  if (ret.exception) {
    ret_t exception_str = object_exec(ret.exception, SYM(to_s), array_object(0));

    if (exception_str.val) {
      const char * cstr = string_cstrC(exception_str.val);
      assert(cstr);

      printf("[tool error: %s]\n", cstr);
    }
    else {
      printf("[tool error: unkown %p]\n", ret.exception);
    }

    // __t_exit();
    abort();		// won't call atexits
    unreachable;
  }
#else
  // printf("[tool return: %p]\n", RET_VAL(ret));
  // ...
#endif

  __t_exit();
  // unreachable;

  return 0;
}

object_t create_args(int argc, char ** argv) {
  object_t args = array_object(argc);
  unsigned i;

  for (i = 0; i < argc; ++i) {
    object_t argstr = string_object(argv[i]);
    array_set_elementC(args, i, argstr);
  }

  return args;
}

void __t_exit() {
  _DEBUG("runtime says bye\n");
  assert(mem_shutdown());
  // pthread_exit(0);		// wait for all threads to quit
}
