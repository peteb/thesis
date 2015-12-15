/*
 * $Id: object.h 1878 2010-07-07 14:34:47Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved.
 */

#ifndef LIBTHORN_OBJECT_H_FB00QSX4
#define LIBTHORN_OBJECT_H_FB00QSX4

#include "sym.h"
#include "config.h"

// -- constants ----------------------------------------------------------------------
#define OBJ_MAGIC				0x15C0FFEE //< recommended beverage as magic field
#define OBJ_METADATA 		0x0100     //< object has a metadata field
// #define OBJ_CLASS				0x0200     //< methods are immutable, delegates are classes
#define OBJ_PERSISTENT		0x0400     //< won't be checked by the garbage collector
#define OBJ_IMMUTABLE		0x0800     //< object is immutable forever. fast clone!

#define OBJ_EMPTY				0x0000     //< no type
#define OBJ_INTEGER			0x0001
#define OBJ_CLOSURE			0x0002
#define OBJ_BOOL				0x0003
#define OBJ_NULL 				0x0004
#define OBJ_ARRAY				0x0005
#define OBJ_STRING			0x0006
#define OBJ_FLOAT				0x0007
#define OBJ_PROC				0x0008

#define SLOT_MUTABLE			0x0002     //< can this slot be changed
#define SLOT_METADATA		0x0004     //< is this a metadata slot?
#define SLOT_ASSIGNMENT		0x1000     //< not initialization, assignment

#define MAP_SHARED		0x0001

// -- types --------------------------------------------------------------------------
typedef void * object_t;

#define OBJ_BITS (sizeof(object_t)*8)

#ifdef EH_MRV
	typedef struct ret_t_ {
		object_t val;
		object_t exception;
	} ret_t;
#else
	typedef object_t ret_t;
#endif

typedef void  (object_finalizer)(object_t);
typedef ret_t (slot_method)(object_t, object_t, object_t);

#ifndef __cplusplus // not for use in the compiler

struct object_header {
	unsigned flags;
	object_t metadata;
	object_t delegate;
	struct map * map;
	object_t * state;
};

struct map {
	unsigned size;
	unsigned flags;
	struct map_entry * entries;
};

struct map_entry {
	sym_t    name;
	unsigned flags;
	unsigned ofs;
};

// -- functions ----------------------------------------------------------------------
object_t object_create(int num_slots);
object_t object_alloc(int num_slots, unsigned flags);
ret_t    object_exec(object_t object, sym_t name, object_t args);
void     object_grow(object_t ptr, unsigned with);

unsigned object_get_type(object_t obj);
unsigned object_get_flags(object_t obj);

void     object_set_slot(object_t object, sym_t name, object_t value, unsigned flags);
object_t object_get_slot(object_t object, sym_t name);

void *   object_get_metadata(object_t object);
void     object_set_metadata(object_t object, void * value);
void     object_set_delegate(object_t object, object_t delegate);
object_t object_get_delegate(object_t object);

void     object_freeze(object_t ptr);

#endif // !__cplusplus
#endif /* end of include guard: LIBTHORN_OBJECT_H_FB00QSX4 */
