	.file	"mem.cc"
	.text
	.p2align 4,,15
	.globl	_Znwy
_Znwy:
.LFB6003:
	xorl	%eax, %eax
	ret
	.p2align 4,,15
	.globl	_Znay
_Znay:
.LFB6012:
	xorl	%eax, %eax
	ret
	.p2align 4,,15
	.globl	_ZdlPv
_ZdlPv:
.LFB6005:
	ret
	.p2align 4,,15
	.globl	_ZdaPv
_ZdaPv:
.LFB6014:
	ret
	.p2align 4,,15
	.globl	memset
memset:
.LFB6007:
	testq	%r8, %r8
	movq	%rcx, %rax
	movq	%rcx, %r9
	leaq	(%rcx,%r8), %r10
	je	.L12
	.p2align 4,,10
.L8:
	addq	$1, %r9
	movb	%dl, -1(%r9)
	cmpq	%r10, %r9
	jne	.L8
.L12:
	ret
	.p2align 4,,15
	.globl	_Z6memcpyPvS_y
_Z6memcpyPvS_y:
.LFB6009:
	testq	%r8, %r8
	movq	%rcx, %rax
	je	.L14
	xorl	%r9d, %r9d
	.p2align 4,,10
.L15:
	movzbl	(%rdx,%r9), %r10d
	movb	%r10b, (%rax,%r9)
	addq	$1, %r9
	cmpq	%r8, %r9
	jne	.L15
.L14:
	ret
	.p2align 4,,15
	.globl	memmove
memmove:
.LFB6010:
	leaq	-1(%r8), %r9
	cmpq	%rdx, %rcx
	movq	%rcx, %rax
	ja	.L21
	xorl	%r9d, %r9d
	testq	%r8, %r8
	je	.L27
	.p2align 4,,10
.L22:
	movzbl	(%rdx,%r9), %ecx
	movb	%cl, (%rax,%r9)
	addq	$1, %r9
	cmpq	%r9, %r8
	jne	.L22
.L27:
	ret
	.p2align 4,,10
.L21:
	testq	%r8, %r8
	je	.L27
	.p2align 4,,10
.L24:
	movzbl	(%rdx,%r9), %ecx
	movb	%cl, (%rax,%r9)
	subq	$1, %r9
	cmpq	$-1, %r9
	jne	.L24
	jmp	.L27
