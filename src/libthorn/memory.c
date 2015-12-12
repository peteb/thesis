/*
 * $Id: memory.c 1554 2010-05-20 21:09:56Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#include <stdio.h>
#include <assert.h>
#include <string.h>

#include "object.h"
#include "memory.h"

#define GC_THREADS
#define GC_DEBUG
#include <gc/gc.h>
#include "integer.h"
#include "closure.h"
#include "ptr_tag.h"
#include "null.h"
#include "bool.h"
#include "proc.h"
#include "array.h"

int mem_init() {
	GC_INIT();

	printf("size of long: %i\n", sizeof(long));
	null_init();
	bool_init();
	closure_init();
	int_init();
	proc_init();

	// void * hej = GC_MALLOC(64);
	// printf("%x\n", hej);

	return 1;
}

int mem_shutdown() {
	// printf("FIRST COLLECT\n");
	// GC_dump();
	GC_gcollect();	// there's no need for this, really
	// TODO: lös minnesläckan

	printf("\nMemory stats:\n");

	printf("Heap size = %d\n", GC_get_heap_size());
	printf("# collections %i\n", GC_gc_no);

	return 1;
}

#ifdef GC_DEBUG
#define SYS_MALLOC(sz, file, line) GC_debug_malloc(sz, file, line)
#define SYS_MALLOC_UNCOLLECTABLE(sz, file, line) GC_debug_malloc_uncollectable(sz, file, line)
#define SYS_MALLOC_ATOMIC_UNCOLLECTABLE(sz, file, line) GC_debug_malloc_atomic_uncollectable(sz, file, line)
#define SYS_MALLOC_ATOMIC(sz, file, line) GC_debug_malloc_atomic(sz, file, line)
#else
#define SYS_MALLOC(sz, file, line) GC_malloc(sz)
#define SYS_MALLOC_UNCOLLECTABLE(sz, file, line) GC_malloc_uncollectable(sz)
#define SYS_MALLOC_ATOMIC_UNCOLLECTABLE(sz, file, line) GC_malloc_atomic_uncollectable(sz)
#define SYS_MALLOC_ATOMIC(sz, file, line) GC_malloc_atomic(sz)
#endif

void * mem_alloc(size_t size, unsigned short flags, const char * file, int line) {
	void * ret = 0;
	// printf("Alloc %i %s:%i\n", size, file, line);

	if (unlikely((flags & ALLOC_PERSISTENT) && (flags & ALLOC_BLOB)))
		ret = SYS_MALLOC_ATOMIC_UNCOLLECTABLE(size, file, line);
	else if (unlikely(flags & ALLOC_PERSISTENT))
		ret = SYS_MALLOC_UNCOLLECTABLE(size, file, line);
	else if (flags & ALLOC_BLOB)
		ret = SYS_MALLOC_ATOMIC(size, file, line);
	else
		ret = SYS_MALLOC(size, file, line);

	// printf("%p %p\n", GC_MALLOC(0), GC_MALLOC(0));

	assert(ret && "failed to alloc space");

	return ret;
}

void mem_set_finalizer(void * obj, void * fn, void * cd) {
	// GC_register_finalizer(obj, fn, cd, 0, 0);
}
