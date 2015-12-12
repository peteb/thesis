/*
 * $Id: process.c 921 2010-04-06 13:03:10Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#define GC_DEBUG
#define GC_THREADS
#include "gc.h"

#include <stdlib.h>
#include <assert.h>

#include "process.h"
#include "memory.h"

void proc_finalize(proc_t * proc, proc_t * cd) {
	pthread_mutex_destroy(&proc->t_mutex);
}


proc_t * proc_create(pthread_t thread, size_t mbox_size) {
	proc_t * proc = MEM_ALLOC(sizeof(proc_t), 0);

	assert(!pthread_mutex_init(&proc->t_mutex, 0));	
	proc->thread = thread;
	proc->mbox = msg_queue_create(mbox_size);
	assert(proc->mbox);

	mem_set_finalizer(proc, proc_finalize, proc);
	
	return proc;	
}
