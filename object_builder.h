/*
 * $Id$
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_OBJECT_BUILDER_H_HRD12YRL
#define LIBTHORN_OBJECT_BUILDER_H_HRD12YRL

#define OBJ_TYPE(obj)   ((struct object_header *)(obj))->flags & 0xFF)
#define OBJ_VALID(obj)  ((obj) && ((struct object_header *)(obj))->magic == OBJ_MAGIC)

#define RET(val) return (ret_t){(val), 0}
#define THROW(exc) return (ret_t){0, (exc)}

#define METHOD(class, name)                                                          \
ret_t class##_##name(object_t self, object_t args)

//	assert(OBJ_TYPE(self) == OBJ_BOOL);                                               
#define METHOD_OP(class, name, ret, exec)                                            \
METHOD(class, name) {                                                                \
	object_t other = (object_t)array_get_elementC(args, 0);                           \
	assert(OBJ_VALID(other));                                                         \
	RET((ret)(exec));                                                                 \
}
			
#define CALL(retvar, func)                             \
do {ret_t _ret = func;                    		       \
   if (_ret.exception)                                 \
      return _ret;                                     \
   retvar = _ret.val;                                  \
} while(0)
			

#define BEGIN_MUTEX_CACHE(proto, mutex)                                              \
if (unlikely(!proto)) {                                                              \
	pthread_mutex_lock(&mutex);                                                       \
	if (!proto) {
		
#define END_MUTEX_CACHE(proto, mutex)                                                \
	}                                                                                 \
	pthread_mutex_unlock(&mutex);                                                     \
}
										
#define REG_METHOD(target, type, name)                                               \
object_set_slot(target, #name, closure_object(type##_##name), 0)

#define ARG(n) array_get_elementC(args, n)


#endif /* end of include guard: LIBTHORN_OBJECT_BUILDER_H_HRD12YRL */
