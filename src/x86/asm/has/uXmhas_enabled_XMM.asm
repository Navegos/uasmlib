
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
uXm_has_enabled_XMM proto VECCALL (byte)


			align 16
uXm_has_enabled_XMM proc VECCALL (byte)

	ifndef __X64__
			mov				eax,			1
			cpuid
			and				ecx,			bit_OSXSAVE
			cmp				ecx,			bit_OSXSAVE                 ; OSXSAVE support by microprocessor
			jne not_supported
			; processor supports XGETBV is enabled by OS
			mov				ecx,			0							; specify 0 for XCR0 register
			xgetbv														; result in edx:eax
			and				eax,			02h
			cmp				eax,			02h							; check OS has enabled XMM state support
			jne not_supported
			mov				al,				true
			jmp done
			not_supported:
			mov				al,				false
			done:
	else
			mov				al,				true
	endif ;__X64__

			ret

uXm_has_enabled_XMM endp

	end ;.code