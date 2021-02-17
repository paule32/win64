#include <stdio.h>

inline WriteLn(char *str)
{
	P$CRT_$$_WRITELN$SHORTSTRING
}

int main(int argc, char **argv)
{
	++argc;
	
	WriteLn("tzzzz");
	return 0;
}
