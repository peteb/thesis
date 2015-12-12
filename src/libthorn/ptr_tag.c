/*
 * $Id: ptr_tag.c 1457 2010-05-12 14:35:58Z ptr $
 * thorn-llvm
 * 
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#include <assert.h>
#include <stdint.h>

#include "ptr_tag.h"

static object_t ptr_tags[PTR_TAG_MAX];
static ptr_unliner ptr_unliners[PTR_TAG_MAX];

void ptr_tag_reg_receiver(ptr_tag_t t_id, object_t t_obj) {
	assert(t_id > 0 && t_id <= PTR_TAG_MAX);          // 0 is reserved for un-tagged ptrs
	ptr_tags[t_id] = t_obj;
}

object_t ptr_tag_get_receiver(ptr_tag_t t_id) {
	return ptr_tags[t_id];	
}

void ptr_tag_reg_unliner(ptr_tag_t t_id, ptr_unliner fptr) {
	assert(t_id > 0 && t_id <= PTR_TAG_MAX);
	ptr_unliners[t_id] = fptr;
}

ptr_unliner ptr_tag_get_unliner(ptr_tag_t t_id) {
	return ptr_unliners[t_id];
}

object_t ptr_unline(object_t obj) {
	ptr_tag_t tag = PTR_TAG(obj);
	
	ptr_unliner unliner = ptr_tag_get_unliner(tag);
	assert(unliner && "no unliner specified for tag");
	return unliner(obj);
}