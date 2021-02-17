#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include <windows.h>

void P$CRT_$$_WRITELN$SHORTSTRING(char *str)
{
	AllocConsole();
	printf("Hallo %s\n",str);
}
