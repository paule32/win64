#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <windows.h>

__asm__(
".globl DllMainCRTStartup	\n"
"DllMainCRTStartup:		\n"
"movq $1, %rax			\n"
"ret				\n");

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
