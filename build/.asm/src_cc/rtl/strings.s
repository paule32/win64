	.file	"strings.cc"
	.text
	.p2align 4,,15
	.globl	_$dll$laz_rtl$LazExitProcess
_$dll$laz_rtl$LazExitProcess:
.LFB6003:
	subq	$40, %rsp
	call	*__imp_ExitProcess(%rip)
	nop
	.p2align 4,,15
	.globl	LAZEXITPROCEDURE
LAZEXITPROCEDURE:
.LFB6004:
	subq	$40, %rsp
	call	*__imp_ExitProcess(%rip)
	nop
	.section .rdata,"dr"
.LC0:
	.ascii "Error\0"
.LC1:
	.ascii "string is too long\0"
	.text
	.p2align 4,,15
	.globl	CopyPascalString2PChar
CopyPascalString2PChar:
.LFB6005:
	subq	$40, %rsp
	call	strlen
	cmpq	$255, %rax
	ja	.L6
	movl	$255, %ecx
	addq	$40, %rsp
	jmp	_Znay
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
	.globl	isspace
isspace:
.LFB6006:
	xorl	%eax, %eax
	cmpb	$32, %cl
	ja	.L7
	movabsq	$4294979328, %rax
	shrq	%cl, %rax
	andl	$1, %eax
.L7:
	ret
	.p2align 4,,15
	.globl	strcat
strcat:
.LFB6007:
	cmpb	$0, (%rcx)
	movq	%rcx, %rax
	movq	%rcx, %r9
	je	.L11
	.p2align 4,,10
.L12:
	addq	$1, %r9
	cmpb	$0, (%r9)
	jne	.L12
.L11:
	xorl	%r8d, %r8d
	.p2align 4,,10
.L13:
	movzbl	(%rdx,%r8), %r10d
	movb	%r10b, (%r9,%r8)
	addq	$1, %r8
	testb	%r10b, %r10b
	jne	.L13
	ret
	.p2align 4,,15
	.globl	strcmp
strcmp:
.LFB6008:
	xorl	%eax, %eax
	jmp	.L20
	.p2align 4,,10
.L18:
	addq	$1, %rax
	testb	%r8b, %r8b
	je	.L23
.L20:
	movzbl	(%rcx,%rax), %r8d
	cmpb	(%rdx,%rax), %r8b
	je	.L18
	sbbl	%eax, %eax
	orl	$1, %eax
	ret
	.p2align 4,,10
.L23:
	xorl	%eax, %eax
	ret
	.p2align 4,,15
	.globl	strchr
strchr:
.LFB6009:
	movzbl	(%rcx), %eax
	cmpb	%dl, %al
	movl	%edx, %r8d
	jne	.L27
	jmp	.L28
	.p2align 4,,10
.L32:
	addq	$1, %rcx
	movzbl	(%rcx), %eax
	cmpb	%r8b, %al
	je	.L28
.L27:
	testb	%al, %al
	jne	.L32
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L28:
	movq	%rcx, %rax
	ret
	.p2align 4,,15
	.globl	skip_spaces
skip_spaces:
.LFB6010:
	movq	%rcx, %rax
	movabsq	$4294979328, %rcx
	movzbl	(%rax), %edx
	cmpb	$32, %dl
	ja	.L33
.L37:
	btq	%rdx, %rcx
	jnc	.L33
	addq	$1, %rax
	movzbl	(%rax), %edx
	cmpb	$32, %dl
	jbe	.L37
.L33:
	ret
	.p2align 4,,15
	.globl	strim
strim:
.LFB6011:
	pushq	%rbx
	subq	$32, %rsp
	movq	%rcx, %rbx
	call	strlen
	movq	%rbx, %rdx
	testq	%rax, %rax
	je	.L38
	leaq	-1(%rbx,%rax), %rax
	cmpq	%rax, %rbx
	ja	.L40
	movabsq	$4294979328, %rcx
.L43:
	movzbl	(%rax), %edx
	cmpb	$32, %dl
	jbe	.L47
.L40:
	movq	%rbx, %rdx
	movb	$0, 1(%rax)
	movabsq	$4294979328, %rcx
	movzbl	(%rdx), %eax
	cmpb	$32, %al
	ja	.L38
.L48:
	btq	%rax, %rcx
	jnc	.L38
	addq	$1, %rdx
	movzbl	(%rdx), %eax
	cmpb	$32, %al
	jbe	.L48
.L38:
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L47:
	btq	%rdx, %rcx
	jnc	.L40
	subq	$1, %rax
	cmpq	%rax, %rbx
	jbe	.L43
	jmp	.L40
	.p2align 4,,15
	.globl	strlen
strlen:
.LFB6012:
	cmpb	$0, (%rcx)
	je	.L52
	movq	%rcx, %rax
	.p2align 4,,10
.L51:
	addq	$1, %rax
	cmpb	$0, (%rax)
	jne	.L51
	subq	%rcx, %rax
	ret
	.p2align 4,,10
.L52:
	xorl	%eax, %eax
	ret
	.p2align 4,,15
	.globl	strnlen
strnlen:
.LFB6013:
	testq	%rdx, %rdx
	movq	%rdx, %rax
	je	.L55
	cmpb	$0, (%rcx)
	leaq	(%rcx,%rdx), %r9
	movq	%rcx, %r8
	jne	.L57
	jmp	.L64
	.p2align 4,,10
.L58:
	cmpb	$0, (%r8)
	je	.L65
.L57:
	addq	$1, %r8
	cmpq	%r9, %r8
	jne	.L58
.L55:
	ret
	.p2align 4,,10
.L65:
	movq	%r8, %rax
	subq	%rcx, %rax
	ret
.L64:
	xorl	%eax, %eax
	ret
	.p2align 4,,15
	.globl	strreplace
strreplace:
.LFB6014:
	movq	%rcx, %rax
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L67
	.p2align 4,,10
.L69:
	cmpb	%cl, %dl
	jne	.L68
	movb	%r8b, (%rax)
.L68:
	addq	$1, %rax
	movzbl	(%rax), %ecx
	testb	%cl, %cl
	jne	.L69
.L67:
	ret
	.section .rdata,"dr"
.LC2:
	.ascii "Warning\0"
	.align 8
.LC3:
	.ascii "No terminal open.\12Do you want open a CRT Terminal ?\0"
	.text
	.p2align 4,,15
	.globl	_$dll$laz_rtl$WriteLn
_$dll$laz_rtl$WriteLn:
.LFB6016:
	pushq	%rdi
	pushq	%rsi
	pushq	%rbx
	subq	$64, %rsp
	movl	24+LazTerminal(%rip), %eax
	testl	%eax, %eax
	movq	%rcx, %rdi
	jne	.L75
	leaq	.LC2(%rip), %r8
	xorl	%ecx, %ecx
	movl	$73764, %r9d
	leaq	.LC3(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	cmpl	$7, %eax
	je	.L76
.L75:
	call	*__imp_AllocConsole(%rip)
	movq	__imp_GetStdHandle(%rip), %rsi
	movl	$-11, %ecx
	call	*%rsi
	movq	__imp_GetLastError(%rip), %rbx
	movq	%rax, LazTerminal(%rip)
	call	*%rbx
	movl	$-10, %ecx
	call	*%rsi
	movq	%rax, 8+LazTerminal(%rip)
	call	*%rbx
	movl	$-12, %ecx
	call	*%rsi
	movq	%rax, 16+LazTerminal(%rip)
	call	*%rbx
	movl	$-1, %ecx
	call	*__imp_AttachConsole(%rip)
	movq	LazTerminal(%rip), %rcx
	leaq	60(%rsp), %r9
	movq	%rdi, %rdx
	movl	$1, 24+LazTerminal(%rip)
	movzbl	(%rdi), %r8d
	movq	$0, 32(%rsp)
	call	*__imp_WriteConsoleA(%rip)
	nop
	addq	$64, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L76:
	call	*__imp_GetLastError(%rip)
	movl	%eax, %ecx
	call	*__imp_ExitProcess(%rip)
	nop
	.p2align 4,,15
	.globl	_$dll$laz_rtl$LengthByte
_$dll$laz_rtl$LengthByte:
.LFB6017:
	movl	$1, %eax
	ret
	.p2align 4,,15
	.globl	_$dll$laz_rtl$LengthChar
_$dll$laz_rtl$LengthChar:
.LFB6018:
	movl	$1, %eax
	ret
	.p2align 4,,15
	.globl	_$dll$laz_rtl$LengthInteger
_$dll$laz_rtl$LengthInteger:
.LFB6019:
	movl	$1, %eax
	ret
	.section .rdata,"dr"
.LC4:
	.ascii "info\0"
	.text
	.p2align 4,,15
	.globl	_$dll$laz_rtl$LengthString
_$dll$laz_rtl$LengthString:
.LFB6020:
	pushq	%rbx
	subq	$32, %rsp
	leaq	.LC4(%rip), %r8
	xorl	%r9d, %r9d
	movzbl	(%rcx), %ebx
	movq	%rcx, %rdx
	xorl	%ecx, %ecx
	call	*__imp_MessageBoxA(%rip)
	movzbl	%bl, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,15
	.globl	_$dll$laz_rtl$LowerCase
_$dll$laz_rtl$LowerCase:
.LFB6021:
	movzbl	(%rcx), %edx
	testb	%dl, %dl
	movq	%rcx, %rax
	je	.L82
	movq	%rcx, %r8
	.p2align 4,,10
.L84:
	leal	-65(%rdx), %r9d
	cmpb	$25, %r9b
	ja	.L83
	subl	$32, %edx
	movb	%dl, (%r8)
.L83:
	addq	$1, %r8
	movzbl	(%r8), %edx
	testb	%dl, %dl
	jne	.L84
.L82:
	ret
	.p2align 4,,15
	.globl	_$dll$laz_rtl$UpperCase
_$dll$laz_rtl$UpperCase:
.LFB6022:
	movzbl	(%rcx), %edx
	testb	%dl, %dl
	movq	%rcx, %rax
	je	.L90
	movq	%rcx, %r8
	.p2align 4,,10
.L92:
	leal	-97(%rdx), %r9d
	cmpb	$25, %r9b
	ja	.L91
	subl	$32, %edx
	movb	%dl, (%r8)
.L91:
	addq	$1, %r8
	movzbl	(%r8), %edx
	testb	%dl, %dl
	jne	.L92
.L90:
	ret
	.globl	LazStringImg
	.bss
	.align 32
LazStringImg:
	.space 256
	.globl	LazTerminal
	.align 32
LazTerminal:
	.space 32
