	.file	"3_static.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata
	.align 8
.LC0:
	.string	"StaticDemo constructor, instance_id="
.LC1:
	.string	"\n"
#NO_APP
	.section	.text._ZN10StaticDemoC2Ev,"axG",@progbits,_ZN10StaticDemoC5Ev,comdat
	.align 2
	.weak	_ZN10StaticDemoC2Ev
	.type	_ZN10StaticDemoC2Ev, @function
_ZN10StaticDemoC2Ev:
.LFB1989:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	_ZN10StaticDemo14global_counterE(%rip), %eax
	addl	$1, %eax
	movl	%eax, _ZN10StaticDemo14global_counterE(%rip)
	movl	_ZN10StaticDemo14global_counterE(%rip), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1989:
	.size	_ZN10StaticDemoC2Ev, .-_ZN10StaticDemoC2Ev
	.weak	_ZN10StaticDemoC1Ev
	.set	_ZN10StaticDemoC1Ev,_ZN10StaticDemoC2Ev
	.section	.rodata
	.align 8
.LC2:
	.string	"StaticDemo destructor, instance_id="
	.section	.text._ZN10StaticDemoD2Ev,"axG",@progbits,_ZN10StaticDemoD5Ev,comdat
	.align 2
	.weak	_ZN10StaticDemoD2Ev
	.type	_ZN10StaticDemoD2Ev, @function
_ZN10StaticDemoD2Ev:
.LFB1992:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1992
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1992:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN10StaticDemoD2Ev,"aG",@progbits,_ZN10StaticDemoD5Ev,comdat
.LLSDA1992:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1992-.LLSDACSB1992
.LLSDACSB1992:
.LLSDACSE1992:
	.section	.text._ZN10StaticDemoD2Ev,"axG",@progbits,_ZN10StaticDemoD5Ev,comdat
	.size	_ZN10StaticDemoD2Ev, .-_ZN10StaticDemoD2Ev
	.weak	_ZN10StaticDemoD1Ev
	.set	_ZN10StaticDemoD1Ev,_ZN10StaticDemoD2Ev
	.section	.rodata
.LC3:
	.string	"static_method: counter="
	.section	.text._ZN10StaticDemo13static_methodEv,"axG",@progbits,_ZN10StaticDemo13static_methodEv,comdat
	.weak	_ZN10StaticDemo13static_methodEv
	.type	_ZN10StaticDemo13static_methodEv, @function
_ZN10StaticDemo13static_methodEv:
.LFB1994:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	_ZN10StaticDemo14global_counterE(%rip), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1994:
	.size	_ZN10StaticDemo13static_methodEv, .-_ZN10StaticDemo13static_methodEv
	.section	.rodata
	.align 8
.LC4:
	.string	"non_static_method: instance_id="
	.section	.text._ZN10StaticDemo17non_static_methodEv,"axG",@progbits,_ZN10StaticDemo17non_static_methodEv,comdat
	.align 2
	.weak	_ZN10StaticDemo17non_static_methodEv
	.type	_ZN10StaticDemo17non_static_methodEv, @function
_ZN10StaticDemo17non_static_methodEv:
.LFB1995:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1995:
	.size	_ZN10StaticDemo17non_static_methodEv, .-_ZN10StaticDemo17non_static_methodEv
	.globl	_ZN10StaticDemo14global_counterE
	.bss
	.align 4
	.type	_ZN10StaticDemo14global_counterE, @object
	.size	_ZN10StaticDemo14global_counterE, 4
_ZN10StaticDemo14global_counterE:
	.zero	4
	.text
	.globl	main
	.type	main, @function
main:
.LFB1996:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1996
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
.LEHB0:
	call	_ZN10StaticDemo13static_methodEv
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10StaticDemoC1Ev
.LEHE0:
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZN10StaticDemoC1Ev
.LEHE1:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
.LEHB2:
	call	_ZN10StaticDemo17non_static_methodEv
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10StaticDemo17non_static_methodEv
	call	_ZN10StaticDemo13static_methodEv
.LEHE2:
	movl	$0, %ebx
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10StaticDemoD1Ev
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10StaticDemoD1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	jmp	.L13
.L12:
	endbr64
	movq	%rax, %rbx
	leaq	-28(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10StaticDemoD1Ev
	jmp	.L8
.L11:
	endbr64
	movq	%rax, %rbx
.L8:
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN10StaticDemoD1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	movq	%rax, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L13:
	call	__stack_chk_fail@PLT
.L10:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1996:
	.section	.gcc_except_table,"a",@progbits
.LLSDA1996:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1996-.LLSDACSB1996
.LLSDACSB1996:
	.uleb128 .LEHB0-.LFB1996
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1996
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L11-.LFB1996
	.uleb128 0
	.uleb128 .LEHB2-.LFB1996
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L12-.LFB1996
	.uleb128 0
	.uleb128 .LEHB3-.LFB1996
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE1996:
	.text
	.size	main, .-main
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
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
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
