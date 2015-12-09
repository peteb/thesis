/*
 * $Id: file.c 1458 2010-05-12 15:53:07Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <pthread.h>
#include <libthorn/libthorn.h>

#include "file.h"

GLOBAL_SYM(apply);
GLOBAL_SYM(class);
GLOBAL_SYM(puts);
GLOBAL_SYM(gets);
GLOBAL_SYM(read);
GLOBAL_SYM(write);
GLOBAL_SYM(rewind);
GLOBAL_SYM(each);
GLOBAL_SYM(all);
GLOBAL_SYM(size);

static METHOD(file, class);
static METHOD(file, puts);
static METHOD(file, gets);
static METHOD(file, read);
static METHOD(file, write);
static METHOD(file, rewind);
static METHOD(file, each);
static METHOD(file, all);
static METHOD(file, size);

static pthread_mutex_t file_prototype_m = PTHREAD_MUTEX_INITIALIZER;

// -- prototype ----------------------------------------------------------------------
static object_t file_prototype() {
	static object_t prototype = 0;
	
	BEGIN_MUTEX_CACHE(prototype, file_prototype_m);
		prototype = object_alloc(OBJ_EMPTY, 9);
		object_set_delegate(prototype, object_prototype());
		
		REG_METHOD(prototype, file, class);
		REG_METHOD(prototype, file, puts);
		REG_METHOD(prototype, file, gets);
		REG_METHOD(prototype, file, rewind);
		REG_METHOD(prototype, file, each);
		REG_METHOD(prototype, file, all);
		REG_METHOD(prototype, file, read);
		REG_METHOD(prototype, file, write);
		REG_METHOD(prototype, file, size);
		
		object_freeze(prototype);
	END_MUTEX_CACHE(prototype, file_prototype_m);
	
	return prototype;
}

// -- constructors -------------------------------------------------------------------
ret_t file_open(object_t args) {
	object_t filename = ARG(0);
	object_t mode = ARG(1);
	
	assert(OBJ_VALID(filename));
	assert(OBJ_VALID(mode));
	
	FILE * file = fopen(string_cstrC(filename), string_cstrC(mode));
	
	if (!file) {
		// TODO: errno
		THROW(string_object("Failed to open file"));
	}
	
	return file_from_fd((long)file);
}

ret_t file_from_fd(long fd) {
	object_t file_handle = object_alloc(OBJ_EMPTY|OBJ_METADATA, 1);	
	object_set_delegate(file_handle, file_prototype());
	object_set_metadata(file_handle, (void *)fd);
	// object_set_finalizer(file_handle, file_finalizer);
	
	RET(file_handle);	
}

// -- finalizer ----------------------------------------------------------------------
void file_finalizer(object_t obj) {
	printf("File goes bye-bye\n");
	FILE * fd = object_get_metadata(obj);
	fclose(fd);
}

// -- methods ------------------------------------------------------------------------
METHOD(file, class) {
	RET(string_object("file"));
}

METHOD(file, puts) {
	FILE * file = object_get_metadata(self);
	assert(file);
	
	const char * cstr = string_cstrC(ARG(0));
	fputs(cstr, file);

	RET(ARG(0));
}

METHOD(file, gets) {
	FILE * file = object_get_metadata(self);
	assert(file);
	
	char buffer[2048] = {0};
	// TODO: fix buffer overflow issue
	
	if (fgets(buffer, 2048, file))
		RET(string_object(buffer));
	else
		RET(bool_object(FALSE));
}

METHOD(file, read) {	
	size_t size = int_value(ARG(0));
	FILE * file = object_get_metadata(self);
	assert(file);
	
	object_t ret = 0;
	
	if (array_get_sizeC(args) == 1) {		// param1 = size
		void * buffer = MEM_ALLOC(size, ALLOC_BLOB);
		size_t read_objects = fread(buffer, 1, size, file);
	
		if (read_objects <= 0) {	// TODO: throw
			THROW(string_object("FILE ERROR"));
		}
		
		ret = data_object_nocopy(read_objects, buffer);
	}
	else if (array_get_sizeC(args) == 2) {	// param1 = size, param2 = previous buffer
		void * buffer = 0;
		
		if (ARG(1) == null_object()) {
			buffer = MEM_ALLOC(size, ALLOC_BLOB);
			ret = data_object_nocopy(size, buffer);
		}
		else {
			data_t * data = data_get_bytesC(ARG(1));
			assert(data);
			
			if (data->size >= size) {	// the data buffer is enough
				buffer = data->data;
				ret = ARG(1);
			}
			else {
				buffer = MEM_ALLOC(size, ALLOC_BLOB);
				ret = data_object_nocopy(size, buffer);
			}
		}
		
		size_t read_objects = fread(buffer, 1, size, file);
	
		if (read_objects <= 0) {	// TODO: throw
			THROW(string_object("FILE ERROR"));
		}
		
		data_t * data = data_get_bytesC(ret);
		assert(data);
		
		data->size = read_objects;	
	}
	
	RET(ret);
}

METHOD(file, write) {
	FILE * file = object_get_metadata(self);
	assert(file);
	
	char buffer[512] = {0};

	if (fgets(buffer, 512, file))
		RET(string_object(buffer));
	else
		RET(bool_object(FALSE));
}

METHOD(file, rewind) {
	FILE * file = object_get_metadata(self);
	assert(file);
	rewind(file);
	RET(self);
}

// TODO: det var någonstans jag optimerade en arraylist utanför en loop...
// så kan man INTE GÖRA!!!!!!!! skapa nya objekt! 

METHOD(file, each) {
	object_t fun = ARG(0);
	assert(OBJ_VALID(fun));
	
	FILE * file = object_get_metadata(self);
	assert(file);
	
	char buffer[512] = {0};

	while (fgets(buffer, 512, file)) {
		object_t string = string_object(buffer);
		object_t params = array_object(1);
		array_set_elementC(params, 0, string);
		
		object_t ret;
		CALL_METHOD(ret, fun, apply, params);
	}

	RET(self);
}

METHOD(file, all) {
	FILE * file = object_get_metadata(self);
	assert(file);
	
	long init_pos = ftell(file);
	fseek(file, 0, SEEK_END);
	long size = ftell(file);
	rewind(file);
	
	void * buffer = MEM_ALLOC(size, ALLOC_BLOB);
	size_t bytes_read = fread(buffer, 1, size, file);
	
	fseek(file, init_pos, SEEK_SET);
	RET(data_object_nocopy(bytes_read, buffer));
}

METHOD(file, size) {
	FILE * file = object_get_metadata(self);
	assert(file);
	
	long init_pos = ftell(file);
	fseek(file, 0, SEEK_END);
	long size = ftell(file);
	fseek(file, init_pos, SEEK_SET);

	RET(int_object(size));
}

