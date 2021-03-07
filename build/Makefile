# ----------------------------------------------------------------
# This file is part of RTL.
#
# (c) Copyright 2021 Jens Kallup - paule32
# only for non-profit usage !!!
#
# This Makefile was hand-coded. So if you found bugs, please
# let it me know, and write a bug report to: <kallup.jens@web.de>
# This project and all it's content are tested under:
# - Microsoft Windows 10 Pro 64-Bit Edition.
# -
# I don't give any gurantees of correct, and stable using!
# YOU USE IT, AT YOUR OWN RISK !
# ----------------------------------------------------------------

# ----------------------------------------------------------------
# for applications: please make changes at APP_TYPE !
#
# you can create follow application types:
# - win64 console
# - win64 gui
#
# it is important, that you change the FPC version, if it differ
# from my version - 3.2.0.
# for "sed" it will be converted by "make" to 3\.2\.0 !
#
# OS_PLATFORM: currently only WINDOWS.
# ----------------------------------------------------------------
APP_TYPE    = console
FPC_VERSION = 3.2.0
OS_PLATFORM = WINDOWS

all: pre_tasks $(SAMPLE_EXE)

# --------------------------------------------------
# this section is user/developer speciefic.
# you have to set on your own ...
# --------------------------------------------------
CC        = gcc    # i used MinGW-64 8.6.0
FPC       = fpc    # tests with 3.2.0
GDB       = gdb    # command line

# ---------------------------------------------------------
# the command's below should be come with the MinGW Utils.
# ---------------------------------------------------------
RM        = rm -rf
MKDIR     = mkdir -p
COPY      = cp
ECHO      = echo
SED       = sed
STRIP     = strip

# ----------------------------------------
# gnu c/c++ speciefied compiler flags.
# default: win64
# ----------------------------------------
CFLAGS    = -m64 -I. -O2 -DAPP_TYPE=$(APP_TYPE) -D$(OS_PLATFORM)
FPC_FLAGS = -n -s -Ur -Xe -WN -O2
GDB_FLAG  = -ggdb

# -----------------------
# temporary settings ...
# -----------------------
ASM_DIR  = .asm
OBJ_DIR  = .obj

# ---------------------------
# the source directories ...
# ---------------------------
SRC_DIR  = src
PAS_SRC  = $(SRC_DIR)_pp
CPP_SRC  = $(SRC_DIR)_cc
# ---- #
PAS_ASM  = $(ASM_DIR)/$(PAS_SRC)
PAS_OUT  = $(OBJ_DIR)/$(PAS_SRC)
# ---- #
CPP_ASM  = $(ASM_DIR)/$(CPP_SRC)
CPP_OUT  = $(OBJ_DIR)/$(CPP_SRC)

INCLUDE  = $(CPP_SRC)/include
CFLAGS  += \
	-I$(INCLUDE)     \
	-I$(INCLUDE)/fpc \
	-I$(INCLUDE)/rtl \
	-I$(INCLUDE)/fpv \
	-I$(INCLUDE)/qt5 \
	-I$(INCLUDE)/vcl \
	-I$(INCLUDE)/win

# -------------------------------------
# the entiere source files ...
# -------------------------------------
CPP_SRC_FILES =                \
	$(CPP_SRC)/fpc/c_fpc.cc    \
	$(CPP_SRC)/fpc/dllMain.cc  \
	$(CPP_SRC)/fpc/SysUtils.cc \
	\
	$(CPP_SRC)/rtl/dllMain.cc  \
	$(CPP_SRC)/rtl/mem.cc      \
	$(CPP_SRC)/rtl/screen.cc   \
	$(CPP_SRC)/rtl/strings.cc  \
	\
	$(CPP_SRC)/fpv/dllMain.cc  \
	$(CPP_SRC)/fpv/TVision.cc  \
	\
	$(CPP_SRC)/qt5/dllMain.cc  \
	$(CPP_SRC)/qt5/QObject.cc  \
	\
	$(CPP_SRC)/vcl/dllMain.cc  \
	$(CPP_SRC)/vcl/TForms.cc   \
	$(CPP_SRC)/vcl/TObject.cc  \
	\
	$(CPP_SRC)/win/dllMain.cc  \
	$(CPP_SRC)/win/kernel32.cc \
	$(CPP_SRC)/win/Windows.cc
	
#
CPP_ASM_FILES =               \
	$(CPP_ASM)/fpc/c_fpc.s    \
	$(CPP_ASM)/fpc/dllMain.s  \
	$(CPP_ASM)/fpc/SysUtils.s \
	\
	$(CPP_ASM)/rtl/dllMain.s  \
	$(CPP_ASM)/rtl/mem.s      \
	$(CPP_ASM)/rtl/screen.s   \
	$(CPP_ASM)/rtl/strings.s  \
	\
	$(CPP_ASM)/fpv/dllMain.s  \
	$(CPP_ASM)/fpv/TVision.s  \
	\
	$(CPP_ASM)/qt5/dllMain.s  \
	$(CPP_ASM)/qt5/QObject.s  \
	\
	$(CPP_ASM)/vcl/dllMain.s  \
	$(CPP_ASM)/vcl/TForms.s   \
	$(CPP_ASM)/vcl/TObject.s  \
	\
	$(CPP_ASM)/win/dllMain.s  \
	$(CPP_ASM)/win/kernel32.s \
	$(CPP_ASM)/win/Windows.s

#
PAS_SRC_FILES =                 \
	$(PAS_SRC)/rtl/strings.pas  \
	\
	$(PAS_SRC)/fpv/TVision.pas  \
	\
	$(PAS_SRC)/qt5/QObject.pas  \
	\
	$(PAS_SRC)/vcl/TObject.pas  \
	$(PAS_SRC)/vcl/Forms.pas    \
	\
	$(PAS_SRC)/win/kernel32.pas \
	$(PAS_SRC)/win/Windows.pas
#
PAS_ASM_FILES =               \
	$(PAS_ASM)/rtl/strings.s  \
	\
	$(PAS_ASM)/fpv/TVision.s  \
	\
	$(PAS_ASM)/vcl/Forms.s    \
	$(PAS_ASM)/qt5/QObject.s  \
	\
	$(PAS_ASM)/win/kernel32.s \
	$(PAS_ASM)/win/Windows.s

# -------------------------------------
# the corresponding .o bject files ...
# -------------------------------------
CPP_OBJ_FILES =               \
	$(CPP_OUT)/fpc/c_fpc.o    \
	$(CPP_OUT)/fpc/dllMain.o  \
	$(CPP_OUT)/fpc/SysUtils.o \
	\
	$(CPP_OUT)/rtl/dllMain.o  \
	$(CPP_OUT)/rtl/mem.o      \
	$(CPP_OUT)/rtl/strings.o  \
	\
	$(CPP_OUT)/fpv/dllMain.o  \
	$(CPP_OUT)/fpv/TVision.o  \
	\
	$(CPP_OUT)/qt5/dllMain.o  \
	$(CPP_OUT)/qt5/QObject.o  \
	\
	$(CPP_OUT)/vcl/dllMain.o  \
	$(CPP_OUT)/vcl/TObject.o  \
	$(CPP_OUT)/vcl/TForms.o   \
	\
	$(CPP_OUT)/win/dllMain.o  \
	$(CPP_OUT)/win/kernel32.o \
	$(CPP_OUT)/win/Windows.o
#
PAS_OBJ_FILES =               \
	$(PAS_OUT)/rtl/strings.o  \
	$(PAS_OUT)/fpv/TVision.o  \
	\
	$(PAS_OUT)/qt5/QObject.o  \
	\
	$(PAS_OUT)/vcl/Forms.o    \
	$(PAS_OUT)/vcl/TObject.o  \
	\
	$(PAS_OUT)/win/kernel32.o \
	$(PAS_OUT)/win/Windows.o

SRC_FILES = $(CPP_SRC_FILES) $(PAS_SRC_FILES)
ASM_FILES = $(CPP_ASM_FILES) $(PAS_ASM_FILES)
OBJ_FILES = $(CPP_OBJ_FILES) $(PAS_OBJ_FILES)

# ------------------------------------------
# now, hand sorted .dll .o bject files ...
# ------------------------------------------
RTL_DLLOF = \
	$(CPP_OUT)/rtl/dllMain.o \
	$(CPP_OUT)/rtl/strings.o \
	$(CPP_OUT)/rtl/mem.o

FPC_DLLOF = \
	$(CPP_OUT)/fpc/c_fpc.o    \
	$(CPP_OUT)/fpc/dllMain.o  \
	$(CPP_OUT)/fpc/SysUtils.o

FPV_DLLOF = \
	$(CPP_OUT)/fpv/dllMain.o  \
	$(PAS_OUT)/fpv/TVision.o  \
	$(CPP_OUT)/fpv/TVision.o  \
	$(CPP_OUT)/rtl/mem.o

QT5_DLLOF = \
	$(CPP_OUT)/qt5/dllMain.o \
	$(CPP_OUT)/qt5/QObject.o
	
VCL_DLLOF = \
	$(CPP_OUT)/vcl/dllMain.o \
	$(PAS_OUT)/vcl/Forms.o   \
	$(CPP_OUT)/vcl/TForms.o  \
	$(CPP_OUT)/vcl/TObject.o

WIN_DLLOF = \
	$(CPP_OUT)/win/dllMain.o  \
	$(CPP_OUT)/win/kernel32.o \
	$(CPP_OUT)/win/Windows.o

# -----------------------------------------------------------
# these definitions for windows .dll file are hard written,
# so it may be can differ ...
# for creating the .dll / .a rchive file, i used the mingw64
# GNU GCC compiler under windows 10 Professional.
# C is case-sensitive, and C++ is mangled !!!
# -----------------------------------------------------------
EXEC_FILEEXT  = .exe

# ---------------------------------------------------------
# this shell command store the "current working dir" into
# the variable CWD ...
# my default developer directory/hard disk is on E:
# Windows/DOS uses backslashes \ instead Unix slashes /
# so, i convert /e/ to e:\
# ---------------------------------------------------------
CWD        = $(shell pwd)
UNIT_PAT   = $(subst /,\,$(subst /e/,e:\,$(CWD)))
UNIT_DIR   = $(UNIT_PAT)
#
FPC_FLAGS += -Fu$(UNIT_DIR)/$(PAS_SRC)/fpc
FPC_FLAGS += -Fu$(UNIT_DIR)/$(PAS_ASM)/rtl
#
FPC_FLAGS += -Fu$(UNIT_DIR)/$(PAS_ASM)/fpv
FPC_FLAGS += -Fu$(UNIT_DIR)/$(PAS_ASM)/win
FPC_FLAGS += -Fu$(UNIT_DIR)/$(PAS_ASM)/qt5
FPC_FLAGS += -Fu$(UNIT_DIR)/$(PAS_ASM)/vcl
#
Laz_DOL = '$$'
#
Forms_TForm          =   FORMS$(Laz_DOL)_$(Laz_DOL)TOBJECT_$(Laz_DOL)__$(Laz_DOL)$(Laz_DOL)
#
TVision_TObject      = TVISION$(Laz_DOL)_$(Laz_DOL)TOBJECT_$(Laz_DOL)__$(Laz_DOL)$(Laz_DOL)
TVision_TPalette     = TVISION$(Laz_DOL)_$(Laz_DOL)TPALETTE_$(Laz_DOL)__$(Laz_DOL)$(Laz_DOL)
TVision_TMenuBar     = TVISION$(Laz_DOL)_$(Laz_DOL)TMENUBAR_$(Laz_DOL)__$(Laz_DOL)$(Laz_DOL)
TVision_TStatusBar   = TVISION$(Laz_DOL)_$(Laz_DOL)TSTATUSBAR_$(Laz_DOL)__$(Laz_DOL)$(Laz_DOL)
TVision_TBackground  = TVISION$(Laz_DOL)_$(Laz_DOL)TBACKGROUND_$(Laz_DOL)__$(Laz_DOL)$(Laz_DOL)
TVision_TApplication = TVISION$(Laz_DOL)_$(Laz_DOL)TAPPLICATION_$(Laz_DOL)__$(Laz_DOL)$(Laz_DOL)
#
Objects_QObject      = OBJECTS$(Laz_DOL)_$(Laz_DOL)QOBJECT_$(Laz_DOL)__$(Laz_DOL)$(Laz_DOL)

Laz_DLL = _$(Laz_DOL)dll$(Laz_DOL)laz_
#
Laz_FPC = $(Laz_DLL)fpc$(Laz_DOL)
Laz_RTL = $(Laz_DLL)rtl$(Laz_DOL)
#
Laz_FPV = $(Laz_DLL)fpv$(Laz_DOL)
Laz_QT5 = $(Laz_DLL)qt5$(Laz_DOL)
Laz_VCL = $(Laz_DLL)vcl$(Laz_DOL)
Laz_WIN = $(Laz_DLL)win$(Laz_DOL)

# ------------------------------------------------------
# this is a place-holder macro, to hold text read-able.
# ------------------------------------------------------
define dll_export =
	$(ECHO) $(1)$(2)'$$''$$'$(3) >> $(4)
endef

# ---------------------------------------------------------------------
# i hard hand-code the .def file, because the automatic
# procedure get many extra informations, that are not needed;
# so the size of the .dll file is smaller.
# ----------------------------------------------------------------------
define fpc_def =
	$(ECHO) EXPORTS                        > $(1)
	$(ECHO) fpc_ansistr_decr_ref          >> $(1)
	$(ECHO) fpc_do_exit                   >> $(1)
	$(ECHO) FPC_DO_EXIT                   >> $(1)
	$(ECHO) fpc_get_input                 >> $(1)
	$(ECHO) fpc_initializeunits           >> $(1)
	$(ECHO) FPC_INITIALIZEUNITS           >> $(1)
	$(ECHO) fpc_iocheck                   >> $(1)
	$(ECHO) fpc_readln_end                >> $(1)
	$(ECHO) FPC_READLN_END                >> $(1)
endef

# ------------------------------------------------------
# rtl - run time library .def initions for laz_rtl.dll
# ------------------------------------------------------
define rtl_def =
	$(ECHO) EXPORTS                        > $(1)
	$(ECHO) $(Laz_RTL)LAZEXITPROCESS      >> $(1)
	$(ECHO) $(Laz_RTL)LazExitProcess      >> $(1)
	$(ECHO) $(Laz_RTL)LengthByte          >> $(1)
	$(ECHO) $(Laz_RTL)LengthChar          >> $(1)
	$(ECHO) $(Laz_RTL)LengthInteger       >> $(1)
	$(ECHO) $(Laz_RTL)LengthString        >> $(1)
	$(ECHO) $(Laz_RTL)LowerCase           >> $(1)
	$(ECHO) $(Laz_RTL)ReadLn              >> $(1)
	$(ECHO) $(Laz_RTL)UpperCase           >> $(1)
	$(ECHO) $(Laz_RTL)WriteLn             >> $(1)
endef

# ------------------------------------------------------
# fpv - Free Pascal TurboVision - textual app's ...
# ------------------------------------------------------
define fpv_def =
	$(ECHO) EXPORTS                        > $(1)
	$(call dll_export,$(TVision_TObject),_CREATE,QWORDBOOL,$(1))
	$(call dll_export,$(TVision_TPalette),_CREATE,QWORDBOOL,$(1))
	$(call dll_export,$(TVision_TMenuBar),_CREATE,QWORDBOOL,$(1))
	$(call dll_export,$(TVision_TStatusBar),_CREATE,QWORDBOOL,$(1))
	$(call dll_export,$(TVision_TBackground),_CREATE,QWORDBOOL,$(1))
	$(call dll_export,$(TVision_TApplication),_CREATE,QWORDBOOL,$(1))
	#
	$(call dll_export,$(TVision_TObject),_DESTROY,,$(1))
	$(call dll_export,$(TVision_TPalette),_DESTROY,,$(1))
	$(call dll_export,$(TVision_TMenuBar),_DESTROY,,$(1))
	$(call dll_export,$(TVision_TStatusBar),_DESTROY,,$(1))
	$(call dll_export,$(TVision_TBackground),_DESTROY,,$(1))
	$(call dll_export,$(TVision_TApplication),_DESTROY,,$(1))
	#
	$(ECHO) $(Laz_FPV)LazSetPalette    >> $(1)
	$(ECHO) $(Laz_FPV)LazSetBackground >> $(1)
	$(ECHO) $(Laz_FPV)LazSetMenuBar    >> $(1)
	$(ECHO) $(Laz_FPV)LazSetStatusBar  >> $(1)
endef

# ------------------------------------------------------
# qt5 - graphical toolkit for gui application's ...
# ------------------------------------------------------
define qt5_def =
	$(ECHO) EXPORTS                        > $(1)
	$(call dll_export,$(QObject_QObject),_CREATE,QWORDBOOL,$(1))
endef

# ------------------------------------------------------
# these are the hand coded VCL symbols, that i had
# outsource/re-write from source.
# so your .exe files no longer be so biiigg ...
# ------------------------------------------------------
define vcl_def =
	$(ECHO) EXPORTS                        > $(1)
	$(call dll_export,$(Forms_TForm),_CREATE,QWORDBOOL,$(1))
	$(call dll_export,$(Objects_TObject),_CREATE,QWORDBOOL,$(1))
	$(ECHO) $(Objects_TObject)_TESTA      >> $(1)
endef

# ------------------------------------------------------
# win - windows 10 pro gui application's ...
# ------------------------------------------------------
define win_def =
	$(ECHO) EXPORTS                        > $(1)
	$(ECHO) $(Laz_WIN)ExitProcess         >> $(1)
endef

# --------------------------------------------------------
# that you can use the compiled fpc / c / c++ unit codes,
# we have to create an .a rchive file, which contains the
# "import" symbols to call the functions in the .dll file
# --------------------------------------------------------
define dll_a =
	dlltool                  \
		--def     $(2)       \
		--dllname $(subst lib,,$(subst .def,.dll,$(2))) \
		--output-lib $(1)
	$(STRIP) $(subst lib,,$(subst .def,.dll,$(2)))
endef

# --------------------------------------------
# this section, delete all the compiler crap.
# as result, we have smaller binary files.
# --------------------------------------------
sed_ws     =^\#[[:space:]]*
sed_wsalst =[[:space:]]*asmlist[[:space:]]*al
sed_asmbeg =$(sed_ws)Begin$(sed_wsalst)
sed_asmend =$(sed_ws)End$(sed_wsalst)
sed_seh    =^[[:space:]]*\.seh
sed_sec    =^\.section[[:space:]]*\.

define shlp =
	$(SED) -i $(1) $(2)
endef

# -------------------------------------------------------------
# as advice: i mess a short time, to come to the Makefile
# syntax, that "$(subst ,$(;),$(text))" hold the comma
# at the middle of the sed command /,/ # i don't know why $(;)
# is used there, but I get this trick by a google.com
# stackoverflow research.
# -------------------------------------------------------------
define strip_compiler =
	$(ECHO) remove compiler crap off: $(1)
	$(call shlp,$(subst ,$(;),'/$(sed_asmbeg)_dwarf_frame/,/$(sed_asmend)_dwarf_frame/d'),$(1))
	$(call shlp,$(subst ,$(;),'/$(sed_asmbeg)_globals/,/$(sed_asmend)_globals/d'),$(1))
	$(call shlp,$(subst ,$(;),'/$(sed_asmbeg)_indirectglobals/,/$(sed_asmend)_indirectglobals/d'),$(1))
	$(call shlp,$(subst ,$(;),'/$(sed_asmbeg)_rtti/,/$(sed_asmend)_rtti/d'),$(1))
	$(call shlp,$(subst ,$(;),'/$(sed_sec)data\.n_FPC_/,/[[:space:]]*\.quad[[:space:]]*0/d'),$(1))
	$(call shlp,$(subst ,$(;),'/$(sed_sec)data\.n___fpc_valgrind/,/[[:space:]]\.byte[[:space:]]*0/d'),$(1))
	$(call shlp,'/^[[:space:]]*\.def[[:space:]].*/d',$(1))
	$(call shlp,'s/^[[:space:]]*rex\.W[[:space:]]*jmp[[:space:]]*\*\%rax/''call'' \*\%rbx\nret/',$(1))
	$(call shlp,'s/^[[:space:]]*rex\.W[[:space:]]*jmp[[:space:]]*\*\(.*\)/jmp \*\1\nret/',$(1))
	$(call shlp,'/[[:space:]]*\.ident.*/d',$(1))
	$(call shlp,'/$(sed_seh)_endproc/d',$(1))
	$(call shlp,'/$(sed_seh)_endprologue/d',$(1))
	$(call shlp,'/$(sed_seh)_handler/d',$(1))
	$(call shlp,'/$(sed_seh)_handlerdata/d',$(1))
	$(call shlp,'/$(sed_seh)_proc/d',$(1))
	$(call shlp,'/$(sed_seh)_pushreg/d',$(1))
	$(call shlp,'/$(sed_seh)_setframe/d',$(1))
	$(call shlp,'/$(sed_seh)_stackalloc/d',$(1))
	$(call shlp,'/^#[[:space:]]*.*/d',$(1))
	$(call shlp,'/^\.Lc[0-9]*:/d',$(1))
	$(call shlp,'/__fpc_ident\:/d',$(1))
	$(call shlp,'/[[:space:]]*.ascii[[:space:]]\"FPC $(subst .,\.,$(FPC_VERSION)).*/d',$(1))
	$(call shlp,'/$(sed_sec)text\.n_fpc.*/d',$(1))
	$(call shlp,'/[[:space:]]call[[:space:]]fpc_initializeunits/d',$(1))
	$(call shlp,'/$(sed_sec)data\.n___heapsize/d',$(1))
	$(call shlp,'/$(sed_sec)data\.n_INITFINAL/d',$(1))
	$(call shlp,'/$(sed_sec)fpc\.n_version/d',$(1))
	$(call shlp,'/$(sed_sec)text\.n_FORMS/d',$(1))
	$(call shlp,$(subst ,$(;),'/$(sed_sec)rodata\.n_VMT_/I,+4 d'),$(1))
	$(call shlp,'/^\__heapsize\:/d',$(1))
	$(call shlp,'/^\INITFINAL\:/d',$(1))
	$(call shlp,'/^\.globl[[:space:]]*__heapsize/d',$(1))
	$(call shlp,'/^\.globl[[:space:]]*INITFINAL/d',$(1))
	$(call shlp,$(subst ,$(;),'s/^[[:space:]]*call[[:space:]]*fpc_do_exit/movl $$0, \%ecx\nmovq __imp_ExitProcess(\%rip), \%rax\ncall \*\%rax/'),$(1))
	$(call shlp,$(subst ,$(;),'/^[[:space:]]*\.ident[[:space:]]*.*GCC\:/d'),$(1))
endef

define compile_strip =
	$(call strip_compiler,$(2))
	$(CC) $(CFLAGS) -o $(1) -c $(2)
endef

define pp_compile_strip =
	$(FPC) -al -Aas $(FPC_FLAGS) -o$(1) $(2)
	$(call strip_compiler,$(1))
	$(CC) $(CFLAGS) \
		-o $(subst $(ASM_DIR),$(OBJ_DIR),$(subst .s,.o,$(1))) \
		-c $(1)
endef

# ------------------------------------------------------
# i had think, to reduce the size of this Makefile, and
# to have a better maintain, i create this macro that
# assemble the given .dll in parameter 1 with the given
# .o bject's in parameter 2.
# ------------------------------------------------------
define make_dll =
	@$(ECHO) create DLL $(1) ...
	$(CC) -nostdlib -m64 -shared -o \
	$(subst lib,,$(1)) $(2) -lkernel32 -luser32
	nm  $(subst lib,,$(1)) | grep " T " | sed 's/.* T //' \
	>   $(subst lib,,$(subst .dll,.def.tmp,$@))
endef

# ------------------------------------------------------
# this section is Windows 10 Pro 64-Bit specialized ...
# $(OBJ_FILES) $(DLL_FILE).def
# ------------------------------------------------------
REDI_NULL = > nul:
DLL_DIR   = dllx64

DLL_FILES = \
	$(DLL_DIR)/laz_fpc.dll \
	$(DLL_DIR)/laz_rtl.dll \
	\
	$(DLL_DIR)/laz_fpv.dll \
	$(DLL_DIR)/laz_qt5.dll \
	$(DLL_DIR)/laz_vcl.dll \
	$(DLL_DIR)/laz_win.dll
	
DEF_FILES = \
	$(DLL_DIR)/laz_fpc.def \
	$(DLL_DIR)/laz_rtl.def \
	\
	$(DLL_DIR)/laz_fpv.def \
	$(DLL_DIR)/laz_qt5.def \
	$(DLL_DIR)/laz_vcl.def \
	$(DLL_DIR)/laz_win.def
#
ALD_FILES = \
	$(DLL_DIR)/liblaz_fpc.a \
	$(DLL_DIR)/liblaz_rtl.a \
	\
	$(DLL_DIR)/liblaz_fpv.a \
	$(DLL_DIR)/liblaz_qt5.a \
	$(DLL_DIR)/liblaz_vcl.a \
	$(DLL_DIR)/liblaz_win.a

# ---------------------------------------------
# Makefile: default entry point ...
# ---------------------------------------------
pre_tasks:									\
	state_begin 							\
	$(SRC_FILES) $(ASM_FILES) $(OBJ_FILES)  \
	$(DLL_FILES) $(DEF_FILES) $(ALD_FILES)	\
	state_end

# ---------------------------------------------
# template: create .dll from .o bject files.
# $(OBJ_FILES)
# ---------------------------------------------
$(DLL_FILES):
$(DLL_DIR)/laz_fpc.dll: $(FPC_DLLOF) ; $(call make_dll,$@,$^)
$(DLL_DIR)/laz_rtl.dll: $(RTL_DLLOF) ; $(call make_dll,$@,$^)
#
$(DLL_DIR)/laz_fpv.dll: $(FPV_DLLOF) ; $(call make_dll,$@,$^)
$(DLL_DIR)/laz_qt5.dll: $(QT5_DLLOF) ; $(call make_dll,$@,$^)
$(DLL_DIR)/laz_vcl.dll: $(VCL_DLLOF) ; $(call make_dll,$@,$^)
$(DLL_DIR)/laz_win.dll: $(WIN_DLLOF) ; $(call make_dll,$@,$^)

# ---------------------------------------------
# template: create .def inition file for linker
# ---------------------------------------------
$(DEF_FILES):
$(DLL_DIR)/laz_fpc.def: $(DLL_DIR)/laz_fpc.dll ; $(call fpc_def,$@)
$(DLL_DIR)/laz_rtl.def: $(DLL_DIR)/laz_rtl.dll ; $(call rtl_def,$@)
#
$(DLL_DIR)/laz_fpv.def: $(DLL_DIR)/laz_fpv.dll ; $(call fpv_def,$@)
$(DLL_DIR)/laz_qt5.def: $(DLL_DIR)/laz_qt5.dll ; $(call qt5_def,$@)
$(DLL_DIR)/laz_vcl.def: $(DLL_DIR)/laz_vcl.dll ; $(call vcl_def,$@)
$(DLL_DIR)/laz_win.def: $(DLL_DIR)/laz_win.dll ; $(call win_def,$@)

# ---------------------------------------------
# template: create .a rchive file for linker.
# ---------------------------------------------
$(ALD_FILES):
$(DLL_DIR)/liblaz_fpc.a: $(DLL_DIR)/laz_fpc.def ; $(call dll_a,$@,$<)
$(DLL_DIR)/liblaz_rtl.a: $(DLL_DIR)/laz_rtl.def ; $(call dll_a,$@,$<)
#
$(DLL_DIR)/liblaz_fpv.a: $(DLL_DIR)/laz_fpv.def ; $(call dll_a,$@,$<)
$(DLL_DIR)/liblaz_qt5.a: $(DLL_DIR)/laz_qt5.def ; $(call dll_a,$@,$<)
$(DLL_DIR)/liblaz_vcl.a: $(DLL_DIR)/laz_vcl.def ; $(call dll_a,$@,$<)
$(DLL_DIR)/liblaz_win.a: $(DLL_DIR)/laz_win.def ; $(call dll_a,$@,$<)

# ---------------------------------------------
# simple prints text for sign the start-uo.
# ---------------------------------------------
state_begin: clean premake
	@$(ECHO) compile files, this can take some time ...

# ---------------------------------------------
# template: compile .pas to .s assembler.
# ---------------------------------------------
$(PAS_ASM)/fpc/%.s: $(PAS_SRC)/fpc/%.pas ; $(call pp_compile_strip,$@,$<)
$(PAS_ASM)/rtl/%.s: $(PAS_SRC)/rtl/%.pas ; $(call pp_compile_strip,$@,$<)
#
$(PAS_ASM)/fpv/%.s: $(PAS_SRC)/fpv/%.pas ; $(call pp_compile_strip,$@,$<)
$(PAS_ASM)/qt5/%.s: $(PAS_SRC)/qt5/%.pas ; $(call pp_compile_strip,$@,$<)
$(PAS_ASM)/vcl/%.s: $(PAS_SRC)/vcl/%.pas ; $(call pp_compile_strip,$@,$<)
$(PAS_ASM)/win/%.s: $(PAS_SRC)/win/%.pas ; $(call pp_compile_strip,$@,$<)

# ---------------------------------------------
# template: compile PAS .s to .o bject file.
# ---------------------------------------------
$(PAS_OUT)/fpc/%.o: $(PAS_ASM)/fpc/%.s ; $(call compile_strip,$@,$<)
$(PAS_OUT)/rtl/%.o: $(PAS_ASM)/rtl/%.s ; $(call compile_strip,$@,$<)
#
$(PAS_OUT)/fpv/%.o: $(PAS_ASM)/fpv/%.s ; $(call compile_strip,$@,$<)
$(PAS_OUT)/qt5/%.o: $(PAS_ASM)/qt5/%.s ; $(call compile_strip,$@,$<)
$(PAS_OUT)/vcl/%.o: $(PAS_ASM)/vcl/%.s ; $(call compile_strip,$@,$<)
$(PAS_OUT)/win/%.o: $(PAS_ASM)/win/%.s ; $(call compile_strip,$@,$<)

# ---------------------------------------------
# template: compile C .s to .o bject file.
# ---------------------------------------------
$(CPP_OUT)/fpc/%.o: $(CPP_ASM)/fpc/%.s ; $(call compile_strip,$@,$<)
$(CPP_OUT)/rtl/%.o: $(CPP_ASM)/rtl/%.s ; $(call compile_strip,$@,$<)
#
$(CPP_OUT)/fpv/%.o: $(CPP_ASM)/fpv/%.s ; $(call compile_strip,$@,$<)
$(CPP_OUT)/qt5/%.o: $(CPP_ASM)/qt5/%.s ; $(call compile_strip,$@,$<)
$(CPP_OUT)/vcl/%.o: $(CPP_ASM)/vcl/%.s ; $(call compile_strip,$@,$<)
$(CPP_OUT)/win/%.o: $(CPP_ASM)/win/%.s ; $(call compile_strip,$@,$<)

# ---------------------------------------------
# template: compile C files to .s assembler.
# ---------------------------------------------
$(CPP_ASM)/fpc/%.s: $(CPP_SRC)/fpc/%.cc ; $(CC) $(CFLAGS) -S -o $@ $<
$(CPP_ASM)/rtl/%.s: $(CPP_SRC)/rtl/%.cc ; $(CC) $(CFLAGS) -S -o $@ $<
#
$(CPP_ASM)/fpv/%.s: $(CPP_SRC)/fpv/%.cc ; $(CC) $(CFLAGS) -S -o $@ $<
$(CPP_ASM)/qt5/%.s: $(CPP_SRC)/qt5/%.cc ; $(CC) $(CFLAGS) -S -o $@ $<
$(CPP_ASM)/vcl/%.s: $(CPP_SRC)/vcl/%.cc ; $(CC) $(CFLAGS) -S -o $@ $<
$(CPP_ASM)/win/%.s: $(CPP_SRC)/win/%.cc ; $(CC) $(CFLAGS) -S -o $@ $<

# ---------------------------------------------
# This section is optional, compile some test
# file's ...
# ---------------------------------------------
SAMPLE_DIR = sample
SAMPLE_EXE = $(SAMPLE_DIR)/test1$(EXEC_FILEEXT)

$(ASM_DIR)/test/%.s: $(SAMPLE_DIR)/%.pas
	$(FPC) -al -Aas $(FPC_FLAGS) -o$@ $<

$(OBJ_DIR)/test/%.o: $(ASM_DIR)/test/%.s
	$(call strip_compiler,$<)
	$(CC) $(CFLAGS) -o $@ -c $<
	
$(SAMPLE_DIR)/%$(EXEC_FILEEXT): $(OBJ_DIR)/test/%.o
	$(CC) -nostartfiles -nostdlib       \
		-Wl,--entry=PASCALMAIN -o $@ $^ \
		-L$(DLL_DIR) \
		-llaz_fpc    \
		-llaz_rtl    \
		-llaz_win    -lkernel32 -luser32
	$(STRIP) $@

# -------------------------------------------
# just a note, that compile process is done.
# -------------------------------------------
state_end: $(SAMPLE_EXE)
	@$(ECHO) done.

# -------------------------------------------
# target's handled by env. parameter ...
# -------------------------------------------
.PHONY: clean premake docs

docs:
	doxygen devdoc.cfg

# -------------------------------------------
# this section, create temporary folder's ...
# -------------------------------------------
DIR_FOLDERS = \
	$(OBJ_DIR)/$(CPP_SRC)		\
	$(OBJ_DIR)/$(PAS_SRC)		\
	$(ASM_DIR)/$(CPP_SRC)		\
	$(ASM_DIR)/$(PAS_SRC)

PRE_FOLDERS = fpc fpv qt5 rtl vcl win test

premake:
	$(foreach folder,$(DIR_FOLDERS),$(MKDIR) $(folder) && ) true
	$(foreach folder,$(PRE_FOLDERS),$(MKDIR) $(OBJ_DIR)/$(CPP_SRC)/$(folder) && ) true
	$(foreach folder,$(PRE_FOLDERS),$(MKDIR) $(OBJ_DIR)/$(PAS_SRC)/$(folder) && ) true
	$(foreach folder,$(PRE_FOLDERS),$(MKDIR) $(ASM_DIR)/$(CPP_SRC)/$(folder) && ) true
	$(foreach folder,$(PRE_FOLDERS),$(MKDIR) $(ASM_DIR)/$(PAS_SRC)/$(folder) && ) true
	$(MKDIR) $(DLL_DIR)

# -------------------------------------------
# this target, remove all temporary files ...
# -------------------------------------------
clean:
	@$(ECHO) delete source folder crap ...
	$(RM)    sample/*.exe
	$(RM)    sample/*.dll
	$(foreach folder,$(PRE_FOLDERS),$(RM) $(OBJ_DIR)/$(CPP_SRC)/$(folder) && ) true
	$(foreach folder,$(PRE_FOLDERS),$(RM) $(OBJ_DIR)/$(PAS_SRC)/$(folder) && ) true
	$(foreach folder,$(PRE_FOLDERS),$(RM) $(ASM_DIR)/$(CPP_SRC)/$(folder) && ) true
	$(foreach folder,$(PRE_FOLDERS),$(RM) $(ASM_DIR)/$(PAS_SRC)/$(folder) && ) true
	$(foreach folder,$(DIR_FOLDERS),$(RM) $(folder) && ) true
	$(RM) $(DLL_DIR)
