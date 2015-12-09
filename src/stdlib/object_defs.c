/*
 * $Id$
 * thorn-llvm
 *
 * (c) Copyright 2010 Peter Backman. All Rights Reserved. 
 */

extern void * object_alloc();
extern void * object_exec(void * object, const char * name);


// Fråga: hur använder man standardbiblioteket i Thorn? #include-aktigt, eller
// gissar den?
// Fråga: språkprimitiver, hur används de? Antar att de måste gissas, eftersom
// det inte står någonstans i språket att de ska användas.
// Injicera inte primitivkod i compilation unit, ska nog ske vid länkning,
// stdlib likaså.
// Eller? Kanske kan informera llvm om att den ska ersätta implementationen.
// Fråga: ska stdlib implementera primitiver? eller är det typ, libthorn.
//   eller är libthorn stdlib + primitiver?

// primitiver: object_alloc, object_exec, integer_create, ...
// stdlib: print, exit

