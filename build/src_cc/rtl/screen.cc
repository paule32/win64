// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# include <windows.h>
# include "TTypes.h"

START_MANGLE
START_RTL_NS

LazVOID FPC_DLLFUNC(LazClrScr,rtl)()
FPC_BEGIN
	HANDLE hConsole = LazTerminal.std_output;
	
	// home for the cursor
	COORD coordScreen = {0, 0};
	DWORD cCharsWritten;
	DWORD dwConSize;
	
	CONSOLE_SCREEN_BUFFER_INFO csbi;
	  
	// Get the number of character cells in the current buffer
	if(!GetConsoleScreenBufferInfo(hConsole, &csbi))
	return;

	dwConSize = csbi.dwSize.X * csbi.dwSize.Y;

	// Fill the entire screen with blanks
	if (!FillConsoleOutputCharacter(
		hConsole, (WCHAR)' ',
		dwConSize, coordScreen, &cCharsWritten))
	return;

	// Get the current text attribute.
	if (!GetConsoleScreenBufferInfo(hConsole, &csbi))
	return;

	// Set the buffer's attributes accordingly.
	if (!FillConsoleOutputAttribute(
		hConsole, csbi.wAttributes,
		dwConSize,
		coordScreen, &cCharsWritten))
	return;

	// Put the cursor at its home coordinates.
	SetConsoleCursorPosition(hConsole, coordScreen);
FPC_END

END_RTL_NS
END_MANGLE
