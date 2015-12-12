/*
 * $Id: memory.h 921 2010-04-06 13:03:10Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_MEMORY_H_FYMN6VC6
#define LIBTHORN_MEMORY_H_FYMN6VC6

#include <stdlib.h>

#define ALLOC_PERSISTENT      0x0001   //< will never be reclaimed by gc
#define ALLOC_BLOB            0x0002   //< won't contain pointers

#define MEM_ALLOC(sz, fl) mem_alloc((sz), (fl), __FILE__, __LINE__)

int mem_init();
int mem_shutdown();
void * mem_alloc(size_t size, unsigned short flags, const char * file, int line);
void mem_set_finalizer(void * obj, void * fn, void * cd);

#endif /* end of include guard: LIBTHORN_MEMORY_H_FYMN6VC6 */
