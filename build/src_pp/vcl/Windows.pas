// ----------------------------------------------------------
// This file is part of Lazarus RTL.
//
// (c) Copyright 2003 Florian Klaempfl
// (c) Copyright 2021 Jens Kallup - paule32
//
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit Windows;

interface

procedure LazExitProcess (ExitCode: LongInt); cdecl; external 'laz_crt.dll' name 'LazExitProcess';

procedure UpperCase;                          cdecl; external 'laz_crt.dll';
procedure WriteLn         (s: String);        cdecl; external 'laz_crt.dll';

procedure ExitProcess(ExitCode: LongInt); stdcall; external 'kernel32.dll' name 'ExitProcess';

implementation

end.
