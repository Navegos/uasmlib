
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
uXm_has_AVX512CD proto VECCALL (byte)


			align 16
uXm_has_AVX512CD proc VECCALL (byte)

			mov				eax,			0
			cpuid
			cmp				ecx,			bit_ntel					; 'GenuineIntel'
			jne not_supported
			mov				eax,			1
			cpuid
			and				ecx,			bit_OSXSAVE
			cmp				ecx,			bit_OSXSAVE					; check OSXSAVE
			jne not_supported
			; processor XGETBV is enabled by OS
			mov				ecx,			0							; specify 0 for XCR0 register
			xgetbv														; result in edx:eax
			and				eax,			0E6h
			cmp				eax,			0E6h						; check OS has enabled both XMM and YMM and ZMM state support
			jne not_supported
			mov				eax,			7
			cpuid
			and				ebx,			bit_AVX512F_CD
			cmp				ebx,			bit_AVX512F_CD				; AVX512F AVX512CD support by microprocessor
			jne not_supported
			mov				al,				true
			jmp done
			not_supported:
			mov				al,				false
			done:

			ret

uXm_has_AVX512CD endp

	end ;.code