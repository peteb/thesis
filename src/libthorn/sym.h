/*
 * $Id: sym.h 1396 2010-05-07 16:01:18Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_SYM_H_JMUSY2WA
#define LIBTHORN_SYM_H_JMUSY2WA

#include "config.h"

#ifdef SYM_ADDRESS
	typedef int * sym_t;
	#define GLOBAL_SYM(nam) weak int __sym_##nam
	#define SYM(nam) &__sym_##nam
	#define SYM_CMP(s1, s2) (s2 == s1)
	#define SYM_FMT "%p"
#else
	typedef char * sym_t;
	#define GLOBAL_SYM(nam)
	#define SYM(nam) #nam
	#define SYM_CMP(s1, s2) ((s1) && (s2) && strcmp((s1), (s2)) == 0)
	#define SYM_FMT "%s"
#endif

#endif /* end of include guard: LIBTHORN_SYM_H_JMUSY2WA */
