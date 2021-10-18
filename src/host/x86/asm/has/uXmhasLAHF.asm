
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
uXm_has_LAHF proto VECCALL (byte)


			align 16
uXm_has_LAHF proc VECCALL (byte)

	ifndef __X64__
			mov				al,				false
	else
			mov				eax,			80000001h
			cpuid
			and				ecx,			bit_LAHF
			cmp				ecx,			bit_LAHF						; LAHF/SAHF available in 64-bit mode support by microprocessor
			.if EQUAL?
			mov				al,				true
			.else
			mov				al,				false
			.endif
	endif ;__X64__

			ret

uXm_has_LAHF endp

	end ;.code