/*
 * $Id: proc.h 1457 2010-05-12 14:35:58Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_PROC_H_NMSQK6DV
#define LIBTHORN_PROC_H_NMSQK6DV

#include "object.h"

object_t __t_send(object_t target, object_t value);

void proc_init();
object_t proc_object(void * thread);
object_t proc_object_place();

#endif /* end of include guard: LIBTHORN_PROC_H_NMSQK6DV */
