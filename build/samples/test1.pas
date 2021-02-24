{$mode delphi}
program test1;

uses
  Windows;

begin
  asm
    movl $1, %ecx
    call LazExitProcess
    nop
    movl $2, %ecx
    call LazExitProcess
    nop
  end;
end.
