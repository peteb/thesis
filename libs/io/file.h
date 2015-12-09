/*
 * $Id: file.h 1030 2010-04-13 12:54:29Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef IO_FILE_H_GGPJ4MD6
#define IO_FILE_H_GGPJ4MD6

#include <libthorn/object.h>

ret_t file_open(object_t args);
ret_t file_from_fd(long fd);

#endif /* end of include guard: IO_FILE_H_GGPJ4MD6 */
