
	include uXx86asm.inc
	
	alignfieldproc 8
	callconvopt

	.code

funcstart _uX_xsetbv, callconv, voidarg, < >, EXCR:dword, EXCRSet:qword

	ifndef __X64__
			xsetbv
	else
		ifdef __UNIX__
			mov				ecx,			dparam0
			mov				rdx,			rparam1
		endif
			mov				rax,			rdx
			shr				rdx,			32					; 00000020H
			xsetbv
	endif ;__X64__

			ret
funcend

	end