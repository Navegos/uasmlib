
	include uXmx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	include uXmsseintrin.inc
	
	.data

	.const
	
	__align_xmm_fp_opt
	__veccall_opt

	include uXmxmmconstdata.inc
	
	.code
	
;************************************
; blend instructions
;************************************
_uXm_func_start _uXm_mm_blendv_epi8, xmmword, < >, 3 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword, InXmm_Bmask:xmmword

			movdqa				xmm3,			xmm0
			movdqa				xmm0,			xmm2
			pblendvb			xmm3,			xmm1,			xmm0
			movdqa				xmm0,			xmm3

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_blendv_ps, xmmword, < >, 3 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword, InXmm_Bmask:xmmword

			movaps				xmm3,			xmm0
			movaps				xmm0,			xmm2
			blendvps			xmm3,			xmm1,			xmm0
			movaps				xmm0,			xmm3

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blendv_pd, xmmword, < >, 3 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword, InXmm_Bmask:xmmword

			movapd				xmm3,			xmm0
			movapd				xmm0,			xmm2
			blendvpd			xmm3,			xmm1,			xmm0
			movapd				xmm0,			xmm3

			ret
_uXm_func_end

;************************************
; Packed integer 64-bit comparison
;************************************
_uXm_func_start _uXm_mm_cmpeq_epi64, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pcmpeqq			xmm0,			xmm1

			ret
_uXm_func_end
	
;************************************
; Min/max packed integer instructions
;************************************
_uXm_func_start _uXm_mm_min_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pminsb			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_max_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmaxsb			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_min_epu16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pminuw			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_max_epu16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmaxuw			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_min_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pminsd			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_max_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmaxsd			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_min_epu32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pminud			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_max_epu32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmaxud			xmm0,			xmm1

			ret
_uXm_func_end
	
;************************************
; Packed integer 32-bit multiplication
;************************************
_uXm_func_start _uXm_mm_mullo_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmulld			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_mul_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmuldq			xmm0,			xmm1

			ret
_uXm_func_end
	
;************************************
; Packed integer 128-bit bitwise comparison
;************************************
_uXm_func_start _uXm_mm_testz_si128, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			ptest			xmm0,			xmm1
			mov				eax,			1
			mov				ecx,			0
			cmovz			ecx,			eax
			mov				eax,			ecx

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_testc_si128, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			ptest			xmm0,			xmm1
			mov				eax,			1
			mov				ecx,			0
			cmovb			ecx,			eax
			mov				eax,			ecx

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_testnzc_si128, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			ptest			xmm0,			xmm1
			mov				eax,			1
			mov				ecx,			0
			cmova			ecx,			eax
			mov				eax,			ecx

			ret
_uXm_func_end
	
endif ;__MIC__

	end
