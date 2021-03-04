// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------

// ----------------------------------------------------------
// each .dll file under Windows 10 Pro must be have a global
// DLL entry point.
// ATTENTION:
// Else, you get the system error 0xC0000142 by load .dll !
// An other issue is, that the DllMain function needs to be
// return positive, non-zero; else you get system error.
// ----------------------------------------------------------
__asm__(
".globl DllMainCRTStartup \n"
"DllMainCRTStartup:	  \n"
	"movq $1, %rax	  \n"
	"ret		  \n");
