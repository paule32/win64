// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit kernel32;

interface

procedure    ExitProcess(ExitCode: LongInt); stdcall; external 'laz_win.dll' name 'ExitProcess';
procedure LAZEXITPROCESS(ExitCode: LongInt); cdecl  ; external 'laz_win.dll' name 'LAZEXITPROCESS';

implementation

// -------------------------------------------------------
// this procedure does nothing.
// it's a dummy for fpc, to make .o file.
// fpc does not create .o bject file, if you have only
// interface "external"s.
// -------------------------------------------------------
procedure dummy; begin end;

end.