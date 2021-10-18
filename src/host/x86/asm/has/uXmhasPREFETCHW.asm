
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
uXm_has_PREFETCHW proto VECCALL (byte)


			align 16
uXm_has_PREFETCHW proc VECCALL (byte)

			mov				eax,			80000001h
			cpuid
			and				ecx,			bit_PREFETCHW
			cmp				ecx,			bit_PREFETCHW					; PREFETCHW support by microprocessor
			.if EQUAL?
			mov				al,				true
			.else
			mov				al,				false
			.endif

			ret

uXm_has_PREFETCHW endp

	end ;.code