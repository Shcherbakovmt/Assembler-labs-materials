	.file	"2.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
	.section	.rodata
.LC0:
	.string	"Animal constructor: "
.LC1:
	.string	" age="
.LC2:
	.string	"\n"
#NO_APP
	.section	.text._ZN6AnimalC2Ei,"axG",@progbits,_ZN6AnimalC5Ei,comdat
	.align 2
	.weak	_ZN6AnimalC2Ei
	.type	_ZN6AnimalC2Ei, @function
_ZN6AnimalC2Ei:
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
	movl	%esi, -12(%rbp)
	leaq	16+_ZTV6Animal(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 8(%rax)
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1989:
	.size	_ZN6AnimalC2Ei, .-_ZN6AnimalC2Ei
	.weak	_ZN6AnimalC1Ei
	.set	_ZN6AnimalC1Ei,_ZN6AnimalC2Ei
	.section	.rodata
.LC3:
	.string	"Animal destructor\n"
	.section	.text._ZN6AnimalD2Ev,"axG",@progbits,_ZN6AnimalD5Ev,comdat
	.align 2
	.weak	_ZN6AnimalD2Ev
	.type	_ZN6AnimalD2Ev, @function
_ZN6AnimalD2Ev:
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
	leaq	16+_ZTV6Animal(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1992:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN6AnimalD2Ev,"aG",@progbits,_ZN6AnimalD5Ev,comdat
.LLSDA1992:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1992-.LLSDACSB1992
.LLSDACSB1992:
.LLSDACSE1992:
	.section	.text._ZN6AnimalD2Ev,"axG",@progbits,_ZN6AnimalD5Ev,comdat
	.size	_ZN6AnimalD2Ev, .-_ZN6AnimalD2Ev
	.weak	_ZN6AnimalD1Ev
	.set	_ZN6AnimalD1Ev,_ZN6AnimalD2Ev
	.section	.text._ZN6AnimalD0Ev,"axG",@progbits,_ZN6AnimalD5Ev,comdat
	.align 2
	.weak	_ZN6AnimalD0Ev
	.type	_ZN6AnimalD0Ev, @function
_ZN6AnimalD0Ev:
.LFB1994:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6AnimalD1Ev
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1994:
	.size	_ZN6AnimalD0Ev, .-_ZN6AnimalD0Ev
	.section	.rodata
.LC4:
	.string	"Animal sound\n"
	.section	.text._ZNK6Animal10make_soundEv,"axG",@progbits,_ZNK6Animal10make_soundEv,comdat
	.align 2
	.weak	_ZNK6Animal10make_soundEv
	.type	_ZNK6Animal10make_soundEv, @function
_ZNK6Animal10make_soundEv:
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
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1995:
	.size	_ZNK6Animal10make_soundEv, .-_ZNK6Animal10make_soundEv
	.section	.rodata
.LC5:
	.string	"Predator constructor: teeth="
	.section	.text._ZN8PredatorC2Eii,"axG",@progbits,_ZN8PredatorC5Eii,comdat
	.align 2
	.weak	_ZN8PredatorC2Eii
	.type	_ZN8PredatorC2Eii, @function
_ZN8PredatorC2Eii:
.LFB1997:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1997
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
.LEHB0:
	call	_ZN6AnimalC2Ei
.LEHE0:
	leaq	16+_ZTV8Predator(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	%edx, 12(%rax)
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB1:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE1:
	jmp	.L8
.L7:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6AnimalD2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L8:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1997:
	.section	.gcc_except_table._ZN8PredatorC2Eii,"aG",@progbits,_ZN8PredatorC5Eii,comdat
.LLSDA1997:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1997-.LLSDACSB1997
.LLSDACSB1997:
	.uleb128 .LEHB0-.LFB1997
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1997
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L7-.LFB1997
	.uleb128 0
	.uleb128 .LEHB2-.LFB1997
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1997:
	.section	.text._ZN8PredatorC2Eii,"axG",@progbits,_ZN8PredatorC5Eii,comdat
	.size	_ZN8PredatorC2Eii, .-_ZN8PredatorC2Eii
	.weak	_ZN8PredatorC1Eii
	.set	_ZN8PredatorC1Eii,_ZN8PredatorC2Eii
	.section	.rodata
.LC6:
	.string	"Predator destructor\n"
	.section	.text._ZN8PredatorD2Ev,"axG",@progbits,_ZN8PredatorD5Ev,comdat
	.align 2
	.weak	_ZN8PredatorD2Ev
	.type	_ZN8PredatorD2Ev, @function
_ZN8PredatorD2Ev:
.LFB2000:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2000
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTV8Predator(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN6AnimalD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2000:
	.section	.gcc_except_table._ZN8PredatorD2Ev,"aG",@progbits,_ZN8PredatorD5Ev,comdat
.LLSDA2000:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2000-.LLSDACSB2000
.LLSDACSB2000:
.LLSDACSE2000:
	.section	.text._ZN8PredatorD2Ev,"axG",@progbits,_ZN8PredatorD5Ev,comdat
	.size	_ZN8PredatorD2Ev, .-_ZN8PredatorD2Ev
	.weak	_ZN8PredatorD1Ev
	.set	_ZN8PredatorD1Ev,_ZN8PredatorD2Ev
	.section	.text._ZN8PredatorD0Ev,"axG",@progbits,_ZN8PredatorD5Ev,comdat
	.align 2
	.weak	_ZN8PredatorD0Ev
	.type	_ZN8PredatorD0Ev, @function
_ZN8PredatorD0Ev:
.LFB2002:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8PredatorD1Ev
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2002:
	.size	_ZN8PredatorD0Ev, .-_ZN8PredatorD0Ev
	.section	.rodata
.LC7:
	.string	"Predator sound\n"
	.section	.text._ZNK8Predator10make_soundEv,"axG",@progbits,_ZNK8Predator10make_soundEv,comdat
	.align 2
	.weak	_ZNK8Predator10make_soundEv
	.type	_ZNK8Predator10make_soundEv, @function
_ZNK8Predator10make_soundEv:
.LFB2003:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2003:
	.size	_ZNK8Predator10make_soundEv, .-_ZNK8Predator10make_soundEv
	.section	.rodata
.LC8:
	.string	"Cat constructor: lives="
	.section	.text._ZN3CatC2Eiii,"axG",@progbits,_ZN3CatC5Eiii,comdat
	.align 2
	.weak	_ZN3CatC2Eiii
	.type	_ZN3CatC2Eiii, @function
_ZN3CatC2Eiii:
.LFB2005:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2005
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rax
	movl	-32(%rbp), %edx
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZN8PredatorC2Eii
.LEHE3:
	leaq	16+_ZTV3Cat(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	movl	-36(%rbp), %edx
	movl	%edx, 16(%rax)
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
.LEHB4:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movl	16(%rax), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE4:
	jmp	.L15
.L14:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8PredatorD2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB5:
	call	_Unwind_Resume@PLT
.LEHE5:
.L15:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2005:
	.section	.gcc_except_table._ZN3CatC2Eiii,"aG",@progbits,_ZN3CatC5Eiii,comdat
.LLSDA2005:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2005-.LLSDACSB2005
.LLSDACSB2005:
	.uleb128 .LEHB3-.LFB2005
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2005
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L14-.LFB2005
	.uleb128 0
	.uleb128 .LEHB5-.LFB2005
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE2005:
	.section	.text._ZN3CatC2Eiii,"axG",@progbits,_ZN3CatC5Eiii,comdat
	.size	_ZN3CatC2Eiii, .-_ZN3CatC2Eiii
	.weak	_ZN3CatC1Eiii
	.set	_ZN3CatC1Eiii,_ZN3CatC2Eiii
	.section	.rodata
.LC9:
	.string	"Cat destructor\n"
	.section	.text._ZN3CatD2Ev,"axG",@progbits,_ZN3CatD5Ev,comdat
	.align 2
	.weak	_ZN3CatD2Ev
	.type	_ZN3CatD2Ev, @function
_ZN3CatD2Ev:
.LFB2008:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2008
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTV3Cat(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN8PredatorD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2008:
	.section	.gcc_except_table._ZN3CatD2Ev,"aG",@progbits,_ZN3CatD5Ev,comdat
.LLSDA2008:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2008-.LLSDACSB2008
.LLSDACSB2008:
.LLSDACSE2008:
	.section	.text._ZN3CatD2Ev,"axG",@progbits,_ZN3CatD5Ev,comdat
	.size	_ZN3CatD2Ev, .-_ZN3CatD2Ev
	.weak	_ZN3CatD1Ev
	.set	_ZN3CatD1Ev,_ZN3CatD2Ev
	.section	.text._ZN3CatD0Ev,"axG",@progbits,_ZN3CatD5Ev,comdat
	.align 2
	.weak	_ZN3CatD0Ev
	.type	_ZN3CatD0Ev, @function
_ZN3CatD0Ev:
.LFB2010:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3CatD1Ev
	movq	-8(%rbp), %rax
	movl	$24, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2010:
	.size	_ZN3CatD0Ev, .-_ZN3CatD0Ev
	.section	.rodata
.LC10:
	.string	"Cat sound: meow\n"
	.section	.text._ZNK3Cat10make_soundEv,"axG",@progbits,_ZNK3Cat10make_soundEv,comdat
	.align 2
	.weak	_ZNK3Cat10make_soundEv
	.type	_ZNK3Cat10make_soundEv, @function
_ZNK3Cat10make_soundEv:
.LFB2011:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC10(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2011:
	.size	_ZNK3Cat10make_soundEv, .-_ZNK3Cat10make_soundEv
	.section	.rodata
.LC11:
	.string	"Cat plays\n"
	.section	.text._ZNK3Cat4playEv,"axG",@progbits,_ZNK3Cat4playEv,comdat
	.align 2
	.weak	_ZNK3Cat4playEv
	.type	_ZNK3Cat4playEv, @function
_ZNK3Cat4playEv:
.LFB2012:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2012:
	.size	_ZNK3Cat4playEv, .-_ZNK3Cat4playEv
	.text
	.globl	main
	.type	main, @function
main:
.LFB2013:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2013
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movl	$9, %ecx
	movl	$30, %edx
	movl	$3, %esi
	movq	%rax, %rdi
.LEHB6:
	call	_ZN3CatC1Eiii
.LEHE6:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
.LEHB7:
	call	_ZNK3Cat10make_soundEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK3Cat4playEv
.LEHE7:
	movl	$0, %ebx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3CatD1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L24
	jmp	.L26
.L25:
	endbr64
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3CatD1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L23
	call	__stack_chk_fail@PLT
.L23:
	movq	%rax, %rdi
.LEHB8:
	call	_Unwind_Resume@PLT
.LEHE8:
.L26:
	call	__stack_chk_fail@PLT
.L24:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2013:
	.section	.gcc_except_table,"a",@progbits
.LLSDA2013:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2013-.LLSDACSB2013
.LLSDACSB2013:
	.uleb128 .LEHB6-.LFB2013
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB2013
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L25-.LFB2013
	.uleb128 0
	.uleb128 .LEHB8-.LFB2013
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE2013:
	.text
	.size	main, .-main
	.weak	_ZTV3Cat
	.section	.data.rel.ro.local._ZTV3Cat,"awG",@progbits,_ZTV3Cat,comdat
	.align 8
	.type	_ZTV3Cat, @object
	.size	_ZTV3Cat, 40
_ZTV3Cat:
	.quad	0
	.quad	_ZTI3Cat
	.quad	_ZN3CatD1Ev
	.quad	_ZN3CatD0Ev
	.quad	_ZNK3Cat10make_soundEv
	.weak	_ZTV8Predator
	.section	.data.rel.ro.local._ZTV8Predator,"awG",@progbits,_ZTV8Predator,comdat
	.align 8
	.type	_ZTV8Predator, @object
	.size	_ZTV8Predator, 40
_ZTV8Predator:
	.quad	0
	.quad	_ZTI8Predator
	.quad	_ZN8PredatorD1Ev
	.quad	_ZN8PredatorD0Ev
	.quad	_ZNK8Predator10make_soundEv
	.weak	_ZTV6Animal
	.section	.data.rel.ro.local._ZTV6Animal,"awG",@progbits,_ZTV6Animal,comdat
	.align 8
	.type	_ZTV6Animal, @object
	.size	_ZTV6Animal, 40
_ZTV6Animal:
	.quad	0
	.quad	_ZTI6Animal
	.quad	_ZN6AnimalD1Ev
	.quad	_ZN6AnimalD0Ev
	.quad	_ZNK6Animal10make_soundEv
	.weak	_ZTI3Cat
	.section	.data.rel.ro._ZTI3Cat,"awG",@progbits,_ZTI3Cat,comdat
	.align 8
	.type	_ZTI3Cat, @object
	.size	_ZTI3Cat, 24
_ZTI3Cat:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS3Cat
	.quad	_ZTI8Predator
	.weak	_ZTS3Cat
	.section	.rodata._ZTS3Cat,"aG",@progbits,_ZTS3Cat,comdat
	.type	_ZTS3Cat, @object
	.size	_ZTS3Cat, 5
_ZTS3Cat:
	.string	"3Cat"
	.weak	_ZTI8Predator
	.section	.data.rel.ro._ZTI8Predator,"awG",@progbits,_ZTI8Predator,comdat
	.align 8
	.type	_ZTI8Predator, @object
	.size	_ZTI8Predator, 24
_ZTI8Predator:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS8Predator
	.quad	_ZTI6Animal
	.weak	_ZTS8Predator
	.section	.rodata._ZTS8Predator,"aG",@progbits,_ZTS8Predator,comdat
	.align 8
	.type	_ZTS8Predator, @object
	.size	_ZTS8Predator, 10
_ZTS8Predator:
	.string	"8Predator"
	.weak	_ZTI6Animal
	.section	.data.rel.ro._ZTI6Animal,"awG",@progbits,_ZTI6Animal,comdat
	.align 8
	.type	_ZTI6Animal, @object
	.size	_ZTI6Animal, 16
_ZTI6Animal:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS6Animal
	.weak	_ZTS6Animal
	.section	.rodata._ZTS6Animal,"aG",@progbits,_ZTS6Animal,comdat
	.align 8
	.type	_ZTS6Animal, @object
	.size	_ZTS6Animal, 8
_ZTS6Animal:
	.string	"6Animal"
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
