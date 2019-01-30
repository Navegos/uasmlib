
	include uXx86asm.inc
	
	.code
			align ptr_size
DllMain proto stdcall (dword) ;hModule:ptr, dwReason:dword, dwReserved:ptr

			align ptr_size
DllMain proc stdcall (dword) ;hModule:ptr, dwReason:dword, dwReserved:ptr

		mov			eax,		1
		ret

DllMain endp

	end