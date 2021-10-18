
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
uXm_has_SYSCALL proto VECCALL (byte)


			align 16
uXm_has_SYSCALL proc VECCALL (byte)

	ifndef __X64__
			mov				al,				false
	else
			mov				eax,			80000001h
			cpuid
			and				edx,			bit_SYSCALL
			cmp				edx,			bit_SYSCALL				; SYSCALL support by microprocessor
			.if EQUAL?
			mov				al,				true
			.else
			mov				al,				false
			.endif
	endif ;__X64__

			ret

uXm_has_SYSCALL endp

	end ;.code