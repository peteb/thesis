/*
 * $Id: llvm_gc.h 901 2010-04-03 00:01:03Z ptr $
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

#ifndef LIBTHORN_LLVM_GC_H_1XYVY6NK
#define LIBTHORN_LLVM_GC_H_1XYVY6NK

#define GC_ROOT __attribute__((gcroot))

typedef unsigned int int32_t;

struct FrameMap {
    int32_t NumRoots;
    int32_t NumMeta;  
    const void *Meta[0];  
};                             
                               
struct StackEntry {  
    struct StackEntry *Next; 
    const struct FrameMap *Map;
    void *Roots[0];            
};

struct StackEntry *llvm_gc_root_chain;

#endif /* end of include guard: LIBTHORN_LLVM_GC_H_1XYVY6NK */
