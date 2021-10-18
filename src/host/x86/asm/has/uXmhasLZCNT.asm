
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
uXm_has_LZCNT proto VECCALL (byte)


			align 16
uXm_has_LZCNT proc VECCALL (byte)

			mov				eax,			80000001h
			cpuid
			and				ecx,			bit_LZCNT
			cmp				ecx,			bit_LZCNT						; ABM/LZCNT support by microprocessor
			.if EQUAL?
			mov				al,				true
			.else
			mov				al,				false
			.endif

			ret

uXm_has_LZCNT endp

	end ;.code