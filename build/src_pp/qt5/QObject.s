	.file "QObject.pas"
# Begin asmlist al_procedures

.section .text.n_QOBJECT$_$QOBJECT_$__$$_CREATE$$QOBJECT,"x"
	.balign 16,0x90
.globl	QOBJECT$_$QOBJECT_$__$$_CREATE$$QOBJECT
QOBJECT$_$QOBJECT_$__$$_CREATE$$QOBJECT:
# [QObject.pas]
# [29] procedure dummy; begin end;
	jmp	_$dll$laz_qt5$QObject_Create

.section .text.n_qobject_$$_dummy,"x"
	.balign 16,0x90
QOBJECT_$$_DUMMY:
.Lc1:
	ret
.Lc2:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .rodata.n_VMT_$QOBJECT_$$_QOBJECT,"d"
	.balign 8
.globl	VMT_$QOBJECT_$$_QOBJECT
VMT_$QOBJECT_$$_QOBJECT:
	.quad	8,-8,0
	.quad	.Ld1
	.quad	0,0,0
	.quad	RTTI_$QOBJECT_$$_QOBJECT
	.quad	0,0,0,0,0
# [31] end.
# End asmlist al_globals
# Begin asmlist al_const

.section .rodata.n_VMT_$QOBJECT_$$_QOBJECT,"d"
	.balign 8
.Ld1:
	.byte	7
	.ascii	"QObject"
# End asmlist al_const
# Begin asmlist al_rtti

.section .rodata.n_INIT_$QOBJECT_$$_QOBJECT,"d"
	.balign 8
.globl	INIT_$QOBJECT_$$_QOBJECT
INIT_$QOBJECT_$$_QOBJECT:
	.byte	15,7
# [32] 
	.ascii	"QObject"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$QOBJECT_$$_QOBJECT,"d"
	.balign 8
.globl	RTTI_$QOBJECT_$$_QOBJECT
RTTI_$QOBJECT_$$_QOBJECT:
	.byte	15,7
	.ascii	"QObject"
	.quad	VMT_$QOBJECT_$$_QOBJECT
	.quad	0
	.short	0
	.byte	7
	.ascii	"QObject"
	.short	0
# End asmlist al_rtti
# Begin asmlist al_indirectglobals

.section .rodata.n_VMT_$QOBJECT_$$_QOBJECT,"d"
	.balign 8
.globl	VMT_$QOBJECT_$$_QOBJECT$indirect
VMT_$QOBJECT_$$_QOBJECT$indirect:
	.quad	VMT_$QOBJECT_$$_QOBJECT

.section .rodata.n_INIT_$QOBJECT_$$_QOBJECT,"d"
	.balign 8
.globl	INIT_$QOBJECT_$$_QOBJECT$indirect
INIT_$QOBJECT_$$_QOBJECT$indirect:
	.quad	INIT_$QOBJECT_$$_QOBJECT

.section .rodata.n_RTTI_$QOBJECT_$$_QOBJECT,"d"
	.balign 8
.globl	RTTI_$QOBJECT_$$_QOBJECT$indirect
RTTI_$QOBJECT_$$_QOBJECT$indirect:
	.quad	RTTI_$QOBJECT_$$_QOBJECT
# End asmlist al_indirectglobals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc3:
	.long	.Lc5-.Lc4
.Lc4:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	16
	.byte	12
	.uleb128	7
	.uleb128	8
	.byte	5
	.uleb128	16
	.uleb128	2
	.balign 4,0
.Lc5:
	.long	.Lc7-.Lc6
.Lc6:
	.secrel32	.Lc3
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.balign 4,0
.Lc7:
# End asmlist al_dwarf_frame

