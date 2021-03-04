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
.LFB6015:
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
.LFB6007:
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
	.globl	_ZdlPvy
_ZdlPvy:
.LFB6005:
	jmp	_ZdlPv
	.p2align 4,,15
	.globl	_ZdaPvy
_ZdaPvy:
.LFB6017:
	jmp	_ZdlPv
	.p2align 4,,15
	.globl	_ZdaPv
_ZdaPv:
.LFB6008:
	subq	$40, %rsp
	xorl	%edx, %edx
	movl	$32768, %r8d
	call	*__imp_VirtualFree(%rip)
	testl	%eax, %eax
	je	.L11
	addq	$40, %rsp
	ret
.L11:
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
	.globl	_Z9LazMemSetPviy
_Z9LazMemSetPviy:
.LFB6009:
	testq	%r8, %r8
	movq	%rcx, %rax
	movq	%rcx, %r9
	leaq	(%rcx,%r8), %r10
	je	.L18
	.p2align 4,,10
.L14:
	addq	$1, %r9
	movb	%dl, -1(%r9)
	cmpq	%r10, %r9
	jne	.L14
.L18:
	ret
	.p2align 4,,15
	.globl	_Z9LazMemCpyPvPKvy
_Z9LazMemCpyPvPKvy:
.LFB6011:
	testq	%r8, %r8
	movq	%rcx, %rax
	je	.L20
	xorl	%r9d, %r9d
	.p2align 4,,10
.L21:
	movzbl	(%rdx,%r9), %r10d
	movb	%r10b, (%rax,%r9)
	addq	$1, %r9
	cmpq	%r9, %r8
	jne	.L21
.L20:
	ret
	.p2align 4,,15
	.globl	_Z10LazMemMovePvPKvy
_Z10LazMemMovePvPKvy:
.LFB6012:
	leaq	-1(%r8), %r9
	cmpq	%rdx, %rcx
	movq	%rcx, %rax
	ja	.L27
	xorl	%r9d, %r9d
	testq	%r8, %r8
	je	.L33
	.p2align 4,,10
.L28:
	movzbl	(%rdx,%r9), %ecx
	movb	%cl, (%rax,%r9)
	addq	$1, %r9
	cmpq	%r9, %r8
	jne	.L28
.L33:
	ret
	.p2align 4,,10
.L27:
	testq	%r8, %r8
	je	.L33
	.p2align 4,,10
.L30:
	movzbl	(%rdx,%r9), %ecx
	movb	%cl, (%rax,%r9)
	subq	$1, %r9
	cmpq	$-1, %r9
	jne	.L30
	jmp	.L33
	.globl	_Unwind_Resume
	.bss
	.align 8
_Unwind_Resume:
	.space 8
	.globl	__gxx_personality_v0
	.align 8
__gxx_personality_v0:
	.space 8
