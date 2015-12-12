/*
 * $Id: process.h 862 2010-03-30 18:30:44Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_PROCESS_H_OQZVMKF2
#define LIBTHORN_PROCESS_H_OQZVMKF2

#include <pthread.h>
#include "object_builder.h"
#include "object.h"
#include "msg_queue.h"

typedef struct _proc_t {
	pthread_t thread;
	pthread_mutex_t t_mutex;
	msg_queue_t * mbox;
} proc_t;

proc_t * proc_create(pthread_t thread, size_t mbox_size);
void proc_destroy(proc_t * proc);

#endif /* end of include guard: LIBTHORN_PROCESS_H_OQZVMKF2 */
