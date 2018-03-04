
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
uXm_has_SSE_AES proto VECCALL (byte)


			align 16
uXm_has_SSE_AES proc VECCALL (byte)

	ifndef __X64__
			mov				eax,			1
			cpuid
			and				ecx,			bit_AES
			cmp				ecx,			bit_AES                 ; AES support by microprocessor
			jne not_supported
			and				edx,			bit_SSE
			cmp				edx,			bit_SSE					; SSE support by microprocessor
			jne not_supported
			mov				al,				true
			jmp done
			not_supported:
			mov				al,				false
			done:
	else
			mov				eax,			1
			cpuid
			and				ecx,			bit_AES
			cmp				ecx,			bit_AES                 ; AES support by microprocessor
			.if EQUAL?
			mov				al,				true
			.else
			mov				al,				false
			.endif
	endif
			ret

uXm_has_SSE_AES endp

	end ;.code