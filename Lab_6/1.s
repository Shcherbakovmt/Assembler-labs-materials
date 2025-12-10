	.file	"1.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZN22MyClassWithStrangeNameC2Ev,"axG",@progbits,_ZN22MyClassWithStrangeNameC5Ev,comdat
	.align 2
	.weak	_ZN22MyClassWithStrangeNameC2Ev
	.type	_ZN22MyClassWithStrangeNameC2Ev, @function
_ZN22MyClassWithStrangeNameC2Ev:
.LFB1991:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$10, (%rax)
	movq	-8(%rbp), %rax
	movl	$20, 4(%rax)
	movq	-8(%rbp), %rax
	movl	$30, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$40, 12(%rax)
	movq	-8(%rbp), %rax
	movl	$50, 16(%rax)
	movq	-8(%rbp), %rax
	movl	$1, 20(%rax)
	movq	-8(%rbp), %rax
	movl	$2, 24(%rax)
	movq	-8(%rbp), %rax
	movl	$3, 28(%rax)
	movq	-8(%rbp), %rax
	movl	$4, 32(%rax)
	movq	-8(%rbp), %rax
	movl	$5, 36(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1991:
	.size	_ZN22MyClassWithStrangeNameC2Ev, .-_ZN22MyClassWithStrangeNameC2Ev
	.weak	_ZN22MyClassWithStrangeNameC1Ev
	.set	_ZN22MyClassWithStrangeNameC1Ev,_ZN22MyClassWithStrangeNameC2Ev
	.section	.text._ZN22MyClassWithStrangeNameC2Eiiiii,"axG",@progbits,_ZN22MyClassWithStrangeNameC5Eiiiii,comdat
	.align 2
	.weak	_ZN22MyClassWithStrangeNameC2Eiiiii
	.type	_ZN22MyClassWithStrangeNameC2Eiiiii, @function
_ZN22MyClassWithStrangeNameC2Eiiiii:
.LFB1994:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 4(%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 16(%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 20(%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 24(%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 28(%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 32(%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 36(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1994:
	.size	_ZN22MyClassWithStrangeNameC2Eiiiii, .-_ZN22MyClassWithStrangeNameC2Eiiiii
	.weak	_ZN22MyClassWithStrangeNameC1Eiiiii
	.set	_ZN22MyClassWithStrangeNameC1Eiiiii,_ZN22MyClassWithStrangeNameC2Eiiiii
	.section	.text._ZN22MyClassWithStrangeName20metod_of_summ_publicEv,"axG",@progbits,_ZN22MyClassWithStrangeName20metod_of_summ_publicEv,comdat
	.align 2
	.weak	_ZN22MyClassWithStrangeName20metod_of_summ_publicEv
	.type	_ZN22MyClassWithStrangeName20metod_of_summ_publicEv, @function
_ZN22MyClassWithStrangeName20metod_of_summ_publicEv:
.LFB1996:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	20(%rax), %edx
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	28(%rax), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	32(%rax), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	36(%rax), %eax
	addl	%edx, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1996:
	.size	_ZN22MyClassWithStrangeName20metod_of_summ_publicEv, .-_ZN22MyClassWithStrangeName20metod_of_summ_publicEv
	.section	.text._ZN22MyClassWithStrangeNameD2Ev,"axG",@progbits,_ZN22MyClassWithStrangeNameD5Ev,comdat
	.align 2
	.weak	_ZN22MyClassWithStrangeNameD2Ev
	.type	_ZN22MyClassWithStrangeNameD2Ev, @function
_ZN22MyClassWithStrangeNameD2Ev:
.LFB1998:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1998:
	.size	_ZN22MyClassWithStrangeNameD2Ev, .-_ZN22MyClassWithStrangeNameD2Ev
	.weak	_ZN22MyClassWithStrangeNameD1Ev
	.set	_ZN22MyClassWithStrangeNameD1Ev,_ZN22MyClassWithStrangeNameD2Ev
	.globl	global_object_base_constr
	.bss
	.align 32
	.type	global_object_base_constr, @object
	.size	global_object_base_constr, 40
global_object_base_constr:
	.zero	40
	.globl	global_object_nonebase_constr
	.align 32
	.type	global_object_nonebase_constr, @object
	.size	global_object_nonebase_constr, 40
global_object_nonebase_constr:
	.zero	40
	.text
	.globl	main
	.type	main, @function
main:
.LFB2000:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	global_object_base_constr(%rip), %rax
	movq	%rax, %rdi
	call	_ZN22MyClassWithStrangeName20metod_of_summ_publicEv
	movl	%eax, %esi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEi@PLT
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2000:
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0v, @function
_Z41__static_initialization_and_destruction_0v:
.LFB2507:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	global_object_base_constr(%rip), %rax
	movq	%rax, %rdi
	call	_ZN22MyClassWithStrangeNameC1Ev
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	global_object_base_constr(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZN22MyClassWithStrangeNameD1Ev(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
	movl	$0, %r9d
	movl	$0, %r8d
	movl	$0, %ecx
	movl	$1, %edx
	movl	$10, %esi
	leaq	global_object_nonebase_constr(%rip), %rax
	movq	%rax, %rdi
	call	_ZN22MyClassWithStrangeNameC1Eiiiii
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	global_object_nonebase_constr(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZN22MyClassWithStrangeNameD1Ev(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2507:
	.size	_Z41__static_initialization_and_destruction_0v, .-_Z41__static_initialization_and_destruction_0v
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.text
	.type	_GLOBAL__sub_I_global_object_base_constr, @function
_GLOBAL__sub_I_global_object_base_constr:
.LFB2508:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_Z41__static_initialization_and_destruction_0v
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2508:
	.size	_GLOBAL__sub_I_global_object_base_constr, .-_GLOBAL__sub_I_global_object_base_constr
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_global_object_base_constr
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
