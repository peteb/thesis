/*
 * $Id: io.c 1091 2010-04-18 23:07:50Z ptr $
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

GLOBAL_SYM(open_file);
GLOBAL_SYM(sin);
GLOBAL_SYM(sout);
GLOBAL_SYM(serr);
GLOBAL_SYM(lf);
GLOBAL_SYM(crlf);

static METHOD(io, open_file);
static METHOD(io, sin);
static METHOD(io, sout);
static METHOD(io, serr);
static METHOD(io, lf);
static METHOD(io, crlf);

static pthread_mutex_t file_prototype_m = PTHREAD_MUTEX_INITIALIZER;

// -- init ---------------------------------------------------------------------------
void __io_init(object_t lib) {
	REG_METHOD(lib, io, open_file);
	REG_METHOD(lib, io, sin);
	REG_METHOD(lib, io, sout);
	REG_METHOD(lib, io, serr);	
	REG_METHOD(lib, io, crlf);	
	REG_METHOD(lib, io, lf);	
}


// -- methods ------------------------------------------------------------------------
METHOD(io, open_file) {
	return file_open(args);
}

METHOD(io, sin) {
	return file_from_fd(stdin);
}

METHOD(io, sout) {
	return file_from_fd(stdout);
}

METHOD(io, serr) {
	return file_from_fd(stderr);
}

METHOD(io, lf) {
	RET(string_object("\n"));
}

METHOD(io, crlf) {
	RET(string_object("\r\n"));
}


