{$mode delphi}
program test1;

procedure WriteLn(s: String); cdecl; external 'laz_crt.dll' name 'P$CRT_$$_WRITELN$SHORTSTRING';

procedure start;
begin
  WriteLn('txter');
  ReadLn;
end;

begin
  start;
end.
