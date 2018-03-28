
	include uXmx86asm.inc

			option	casemap:none
	ifndef __X64__
			.686P
			.xmm
			.model	flat
	else
			.X64P
			.xmm
			option	win64:15
			option	stackbase:rsp
	endif
			option	frame:auto


	;.code
_TEXT segment
			align ptr_t_size
DllMain proto UX_VECCALL (dword) ;hModule:ptr, dwReason:dword, dwReserved:ptr

			align ptr_t_size
DllMain proc UX_VECCALL (dword) ;hModule:ptr, dwReason:dword, dwReserved:ptr

		mov			eax,		1
		ret

DllMain endp
_TEXT ends

	end