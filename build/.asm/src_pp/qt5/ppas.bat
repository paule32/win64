@echo off
SET THEFILE=system
echo Assembling %THEFILE%
e:\lazarus\fpc\3.2.0\bin\x86_64-win64\as.exe --64 -o .asm\src_pp\qt5\system.o   .asm\src_pp\qt5\system.s
if errorlevel 1 goto asmend
SET THEFILE=qobject
echo Assembling %THEFILE%
e:\lazarus\fpc\3.2.0\bin\x86_64-win64\as.exe --64 -o .asm\src_pp\qt5\QObject.o   .asm\src_pp\qt5\QObject.s
if errorlevel 1 goto asmend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
