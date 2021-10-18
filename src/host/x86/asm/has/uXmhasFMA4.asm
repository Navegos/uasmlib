
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
uXm_has_FMA4 proto VECCALL (byte)


			align 16
uXm_has_FMA4 proc VECCALL (byte)

			mov				eax,			0
			cpuid
			cmp				ecx,			bit_cAMD		; 'AuthenticAMD'
			jne not_supported
			mov				eax,			80000001h
			cpuid
			and				ecx,			bit_FMA4
			cmp				ecx,			bit_FMA4		; FMA4 support by microprocessor
			jne not_supported
			mov				al,				true
			jmp done
			not_supported:
			mov				al,				false
			done:

			ret

uXm_has_FMA4 endp

	end ;.code