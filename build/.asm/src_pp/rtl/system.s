	.file "system.pas"
# Begin asmlist al_procedures

.section .text.n_system$_$tvmt_$__$$_getvparent$$pvmt,"x"
	.balign 16,0x90
.globl	SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT
SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT:
.Lc1:
# Var $result located in register rax
# Var $self located in register rcx
# [system.pas]
# [241] begin
# Var $result located in register rax
# [242] result := nil;
	xorl	%eax,%eax
# [243] end;
	ret
.Lc2:

.section .text.n_fpc_get_input,"x"
	.balign 16,0x90
.globl	fpc_get_input
fpc_get_input:
.Lc3:
# Var $result located in register rax
# [246] begin
# Var $result located in register rax
# [247] result := nil;
	xorl	%eax,%eax
# [248] end;
	ret
.Lc4:

.section .text.n_fpc_readln_end,"x"
	.balign 16,0x90
.globl	fpc_readln_end
fpc_readln_end:
.globl	FPC_READLN_END
FPC_READLN_END:
.Lc5:
# [251] begin end;
	movq	%rcx,%rax
# Var f located in register rax
	ret
.Lc6:

.section .text.n_fpc_do_exit,"x"
	.balign 16,0x90
.globl	fpc_do_exit
fpc_do_exit:
.globl	FPC_DO_EXIT
FPC_DO_EXIT:
.Lc7:
# [254] begin end;
	ret
.Lc8:

.section .text.n_fpc_iocheck,"x"
	.balign 16,0x90
.globl	fpc_iocheck
fpc_iocheck:
.Lc9:
# [257] begin end;
	ret
.Lc10:

.section .text.n_fpc_ansistr_decr_ref,"x"
	.balign 16,0x90
.globl	fpc_ansistr_decr_ref
fpc_ansistr_decr_ref:
.Lc11:
# [260] begin end;
	movq	%rcx,%rax
# Var S located in register rax
	ret
.Lc12:

.section .text.n_fpc_help_constructor,"x"
	.balign 16,0x90
.globl	fpc_help_constructor
fpc_help_constructor:
.Lc13:
# Var $result located in register rax
# Var _self located in register rcx
# Var _vmt located in register rdx
# Var _vmt_pos located in register r8d
# [266] begin result := nil end;
# Var $result located in register rax
	xorl	%eax,%eax
	ret
.Lc14:

.section .text.n_fpc_help_destructor,"x"
	.balign 16,0x90
.globl	fpc_help_destructor
fpc_help_destructor:
.Lc15:
# [269] begin end;
	movq	%rcx,%rax
# Var _self located in register rax
# Var _vmt located in register rdx
# Var vmt_pos located in register r8d
	ret
.Lc16:

.section .text.n_fpc_help_fail,"x"
	.balign 16,0x90
.globl	fpc_help_fail
fpc_help_fail:
.Lc17:
# [272] begin end;
	movq	%rcx,%rax
# Var _self located in register rax
# Var _vmt located in register rdx
# Var vmt_pos located in register r8d
	ret
.Lc18:

.section .text.n_fpc_reraise,"x"
	.balign 16,0x90
.globl	fpc_reraise
fpc_reraise:
.Lc19:
# [275] begin end;
	ret
.Lc20:
# End asmlist al_procedures
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$SYSTEM_$$_formal,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_formal
RTTI_$SYSTEM_$$_formal:
	.byte	0,7
# [278] 
	.ascii	"$formal"

.section .rodata.n_RTTI_$SYSTEM_$$_typedformal,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_typedformal
RTTI_$SYSTEM_$$_typedformal:
	.byte	0,12
	.ascii	"$typedformal"

.section .rodata.n_RTTI_$SYSTEM_$$_void,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_void
RTTI_$SYSTEM_$$_void:
	.byte	1,5
	.ascii	"$void"
	.byte	1
	.long	0,0

.section .rodata.n_RTTI_$SYSTEM_$$_POINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_POINTER
RTTI_$SYSTEM_$$_POINTER:
	.byte	29,7
	.ascii	"Pointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_BYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BYTE
RTTI_$SYSTEM_$$_BYTE:
	.byte	1,4
	.ascii	"Byte"
	.byte	1
	.long	0,255

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTINT
RTTI_$SYSTEM_$$_SHORTINT:
	.byte	1,8
	.ascii	"ShortInt"
	.byte	0
	.long	-128,127

.section .rodata.n_RTTI_$SYSTEM_$$_WORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WORD
RTTI_$SYSTEM_$$_WORD:
	.byte	1,4
	.ascii	"Word"
	.byte	3
	.long	0,65535

.section .rodata.n_RTTI_$SYSTEM_$$_SMALLINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SMALLINT
RTTI_$SYSTEM_$$_SMALLINT:
	.byte	1,8
	.ascii	"SmallInt"
	.byte	2
	.long	-32768,32767

.section .rodata.n_RTTI_$SYSTEM_$$_LONGWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGWORD
RTTI_$SYSTEM_$$_LONGWORD:
	.byte	1,8
	.ascii	"LongWord"
	.byte	5
	.long	0,-1

.section .rodata.n_RTTI_$SYSTEM_$$_LONGINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGINT
RTTI_$SYSTEM_$$_LONGINT:
	.byte	1,7
	.ascii	"LongInt"
	.byte	4
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_QWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_QWORD
RTTI_$SYSTEM_$$_QWORD:
	.byte	20,5
	.ascii	"QWord"
	.byte	7
	.quad	0,-1

.section .rodata.n_RTTI_$SYSTEM_$$_INT64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_INT64
RTTI_$SYSTEM_$$_INT64:
	.byte	19,5
	.ascii	"Int64"
	.byte	6
	.quad	-9223372036854775808,9223372036854775807

.section .rodata.n_RTTI_$SYSTEM_$$_uint128,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_uint128
RTTI_$SYSTEM_$$_uint128:
	.byte	1,8
	.ascii	"$uint128"
	.byte	1
	.long	0,0

.section .rodata.n_RTTI_$SYSTEM_$$_int128,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_int128
RTTI_$SYSTEM_$$_int128:
	.byte	1,7
	.ascii	"$int128"
	.byte	1
	.long	0,0

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN
RTTI_$SYSTEM_$$_BOOLEAN:
	.byte	18,7
	.ascii	"Boolean"
	.byte	1
	.long	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN8,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN8
RTTI_$SYSTEM_$$_BOOLEAN8:
	.byte	18,8
	.ascii	"Boolean8"
	.byte	1
	.long	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN16,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN16
RTTI_$SYSTEM_$$_BOOLEAN16:
	.byte	18,9
	.ascii	"Boolean16"
	.byte	3
	.long	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN32,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN32
RTTI_$SYSTEM_$$_BOOLEAN32:
	.byte	18,9
	.ascii	"Boolean32"
	.byte	5
	.long	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN64
RTTI_$SYSTEM_$$_BOOLEAN64:
	.byte	18,9
	.ascii	"Boolean64"
	.byte	7
	.quad	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BYTEBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BYTEBOOL
RTTI_$SYSTEM_$$_BYTEBOOL:
	.byte	18,8
	.ascii	"ByteBool"
	.byte	0
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_WORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WORDBOOL
RTTI_$SYSTEM_$$_WORDBOOL:
	.byte	18,8
	.ascii	"WordBool"
	.byte	2
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_LONGBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGBOOL
RTTI_$SYSTEM_$$_LONGBOOL:
	.byte	18,8
	.ascii	"LongBool"
	.byte	4
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_QWORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_QWORDBOOL
RTTI_$SYSTEM_$$_QWORDBOOL:
	.byte	18,9
	.ascii	"QWordBool"
	.byte	6
	.quad	-9223372036854775808,9223372036854775807

.section .rodata.n_RTTI_$SYSTEM_$$_CHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CHAR
RTTI_$SYSTEM_$$_CHAR:
	.byte	2,4
	.ascii	"Char"
	.byte	1
	.long	0,255

.section .rodata.n_RTTI_$SYSTEM_$$_WIDECHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WIDECHAR
RTTI_$SYSTEM_$$_WIDECHAR:
	.byte	17,8
	.ascii	"WideChar"
	.byte	3
	.long	0,65535

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTSTRING
RTTI_$SYSTEM_$$_SHORTSTRING:
	.byte	7,11
	.ascii	"ShortString"
	.byte	255

.section .rodata.n_RTTI_$SYSTEM_$$_longstring,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_longstring
RTTI_$SYSTEM_$$_longstring:
	.byte	8,11
	.ascii	"$longstring"

.section .rodata.n_RTTI_$SYSTEM_$$_ANSISTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_ANSISTRING
RTTI_$SYSTEM_$$_ANSISTRING:
	.byte	9,10
	.ascii	"AnsiString"
	.short	0

.section .rodata.n_RTTI_$SYSTEM_$$_WIDESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WIDESTRING
RTTI_$SYSTEM_$$_WIDESTRING:
	.byte	10,10
	.ascii	"WideString"

.section .rodata.n_RTTI_$SYSTEM_$$_UNICODESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_UNICODESTRING
RTTI_$SYSTEM_$$_UNICODESTRING:
	.byte	24,13
	.ascii	"UnicodeString"

.section .rodata.n_RTTI_$SYSTEM_$$_OPENSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_OPENSTRING
RTTI_$SYSTEM_$$_OPENSTRING:
	.byte	7,10
	.ascii	"OpenString"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_SINGLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SINGLE
RTTI_$SYSTEM_$$_SINGLE:
	.byte	4,6
	.ascii	"Single"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_DOUBLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_DOUBLE
RTTI_$SYSTEM_$$_DOUBLE:
	.byte	4,6
	.ascii	"Double"
	.byte	1

.section .rodata.n_RTTI_$SYSTEM_$$_s80real,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_s80real
RTTI_$SYSTEM_$$_s80real:
	.byte	4,8
	.ascii	"$s80real"
	.byte	2

.section .rodata.n_RTTI_$SYSTEM_$$_sc80real,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_sc80real
RTTI_$SYSTEM_$$_sc80real:
	.byte	4,9
	.ascii	"$sc80real"
	.byte	2

.section .rodata.n_RTTI_$SYSTEM_$$_CURRENCY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CURRENCY
RTTI_$SYSTEM_$$_CURRENCY:
	.byte	4,8
	.ascii	"Currency"
	.byte	4

.section .rodata.n_RTTI_$SYSTEM_$$_char_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_char_pointer
RTTI_$SYSTEM_$$_char_pointer:
	.byte	29,13
	.ascii	"$char_pointer"
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_widechar_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_widechar_pointer
RTTI_$SYSTEM_$$_widechar_pointer:
	.byte	29,17
	.ascii	"$widechar_pointer"
	.quad	RTTI_$SYSTEM_$$_WIDECHAR$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_parentfp_void_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_parentfp_void_pointer
RTTI_$SYSTEM_$$_parentfp_void_pointer:
	.byte	29,22
	.ascii	"$parentfp_void_pointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARPOINTER
RTTI_$SYSTEM_$$_NEARPOINTER:
	.byte	29,11
	.ascii	"NearPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARCSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARCSPOINTER
RTTI_$SYSTEM_$$_NEARCSPOINTER:
	.byte	29,13
	.ascii	"NearCsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARDSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARDSPOINTER
RTTI_$SYSTEM_$$_NEARDSPOINTER:
	.byte	29,13
	.ascii	"NearDsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARSSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARSSPOINTER
RTTI_$SYSTEM_$$_NEARSSPOINTER:
	.byte	29,13
	.ascii	"NearSsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARESPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARESPOINTER
RTTI_$SYSTEM_$$_NEARESPOINTER:
	.byte	29,13
	.ascii	"NearEsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARFSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARFSPOINTER
RTTI_$SYSTEM_$$_NEARFSPOINTER:
	.byte	29,13
	.ascii	"NearFsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARGSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARGSPOINTER
RTTI_$SYSTEM_$$_NEARGSPOINTER:
	.byte	29,13
	.ascii	"NearGsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_openchararray,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_openchararray
RTTI_$SYSTEM_$$_openchararray:
	.byte	12,4
	.ascii	"Char"
	.quad	0,0
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_INT64$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_file,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_file
RTTI_$SYSTEM_$$_file:
	.byte	0,5
	.ascii	"$file"

.section .rodata.n_RTTI_$SYSTEM_$$_VARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_VARIANT
RTTI_$SYSTEM_$$_VARIANT:
	.byte	11,7
	.ascii	"Variant"

.section .rodata.n_RTTI_$SYSTEM_$$_OLEVARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_OLEVARIANT
RTTI_$SYSTEM_$$_OLEVARIANT:
	.byte	11,10
	.ascii	"OleVariant"

.section .rodata.n_RTTI_$SYSTEM_$$_TEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXT
RTTI_$SYSTEM_$$_TEXT:
	.byte	0,4
	.ascii	"Text"

.section .rodata.n_RTTI_$SYSTEM_$$_TYPEDFILE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TYPEDFILE
RTTI_$SYSTEM_$$_TYPEDFILE:
	.byte	0,9
	.ascii	"TypedFile"

.section .rodata.n_INIT_$SYSTEM_$$___vtbl_ptr_type,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$___vtbl_ptr_type
INIT_$SYSTEM_$$___vtbl_ptr_type:
	.byte	13,16
	.ascii	"$__vtbl_ptr_type"
	.quad	0
	.long	40
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_pvmt,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_pvmt
RTTI_$SYSTEM_$$_pvmt:
	.byte	29,5
	.ascii	"$pvmt"
	.quad	RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000037,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000037
RTTI_$SYSTEM_$$_def00000037:
	.byte	29,0
	.quad	RTTI_$SYSTEM_$$_SHORTSTRING$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000038,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000038
RTTI_$SYSTEM_$$_def00000038:
	.byte	12,0
	.quad	8,1
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$___vtbl_ptr_type,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$___vtbl_ptr_type
RTTI_$SYSTEM_$$___vtbl_ptr_type:
	.byte	13,16
	.ascii	"$__vtbl_ptr_type"
	.quad	INIT_$SYSTEM_$$___vtbl_ptr_type
	.long	40,5
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_pvmt$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_def00000037$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_def00000038$indirect
	.quad	32

.section .rodata.n_RTTI_$SYSTEM_$$_vtblarray,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_vtblarray
RTTI_$SYSTEM_$$_vtblarray:
	.byte	12,10
	.ascii	"$vtblarray"
	.quad	16,2
	.quad	RTTI_$SYSTEM_$$_pvmt$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_methodpointer,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_methodpointer
INIT_$SYSTEM_$$_methodpointer:
	.byte	13,14
	.ascii	"$methodpointer"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_methodpointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_methodpointer
RTTI_$SYSTEM_$$_methodpointer:
	.byte	13,14
	.ascii	"$methodpointer"
	.quad	INIT_$SYSTEM_$$_methodpointer
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8

.section .rodata.n_INIT_$SYSTEM_$$_nestedprocpointer,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_nestedprocpointer
INIT_$SYSTEM_$$_nestedprocpointer:
	.byte	13,18
	.ascii	"$nestedprocpointer"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_nestedprocpointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_nestedprocpointer
RTTI_$SYSTEM_$$_nestedprocpointer:
	.byte	13,18
	.ascii	"$nestedprocpointer"
	.quad	INIT_$SYSTEM_$$_nestedprocpointer
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PSHORTSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSHORTSTRING
RTTI_$SYSTEM_$$_PSHORTSTRING:
	.byte	29,12
	.ascii	"PShortString"
	.quad	RTTI_$SYSTEM_$$_SHORTSTRING$indirect

.section .rodata.n_INIT_$SYSTEM_$$_JMP_BUF,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_JMP_BUF
INIT_$SYSTEM_$$_JMP_BUF:
	.byte	13,7
	.ascii	"jmp_buf"
	.quad	0
	.long	36
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_JMP_BUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_JMP_BUF
RTTI_$SYSTEM_$$_JMP_BUF:
	.byte	13,7
	.ascii	"jmp_buf"
	.quad	INIT_$SYSTEM_$$_JMP_BUF
	.long	36,6
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	12
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	20
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	28

.section .rodata.n_RTTI_$SYSTEM_$$_PJMP_BUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PJMP_BUF
RTTI_$SYSTEM_$$_PJMP_BUF:
	.byte	29,8
	.ascii	"PJmp_buf"
	.quad	RTTI_$SYSTEM_$$_JMP_BUF$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TEXCEPTADDR,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXCEPTADDR
INIT_$SYSTEM_$$_TEXCEPTADDR:
	.byte	13,11
	.ascii	"TExceptAddr"
	.quad	0
	.long	24
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTADDR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTADDR
RTTI_$SYSTEM_$$_TEXCEPTADDR:
	.byte	13,11
	.ascii	"TExceptAddr"
	.quad	INIT_$SYSTEM_$$_TEXCEPTADDR
	.long	24,3
	.quad	RTTI_$SYSTEM_$$_PJMP_BUF$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	16

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTADDR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTADDR
RTTI_$SYSTEM_$$_PEXCEPTADDR:
	.byte	29,11
	.ascii	"PExceptAddr"
	.quad	RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect

.section .rodata.n_INIT_$SYSTEM_$$_FILEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_FILEREC
INIT_$SYSTEM_$$_FILEREC:
	.byte	13,7
	.ascii	"FileRec"
	.quad	0
	.long	4
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_FILEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_FILEREC
RTTI_$SYSTEM_$$_FILEREC:
	.byte	13,7
	.ascii	"FileRec"
	.quad	INIT_$SYSTEM_$$_FILEREC
	.long	4,1
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	0

.section .rodata.n_INIT_$SYSTEM_$$_TGUID,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TGUID
INIT_$SYSTEM_$$_TGUID:
	.byte	13,5
	.ascii	"TGuid"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def00000045,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000045
RTTI_$SYSTEM_$$_def00000045:
	.byte	12,0
	.quad	8,8
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000046,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000046
RTTI_$SYSTEM_$$_def00000046:
	.byte	12,0
	.quad	8,8
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000047,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000047
RTTI_$SYSTEM_$$_def00000047:
	.byte	12,0
	.quad	6,6
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TGUID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TGUID
RTTI_$SYSTEM_$$_TGUID:
	.byte	13,5
	.ascii	"TGuid"
	.quad	INIT_$SYSTEM_$$_TGUID
	.long	16,14
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	6
	.quad	RTTI_$SYSTEM_$$_def00000045$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	6
	.quad	RTTI_$SYSTEM_$$_def00000046$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	6
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.quad	9
	.quad	RTTI_$SYSTEM_$$_def00000047$indirect
	.quad	10

.section .rodata.n_RTTI_$SYSTEM_$$_PGUID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PGUID
RTTI_$SYSTEM_$$_PGUID:
	.byte	29,5
	.ascii	"PGuid"
	.quad	RTTI_$SYSTEM_$$_TGUID$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND
RTTI_$SYSTEM_$$_TTYPEKIND:
	.byte	3,9
	.ascii	"TTypeKind"
	.byte	1
	.long	0,29
	.quad	0
	.byte	9
	.ascii	"tkUnknown"
	.byte	9
	.ascii	"tkInteger"
	.byte	6
	.ascii	"tkChar"
	.byte	13
	.ascii	"tkEnumeration"
	.byte	7
	.ascii	"tkFloat"
	.byte	5
	.ascii	"tkSet"
	.byte	8
	.ascii	"tkMethod"
	.byte	9
	.ascii	"tkSString"
	.byte	9
	.ascii	"tkLString"
	.byte	9
	.ascii	"tkAString"
	.byte	9
	.ascii	"tkWString"
	.byte	9
	.ascii	"tkVariant"
	.byte	7
	.ascii	"tkArray"
	.byte	8
	.ascii	"tkRecord"
	.byte	11
	.ascii	"tkInterface"
	.byte	7
	.ascii	"tkClass"
	.byte	8
	.ascii	"tkObject"
	.byte	7
	.ascii	"tkWChar"
	.byte	6
	.ascii	"tkBool"
	.byte	7
	.ascii	"tkInt64"
	.byte	7
	.ascii	"tkQWord"
	.byte	10
	.ascii	"tkDynArray"
	.byte	14
	.ascii	"tkInterfaceRaw"
	.byte	9
	.ascii	"tkProcVar"
	.byte	9
	.ascii	"tkUString"
	.byte	7
	.ascii	"tkUChar"
	.byte	8
	.ascii	"tkHelper"
	.byte	6
	.ascii	"tkFile"
	.byte	10
	.ascii	"tkClassRef"
	.byte	9
	.ascii	"tkPointer"
	.byte	6
	.ascii	"system"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND_s2o
RTTI_$SYSTEM_$$_TTYPEKIND_s2o:
	.long	30,12
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+142
	.long	9
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+112
	.long	18
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+196
	.long	2
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+48
	.long	15
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+171
	.long	28
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+289
	.long	21
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+219
	.long	3
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+55
	.long	27
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+282
	.long	4
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+69
	.long	26
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+273
	.long	19
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+203
	.long	1
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+38
	.long	14
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+159
	.long	22
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+230
	.long	8
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+102
	.long	6
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+83
	.long	16
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+179
	.long	29
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+300
	.long	23
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+245
	.long	20
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+211
	.long	13
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+150
	.long	5
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+77
	.long	7
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+92
	.long	25
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+265
	.long	0
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+28
	.long	24
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+255
	.long	11
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+132
	.long	17
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+188
	.long	10
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+122

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND_o2s
RTTI_$SYSTEM_$$_TTYPEKIND_o2s:
	.long	0
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+28
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+38
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+48
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+55
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+69
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+77
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+83
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+92
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+102
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+112
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+122
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+132
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+142
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+150
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+159
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+171
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+179
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+188
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+196
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+203
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+211
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+219
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+230
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+245
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+255
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+265
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+273
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+282
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+289
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+300

.section .rodata.n_RTTI_$SYSTEM_$$_PTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PTEXT
RTTI_$SYSTEM_$$_PTEXT:
	.byte	29,5
	.ascii	"PText"
	.quad	RTTI_$SYSTEM_$$_TEXT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TEXTREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXTREC
INIT_$SYSTEM_$$_TEXTREC:
	.byte	13,7
	.ascii	"TextRec"
	.quad	0
	.long	20
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TEXTREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXTREC
RTTI_$SYSTEM_$$_TEXTREC:
	.byte	13,7
	.ascii	"TextRec"
	.quad	INIT_$SYSTEM_$$_TEXTREC
	.long	20,5
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	12
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	16

.section .rodata.n_INIT_$SYSTEM_$$_TMSGSTRTABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TMSGSTRTABLE
INIT_$SYSTEM_$$_TMSGSTRTABLE:
	.byte	13,12
	.ascii	"TMsgStrTable"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TMSGSTRTABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TMSGSTRTABLE
RTTI_$SYSTEM_$$_TMSGSTRTABLE:
	.byte	13,12
	.ascii	"TMsgStrTable"
	.quad	INIT_$SYSTEM_$$_TMSGSTRTABLE
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8

.section .rodata.n_INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE
INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE:
	.byte	13,19
	.ascii	"TStringMessageTable"
	.quad	0
	.long	24
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def0000004D,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000004D
RTTI_$SYSTEM_$$_def0000004D:
	.byte	12,0
	.quad	16,1
	.quad	RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE
RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE:
	.byte	13,19
	.ascii	"TStringMessageTable"
	.quad	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE
	.long	24,2
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_def0000004D$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE
RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE:
	.byte	29,19
	.ascii	"PStringMessageTable"
	.quad	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE:
	.byte	3,19
	.ascii	"TInterfaceEntryType"
	.byte	1
	.long	0,6
	.quad	0
	.byte	10
	.ascii	"etStandard"
	.byte	21
	.ascii	"etVirtualMethodResult"
	.byte	20
	.ascii	"etStaticMethodResult"
	.byte	12
	.ascii	"etFieldValue"
	.byte	20
	.ascii	"etVirtualMethodClass"
	.byte	19
	.ascii	"etStaticMethodClass"
	.byte	17
	.ascii	"etFieldValueClass"
	.byte	6
	.ascii	"system"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o:
	.long	7,3
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+92
	.long	6
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+146
	.long	0
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+38
	.long	5
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+126
	.long	2
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+71
	.long	4
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+105
	.long	1
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+49

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s:
	.long	0
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+38
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+49
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+71
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+92
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+105
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+126
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+146

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACEENTRY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACEENTRY
INIT_$SYSTEM_$$_TINTERFACEENTRY:
	.byte	13,15
	.ascii	"TInterfaceEntry"
	.quad	0
	.long	56
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRY
RTTI_$SYSTEM_$$_TINTERFACEENTRY:
	.byte	13,15
	.ascii	"TInterfaceEntry"
	.quad	INIT_$SYSTEM_$$_TINTERFACEENTRY
	.long	56,8
	.quad	RTTI_$SYSTEM_$$_PGUID$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect
	.quad	48

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACETABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACETABLE
INIT_$SYSTEM_$$_TINTERFACETABLE:
	.byte	13,15
	.ascii	"TInterfaceTable"
	.quad	0
	.long	64
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def00000054,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000054
RTTI_$SYSTEM_$$_def00000054:
	.byte	12,0
	.quad	56,1
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACETABLE
RTTI_$SYSTEM_$$_TINTERFACETABLE:
	.byte	13,15
	.ascii	"TInterfaceTable"
	.quad	INIT_$SYSTEM_$$_TINTERFACETABLE
	.long	64,2
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_def00000054$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PINTERFACETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINTERFACETABLE
RTTI_$SYSTEM_$$_PINTERFACETABLE:
	.byte	29,15
	.ascii	"PInterfaceTable"
	.quad	RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TVMT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TVMT
INIT_$SYSTEM_$$_TVMT:
	.byte	13,4
	.ascii	"TVmt"
	.quad	0
	.long	192
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TVMT
RTTI_$SYSTEM_$$_TVMT:
	.byte	13,4
	.ascii	"TVmt"
	.quad	INIT_$SYSTEM_$$_TVMT
	.long	192,25
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_PPVMT$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	48
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	56
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	64
	.quad	RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect
	.quad	72
	.quad	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect
	.quad	80
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	88
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	96
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	104
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	112
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	120
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	128
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	136
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	144
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	152
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	160
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	168
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	176
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	184

.section .rodata.n_RTTI_$SYSTEM_$$_PVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PVMT
RTTI_$SYSTEM_$$_PVMT:
	.byte	29,4
	.ascii	"PVmt"
	.quad	RTTI_$SYSTEM_$$_TVMT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PPVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPVMT
RTTI_$SYSTEM_$$_PPVMT:
	.byte	29,5
	.ascii	"PPVmt"
	.quad	RTTI_$SYSTEM_$$_PVMT$indirect
# End asmlist al_rtti
# Begin asmlist al_indirectglobals

.section .rodata.n_RTTI_$SYSTEM_$$_formal,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_formal$indirect
RTTI_$SYSTEM_$$_formal$indirect:
	.quad	RTTI_$SYSTEM_$$_formal

.section .rodata.n_RTTI_$SYSTEM_$$_typedformal,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_typedformal$indirect
RTTI_$SYSTEM_$$_typedformal$indirect:
	.quad	RTTI_$SYSTEM_$$_typedformal

.section .rodata.n_RTTI_$SYSTEM_$$_void,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_void$indirect
RTTI_$SYSTEM_$$_void$indirect:
	.quad	RTTI_$SYSTEM_$$_void

.section .rodata.n_RTTI_$SYSTEM_$$_POINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_POINTER$indirect
RTTI_$SYSTEM_$$_POINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_POINTER

.section .rodata.n_RTTI_$SYSTEM_$$_BYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BYTE$indirect
RTTI_$SYSTEM_$$_BYTE$indirect:
	.quad	RTTI_$SYSTEM_$$_BYTE

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTINT$indirect
RTTI_$SYSTEM_$$_SHORTINT$indirect:
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .rodata.n_RTTI_$SYSTEM_$$_WORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WORD$indirect
RTTI_$SYSTEM_$$_WORD$indirect:
	.quad	RTTI_$SYSTEM_$$_WORD

.section .rodata.n_RTTI_$SYSTEM_$$_SMALLINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SMALLINT$indirect
RTTI_$SYSTEM_$$_SMALLINT$indirect:
	.quad	RTTI_$SYSTEM_$$_SMALLINT

.section .rodata.n_RTTI_$SYSTEM_$$_LONGWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGWORD$indirect
RTTI_$SYSTEM_$$_LONGWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_LONGWORD

.section .rodata.n_RTTI_$SYSTEM_$$_LONGINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGINT$indirect
RTTI_$SYSTEM_$$_LONGINT$indirect:
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .rodata.n_RTTI_$SYSTEM_$$_QWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_QWORD$indirect
RTTI_$SYSTEM_$$_QWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_QWORD

.section .rodata.n_RTTI_$SYSTEM_$$_INT64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_INT64$indirect
RTTI_$SYSTEM_$$_INT64$indirect:
	.quad	RTTI_$SYSTEM_$$_INT64

.section .rodata.n_RTTI_$SYSTEM_$$_uint128,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_uint128$indirect
RTTI_$SYSTEM_$$_uint128$indirect:
	.quad	RTTI_$SYSTEM_$$_uint128

.section .rodata.n_RTTI_$SYSTEM_$$_int128,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_int128$indirect
RTTI_$SYSTEM_$$_int128$indirect:
	.quad	RTTI_$SYSTEM_$$_int128

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN$indirect
RTTI_$SYSTEM_$$_BOOLEAN$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN8,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN8$indirect
RTTI_$SYSTEM_$$_BOOLEAN8$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN8

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN16,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN16$indirect
RTTI_$SYSTEM_$$_BOOLEAN16$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN16

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN32,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN32$indirect
RTTI_$SYSTEM_$$_BOOLEAN32$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN32

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN64$indirect
RTTI_$SYSTEM_$$_BOOLEAN64$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN64

.section .rodata.n_RTTI_$SYSTEM_$$_BYTEBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BYTEBOOL$indirect
RTTI_$SYSTEM_$$_BYTEBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_BYTEBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_WORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WORDBOOL$indirect
RTTI_$SYSTEM_$$_WORDBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_WORDBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_LONGBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGBOOL$indirect
RTTI_$SYSTEM_$$_LONGBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_LONGBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_QWORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_QWORDBOOL$indirect
RTTI_$SYSTEM_$$_QWORDBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_QWORDBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_CHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CHAR$indirect
RTTI_$SYSTEM_$$_CHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_CHAR

.section .rodata.n_RTTI_$SYSTEM_$$_WIDECHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WIDECHAR$indirect
RTTI_$SYSTEM_$$_WIDECHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_WIDECHAR

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTSTRING$indirect
RTTI_$SYSTEM_$$_SHORTSTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_SHORTSTRING

.section .rodata.n_RTTI_$SYSTEM_$$_longstring,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_longstring$indirect
RTTI_$SYSTEM_$$_longstring$indirect:
	.quad	RTTI_$SYSTEM_$$_longstring

.section .rodata.n_RTTI_$SYSTEM_$$_ANSISTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_ANSISTRING$indirect
RTTI_$SYSTEM_$$_ANSISTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_ANSISTRING

.section .rodata.n_RTTI_$SYSTEM_$$_WIDESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WIDESTRING$indirect
RTTI_$SYSTEM_$$_WIDESTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_WIDESTRING

.section .rodata.n_RTTI_$SYSTEM_$$_UNICODESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_UNICODESTRING$indirect
RTTI_$SYSTEM_$$_UNICODESTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_UNICODESTRING

.section .rodata.n_RTTI_$SYSTEM_$$_OPENSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_OPENSTRING$indirect
RTTI_$SYSTEM_$$_OPENSTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_OPENSTRING

.section .rodata.n_RTTI_$SYSTEM_$$_SINGLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SINGLE$indirect
RTTI_$SYSTEM_$$_SINGLE$indirect:
	.quad	RTTI_$SYSTEM_$$_SINGLE

.section .rodata.n_RTTI_$SYSTEM_$$_DOUBLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_DOUBLE$indirect
RTTI_$SYSTEM_$$_DOUBLE$indirect:
	.quad	RTTI_$SYSTEM_$$_DOUBLE

.section .rodata.n_RTTI_$SYSTEM_$$_s80real,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_s80real$indirect
RTTI_$SYSTEM_$$_s80real$indirect:
	.quad	RTTI_$SYSTEM_$$_s80real

.section .rodata.n_RTTI_$SYSTEM_$$_sc80real,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_sc80real$indirect
RTTI_$SYSTEM_$$_sc80real$indirect:
	.quad	RTTI_$SYSTEM_$$_sc80real

.section .rodata.n_RTTI_$SYSTEM_$$_CURRENCY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CURRENCY$indirect
RTTI_$SYSTEM_$$_CURRENCY$indirect:
	.quad	RTTI_$SYSTEM_$$_CURRENCY

.section .rodata.n_RTTI_$SYSTEM_$$_char_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_char_pointer$indirect
RTTI_$SYSTEM_$$_char_pointer$indirect:
	.quad	RTTI_$SYSTEM_$$_char_pointer

.section .rodata.n_RTTI_$SYSTEM_$$_widechar_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_widechar_pointer$indirect
RTTI_$SYSTEM_$$_widechar_pointer$indirect:
	.quad	RTTI_$SYSTEM_$$_widechar_pointer

.section .rodata.n_RTTI_$SYSTEM_$$_parentfp_void_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect
RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect:
	.quad	RTTI_$SYSTEM_$$_parentfp_void_pointer

.section .rodata.n_RTTI_$SYSTEM_$$_NEARPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARPOINTER$indirect
RTTI_$SYSTEM_$$_NEARPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARCSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARCSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARCSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARCSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARDSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARDSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARDSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARDSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARSSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARSSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARSSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARSSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARESPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARESPOINTER$indirect
RTTI_$SYSTEM_$$_NEARESPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARESPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARFSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARFSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARFSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARFSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARGSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARGSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARGSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARGSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_openchararray,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_openchararray$indirect
RTTI_$SYSTEM_$$_openchararray$indirect:
	.quad	RTTI_$SYSTEM_$$_openchararray

.section .rodata.n_RTTI_$SYSTEM_$$_file,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_file$indirect
RTTI_$SYSTEM_$$_file$indirect:
	.quad	RTTI_$SYSTEM_$$_file

.section .rodata.n_RTTI_$SYSTEM_$$_VARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_VARIANT$indirect
RTTI_$SYSTEM_$$_VARIANT$indirect:
	.quad	RTTI_$SYSTEM_$$_VARIANT

.section .rodata.n_RTTI_$SYSTEM_$$_OLEVARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_OLEVARIANT$indirect
RTTI_$SYSTEM_$$_OLEVARIANT$indirect:
	.quad	RTTI_$SYSTEM_$$_OLEVARIANT

.section .rodata.n_RTTI_$SYSTEM_$$_TEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXT$indirect
RTTI_$SYSTEM_$$_TEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXT

.section .rodata.n_RTTI_$SYSTEM_$$_TYPEDFILE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TYPEDFILE$indirect
RTTI_$SYSTEM_$$_TYPEDFILE$indirect:
	.quad	RTTI_$SYSTEM_$$_TYPEDFILE

.section .rodata.n_INIT_$SYSTEM_$$___vtbl_ptr_type,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$___vtbl_ptr_type$indirect
INIT_$SYSTEM_$$___vtbl_ptr_type$indirect:
	.quad	INIT_$SYSTEM_$$___vtbl_ptr_type

.section .rodata.n_RTTI_$SYSTEM_$$_pvmt,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_pvmt$indirect
RTTI_$SYSTEM_$$_pvmt$indirect:
	.quad	RTTI_$SYSTEM_$$_pvmt

.section .rodata.n_RTTI_$SYSTEM_$$_def00000037,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000037$indirect
RTTI_$SYSTEM_$$_def00000037$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000037

.section .rodata.n_RTTI_$SYSTEM_$$_def00000038,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000038$indirect
RTTI_$SYSTEM_$$_def00000038$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000038

.section .rodata.n_RTTI_$SYSTEM_$$___vtbl_ptr_type,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect
RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect:
	.quad	RTTI_$SYSTEM_$$___vtbl_ptr_type

.section .rodata.n_RTTI_$SYSTEM_$$_vtblarray,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_vtblarray$indirect
RTTI_$SYSTEM_$$_vtblarray$indirect:
	.quad	RTTI_$SYSTEM_$$_vtblarray

.section .rodata.n_INIT_$SYSTEM_$$_methodpointer,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_methodpointer$indirect
INIT_$SYSTEM_$$_methodpointer$indirect:
	.quad	INIT_$SYSTEM_$$_methodpointer

.section .rodata.n_RTTI_$SYSTEM_$$_methodpointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_methodpointer$indirect
RTTI_$SYSTEM_$$_methodpointer$indirect:
	.quad	RTTI_$SYSTEM_$$_methodpointer

.section .rodata.n_INIT_$SYSTEM_$$_nestedprocpointer,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_nestedprocpointer$indirect
INIT_$SYSTEM_$$_nestedprocpointer$indirect:
	.quad	INIT_$SYSTEM_$$_nestedprocpointer

.section .rodata.n_RTTI_$SYSTEM_$$_nestedprocpointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_nestedprocpointer$indirect
RTTI_$SYSTEM_$$_nestedprocpointer$indirect:
	.quad	RTTI_$SYSTEM_$$_nestedprocpointer

.section .rodata.n_RTTI_$SYSTEM_$$_PSHORTSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
RTTI_$SYSTEM_$$_PSHORTSTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING

.section .rodata.n_INIT_$SYSTEM_$$_JMP_BUF,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_JMP_BUF$indirect
INIT_$SYSTEM_$$_JMP_BUF$indirect:
	.quad	INIT_$SYSTEM_$$_JMP_BUF

.section .rodata.n_RTTI_$SYSTEM_$$_JMP_BUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_JMP_BUF$indirect
RTTI_$SYSTEM_$$_JMP_BUF$indirect:
	.quad	RTTI_$SYSTEM_$$_JMP_BUF

.section .rodata.n_RTTI_$SYSTEM_$$_PJMP_BUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PJMP_BUF$indirect
RTTI_$SYSTEM_$$_PJMP_BUF$indirect:
	.quad	RTTI_$SYSTEM_$$_PJMP_BUF

.section .rodata.n_INIT_$SYSTEM_$$_TEXCEPTADDR,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXCEPTADDR$indirect
INIT_$SYSTEM_$$_TEXCEPTADDR$indirect:
	.quad	INIT_$SYSTEM_$$_TEXCEPTADDR

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTADDR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect
RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXCEPTADDR

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTADDR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect
RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect:
	.quad	RTTI_$SYSTEM_$$_PEXCEPTADDR

.section .rodata.n_INIT_$SYSTEM_$$_FILEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_FILEREC$indirect
INIT_$SYSTEM_$$_FILEREC$indirect:
	.quad	INIT_$SYSTEM_$$_FILEREC

.section .rodata.n_RTTI_$SYSTEM_$$_FILEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_FILEREC$indirect
RTTI_$SYSTEM_$$_FILEREC$indirect:
	.quad	RTTI_$SYSTEM_$$_FILEREC

.section .rodata.n_INIT_$SYSTEM_$$_TGUID,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TGUID$indirect
INIT_$SYSTEM_$$_TGUID$indirect:
	.quad	INIT_$SYSTEM_$$_TGUID

.section .rodata.n_RTTI_$SYSTEM_$$_def00000045,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000045$indirect
RTTI_$SYSTEM_$$_def00000045$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000045

.section .rodata.n_RTTI_$SYSTEM_$$_def00000046,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000046$indirect
RTTI_$SYSTEM_$$_def00000046$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000046

.section .rodata.n_RTTI_$SYSTEM_$$_def00000047,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000047$indirect
RTTI_$SYSTEM_$$_def00000047$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000047

.section .rodata.n_RTTI_$SYSTEM_$$_TGUID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TGUID$indirect
RTTI_$SYSTEM_$$_TGUID$indirect:
	.quad	RTTI_$SYSTEM_$$_TGUID

.section .rodata.n_RTTI_$SYSTEM_$$_PGUID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PGUID$indirect
RTTI_$SYSTEM_$$_PGUID$indirect:
	.quad	RTTI_$SYSTEM_$$_PGUID

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND$indirect
RTTI_$SYSTEM_$$_TTYPEKIND$indirect:
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND_s2o$indirect
RTTI_$SYSTEM_$$_TTYPEKIND_s2o$indirect:
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND_s2o

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND_o2s$indirect
RTTI_$SYSTEM_$$_TTYPEKIND_o2s$indirect:
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND_o2s

.section .rodata.n_RTTI_$SYSTEM_$$_PTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PTEXT$indirect
RTTI_$SYSTEM_$$_PTEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_PTEXT

.section .rodata.n_INIT_$SYSTEM_$$_TEXTREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXTREC$indirect
INIT_$SYSTEM_$$_TEXTREC$indirect:
	.quad	INIT_$SYSTEM_$$_TEXTREC

.section .rodata.n_RTTI_$SYSTEM_$$_TEXTREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXTREC$indirect
RTTI_$SYSTEM_$$_TEXTREC$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXTREC

.section .rodata.n_INIT_$SYSTEM_$$_TMSGSTRTABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TMSGSTRTABLE$indirect
INIT_$SYSTEM_$$_TMSGSTRTABLE$indirect:
	.quad	INIT_$SYSTEM_$$_TMSGSTRTABLE

.section .rodata.n_RTTI_$SYSTEM_$$_TMSGSTRTABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect
RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_TMSGSTRTABLE

.section .rodata.n_INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect
INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect:
	.quad	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE

.section .rodata.n_RTTI_$SYSTEM_$$_def0000004D,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000004D$indirect
RTTI_$SYSTEM_$$_def0000004D$indirect:
	.quad	RTTI_$SYSTEM_$$_def0000004D

.section .rodata.n_RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect
RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE

.section .rodata.n_RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect
RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACEENTRY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACEENTRY$indirect
INIT_$SYSTEM_$$_TINTERFACEENTRY$indirect:
	.quad	INIT_$SYSTEM_$$_TINTERFACEENTRY

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRY

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACETABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACETABLE$indirect
INIT_$SYSTEM_$$_TINTERFACETABLE$indirect:
	.quad	INIT_$SYSTEM_$$_TINTERFACETABLE

.section .rodata.n_RTTI_$SYSTEM_$$_def00000054,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000054$indirect
RTTI_$SYSTEM_$$_def00000054$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000054

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect
RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACETABLE

.section .rodata.n_RTTI_$SYSTEM_$$_PINTERFACETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect
RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_PINTERFACETABLE

.section .rodata.n_INIT_$SYSTEM_$$_TVMT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TVMT$indirect
INIT_$SYSTEM_$$_TVMT$indirect:
	.quad	INIT_$SYSTEM_$$_TVMT

.section .rodata.n_RTTI_$SYSTEM_$$_TVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TVMT$indirect
RTTI_$SYSTEM_$$_TVMT$indirect:
	.quad	RTTI_$SYSTEM_$$_TVMT

.section .rodata.n_RTTI_$SYSTEM_$$_PVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PVMT$indirect
RTTI_$SYSTEM_$$_PVMT$indirect:
	.quad	RTTI_$SYSTEM_$$_PVMT

.section .rodata.n_RTTI_$SYSTEM_$$_PPVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPVMT$indirect
RTTI_$SYSTEM_$$_PPVMT$indirect:
	.quad	RTTI_$SYSTEM_$$_PPVMT
# End asmlist al_indirectglobals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc21:
	.long	.Lc23-.Lc22
.Lc22:
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
.Lc23:
	.long	.Lc25-.Lc24
.Lc24:
	.secrel32	.Lc21
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.balign 4,0
.Lc25:
	.long	.Lc27-.Lc26
.Lc26:
	.secrel32	.Lc21
	.quad	.Lc3
	.quad	.Lc4-.Lc3
	.balign 4,0
.Lc27:
	.long	.Lc29-.Lc28
.Lc28:
	.secrel32	.Lc21
	.quad	.Lc5
	.quad	.Lc6-.Lc5
	.balign 4,0
.Lc29:
	.long	.Lc31-.Lc30
.Lc30:
	.secrel32	.Lc21
	.quad	.Lc7
	.quad	.Lc8-.Lc7
	.balign 4,0
.Lc31:
	.long	.Lc33-.Lc32
.Lc32:
	.secrel32	.Lc21
	.quad	.Lc9
	.quad	.Lc10-.Lc9
	.balign 4,0
.Lc33:
	.long	.Lc35-.Lc34
.Lc34:
	.secrel32	.Lc21
	.quad	.Lc11
	.quad	.Lc12-.Lc11
	.balign 4,0
.Lc35:
	.long	.Lc37-.Lc36
.Lc36:
	.secrel32	.Lc21
	.quad	.Lc13
	.quad	.Lc14-.Lc13
	.balign 4,0
.Lc37:
	.long	.Lc39-.Lc38
.Lc38:
	.secrel32	.Lc21
	.quad	.Lc15
	.quad	.Lc16-.Lc15
	.balign 4,0
.Lc39:
	.long	.Lc41-.Lc40
.Lc40:
	.secrel32	.Lc21
	.quad	.Lc17
	.quad	.Lc18-.Lc17
	.balign 4,0
.Lc41:
	.long	.Lc43-.Lc42
.Lc42:
	.secrel32	.Lc21
	.quad	.Lc19
	.quad	.Lc20-.Lc19
	.balign 4,0
.Lc43:
# End asmlist al_dwarf_frame

