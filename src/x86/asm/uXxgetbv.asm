
	include uXx86asm.inc

	.code
	
	alignfieldproc 8
	callconvopt

funcstart _uX_xgetbv, callconv, qword, < >, EXCR:dword

	ifndef __X64__
			;mov				ecx,			esp
			xgetbv
			;db				0FH,			01H,			0D0H         ; XGETBV
	else
		ifdef __UNIX__
			mov				ecx,			dparam0
		endif
			mov				eax,			0cccccccch
			xgetbv
			shl				rdx,			32					; 00000020H
			or				rdx,			rax
			mov				rax,			rdx
	endif ;__X64__

			ret
funcend

	end