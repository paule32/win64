	.file	"mem.cc"
	.text
	.p2align 4,,15
	.globl	_Znwy
_Znwy:
.LFB6003:
	movl	$4, %r9d
	movl	$12288, %r8d
	movq	%rcx, %rdx
	xorl	%ecx, %ecx
jmp *__imp_VirtualAlloc(%rip)
ret
	.p2align 4,,15
	.globl	_Znay
_Znay:
.LFB6012:
	jmp	_Znwy
	.section .rdata,"dr"
.LC0:
	.ascii "Error\0"
	.align 8
.LC1:
	.ascii "internal memory release error.\0"
	.text
	.p2align 4,,15
	.globl	_ZdlPv
_ZdlPv:
.LFB6005:
	subq	$40, %rsp
	xorl	%edx, %edx
	movl	$32768, %r8d
	call	*__imp_VirtualFree(%rip)
	testl	%eax, %eax
	je	.L6
	addq	$40, %rsp
	ret
.L6:
	leaq	.LC0(%rip), %r8
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	leaq	.LC1(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	call	*__imp_GetLastError(%rip)
	movl	%eax, %ecx
	call	*__imp_ExitProcess(%rip)
	nop
	.p2align 4,,15
	.globl	_ZdaPv
_ZdaPv:
.LFB6014:
	jmp	_ZdlPv
	.p2align 4,,15
	.globl	_Z9LazMemSetPviy
_Z9LazMemSetPviy:
.LFB6007:
	testq	%r8, %r8
	movq	%rcx, %rax
	movq	%rcx, %r9
	leaq	(%rcx,%r8), %r10
	je	.L14
	.p2align 4,,10
.L10:
	addq	$1, %r9
	movb	%dl, -1(%r9)
	cmpq	%r10, %r9
	jne	.L10
.L14:
	ret
	.p2align 4,,15
	.globl	_Z9LazMemCpyPvPKvy
_Z9LazMemCpyPvPKvy:
.LFB6009:
	testq	%r8, %r8
	movq	%rcx, %rax
	je	.L16
	xorl	%r9d, %r9d
	.p2align 4,,10
.L17:
	movzbl	(%rdx,%r9), %r10d
	movb	%r10b, (%rax,%r9)
	addq	$1, %r9
	cmpq	%r9, %r8
	jne	.L17
.L16:
	ret
	.p2align 4,,15
	.globl	_Z10LazMemMovePvPKvy
_Z10LazMemMovePvPKvy:
.LFB6010:
	leaq	-1(%r8), %r9
	cmpq	%rdx, %rcx
	movq	%rcx, %rax
	ja	.L23
	xorl	%r9d, %r9d
	testq	%r8, %r8
	je	.L29
	.p2align 4,,10
.L24:
	movzbl	(%rdx,%r9), %ecx
	movb	%cl, (%rax,%r9)
	addq	$1, %r9
	cmpq	%r9, %r8
	jne	.L24
.L29:
	ret
	.p2align 4,,10
.L23:
	testq	%r8, %r8
	je	.L29
	.p2align 4,,10
.L26:
	movzbl	(%rdx,%r9), %ecx
	movb	%cl, (%rax,%r9)
	subq	$1, %r9
	cmpq	$-1, %r9
	jne	.L26
	jmp	.L29
