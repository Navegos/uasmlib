
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
uXm_has_VPCLMULQDQ proto VECCALL (byte)


			align 16
uXm_has_VPCLMULQDQ proc VECCALL (byte)

			mov				eax,			7
			cpuid
			and				ecx,			bit_VPCLMULQDQ
			cmp				ecx,			bit_VPCLMULQDQ						; VPCLMULQDQ support by microprocessor
			.if EQUAL?
			mov				al,				true
			.else
			mov				al,				false
			.endif

			ret

uXm_has_VPCLMULQDQ endp

	end ;.code