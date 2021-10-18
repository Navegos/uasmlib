
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
uXm_has_SSSE3_PCLMULQDQ proto VECCALL (byte)


			align 16
uXm_has_SSSE3_PCLMULQDQ proc VECCALL (byte)

			mov				eax,			1
			cpuid
			and				ecx,			bit_SSSE3_PCLMULQDQ
			cmp				ecx,			bit_SSSE3_PCLMULQDQ                 ; SSSE3 PCLMULQDQ support by microprocessor
			.if EQUAL?
			mov				al,				true
			.else
			mov				al,				false
			.endif

			ret

uXm_has_SSSE3_PCLMULQDQ endp

	end ;.code