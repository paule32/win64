// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit Windows;

interface
uses
  kernel32;

procedure LazExitProcess (ExitCode: LongInt); cdecl; external 'laz_rtl.dll' name 'LazExitProcess';

implementation

procedure dummy; begin end;
end.
