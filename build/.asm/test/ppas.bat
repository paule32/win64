@echo off
SET THEFILE=test1
echo Assembling %THEFILE%
e:\lazarus\fpc\3.2.0\bin\x86_64-win64\as.exe --64 -o .asm\test\test1.o   .asm\test\test1.s
if errorlevel 1 goto asmend
SET THEFILE=.asm\test\test1.s
echo Linking %THEFILE%
e:\lazarus\fpc\3.2.0\bin\x86_64-win64\ld.exe -b pei-x86-64  --gc-sections    --entry=_mainCRTStartup    -o .asm\test\test1.s .asm\test\link.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
