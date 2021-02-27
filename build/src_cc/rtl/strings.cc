// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include <stdio.h>
# include <string.h>

# include "TTypes.h"
# include <windows.h>

START_MANGLE
START_RTL_NS

// this is the CRT Terminal definition
LazTerminalStruct LazTerminal;
LazSHORTSTRING    LazStringImg;

// ----------------------------------------------------------
// Exit procedure, delete memory ...
// ----------------------------------------------------------
LazVOID FPC_DLLFUNC(LazExitProcess,rtl)(LazINTEGER s)
FPC_BEGIN
	ExitProcess(s);
FPC_END

void LAZEXITPROCEDURE(uint32_t ExitCode)
FPC_BEGIN
	FPC_DLLFUNC(LazExitProcess,rtl)(ExitCode);
FPC_END

// ----------------------------------------------------------
// memcpy copies the ShortString data-type from FPC to C/C++
// char ptr.
// ----------------------------------------------------------
LazSTRING
CopyPascalString2PChar(LazSTRING s)
{
	if (strlen(s) > 255) {
		#ifdef WINDOWS
		MessageBox(NULL,"string is too long","Error",MB_OK);
		ExitProcess( GetLastError() );
		#endif
	}

	LazSTRING tmp = new char[255];
	return tmp;
}

LazBOOL isspace(char c)
{
	if (c == ' '  || c == '\t'
	||  c == '\b' || c == '\v'
	||  c == '\r' || c == '\n')
	return true; else
	return false;
}

/**
 * strcat - Append one %NUL-terminated string to another
 * @dest: The string to be appended to
 * @src:  The string to append to it
 */
LazSTRING strcat(
	LazSTRING dest,
	LazSTRING src)
{
	char *tmp = dest;

	while (*dest)	dest++;
	while ((*dest++ = *src++) != '\0');
	return tmp;
}

/**
 * strcmp - Compare two strings
 * @cs: One string
 * @ct: Another string
 */
int strcmp(
	LazSTRING cs,
	LazSTRING ct)
{
	LazUCHAR  c1, c2;

	while (1) {
		c1 = *cs++;
		c2 = *ct++;
		if (c1 != c2)
			return c1 < c2 ? -1 : 1;
		if (!c1)
			break;
	}
	return 0;
}

/**
 * strchr - Find the first occurrence of a character in a string
 * @s: The string to be searched
 * @c: The character to search for
 *
 * Note that the %NUL-terminator is considered part of the string, and can
 * be searched for.
 */
LazSTRING
strchr(LazSTRING s, int c)
{
	for (; *s != (char)c; ++s)
		if (*s == '\0')
			return NULL;
	return (LazSTRING)s;
}

/**
 * skip_spaces - Removes leading whitespace from @str.
 * @str: The string to be stripped.
 *
 * Returns a pointer to the first non-whitespace character in @str.
 */
LazSTRING
skip_spaces(LazSTRING str)
{
	while (isspace(*str)) ++str;
	return (LazSTRING)str;
}

/**
 * strim - Removes leading and trailing whitespace from @s.
 * @s: The string to be stripped.
 *
 * Note that the first trailing whitespace is replaced with a %NUL-terminator
 * in the given string @s. Returns a pointer to the first non-whitespace
 * character in @s.
 */
LazSTRING
strim(LazSTRING s)
{
	size_t size;
	LazSTRING end;

	size = strlen(s);
	if (!size)
		return s;

	end = s + size - 1;
	while (end >= s && isspace(*end))
		end--;
	*(end + 1) = '\0';

	return skip_spaces(s);
}

/**
 * strlen - Find the length of a string
 * @s: The string to be sized
 */
size_t strlen(
	LazSTRING  s)
{	LazSTRING sc;

	for (sc = s; *sc != '\0'; ++sc);
	return sc - s;
}

/**
 * strnlen - Find the length of a length-limited string
 * @s: The string to be sized
 * @count: The maximum number of bytes to search
 */
size_t strnlen(
	LazSTRING  s, size_t count)
{	LazSTRING sc;

	for (sc = s; count-- && *sc != '\0'; ++sc);
	return sc - s;
}

/**
 * strreplace - Replace all occurrences of character in string.
 * @s: The string to operate on.
 * @old: The character being replaced.
 * @new: The character @old is replaced with.
 *
 * Returns pointer to the nul byte at the end of @s.
 */
LazSTRING
strreplace(LazSTRING s, char old, char _new)
{
	for (; *s; ++s)
		if (*s == old)
			*s = _new;
	return s;
}

// ----------------------------------------------------------
// this function check, if windows can create std handles...
// ----------------------------------------------------------
static void check_console()
{
	HANDLE dw;
	if (!LazTerminal.is_open) {
		if (
		MessageBox(NULL,
		"No terminal open.\n"
		"Do you want open a CRT Terminal ?",
		"Warning",
		MB_YESNO|MB_ICONQUESTION|MB_TASKMODAL|MB_SETFOREGROUND)
		== IDNO)
		FPC_DLLFUNC(LazExitProcess,rtl)( GetLastError() );
	}

	AllocConsole();
	LazTerminal.std_output = GetStdHandle(STD_OUTPUT_HANDLE);
	dw = reinterpret_cast<HANDLE>(GetLastError());

	if (dw == INVALID_HANDLE_VALUE) {
		MessageBox(NULL,
		"No terminal open.\n"
		"Can't get the output handle !",
		"Error",MB_OK);
		FPC_DLLFUNC(LazExitProcess,rtl)(reinterpret_cast<LazINTEGER>(dw));
	}

	LazTerminal.std_input  = GetStdHandle(STD_INPUT_HANDLE);
	dw = reinterpret_cast<HANDLE>(GetLastError());
	if (dw == INVALID_HANDLE_VALUE) {
		MessageBox(NULL,
		"No terminal open.\n"
		"Can't get the input handle !",
		"Error",MB_OK);
		FPC_DLLFUNC(LazExitProcess,rtl)(reinterpret_cast<LazINTEGER>(dw));
	}

	LazTerminal.std_error  = GetStdHandle(STD_ERROR_HANDLE);
	dw = reinterpret_cast<HANDLE>(GetLastError());
	if (dw == INVALID_HANDLE_VALUE) {
		MessageBox(NULL,
		"No terminal open.\n"
		"Can't get the error handle !",
		"Error",MB_OK);
		FPC_DLLFUNC(LazExitProcess,rtl)(reinterpret_cast<LazINTEGER>(dw));
	}

	AttachConsole(ATTACH_PARENT_PROCESS);
	LazTerminal.is_open = TRUE;
}

// ----------------------------------------------------------
// WriteLn - display text in console.
// ----------------------------------------------------------
LazVOID FPC_DLLFUNC(WriteLn,rtl)(LazCHAR *s)
FPC_BEGIN
	check_console();
	
	long unsigned int i;
	uint8_t len = *s;

	WriteConsoleA(
		LazTerminal.std_output,
		s, len, &i,
		NULL);
FPC_END

// ----------------------------------------------------------
// get the length of an Byte array.
// ----------------------------------------------------------
LazINTEGER FPC_DLLFUNC(LengthByte,rtl)(LazBYTE s)
FPC_BEGIN
	return 1;
FPC_END

// ----------------------------------------------------------
// get the length of an Char array.
// ----------------------------------------------------------
LazINTEGER FPC_DLLFUNC(LengthChar,rtl)(LazCHAR s)
FPC_BEGIN
	return 1;
FPC_END

// ----------------------------------------------------------
// get the length of an Integer array.
// ----------------------------------------------------------
LazINTEGER FPC_DLLFUNC(LengthInteger,rtl)(LazINTEGER s)
FPC_BEGIN
	return 1;
FPC_END

// ----------------------------------------------------------
// get the length of an ShortString (String) array.
// ----------------------------------------------------------
LazINTEGER FPC_DLLFUNC(LengthString,rtl)(LazCHAR *s)
FPC_BEGIN
	uint8_t len = *s;
	MessageBox(NULL,s,"info",MB_OK);
	return len;
FPC_END

// ----------------------------------------------------------
// If current character is upper-case alphabet then
// convert it to lower-case.
// ----------------------------------------------------------
LazSTRING FPC_DLLFUNC(LowerCase,rtl)(LazSTRING s)
FPC_BEGIN
	for (int i = 0; s[i] != '\0'; i++) {
        if (s[i] >= 'A' && s[i] <= 'Z') {
            s[i] = s[i] - 32;
        }
    }
	return s;
FPC_END

// ----------------------------------------------------------
// If current character is lowercase alphabet then
// convert it to uppercase.
// ----------------------------------------------------------
LazSTRING FPC_DLLFUNC(UpperCase,rtl)(LazSTRING s)
FPC_BEGIN
	for (int i = 0; s[i] != '\0'; i++) {
        if (s[i] >= 'a' && s[i] <= 'z') {
            s[i] = s[i] - 32;
        }
    }
	return s;
FPC_END

END_RTL_NS
END_MANGLE
