	.file	"div.c"
	.text
	.globl	a
	.data
	.align 4
	.type	a, @object
	.size	a, 4
a:
	.long	50
	.globl	b
	.align 4
	.type	b, @object
	.size	b, 4
b:
	.long	75
	.globl	uint_1
	.align 4
	.type	uint_1, @object
	.size	uint_1, 4
uint_1:
	.long	150
	.globl	uint_2
	.align 4
	.type	uint_2, @object
	.size	uint_2, 4
uint_2:
	.long	200
	.globl	u_div
	.align 4
	.type	u_div, @object
	.size	u_div, 4
u_div:
	.long	100
	.globl	u_rem
	.align 4
	.type	u_rem, @object
	.size	u_rem, 4
u_rem:
	.long	300
	.globl	div
	.align 4
	.type	div, @object
	.size	div, 4
div:
	.long	400
	.globl	rem
	.align 4
	.type	rem, @object
	.size	rem, 4
rem:
	.long	500
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	uint_2(%rip), %eax
	movl	uint_1(%rip), %esi
	movl	$0, %edx
	divl	%esi
	movl	%eax, u_div(%rip)
	movl	uint_2(%rip), %eax
	movl	uint_1(%rip), %edi
	movl	$0, %edx
	divl	%edi
	movl	%edx, %ecx
	movl	%ecx, %eax
	movl	%eax, u_rem(%rip)
	movl	a(%rip), %eax
	movl	b(%rip), %esi
	cltd
	idivl	%esi
	movl	%eax, div(%rip)
	movl	a(%rip), %eax
	movl	b(%rip), %edi
	cltd
	idivl	%edi
	movl	%edx, %ecx
	movl	%ecx, %eax
	movl	%eax, rem(%rip)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
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
