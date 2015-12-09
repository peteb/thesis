/*
 * $Id: object_map.c 1878 2010-07-07 14:34:47Z ptr $
 * thorn-llvm
 * 
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include <stdint.h>

#include "object_map.h"
#include "object.h"
#include "ptr_tag.h"

// TODO: get rid of this crap. it's not needed anymore, really.
// but there are two kinds of cache-hits, 
// (same delegate && slots == 0) and (same map)
// they're essentially the same.
// right now, callsite cache saves the fptr of the method, which is really bad
// if the target's slot can change. In that case (slot is mutable in a mutable object)
// , cache offset, and use that.
// start off just caching the offset <-------

object_map_t object_map(object_t obj) {
	object_map_t ret = 0;
	ptr_tag_t tag = PTR_TAG(obj);
	
	if (unlikely(tag == PTR_ZERO)) {
		struct object_header * header = (struct object_header *)obj;
		
		if (likely(header->map->size == 0))     // no slots?
			ret = header->delegate;  
		else
			ret = obj; //header->map;
	}
	else {
		ret = ptr_tag_get_receiver(tag);
	}
	
	return ret;
}

// we rely on the delegate not to change.. stupid,
// should probably check the delegate and see it's
// a class. adding a non-class delegate should be
// invalid in a CLASS
