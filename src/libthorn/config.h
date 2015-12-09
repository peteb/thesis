/*
 * $Id: config.h 1878 2010-07-07 14:34:47Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_CONFIG_H_E2O4AN3O
#define LIBTHORN_CONFIG_H_E2O4AN3O

// #define PRINT_DEBUG
#define EH_MRV                      //< use multiple return values for EH?
#define SYM_ADDRESS                 //< use symbol addresses for symbols?
#define INLINE_OBJECTS

#ifndef _DEBUG
#ifdef PRINT_DEBUG
#define _DEBUG(...) _DEBUG_NP("*** " __VA_ARGS__)
#define _DEBUG_NP(...) printf(__VA_ARGS__)
#else
#define _DEBUG(...)
#define _DEBUG_NP(...)
#endif
#endif  // !_DEBUG


#ifndef ABS
#define ABS(x) ((x) > (0) ? (x) : -(x))
#endif

#ifndef MAX
#define MAX(x, y) ((x) > (y) ? (x) : (y))
#endif

#ifndef MIN
#define MIN(x, y) ((x) < (y) ? (x) : (y))
#endif

#define CLAMP(x, s, e) MIN(MAX((x), (s)), (e))

#define likely(x)       __builtin_expect((x),1)
#define unlikely(x)     __builtin_expect((x),0)
#define unreachable 	   __builtin_unreachable()
#define weak            __attribute__((weak))

#endif /* end of include guard: LIBTHORN_CONFIG_H_E2O4AN3O */
