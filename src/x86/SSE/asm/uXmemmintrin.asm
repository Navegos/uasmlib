
	include uXmx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	include uXmsseintrin.inc
	
	.const
	
		__align_size_t
		_m128cvteltdf64jmptable isize_t offset _m128cvteltdf64_0, offset _m128cvteltdf64_1		
		
	.data?

		__align_xmm
		m128_setepi8_hi1 xmmword ?

		__align_xmm
		m128_setepi8_hi0 xmmword ?

		__align_xmm
		m128_setrepi8_hi1 xmmword ?

		__align_xmm
		m128_setrepi8_hi0 xmmword ?
		
	include uXmxmmconstdata.inc
	
	__align_xmm_fp_opt
	__veccall_opt

	.code
	
;******************
; Externs
;******************
	;extern __veccall _uXm_intrin_CPUFeatures:proc
	
;******************
; DP, arithmetic
;******************
_uXm_func_start _uXm_mm_add_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			addsd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_add_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			addpd			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_sub_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			subsd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sub_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			subpd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_mul_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			mulsd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_mul_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			mulpd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sqrt_sd, xmmword, < >, xmm_size ;InXmm_A:xmmword

			sqrtsd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sqrt_pd, xmmword, < >, xmm_size ;InXmm_A:xmmword

			sqrtpd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_div_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			divsd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_div_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			divpd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_min_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			minsd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_min_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			minpd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_max_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			maxsd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_max_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			maxpd			xmm0,			xmm1

			ret
_uXm_func_end

;******************
; DP, logicals
;******************
_uXm_func_start _uXm_mm_and_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			andpd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_andnot_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			andnpd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_or_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			orpd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_xor_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			xorpd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_not_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			;movdqa			xmm2,			__m128d_true
			movapd			xmm1,			__m128d_true
			xorpd			xmm0,			xmm1

			ret
_uXm_func_end

;******************
; DP, comparison
;******************
_uXm_func_start _uXm_mm_cmpeq_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_EQ

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpeq_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_EQ

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmplt_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmplt_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmple_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmple_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpgt_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpgt_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpge_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpge_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpneq_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_NEQ

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpneq_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_NEQ

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpnlt_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpnlt_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpnle_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpnle_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpngt_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpngt_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpnge_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpnge_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpord_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_ORD

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpord_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_ORD

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpunord_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_UNORD

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpunord_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_UNORD

			ret
_uXm_func_end

;******************
; DP, comparison return int
;******************
_uXm_func_start _uXm_mm_comieq_sd, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			je label_comieq_sd
			xor				rreturn,			rreturn
			ret
	label_comieq_sd:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_comilt_sd, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jl label_comilt_sd
			xor				rreturn,			rreturn
			ret
	label_comilt_sd:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_comile_sd, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jle label_comile_sd
			xor				rreturn,			rreturn
			ret
	label_comile_sd:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_comigt_sd, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jg label_comigt_sd
			xor				rreturn,			rreturn
			ret
	label_comigt_sd:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_comige_sd, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jge label_comige_sd
			xor				rreturn,			rreturn
			ret
	label_comige_sd:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_comineq_sd, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jne label_comineq_sd
			xor				rreturn,			rreturn
			ret
	label_comineq_sd:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ucomieq_sd, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			ucomisd			xmm0,			xmm1
			je label_ucomieq_sd
			xor				rreturn,			rreturn
			ret
	label_ucomieq_sd:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ucomilt_sd, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jl label_ucomilt_sd
			xor				rreturn,			rreturn
			ret
	label_ucomilt_sd:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ucomile_sd, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jle label_ucomile_sd
			xor				rreturn,			rreturn
			ret
	label_ucomile_sd:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ucomigt_sd, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jg label_ucomigt_sd
			xor				rreturn,			rreturn
			ret
	label_ucomigt_sd:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ucomige_sd, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jge label_ucomige_sd
			xor				rreturn,			rreturn
			ret
	label_ucomige_sd:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ucomineq_sd, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jne label_ucomineq_sd
			xor				rreturn,			rreturn
			ret
	label_ucomineq_sd:
			mov				rreturn,			true

			ret
_uXm_func_end

;******************
; DP, conversions
;******************
_uXm_func_start _uXm_mm_cvtepi32_pd, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			cvtdq2pd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtpd_epi32, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			cvtpd2dq			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvttpd_epi32, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			cvttpd2dq			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtepi32_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			cvtdq2ps			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtps_epi32, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			cvtps2dq			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvttps_epi32, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			cvttps2dq			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtpd_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			cvtpd2ps			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtps_pd, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			cvtps2pd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtsd_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cvtsd2ss			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtss_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cvtss2sd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtsd_si32, dword, < >, xmm_size ;InXmm_A:xmmword
			
			cvtsd2si			dreturn,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvttsd_si32, dword, < >, xmm_size ;InXmm_A:xmmword
			
			cvttsd2si			dreturn,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtsi32_sd, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, InInt_B:dword
			
			cvtsi2sd			xmm0,			dparam2

			ret
_uXm_func_end

ifdef __X32__
;******************
; DP, conversions, Support for MMX extension intrinsics
;******************
_uXm_func_start _uXm_mm_cvtpd_pi32, mmword, < >, xmm_size ;InXmm_A:xmmword
			
			cvtpd2pi			mm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvttpd_pi32, mmword, < >, xmm_size ;InXmm_A:xmmword
			
			cvttpd2pi			mm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtpi32_pd, xmmword, < >, xmm_size + mm_size ;InXmm_A:xmmword, Inmm_B:mmword
			
			cvtpi2pd			xmm0,			mm1

			ret
_uXm_func_end
endif ;__X32__

ifdef __X64__
_uXm_func_start _uXm_mm_cvtsd_si64, qword, < >, xmm_size ;InXmm_A:xmmword
			
			cvtsd2si			dreturn,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvttsd_si64, qword, < >, xmm_size ;InXmm_A:xmmword
			
			cvttsd2si			dreturn,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtsi64_sd, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, InInt_B:qword
			
			cvtsi2sd			xmm0,			rparam2

			ret
_uXm_func_end
endif ;__X64__

_uXm_func_start _uXm_mm_cvtsd_f64, real8, < >, xmm_size ;InXmm_A:xmmword
			
			movsd			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvt0d_f64, real8, < >, xmm_size ;InXmm_A:xmmword
			
			movsd			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvt1d_f64, real8, < >, xmm_size ;InXmm_A:xmmword
			
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,1)
			movsd			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvteltd_f64, real8, < >, xmm_size + reg_size ;InXmm_A:xmmword, InInt_BSel:dword
			
		;.if(rparam2 > 1)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128cvteltdf64jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128cvteltdf64jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
			
		_m128cvteltdf64_0 label size_t
			movsd			xmm0,			xmm0
			ret
		_m128cvteltdf64_1 label size_t
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,1)
			movsd			xmm0,			xmm0
			ret
		;.endif
			
_uXm_func_end

;******************
; DP, Misc
;******************
_uXm_func_start _uXm_mm_unpackhi_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpckhpd 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_unpacklo_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpcklpd 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_movemask_pd, dword, < >, xmm_size ;InXmm_A:xmmword
			
			movmskpd			dreturn,				xmm1

			ret
_uXm_func_end

;******************
; DP, sets
;******************
_uXm_func_start _uXm_mm_set_sd, xmmword, < >, reg_size ;Inreal8_B:real8

			movsd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_set_pd1, xmmword, < >, reg_size ;Inreal8_B:real8

			movsd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_set_pd, xmmword, < >, 2 * reg_size ;Inreal8_C:real8, Inreal8_B:real8

			movsd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffle2(0,0)

			movsd			xmm0,			xmm2

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_setr_pd, xmmword, < >, 2 * reg_size ;Inreal8_B:real8, Inreal8_C:real8

			movsd			xmm0,			xmm2
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffle2(0,0)

			movsd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_setzero_pd, xmmword, < >, 0 ;

			xorpd			xmm0,			xmm0

			ret
_uXm_func_end

;******************
; DP, loads
;******************
_uXm_func_start _uXm_mm_load_sd, xmmword, < >, reg_size ;InPreal8_B:ptr real8

			movsd			xmm0,		real8 ptr [rparam2]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_load_pd1, xmmword, < >, reg_size ;InPreal8_B:ptr real8

			movsd			xmm0,		real8 ptr [rparam2]
			shufpd			xmm0,			xmm0,			0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_load_pd, xmmword, < >, reg_size ;InPreal8_B:ptr xmmword

			movapd			xmm0,		xmmword ptr [rparam2]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadr_pd, xmmword, < >, reg_size ;InPreal8_B:ptr xmmword

			movapd			xmm0,		xmmword ptr [rparam2]
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadu_pd, xmmword, < >, reg_size ;InPreal8_B:ptr xmmword

			movupd			xmm0,		xmmword ptr [rparam2]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadur_pd, xmmword, < >, reg_size ;InPreal8_B:ptr xmmword

			movupd			xmm0,		xmmword ptr [rparam2]
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadh_pd, xmmword, < >, xmm_size + reg_size ;InXmm_B:xmmword, InPreal8_C:ptr mmword

			movhpd			xmm0,		mmword ptr [rparam2]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadl_pd, xmmword, < >, xmm_size + reg_size ;InXmm_B:xmmword, InPreal8_C:ptr mmword

			movlpd			xmm0,		mmword ptr [rparam2]

			ret
_uXm_func_end

;******************
; DP, stores
;******************
_uXm_func_start _uXm_mm_store_sd, voidarg, < >, reg_size + xmm_size ;OutPreal8_A:ptr real8, InXmm_B:xmmword

			movsd		real8 ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_store_pd1, voidarg, < >, reg_size + xmm_size ;OutPreal8_A:ptr real8, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			0
			movapd		xmmword ptr [rparam1],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeu_pd1, voidarg, < >, reg_size + xmm_size ;OutPreal8_A:ptr real8, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			0
			movupd		xmmword ptr [rparam1],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_store_pd, voidarg, < >, reg_size + xmm_size ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeu_pd, voidarg, < >, reg_size + xmm_size ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movupd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storer_pd, voidarg, < >, reg_size + xmm_size ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)
			movapd		xmmword ptr [rparam1],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeur_pd, voidarg, < >, reg_size + xmm_size ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)
			movupd		xmmword ptr [rparam1],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeh_pd, voidarg, < >, reg_size + xmm_size ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movhpd		mmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storel_pd, voidarg, < >, reg_size + xmm_size ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movlpd		mmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_store_mm_pd, voidarg, < >, reg_size + xmm_size ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_store_pdouble_pd, voidarg, < >, 2 * reg_size ;OutPxmmword_A:ptr xmmword, InPreal8_A:ptr xmmword

			movapd			xmm1,			xmmword ptr [rparam2]
			movapd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeu_pdouble_pd, voidarg, < >, 2 * reg_size ;OutPxmmword_A:ptr xmmword, InPreal8_A:ptr xmmword

			movupd			xmm1,			xmmword ptr [rparam2]
			movupd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

;******************
; DP, moves
;******************
_uXm_func_start _uXm_mm_move_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movsd 			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_move_pd1, xmmword, < >, xmm_size ;InXmm_A:xmmword
			
			shufpd			xmm0,			xmm0,			0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_move_pd, xmmword, < >, xmm_size ;InXmm_A:xmmword
			
			movapd			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_mover_pd, xmmword, < >, xmm_size ;InXmm_A:xmmword
			
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_move_mm_sd, ptr, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movsd 			xmm0,			xmm1
			movapd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_move_mm_pd1, ptr, < >, xmm_size ;InXmm_A:xmmword

			shufpd			xmm0,			xmm0,			0
			movapd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_move_mm_pd, ptr, < >, xmm_size ;InXmm_A:xmmword

			movapd 			xmm0,			xmm0
			movapd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_mover_mm_pd, ptr, < >, xmm_size ;InXmm_A:xmmword

			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)
			movapd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveu_mm_sd, ptr, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movsd 			xmm0,			xmm1
			movupd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveu_mm_pd1, ptr, < >, xmm_size ;InXmm_A:xmmword

			shufpd			xmm0,			xmm0,			0
			movupd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveu_mm_pd, ptr, < >, xmm_size ;InXmm_A:xmmword

			movapd 			xmm0,			xmm0
			movupd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveur_mm_pd, ptr, < >, xmm_size ;InXmm_A:xmmword

			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)
			movupd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

;******************
; Integer, arithmetic
;******************
_uXm_func_start _uXm_mm_add_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddb 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_add_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddw 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_add_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddd 				xmm0,			xmm1

			ret
_uXm_func_end

ifdef __X32__
	__align_mm_fp_opt

_uXm_func_start _uXm_mm_add_si64, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			
			paddq 				mm0,			mm1

			ret
_uXm_func_end

	__align_xmm_fp_opt
endif ;__X32__

_uXm_func_start _uXm_mm_add_epi64, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddq 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_adds_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddsb 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_adds_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddsw 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_adds_epu8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddusb 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_adds_epu16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddusw 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_avg_epu8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pavgb 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_avg_epu16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pavgw 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_madd_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmaddwd 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_max_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmaxsw 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_max_epu8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmaxub 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_min_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pminsw				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_min_epu8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pminub 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_mulhi_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmulhw 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_mulhi_epu16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmulhuw 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_mullo_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmullw 				xmm0,			xmm1

			ret
_uXm_func_end

ifdef __X32__
	__align_mm_fp_opt

_uXm_func_start _uXm_mm_mul_su32, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			
			pmuludq 				mm0,			mm1

			ret
_uXm_func_end

	__align_xmm_fp_opt
endif ;__X32__

_uXm_func_start _uXm_mm_mul_epu32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmuludq 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sad_epu8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psadbw 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sub_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubb 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sub_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubw 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sub_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubd 				xmm0,			xmm1

			ret
_uXm_func_end

ifdef __X32__
	__align_mm_fp_opt

_uXm_func_start _uXm_mm_sub_si64, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			
			psubq 				mm0,			mm1

			ret
_uXm_func_end

	__align_xmm_fp_opt
endif ;__X32__

_uXm_func_start _uXm_mm_sub_epi64, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubq 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_subs_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubsb 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_subs_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubsw 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_subs_epu8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubusb 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_subs_epu16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubusw 				xmm0,			xmm1

			ret
_uXm_func_end

;******************
; Integer, logicals
;******************
_uXm_func_start _uXm_mm_and_si128, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pand 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_andnot_si128, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pandn 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_or_si128, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			por 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_xor_si128, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pxor 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_not_si128, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movdqa			xmm1,			__m128i_i64_true
			pxor			xmm0,			xmm1

			ret
_uXm_func_end

;******************
; Integer, shifts
;******************
_uXm_func_start _uXm_mm_sll_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psllw 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sll_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			pslld 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sll_epi64, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psllq 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sra_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psraw 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sra_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psrad 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_srl_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psrlw 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_srl_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psrld 				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_srl_epi64, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psrlq 				xmm0,			xmm1

			ret
_uXm_func_end

;******************
; Integer, comparisons
;******************
_uXm_func_start _uXm_mm_cmpeq_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpeqb		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpeq_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpeqw		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpeq_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpeqd		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpgt_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtb		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpgt_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtw		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpgt_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtd		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmplt_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtb		xmm1,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmplt_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtw		xmm1,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmplt_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtd		xmm1,			xmm0

			ret
_uXm_func_end

;******************
; Integer, converts
;******************
_uXm_func_start _uXm_mm_cvtsi32_si128, xmmword, < >, reg_size ;InInt_A:dword
			
			movd			xmm0,			rparam1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtsi128_si32, dword, < >, xmm_size ;InXmm_A:xmmword
			
			movd			dreturn,			xmm0

			ret
_uXm_func_end

ifdef __X64__
_uXm_func_start _uXm_mm_cvtsi64_si128, xmmword, < >, reg_size ;InInt_A:qword
			
			movq			xmm0,			rparam1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtsi128_si64, qword, < >, xmm_size ;InXmm_A:xmmword
			
			movq			dreturn,			xmm0

			ret
_uXm_func_end
endif ;__X64__

;******************
; Integer, misc
;******************
_uXm_func_start _uXm_mm_packs_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			packsswb		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_packs_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			packssdw		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_packus_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			packuswb		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_movemask_epi8, dword, < >, xmm_size ;InXmm_A:xmmword
	
			pmovmskb		dreturn,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_unpackhi_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckhbw		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_unpackhi_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckhwd		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_unpackhi_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckhdq		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_unpackhi_epi64, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckhqdq		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_unpacklo_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpcklbw		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_unpacklo_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpcklwd		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_unpacklo_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckldq		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_unpacklo_epi64, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpcklqdq		xmm0,			xmm1

			ret
_uXm_func_end

;******************
; Integer, loads
;******************
_uXm_func_start _uXm_mm_load1_epi64, xmmword, < >, reg_size ;InXPmm_A:ptr xmmword
	
			movq			xmm0,		qword ptr [rparam1]
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_load1_epi32, xmmword, < >, reg_size ;InXPmm_A:ptr xmmword
	
			movd			xmm0,		dword ptr [rparam1]
			pshufd			xmm0,			xmm0,			0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_load_si128, xmmword, < >, reg_size ;InXPmm_A:ptr xmmword
	
			movdqa			xmm0,		xmmword ptr [rparam1]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadr_epi64, xmmword, < >, reg_size ;InXPmm_A:ptr xmmword
	
			movdqa			xmm0,		xmmword ptr [rparam1]
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(2,3,0,1)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadr_epi32, xmmword, < >, reg_size ;InXPmm_A:ptr xmmword
	
			movdqa			xmm0,		xmmword ptr [rparam1]
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadu_si128, xmmword, < >, reg_size ;InXPmm_A:ptr xmmword
	
			movdqu			xmm0,		xmmword ptr [rparam1]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadur_epi64, xmmword, < >, reg_size ;InXPmm_A:ptr xmmword
	
			movdqu			xmm0,		xmmword ptr [rparam1]
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(2,3,0,1)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadur_epi32, xmmword, < >, reg_size ;InXPmm_A:ptr xmmword
	
			movdqu			xmm0,		xmmword ptr [rparam1]
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadh_epi64, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, InXPmm_B:ptr xmmword
	
			movq			xmm1,		qword ptr [rparam2]
			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadl_epi64, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, InXPmm_B:ptr xmmword
	
			movq			xmm1,		qword ptr [rparam2]

			punpcklqdq 		xmm1, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadh_epi32, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, InXPmm_B:ptr xmmword
	
			movd			xmm1,		dword ptr [rparam2]
			
			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(2,1,2,3)

			punpckldq 		xmm2, 			xmm1 		;shuffler4(2,3,2,3)
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)
			
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadl_epi32, xmmword, < >, xmm_size + reg_size  ;InXmm_A:xmmword, InXPmm_B:ptr xmmword
	
			movd			xmm1,		dword ptr [rparam2]			
			
			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(1,1,2,3)

			punpckldq 		xmm1, 			xmm2 		;shuffler4(0,1,0,1)
			punpcklqdq 		xmm1, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa			xmm0,			xmm1

			ret
_uXm_func_end

;******************
; Integer, sets
;******************
ifdef __X32__
_uXm_func_start _uXm_mm_set_pi64, xmmword, < >, 2 * mm_size ;Inmm_Q1:mmword, Inmm_Q0:mmword
	
			movq			xmm3,			mm0
			movq			xmm2,			mm1
			
			punpcklqdq 		xmm2, 			xmm3			;shuffle2(1,0)

			movdqa			xmm0,			xmm2

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_setr_pi64, xmmword, < >, 2 * mm_size ;Inmm_Q0:mmword, Inmm_Q1:mmword
	
			movq			xmm2,			mm0
			movq			xmm3,			mm1
			
			punpcklqdq 		xmm2, 			xmm3			;shuffler2(0,1)

			movdqa			xmm0,			xmm2

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_set1_pi64, xmmword, < >, mm_size ;Inmm_Q:mmword
	
			movq			xmm1,			mm0

			punpcklqdq 		xmm1, 			xmm1		;shuffle2(0,0)

			movdqa			xmm0,			xmm1

			ret
_uXm_func_end
endif ;__X32__

_uXm_func_start _uXm_mm_set_epi64, xmmword, < >, 2 * xmm_size ;InXmm_Q1:xmmword, InXmm_Q0:xmmword

			movdqa			xmm2,			xmm1
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqa			xmm0,			xmm2

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_set_epi64x, xmmword, < >, 2 * reg_size ;InInt_Q1:qword, InInt_Q0:qword
	
			movq			xmm1,			rparam1
			movq			xmm0,			rparam2
			
			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_setr_epi64, xmmword, < >, 2 * xmm_size ;InXmm_Q0:xmmword, InXmm_Q1:xmmword
	
			punpcklqdq 		xmm0, 			xmm1			;shuffler2(0,1)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_setr_epi64x, xmmword, < >, 2 * reg_size ;InInt_Q0:qword, InInt_Q1:qword
	
			movq			xmm0,			rparam1
			movq			xmm1,			rparam2
			
			punpcklqdq 		xmm0, 			xmm1			;shuffler2(0,1)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_set1_epi64, xmmword, < >, xmm_size ;InXmm_Q:xmmword
	
			punpcklqdq 		xmm0, 			xmm0		;shuffle2(0,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_set1_epi64x, xmmword, < >, reg_size ;InInt_Q:qword
	
			movq			xmm0,			rparam1

			punpcklqdq 		xmm0, 			xmm0		;shuffle2(0,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_set_epi32, xmmword, < >, 4 * reg_size ;InInt_D3:dword, InInt_D2:dword, InInt_D1:dword, InInt_D0:dword
	
			movd			xmm3,			rparam1
			movd			xmm2,			rparam2
			movd			xmm1,			rparam3
			movd			xmm0,			rparam4
			
			punpckldq 		xmm2, 			xmm3 		;shuffle4(3,2,3,2)
			punpckldq 		xmm0, 			xmm1 		;shuffle4(1,0,1,0)
			
			punpcklqdq 		xmm0, 			xmm2 		;shuffle2(1,0) (1:3,2|0:1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_setr_epi32, xmmword, < >, 4 * reg_size ;InInt_D0:dword, InInt_D1:dword, InInt_D2:dword, InInt_D3:dword
	
			movd			xmm0,			rparam1
			movd			xmm1,			rparam2
			movd			xmm2,			rparam3
			movd			xmm3,			rparam4
			
			punpckldq 		xmm2, 			xmm3 		;shuffler4(2,3,2,3)
			punpckldq 		xmm0, 			xmm1 		;shuffler4(0,1,0,1)
			
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_set1_epi32, xmmword, < >, reg_size ;InInt_D:dword
	
			movd			xmm0,			rparam1
			pshufd			xmm0,			xmm0,			0

			ret
_uXm_func_end

ifdef WINDOWS
	xmmsetepi16uses textequ <uses xmm6 xmm7>
else
	xmmsetepi16uses textequ <>
endif

_uXm_func_start _uXm_mm_set_epi16, xmmword, < xmmsetepi16uses >, 8 * reg_size ;InInt_W7:word, InInt_W6:word, InInt_W5:word, InInt_W4:word, InInt_W3:word, InInt_W2:word, InInt_W1:word, InInt_W0:word
	
			movd			xmm7,			rparam1
			movd			xmm6,			rparam2
			movd			xmm5,			rparam3
			movd			xmm4,			rparam4
			
			movd			xmm3,			rparam5
			movd			xmm2,			rparam6
			movd			xmm1,			rparam7
			movd			xmm0,			rparam8
			
			punpcklwd 		xmm6, 			xmm7 		;shufflehi4(3,2,3,2)
			punpcklwd 		xmm4, 			xmm5 		;shufflehi4(1,0,1,0)
			
			punpcklwd 		xmm2, 			xmm3 		;shufflelo4(3,2,3,2)
			punpcklwd 		xmm0, 			xmm1 		;shufflelo4(1,0,1,0)

			punpckldq 		xmm4, 			xmm6 		;shuffle4(3,2,3,2)
			punpckldq 		xmm0, 			xmm2 		;shuffle4(1,0,1,0)
			
			punpcklqdq 		xmm0, 			xmm4 		;shuffle2(1,0) (1:3,2|0:1,0)

			ret
_uXm_func_end

ifdef WINDOWS
	xmmsetrepi16uses textequ <uses xmm6 xmm7>
else
	xmmsetrepi16uses textequ <>
endif

_uXm_func_start _uXm_mm_setr_epi16, xmmword, < xmmsetrepi16uses >, 8 * reg_size ;InInt_W0:word, InInt_W1:word, InInt_W2:word, InInt_W3:word, InInt_W4:word, InInt_W5:word, InInt_W6:word, InInt_W7:word
	
			movd			xmm0,			rparam1
			movd			xmm1,			rparam2
			movd			xmm2,			rparam3
			movd			xmm3,			rparam4
			
			movd			xmm4,			rparam5
			movd			xmm5,			rparam6
			movd			xmm6,			rparam7
			movd			xmm7,			rparam8
			
			punpcklwd 		xmm6, 			xmm7 		;shufflerhi4(2,3,2,3)
			punpcklwd 		xmm4, 			xmm5 		;shufflerhi4(0,1,0,1)
			
			punpcklwd 		xmm2, 			xmm3 		;shufflerlo4(2,3,2,3)
			punpcklwd 		xmm0, 			xmm1 		;shufflerlo4(0,1,0,1)

			punpckldq 		xmm4, 			xmm6 		;shuffler4(2,3,2,3)
			punpckldq 		xmm0, 			xmm2 		;shuffler4(0,1,0,1)
			
			punpcklqdq 		xmm0, 			xmm4 		;shuffler2(0,1) (0:0,1|1:2,3)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_set1_epi16, xmmword, < >, reg_size ;InInt_D:dword
	
			movd			xmm0,			rparam1			
			punpcklwd 		xmm0, 			xmm0 		;shufflerlo4(0,1,0,1)
			punpckldq 		xmm0, 			xmm0 		;shuffler4(0,1,0,1)			
			punpcklqdq 		xmm0, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)

			ret
_uXm_func_end

ifdef WINDOWS
	ifdef __X64__
	xmmsetepi8uses textequ <uses xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15>
	else
	xmmsetepi8uses textequ <uses xmm6 xmm7>
	endif
else
	ifdef __X64__
	xmmsetepi8uses textequ <uses xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15>
	else
	xmmsetepi8uses textequ <>
	endif
endif

_uXm_func_start _uXm_mm_set_epi8, xmmword, < xmmsetepi8uses >, 16 * reg_size ;InInt_W15:byte, InInt_W14:byte, InInt_W13:byte, InInt_W12:byte, InInt_W11:byte, InInt_W10:byte, InInt_W9:byte, InInt_W8:byte
										  ;InInt_W7:byte, InInt_W6:byte, InInt_W5:byte, InInt_W4:byte, InInt_W3:byte, InInt_W2:byte, InInt_W1:byte, InInt_W0:byte
	
			ifdef __X64__			
			movd			xmm15,			rparam1
			movd			xmm14,			rparam2
			movd			xmm13,			rparam3
			movd			xmm12,			rparam4

			movd			xmm11,			rparam5
			movd			xmm10,			rparam6
			movd			xmm9,			rparam7
			movd			xmm8,			rparam8

			movd			xmm7,			rparam9
			movd			xmm6,			rparam10
			movd			xmm5,			rparam11
			movd			xmm4,			rparam12

			movd			xmm3,			rparam13
			movd			xmm2,			rparam14
			movd			xmm1,			rparam15
			movd			xmm0,			rparam16

			punpcklbw 		xmm14, 			xmm15		;shufflehi4(3,2,3,2)
			punpcklbw 		xmm12, 			xmm13 		;shufflehi4(1,0,1,0)
			
			punpcklbw 		xmm10, 			xmm11 		;shufflelo4(3,2,3,2)
			punpcklbw 		xmm8, 			xmm9 		;shufflelo4(1,0,1,0)

			punpcklbw 		xmm6, 			xmm7 		;shufflehi4(3,2,3,2)
			punpcklbw 		xmm4, 			xmm5 		;shufflehi4(1,0,1,0)
			
			punpcklbw 		xmm2, 			xmm3 		;shufflelo4(3,2,3,2)
			punpcklbw 		xmm0, 			xmm1 		;shufflelo4(1,0,1,0)
			
			punpcklwd 		xmm12, 			xmm14 		;shufflehi4(3,2,3,2)
			punpcklwd 		xmm8, 			xmm10 		;shufflehi4(1,0,1,0)
			
			punpcklwd 		xmm4, 			xmm6 		;shufflelo4(3,2,3,2)
			punpcklwd 		xmm0, 			xmm2 		;shufflelo4(1,0,1,0)
			
			punpckldq 		xmm8, 			xmm12 		;shuffle4(3,2,3,2)
			punpckldq 		xmm0, 			xmm4 		;shuffle4(1,0,1,0)
			
			punpcklqdq 		xmm0, 			xmm8 		;shuffle2(1,0) (1:3,2|0:1,0)

			else
			movd			xmm7,			rparam1
			movd			xmm6,			rparam2
			movd			xmm5,			rparam3
			movd			xmm4,			rparam4

			movd			xmm3,			rparam5
			movd			xmm2,			rparam6
			movd			xmm1,			rparam7
			movd			xmm0,			rparam8
			
			punpcklbw 		xmm6, 			xmm7 		;shufflehi4(3,2,3,2)
			punpcklbw 		xmm4, 			xmm5 		;shufflehi4(1,0,1,0)
			
			punpcklbw 		xmm2, 			xmm3 		;shufflelo4(3,2,3,2)
			punpcklbw 		xmm0, 			xmm1 		;shufflelo4(1,0,1,0)
			
			punpcklwd 		xmm4, 			xmm6 		;shufflelo4(3,2,3,2)
			punpcklwd 		xmm0, 			xmm2 		;shufflelo4(1,0,1,0)
			
			movdqa			m128_setepi8_hi1, xmm4
			movdqa			m128_setepi8_hi0, xmm0
			
			movd			xmm7,			rparam9
			movd			xmm6,			rparam10
			movd			xmm5,			rparam11
			movd			xmm4,			rparam12

			movd			xmm3,			rparam13
			movd			xmm2,			rparam14
			movd			xmm1,			rparam15
			movd			xmm0,			rparam16
			
			punpcklbw 		xmm6, 			xmm7 		;shufflehi4(3,2,3,2)
			punpcklbw 		xmm4, 			xmm5 		;shufflehi4(1,0,1,0)
			
			punpcklbw 		xmm2, 			xmm3 		;shufflelo4(3,2,3,2)
			punpcklbw 		xmm0, 			xmm1 		;shufflelo4(1,0,1,0)
			
			punpcklwd 		xmm4, 			xmm6 		;shufflelo4(3,2,3,2)
			punpcklwd 		xmm0, 			xmm2 		;shufflelo4(1,0,1,0)
			
			movdqa			xmm3, m128_setepi8_hi1
			movdqa			xmm2, m128_setepi8_hi0
			
			punpckldq 		xmm2, 			xmm3 		;shuffle4(3,2,3,2)
			punpckldq 		xmm0, 			xmm4 		;shuffle4(1,0,1,0)
			
			punpcklqdq 		xmm0, 			xmm2 		;shuffle2(1,0) (1:3,2|0:1,0)

			endif
			
			ret
_uXm_func_end

ifdef WINDOWS
	ifdef __X64__
	xmmsetrepi8uses textequ <uses xmm6 xmm7 xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15>
	else
	xmmsetrepi8uses textequ <uses xmm6 xmm7>
	endif
else
	ifdef __X64__
	xmmsetrepi8uses textequ <uses xmm8 xmm9 xmm10 xmm11 xmm12 xmm13 xmm14 xmm15>
	else
	xmmsetrepi8uses textequ <>
	endif
endif

_uXm_func_start _uXm_mm_setr_epi8, xmmword, < xmmsetrepi8uses >, 16 * reg_size ;InInt_W0:byte, InInt_W1:byte, InInt_W2:byte, InInt_W3:byte, InInt_W4:byte, InInt_W5:byte, InInt_W6:byte, InInt_W7:byte
											;InInt_W8:byte, InInt_W9:byte, InInt_W10:byte, InInt_W11:byte, InInt_W12:byte, InInt_W13:byte, InInt_W14:byte, InInt_W15:byte

			ifdef __X64__			
			movd			xmm0,			rparam1
			movd			xmm1,			rparam2
			movd			xmm2,			rparam3
			movd			xmm3,			rparam4

			movd			xmm4,			rparam5
			movd			xmm5,			rparam6
			movd			xmm6,			rparam7
			movd			xmm7,			rparam8

			movd			xmm8,			rparam9
			movd			xmm9,			rparam10
			movd			xmm10,			rparam11
			movd			xmm11,			rparam12

			movd			xmm12,			rparam13
			movd			xmm13,			rparam14
			movd			xmm14,			rparam15
			movd			xmm15,			rparam16

			punpcklbw 		xmm14, 			xmm15		;shufflehi4(3,2,3,2)
			punpcklbw 		xmm12, 			xmm13 		;shufflehi4(1,0,1,0)
			
			punpcklbw 		xmm10, 			xmm11 		;shufflelo4(3,2,3,2)
			punpcklbw 		xmm8, 			xmm9 		;shufflelo4(1,0,1,0)

			punpcklbw 		xmm6, 			xmm7 		;shufflehi4(3,2,3,2)
			punpcklbw 		xmm4, 			xmm5 		;shufflehi4(1,0,1,0)
			
			punpcklbw 		xmm2, 			xmm3 		;shufflelo4(3,2,3,2)
			punpcklbw 		xmm0, 			xmm1 		;shufflelo4(1,0,1,0)
			
			punpcklwd 		xmm12, 			xmm14 		;shufflehi4(3,2,3,2)
			punpcklwd 		xmm8, 			xmm10 		;shufflehi4(1,0,1,0)
			
			punpcklwd 		xmm4, 			xmm6 		;shufflelo4(3,2,3,2)
			punpcklwd 		xmm0, 			xmm2 		;shufflelo4(1,0,1,0)
			
			punpckldq 		xmm8, 			xmm12 		;shuffle4(3,2,3,2)
			punpckldq 		xmm0, 			xmm4 		;shuffle4(1,0,1,0)
			
			punpcklqdq 		xmm0, 			xmm8 		;shuffle2(1,0) (1:3,2|0:1,0)

			else
			movd			xmm0,			rparam1
			movd			xmm1,			rparam2
			movd			xmm2,			rparam3
			movd			xmm3,			rparam4

			movd			xmm4,			rparam5
			movd			xmm5,			rparam6
			movd			xmm6,			rparam7
			movd			xmm7,			rparam8
			
			punpcklbw 		xmm6, 			xmm7 		;shufflehi4(3,2,3,2)
			punpcklbw 		xmm4, 			xmm5 		;shufflehi4(1,0,1,0)
			
			punpcklbw 		xmm2, 			xmm3 		;shufflelo4(3,2,3,2)
			punpcklbw 		xmm0, 			xmm1 		;shufflelo4(1,0,1,0)
			
			punpcklwd 		xmm4, 			xmm6 		;shufflelo4(3,2,3,2)
			punpcklwd 		xmm0, 			xmm2 		;shufflelo4(1,0,1,0)
			
			movdqa			m128_setrepi8_hi1, xmm4
			movdqa			m128_setrepi8_hi0, xmm0
			
			movd			xmm0,			rparam9
			movd			xmm1,			rparam10
			movd			xmm2,			rparam11
			movd			xmm3,			rparam12

			movd			xmm4,			rparam13
			movd			xmm5,			rparam14
			movd			xmm6,			rparam15
			movd			xmm7,			rparam16
			
			punpcklbw 		xmm6, 			xmm7 		;shufflehi4(3,2,3,2)
			punpcklbw 		xmm4, 			xmm5 		;shufflehi4(1,0,1,0)
			
			punpcklbw 		xmm2, 			xmm3 		;shufflelo4(3,2,3,2)
			punpcklbw 		xmm0, 			xmm1 		;shufflelo4(1,0,1,0)
			
			punpcklwd 		xmm4, 			xmm6 		;shufflelo4(3,2,3,2)
			punpcklwd 		xmm0, 			xmm2 		;shufflelo4(1,0,1,0)
			
			movdqa			xmm3, m128_setrepi8_hi1
			movdqa			xmm2, m128_setrepi8_hi0
			
			punpckldq 		xmm2, 			xmm3 		;shuffle4(3,2,3,2)
			punpckldq 		xmm0, 			xmm4 		;shuffle4(1,0,1,0)
			
			punpcklqdq 		xmm0, 			xmm2 		;shuffle2(1,0) (1:3,2|0:1,0)

			endif
			
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_set1_epi8, xmmword, < >, reg_size ;InInt_D:byte
	
			movd			xmm0,			rparam1			
			punpcklbw 		xmm0, 			xmm0 		;shufflelo4(1,0,1,0)			
			punpcklwd 		xmm0, 			xmm0 		;shufflehi4(1,0,1,0)			
			punpckldq 		xmm0, 			xmm0 		;shuffle4(1,0,1,0)			
			punpcklqdq 		xmm0, 			xmm0 		;shuffle2(1,0) (1:3,2|0:1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_setl_epi64, xmmword, < >, xmm_size ;InXmm_Q:xmmword
	
			movq			xmm0,			xmm0
			
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_setl_epi64x, xmmword, < >, reg_size ;InInt_Q:qword
	
			movq			xmm0,			rparam1
			
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_setzero_si128, xmmword, < >, 0 ;
	
			pxor			xmm0,			xmm1

			ret
_uXm_func_end

;******************
; Integer, stores
;******************
_uXm_func_start _uXm_mm_store1_epi64, voidarg, < >, reg_size + xmm_size ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(0,1,0,1)
			movq	qword ptr [rparam1],	xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_store1_epi32, voidarg, < >, reg_size + xmm_size ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(0,0,0,0)
			movd	dword ptr [rparam1],	xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_store_si128, voidarg, < >, reg_size + xmm_size ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
	
			movdqa	xmmword ptr [rparam1],	xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storer_epi64, voidarg, < >, reg_size + xmm_size ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(2,3,0,1)
			movdqa	xmmword ptr [rparam1],	xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storer_epi32, voidarg, < >, reg_size + xmm_size ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(3,2,1,0)
			movdqa	xmmword ptr [rparam1],	xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeu_si128, voidarg, < >, reg_size + xmm_size ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
	
			movdqu	xmmword ptr [rparam1],	xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeur_epi64, voidarg, < >, reg_size + xmm_size ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(2,3,0,1)
			movdqu	xmmword ptr [rparam1],	xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeur_epi32, voidarg, < >, reg_size + xmm_size ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(3,2,1,0)
			movdqu	xmmword ptr [rparam1],	xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeh_epi64, voidarg, < >, reg_size + xmm_size ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(2,3,2,3)
			movq	qword ptr [rparam1],	xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storel_epi64, voidarg, < >, reg_size + xmm_size ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			movq	qword ptr [rparam1],	xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeh_epi32, voidarg, < >, reg_size + xmm_size ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(3,3,3,3)
			movd	dword ptr [rparam1],	xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storel_epi32, voidarg, < >, reg_size + xmm_size ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			movd	dword ptr [rparam1],	xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_maskmoveu_si128, voidarg, < >, 2 * xmm_size + reg_size ;InXmm_D:xmmword, InXmm_N:xmmword, OutPint_P:ptr byte
	
			push			rdidx
			mov				bdidx,	byte ptr [rparam3]
			maskmovdqu		xmm0,			xmm1
			pop				rdidx

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_store_psi128, voidarg, < >, 2 * reg_size ;OutPxmmword_A:ptr xmmword, InXmm_B:ptr xmmword

			movdqa			xmm1,			xmmword ptr [rparam2]
			movdqa		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeu_psi128, voidarg, < >, 2 * reg_size ;OutPxmmword_A:ptr xmmword, InXmm_B:ptr xmmword

			movdqu			xmm1,			xmmword ptr [rparam2]
			movdqu		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

;******************
; Integer, moves
;******************
_uXm_func_start _uXm_mm_moveq_epi64, xmmword, < >, xmm_size ;InXmm_A:xmmword

			movq			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_moveqr_epi64, xmmword, < >, xmm_size ;InXmm_A:xmmword

			movq			xmm0,			xmm0
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(2,3,0,1)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_moved_epi32, xmmword, < >, xmm_size ;InXmm_A:xmmword

			movq			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_movedr_epi32, xmmword, < >, xmm_size ;InXmm_A:xmmword

			movq			xmm0,			xmm0
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_move_epi64, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqa			xmm0,			xmm2

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_mover_epi64, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_move1_epi64, xmmword, < >, xmm_size ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_move_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			
			movdqa			xmm3,			xmm0
			pshufd			xmm3,			xmm3,			_uXm_mm_shuffler4(1,1,2,3)

			punpckldq 		xmm2, 			xmm3 		;shuffler4(0,1,0,1)
			punpcklqdq 		xmm2, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa			xmm0,			xmm2

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_mover_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(2,1,2,3)

			punpckldq 		xmm2, 			xmm1 		;shuffler4(2,3,2,3)
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)
			
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_move1_epi32, xmmword, < >, xmm_size ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_move_si128, xmmword, < >, xmm_size ;InXmm_A:xmmword

			movdqa			xmm0,			xmm0

			ret
_uXm_func_end

ifdef __X32__
_uXm_func_start _uXm_mm_movqpi64_epi64, xmmword, < >, xmm_size ;InXmm_A:xmmword

			movq2dq			xmm0,			mm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_movpi64_epi64, xmmword, < >, xmm_size + mm_size ;InXmm_A:xmmword, Inmm_B:mmword

			movq2dq			xmm2,			mm1
			
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqa			xmm0,			xmm2

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_movepi64_pi64, xmmword, < >, xmm_size ;InXmm_A:xmmword

			movdq2q			mm0,			xmm0

			ret
_uXm_func_end
endif ;__X32__

_uXm_func_start _uXm_ptr_move_mm_epi64, ptr, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqa		xmmword ptr [rreturn],			xmm2

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_mover_mm_epi64, ptr, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)
			movdqa		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_move1_mm_epi64, ptr, < >, xmm_size ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)
			movdqa		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveu_mm_epi64, ptr, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqu		xmmword ptr [rreturn],			xmm2

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveur_mm_epi64, ptr, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)
			movdqu		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveu1_mm_epi64, ptr, < >, xmm_size ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)
			movdqu		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_move_mm_epi32, ptr, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			
			movdqa			xmm3,			xmm0
			pshufd			xmm3,			xmm3,			_uXm_mm_shuffler4(1,1,2,3)

			punpckldq 		xmm2, 			xmm3 		;shuffler4(0,1,0,1)
			punpcklqdq 		xmm2, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa		xmmword ptr [rreturn],			xmm2

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_mover_mm_epi32, ptr, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(2,1,2,3)

			punpckldq 		xmm2, 			xmm1 		;shuffler4(2,3,2,3)
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa		xmmword ptr [rreturn],			xmm0
			
			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_move1_mm_epi32, ptr, < >, xmm_size ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			0
			movdqa		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveu_mm_epi32, ptr, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			
			movdqa			xmm3,			xmm0
			pshufd			xmm3,			xmm3,			_uXm_mm_shuffler4(1,1,2,3)

			punpckldq 		xmm2, 			xmm3 		;shuffler4(0,1,0,1)
			punpcklqdq 		xmm2, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqu		xmmword ptr [rreturn],			xmm2

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveur_mm_epi32, ptr, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(2,1,2,3)

			punpckldq 		xmm2, 			xmm1 		;shuffler4(2,3,2,3)
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqu		xmmword ptr [rreturn],			xmm0
			
			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveu1_mm_epi32, ptr, < >, xmm_size ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			0
			movdqu		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_move_mm_si128, ptr, < >, xmm_size ;InXmm_A:xmmword

			movdqa		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveu_mm_si128, ptr, < >, xmm_size ;InXmm_A:xmmword

			movdqu		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

;******************
; Cacheability support
;******************
_uXm_func_start _uXm_mm_stream_pd, voidarg, < >, reg_size + xmm_size ;OutPreal8_A:ptr real8, InXmm_B:xmmword

			movntpd		xmmword ptr [rreturn],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_stream_si128, voidarg, < >, reg_size + xmm_size ;OutPint:ptr int, InXmm_B:xmmword

			movntdq		xmmword ptr [rreturn],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_clflush, voidarg, < >, reg_size ;InPbyte:ptr byte

			clflush		byte ptr [rparam1]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_lfence, voidarg, < >, 0 ;

			lfence

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_mfence, voidarg, < >, 0 ;

			mfence

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_stream_si32, voidarg, < >, 2 * reg_size ;OutPint:ptr dword, InInt:dword

			movnti		dword ptr [rreturn],			dparam2

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_stream_si64, voidarg, < >, 2 * reg_size ;OutPint:ptr qword, InInt:qword

			movnti		qword ptr [rreturn],			rparam2

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pause, voidarg, < >, 0 ;

			pause

			ret
_uXm_func_end

;******************
; Casting
;******************
_uXm_func_start _uXm_mm_castpd_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			movaps			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_castpd_si128, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			movdqa			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_castps_pd, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			movapd			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_castps_si128, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			movdqa			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_castsi128_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			movaps			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_castsi128_pd, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
			movapd			xmm0,			xmm0

			ret
_uXm_func_end

;******************
; Undefined
;******************
;_uXm_func_start _uXm_mm_undefined_pd, xmmword, < >, xmm_size ;InXmm_A:xmmword
	
;			undefined			xmm0,			xmm0

;			ret
;_uXm_func_end


endif ;__MIC__

	end
