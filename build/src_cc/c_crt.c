// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <windows.h>
#include "types.h"

void fpc_initializeunits(void)
{
	MessageBox(NULL,"410 Hallo Welt !!!","Information",MB_OK);
}

void P$CRT_$$_WRITELN$SHORTSTRING(char *str)
{
	HANDLE std_out;
	long unsigned int i;
	char buffer[] = "hhh\n";

	std_out = GetStdHandle(STD_OUTPUT_HANDLE);

	AttachConsole(ATTACH_PARENT_PROCESS);

	//AllocConsole();
	WriteConsoleA(std_out,&buffer,4,&i,NULL);
	//printf("Hallo %s\n",str);
}
