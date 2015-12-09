/*
 * $Id: msg_queue.h 1554 2010-05-20 21:09:56Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_MSG_QUEUE_H_89QXCFJ4
#define LIBTHORN_MSG_QUEUE_H_89QXCFJ4

#include <pthread.h>
#include "object_builder.h"
#include "object.h"

typedef struct _msg_queue_t {
	pthread_mutex_t mutex;
	pthread_cond_t non_empty, non_full;
	volatile size_t size, rpos, wpos;
	volatile object_t first_message;
} msg_queue_t;

msg_queue_t * msg_queue_create(size_t size);
void msg_queue_destroy(msg_queue_t * queue);
void msg_queue_push(msg_queue_t * queue, object_t object);
object_t msg_queue_pop(msg_queue_t * queue);
int msg_queue_empty(msg_queue_t * queue);

#endif /* end of include guard: LIBTHORN_MSG_QUEUE_H_89QXCFJ4 */
