	.file	"strings.cc"
	.text
	.p2align 4,,15
	.globl	CopyPascalString2PChar
CopyPascalString2PChar:
.LFB6003:
	movl	$255, %ecx
	jmp	_Znay
	.p2align 4,,15
	.globl	isspace
isspace:
.LFB6004:
	xorl	%eax, %eax
	cmpb	$32, %cl
	ja	.L3
	movabsq	$4294979328, %rax
	shrq	%cl, %rax
	andl	$1, %eax
.L3:
	ret
	.p2align 4,,15
	.globl	strcat
strcat:
.LFB6005:
	cmpb	$0, (%rcx)
	movq	%rcx, %rax
	movq	%rcx, %r9
	je	.L7
	.p2align 4,,10
.L8:
	addq	$1, %r9
	cmpb	$0, (%r9)
	jne	.L8
.L7:
	xorl	%r8d, %r8d
	.p2align 4,,10
.L9:
	movzbl	(%rdx,%r8), %r10d
	movb	%r10b, (%r9,%r8)
	addq	$1, %r8
	testb	%r10b, %r10b
	jne	.L9
	ret
	.p2align 4,,15
	.globl	strcmp
strcmp:
.LFB6006:
	xorl	%eax, %eax
	jmp	.L16
	.p2align 4,,10
.L14:
	addq	$1, %rax
	testb	%r8b, %r8b
	je	.L19
.L16:
	movzbl	(%rcx,%rax), %r8d
	cmpb	(%rdx,%rax), %r8b
	je	.L14
	sbbl	%eax, %eax
	orl	$1, %eax
	ret
	.p2align 4,,10
.L19:
	xorl	%eax, %eax
	ret
	.p2align 4,,15
	.globl	strchr
strchr:
.LFB6007:
	movzbl	(%rcx), %eax
	cmpb	%dl, %al
	movl	%edx, %r8d
	jne	.L23
	jmp	.L24
	.p2align 4,,10
.L28:
	addq	$1, %rcx
	movzbl	(%rcx), %eax
	cmpb	%r8b, %al
	je	.L24
.L23:
	testb	%al, %al
	jne	.L28
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L24:
	movq	%rcx, %rax
	ret
	.p2align 4,,15
	.globl	skip_spaces
skip_spaces:
.LFB6008:
	movq	%rcx, %rax
	movabsq	$4294979328, %rcx
	movzbl	(%rax), %edx
	cmpb	$32, %dl
	ja	.L29
.L33:
	btq	%rdx, %rcx
	jnc	.L29
	addq	$1, %rax
	movzbl	(%rax), %edx
	cmpb	$32, %dl
	jbe	.L33
.L29:
	ret
	.p2align 4,,15
	.globl	strim
strim:
.LFB6009:
	pushq	%rbx
	subq	$32, %rsp
	movq	%rcx, %rbx
	call	strlen
	movq	%rbx, %rdx
	testq	%rax, %rax
	je	.L34
	leaq	-1(%rbx,%rax), %rax
	cmpq	%rax, %rbx
	ja	.L36
	movabsq	$4294979328, %rcx
.L39:
	movzbl	(%rax), %edx
	cmpb	$32, %dl
	jbe	.L43
.L36:
	movq	%rbx, %rdx
	movb	$0, 1(%rax)
	movabsq	$4294979328, %rcx
	movzbl	(%rdx), %eax
	cmpb	$32, %al
	ja	.L34
.L44:
	btq	%rax, %rcx
	jnc	.L34
	addq	$1, %rdx
	movzbl	(%rdx), %eax
	cmpb	$32, %al
	jbe	.L44
.L34:
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L43:
	btq	%rdx, %rcx
	jnc	.L36
	subq	$1, %rax
	cmpq	%rax, %rbx
	jbe	.L39
	jmp	.L36
	.p2align 4,,15
	.globl	strlen
strlen:
.LFB6010:
	cmpb	$0, (%rcx)
	je	.L48
	movq	%rcx, %rax
	.p2align 4,,10
.L47:
	addq	$1, %rax
	cmpb	$0, (%rax)
	jne	.L47
	subq	%rcx, %rax
	ret
	.p2align 4,,10
.L48:
	xorl	%eax, %eax
	ret
	.p2align 4,,15
	.globl	strnlen
strnlen:
.LFB6011:
	testq	%rdx, %rdx
	movq	%rdx, %rax
	je	.L51
	cmpb	$0, (%rcx)
	leaq	(%rcx,%rdx), %r9
	movq	%rcx, %r8
	jne	.L53
	jmp	.L60
	.p2align 4,,10
.L54:
	cmpb	$0, (%r8)
	je	.L61
.L53:
	addq	$1, %r8
	cmpq	%r9, %r8
	jne	.L54
.L51:
	ret
	.p2align 4,,10
.L61:
	movq	%r8, %rax
	subq	%rcx, %rax
	ret
.L60:
	xorl	%eax, %eax
	ret
	.p2align 4,,15
	.globl	strreplace
strreplace:
.LFB6012:
	movq	%rcx, %rax
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L63
	.p2align 4,,10
.L65:
	cmpb	%cl, %dl
	jne	.L64
	movb	%r8b, (%rax)
.L64:
	addq	$1, %rax
	movzbl	(%rax), %ecx
	testb	%cl, %cl
	jne	.L65
.L63:
	ret
	.p2align 4,,15
	.globl	_$dll$laz_rtl$Length
_$dll$laz_rtl$Length:
.LFB6017:
	jmp	strlen
	.p2align 4,,15
	.globl	_$dll$laz_rtl$LowerCase
_$dll$laz_rtl$LowerCase:
.LFB6014:
	movzbl	(%rcx), %edx
	testb	%dl, %dl
	movq	%rcx, %rax
	je	.L72
	movq	%rcx, %r8
	.p2align 4,,10
.L74:
	leal	-65(%rdx), %r9d
	cmpb	$25, %r9b
	ja	.L73
	subl	$32, %edx
	movb	%dl, (%r8)
.L73:
	addq	$1, %r8
	movzbl	(%r8), %edx
	testb	%dl, %dl
	jne	.L74
.L72:
	ret
	.p2align 4,,15
	.globl	_$dll$laz_rtl$UpperCase
_$dll$laz_rtl$UpperCase:
.LFB6015:
	movzbl	(%rcx), %edx
	testb	%dl, %dl
	movq	%rcx, %rax
	je	.L80
	movq	%rcx, %r8
	.p2align 4,,10
.L82:
	leal	-97(%rdx), %r9d
	cmpb	$25, %r9b
	ja	.L81
	subl	$32, %edx
	movb	%dl, (%r8)
.L81:
	addq	$1, %r8
	movzbl	(%r8), %edx
	testb	%dl, %dl
	jne	.L82
.L80:
	ret
