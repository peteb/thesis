/*
 * $Id: object.c 1878 2010-07-07 14:34:47Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <assert.h>

#include "object.h"
#include "null.h"
#include "config.h"
#include "memory.h"
#include "object_proto.h"
#include "object_builder.h"
#include "string.h"
#include "array.h"
#include "ptr_tag.h"
#include "callsite.h"

GLOBAL_SYM(delegate);
GLOBAL_SYM(finalize);
GLOBAL_SYM(apply);

// void finalizer(void *, void *);
// static void __t_finalizer_forward(void * old_obj, void * pfn);
static struct map_entry * object_get_map_entry(object_t ptr, sym_t name);

object_t object_alloc(int num_slots, unsigned flags) {
	size_t header_size = sizeof(struct object_header);
	size_t map_size = sizeof(struct map);
	size_t mtr_sz = sizeof(struct map_entry) * num_slots;
	size_t data_size = sizeof(object_t) * num_slots;
	size_t sum_size = header_size + map_size + mtr_sz + data_size;
	
	struct object_header * obj = MEM_ALLOC(sum_size, 0);
	
	// TODO: clean up, use a generic chunk	
	obj->map = (struct map *)((char *)obj + header_size);
	obj->map->size = num_slots;
	obj->map->flags = 0;
	obj->map->entries = (struct map_entry *)((char *)obj + header_size + map_size);
	obj->state = (object_t *)((char *)obj + header_size + map_size + mtr_sz);
	obj->flags = flags;
	obj->metadata = 0;
	obj->delegate = 0;
	
	assert(OBJ_VALID(obj) && "created invalid object");
	assert(PTR_TAG_ZERO(obj) && "memory alloced not aligned properly");
	
	memset(obj->map->entries, 0, sizeof(struct map_entry) * num_slots);
	_DEBUG("object_alloc: [slots: %i flags: 0x%x] -> %p\n", num_slots, flags, obj);
	
	return obj;
}

int object_get_slot_offset(object_t ptr, sym_t name) {
	unsigned idx;
	struct object_header * obj = ptr;
	
	for (idx = 0; idx < obj->map->size; idx++) {
		struct map_entry * entry = &obj->map->entries[idx];
		if (entry->name && SYM_CMP(entry->name, name))
			return idx;
	}
	
	return -1;
}

int object_add_slot(object_t ptr, sym_t name, unsigned flags) {
	assert(PTR_TAG_ZERO(ptr) && "trying to add slot to an inlined value");
	// won't check if added already
	struct object_header * obj = ptr;
	unsigned idx;
	
	if (obj->map->flags & MAP_SHARED) {
		idx = obj->map->size;
	}
	else {
		for (idx = 0; idx < obj->map->size; idx++) {
			if (obj->map->entries[idx].name == 0) {
				obj->map->entries[idx].name = name;
				obj->map->entries[idx].ofs = idx;
				obj->map->entries[idx].flags = flags;
				return idx;
			}
		}
	}

	// no free entry found, create a new map with 5 more elements
	object_grow(ptr, 5);
	assert(idx < obj->map->size && "growing the object didn't help!");
	obj->map->entries[idx].name = name;
	obj->map->entries[idx].ofs = idx;
	obj->map->entries[idx].flags = flags;
	
	return idx;
}

void object_grow(object_t ptr, unsigned with) {
	_DEBUG("object_grow: [%p with: %i]\n", ptr, with);
	
	struct object_header * obj = ptr;
	
	unsigned ext_size = obj->map->size + with;
	void * map_chunk = MEM_ALLOC(
		sizeof(struct map) + sizeof(struct map_entry) * ext_size, 0
	);
	
	struct map * new_map = (struct map *)map_chunk;
	new_map->size = ext_size;
	new_map->entries = map_chunk + sizeof(struct map);
	new_map->flags = 0;
	
	memcpy(new_map->entries, obj->map->entries, sizeof(struct map_entry) * obj->map->size);
	memset(new_map->entries + sizeof(struct map_entry) * obj->map->size, 0, with);
	
	object_t * new_state = MEM_ALLOC(sizeof(object_t) * ext_size, 0);
	memcpy(new_state, obj->state, sizeof(object_t) * obj->map->size);
	memset(new_state + sizeof(object_t) * obj->map->size, 0, with);
	
	obj->map = new_map;
	obj->state = new_state;
	
	// TODO: this function results in a memory gap in the original object, memory
	// that won't be used. maybe we should try to use it?
}

void object_set_slot(object_t ptr, sym_t name, object_t value, unsigned flags) {
	_DEBUG("object_set_slot: [%p."SYM_FMT" value: %p flags: %x]\n", 
		ptr, name, value, flags);
	
	assert(!(object_get_flags(ptr) & OBJ_IMMUTABLE) && "trying to set slot in immutabl");
	assert(PTR_TAG_ZERO(ptr) && "trying to set slot of inlined value");
	
	if (unlikely(SYM_CMP(name, SYM(delegate)))) {
		object_set_delegate(ptr, value);
		return;	
	}
	
	object_t target = ptr;
	int ofs = object_get_slot_offset(target, name);
	
	if (flags & SLOT_ASSIGNMENT) {
		struct map_entry * mentr = object_get_map_entry(target, name);
		
		while (!mentr && target) {
			target = object_get_delegate(target);
			
			if (target)
				mentr = object_get_map_entry(target, name);
				
				//ofs = object_get_slot_offset(target, name);
		}
		
		assert(mentr && "not found");
		assert(mentr->flags & SLOT_MUTABLE && "trying to set an immutable slot");
		
		ofs = mentr->ofs;
		assert(ofs != -1 && "trying to assign non-defined slot");
		assert(target);
	}
	else {
		assert(ofs == -1 && "slot already defined");		

		// TODO: hm. below, should create a new map, with a copy of the 
		// old map + 1 element
		// this check is only necessary when we're not assigning, but adding.
		assert(!(((struct object_header *)ptr)->map->flags & MAP_SHARED));

		ofs = object_add_slot(target, name, flags);
		assert(ofs != -1 && "failed to add slot");
	}
	
	assert(ofs > -1);
	((struct object_header *)target)->state[ofs] = value;
}

struct map_entry * object_get_map_entry(object_t ptr, sym_t name) {
	struct object_header * obj = ptr;
	unsigned idx;
	
	for (idx = 0; idx < obj->map->size; idx++) {
		struct map_entry * entry = &obj->map->entries[idx];
		if (entry->name && SYM_CMP(entry->name, name)) {
			return entry;
		}
	}
	
	return 0;	
}

object_t object_get_slot(object_t ptr, sym_t name) {
	object_t ret = 0;
	
	// TODO: optimize this case for inlined closures
	if (SYM_CMP(name, SYM(apply)) && OBJ_TYPE(ptr) == OBJ_CLOSURE) {
		ret = ptr;
	}
	else if (unlikely(SYM_CMP(name, SYM(delegate)))) {
		ret = object_get_delegate(ptr);
	}
	else {
		// TODO: refactor this into another function
		ptr_tag_t tag = PTR_TAG(ptr);
		
		if (tag != 0) {
			object_t receiver = ptr_tag_get_receiver(tag);
			return object_get_slot(receiver, name);
		}
		else {	
			object_t target = ptr;
			struct map_entry * mentr;
		
			do {
				mentr = object_get_map_entry(target, name);
				if (!mentr) target = object_get_delegate(target);
			} while (!mentr && target);
		
			if (mentr && target) {
				ret = ((struct object_header *)target)->state[mentr->ofs];
			}
			else {
				ret = null_object();
			}
		}
	}
	
	_DEBUG("object_get_slot: %p." SYM_FMT " -> %p\n", ptr, name, ret);
	return ret;
}


unsigned object_get_type(object_t ptr) {
	ptr_tag_t tag = PTR_TAG(ptr);
	unsigned ret = 0;
	
	if (tag == 0)
		ret = (((struct object_header *)(ptr))->flags & 0xFF);
	else
		ret = tag;
		
	return ret;
}

unsigned object_get_flags(object_t obj) {
	assert(PTR_TAG_ZERO(obj));
	
	return ((struct object_header *)(obj))->flags;	
}

void * object_get_metadata(object_t object) {
	assert(PTR_TAG_ZERO(object));
	return ((struct object_header *)object)->metadata;		
}

void object_set_metadata(object_t object, void * value) {
	assert(PTR_TAG_ZERO(object));
	assert(!(object_get_flags(object) & OBJ_IMMUTABLE));
	((struct object_header *)object)->metadata = value;
}

void object_set_delegate(object_t object, object_t delegate) {
	_DEBUG("object_set_delegate: [%p value: %p]\n", object, delegate);
	assert(PTR_TAG_ZERO(object));

	struct object_header * object_header = object;

	assert(!(object_get_flags(object) & OBJ_IMMUTABLE) 
		&& "trying to set the delegate of an immutable object"
	);
	
	object_header->delegate = delegate;
}

object_t object_get_delegate(object_t object) {
	// TODO: if tag, return tag_receiver?
	assert(PTR_TAG_ZERO(object));

	struct object_header * header = object;
	return header->delegate;
}

object_t object_create(int num_slots) {
	object_t obj = object_alloc(num_slots, 0);
	object_set_delegate(obj, object_prototype());
	
	return obj;	
}

ret_t object_exec(object_t object, sym_t name, object_t args) {
	_DEBUG("object_exec: [%p." SYM_FMT "]\n", object, name);

	callsite_t cs;
	__t_callsite(&cs, name, object, args);
	return __t_call(&cs, object);
}

void object_freeze(object_t ptr) {
	_DEBUG("object_freeze: %p\n", ptr);
	
	if (PTR_TAG_ZERO(ptr)) {	
		object_t delegate = 0; //object_get_delegate(ptr);
		assert(!delegate || (object_get_flags(delegate) & OBJ_IMMUTABLE) &&
			"trying to freeze an object with a non-immutable delegate!"
		);
	
		struct object_header * obj = ptr;
		obj->flags |= OBJ_IMMUTABLE;
	}
}


