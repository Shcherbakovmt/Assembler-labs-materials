	.file	"5.c"
	.text
	.globl	Global_Point
	.bss
	.align 32
	.type	Global_Point, @object
	.size	Global_Point, 400000
Global_Point:
	.zero	400000
	.text
	.globl	function
	.type	function, @function
function:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	leal	-397312(%esp), %eax
.LPSRL0:
	subl	$4096, %esp
	orl	$0, (%esp)
	cmpl	%eax, %esp
	jne	.LPSRL0
	subl	$2724, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movl	%eax, -400028(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	leal	-400012(%ebp), %eax
	leal	12(%ebp), %edx
	movl	$400000, %ecx
	subl	$4, %esp
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	memcpy@PLT
	addl	$16, %esp
	movl	-400028(%ebp), %eax
	movl	%eax, %edx
	leal	-400012(%ebp), %eax
	movl	$400000, %ecx
	subl	$4, %esp
	pushl	%ecx
	pushl	%eax
	pushl	%edx
	call	memcpy@PLT
	addl	$16, %esp
	movl	-12(%ebp), %eax
	subl	%gs:20, %eax
	je	.L3
	call	__stack_chk_fail_local
.L3:
	movl	-400028(%ebp), %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret	$4
	.cfi_endproc
.LFE0:
	.size	function, .-function
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%esi
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x74,0x6
	.cfi_escape 0x10,0x6,0x2,0x75,0x7c
	.cfi_escape 0x10,0x3,0x2,0x75,0x78
	leal	-397312(%esp), %eax
.LPSRL1:
	subl	$4096, %esp
	orl	$0, (%esp)
	cmpl	%eax, %esp
	jne	.LPSRL1
	subl	$2716, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	%gs:20, %edx
	movl	%edx, -28(%ebp)
	xorl	%edx, %edx
	movl	$27, Global_Point@GOTOFF(%eax)
	leal	-400028(%ebp), %esi
	subl	$12, %esp
	subl	$400000, %esp
	movl	%esp, %edx
	movl	%edx, %ecx
	leal	Global_Point@GOTOFF(%eax), %edx
	movl	$400000, %ebx
	subl	$8, %esp
	pushl	%ebx
	pushl	%edx
	pushl	%ecx
	movl	%eax, %ebx
	call	memcpy@PLT
	addl	$20, %esp
	pushl	%esi
	call	function
	addl	$400012, %esp
	nop
	movl	-28(%ebp), %eax
	subl	%gs:20, %eax
	je	.L5
	call	__stack_chk_fail_local
.L5:
	leal	-12(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB2:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE2:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB3:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE3:
	.hidden	__stack_chk_fail_local
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
