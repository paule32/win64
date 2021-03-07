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
	movq	%rbx, %rax
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
/APP
 # 25 "src_cc/fpv/TVision.cc" 1
	movl $1, %esi   
	movq %rax, %rdi 
	jmp TVISION$_$TOBJECT_$__$$_DESTROY
 # 0 "" 2
/NO_APP
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
	.globl	_ZN6LazFPV8TPaletteC2Ev
_ZN6LazFPV8TPaletteC2Ev:
.LFB5984:
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
	movabsq	$7310596074087993428, %rdx
	movq	%rax, (%rbx)
	movq	%rdx, (%rax)
	movb	$0, 8(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L11:
	movq	(%rbx), %rcx
	movq	%rax, %rsi
	movl	$1, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB5:
	call	_Unwind_Resume
	nop
.LEHE5:
.LLSDA5984:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5984-.LLSDACSB5984
.LLSDACSB5984:
	.uleb128 .LEHB3-.LFB5984
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB5984
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L11-.LFB5984
	.uleb128 0
	.uleb128 .LEHB5-.LFB5984
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE5984:
	.text
	.globl	_ZN6LazFPV8TPaletteC1Ev
	.set	_ZN6LazFPV8TPaletteC1Ev,_ZN6LazFPV8TPaletteC2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TPalette_Create
_$dll$laz_fpv$TPalette_Create:
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
	call	_ZN6LazFPV8TPaletteC1Ev
.LEHE7:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L15:
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
	.uleb128 .L15-.LFB5982
	.uleb128 0
	.uleb128 .LEHB8-.LFB5982
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE5982:
	.text
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TPalette_Destroy
_$dll$laz_fpv$TPalette_Destroy:
.LFB5986:
/APP
 # 45 "src_cc/fpv/TVision.cc" 1
	movl $1, %esi   
	movq %rax, %rdi 
	jmp TVISION$_$TPALETTE_$__$$_DESTROY
 # 0 "" 2
/NO_APP
	ret
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV8TPaletteD2Ev
_ZN6LazFPV8TPaletteD2Ev:
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
	.globl	_ZN6LazFPV8TPaletteD1Ev
	.set	_ZN6LazFPV8TPaletteD1Ev,_ZN6LazFPV8TPaletteD2Ev
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV8TMenuBarC2Ev
_ZN6LazFPV8TMenuBarC2Ev:
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
	movabsq	$8241941865195457876, %rdx
	movq	%rax, (%rbx)
	movq	%rdx, (%rax)
	movb	$0, 8(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L21:
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
	.uleb128 .L21-.LFB5992
	.uleb128 0
	.uleb128 .LEHB11-.LFB5992
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE5992:
	.text
	.globl	_ZN6LazFPV8TMenuBarC1Ev
	.set	_ZN6LazFPV8TMenuBarC1Ev,_ZN6LazFPV8TMenuBarC2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TMenuBar_Create
_$dll$laz_fpv$TMenuBar_Create:
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
	call	_ZN6LazFPV8TMenuBarC1Ev
.LEHE13:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L25:
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
	.uleb128 .L25-.LFB5990
	.uleb128 0
	.uleb128 .LEHB14-.LFB5990
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE5990:
	.text
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TMenuBar_Destroy
_$dll$laz_fpv$TMenuBar_Destroy:
.LFB5994:
/APP
 # 65 "src_cc/fpv/TVision.cc" 1
	movl $1, %esi   
	movq %rax, %rdi 
	jmp TVISION$_$TMENUBAR_$__$$_DESTROY
 # 0 "" 2
/NO_APP
	ret
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV8TMenuBarD2Ev
_ZN6LazFPV8TMenuBarD2Ev:
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
	.globl	_ZN6LazFPV8TMenuBarD1Ev
	.set	_ZN6LazFPV8TMenuBarD1Ev,_ZN6LazFPV8TMenuBarD2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$LazSetMenuBar
_$dll$laz_fpv$LazSetMenuBar:
.LFB5998:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	testq	%rcx, %rcx
	je	.L34
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L34:
	movl	$8, %ecx
.LEHB15:
	call	_Znwy
.LEHE15:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB16:
	call	_ZN6LazFPV8TMenuBarC1Ev
.LEHE16:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L33:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$8, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB17:
	call	_Unwind_Resume
	nop
.LEHE17:
.LLSDA5998:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5998-.LLSDACSB5998
.LLSDACSB5998:
	.uleb128 .LEHB15-.LFB5998
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB5998
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L33-.LFB5998
	.uleb128 0
	.uleb128 .LEHB17-.LFB5998
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE5998:
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV10TStatusBarC2Ev
_ZN6LazFPV10TStatusBarC2Ev:
.LFB6001:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %rbx
.LEHB18:
	call	_ZN6LazFPV7TObjectC2Ev
.LEHE18:
	movl	$20, %ecx
.LEHB19:
	call	_Znay
.LEHE19:
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
.L37:
	movq	(%rbx), %rcx
	movq	%rax, %rsi
	movl	$1, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB20:
	call	_Unwind_Resume
	nop
.LEHE20:
.LLSDA6001:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6001-.LLSDACSB6001
.LLSDACSB6001:
	.uleb128 .LEHB18-.LFB6001
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB19-.LFB6001
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L37-.LFB6001
	.uleb128 0
	.uleb128 .LEHB20-.LFB6001
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE6001:
	.text
	.globl	_ZN6LazFPV10TStatusBarC1Ev
	.set	_ZN6LazFPV10TStatusBarC1Ev,_ZN6LazFPV10TStatusBarC2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TStatusBar_Create
_$dll$laz_fpv$TStatusBar_Create:
.LFB5999:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movl	$8, %ecx
.LEHB21:
	call	_Znwy
.LEHE21:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB22:
	call	_ZN6LazFPV10TStatusBarC1Ev
.LEHE22:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L41:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$8, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB23:
	call	_Unwind_Resume
	nop
.LEHE23:
.LLSDA5999:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE5999-.LLSDACSB5999
.LLSDACSB5999:
	.uleb128 .LEHB21-.LFB5999
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB5999
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L41-.LFB5999
	.uleb128 0
	.uleb128 .LEHB23-.LFB5999
	.uleb128 .LEHE23-.LEHB23
	.uleb128 0
	.uleb128 0
.LLSDACSE5999:
	.text
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TStatusBar_Destroy
_$dll$laz_fpv$TStatusBar_Destroy:
.LFB6003:
/APP
 # 92 "src_cc/fpv/TVision.cc" 1
	movl $1, %esi   
	movq %rax, %rdi 
	jmp TVISION$_$TSTATUSBAR_$__$$_DESTROY
 # 0 "" 2
/NO_APP
	ret
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV10TStatusBarD2Ev
_ZN6LazFPV10TStatusBarD2Ev:
.LFB6005:
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
	.globl	_$dll$laz_fpv$LazSetStatusBar
_$dll$laz_fpv$LazSetStatusBar:
.LFB6007:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	testq	%rcx, %rcx
	je	.L50
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L50:
	movl	$8, %ecx
.LEHB24:
	call	_Znwy
.LEHE24:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB25:
	call	_ZN6LazFPV10TStatusBarC1Ev
.LEHE25:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L49:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$8, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB26:
	call	_Unwind_Resume
	nop
.LEHE26:
.LLSDA6007:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6007-.LLSDACSB6007
.LLSDACSB6007:
	.uleb128 .LEHB24-.LFB6007
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB6007
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L49-.LFB6007
	.uleb128 0
	.uleb128 .LEHB26-.LFB6007
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
.LLSDACSE6007:
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV11TBackgroundC2Ev
_ZN6LazFPV11TBackgroundC2Ev:
.LFB6010:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %rbx
.LEHB27:
	call	_ZN6LazFPV7TObjectC2Ev
.LEHE27:
	movl	$20, %ecx
.LEHB28:
	call	_Znay
.LEHE28:
	movabsq	$8030594796481495636, %rdx
	movq	%rax, (%rbx)
	movq	%rdx, (%rax)
	movl	$6581877, 8(%rax)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L53:
	movq	(%rbx), %rcx
	movq	%rax, %rsi
	movl	$1, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB29:
	call	_Unwind_Resume
	nop
.LEHE29:
.LLSDA6010:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6010-.LLSDACSB6010
.LLSDACSB6010:
	.uleb128 .LEHB27-.LFB6010
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB28-.LFB6010
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L53-.LFB6010
	.uleb128 0
	.uleb128 .LEHB29-.LFB6010
	.uleb128 .LEHE29-.LEHB29
	.uleb128 0
	.uleb128 0
.LLSDACSE6010:
	.text
	.globl	_ZN6LazFPV11TBackgroundC1Ev
	.set	_ZN6LazFPV11TBackgroundC1Ev,_ZN6LazFPV11TBackgroundC2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TBackground_Create
_$dll$laz_fpv$TBackground_Create:
.LFB6008:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movl	$8, %ecx
.LEHB30:
	call	_Znwy
.LEHE30:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB31:
	call	_ZN6LazFPV11TBackgroundC1Ev
.LEHE31:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L57:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$8, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB32:
	call	_Unwind_Resume
	nop
.LEHE32:
.LLSDA6008:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6008-.LLSDACSB6008
.LLSDACSB6008:
	.uleb128 .LEHB30-.LFB6008
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB6008
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L57-.LFB6008
	.uleb128 0
	.uleb128 .LEHB32-.LFB6008
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
.LLSDACSE6008:
	.text
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TBackground_Destroy
_$dll$laz_fpv$TBackground_Destroy:
.LFB6012:
/APP
 # 119 "src_cc/fpv/TVision.cc" 1
	movl $1, %esi   
	movq %rax, %rdi 
	jmp TVISION$_$TBACKGROUND_$__$$_DESTROY
 # 0 "" 2
/NO_APP
	ret
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV11TBackgroundD2Ev
_ZN6LazFPV11TBackgroundD2Ev:
.LFB6014:
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
	.globl	_$dll$laz_fpv$LazSetBackground
_$dll$laz_fpv$LazSetBackground:
.LFB6016:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	testq	%rcx, %rcx
	je	.L66
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L66:
	movl	$8, %ecx
.LEHB33:
	call	_Znwy
.LEHE33:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB34:
	call	_ZN6LazFPV11TBackgroundC1Ev
.LEHE34:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L65:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$8, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB35:
	call	_Unwind_Resume
	nop
.LEHE35:
.LLSDA6016:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6016-.LLSDACSB6016
.LLSDACSB6016:
	.uleb128 .LEHB33-.LFB6016
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB6016
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L65-.LFB6016
	.uleb128 0
	.uleb128 .LEHB35-.LFB6016
	.uleb128 .LEHE35-.LEHB35
	.uleb128 0
	.uleb128 0
.LLSDACSE6016:
	.text
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV12TApplicationC2Ev
_ZN6LazFPV12TApplicationC2Ev:
.LFB6019:
	pushq	%rdi
	pushq	%rsi
	pushq	%rbx
	subq	$32, %rsp
	movq	%rcx, %rbx
.LEHB36:
	call	_ZN6LazFPV7TObjectC2Ev
.LEHE36:
	movl	$20, %ecx
.LEHB37:
	call	_Znay
	movabsq	$7017568558837154132, %rdx
	movq	%rax, (%rbx)
	movl	$8, %ecx
	movq	%rdx, (%rax)
	movl	$1852795252, 8(%rax)
	movb	$0, 12(%rax)
	call	_Znwy
.LEHE37:
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB38:
	call	_ZN6LazFPV11TBackgroundC1Ev
.LEHE38:
	movq	%rsi, 8(%rbx)
	movl	$8, %ecx
.LEHB39:
	call	_Znwy
.LEHE39:
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB40:
	call	_ZN6LazFPV8TMenuBarC1Ev
.LEHE40:
	movq	%rsi, 16(%rbx)
	movl	$8, %ecx
.LEHB41:
	call	_Znwy
.LEHE41:
	movq	%rax, %rcx
	movq	%rax, %rsi
.LEHB42:
	call	_ZN6LazFPV10TStatusBarC1Ev
.LEHE42:
	movq	%rsi, 24(%rbx)
	addq	$32, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	ret
.L72:
	movq	%rax, %rsi
.L69:
	movq	(%rbx), %rcx
	movl	$1, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB43:
	call	_Unwind_Resume
.LEHE43:
.L75:
.L77:
	movq	%rax, %rdi
	movq	%rsi, %rcx
	movl	$8, %edx
	call	_ZdlPvy
	movq	%rdi, %rsi
	jmp	.L69
.L74:
	jmp	.L77
.L73:
	jmp	.L77
.LLSDA6019:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6019-.LLSDACSB6019
.LLSDACSB6019:
	.uleb128 .LEHB36-.LFB6019
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB6019
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L72-.LFB6019
	.uleb128 0
	.uleb128 .LEHB38-.LFB6019
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L73-.LFB6019
	.uleb128 0
	.uleb128 .LEHB39-.LFB6019
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L72-.LFB6019
	.uleb128 0
	.uleb128 .LEHB40-.LFB6019
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L74-.LFB6019
	.uleb128 0
	.uleb128 .LEHB41-.LFB6019
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L72-.LFB6019
	.uleb128 0
	.uleb128 .LEHB42-.LFB6019
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L75-.LFB6019
	.uleb128 0
	.uleb128 .LEHB43-.LFB6019
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
.LLSDACSE6019:
	.text
	.globl	_ZN6LazFPV12TApplicationC1Ev
	.set	_ZN6LazFPV12TApplicationC1Ev,_ZN6LazFPV12TApplicationC2Ev
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TApplication_Create
_$dll$laz_fpv$TApplication_Create:
.LFB6017:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movl	$32, %ecx
.LEHB44:
	call	_Znwy
.LEHE44:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB45:
	call	_ZN6LazFPV12TApplicationC1Ev
.LEHE45:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L80:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB46:
	call	_Unwind_Resume
	nop
.LEHE46:
.LLSDA6017:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6017-.LLSDACSB6017
.LLSDACSB6017:
	.uleb128 .LEHB44-.LFB6017
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB6017
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L80-.LFB6017
	.uleb128 0
	.uleb128 .LEHB46-.LFB6017
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
.LLSDACSE6017:
	.text
	.p2align 4,,15
	.globl	_$dll$laz_fpv$TApplication_Destroy
_$dll$laz_fpv$TApplication_Destroy:
.LFB6021:
/APP
 # 150 "src_cc/fpv/TVision.cc" 1
	movl $1, %esi   
	movq %rax, %rdi 
	jmp TVISION$_$TAPPLICATION_$__$$_DESTROY
 # 0 "" 2
/NO_APP
	ret
	.align 2
	.p2align 4,,15
	.globl	_ZN6LazFPV12TApplicationD2Ev
_ZN6LazFPV12TApplicationD2Ev:
.LFB6023:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	movq	24(%rcx), %rsi
	testq	%rsi, %rsi
	movq	%rcx, %rbx
	je	.L84
	movq	%rsi, %rcx
	call	_ZN6LazFPV10TStatusBarD1Ev
	movl	$8, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L84:
	movq	16(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L85
	movq	%rsi, %rcx
	call	_ZN6LazFPV8TMenuBarD1Ev
	movl	$8, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L85:
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.L86
	movq	%rsi, %rcx
	call	_ZN6LazFPV11TBackgroundD1Ev
	movl	$8, %edx
	movq	%rsi, %rcx
	call	_ZdlPvy
.L86:
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
	.globl	_$dll$laz_fpv$LazSetApplication
_$dll$laz_fpv$LazSetApplication:
.LFB6025:
	pushq	%rsi
	pushq	%rbx
	subq	$40, %rsp
	testq	%rcx, %rcx
	je	.L101
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.p2align 4,,10
.L101:
	movl	$32, %ecx
.LEHB47:
	call	_Znwy
.LEHE47:
	movq	%rax, %rcx
	movq	%rax, %rbx
.LEHB48:
	call	_ZN6LazFPV12TApplicationC1Ev
.LEHE48:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L100:
	movq	%rax, %rsi
	movq	%rbx, %rcx
	movl	$32, %edx
	call	_ZdlPvy
	movq	%rsi, %rcx
.LEHB49:
	call	_Unwind_Resume
	nop
.LEHE49:
.LLSDA6025:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE6025-.LLSDACSB6025
.LLSDACSB6025:
	.uleb128 .LEHB47-.LFB6025
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB48-.LFB6025
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L100-.LFB6025
	.uleb128 0
	.uleb128 .LEHB49-.LFB6025
	.uleb128 .LEHE49-.LEHB49
	.uleb128 0
	.uleb128 0
.LLSDACSE6025:
	.text
