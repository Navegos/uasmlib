
	include uXmx86asm.inc
	
	.code
			align ptr_t_size
DllMain proto __veccall (dword) ;hModule:ptr, dwReason:dword, dwReserved:ptr

			align ptr_t_size
DllMain proc __veccall (dword) ;hModule:ptr, dwReason:dword, dwReserved:ptr

		mov			eax,		1
		ret

DllMain endp

	end