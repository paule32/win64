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
	.globl	strcpy
strcpy:
.LFB6007:
	xorl	%r8d, %r8d
	movq	%rcx, %rax
	.p2align 4,,10
.L11:
	movzbl	(%rdx,%r8), %r9d
	movb	%r9b, (%rax,%r8)
	addq	$1, %r8
	testb	%r9b, %r9b
	jne	.L11
	ret
	.p2align 4,,15
	.globl	strncpy
strncpy:
.LFB6008:
	testq	%r8, %r8
	movq	%rcx, %rax
	je	.L14
	addq	%rcx, %r8
	movq	%rcx, %r9
	.p2align 4,,10
.L16:
	movzbl	(%rdx), %r10d
	cmpb	$1, %r10b
	movb	%r10b, (%r9)
	sbbq	$-1, %rdx
	addq	$1, %r9
	cmpq	%r8, %r9
	jne	.L16
.L14:
	ret
	.p2align 4,,15
	.globl	strlcpy
strlcpy:
.LFB6009:
	pushq	%rbp
	pushq	%rdi
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movq	%r8, %rsi
	movq	%rcx, %rbp
	movq	%rdx, %rcx
	movq	%rdx, %rdi
	call	strlen
	testq	%rsi, %rsi
	movq	%rax, %rbx
	je	.L23
	cmpq	%rsi, %rbx
	movq	%rdi, %rdx
	movq	%rbp, %rcx
	leaq	-1(%rsi), %rax
	cmovb	%rbx, %rax
	movq	%rax, %rsi
	movq	%rax, %r8
	call	_Z9LazMemCpyPvPKvy
	movb	$0, 0(%rbp,%rsi)
.L23:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,15
	.globl	strcat
strcat:
.LFB6010:
	cmpb	$0, (%rcx)
	movq	%rcx, %rax
	movq	%rcx, %r9
	je	.L31
	.p2align 4,,10
.L32:
	addq	$1, %r9
	cmpb	$0, (%r9)
	jne	.L32
.L31:
	xorl	%r8d, %r8d
	.p2align 4,,10
.L33:
	movzbl	(%rdx,%r8), %r10d
	movb	%r10b, (%r9,%r8)
	addq	$1, %r8
	testb	%r10b, %r10b
	jne	.L33
	ret
	.p2align 4,,15
	.globl	strncat
strncat:
.LFB6011:
	testq	%r8, %r8
	movq	%rcx, %rax
	je	.L39
	cmpb	$0, (%rcx)
	movq	%rcx, %r9
	je	.L40
	.p2align 4,,10
.L41:
	addq	$1, %r9
	cmpb	$0, (%r9)
	jne	.L41
.L40:
	addq	%r9, %r8
	jmp	.L43
	.p2align 4,,10
.L51:
	cmpq	%r8, %r9
	je	.L50
.L43:
	addq	$1, %rdx
	movzbl	-1(%rdx), %r10d
	addq	$1, %r9
	testb	%r10b, %r10b
	movb	%r10b, -1(%r9)
	jne	.L51
.L39:
	ret
	.p2align 4,,10
.L50:
	movb	$0, (%r9)
	ret
	.p2align 4,,15
	.globl	strncmp
strncmp:
.LFB6012:
	testq	%r8, %r8
	je	.L61
	movzbl	(%rcx), %r9d
	movzbl	(%rdx), %r10d
	cmpb	%r10b, %r9b
	jne	.L54
	testb	%r9b, %r9b
	je	.L61
	movl	$1, %eax
	jmp	.L55
	.p2align 4,,10
.L57:
	movzbl	(%rcx,%rax), %r9d
	movzbl	(%rdx,%rax), %r10d
	cmpb	%r10b, %r9b
	jne	.L54
	addq	$1, %rax
	testb	%r9b, %r9b
	je	.L61
.L55:
	cmpq	%r8, %rax
	jne	.L57
.L61:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L54:
	cmpb	%r10b, %r9b
	sbbl	%eax, %eax
	orl	$1, %eax
	ret
	.p2align 4,,15
	.globl	strcmp
strcmp:
.LFB6013:
	xorl	%eax, %eax
	jmp	.L65
	.p2align 4,,10
.L63:
	addq	$1, %rax
	testb	%r8b, %r8b
	je	.L68
.L65:
	movzbl	(%rcx,%rax), %r8d
	cmpb	(%rdx,%rax), %r8b
	je	.L63
	sbbl	%eax, %eax
	orl	$1, %eax
	ret
	.p2align 4,,10
.L68:
	xorl	%eax, %eax
	ret
	.p2align 4,,15
	.globl	strchr
strchr:
.LFB6014:
	movzbl	(%rcx), %eax
	cmpb	%dl, %al
	movl	%edx, %r8d
	jne	.L72
	jmp	.L73
	.p2align 4,,10
.L77:
	addq	$1, %rcx
	movzbl	(%rcx), %eax
	cmpb	%r8b, %al
	je	.L73
.L72:
	testb	%al, %al
	jne	.L77
	xorl	%eax, %eax
	ret
	.p2align 4,,10
.L73:
	movq	%rcx, %rax
	ret
	.p2align 4,,15
	.globl	skip_spaces
skip_spaces:
.LFB6015:
	movq	%rcx, %rax
	movabsq	$4294979328, %rcx
	movzbl	(%rax), %edx
	cmpb	$32, %dl
	ja	.L78
.L82:
	btq	%rdx, %rcx
	jnc	.L78
	addq	$1, %rax
	movzbl	(%rax), %edx
	cmpb	$32, %dl
	jbe	.L82
.L78:
	ret
	.p2align 4,,15
	.globl	strim
strim:
.LFB6016:
	pushq	%rbx
	subq	$32, %rsp
	movq	%rcx, %rbx
	call	strlen
	movq	%rbx, %rdx
	testq	%rax, %rax
	je	.L83
	leaq	-1(%rbx,%rax), %rax
	cmpq	%rax, %rbx
	ja	.L85
	movabsq	$4294979328, %rcx
.L88:
	movzbl	(%rax), %edx
	cmpb	$32, %dl
	jbe	.L92
.L85:
	movq	%rbx, %rdx
	movb	$0, 1(%rax)
	movabsq	$4294979328, %rcx
	movzbl	(%rdx), %eax
	cmpb	$32, %al
	ja	.L83
.L93:
	btq	%rax, %rcx
	jnc	.L83
	addq	$1, %rdx
	movzbl	(%rdx), %eax
	cmpb	$32, %al
	jbe	.L93
.L83:
	movq	%rdx, %rax
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
.L92:
	btq	%rdx, %rcx
	jnc	.L85
	subq	$1, %rax
	cmpq	%rax, %rbx
	jbe	.L88
	jmp	.L85
	.p2align 4,,15
	.globl	strlen
strlen:
.LFB6017:
	cmpb	$0, (%rcx)
	je	.L97
	movq	%rcx, %rax
	.p2align 4,,10
.L96:
	addq	$1, %rax
	cmpb	$0, (%rax)
	jne	.L96
	subq	%rcx, %rax
	ret
	.p2align 4,,10
.L97:
	xorl	%eax, %eax
	ret
	.p2align 4,,15
	.globl	strnlen
strnlen:
.LFB6018:
	testq	%rdx, %rdx
	movq	%rdx, %rax
	je	.L100
	cmpb	$0, (%rcx)
	leaq	(%rcx,%rdx), %r9
	movq	%rcx, %r8
	jne	.L102
	jmp	.L109
	.p2align 4,,10
.L103:
	cmpb	$0, (%r8)
	je	.L110
.L102:
	addq	$1, %r8
	cmpq	%r9, %r8
	jne	.L103
.L100:
	ret
	.p2align 4,,10
.L110:
	movq	%r8, %rax
	subq	%rcx, %rax
	ret
.L109:
	xorl	%eax, %eax
	ret
	.p2align 4,,15
	.globl	strreplace
strreplace:
.LFB6019:
	movq	%rcx, %rax
	movzbl	(%rcx), %ecx
	testb	%cl, %cl
	je	.L112
	.p2align 4,,10
.L114:
	cmpb	%cl, %dl
	jne	.L113
	movb	%r8b, (%rax)
.L113:
	addq	$1, %rax
	movzbl	(%rax), %ecx
	testb	%cl, %cl
	jne	.L114
.L112:
	ret
	.section .rdata,"dr"
.LC2:
	.ascii "Warning\0"
	.align 8
.LC3:
	.ascii "No terminal open.\12Do you want open a CRT Terminal ?\0"
	.text
	.p2align 4,,15
	.globl	check_console
check_console:
.LFB6020:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movl	24+LazTerminal(%rip), %eax
	testl	%eax, %eax
	jne	.L120
	leaq	.LC2(%rip), %r8
	xorl	%ecx, %ecx
	movl	$73764, %r9d
	leaq	.LC3(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	cmpl	$7, %eax
	je	.L121
.L120:
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
	movl	$1, 24+LazTerminal(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L121:
	call	*__imp_GetLastError(%rip)
	movl	%eax, %ecx
	call	*__imp_ExitProcess(%rip)
	nop
	.p2align 4,,15
	.globl	_$dll$laz_rtl$WriteLn
_$dll$laz_rtl$WriteLn:
.LFB6021:
	pushq	%rbx
	subq	$64, %rsp
	movq	%rcx, %rbx
	call	check_console
	movzbl	(%rbx), %r8d
	leaq	60(%rsp), %r9
	movq	%rbx, %rdx
	movq	$0, 32(%rsp)
	movq	LazTerminal(%rip), %rcx
	call	*__imp_WriteConsoleA(%rip)
	nop
	addq	$64, %rsp
	popq	%rbx
	ret
	.p2align 4,,15
	.globl	MouseEventProc
MouseEventProc:
.LFB6022:
	ret
	.section .rdata,"dr"
.LC4:
	.ascii "--> %d, %c\12\0"
.LC5:
	.ascii "Info\0"
.LC6:
	.ascii "numerisch\0"
.LC7:
	.ascii "alpha\0"
	.text
	.p2align 4,,15
	.globl	KeyEventProc
KeyEventProc:
.LFB6023:
	pushq	%rsi
	pushq	%rbx
	subq	$104, %rsp
	movdqu	(%rcx), %xmm0
	movd	%xmm0, %eax
	testl	%eax, %eax
	jne	.L135
.L124:
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L135:
	pextrw	$3, %xmm0, %ebx
	leaq	64(%rsp), %rsi
	movzwl	%bx, %r8d
	leaq	.LC4(%rip), %rdx
	movl	%r8d, %r9d
	movq	%rsi, %rcx
	call	*__imp_wsprintfA(%rip)
	cmpb	$0, 64(%rsp)
	je	.L130
	movq	%rsi, %r8
	.p2align 4,,10
.L127:
	addq	$1, %r8
	cmpb	$0, (%r8)
	jne	.L127
	subl	%esi, %r8d
.L126:
	leaq	60(%rsp), %r9
	movq	%rsi, %rdx
	movq	$0, 32(%rsp)
	movq	LazTerminal(%rip), %rcx
	call	*__imp_WriteConsoleA(%rip)
	leal	-48(%rbx), %eax
	cmpw	$9, %ax
	jbe	.L136
	subl	$65, %ebx
	cmpw	$25, %bx
	ja	.L124
	leaq	.LC5(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC7(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L136:
	leaq	.LC5(%rip), %r8
	xorl	%r9d, %r9d
	xorl	%ecx, %ecx
	leaq	.LC6(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L130:
	xorl	%r8d, %r8d
	jmp	.L126
	.p2align 4,,15
	.globl	ResizeEventProc
ResizeEventProc:
.LFB6024:
	ret
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "Terminal operation set READ mode denied.\12Can't get the input handle !\0"
	.align 8
.LC9:
	.ascii "Terminal operation READ denied.\12Can't get the input handle !\0"
.LC10:
	.ascii "\0"
	.text
	.p2align 4,,15
	.globl	_$dll$laz_rtl$ReadLn
_$dll$laz_rtl$ReadLn:
.LFB6025:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbp
	pushq	%rdi
	pushq	%rsi
	pushq	%rbx
	subq	$2632, %rsp
	call	check_console
	movl	$255, %ecx
	call	_Znay
	movl	$24, %edx
	movq	$0, 40+LazTerminal(%rip)
	movq	8+LazTerminal(%rip), %rcx
	movq	%rax, 32+LazTerminal(%rip)
	call	*__imp_SetConsoleMode(%rip)
	testl	%eax, %eax
	je	.L155
	movq	__imp_ReadConsoleInputA(%rip), %r12
	leaq	60(%rsp), %r13
	movl	$101, %edi
	leaq	64(%rsp), %rbp
	leaq	.L145(%rip), %r15
	leaq	32(%rsp), %rsi
	.p2align 4,,10
.L139:
	movq	%r13, %r9
	movl	$128, %r8d
	movq	%rbp, %rdx
	movq	8+LazTerminal(%rip), %rcx
	call	*%r12
	testl	%eax, %eax
	je	.L156
	movl	60(%rsp), %eax
	xorl	%r14d, %r14d
	movq	%rbp, %rbx
	testl	%eax, %eax
	je	.L147
	.p2align 4,,10
.L148:
	cmpw	$16, (%rbx)
	ja	.L154
	movzwl	(%rbx), %eax
	movslq	(%r15,%rax,4), %rax
	addq	%r15, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L145:
	.long	.L154-.L145
	.long	.L146-.L145
	.long	.L144-.L145
	.long	.L154-.L145
	.long	.L144-.L145
	.long	.L154-.L145
	.long	.L154-.L145
	.long	.L154-.L145
	.long	.L144-.L145
	.long	.L154-.L145
	.long	.L154-.L145
	.long	.L154-.L145
	.long	.L154-.L145
	.long	.L154-.L145
	.long	.L154-.L145
	.long	.L154-.L145
	.long	.L144-.L145
	.text
	.p2align 4,,10
.L146:
	movl	%r14d, %eax
	movq	%rsi, %rcx
	leaq	(%rax,%rax,4), %rax
	movdqu	68(%rsp,%rax,4), %xmm0
	movaps	%xmm0, 32(%rsp)
	call	KeyEventProc
.L144:
	addl	$1, %r14d
	addq	$20, %rbx
	cmpl	%r14d, 60(%rsp)
	ja	.L148
.L147:
	subl	$1, %edi
	jne	.L139
	leaq	.LC10(%rip), %rax
	addq	$2632, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L155:
	leaq	.LC0(%rip), %r8
	xorl	%r9d, %r9d
	leaq	.LC8(%rip), %rdx
.L153:
	xorl	%ecx, %ecx
	call	*__imp_MessageBoxA(%rip)
.L154:
	call	*__imp_GetLastError(%rip)
	movl	%eax, %ecx
	call	*__imp_ExitProcess(%rip)
.L156:
	leaq	.LC0(%rip), %r8
	xorl	%r9d, %r9d
	leaq	.LC9(%rip), %rdx
	jmp	.L153
	.p2align 4,,15
	.globl	_$dll$laz_rtl$LengthByte
_$dll$laz_rtl$LengthByte:
.LFB6026:
	movl	$1, %eax
	ret
	.p2align 4,,15
	.globl	_$dll$laz_rtl$LengthChar
_$dll$laz_rtl$LengthChar:
.LFB6027:
	movl	$1, %eax
	ret
	.p2align 4,,15
	.globl	_$dll$laz_rtl$LengthInteger
_$dll$laz_rtl$LengthInteger:
.LFB6028:
	movl	$1, %eax
	ret
	.section .rdata,"dr"
.LC11:
	.ascii "info\0"
	.text
	.p2align 4,,15
	.globl	_$dll$laz_rtl$LengthString
_$dll$laz_rtl$LengthString:
.LFB6029:
	pushq	%rbx
	subq	$32, %rsp
	leaq	.LC11(%rip), %r8
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
.LFB6030:
	movzbl	(%rcx), %edx
	testb	%dl, %dl
	movq	%rcx, %rax
	je	.L162
	movq	%rcx, %r8
	.p2align 4,,10
.L164:
	leal	-65(%rdx), %r9d
	cmpb	$25, %r9b
	ja	.L163
	subl	$32, %edx
	movb	%dl, (%r8)
.L163:
	addq	$1, %r8
	movzbl	(%r8), %edx
	testb	%dl, %dl
	jne	.L164
.L162:
	ret
	.p2align 4,,15
	.globl	_$dll$laz_rtl$UpperCase
_$dll$laz_rtl$UpperCase:
.LFB6031:
	movzbl	(%rcx), %edx
	testb	%dl, %dl
	movq	%rcx, %rax
	je	.L170
	movq	%rcx, %r8
	.p2align 4,,10
.L172:
	leal	-97(%rdx), %r9d
	cmpb	$25, %r9b
	ja	.L171
	subl	$32, %edx
	movb	%dl, (%r8)
.L171:
	addq	$1, %r8
	movzbl	(%r8), %edx
	testb	%dl, %dl
	jne	.L172
.L170:
	ret
	.globl	LazStringImg
	.bss
	.align 32
LazStringImg:
	.space 256
	.globl	LazTerminal
	.align 32
LazTerminal:
	.space 48
