	.file	"13_asm_sort.c"
	.text
	.globl	a
	.data
	.align 32
	.type	a, @object
	.size	a, 40
a:
	.long	1
	.long	10
	.long	2
	.long	5
	.long	3
	.long	7
	.long	4
	.long	9
	.long	8
	.long	6
	.globl	N
	.align 4
	.type	N, @object
	.size	N, 4
N:
	.long	10
	.globl	temp
	.bss
	.align 4
	.type	temp, @object
	.size	temp, 4
temp:
	.zero	4
	.globl	i
	.align 4
	.type	i, @object
	.size	i, 4
i:
	.zero	4
	.globl	j
	.align 4
	.type	j, @object
	.size	j, 4
j:
	.zero	4
	.section	.rodata
.LC0:
	.string	"%d"
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
	subq	$16, %rsp
#APP
# 12 "13_asm_sort.c" 1
	For_i: 
   movl i(%rip), %eax 
   movl N(%rip), %ebx 
   cmpl %eax, %ebx 
   addl $1, %eax 
   movl %eax, i(%rip) 
   jg For_j 
For_j: 
   movl    j(%rip), %eax 
   cltq    
   leaq    0(, %rax, 4), %rdx 
   leaq    a(%rip), %rax 
   movl    (%rdx,%rax), %ebx 
   movl    j(%rip), %eax 
   addl    $1, %eax 
   cltq    
   leaq    0(, %rax, 4), %rdx 
   leaq    a(%rip), %rax 
   movl    (%rdx,%rax), %ecx 
   cmpl    %ebx, %ecx 
   jl      Swap 
   movl    j(%rip), %eax 
   addl    $1, %eax 
   movl    %eax, j(%rip) 
   jmp     Check_j_iteration 
For_j_after_swap: 
   movl    j(%rip), %eax 
   addl    $1, %eax 
   movl    %eax, j(%rip) 
   jmp     Check_j_iteration 
Check_j_iteration: 
   movl    j(%rip), %eax 
   movl    N(%rip), %ebx 
   subl    $1, %ebx 
   cmpl    %eax, %ebx 
   jg      For_j 
   jmp     Check_i_iteration 
Check_i_iteration: 
   movl    i(%rip), %eax 
   movl    N(%rip), %ebx 
   cmpl    %eax, %ebx 
   jg      For_i 
   jmp     Final 
Swap:      
   movl    %ebx, temp(%rip) 
   movl    j(%rip), %eax 
   cltq    
   leaq    0(, %rax, 4), %rdx 
   leaq    a(%rip), %rax 
   movl    %ecx, (%rdx,%rax) 
   movl    j(%rip), %eax 
   addl    $1, %eax 
   cltq    
   leaq    0(, %rax, 4), %rdx 
   leaq    a(%rip), %rax 
   movl    temp(%rip) ,(%rdx,%rax) 
   jmp     For_j_after_swap 
Final: 

# 0 "" 2
#NO_APP
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	i(%rip), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
.L2:
	movl	N(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L3
	movl	$0, %eax
	leave
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
