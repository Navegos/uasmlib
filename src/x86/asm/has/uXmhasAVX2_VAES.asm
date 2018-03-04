
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
uXm_has_AVX2_VAES proto VECCALL (byte)


			align 16
uXm_has_AVX2_VAES proc VECCALL (byte)

			mov				eax,			1
			cpuid
			and				ecx,			bit_OSXS_AVX
			cmp				ecx,			bit_OSXS_AVX				; OSXSAVE AVX feature flags
			jne not_supported
			; processor supports AVX2 instructions and XGETBV is enabled by OS
			mov				eax,			7
			cpuid
			and				ebx,			bit_AVX2
			cmp				ebx,			bit_AVX2					; AVX2 support by microprocessor
			jne not_supported
			and				ecx,			bit_VAES
			cmp				ecx,			bit_VAES					; VAES support by microprocessor
			jne not_supported
			mov				ecx,			0							; specify 0 for XCR0 register
			xgetbv														; result in edx:eax
			and				eax,			06h
			cmp				eax,			06h							; check OS has enabled both XMM and YMM state support
			jne not_supported
			mov				al,				true
			jmp done
			not_supported:
			mov				al,				false
			done:

			ret

uXm_has_AVX2_VAES endp

	end ;.code