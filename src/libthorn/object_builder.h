/*
 * $Id: object_builder.h 1925 2010-08-04 16:10:22Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 - 2015 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_OBJECT_BUILDER_H_HRD12YRL
#define LIBTHORN_OBJECT_BUILDER_H_HRD12YRL

#include "closure.h"
#include "array.h"
#include "config.h"

#define OBJ_TYPE(obj)   object_get_type(obj)
#define OBJ_VALID(obj)  (obj)		// TODO: maybe check object header if not tagged
//((obj) && ((struct object_header *)(obj))->magic == OBJ_MAGIC)

GLOBAL_SYM(to_s);

#ifdef EH_MRV
	#define RET(val)      return (ret_t){(val), 0}
	#define THROW(exc)    return (ret_t){0, (exc)}
	#define RET_VAL(ret)  (ret).val
	#define RET_EXC(ret)  (ret).exception
	
	#define CALL(retvar, func)                             \
	do {ret_t _ret = func;                    		       \
   	if (unlikely((long)_ret.exception))                 \
      	return _ret;                                     \
   	retvar = _ret.val;                                  \
	} while(0)	

#else
	#define RET(val)      return (val)
	#define THROW(exc)    printf("Aborting after exception \"%s\"\n",                 \
								 string_cstrC(RET_VAL(object_exec(exc, SYM(to_s), 0))));     \
								 abort()
	#define RET_VAL(ret)  ret
	#define RET_EXC(ret)  0
	
	#define CALL(retvar, func) retvar = func
#endif

#define ARG(n)     array_get_elementC(args, n)

#define METHOD(class, name)                                                          \
ret_t class##_##name(object_t self, object_t closure, object_t args)

#define METHOD_Q(class, name)                                                        \
ret_t class##_##name##_q(object_t self, object_t closure, object_t args)

//	assert(OBJ_TYPE(self) == OBJ_BOOL);                                               
// assert(OBJ_VALID(other));                                                         
#define METHOD_OP(class, name, ret, exec)                                            \
METHOD(class, name) {                                                                \
	object_t other = array_get_elementC(args, 0);                                     \
	RET((ret)(exec));                                                                 \
}
			
// #define CALL_METHOD(retvar, object, method, params)    \
// CALL(retvar, object_exec(object, SYM(method), params))

// TODO; det här är ju ganska onödigt... det invaliderar ju callsiten
//       varje gång! __t_callsite gör det. 

#define CALL_METHOD(object, method, params)   ({                    \
    static callsite_t cs;                                                   \
    __t_callsite(&cs, SYM(method), object, params);                         \
    ret_t ret = __t_call(&cs, object);                                     \
    if (unlikely((long)RET_EXC(ret)))                            \
      	return ret;                                                        \
    RET_VAL(ret);                                                           \
})


#define BEGIN_MUTEX_CACHE(proto, mutex)                                              \
if (unlikely(!proto)) {                                                              \
	pthread_mutex_lock(&mutex);                                                       \
	if (!proto) {
		
#define END_MUTEX_CACHE(proto, mutex)                                                \
	}                                                                                 \
	pthread_mutex_unlock(&mutex);                                                     \
}

// REG_METHOD -- null-closure
#define REG_METHOD(target, type, name)                                               \
object_set_slot(target, SYM(name), closure_object_null(type##_##name), 0)

#define REG_METHOD_Q(target, type, name)                                             \
object_set_slot(target, name "?", closure_object_null(type##_##name##_q), 0)


#endif /* end of include guard: LIBTHORN_OBJECT_BUILDER_H_HRD12YRL */
