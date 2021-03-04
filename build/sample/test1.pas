{$mode delphi}
program test1;

uses
  Windows, Strings;

begin
 Length('hallo');
 WriteLn('meerjung');
 ReadLn;

  asm
    movl $1, %ecx
    call LazExitProcess
    nop
  end;
end.
