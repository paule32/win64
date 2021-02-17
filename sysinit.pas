unit sysinit;

interface

implementation

procedure PascalMain; external name 'PASCALMAIN';

procedure ExitProcess(ExitCode: longint); stdcall; external 'kernel32.dll' name 'ExitProcess';

procedure Entry; [public, alias: '_mainCRTStartup'];
begin
   PascalMain;
   ExitProcess(0);
end;

end.
