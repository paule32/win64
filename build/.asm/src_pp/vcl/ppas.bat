@echo off
SET THEFILE=system
echo Assembling %THEFILE%
e:\lazarus\fpc\3.2.0\bin\x86_64-win64\as.exe --64 -o .asm\src_pp\vcl\system.o   .asm\src_pp\vcl\system.s
if errorlevel 1 goto asmend
SET THEFILE=forms
echo Assembling %THEFILE%
e:\lazarus\fpc\3.2.0\bin\x86_64-win64\as.exe --64 -o .asm\src_pp\vcl\Forms.o   .asm\src_pp\vcl\Forms.s
if errorlevel 1 goto asmend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
