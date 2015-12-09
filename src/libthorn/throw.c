/*
 * $Id: throw.c 896 2010-04-01 16:01:37Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

#include "config.h"
#include "throw.h"

// enum _Unwind_Reason_Code {
// 	NO_REASON = 0,
// 	FOREIGN_EXCEPTION_CAUGHT = 1,
// 	FATAL_PHASE2_ERROR = 2,
// 	FATAL_PHASE1_ERROR = 3,
// 	NORMAL_STOP = 4,
// 	END_OF_STACK = 5,
// 	HANDLER_FOUND = 6,
// 	INSTALL_CONTEXT = 7,
// 	CONTINUE_UNWIND = 8
// };
// 
// typedef void (*_Unwind_Exception_Cleanup_Fn)(unsigned int, void *);
// 
// struct _Unwind_Exception {
// 	unsigned int exception_class_1;
// 	unsigned int exception_class_2;
// 	_Unwind_Exception_Cleanup_Fn exception_cleanup;
// 	unsigned int private_1_1;
// 	unsigned int private_1_2;
// 	unsigned int private_2_1;
// 	unsigned int private_2_2;
// };
// 
// struct __t_exception {
// 	object_t obj;
// 	struct _Unwind_Exception unwind_info;
// };
// 
// extern enum _Unwind_Reason_Code _Unwind_RaiseException(struct _Unwind_Exception*);

ret_t __t_throw(object_t obj) {
	_DEBUG("__t_throw: [%p]\n", obj);
	
	THROW(obj);
	// struct __t_exception * exc = malloc(sizeof(struct __t_exception));
	// assert(exc);
	// 
	// exc->unwind_info.exception_class_1 = 0x00ADBEEF;
	// exc->unwind_info.exception_class_2 = 0x00ADBEEF;
	// exc->obj = obj;
	// 
	// int ret = _Unwind_RaiseException(&exc->unwind_info);
	// printf("RAISE: %i\n", ret);
	
}
