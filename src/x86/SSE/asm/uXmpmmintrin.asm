
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

	.code
	
;************************************
; New Single precision vector instructions.
;************************************
_uXm_func_start _uXm_mm_addsub_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			addsubps			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_hadd_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			haddps				xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_hsub_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			hsubps			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_movehdup_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword

			movshdup			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_moveldup_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword

			movsldup			xmm0,			xmm0

			ret
_uXm_func_end

;************************************
; New double precision vector instructions.
;************************************
_uXm_func_start _uXm_mm_addsub_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			addsubpd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_hadd_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			haddpd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_hsub_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			hsubpd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loaddup_pd, xmmword, < >, reg_size ;InPreal8_A:ptr real8

			movddup			xmm0,		real8 ptr [rparam1]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_movedup_pd, xmmword, < >, xmm_size ;InXmm_A:xmmword

			sqrtps			xmm0,			xmm0

			ret
_uXm_func_end

;************************************
; New unaligned integer vector load instruction.
;************************************
_uXm_func_start _uXm_mm_lddqu_si128, xmmword, < >, reg_size ;InPxmm_A:ptr xmmword

			lddqu			xmm0,		xmmword ptr[rparam1]

			ret
_uXm_func_end

;************************************
; Miscellaneous new instructions.
;************************************

_uXm_func_start _uXm_mm_monitor, voidarg, < >, 3 * reg_size ;InPvoid_A:ptr void, Inint_B:dword, Inint_C:dword

			mov				rreturn,			[rparam1]
			mov				rparam1,			rparam2
			mov				rparam2,			rparam3
			monitor			;[rreturn],			rparam1,			rparam2

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_mwait, voidarg, < >, 2 * reg_size ;Inint_A:dword, Inint_B:dword

			mov				rreturn,			[rparam2]
			mwait			;rreturn,			rparam1

			ret
_uXm_func_end

endif ;__MIC__

	end
