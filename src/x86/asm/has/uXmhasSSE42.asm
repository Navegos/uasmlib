
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
uXm_has_SSE42 proto VECCALL (byte)


			align 16
uXm_has_SSE42 proc VECCALL (byte)

			mov				eax,			1
			cpuid
			and				ecx,			bit_SSE42
			cmp				ecx,			bit_SSE42                 ; SSE42 support by microprocessor
			.if EQUAL?
			mov				al,				true
			.else
			mov				al,				false
			.endif

			ret

uXm_has_SSE42 endp

	end ;.code