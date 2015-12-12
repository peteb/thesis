/*
 * $Id: future.h 865 2010-03-31 08:40:30Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_FUTURE_H_EUJUYBH6
#define LIBTHORN_FUTURE_H_EUJUYBH6

#include "object.h"
#include "msg_queue.h"

object_t future_create(msg_queue_t * queue);
void future_extend_msgobj(object_t obj);

#endif /* end of include guard: LIBTHORN_FUTURE_H_EUJUYBH6 */
