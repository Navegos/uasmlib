
	include uXmx86asm.inc

			option	casemap:none
	ifndef __X64__
			.686P
			.xmm
			.model	flat, c
	else
			.X64P
			.xmm
			option	win64:11
			option	stackbase:rsp
	endif
			option	frame:auto


	.code
			align 16
DllMain proto UX_VECCALL (dword) ;hModule:ptr, dwReason:dword, dwReserved:ptr

			align 16
DllMain proc UX_VECCALL (dword);hModule:ptr, dwReason:dword, dwReserved:ptr

		mov			eax,		1
		ret

DllMain endp

	end ;.code