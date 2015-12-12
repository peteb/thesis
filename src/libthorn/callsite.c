/*
 * $Id: callsite.c 1919 2010-08-02 00:56:31Z ptr $
 * thorn-llvm
 * 
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#include "callsite.h"
#include "object.h"
#include "sym.h"
#include "closure.h"
#include "string.h"
#include "object_builder.h"
#include <stdio.h>

GLOBAL_SYM(apply);

void __t_callsite(callsite_t * cs, sym_t method, object_t env, object_t args) {
	cs->method = method;
	cs->args = args;
	cs->env = env;
	cs->r_target_map = 0;
	cs->r_fun = 0;
}

ret_t __t_call(callsite_t * cs, object_t target) {
	// TODO: se till att inte cacha metoder som kan ändras
	register object_map_t tmap = object_map(target);

	if (unlikely(tmap != cs->r_target_map || !cs->r_target_map)) {				
		cs->r_clos = object_get_slot(target, cs->method);
		
		if (!OBJ_VALID(cs->r_clos) || OBJ_TYPE(cs->r_clos) != OBJ_CLOSURE)
			THROW(string_object("method not found"));

		cs->r_fun = closure_get_fptrC(cs->r_clos);
		cs->r_target_map = tmap;
	} 
	
	// int is_clos = ;
	
	cs->r_env = (SYM_CMP(cs->method, SYM(apply)) && (OBJ_TYPE(target) == OBJ_CLOSURE) ? cs->env : target);
	// this check has to be done, the target can be changed.
	// if it's immutable, we don't have to do it
	return cs->r_fun(cs->r_env, cs->r_clos, cs->args);
}
