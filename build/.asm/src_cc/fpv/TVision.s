	.file	"TVision.cc"
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV7TObjectC2Ev
_ZN6LazFPV7TObjectC2Ev:
.LFB5976:
	pushq	%rbx
	subq	$32, %rsp
	movq	%rcx, %rbx
	movl	$20, %ecx
	call	_Znay
	movabsq	$32760384526110548, %rdx
	movq	%rax, (%rbx)
	movq	%rdx, (%rax)
	addq	$32, %rsp
	popq	%rbx
	ret
	.globl	_ZN6LazFPV7TObjectC1Ev
	.set	_ZN6LazFPV7TObjectC1Ev,_ZN6LazFPV7TObjectC2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TObject_Create
_$dll$laz_fpv$TObject_Create:
.LFB5974:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movl	$8, %ecx
.LEHB0:
	call	_Znwy
.LEHE0:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB1:
	call	_ZN6LazFPV7TObjectC1Ev
.LEHE1:
	movq	%rbx, LazApplicationObject(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L5:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$8, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB2:
	call	_Unwind_Resume
	nop
.LEHE2:
.LLSDA5974:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5974-.LLSDACSB5974
.LLSDACSB5974:
	.uleb128 .LEHB0-.LFB5974
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB5974
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L5-.LFB5974
	.uleb128 0
	.uleb128 .LEHB2-.LFB5974
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE5974:
	.text
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TObject_Destroy
_$dll$laz_fpv$TObject_Destroy:
.LFB5978:
	pushq	%rbx
	subq	$32, %rsp
	movq	LazApplicationObject(%rip), %rbx
	testq	%rbx, %rbx
	je	.L7
	movq	(%rbx), %rcx
	movl	$1, %edx
	call	_ZdlPvy
	movl	$8, %edx
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZdlPvy
	.p2align 4,,10
.L7:
	addq	$32, %rsp
	popq	%rbx
	ret
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV7TObjectD2Ev
_ZN6LazFPV7TObjectD2Ev:
.LFB5980:
	movl	$1, %edx
	movq	(%rcx), %rcx
	jmp	_ZdlPvy
	.globl	_ZN6LazFPV7TObjectD1Ev
	.set	_ZN6LazFPV7TObjectD1Ev,_ZN6LazFPV7TObjectD2Ev
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV8TMenuBarC2Ev
_ZN6LazFPV8TMenuBarC2Ev:
.LFB5985:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %rbx
.LEHB3:
	call	_ZN6LazFPV7TObjectC2Ev
.LEHE3:
	movl	$20, %ecx
.LEHB4:
	call	_Znay
.LEHE4:
	movabsq	$8241941865195457876, %rdx
	movq	%rax, (%rbx)
	movq	%rdx, (%rax)
	movb	$0, 8(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L12:
	movq	(%rbx), %rcx
	movq	%rax, %rsi
	movl	$1, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB5:
	call	_Unwind_Resume
	nop
.LEHE5:
.LLSDA5985:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5985-.LLSDACSB5985
.LLSDACSB5985:
	.uleb128 .LEHB3-.LFB5985
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB5985
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L12-.LFB5985
	.uleb128 0
	.uleb128 .LEHB5-.LFB5985
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE5985:
	.text
	.globl	_ZN6LazFPV8TMenuBarC1Ev
	.set	_ZN6LazFPV8TMenuBarC1Ev,_ZN6LazFPV8TMenuBarC2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TMenuBar_Create
_$dll$laz_fpv$TMenuBar_Create:
.LFB5982:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movl	$8, %ecx
.LEHB6:
	call	_Znwy
.LEHE6:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB7:
	call	_ZN6LazFPV8TMenuBarC1Ev
.LEHE7:
	movq	%rbx, LazApplicationMenuBar(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L16:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$8, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB8:
	call	_Unwind_Resume
	nop
.LEHE8:
.LLSDA5982:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5982-.LLSDACSB5982
.LLSDACSB5982:
	.uleb128 .LEHB6-.LFB5982
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB5982
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L16-.LFB5982
	.uleb128 0
	.uleb128 .LEHB8-.LFB5982
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE5982:
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV8TMenuBarD2Ev
_ZN6LazFPV8TMenuBarD2Ev:
.LFB5988:
	pushq	%rbx
	subq	$32, %rsp
	movl	$1, %edx
	movq	%rcx, %rbx
	movq	(%rcx), %rcx
	call	_ZdlPvy
	movq	(%rbx), %rcx
	movl	$1, %edx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZdlPvy
	.globl	_ZN6LazFPV8TMenuBarD1Ev
	.set	_ZN6LazFPV8TMenuBarD1Ev,_ZN6LazFPV8TMenuBarD2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TMenuBar_Destroy
_$dll$laz_fpv$TMenuBar_Destroy:
.LFB5983:
	pushq	%rbx
	subq	$32, %rsp
	movq	LazApplicationMenuBar(%rip), %rbx
	testq	%rbx, %rbx
	je	.L19
	movq	%rbx, %rcx
	call	_ZN6LazFPV8TMenuBarD1Ev
	movl	$8, %edx
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZdlPvy
	.p2align 4,,10
.L19:
	addq	$32, %rsp
	popq	%rbx
	ret
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV10TStatusBarC2Ev
_ZN6LazFPV10TStatusBarC2Ev:
.LFB5992:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %rbx
.LEHB9:
	call	_ZN6LazFPV7TObjectC2Ev
.LEHE9:
	movl	$20, %ecx
.LEHB10:
	call	_Znay
.LEHE10:
	movabsq	$4788299971536638804, %rdx
	movq	%rax, (%rbx)
	movq	%rdx, (%rax)
	movl	$29281, %edx
	movw	%dx, 8(%rax)
	movb	$0, 10(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L23:
	movq	(%rbx), %rcx
	movq	%rax, %rsi
	movl	$1, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB11:
	call	_Unwind_Resume
	nop
.LEHE11:
.LLSDA5992:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5992-.LLSDACSB5992
.LLSDACSB5992:
	.uleb128 .LEHB9-.LFB5992
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB5992
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L23-.LFB5992
	.uleb128 0
	.uleb128 .LEHB11-.LFB5992
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE5992:
	.text
	.globl	_ZN6LazFPV10TStatusBarC1Ev
	.set	_ZN6LazFPV10TStatusBarC1Ev,_ZN6LazFPV10TStatusBarC2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TStatusBar_Create
_$dll$laz_fpv$TStatusBar_Create:
.LFB5990:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movl	$8, %ecx
.LEHB12:
	call	_Znwy
.LEHE12:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB13:
	call	_ZN6LazFPV10TStatusBarC1Ev
.LEHE13:
	movq	%rbx, LazApplicationStatusBar(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L27:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$8, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB14:
	call	_Unwind_Resume
	nop
.LEHE14:
.LLSDA5990:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5990-.LLSDACSB5990
.LLSDACSB5990:
	.uleb128 .LEHB12-.LFB5990
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB5990
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L27-.LFB5990
	.uleb128 0
	.uleb128 .LEHB14-.LFB5990
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE5990:
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV10TStatusBarD2Ev
_ZN6LazFPV10TStatusBarD2Ev:
.LFB5996:
	pushq	%rbx
	subq	$32, %rsp
	movl	$1, %edx
	movq	%rcx, %rbx
	movq	(%rcx), %rcx
	call	_ZdlPvy
	movq	(%rbx), %rcx
	movl	$1, %edx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZdlPvy
	.globl	_ZN6LazFPV10TStatusBarD1Ev
	.set	_ZN6LazFPV10TStatusBarD1Ev,_ZN6LazFPV10TStatusBarD2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TStatusBar_Destroy
_$dll$laz_fpv$TStatusBar_Destroy:
.LFB5994:
	pushq	%rbx
	subq	$32, %rsp
	movq	LazApplicationStatusBar(%rip), %rbx
	testq	%rbx, %rbx
	je	.L30
	movq	%rbx, %rcx
	call	_ZN6LazFPV10TStatusBarD1Ev
	movl	$8, %edx
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZdlPvy
	.p2align 4,,10
.L30:
	addq	$32, %rsp
	popq	%rbx
	ret
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV11TBackgroundC2Ev
_ZN6LazFPV11TBackgroundC2Ev:
.LFB6000:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %rbx
.LEHB15:
	call	_ZN6LazFPV7TObjectC2Ev
.LEHE15:
	movl	$20, %ecx
.LEHB16:
	call	_Znay
.LEHE16:
	movabsq	$8030594796481495636, %rdx
	movq	%rax, (%rbx)
	movq	%rdx, (%rax)
	movl	$6581877, 8(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L34:
	movq	(%rbx), %rcx
	movq	%rax, %rsi
	movl	$1, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB17:
	call	_Unwind_Resume
	nop
.LEHE17:
.LLSDA6000:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6000-.LLSDACSB6000
.LLSDACSB6000:
	.uleb128 .LEHB15-.LFB6000
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB6000
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L34-.LFB6000
	.uleb128 0
	.uleb128 .LEHB17-.LFB6000
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE6000:
	.text
	.globl	_ZN6LazFPV11TBackgroundC1Ev
	.set	_ZN6LazFPV11TBackgroundC1Ev,_ZN6LazFPV11TBackgroundC2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TBackground_Create
_$dll$laz_fpv$TBackground_Create:
.LFB5998:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movl	$8, %ecx
.LEHB18:
	call	_Znwy
.LEHE18:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB19:
	call	_ZN6LazFPV11TBackgroundC1Ev
.LEHE19:
	movq	%rbx, LazApplicationBackground(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L38:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$8, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB20:
	call	_Unwind_Resume
	nop
.LEHE20:
.LLSDA5998:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5998-.LLSDACSB5998
.LLSDACSB5998:
	.uleb128 .LEHB18-.LFB5998
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB5998
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L38-.LFB5998
	.uleb128 0
	.uleb128 .LEHB20-.LFB5998
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE5998:
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV11TBackgroundD2Ev
_ZN6LazFPV11TBackgroundD2Ev:
.LFB6004:
	pushq	%rbx
	subq	$32, %rsp
	movl	$1, %edx
	movq	%rcx, %rbx
	movq	(%rcx), %rcx
	call	_ZdlPvy
	movq	(%rbx), %rcx
	movl	$1, %edx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZdlPvy
	.globl	_ZN6LazFPV11TBackgroundD1Ev
	.set	_ZN6LazFPV11TBackgroundD1Ev,_ZN6LazFPV11TBackgroundD2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TBackground_Destroy
_$dll$laz_fpv$TBackground_Destroy:
.LFB6002:
	pushq	%rbx
	subq	$32, %rsp
	movq	LazApplicationBackground(%rip), %rbx
	testq	%rbx, %rbx
	je	.L41
	movq	%rbx, %rcx
	call	_ZN6LazFPV11TBackgroundD1Ev
	movl	$8, %edx
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZdlPvy
	.p2align 4,,10
.L41:
	addq	$32, %rsp
	popq	%rbx
	ret
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV12TApplicationC2Ev
_ZN6LazFPV12TApplicationC2Ev:
.LFB6008:
	pushq	%rdi
	pushq	%rsi
	pushq	%rbx
	subq	$32, %rsp
	movq	%rcx, %rbx
.LEHB21:
	call	_ZN6LazFPV7TObjectC2Ev
.LEHE21:
	movl	$20, %ecx
.LEHB22:
	call	_Znay
	movabsq	$7017568558837154132, %rdx
	movq	%rax, (%rbx)
	movl	$8, %ecx
	movq	%rdx, (%rax)
	movl	$1852795252, 8(%rax)
	movb	$0, 12(%rax)
	call	_Znwy
.LEHE22:
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB23:
	call	_ZN6LazFPV11TBackgroundC1Ev
.LEHE23:
	movq	%rsi, 8(%rbx)
	movl	$8, %ecx
.LEHB24:
	call	_Znwy
.LEHE24:
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB25:
	call	_ZN6LazFPV8TMenuBarC1Ev
.LEHE25:
	movq	%rsi, 16(%rbx)
	movl	$8, %ecx
.LEHB26:
	call	_Znwy
.LEHE26:
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB27:
	call	_ZN6LazFPV10TStatusBarC1Ev
.LEHE27:
	movq	%rsi, 24(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L48:
	movq	%rax, %rsi
.L45:
	movq	(%rbx), %rcx
	movl	$1, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB28:
	call	_Unwind_Resume
.LEHE28:
.L51:
.L53:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	movl	$8, %edx
	call	_ZdlPvy
	movq	%rdi, %rsi
	jmp	.L45
.L50:
	jmp	.L53
.L49:
	jmp	.L53
.LLSDA6008:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6008-.LLSDACSB6008
.LLSDACSB6008:
	.uleb128 .LEHB21-.LFB6008
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB6008
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L48-.LFB6008
	.uleb128 0
	.uleb128 .LEHB23-.LFB6008
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L49-.LFB6008
	.uleb128 0
	.uleb128 .LEHB24-.LFB6008
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L48-.LFB6008
	.uleb128 0
	.uleb128 .LEHB25-.LFB6008
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L50-.LFB6008
	.uleb128 0
	.uleb128 .LEHB26-.LFB6008
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L48-.LFB6008
	.uleb128 0
	.uleb128 .LEHB27-.LFB6008
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L51-.LFB6008
	.uleb128 0
	.uleb128 .LEHB28-.LFB6008
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
.LLSDACSE6008:
	.text
	.globl	_ZN6LazFPV12TApplicationC1Ev
	.set	_ZN6LazFPV12TApplicationC1Ev,_ZN6LazFPV12TApplicationC2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TApplication_Create
_$dll$laz_fpv$TApplication_Create:
.LFB6006:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movl	$32, %ecx
.LEHB29:
	call	_Znwy
.LEHE29:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB30:
	call	_ZN6LazFPV12TApplicationC1Ev
.LEHE30:
	movq	%rbx, LazApplication(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L56:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB31:
	call	_Unwind_Resume
	nop
.LEHE31:
.LLSDA6006:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6006-.LLSDACSB6006
.LLSDACSB6006:
	.uleb128 .LEHB29-.LFB6006
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB30-.LFB6006
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L56-.LFB6006
	.uleb128 0
	.uleb128 .LEHB31-.LFB6006
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE6006:
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV12TApplicationD2Ev
_ZN6LazFPV12TApplicationD2Ev:
.LFB6012:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movq	24(%rcx), %rsi
	testq	%rsi, %rsi
	movq	%rcx, %rbx
	je	.L59
	movq	%rsi, %rcx
	call	_ZN6LazFPV10TStatusBarD1Ev
	movl	$8, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L59:
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L60
	movq	%rsi, %rcx
	call	_ZN6LazFPV8TMenuBarD1Ev
	movl	$8, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L60:
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L61
	movq	%rsi, %rcx
	call	_ZN6LazFPV11TBackgroundD1Ev
	movl	$8, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L61:
	movq	(%rbx), %rcx
	movl	$1, %edx
	call	_ZdlPvy
	movq	(%rbx), %rcx
	movl	$1, %edx
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	jmp	_ZdlPvy
	.globl	_ZN6LazFPV12TApplicationD1Ev
	.set	_ZN6LazFPV12TApplicationD1Ev,_ZN6LazFPV12TApplicationD2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TApplication_Destroy
_$dll$laz_fpv$TApplication_Destroy:
.LFB6010:
	pushq	%rbx
	subq	$32, %rsp
	movq	LazApplication(%rip), %rbx
	testq	%rbx, %rbx
	je	.L71
	movq	%rbx, %rcx
	call	_ZN6LazFPV12TApplicationD1Ev
	movl	$32, %edx
	movq	%rbx, %rcx
	addq	$32, %rsp
	popq	%rbx
	jmp	_ZdlPvy
	.p2align 4,,10
.L71:
	addq	$32, %rsp
	popq	%rbx
	ret
	.globl	LazApplicationStatusBar
	.bss
	.align 8
LazApplicationStatusBar:
	.space 8
	.globl	LazApplicationMenuBar
	.align 8
LazApplicationMenuBar:
	.space 8
	.globl	LazApplicationBackground
	.align 8
LazApplicationBackground:
	.space 8
	.globl	LazApplication
	.align 8
LazApplication:
	.space 8
	.globl	LazApplicationObject
	.align 8
LazApplicationObject:
	.space 8
