

	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 144
	.globl	_main
_main:                                                      ## @main
LBB1_0:                                                     ## %entry
	pushl	%edi
	pushl	%esi
	subl	$20, %esp
	call	___t_init
	call	_object_create
	movl	%eax, %esi
	call	_closure_object_place
	movl	%eax, %edi
	movl	%edi, (%esp)
	movl	$___closure, 4(%esp)
	call	_closure_set_fptrC
	movl	%edi, 16(%esp)
	movl	%edi, 8(%esp)
	movl	L___sym_main$non_lazy_ptr, %ecx
	movl	%ecx, 4(%esp)
	movl	%esi, (%esp)
	movl	$0, 12(%esp)
	call	_object_set_slot
	movl	L___lobby_map$non_lazy_ptr, %eax
	movl	%esi, (%eax)
	movl	%esi, 8(%esp)
	movl	36(%esp), %ecx
	movl	%ecx, 4(%esp)
	movl	32(%esp), %ecx
	movl	%ecx, (%esp)
	call	___t_start
	addl	$20, %esp
	popl	%esi
	popl	%edi
	ret


	.align	4, 144
___closure:                                                 ## @__closure
LBB2_0:                                                     ## %entry
	pushl	%esi
	subl	$24, %esp
	movl	$___unnamed_1, (%esp)
	call	_string_object
	movl	%eax, %esi
	movl	$0, (%esp)
	call	_array_object
	movl	%eax, 8(%esp)
	movl	L___sym_puts$non_lazy_ptr, %eax
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_object_exec
	movl	%eax, 20(%esp)
LBB2_1:                                                     ## %ret
	movl	20(%esp), %eax
	addl	$24, %esp
	popl	%esi
	ret
	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L___sym_puts$non_lazy_ptr:
	.indirect_symbol ___sym_puts
	.long	0
L___sym_main$non_lazy_ptr:
	.indirect_symbol ___sym_main
	.long	0
L___lobby_map$non_lazy_ptr:
	.indirect_symbol ___lobby_map
	.long	0
	.subsections_via_symbols
	.section	__DATA,__datacoal_nt,coalesced
	.globl ___lobby_map
	.weak_definition ___lobby_map
	.align	2
___lobby_map:                                               ## @__lobby_map
	.space	4
	.section	__TEXT,__cstring,cstring_literals
___unnamed_1:                                               ## @0
	.asciz	"Hello, world!"
	.section	__DATA,__datacoal_nt,coalesced
	.globl ___sym_puts
	.weak_definition ___sym_puts
	.align	2
___sym_puts:                                                ## @__sym_puts
	.space	4
	.globl ___sym_main
	.weak_definition ___sym_main
	.align	2
___sym_main:                                                ## @__sym_main
	.space	4

