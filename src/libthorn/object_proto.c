/*
 * $Id: object_proto.c 1919 2010-08-02 00:56:31Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#include <stdio.h>
#include <assert.h>
#include <string.h>
#include <pthread.h>
#include <stdint.h>

#include "array.h"
#include "string.h"
#include "range.h"
#include "object_builder.h"
#include "object_proto.h"
#include "sym.h"
#include "ptr_tag.h"
#include "callsite.h"
#include "integer.h"
#include "bool.h"

GLOBAL_SYM(inspect);
GLOBAL_SYM(clone);
GLOBAL_SYM(class);
GLOBAL_SYM(to_s);
GLOBAL_SYM(dotdot);
GLOBAL_SYM(apply);

static METHOD(object, clone);
static METHOD(object, class);
static METHOD(object, to_s);
static METHOD(object, dotdot);
static METHOD(object, apply);

static pthread_mutex_t object_prototype_m = PTHREAD_MUTEX_INITIALIZER;

// -- prototype ----------------------------------------------------------------------
object_t object_prototype() {
	static object_t prototype = 0;
	
	BEGIN_MUTEX_CACHE(prototype, object_prototype_m);
		prototype = object_alloc(6, 0);
		REG_METHOD(prototype, object, clone);
		REG_METHOD(prototype, object, class);
		REG_METHOD(prototype, object, inspect);
		REG_METHOD(prototype, object, to_s);
		REG_METHOD(prototype, object, dotdot);
		REG_METHOD(prototype, object, apply);
		object_freeze(prototype);
	END_MUTEX_CACHE(prototype, object_prototype_m);
	
	return prototype;
}

// -- methods ------------------------------------------------------------------------
METHOD(object, apply) {
	RET(self);
}

METHOD(object, clone) {	
	int ext = 0;
	if (array_get_sizeC(args) > 0)
		ext = int_value(ARG(0));
		
	_DEBUG("clone: %p ext: %i\n", self, ext);
	
	object_t obj = self;
	ptr_tag_t tag = PTR_TAG(self);

	if (ext == 0) {
		// fast path. cloning "classes" isn't needed, they shouldn't change
		if (tag) { // it's tagged
			RET(self);
		}
		else if (object_get_flags(obj) & OBJ_IMMUTABLE) {
			RET(self);
		}
	}
	else {
		// varför försöker man klona en OBJ_IMMUTABLE? samtidigt som man 
		// vill lägga till saker.....
		// okay, this is perfectly ALRIGHT;
		// when we send null, true or false, etc. we want to create a new
		// object that represents them
		// this is turning out to be pretty bad. maybe I shouldn't add
		// the respond-slot to messages? 
		
		/*
		val msg = this.read;
		msg.value == null;
		msg.respond("yo");
		
		
		*/
	}
	
	if (tag) {
		obj = ptr_unline(self);
	}
	
	object_t fwd_args = array_object(0);
	
	struct object_header * self_obj = obj;
	unsigned flags = self_obj->flags & ~OBJ_IMMUTABLE;
	object_t cloned_obj = object_alloc(self_obj->map->size + ext, flags);
	struct object_header * new_obj = cloned_obj;
	object_t call_args = array_object(0);
	object_t delegate = object_get_delegate(obj);
	object_t metadata = object_get_metadata(obj);
	
	if (delegate) {
		object_t cloned_delegate;
		cloned_delegate = CALL_METHOD(delegate, clone, fwd_args); 
		// don't extend
		delegate = cloned_delegate;
	}
	
	object_set_delegate(new_obj, delegate);
	object_set_metadata(new_obj, metadata);
	
	// share map
	self_obj->map->flags |= MAP_SHARED;		// make the map immutable, it's shared
	new_obj->map = self_obj->map;
	
	// copy slot values
	unsigned idx;
	for (idx = 0; idx < self_obj->map->size; ++idx) {
		struct map_entry * entry = &self_obj->map->entries[idx];
		
		if (entry->name != 0) {
			if (entry->flags & SLOT_METADATA) {
				new_obj->state[entry->ofs] = self_obj->state[entry->ofs];
			}
			else {
				object_t cloned_slot;
				cloned_slot = CALL_METHOD(self_obj->state[entry->ofs], clone, fwd_args);
				new_obj->state[entry->ofs] = cloned_slot;
			}
		}
	}
	
	if (ext > 0) {
		// if we need more slots, also create a new map
		object_grow(new_obj, ext);
	}

	RET(new_obj);
}

METHOD(object, class) {
	RET(string_object("object"));	
}

METHOD(object, to_s) {
	char buffer[32];
	sprintf(buffer, "[Object: %p]", self);

	RET(string_object(buffer));	
}

static void table_format(char * res, sym_t name, 
	unsigned int flags, object_t value) 
{
	int col1 = 30;
	int col2 = 14;

	memset(res, ' ', col1 + col2);	
	res[col1] = '\0';
	res[col1 + col2] = '\0';
	
	sprintf(res, SYM_FMT, name);
	res[strlen(res)] = ' ';
	
	sprintf(res + col1, "%p", value); //0x%04X (", value, flags);
	res[strlen(res)] = ' ';
	sprintf(res + col1 + col2, "0x%04X (", flags);
	
	char slot_flags[64] = {0};
	
	if (flags & SLOT_MUTABLE)		strcat(slot_flags, "SLOT_MUTABLE|");
	if (flags & SLOT_METADATA)		strcat(slot_flags, "SLOT_METADATA|");
		
	if (slot_flags[strlen(slot_flags) - 1] == '|')
		slot_flags[strlen(slot_flags) - 1] = '\0';

	if (slot_flags[0] == '\0')
		strcat(slot_flags, "0");
	
	strcat(res, slot_flags);
	strcat(res, ")");
}

METHOD(object, inspect) {
	ptr_tag_t tag = PTR_TAG(self);
	
	char addr_buf[64] = {0};
	snprintf(addr_buf, 64, "%p", self);

	printf("== %s ", addr_buf);
	int i = 0;
	for (; i < 80 - strlen(addr_buf) - 4; ++i) printf("=");
	printf("\n");
	
	if (tag != 0) {
		object_t receiver = ptr_tag_get_receiver(tag);
		printf("   val_shifted: %x\n", PTR_TAG_VAL_SHIFTED(self));
		printf("   val_aligned: %x\n", PTR_TAG_VAL_ALIGNED(self));
		printf("   tag: %02x (", tag);
		
		if (tag == PTR_INT)
			printf("TAG_INT");
		else if (tag == PTR_CLOSURE)
			printf("TAG_CLOSURE");
		else
			printf("unknown");
			
		printf(")\n");
		
		printf("      unliner: %p\n", ptr_tag_get_unliner(tag));
		printf("      receiver: %p\n", receiver);
		
		printf("\n");
		
		object_exec(receiver, SYM(inspect), array_object(0));
	}
	else {
		struct object_header * header = self;
		struct map * map = header->map;
	
		char header_flags[256] = {0};
		if (header->flags & OBJ_METADATA)	strcat(header_flags, "OBJ_METADATA|");
		// if (header->flags & OBJ_CLASS)	strcat(header_flags, "OBJ_CLASS|");
		if (header->flags & OBJ_PERSISTENT)	strcat(header_flags, "OBJ_PERSISTENT|");
		if (header->flags & OBJ_IMMUTABLE)	strcat(header_flags, "OBJ_IMMUTABLE|");
	
		switch (OBJ_TYPE(self)) {
			case OBJ_NULL:
				strcat(header_flags, "OBJ_NULL|");
				break;
			case OBJ_INTEGER:
				strcat(header_flags, "OBJ_INTEGER|");
				break;                
			case OBJ_STRING:         
				strcat(header_flags, "OBJ_STRING|");
				break;                
			case OBJ_CLOSURE:        
				strcat(header_flags, "OBJ_CLOSURE|");
				break;                
			case OBJ_FLOAT:          
				strcat(header_flags, "OBJ_FLOAT|");
				break;                
			case OBJ_BOOL:           
				strcat(header_flags, "OBJ_BOOL|");
				break;                
			case OBJ_ARRAY:          
				strcat(header_flags, "OBJ_ARRAY|");
				break;                
			case OBJ_PROC:           
				strcat(header_flags, "OBJ_PROC|");
				break;
		
		}
	
	
		if (header_flags[0] != '\0') {
			header_flags[strlen(header_flags) - 1] = '\0';
		}
		else {
			strcpy(header_flags, "0");
		}

		printf("   flags: 0x%04X (%s)\n", header->flags, header_flags);	
		printf("   delegate: %p\n", header->delegate);
		printf("   metadata: %p\n", header->metadata);
		printf("   map: %p\n", header->map);
	
		printf("\n   -- map -----------------------------------------------\n");
		printf("   size: %i\n", map->size);
		printf("   flags: 0x%04x (", map->flags);
	
		if (map->flags & MAP_SHARED)
			printf("MAP_SHARED");
		else
			printf("0");
		
		printf(")\n");
	
		// if (header->flags & OBJ_METADATA) {
		// 	printf("   metadata: %p\n", ((struct object_primitive *)self)->value);
		// }

		if (map->size > 0) {
			printf("\n");
			puts("   name                          value         flags");
		}
	
		unsigned idx;
		for (idx = 0; idx < map->size; ++idx) {
			// TODO: format slots, table
			struct map_entry * entry = &map->entries[idx];

			char buffer[128] = {0};
			table_format(buffer, entry->name, entry->flags, header->state[entry->ofs]);
		
			printf("   ");
			puts(buffer);
		}
	
		// TODO: bool_get_value verkar inte funka
		if (header->delegate && bool_get_value(ARG(0)) == 0) {
			printf("\n");
		
			object_exec(header->delegate, SYM(inspect), array_object(0));
		}
	}
	
	RET(self);
}

METHOD(object, dotdot) {
	object_t ret = range_create(self, ARG(0));
	RET(ret);
} 
