/*
 * $Id: data.h 921 2010-04-06 13:03:10Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_DATA_H_QMZB6SH5
#define LIBTHORN_DATA_H_QMZB6SH5

#include <string.h>

#include "object.h"

typedef struct data {
	void * data;
	size_t size;
} data_t;
	
object_t data_object_nocopy(int size, void * data);
data_t * data_get_bytesC(object_t obj);

#endif /* end of include guard: LIBTHORN_DATA_H_QMZB6SH5 */
