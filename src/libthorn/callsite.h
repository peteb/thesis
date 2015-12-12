/*
 * $Id: callsite.h 1919 2010-08-02 00:56:31Z ptr $
 * thorn-llvm
 * 
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_CALLSITE_H_X7LBFO86
#define LIBTHORN_CALLSITE_H_X7LBFO86

#include "object.h"
#include "sym.h"
#include "object_map.h"

typedef struct callsite {
	sym_t    method;					//< method symbol for look-up
	object_t args;						//< argument array
	object_t env;						//< 'this' parameter of environment

	object_map_t  r_target_map;	//< map of resolved target
	object_t      r_clos;			//< closure object for self parameter
	object_t      r_env;				//< resolved this
	slot_method * r_fun;				//< function pointer for fast invoke
} callsite_t;

inline void  __t_callsite(callsite_t * cs, sym_t method, object_t env, object_t args);
inline ret_t __t_call(callsite_t * cs, object_t target);

#endif /* end of include guard: LIBTHORN_CALLSITE_H_X7LBFO86 */
