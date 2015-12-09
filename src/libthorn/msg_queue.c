/*
 * $Id: msg_queue.c 1554 2010-05-20 21:09:56Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#define GC_DEBUG
#define GC_THREADS
#include "gc.h"

#include <assert.h>
#include <stdlib.h>

#include "msg_queue.h"
#include "memory.h"

static void msg_queue_finalize(msg_queue_t * queue, void * cd);

msg_queue_t * msg_queue_create(size_t size) {
	msg_queue_t * queue = MEM_ALLOC(
		sizeof(msg_queue_t) + sizeof(object_t) * (size - 1), 0
	);
	
	assert(queue);
	
	queue->size = size;
	queue->rpos = 0;
	queue->wpos = 0;
	
	assert(!pthread_mutex_init(&queue->mutex, 0));
	assert(!pthread_cond_init(&queue->non_empty, 0));
	assert(!pthread_cond_init(&queue->non_full, 0));

	mem_set_finalizer(queue, msg_queue_finalize, queue);
	
	return queue;
}

void msg_queue_finalize(msg_queue_t * queue, void * cd) {
	assert(queue);
	
	pthread_mutex_destroy(&queue->mutex);
	pthread_cond_destroy(&queue->non_empty);
	pthread_cond_destroy(&queue->non_full);
	
}

void msg_queue_push(msg_queue_t * queue, object_t object) {
	pthread_mutex_lock(&queue->mutex);
	volatile object_t * messages = &queue->first_message;
	
	if (messages[queue->wpos] != 0) {
		pthread_cond_wait(&queue->non_full, &queue->mutex);
	}
	
	messages[queue->wpos] = object;
	queue->wpos = (queue->wpos + 1) % queue->size;
	
	pthread_cond_signal(&queue->non_empty);
	pthread_mutex_unlock(&queue->mutex);
}

object_t msg_queue_pop(msg_queue_t * queue) {
	pthread_mutex_lock(&queue->mutex);
	volatile object_t * messages = &queue->first_message;
	
	if (messages[queue->rpos] == 0) {
		pthread_cond_wait(&queue->non_empty, &queue->mutex);
	}
	
	object_t ret = messages[queue->rpos];
	messages[queue->rpos] = 0;
	queue->rpos = (queue->rpos + 1) % queue->size;
	
	pthread_cond_signal(&queue->non_full);
	pthread_mutex_unlock(&queue->mutex);

	return ret;	
}

int msg_queue_empty(msg_queue_t * queue) {
	int ret = 0;
	
	pthread_mutex_lock(&queue->mutex);
	volatile object_t * messages = &queue->first_message;
	if (messages[queue->rpos] == 0)
		ret = 1;
	pthread_mutex_unlock(&queue->mutex);
	
	return ret;
}
