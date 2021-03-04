// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit strings;

interface

procedure ClrScr; cdecl; external 'laz_rtl.dll' name 'LazClrScr';

procedure LazExitProcess(ExitCode: LongInt); cdecl; external 'laz_rtl.dll' name 'LazExitProcess';

function Length(const s: String          ): Integer; overload; cdecl; external 'laz_rtl.dll' name 'LengthString';
function Length(const s: Array of Char   ): Integer; overload; cdecl; external 'laz_rtl.dll' name 'LengthArrayChar';
function Length(const s: Array of Byte   ): Integer; overload; cdecl; external 'laz_rtl.dll' name 'LengthArrayByte';
function Length(const s: Array of Integer): Integer; overload; cdecl; external 'laz_rtl.dll' name 'LengthArrayInteger';
function Length(const s: Array of String ): Integer; overload; cdecl; external 'laz_rtl.dll' name 'LengthArrayString';

function LowerCase(const s: String): String ; cdecl; external 'laz_rtl.dll' name 'LowerCase';
function UpperCase(const s: String): String ; cdecl; external 'laz_rtl.dll' name 'UpperCase';

function  ReadLn   : String ; cdecl; external 'laz_rtl.dll' name 'ReadLn';
procedure WriteLn(s: String); cdecl; external 'laz_rtl.dll' name 'WriteLn';

implementation

// -------------------------------------------------------
// this procedure does nothing.
// it's a dummy for fpc, to make .o file.
// fpc does not create .o bject file, if you have only
// interface "external"s.
// -------------------------------------------------------
procedure dummy; begin end;

end.
