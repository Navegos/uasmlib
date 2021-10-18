
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
uXm_has_FPU proto VECCALL (byte)


			align 16
uXm_has_FPU proc VECCALL (byte)

	ifndef __X64__
			mov				eax,			1
			cpuid
			and				edx,			bit_FPU
			cmp				edx,			bit_FPU                ; FPU support by microprocessor
			.if EQUAL?
			mov				al,				true
			.else
			mov				al,				false
			.endif
	else
			mov				al,				true
	endif
			ret

uXm_has_FPU endp

	end ;.code