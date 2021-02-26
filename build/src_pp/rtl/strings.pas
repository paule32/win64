// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit strings;

interface

function LowerCase(const s: String): String; cdecl; external 'laz_rtl.dll' name 'LowerCase';
function UpperCase(const s: String): String; cdecl; external 'laz_rtl.dll' name 'UpperCase';

implementation

// -------------------------------------------------------
// this procedure does nothing.
// it's a dummy for fpc, to make .o file.
// fpc does not create .o bject file, if you have only
// interface "external"s.
// -------------------------------------------------------
procedure dummy; begin end;

end.
