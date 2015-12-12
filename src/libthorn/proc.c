/*
 * $Id: proc.c 1919 2010-08-02 00:56:31Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#include <assert.h>
#include <stdio.h>
#include <unistd.h>
#include <pthread.h>

#include "proc.h"
#include "string.h"
#include "bool.h"
#include "array.h"
#include "process.h"
#include "msg_queue.h"
#include "future.h"
#include "object_builder.h"
#include "object_proto.h"
#include "sym.h"
#include "integer.h"
#include "callsite.h"

GLOBAL_SYM(clone);
GLOBAL_SYM(to_s);
GLOBAL_SYM(class);
GLOBAL_SYM(wait);
GLOBAL_SYM(write);
GLOBAL_SYM(read);
GLOBAL_SYM(sleep);
GLOBAL_SYM(__mbox);

static METHOD(proc, to_s);
static METHOD(proc, class);
static METHOD(proc, wait);
static METHOD(proc, write);
static METHOD(proc, read);
static METHOD(proc, sleep);

static void proc_finalizer(object_t obj);

static pthread_mutex_t proc_prototype_m = PTHREAD_MUTEX_INITIALIZER;
static object_t cached_prototype = 0;

// -- prototype ----------------------------------------------------------------------
object_t proc_prototype() {
	return cached_prototype;
}

static void final(object_t obj, void * cd);

// -- constructors -------------------------------------------------------------------
object_t proc_object(void * thread) {
	assert(thread);
	
	proc_t * proc = proc_create(thread, 1);
	
	object_t object = object_alloc(1, OBJ_PROC|OBJ_METADATA);
	object_set_metadata(object, proc);
	object_set_delegate(object, proc_prototype());
//	object_set_finalizer(object, proc_finalizer);
	// mem_set_finalizer(object, final, proc);	
	
	return object;
}

object_t proc_object_place() {
	object_t object = object_alloc(1, OBJ_PROC|OBJ_METADATA);
	object_set_delegate(object, proc_prototype());
	//object_set_finalizer(object, proc_finalizer);
	// mem_set_finalizer(object, final, 0);
	return object;
}

void proc_init() {
	BEGIN_MUTEX_CACHE(cached_prototype, proc_prototype_m);
		cached_prototype = object_alloc(6, 0);
		object_set_delegate(cached_prototype, object_prototype());
		REG_METHOD(cached_prototype, proc, class);
		REG_METHOD(cached_prototype, proc, to_s);
		REG_METHOD(cached_prototype, proc, wait);
		REG_METHOD(cached_prototype, proc, write);
		REG_METHOD(cached_prototype, proc, read);
		REG_METHOD(cached_prototype, proc, sleep);
		object_freeze(cached_prototype);
	END_MUTEX_CACHE(cached_prototype, proc_prototype_m);	
}

// -- methods ------------------------------------------------------------------------
METHOD(proc, to_s) {
	char buffer[32];
	//struct proc_t * proc = object_get_metadata(self);
	
	sprintf(buffer, "[Process: %p]", self);

	RET(string_object(buffer));	
}

METHOD(proc, class) {
	RET(string_object("proc"));
}

METHOD(proc, wait) {
	proc_t * proc = object_get_metadata(self);
	assert(proc);
	
	object_t retval = 0;

	pthread_mutex_lock(&proc->t_mutex);
	int result = pthread_join(proc->thread, &retval);
	pthread_mutex_unlock(&proc->t_mutex);
	
	// Warning: retval, threadsafe? clone?
	RET(retval);
}

METHOD(proc, sleep) {
	object_t seconds = ARG(0);
	assert(OBJ_VALID(seconds));
	
	// TODO: just floats and ints
	sleep(int_value(seconds));
	
	RET(seconds);
}



METHOD(proc, write) {
	_DEBUG("proc.write: %p\n", ARG(0));
	
	object_t cloned_message = 0;
	// force clone with 2 extra slots
	object_t params = array_object(1);
	array_set_elementC(params, 0, int_object(2));
	cloned_message = CALL_METHOD(ARG(0), clone, params);
	assert(cloned_message);
	
	proc_t * proc = object_get_metadata(self);
	assert(proc);

	// TODO: many results for closure?
	// TODO: future for return value of proc
	// create mailbox for future
	msg_queue_t * future_mailbox = msg_queue_create(1);
	
	// extend cloned message with metadata and methods
	future_extend_msgobj(cloned_message);
	object_set_slot(cloned_message, SYM(__mbox), future_mailbox, SLOT_METADATA);

	// push message to process queue
	msg_queue_push(proc->mbox, cloned_message);

	// create retval future
	object_t future_obj = future_create(future_mailbox);
	
	
	RET(future_obj);
}

METHOD(proc, read) {
	assert(OBJ_VALID(self));
	
	proc_t * proc = object_get_metadata(self);
	assert(proc);
	
	object_t ret = msg_queue_pop(proc->mbox);
	
	RET(ret);
}

