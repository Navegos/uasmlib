
	include uXmx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	include uXmsseintrin.inc
	
	.data

	;ifndef __X64__
		;externdef intrin_has_SSE2:byte
	;endif
	
	.const
	
		__align_size_t
		_m128cvteltsf32jmptable isize_t offset _m128cvteltsf32_0, offset _m128cvteltsf32_1, offset _m128cvteltsf32_2, offset _m128cvteltsf32_3			
		
		__align_size_t
		_m128prefetchjmptable isize_t offset _m128prefetch_0, offset _m128prefetch_1, offset _m128prefetch_2, offset _m128prefetch_3
		
	ifdef __X32__	
		__align_size_t
		_m64pextrwjmptable isize_t offset m64pextrw_0, offset m64pextrw_1, offset m64pextrw_2, offset m64pextrw_3		
		
		__align_size_t
		_m64pinsrwjmptable isize_t offset _m64pinsrw_0, offset _m64pinsrw_1, offset _m64pinsrw_2, offset _m64pinsrw_3			
	endif ;!__X32__
	
	include uXmxmmconstdata.inc
	
	__align_xmm_fp_opt
	__veccall_opt

	.code
	
;******************
; Externs
;******************
	;extern __veccall _uXm_intrin_CPUFeatures:proc
	
;************************************
; FP, arithmetic
;************************************
_uXm_func_start _uXm_mm_add_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			addss			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_add_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			addps			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_sub_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			subss			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sub_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			subps			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_mul_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			mulss			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_mul_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			mulps			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_div_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			divss			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_div_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			divps			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sqrt_ss, xmmword, < >, xmm_size ;InXmm_A:xmmword

			sqrtss			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sqrt_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword

			sqrtps			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_rcp_ss, xmmword, < >, xmm_size ;InXmm_A:xmmword

			rcpss			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_rcp_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword

			rcpps			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_rsqrt_ss, xmmword, < >, xmm_size ;InXmm_A:xmmword

			rsqrtss			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_rsqrt_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword

			rsqrtps			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_min_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			minss			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_min_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			minps			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_max_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			maxss			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_max_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			maxps			xmm0,			xmm1

			ret
_uXm_func_end

;******************
; FP, logical
;******************
_uXm_func_start _uXm_mm_and_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			andps			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_andnot_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			andnps			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_or_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			orps			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_xor_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			xorps			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_not_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword

	;ifndef __X64__
	;		call			_uXm_intrin_CPUFeatures
	;	.if(intrin_has_SSE2 == true)
	;		movdqa			xmm2,			__m128_true
	;		movaps			xmm1,			xmm2
	;	.else
			movaps			xmm1,			__m128_true
	;	.endif
	;else
	;		movdqa			xmm2,			__m128_true
	;		movaps			xmm1,			xmm2
	;endif
			xorps			xmm0,			xmm1

			ret
_uXm_func_end

;******************
; FP, comparison
;******************
_uXm_func_start _uXm_mm_cmpeq_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_EQ

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpeq_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_EQ

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmplt_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmplt_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmple_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmple_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpgt_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpgt_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpge_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpge_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpneq_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NEQ

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpneq_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NEQ

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpnlt_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpnlt_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpnle_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpnle_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpngt_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpngt_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpnge_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpnge_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpord_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_ORD

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpord_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_ORD

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpunord_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_UNORD

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cmpunord_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_UNORD

			ret
_uXm_func_end

;******************
; FP, comparison return int
;******************
_uXm_func_start _uXm_mm_comieq_ss, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			je m128_label_comieq_ss
			xor				rreturn,			rreturn
	m128_label_comieq_ss:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_comilt_ss, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128_label_comilt_ss
			xor				rreturn,			rreturn
	m128_label_comilt_ss:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_comile_ss, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe m128_label_comile_ss
			xor				rreturn,			rreturn
	m128_label_comile_ss:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_comigt_ss, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128_label_comigt_ss
			xor				rreturn,			rreturn
	m128_label_comigt_ss:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_comige_ss, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128_label_comige_ss
			xor				rreturn,			rreturn
	m128_label_comige_ss:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_comineq_ss, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128_label_comineq_ss
			xor				rreturn,			rreturn
	m128_label_comineq_ss:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ucomieq_ss, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			ucomiss			xmm0,			xmm1
			je m128_label_ucomieq_ss
			xor				rreturn,			rreturn
	m128_label_ucomieq_ss:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ucomilt_ss, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128_label_ucomilt_ss
			xor				rreturn,			rreturn
	m128_label_ucomilt_ss:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ucomile_ss, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe m128_label_ucomile_ss
			xor				rreturn,			rreturn
	m128_label_ucomile_ss:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ucomigt_ss, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128_label_ucomigt_ss
			xor				rreturn,			rreturn
	m128_label_ucomigt_ss:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ucomige_ss, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128_label_ucomige_ss
			xor				rreturn,			rreturn
	m128_label_ucomige_ss:
			mov				rreturn,			true

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ucomineq_ss, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128_label_ucomineq_ss
			xor				rreturn,			rreturn
	m128_label_ucomineq_ss:
			mov				rreturn,			true

			ret
_uXm_func_end

;******************
; FP, conversions
;******************
_uXm_func_start _uXm_mm_cvt_ss2si, dword, < >, xmm_size ;InXmm_A:xmmword
			
			cvtss2si			dreturn,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtt_ss2si, dword, < >, xmm_size ;InXmm_A:xmmword
			
			cvttss2si			dreturn,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvt_si2ss, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, InInt_B:dword
			
			cvtsi2ss			xmm0,			dparam2

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtss_f32, real4, < >, xmm_size ;InXmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvt0s_f32, real4, < >, xmm_size ;InXmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvt1s_f32, real4, < >, xmm_size ;InXmm_A:xmmword

			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(1,1,1,1)
			movss			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvt2s_f32, real4, < >, xmm_size ;InXmm_A:xmmword

			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(2,2,2,2)
			movss			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvt3s_f32, real4, < >, xmm_size ;InXmm_A:xmmword

			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,3,3,3)
			movss			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtelts_f32, real4, < >, xmm_size ;InXmm_A:xmmword, InInt_BSel:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128cvteltsf32jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128cvteltsf32jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
			
		_m128cvteltsf32_0 label size_t
			movss			xmm0,			xmm0
			ret
		_m128cvteltsf32_1 label size_t
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(1,1,1,1)
			movss			xmm0,			xmm0
			ret
		_m128cvteltsf32_2 label size_t
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(2,2,2,2)
			movss			xmm0,			xmm0
			ret
		_m128cvteltsf32_3 label size_t
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,3,3,3)
			movss			xmm0,			xmm0
			ret
		;.endif
			
_uXm_func_end

ifdef __X32__
	__align_mm_fp_opt

_uXm_func_start _uXm_mm_cvt_ps2pi, mmword, < >, xmm_size ;InXmm_A:xmmword
			
			cvtps2pi			mm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtt_ps2pi, mmword, < >, xmm_size ;InXmm_A:xmmword
			
			cvttps2pi			mm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvt_pi2ps, xmmword, < >, xmm_size + mm_size ;InXmm_A:xmmword, Inmm_B:mmword
			
			cvtpi2ps			xmm0,			mm1

			ret
_uXm_func_end

	__align_xmm_fp_opt
endif ;__X32__

ifdef __X64__
;******************
; FP, conversions, 64-bit intrinsics
;******************
_uXm_func_start _uXm_mm_cvtss_si64, qword, < >, xmm_size ;InXmm_A:xmmword
			
			cvtss2si			qreturn,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvttss_si64, qword, < >, xmm_size ;InXmm_A:xmmword
			
			cvttss2si			qreturn,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtsi64_ss, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, InInt_B:qword
			
			cvtsi2ss			xmm0,			rparam2

			ret
_uXm_func_end
endif ;__X64__

;******************
; FP, misc
;******************
_uXm_func_start _uXm_mm_transpose4_ps, voidarg, < >, 4 * xmm_size ;InXmm_row0:xmmword, InXmm_row1:xmmword, InXmm_row2:xmmword, InXmm_row3:xmmword
			
				movaps			xmm4, 			xmm0
				movaps			xmm5, 			xmm2

				shufps			xmm0,			xmm1,			_uXm_mm_shuffler4(0,1,0,1) ; 044h
				shufps			xmm4,			xmm1,			_uXm_mm_shuffler4(2,3,2,3) ; 0eeh
				shufps			xmm2,			xmm3,			_uXm_mm_shuffler4(0,1,0,1) ; 044h
				shufps			xmm5,			xmm3,			_uXm_mm_shuffler4(2,3,2,3) ; 0eeh
				
				movaps			xmm1, 			xmm0
				movaps			xmm3, 			xmm4
				
				shufps			xmm0,			xmm2,			_uXm_mm_shuffler4(0,2,0,2) ; 088h
				shufps			xmm1,			xmm2,			_uXm_mm_shuffler4(1,3,1,3) ; 0ddh
				shufps			xmm4,			xmm5,			_uXm_mm_shuffler4(0,2,0,2) ; 088h
				shufps			xmm3,			xmm5,			_uXm_mm_shuffler4(1,3,1,3) ; 0ddh
				
				movaps			xmm2, 			xmm4
				
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_unpackhi_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpckhps 			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_unpacklo_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpcklps			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_movehl_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movhlps				xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_movelh_ps, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movlhps 		xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadh_pi, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, InPmm_B:ptr mmword
			
			movhps 			xmm0,	mmword ptr [rparam2]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadl_pi, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, InPmm_B:ptr mmword
			
			movlps			xmm0,	mmword ptr [rparam2]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeh_pi, voidarg, < >, reg_size + xmm_size ;OutPmm_A:ptr mmword, InXmm_B:xmmword
			
			movhps 		mmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storel_pi, voidarg, < >, reg_size + xmm_size ;OutPmm_A:ptr mmword, InXmm_B:xmmword
			
			movlps 		mmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_movemask_ps, dword, < >, xmm_size ;InXmm_A:xmmword
			
			movmskps			dreturn,				xmm0

			ret
_uXm_func_end

ifdef __X32__
;******************
; Integer (MMX) extensions
;******************
	__align_mm_fp_opt

_uXm_func_start _uXm_mm_pextrw_0, dword, < >, mm_size ;Inmm_A:mmword

			pextrw			dreturn,			mm0,			0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pextrw_1, dword, < >, mm_size ;Inmm_A:mmword

			pextrw			dreturn,			mm0,			1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pextrw_2, dword, < >, mm_size ;Inmm_A:mmword

			pextrw			dreturn,			mm0,			2

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pextrw_3, dword, < >, mm_size ;Inmm_A:mmword

			pextrw			dreturn,			mm0,			3

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pextrw, dword, < >, mm_size + reg_size ;Inmm_A:mmword,  _Imm8:dword

			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m64pextrwjmptable+eax*4]
			
			m64pextrw_0 label size_t
				pextrw			dreturn,			mm0,			0
				ret
			m64pextrw_1 label size_t
				pextrw			dreturn,			mm0,			1
				ret
			m64pextrw_2 label size_t
				pextrw			dreturn,			mm0,			2
				ret
			m64pextrw_3 label size_t
				pextrw			dreturn,			mm0,			3
				ret

_uXm_func_end

_uXm_func_start _uXm_mm_pinsrw_0, mmword, < >, mm_size + reg_size ;Inmm_A:mmword,  InInt_B:dword
			
			pinsrw			mm0,			dparam2,			0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pinsrw_1, mmword, < >, mm_size + reg_size ;Inmm_A:mmword,  InInt_B:dword
			
			pinsrw			mm0,			dparam2,			1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pinsrw_2, mmword, < >, mm_size + reg_size ;Inmm_A:mmword,  InInt_B:dword
			
			pinsrw			mm0,			dparam2,			2

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pinsrw_3, mmword, < >, mm_size + reg_size ;Inmm_A:mmword,  InInt_B:dword
			
			pinsrw			mm0,			dparam2,			3

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pinsrw, mmword, < >, mm_size + 2 * reg_size ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m64pinsrwjmptable+eax*4]
				
			_m64pinsrw_0 label size_t
				pinsrw			mm0,			dparam2,			0
				ret
			_m64pinsrw_1 label size_t
				pinsrw			mm0,			dparam2,			1
				ret
			_m64pinsrw_2 label size_t
				pinsrw			mm0,			dparam2,			2
				ret
			_m64pinsrw_3 label size_t
				pinsrw			mm0,			dparam2,			3
				ret

_uXm_func_end

_uXm_func_start _uXm_mm_pmaxsw, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			
			pmaxsw			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pmaxub, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			
			pmaxub			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pminsw, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			
			pminsw			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pminub, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			
			pminub			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pmovmskb, dword, < >,mm_size ;Inmm_A:mmword
			
			pmovmskb		dreturn,			mm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pmulhuw, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			
			pmulhuw			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_maskmovq, voidarg, < >, 2 * mm_size + reg_size ;Inmm_A:mmword, Inmm_B:mmword, OutInt8_C:ptr byte			
			
			push			rdidx
			mov				rdidx,	byte ptr [rparam3]
			maskmovq		mm0,			mm1
			pop				rdidx

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pavgb, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			
			pavgb			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_pavgw, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			
			pavgw			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_psadbw, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			
			psadbw			mm0,			mm1

			ret
_uXm_func_end

	__align_xmm_fp_opt
endif ;__X32__

;******************
; memory & initialization
;******************
_uXm_func_start _uXm_mm_set_ss, xmmword, < >, reg_size ;Inreal4_A:real4

			movss			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_set_ps1, xmmword, < >, reg_size ;Inreal4_A:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_set_ps, xmmword, < >, 4 * reg_size ;Inreal4_D:real4 ;Inreal4_C:real4 ;Inreal4_B:real4 ;Inreal4_A:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffle4(0,0,0,0)

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffle4(3,0,0,0)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			_uXm_mm_shuffle4(3,2,0,0)

			movss			xmm0,			xmm3

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_setr_ps, xmmword, < >, 4 * reg_size ;Inreal4_A:real4 ;Inreal4_B:real4 ;Inreal4_C:real4 ;Inreal4_D:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(0,0,0,0)

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(0,0,0,3)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(0,0,2,3)

			movss			xmm0,			xmm3
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_setzero_ps, xmmword, < >, 0 ;

			xorps			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_load_ss, xmmword, < >, reg_size ;InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam1]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_load_ps1, xmmword, < >, reg_size ;InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam1]
			shufps			xmm0,			xmm0,			0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_load_ps, xmmword, < >, reg_size ;InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam1]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadr_ps, xmmword, < >, reg_size ;InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam1]
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadu_ps, xmmword, < >, reg_size ;InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam1]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadur_ps, xmmword, < >, reg_size ;InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam1]
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadh_ps, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, InPreal4_B:ptr mmword

			movhps			xmm0,			mmword ptr [rparam2]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_loadl_ps, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, InPreal4_B:ptr mmword

			movlps			xmm0,		mmword ptr [rparam2]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_store_ss, voidarg, < >, reg_size + xmm_size ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movss		real4 ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_store_ps1, voidarg, < >, reg_size + xmm_size ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			0
			movaps		xmmword ptr [rparam1],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeu_ps1, voidarg, < >, reg_size + xmm_size ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			0
			movups		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_store_ps, voidarg, < >, reg_size + xmm_size ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeu_ps, voidarg, < >, reg_size + xmm_size ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movups		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storer_ps, voidarg, < >, reg_size + xmm_size ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movaps		xmmword ptr [rparam1],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeur_ps, voidarg, < >, reg_size + xmm_size ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movups		xmmword ptr [rparam1],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeh_ps, voidarg, < >, reg_size + xmm_size ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movhps		mmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storel_ps, voidarg, < >, reg_size + xmm_size ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movlps		mmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_store_mm_ps, voidarg, < >, reg_size + xmm_size ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_store_pfloat_ps, voidarg, < >, 2 * reg_size ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword

			movaps			xmm1,			xmmword ptr [rparam2]
			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_storeu_pfloat_ps, voidarg, < >, 2 * reg_size ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword

			movups			xmm1,			xmmword ptr [rparam2]
			movups		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

;******************
; FP, moves
;******************
_uXm_func_start _uXm_mm_move_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_move_ps1, xmmword, < >, xmm_size ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_move_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_mover_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_move_mm_ss, ptr, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_move_mm_ps1, ptr, < >, xmm_size ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_move_mm_ps, ptr, < >, xmm_size ;InXmm_A:xmmword

			movaps 			xmm0,			xmm0
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_mover_mm_ps, ptr, < >, xmm_size ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveu_mm_ss, ptr, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveu_mm_ps1, ptr, < >, xmm_size ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveu_mm_ps, ptr, < >, xmm_size ;InXmm_A:xmmword

			movaps 			xmm0,			xmm0
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

_uXm_func_start _uXm_ptr_moveur_mm_ps, ptr, < >, xmm_size ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_func_end

;******************
; Cacheability support
;******************
_uXm_func_start _uXm_mm_prefetch_0, voidarg, < >, reg_size ;InPInt8_A:ptr byte

			prefetchnta			byte ptr [rparam1]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_prefetch_1, voidarg, < >, reg_size ;InPInt8_A:ptr byte

			prefetcht0			byte ptr [rparam1]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_prefetch_2, voidarg, < >, reg_size ;InPInt8_A:ptr byte

			prefetcht1			byte ptr [rparam1]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_prefetch_3, voidarg, < >, reg_size ;InPInt8_A:ptr byte

			prefetcht2			byte ptr [rparam1]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_prefetch, voidarg, < >, 2 * reg_size ;InPInt8_A:ptr byte, InInt_BSel:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128prefetchjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128prefetchjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
			
		_m128prefetch_0 label size_t
			prefetchnta			byte ptr [rparam1]
			ret
		_m128prefetch_1 label size_t
			prefetcht0			byte ptr [rparam1]
			ret
		_m128prefetch_2 label size_t
			prefetcht1			byte ptr [rparam1]
			ret
		_m128prefetch_3 label size_t
			prefetcht2			byte ptr [rparam1]
			ret
		;.endif
			
_uXm_func_end

ifdef __X32__
	__align_mm_fp_opt

_uXm_func_start _uXm_mm_stream_pi, dword, < >, reg_size + mm_size ;OutPmm_A:ptr mmword,Inmm_B:mmword
			
			movntq 		mmword ptr [rparam1],			mm1

			ret
_uXm_func_end

	__align_xmm_fp_opt
endif ;__X32__

_uXm_func_start _uXm_mm_stream_ps, dword, < >, reg_size + xmm_size ;Outpfloat_A:ptr xmmword, InXmm_B:xmmword
			
			movntps 		xmmword ptr [rparam1],			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sfence, voidarg, < >, 0 ;
			
			sfence

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_getcsr, dword, < >, 0 ;
			
			stmxcsr			dword ptr [rreturn]

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_setcsr, voidarg, < >, reg_size ;InInt_A:dword
			
			ldmxcsr			dword ptr [rparam1]

			ret
_uXm_func_end

endif ;__MIC__

	end
