
	include uXx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	include uXsseintrin.inc
	
	.data?

	.data

	.const
	
		alignsize_t
		_m128cvteltsf32jmptable isize_t offset _m128cvteltsf32_0, offset _m128cvteltsf32_1, offset _m128cvteltsf32_2, offset _m128cvteltsf32_3			
		
		alignsize_t
		_m128prefetchjmptable isize_t offset _m128prefetch_0, offset _m128prefetch_1, offset _m128prefetch_2, offset _m128prefetch_3
		
	ifdef __X32__	
		alignsize_t
		_m64pextrwjmptable isize_t offset m64pextrw_0, offset m64pextrw_1, offset m64pextrw_2, offset m64pextrw_3		
		
		alignsize_t
		_m64pinsrwjmptable isize_t offset _m64pinsrw_0, offset _m64pinsrw_1, offset _m64pinsrw_2, offset _m64pinsrw_3			
	endif ;!__X32__
	
	include uXxmmconstdata.inc
	
	alignxmmfieldproc
	callconvopt

	.code
	
	;ifndef __X64__
		;externdef intrin_has_SSE2:byte
	;endif
	
;******************
; Externs
;******************
	;extern uXveccall _uX_intrin_CPUFeatures:proc
	
;************************************
; FP, arithmetic
;************************************
funcstart _uX_mm_add_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			addss			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_add_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			addps			xmm0,			xmm1

			ret
funcend
	
funcstart _uX_mm_sub_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			subss			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_sub_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			subps			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_mul_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			mulss			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_mul_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			mulps			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_div_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			divss			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_div_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			divps			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_sqrt_ss, callconv, xmmword, < >, Inxmm_A:xmmword

			sqrtss			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_sqrt_ps, callconv, xmmword, < >, Inxmm_A:xmmword

			sqrtps			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_rcp_ss, callconv, xmmword, < >, Inxmm_A:xmmword

			rcpss			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_rcp_ps, callconv, xmmword, < >, Inxmm_A:xmmword

			rcpps			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_rsqrt_ss, callconv, xmmword, < >, Inxmm_A:xmmword

			rsqrtss			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_rsqrt_ps, callconv, xmmword, < >, Inxmm_A:xmmword

			rsqrtps			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_min_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			minss			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_min_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			minps			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_max_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			maxss			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_max_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			maxps			xmm0,			xmm1

			ret
funcend

;******************
; FP, logical
;******************
funcstart _uX_mm_and_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			andps			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_andnot_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			andnps			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_or_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			orps			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_xor_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			xorps			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_not_ps, callconv, xmmword, < >, Inxmm_A:xmmword

			movaps			xmm1,			__m128_true
			xorps			xmm0,			xmm1

			ret
funcend

;******************
; FP, comparison
;******************
funcstart _uX_mm_cmpeq_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_EQ

			ret
funcend

funcstart _uX_mm_cmpeq_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_EQ

			ret
funcend

funcstart _uX_mm_cmplt_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_LT

			ret
funcend

funcstart _uX_mm_cmplt_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_LT

			ret
funcend

funcstart _uX_mm_cmple_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_LE

			ret
funcend

funcstart _uX_mm_cmple_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_LE

			ret
funcend

funcstart _uX_mm_cmpgt_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NLE

			ret
funcend

funcstart _uX_mm_cmpgt_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NLE

			ret
funcend

funcstart _uX_mm_cmpge_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NLT

			ret
funcend

funcstart _uX_mm_cmpge_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NLT

			ret
funcend

funcstart _uX_mm_cmpneq_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NEQ

			ret
funcend

funcstart _uX_mm_cmpneq_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NEQ

			ret
funcend

funcstart _uX_mm_cmpnlt_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NLT

			ret
funcend

funcstart _uX_mm_cmpnlt_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NLT

			ret
funcend

funcstart _uX_mm_cmpnle_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NLE

			ret
funcend

funcstart _uX_mm_cmpnle_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NLE

			ret
funcend

funcstart _uX_mm_cmpngt_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_LE

			ret
funcend

funcstart _uX_mm_cmpngt_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_LE

			ret
funcend

funcstart _uX_mm_cmpnge_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_LT

			ret
funcend

funcstart _uX_mm_cmpnge_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_LT

			ret
funcend

funcstart _uX_mm_cmpord_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_ORD

			ret
funcend

funcstart _uX_mm_cmpord_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_ORD

			ret
funcend

funcstart _uX_mm_cmpunord_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_UNORD

			ret
funcend

funcstart _uX_mm_cmpunord_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_UNORD

			ret
funcend

;******************
; FP, comparison return int
;******************
funcstart _uX_mm_comieq_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			comiss			xmm0,			xmm1
			cmove			rreturn,			true

			ret
funcend

funcstart _uX_mm_comilt_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			comiss			xmm0,			xmm1
			cmovb			rreturn,			true

			ret
funcend

funcstart _uX_mm_comile_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			comiss			xmm0,			xmm1
			cmovbe			rreturn,			true

			ret
funcend

funcstart _uX_mm_comigt_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			comiss			xmm0,			xmm1
			cmova			rreturn,			true

			ret
funcend

funcstart _uX_mm_comige_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			comiss			xmm0,			xmm1
			cmovae			rreturn,			true

			ret
funcend

funcstart _uX_mm_comineq_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			comiss			xmm0,			xmm1
			cmovne			rreturn,			true

			ret
funcend

funcstart _uX_mm_cominlt_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			comiss			xmm0,			xmm1
			cmovnb			rreturn,			true

			ret
funcend

funcstart _uX_mm_cominle_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			comiss			xmm0,			xmm1
			cmovnbe			rreturn,			true

			ret
funcend

funcstart _uX_mm_comingt_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			comiss			xmm0,			xmm1
			cmovna			rreturn,			true

			ret
funcend

funcstart _uX_mm_cominge_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			comiss			xmm0,			xmm1
			cmovnae			rreturn,			true

			ret
funcend

funcstart _uX_mm_ucomieq_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			ucomiss			xmm0,			xmm1
			cmove			rreturn,			true

			ret
funcend

funcstart _uX_mm_ucomilt_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			ucomiss			xmm0,			xmm1
			cmovb			rreturn,			true

			ret
funcend

funcstart _uX_mm_ucomile_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			ucomiss			xmm0,			xmm1
			cmovbe			rreturn,			true

			ret
funcend

funcstart _uX_mm_ucomigt_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			ucomiss			xmm0,			xmm1
			cmova			rreturn,			true

			ret
funcend

funcstart _uX_mm_ucomige_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			ucomiss			xmm0,			xmm1
			cmovae			rreturn,			true

			ret
funcend

funcstart _uX_mm_ucomineq_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			ucomiss			xmm0,			xmm1
			cmovne			rreturn,			true

			ret
funcend

funcstart _uX_mm_ucominlt_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			ucomiss			xmm0,			xmm1
			cmovnb			rreturn,			true

			ret
funcend

funcstart _uX_mm_ucominle_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			ucomiss			xmm0,			xmm1
			cmovnbe			rreturn,			true

			ret
funcend

funcstart _uX_mm_ucomingt_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			ucomiss			xmm0,			xmm1
			cmovna			rreturn,			true

			ret
funcend

funcstart _uX_mm_ucominge_ss, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			xor				rreturn,			rreturn
			ucomiss			xmm0,			xmm1
			cmovnae			rreturn,			true

			ret
funcend

;******************
; FP, conversions
;******************
funcstart _uX_mm_cvt_ss2si, callconv, dword, < >, Inxmm_A:xmmword
			
			cvtss2si			dreturn,			xmm0

			ret
funcend

funcstart _uX_mm_cvtt_ss2si, callconv, dword, < >, Inxmm_A:xmmword
			
			cvttss2si			dreturn,			xmm0

			ret
funcend

funcstart _uX_mm_cvt_si2ss, callconv, xmmword, < >, Inxmm_A:xmmword, InInt_B:dword
			
			cvtsi2ss			xmm0,			dparam1

			ret
funcend

funcstart _uX_mm_cvtss_f32, callconv, real4, < >, Inxmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_cvt0s_f32, callconv, real4, < >, Inxmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_cvt1s_f32, callconv, real4, < >, Inxmm_A:xmmword

			shufps			xmm0,			xmm0,			shuffler4(1,1,1,1)
			movss			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_cvt2s_f32, callconv, real4, < >, Inxmm_A:xmmword

			shufps			xmm0,			xmm0,			shuffler4(2,2,2,2)
			movss			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_cvt3s_f32, callconv, real4, < >, Inxmm_A:xmmword

			shufps			xmm0,			xmm0,			shuffler4(3,3,3,3)
			movss			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_cvtelts_f32, callconv, real4, < >, Inxmm_A:xmmword, InInt_BSel:dword

		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128cvteltsf32jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128cvteltsf32jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
			
		_m128cvteltsf32_0 label size_t
			movss			xmm0,			xmm0
			ret
		_m128cvteltsf32_1 label size_t
			shufps			xmm0,			xmm0,			shuffler4(1,1,1,1)
			movss			xmm0,			xmm0
			ret
		_m128cvteltsf32_2 label size_t
			shufps			xmm0,			xmm0,			shuffler4(2,2,2,2)
			movss			xmm0,			xmm0
			ret
		_m128cvteltsf32_3 label size_t
			shufps			xmm0,			xmm0,			shuffler4(3,3,3,3)
			movss			xmm0,			xmm0
			ret
		;.endif
			
funcend

ifdef __X32__
	alignmmfieldproc

funcstart _uX_mm_cvt_ps2pi, mmword, < >, Inxmm_A:xmmword
			
			cvtps2pi			mm0,			xmm0

			ret
funcend

funcstart _uX_mm_cvtt_ps2pi, mmword, < >, Inxmm_A:xmmword
			
			cvttps2pi			mm0,			xmm0

			ret
funcend

funcstart _uX_mm_cvt_pi2ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inmm_B:mmword
			
			cvtpi2ps			xmm0,			mm1

			ret
funcend

	alignxmmfieldproc
endif ;__X32__

ifdef __X64__
;******************
; FP, conversions, 64-bit intrinsics
;******************
funcstart _uX_mm_cvtss_si64, qword, < >, Inxmm_A:xmmword
			
			cvtss2si			qreturn,			xmm0

			ret
funcend

funcstart _uX_mm_cvttss_si64, qword, < >, Inxmm_A:xmmword
			
			cvttss2si			qreturn,			xmm0

			ret
funcend

funcstart _uX_mm_cvtsi64_ss, callconv, xmmword, < >, Inxmm_A:xmmword, InInt_B:qword
			
			cvtsi2ss			xmm0,			rparam1

			ret
funcend
endif ;__X64__

;******************
; FP, misc
;******************
funcstart _uX_mm_transpose4_ps, voidarg, < >, Inxmm_row0:xmmword, Inxmm_row1:xmmword, Inxmm_row2:xmmword, Inxmm_row3:xmmword
			
				movaps			xmm4, 			xmm0
				movaps			xmm5, 			xmm2

				shufps			xmm0,			xmm1,			shuffler4(0,1,0,1) ; 044h
				shufps			xmm4,			xmm1,			shuffler4(2,3,2,3) ; 0eeh
				shufps			xmm2,			xmm3,			shuffler4(0,1,0,1) ; 044h
				shufps			xmm5,			xmm3,			shuffler4(2,3,2,3) ; 0eeh
				
				movaps			xmm1, 			xmm0
				movaps			xmm3, 			xmm4
				
				shufps			xmm0,			xmm2,			shuffler4(0,2,0,2) ; 088h
				shufps			xmm1,			xmm2,			shuffler4(1,3,1,3) ; 0ddh
				shufps			xmm4,			xmm5,			shuffler4(0,2,0,2) ; 088h
				shufps			xmm3,			xmm5,			shuffler4(1,3,1,3) ; 0ddh
				
				movaps			xmm2, 			xmm4
				
			ret
funcend

funcstart _uX_mm_unpackhi_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			unpckhps 			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_unpacklo_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			unpcklps			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_movehl_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			movhlps				xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_movelh_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			movlhps 		xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_loadh_pi, callconv, xmmword, < >, Inxmm_A:xmmword, InPmm_B:ptr mmword
			
			movhps 			xmm0,	mmword ptr [rparam1]

			ret
funcend

funcstart _uX_mm_loadl_pi, callconv, xmmword, < >, Inxmm_A:xmmword, InPmm_B:ptr mmword
			
			movlps			xmm0,	mmword ptr [rparam1]

			ret
funcend

funcstart _uX_mm_storeh_pi, voidarg, < >, OutPmm_A:ptr mmword, Inxmm_B:xmmword
			
			movhps 		mmword ptr [rparam0],			xmm1

			ret
funcend

funcstart _uX_mm_storel_pi, voidarg, < >, OutPmm_A:ptr mmword, Inxmm_B:xmmword
			
			movlps 		mmword ptr [rparam0],			xmm1

			ret
funcend

funcstart _uX_mm_movemask_ps, callconv, dword, < >, Inxmm_A:xmmword
			
			movmskps			dreturn,				xmm0

			ret
funcend

ifdef __X32__
;******************
; Integer (MMX) extensions
;******************
	alignmmfieldproc

funcstart _uX_mm_pextrw_0, callconv, dword, < >, Inmm_A:mmword

			pextrw			dreturn,			mm0,			0

			ret
funcend

funcstart _uX_mm_pextrw_1, callconv, dword, < >, Inmm_A:mmword

			pextrw			dreturn,			mm0,			1

			ret
funcend

funcstart _uX_mm_pextrw_2, callconv, dword, < >, Inmm_A:mmword

			pextrw			dreturn,			mm0,			2

			ret
funcend

funcstart _uX_mm_pextrw_3, callconv, dword, < >, Inmm_A:mmword

			pextrw			dreturn,			mm0,			3

			ret
funcend

funcstart _uX_mm_pextrw, callconv, dword, < >, Inmm_A:mmword, _Imm8:dword

			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m64pextrwjmptable+eax*size_t_size]
			
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

funcend

funcstart _uX_mm_pinsrw_0, mmword, < >, Inmm_A:mmword, InInt_B:dword
			
			pinsrw			mm0,			dparam1,			0

			ret
funcend

funcstart _uX_mm_pinsrw_1, mmword, < >, Inmm_A:mmword, InInt_B:dword
			
			pinsrw			mm0,			dparam1,			1

			ret
funcend

funcstart _uX_mm_pinsrw_2, mmword, < >, Inmm_A:mmword, InInt_B:dword
			
			pinsrw			mm0,			dparam1,			2

			ret
funcend

funcstart _uX_mm_pinsrw_3, mmword, < >, Inmm_A:mmword, InInt_B:dword
			
			pinsrw			mm0,			dparam1,			3

			ret
funcend

funcstart _uX_mm_pinsrw, mmword, < >, Inmm_A:mmword, InInt_B:dword,  _Imm8:dword
			
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m64pinsrwjmptable+eax*size_t_size]
				
			_m64pinsrw_0 label size_t
				pinsrw			mm0,			dparam1,			0
				ret
			_m64pinsrw_1 label size_t
				pinsrw			mm0,			dparam1,			1
				ret
			_m64pinsrw_2 label size_t
				pinsrw			mm0,			dparam1,			2
				ret
			_m64pinsrw_3 label size_t
				pinsrw			mm0,			dparam1,			3
				ret

funcend

funcstart _uX_mm_pmaxsw, mmword, < >, Inmm_A:mmword, Inmm_B:mmword
			
			pmaxsw			mm0,			mm1

			ret
funcend

funcstart _uX_mm_pmaxub, mmword, < >, Inmm_A:mmword, Inmm_B:mmword
			
			pmaxub			mm0,			mm1

			ret
funcend

funcstart _uX_mm_pminsw, mmword, < >, Inmm_A:mmword, Inmm_B:mmword
			
			pminsw			mm0,			mm1

			ret
funcend

funcstart _uX_mm_pminub, mmword, < >, Inmm_A:mmword, Inmm_B:mmword
			
			pminub			mm0,			mm1

			ret
funcend

funcstart _uX_mm_pmovmskb, callconv, dword, < >, Inmm_A:mmword
			
			pmovmskb		dreturn,			mm0

			ret
funcend

funcstart _uX_mm_pmulhuw, mmword, < >, Inmm_A:mmword, Inmm_B:mmword
			
			pmulhuw			mm0,			mm1

			ret
funcend

funcstart _uX_mm_maskmovq, voidarg, < >, Inmm_A:mmword, Inmm_B:mmword, OutInt8_C:ptr byte		
			
			push			rdidx
			mov				rdidx,	byte ptr [rparam2]
			maskmovq		mm0,			mm1
			pop				rdidx

			ret
funcend

funcstart _uX_mm_pavgb, mmword, < >, Inmm_A:mmword, Inmm_B:mmword
			
			pavgb			mm0,			mm1

			ret
funcend

funcstart _uX_mm_pavgw, mmword, < >, Inmm_A:mmword, Inmm_B:mmword
			
			pavgw			mm0,			mm1

			ret
funcend

funcstart _uX_mm_psadbw, mmword, < >, Inmm_A:mmword, Inmm_B:mmword
			
			psadbw			mm0,			mm1

			ret
funcend

	alignxmmfieldproc
endif ;__X32__

;******************
; FP, sets
;******************
funcstart _uX_mm_set_ss, callconv, xmmword, < >, Inreal4_A:real4

			movss			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_set_ps1, callconv, xmmword, < >, Inreal4_A:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
funcend

funcstart _uX_mm_set_ps, callconv, xmmword, < >, Inreal4_D:real4, Inreal4_C:real4, Inreal4_B:real4, Inreal4_A:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			shuffle4(0,0,0,0)

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			shuffle4(3,0,0,0)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			shuffle4(3,2,0,0)

			movss			xmm0,			xmm3

			ret
funcend

funcstart _uX_mm_setr_ps, callconv, xmmword, < >, Inreal4_A:real4, Inreal4_B:real4, Inreal4_C:real4, Inreal4_D:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			shuffler4(0,0,0,0)

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			shuffler4(0,0,0,3)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			shuffler4(0,0,2,3)

			movss			xmm0,			xmm3
			shufps			xmm0,			xmm0,			shuffler4(3,2,1,0)

			ret
funcend

funcstart _uX_mm_setzero_ps, callconv, xmmword, < >, < >

			xorps			xmm0,			xmm0

			ret
funcend

;******************
; FP, loads
;******************
funcstart _uX_mm_load_ss, callconv, xmmword, < >, InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam0]

			ret
funcend

funcstart _uX_mm_load_ps1, callconv, xmmword, < >, InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam0]
			shufps			xmm0,			xmm0,			0

			ret
funcend

funcstart _uX_mm_load_ps, callconv, xmmword, < >, InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam0]

			ret
funcend

funcstart _uX_mm_loadr_ps, callconv, xmmword, < >, InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam0]
			shufps			xmm0,			xmm0,			shuffler4(3,2,1,0)

			ret
funcend

funcstart _uX_mm_loadu_ps, callconv, xmmword, < >, InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam0]

			ret
funcend

funcstart _uX_mm_loadur_ps, callconv, xmmword, < >, InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam0]
			shufps			xmm0,			xmm0,			shuffler4(3,2,1,0)

			ret
funcend

funcstart _uX_mm_loadh_ps, callconv, xmmword, < >, Inxmm_A:xmmword, InPreal4_B:ptr mmword

			movhps			xmm0,			mmword ptr [rparam1]

			ret
funcend

funcstart _uX_mm_loadl_ps, callconv, xmmword, < >, Inxmm_A:xmmword, InPreal4_B:ptr mmword

			movlps			xmm0,		mmword ptr [rparam1]

			ret
funcend

funcstart _uX_mm_store_ss, voidarg, < >, OutPreal4_A:ptr real4, Inxmm_B:xmmword

			movss		real4 ptr [rparam0],			xmm1

			ret
funcend

;******************
; FP, stores
;******************
funcstart _uX_mm_store_ps1, voidarg, < >, OutPreal4_A:ptr real4, Inxmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			0
			movaps		xmmword ptr [rparam0],			xmm0

			ret
funcend

funcstart _uX_mm_storeu_ps1, voidarg, < >, OutPreal4_A:ptr real4, Inxmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			0
			movups		xmmword ptr [rparam0],			xmm1

			ret
funcend

funcstart _uX_mm_store_ps, voidarg, < >, OutPreal4_A:ptr xmmword, Inxmm_B:xmmword

			movaps		xmmword ptr [rparam0],			xmm1

			ret
funcend

funcstart _uX_mm_storeu_ps, voidarg, < >, OutPreal4_A:ptr xmmword, Inxmm_B:xmmword

			movups		xmmword ptr [rparam0],			xmm1

			ret
funcend

funcstart _uX_mm_storer_ps, voidarg, < >, OutPreal4_A:ptr xmmword, Inxmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			shuffler4(3,2,1,0)
			movaps		xmmword ptr [rparam0],			xmm0

			ret
funcend

funcstart _uX_mm_storeur_ps, voidarg, < >, OutPreal4_A:ptr xmmword, Inxmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			shuffler4(3,2,1,0)
			movups		xmmword ptr [rparam0],			xmm0

			ret
funcend

funcstart _uX_mm_storeh_ps, voidarg, < >, OutPreal4_A:ptr mmword, Inxmm_B:xmmword

			movhps		mmword ptr [rparam0],			xmm1

			ret
funcend

funcstart _uX_mm_storel_ps, voidarg, < >, OutPreal4_A:ptr mmword, Inxmm_B:xmmword

			movlps		mmword ptr [rparam0],			xmm1

			ret
funcend

funcstart _uX_mm_store_mm_ps, voidarg, < >, OutPreal4_A:ptr xmmword, Inxmm_B:xmmword

			movaps		xmmword ptr [rparam0],			xmm1

			ret
funcend

funcstart _uX_mm_store_pfloat_ps, voidarg, < >, OutPxmmword_A:ptr xmmword, InPreal4_B:ptr xmmword

			movaps			xmm1,			xmmword ptr [rparam1]
			movaps		xmmword ptr [rparam0],			xmm1

			ret
funcend

funcstart _uX_mm_storeu_pfloat_ps, voidarg, < >, OutPxmmword_A:ptr xmmword, InPreal4_B:ptr xmmword

			movups			xmm1,			xmmword ptr [rparam1]
			movups		xmmword ptr [rparam0],			xmm1

			ret
funcend

;******************
; FP, moves
;******************
funcstart _uX_mm_move_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			
			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1

			ret
funcend

funcstart _uX_mm_move_ps1, callconv, xmmword, < >, Inxmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
funcend

funcstart _uX_mm_move_ps, callconv, xmmword, < >, Inxmm_A:xmmword
			
			movaps			xmm0,			xmm0

			ret
funcend

funcstart _uX_mm_mover_ps, callconv, xmmword, < >, Inxmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			shuffler4(3,2,1,0)

			ret
funcend

funcstart _uX_ptr_move_mm_ss, ptr, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1
			movaps		xmmword ptr [rreturn],			xmm0

			ret
funcend

funcstart _uX_ptr_move_mm_ps1, ptr, < >, Inxmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0
			movaps		xmmword ptr [rreturn],			xmm0

			ret
funcend

funcstart _uX_ptr_move_mm_ps, ptr, < >, Inxmm_A:xmmword

			movaps 			xmm0,			xmm0
			movaps		xmmword ptr [rreturn],			xmm0

			ret
funcend

funcstart _uX_ptr_mover_mm_ps, ptr, < >, Inxmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			shuffler4(3,2,1,0)
			movaps		xmmword ptr [rreturn],			xmm0

			ret
funcend

funcstart _uX_ptr_moveu_mm_ss, ptr, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1
			movups		xmmword ptr [rreturn],			xmm0

			ret
funcend

funcstart _uX_ptr_moveu_mm_ps1, ptr, < >, Inxmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0
			movups		xmmword ptr [rreturn],			xmm0

			ret
funcend

funcstart _uX_ptr_moveu_mm_ps, ptr, < >, Inxmm_A:xmmword

			movaps 			xmm0,			xmm0
			movups		xmmword ptr [rreturn],			xmm0

			ret
funcend

funcstart _uX_ptr_moveur_mm_ps, ptr, < >, Inxmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			shuffler4(3,2,1,0)
			movups		xmmword ptr [rreturn],			xmm0

			ret
funcend

;******************
; Cacheability support
;******************
funcstart _uX_mm_prefetch_0, voidarg, < >, InPInt8_A:ptr byte

			prefetchnta			byte ptr [rparam0]

			ret
funcend

funcstart _uX_mm_prefetch_1, voidarg, < >, InPInt8_A:ptr byte

			prefetcht0			byte ptr [rparam0]

			ret
funcend

funcstart _uX_mm_prefetch_2, voidarg, < >, InPInt8_A:ptr byte

			prefetcht1			byte ptr [rparam0]

			ret
funcend

funcstart _uX_mm_prefetch_3, voidarg, < >, InPInt8_A:ptr byte

			prefetcht2			byte ptr [rparam0]

			ret
funcend

funcstart _uX_mm_prefetch, voidarg, < >, InPInt8_A:ptr byte, InInt_BSel:dword

		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128prefetchjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128prefetchjmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
			
		_m128prefetch_0 label size_t
			prefetchnta			byte ptr [rparam0]
			ret
		_m128prefetch_1 label size_t
			prefetcht0			byte ptr [rparam0]
			ret
		_m128prefetch_2 label size_t
			prefetcht1			byte ptr [rparam0]
			ret
		_m128prefetch_3 label size_t
			prefetcht2			byte ptr [rparam0]
			ret
		;.endif
			
funcend

ifdef __X32__
	alignmmfieldproc

funcstart _uX_mm_stream_pi, voidarg, < >, OutPmm_A:ptr mmword, Inmm_B:mmword
			
			movntq 		mmword ptr [rparam0],			mm1

			ret
funcend

	alignxmmfieldproc
endif ;__X32__

funcstart _uX_mm_stream_ps, voidarg, < >, OutPreal4_A:ptr xmmword, Inxmm_B:xmmword
			
			movntps 		xmmword ptr [rparam0],			xmm1

			ret
funcend

funcstart _uX_mm_sfence, voidarg, < >, < >
			
			sfence

			ret
funcend

funcstart _uX_mm_getcsr, callconv, dword, < >, < >
			
			stmxcsr			dword ptr [rreturn]

			ret
funcend

funcstart _uX_mm_setcsr, voidarg, < >, InInt_A:dword
			
			ldmxcsr			dword ptr [rparam0]

			ret
funcend

endif ;__MIC__

	end
