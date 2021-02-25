// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2003 Florian Klaempfl
// (c) Copyright 2021 Jens Kallup - paule32
//
// only for non-profit usage !!!
// ----------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <windows.h>
#include "types.h"

__asm__(
".globl DllMainCRTStartup	\n"
"DllMainCRTStartup:		\n"
"movq $1, %rax			\n"
"ret				\n");

void _$dll$kernel32$ExitProcess(unsigned long int);

void fpc_initializeunits(void)
{
	MessageBox(NULL,"11 Hello World !!!","Information",MB_OK);
	MessageBox(NULL,"aaaaaaa","12121wsss",MB_OK);
	MessageBox(NULL,"22 Hallo Welt !!!","Information",MB_OK);
	MessageBox(NULL,"33 Hallo Welt !!!","Information",MB_OK);
	MessageBox(NULL,"44 Hallo Welt !!!","Information",MB_OK);

MessageBox(NULL,"410 Hallo Welt !!!","Information",MB_OK);

__asm__("int $3");
}

void P$CRT_$$_WRITELN$SHORTSTRING(char *str)
{
	HANDLE std_out;
	long unsigned int i;
	char buffer[] = "hhh\n";

MessageBox(NULL,"1212","12121wsss",MB_OK);

	std_out = GetStdHandle(STD_OUTPUT_HANDLE);

	AttachConsole(ATTACH_PARENT_PROCESS);

	//AllocConsole();
	WriteConsoleA(std_out,&buffer,4,&i,NULL);
	//printf("Hallo %s\n",str);
}

void _$dll$laz_crt$WriteLn(char *s)
{
	HANDLE std_out;
	u_long i;

MessageBox(NULL,"1212","12121wsss",MB_OK);

	std_out = GetStdHandle(STD_OUTPUT_HANDLE);
	WriteConsoleA(std_out,s,5,&i,NULL);
}

// ----------------------------------------------------------
// If current character is lowercase alphabet then
// convert it to uppercase.
// ----------------------------------------------------------
void _$dll$laz_crt$UpperCase(void)
{
MessageBox(NULL,"55 Hallo Welt !!!","Information",MB_OK);
__asm__("nop");

/*
	HANDLE std_out;
	long unsigned int i;

	char buffer[] = "mumps\n";


	std_out = GetStdHandle(STD_OUTPUT_HANDLE);

	AttachConsole(ATTACH_PARENT_PROCESS);
	WriteConsoleA(std_out,&buffer,6,&i,NULL);*/

/*
	for (i = 0; s[i] != '\0'; i++) {
        if (s[i] >= 'a' && s[i] <= 'z') {
            s[i] = s[i] - 32;
        }
    }
	return s; */
}

void _$dll$laz_crt$LazExitProcess(unsigned long int ExitCode)
{
	MessageBox(NULL,"1-32-00-01","info 1",MB_OK);
}


void _$dll$kernel32$ExitProcess(unsigned long int ExitCode)
{
	MessageBox(NULL,"2-672-00-02","info 1",MB_OK);
}

void LAZEXITPROCEDURE(unsigned long int ExitCode)
{
	MessageBox(NULL,"2-02-00-02","info 1",MB_OK);
}

