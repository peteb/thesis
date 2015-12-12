/*
 * $Id: spawn.c 1554 2010-05-20 21:09:56Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#include "spawn.h"
#include "string.h"
#include "closure.h"
#include "array.h"
#include "proc.h"
#include "process.h"
#include "sym.h"
#include "object_builder.h"

#include <assert.h>
#include <pthread.h>
#include <stdio.h>
#include <signal.h>
#include <unistd.h>

#define GC_THREADS
#define GC_DEBUG
#include "gc.h"

GLOBAL_SYM(to_s);
GLOBAL_SYM(closure);

// TODO: klona alla upvalues

// *** alla objektcachar måste trådsäkras

// innan __t_spawn kallas, klona alla upvalues
//   det blir innan om man gör det i ast/closure ändå. objektet skapas innan
//   tråden skapas
// assigna upvalues till den klonade kopian

// *** mutering av object (set_slot, osv) måste vara trådsäkert
// clone måste vara trådsäkert
// --> Nej! behövs ju inte. clone körs innan en annan process delges
//     den adressen.

// TODO: inför ett stoppblock som man assignar lokal variabel som innehåller en klon
//				som skickats till annan proc
// TODO: analysera llvm-bc för att se om något behövs säkras upp

// returneringsvärdet är inte trådsäkert, kan ha skickats till andra trådar
// klona returneringsvärde
// eller jo.. om det skickas till annan tråd klonas det
// om tråden returnerar har den ju dött
// vad händer med apply?

static void sighan(int sig, siginfo_t * info, void * ctx) {
  printf("[proc %p signal: signal %i]\n", pthread_self(), sig);
  pthread_exit(string_object("sigpipe"));	// TODO: is this safe?
}

GLOBAL_SYM(inspect);

static void * __t_thread_start(object_t proc) {
  //assert(closure);
  // struct sigaction sa;
  //    sa.sa_flags = SA_SIGINFO;
  //    sa.sa_sigaction = sighan;
  //    sigemptyset(&sa.sa_mask);
  //    sigaction(SIGPIPE, &sa, NULL);


  _DEBUG("thread_start: %p\n", proc);

  object_t closure_obj = object_get_slot(proc, SYM(closure));
  assert(closure_obj);

  // object_exec(closure_obj, SYM(inspect), array_object(0));

  slot_method * fptr = closure_get_fptrC(closure_obj);
  assert(fptr);

  ret_t ret = fptr(proc, closure_obj, array_object(0));

#ifdef EH_MRV
  if (ret.exception) {
    ret_t exception_str = object_exec(ret.exception, SYM(to_s), array_object(0));

    if (exception_str.val) {
      const char * cstr = string_cstrC(exception_str.val);
      assert(cstr);

      printf("[%p error: %s]\n", pthread_self(), cstr);
    }
    else {
      printf("[%p error: unknown]\n", pthread_self());
    }
  }
#endif

  //	pthread_exit((void *)(ret.exception == 0));
  pthread_exit(RET_VAL(ret));
  return RET_VAL(ret);
}

void final(object_t obj, void * cd) {

  // printf("Finalizing %p\n", cd);
  // if (cd)
  // proc_destroy(cd);
}

object_t __t_spawn(object_t closure) {
  _DEBUG("spawn: %p\n", closure);
  assert(closure);

  pthread_t new_thread = 0;
  object_t obj = proc_object_place();
  object_set_slot(obj, SYM(closure), closure, 0);

  // closure slot is really just used in __t_thread_start
  // TODO: spawn with arguments. set slot 'args' in proc-object sent to thread

  proc_t * proc = proc_create(0, 20);	// slots for message queue
  object_set_metadata(obj, proc);

  pthread_mutex_lock(&proc->t_mutex);
  int result = pthread_create(&new_thread, 0, __t_thread_start, obj);
  assert(!result && new_thread && "failed to create thread");
  proc->thread = new_thread;
  pthread_mutex_unlock(&proc->t_mutex);
  // //GC_register_finalizer(proc, final, 0, 0, 0);
  //
  // assert(result == 0);


  return obj;
}
