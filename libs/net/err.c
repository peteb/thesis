/*
 * $Id$
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include <string.h>

char * prestrerr(const char * prefix, int errcode, char * buf, int max) {
	strncpy(buf, prefix, max);
	strerror_r(errcode, buf + strlen(buf), max - strlen(buf));
	return buf;
}