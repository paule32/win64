	.file	"dllMain.cc"
	.text
/APP
	.globl DllMainCRTStartup 
DllMainCRTStartup:	  
movq $1, %rax	  
ret		  

