
	include uXmx86asm.inc

			option	casemap:none
	ifndef __X64__
			.686P
			.xmm
			.model	flat
	else
			.X64P
			.xmm
			option	win64:15
			option	stackbase:rsp
	endif
			option	frame:auto

	include uXmxmmintrin.inc
	
	.data
	ifndef __X64__
		xmm_has_SSE2			db 0
	endif
	
	;CPU_Rep0 puXmCPUFeatures 0		; A global variable to hold a reference to a Person type.

	.code
	
	extern UX_VECCALL _uXmCPUFeatures_Is_Inited:proc
	extern UX_VECCALL _uXmCPUFeatures_Init:proc
	extern UX_VECCALL _uXmCPUFeatures_has_SSE2:proc
	
uXm_xmmintrin_CPUFeatures proto UX_VECCALL (voidarg)
uXm_xmm_add_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_add_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_sub_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_sub_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_mul_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_mul_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_div_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_div_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_sqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_xmm_sqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_xmm_rcp_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_xmm_rcp_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_xmm_rsqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_xmm_rsqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_xmm_min_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_min_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_max_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_max_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_and_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_andnot_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_or_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_xor_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpeq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpeq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmplt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmplt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmple_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmple_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpgt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpgt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpneq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpneq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpnlt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpnlt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpnle_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpnle_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpngt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpngt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpnge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpnge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpunord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cmpunord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_comieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_comilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_comile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_comige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_comigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_comineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_ucomieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_ucomilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_ucomile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_ucomigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_ucomige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_ucomineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_cvtt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
uXm_xmm_cvt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
uXm_xmm_cvt_si2ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
uXm_xmm_cvtss_f32 proto UX_VECCALL (real4) ;InXmm_A:xmmword
ifndef __X64__
uXm_xmm_cvtt_ps2pi proto UX_VECCALL (mmword) ;InXmm_A:xmmword
uXm_xmm_cvt_ps2pi proto UX_VECCALL (mmword) ;InXmm_A:xmmword
uXm_xmm_cvt_pi2ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:mmword
endif ;!__X64__
ifdef __X64__
uXm_xmm_cvtss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
uXm_xmm_cvttss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
uXm_xmm_cvtsi64_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword
endif ;__X64__
uXm_xmm_shuffle_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
uXm_xmm_unpackhi_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_unpacklo_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_loadh_pi proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, m64:ptr mmword
uXm_xmm_movehl_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_movelh_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_xmm_storeh_pi proto UX_VECCALL (voidarg) ;InXmm_A:ptr mmword, InXmm_B:xmmword
uXm_xmm_loadl_pi proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, m64:ptr mmword
uXm_xmm_storel_pi proto UX_VECCALL (voidarg) ;InXmm_A:ptr mmword, InXmm_B:xmmword
uXm_xmm_movemask_ps proto UX_VECCALL (dword) ;InXmm_A:xmmword
ifndef __X64__
uXm_xmm_pextrw proto UX_VECCALL (dword) ;InXmm_A:xmmword,  InInt_B:dword
uXm_xmm_pinsrw proto UX_VECCALL (mmword) ;InXmm_A:xmmword,  InInt_B:dword,  InInt_C:dword
uXm_xmm_cvt_pi2ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:mmword
endif ;!__X64__

			align 16
uXm_xmmintrin_CPUFeatures proc UX_VECCALL (voidarg)
			
	ifndef __X64__
			xor				dreturn,			dreturn
			call			_uXmCPUFeatures_Is_Inited
		.if(breturn < 1)
			xor				eparam1,			eparam1
			call			_uXmCPUFeatures_Init
		.endif
			call			_uXmCPUFeatures_has_SSE2
			mov		xmm_has_SSE2,			breturn
	else
			xor				rreturn,			rreturn
			call			_uXmCPUFeatures_Is_Inited
		.if(breturn < 1)
			xor				rparam1,			rparam1
			call			_uXmCPUFeatures_Init
		.endif
			;mov	xmm_has_SSE2,		1
	endif

			ret
uXm_xmmintrin_CPUFeatures endp

;******************
; FP, arithmetic
;******************
			align 16
uXm_xmm_add_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addss			xmm0,			xmm1

			ret
uXm_xmm_add_ss endp

			align 16
uXm_xmm_add_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addps			xmm0,			xmm1

			ret
uXm_xmm_add_ps endp
	
			align 16
uXm_xmm_sub_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subss			xmm0,			xmm1

			ret
uXm_xmm_sub_ss endp

			align 16
uXm_xmm_sub_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subps			xmm0,			xmm1

			ret
uXm_xmm_sub_ps endp

			align 16
uXm_xmm_mul_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulss			xmm0,			xmm1

			ret
uXm_xmm_mul_ss endp

			align 16
uXm_xmm_mul_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulps			xmm0,			xmm1

			ret
uXm_xmm_mul_ps endp

			align 16
uXm_xmm_div_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divss			xmm0,			xmm1

			ret
uXm_xmm_div_ss endp

			align 16
uXm_xmm_div_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divps			xmm0,			xmm1

			ret
uXm_xmm_div_ps endp

			align 16
uXm_xmm_sqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtss			xmm0,			xmm1

			ret
uXm_xmm_sqrt_ss endp

			align 16
uXm_xmm_sqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtps			xmm0,			xmm1

			ret
uXm_xmm_sqrt_ps endp

			align 16
uXm_xmm_rcp_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpss			xmm0,			xmm1

			ret
uXm_xmm_rcp_ss endp

			align 16
uXm_xmm_rcp_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpps			xmm0,			xmm1

			ret
uXm_xmm_rcp_ps endp

			align 16
uXm_xmm_rsqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtss			xmm0,			xmm1

			ret
uXm_xmm_rsqrt_ss endp

			align 16
uXm_xmm_rsqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtps			xmm0,			xmm1

			ret
uXm_xmm_rsqrt_ps endp

			align 16
uXm_xmm_min_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minss			xmm0,			xmm1

			ret
uXm_xmm_min_ss endp

			align 16
uXm_xmm_min_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minps			xmm0,			xmm1

			ret
uXm_xmm_min_ps endp

			align 16
uXm_xmm_max_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxss			xmm0,			xmm1

			ret
uXm_xmm_max_ss endp

			align 16
uXm_xmm_max_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxps			xmm0,			xmm1

			ret
uXm_xmm_max_ps endp

;******************
; FP, logical
;******************
			align 16
uXm_xmm_and_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andps			xmm0,			xmm1

			ret
uXm_xmm_and_ps endp

			align 16
uXm_xmm_andnot_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andnps			xmm0,			xmm1

			ret
uXm_xmm_andnot_ps endp

			align 16
uXm_xmm_or_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			orps			xmm0,			xmm1

			ret
uXm_xmm_or_ps endp

			align 16
uXm_xmm_xor_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			xorps			xmm0,			xmm1

			ret
uXm_xmm_xor_ps endp

;******************
; FP, comparison
;******************
			align 16
uXm_xmm_cmpeq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpeqss			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPPS_EQ
		.endif
	else
			cmpeqss			xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpeq_ss endp

			align 16
uXm_xmm_cmpeq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpeqps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPPS_EQ
		.endif
	else
			cmpeqps			xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpeq_ps endp

			align 16
uXm_xmm_cmplt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpltss			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPPS_LT
		.endif
	else
			cmpltss			xmm0,			xmm1
	endif

			ret
uXm_xmm_cmplt_ss endp

			align 16
uXm_xmm_cmplt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpltps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPPS_LT
		.endif
	else
			cmpltps			xmm0,			xmm1
	endif

			ret
uXm_xmm_cmplt_ps endp

			align 16
uXm_xmm_cmple_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpless			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPPS_LE
		.endif
	else
			cmpless			xmm0,			xmm1
	endif

			ret
uXm_xmm_cmple_ss endp

			align 16
uXm_xmm_cmple_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpleps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPPS_LE
		.endif
	else
			cmpleps			xmm0,			xmm1
	endif

			ret
uXm_xmm_cmple_ps endp

			align 16
uXm_xmm_cmpgt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpnless		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPPS_NLE
		.endif
	else
			cmpnless		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpgt_ss endp

			align 16
uXm_xmm_cmpgt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpnleps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPPS_NLE
		.endif
	else
			cmpnleps		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpgt_ps endp

			align 16
uXm_xmm_cmpge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpnltss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPPS_NLT
		.endif
	else
			cmpnltss		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpge_ss endp

			align 16
uXm_xmm_cmpge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpnltps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPPS_NLT
		.endif
	else
			cmpnltps		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpge_ps endp

			align 16
uXm_xmm_cmpneq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpneqss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPPS_NEQ
		.endif
	else
			cmpneqss		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpneq_ss endp

			align 16
uXm_xmm_cmpneq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpneqps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPPS_NEQ
		.endif
	else
			cmpneqps		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpneq_ps endp

			align 16
uXm_xmm_cmpnlt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpnltss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPPS_NLT
		.endif
	else
			cmpnltss		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpnlt_ss endp

			align 16
uXm_xmm_cmpnlt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpnltps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPPS_NLT
		.endif
	else
			cmpnltps		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpnlt_ps endp

			align 16
uXm_xmm_cmpnle_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpnless		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPPS_NLE
		.endif
	else
			cmpnless		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpnle_ss endp

			align 16
uXm_xmm_cmpnle_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpnleps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPPS_NLE
		.endif
	else
			cmpnleps		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpnle_ps endp

			align 16
uXm_xmm_cmpngt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpless			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPPS_LE
		.endif
	else
			cmpless			xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpngt_ss endp

			align 16
uXm_xmm_cmpngt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpleps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPPS_LE
		.endif
	else
			cmpleps			xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpngt_ps endp

			align 16
uXm_xmm_cmpnge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpltss			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPPS_LT
		.endif
	else
			cmpltss			xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpnge_ss endp

			align 16
uXm_xmm_cmpnge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpltps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPPS_LT
		.endif
	else
			cmpltps			xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpnge_ps endp

			align 16
uXm_xmm_cmpord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpordss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPPS_ORD
		.endif
	else
			cmpordss		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpord_ss endp

			align 16
uXm_xmm_cmpord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpordps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPPS_ORD
		.endif
	else
			cmpordps		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpord_ps endp

			align 16
uXm_xmm_cmpunord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpunordss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPPS_UNORD
		.endif
	else
			cmpunordss		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpunord_ss endp

			align 16
uXm_xmm_cmpunord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	ifndef __X64__
			call			uXm_xmmintrin_CPUFeatures
		.if(xmm_has_SSE2 == true)
			cmpunordps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPPS_UNORD
		.endif
	else
			cmpunordps		xmm0,			xmm1
	endif

			ret
uXm_xmm_cmpunord_ps endp

;******************
; FP, comparison return int
;******************
			align 16
uXm_xmm_comieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			je label_comieq_ss
			xor				rreturn,			rreturn
	label_comieq_ss:
			mov				breturn,			true

			ret
uXm_xmm_comieq_ss endp

			align 16
uXm_xmm_comilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb label_comilt_ss
			xor				rreturn,			rreturn
	label_comilt_ss:
			mov				breturn,			true

			ret
uXm_xmm_comilt_ss endp

			align 16
uXm_xmm_comile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe label_comile_ss
			xor				rreturn,			rreturn
	label_comile_ss:
			mov				breturn,			true

			ret
uXm_xmm_comile_ss endp

			align 16
uXm_xmm_comigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja label_comigt_ss
			xor				rreturn,			rreturn
	label_comigt_ss:
			mov				breturn,			true

			ret
uXm_xmm_comigt_ss endp

			align 16
uXm_xmm_comige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae label_comige_ss
			xor				rreturn,			rreturn
	label_comige_ss:
			mov				breturn,			true

			ret
uXm_xmm_comige_ss endp

			align 16
uXm_xmm_comineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne label_comineq_ss
			xor				rreturn,			rreturn
	label_comineq_ss:
			mov				breturn,			true

			ret
uXm_xmm_comineq_ss endp

			align 16
uXm_xmm_ucomieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			ucomiss			xmm0,			xmm1
			je label_ucomieq_ss
			xor				rreturn,			rreturn
	label_ucomieq_ss:
			mov				breturn,			true

			ret
uXm_xmm_ucomieq_ss endp

			align 16
uXm_xmm_ucomilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb label_ucomilt_ss
			xor				rreturn,			rreturn
	label_ucomilt_ss:
			mov				breturn,			true

			ret
uXm_xmm_ucomilt_ss endp

			align 16
uXm_xmm_ucomile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe label_ucomile_ss
			xor				rreturn,			rreturn
	label_ucomile_ss:
			mov				breturn,			true

			ret
uXm_xmm_ucomile_ss endp

			align 16
uXm_xmm_ucomigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja label_ucomigt_ss
			xor				rreturn,			rreturn
	label_ucomigt_ss:
			mov				breturn,			true

			ret
uXm_xmm_ucomigt_ss endp

			align 16
uXm_xmm_ucomige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae label_ucomige_ss
			xor				rreturn,			rreturn
	label_ucomige_ss:
			mov				breturn,			true

			ret
uXm_xmm_ucomige_ss endp

			align 16
uXm_xmm_ucomineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne label_ucomineq_ss
			xor				rreturn,			rreturn
	label_ucomineq_ss:
			mov				breturn,			true

			ret
uXm_xmm_ucomineq_ss endp


;******************
; FP, conversions
;******************
			align 16
uXm_xmm_cvt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvtss2si			rreturn,			xmm0

			ret
uXm_xmm_cvt_ss2si endp

			align 16
uXm_xmm_cvtt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvttss2si			rreturn,			xmm0

			ret
uXm_xmm_cvtt_ss2si endp

			align 16
uXm_xmm_cvt_si2ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
			
			cvtsi2ss			xmm0,			dparam2

			ret
uXm_xmm_cvt_si2ss endp

			align 16
uXm_xmm_cvtss_f32 proc UX_VECCALL (real4) ;InXmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
uXm_xmm_cvtss_f32 endp

ifndef __X64__
;******************
; FP, conversions, Support for MMX extension intrinsics
;******************
			align 16
uXm_xmm_cvt_ps2pi proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvtps2pi			mm0,			xmm0

			ret
uXm_xmm_cvt_ps2pi endp

			align 16
uXm_xmm_cvtt_ps2pi proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvttps2pi			mm0,			xmm0

			ret
uXm_xmm_cvtt_ps2pi endp

			align 16
uXm_xmm_cvt_pi2ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:mmword
			
			cvtpi2ps			xmm0,			mm1

			ret
uXm_xmm_cvt_pi2ps endp
endif ;!__X64__

ifdef __X64__
;******************
; FP, conversions, 64-bit intrinsics
;******************
			align 16
uXm_xmm_cvtss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvtss2si			rax,			xmm0

			ret
uXm_xmm_cvtss_si64 endp

			align 16
uXm_xmm_cvttss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvttss2si			rax,			xmm0

			ret
uXm_xmm_cvttss_si64 endp

			align 16
uXm_xmm_cvtsi64_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword
			
			cvtsi2ss			xmm0,			rparam2

			ret
uXm_xmm_cvtsi64_ss endp
endif ;__X64__

;******************
; FP, misc
;******************
			align 16
uXm_xmm_shuffle_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword

		ifndef __X64__
			movzx			eax,	byte ptr [dparam3]
			lea				ecx,			[offset shpsjmptable]
			mov				eax,			[ecx+eax*4]
			sub				ecx,			shpsjmptable
			add				ecx,			rax
			jmp				ecx
		else
			movzx			rax,	byte ptr [rparam3]
			lea				rcx,			[offset shpsjmptable]
			mov				eax,			[rcx+rax*4]
			sub				rcx,			shpsjmptable
			add				rcx,			rax
			jmp				rcx
		endif
			
		ifndef __X64__			
			shpsword		textequ		<dword>
			shpsiword		textequ		<dd>
		else
			shpsword		textequ		<qword>
			shpsiword		textequ		<dq>
		endif
		
		shpsjmptable label shpsword
			shpsiword	offset shps_0, offset shps_1, offset shps_2, offset shps_3, offset shps_4, offset shps_5, offset shps_6, offset shps_7, offset shps_8, offset shps_9, offset shps_10, offset shps_11, offset shps_12, offset shps_13, offset shps_14, offset shps_15, offset shps_16, offset shps_17, offset shps_18, offset shps_19, offset shps_20, offset shps_21, offset shps_22, offset shps_23, offset shps_24, offset shps_25, offset shps_26, offset shps_27, offset shps_28, offset shps_29, offset shps_30, offset shps_31, offset shps_32, offset shps_33, offset shps_34, offset shps_35, offset shps_36, offset shps_37, offset shps_38, offset shps_39, offset shps_40, offset shps_41, offset shps_42, offset shps_43, offset shps_44, offset shps_45, offset shps_46, offset shps_47, offset shps_48, offset shps_49, offset shps_50
			shpsiword	offset shps_51, offset shps_52, offset shps_53, offset shps_54, offset shps_55, offset shps_56, offset shps_57, offset shps_58, offset shps_59, offset shps_60, offset shps_61, offset shps_62, offset shps_63, offset shps_64, offset shps_65, offset shps_66, offset shps_67, offset shps_68, offset shps_69, offset shps_70, offset shps_71, offset shps_72, offset shps_73, offset shps_74, offset shps_75, offset shps_76, offset shps_77, offset shps_78, offset shps_79, offset shps_80, offset shps_81, offset shps_82, offset shps_83, offset shps_84, offset shps_85, offset shps_86, offset shps_87, offset shps_88, offset shps_89, offset shps_90, offset shps_91, offset shps_92, offset shps_93, offset shps_94, offset shps_95, offset shps_96, offset shps_97, offset shps_98, offset shps_99, offset shps_100
			shpsiword	offset shps_101, offset shps_102, offset shps_103, offset shps_104, offset shps_105, offset shps_106, offset shps_107, offset shps_108, offset shps_109, offset shps_110, offset shps_111, offset shps_112, offset shps_113, offset shps_114, offset shps_115, offset shps_116, offset shps_117, offset shps_118, offset shps_119, offset shps_120, offset shps_121, offset shps_122, offset shps_123, offset shps_124, offset shps_125, offset shps_126, offset shps_127, offset shps_128, offset shps_129, offset shps_130, offset shps_131, offset shps_132, offset shps_133, offset shps_134, offset shps_135, offset shps_136, offset shps_137, offset shps_138, offset shps_139, offset shps_140, offset shps_141, offset shps_142, offset shps_143, offset shps_144, offset shps_145, offset shps_146, offset shps_147, offset shps_148, offset shps_149, offset shps_150
			shpsiword	offset shps_151, offset shps_152, offset shps_153, offset shps_154, offset shps_155, offset shps_156, offset shps_157, offset shps_158, offset shps_159, offset shps_160, offset shps_161, offset shps_162, offset shps_163, offset shps_164, offset shps_165, offset shps_166, offset shps_167, offset shps_168, offset shps_169, offset shps_170, offset shps_171, offset shps_172, offset shps_173, offset shps_174, offset shps_175, offset shps_176, offset shps_177, offset shps_178, offset shps_179, offset shps_180, offset shps_181, offset shps_182, offset shps_183, offset shps_184, offset shps_185, offset shps_186, offset shps_187, offset shps_188, offset shps_189, offset shps_190, offset shps_191, offset shps_192, offset shps_193, offset shps_194, offset shps_195, offset shps_196, offset shps_197, offset shps_198, offset shps_199, offset shps_200
			shpsiword	offset shps_201, offset shps_202, offset shps_203, offset shps_204, offset shps_205, offset shps_206, offset shps_207, offset shps_208, offset shps_209, offset shps_210, offset shps_211, offset shps_212, offset shps_213, offset shps_214, offset shps_215, offset shps_216, offset shps_217, offset shps_218, offset shps_219, offset shps_220, offset shps_221, offset shps_222, offset shps_223, offset shps_224, offset shps_225, offset shps_226, offset shps_227, offset shps_228, offset shps_229, offset shps_230, offset shps_231, offset shps_232, offset shps_233, offset shps_234, offset shps_235, offset shps_236, offset shps_237, offset shps_238, offset shps_239, offset shps_240, offset shps_241, offset shps_242, offset shps_243, offset shps_244, offset shps_245, offset shps_246, offset shps_247, offset shps_248, offset shps_249, offset shps_250
			shpsiword	offset shps_251, offset shps_252, offset shps_253, offset shps_254, offset shps_255
				
			shps_0 label shpsword
				shufps				xmm0,			xmm1,			0
				ret
			shps_1 label shpsword
				shufps				xmm0,			xmm1,			1
				ret
			shps_2 label shpsword
				shufps				xmm0,			xmm1,			2
				ret
			shps_3 label shpsword
				shufps				xmm0,			xmm1,			3
				ret
			shps_4 label shpsword
				shufps				xmm0,			xmm1,			4
				ret
			shps_5 label shpsword
				shufps				xmm0,			xmm1,			5
				ret
			shps_6 label shpsword
				shufps				xmm0,			xmm1,			6
				ret
			shps_7 label shpsword
				shufps				xmm0,			xmm1,			7
				ret
			shps_8 label shpsword
				shufps				xmm0,			xmm1,			8
				ret
			shps_9 label shpsword
				shufps				xmm0,			xmm1,			9
				ret
			shps_10 label shpsword
				shufps				xmm0,			xmm1,			10
				ret
			shps_11 label shpsword
				shufps				xmm0,			xmm1,			11
				ret
			shps_12 label shpsword
				shufps				xmm0,			xmm1,			12
				ret
			shps_13 label shpsword
				shufps				xmm0,			xmm1,			13
				ret
			shps_14 label shpsword
				shufps				xmm0,			xmm1,			14
				ret
			shps_15 label shpsword
				shufps				xmm0,			xmm1,			15
				ret
			shps_16 label shpsword
				shufps				xmm0,			xmm1,			16
				ret
			shps_17 label shpsword
				shufps				xmm0,			xmm1,			17
				ret
			shps_18 label shpsword
				shufps				xmm0,			xmm1,			18
				ret
			shps_19 label shpsword
				shufps				xmm0,			xmm1,			19
				ret
			shps_20 label shpsword
				shufps				xmm0,			xmm1,			20
				ret
			shps_21 label shpsword
				shufps				xmm0,			xmm1,			21
				ret
			shps_22 label shpsword
				shufps				xmm0,			xmm1,			22
				ret
			shps_23 label shpsword
				shufps				xmm0,			xmm1,			23
				ret
			shps_24 label shpsword
				shufps				xmm0,			xmm1,			24
				ret
			shps_25 label shpsword
				shufps				xmm0,			xmm1,			25
				ret
			shps_26 label shpsword
				shufps				xmm0,			xmm1,			26
				ret
			shps_27 label shpsword
				shufps				xmm0,			xmm1,			27
				ret
			shps_28 label shpsword
				shufps				xmm0,			xmm1,			28
				ret
			shps_29 label shpsword
				shufps				xmm0,			xmm1,			29
				ret
			shps_30 label shpsword
				shufps				xmm0,			xmm1,			30
				ret
			shps_31 label shpsword
				shufps				xmm0,			xmm1,			31
				ret
			shps_32 label shpsword
				shufps				xmm0,			xmm1,			32
				ret
			shps_33 label shpsword
				shufps				xmm0,			xmm1,			33
				ret
			shps_34 label shpsword
				shufps				xmm0,			xmm1,			34
				ret
			shps_35 label shpsword
				shufps				xmm0,			xmm1,			35
				ret
			shps_36 label shpsword
				shufps				xmm0,			xmm1,			36
				ret
			shps_37 label shpsword
				shufps				xmm0,			xmm1,			37
				ret
			shps_38 label shpsword
				shufps				xmm0,			xmm1,			38
				ret
			shps_39 label shpsword
				shufps				xmm0,			xmm1,			39
				ret
			shps_40 label shpsword
				shufps				xmm0,			xmm1,			40
				ret
			shps_41 label shpsword
				shufps				xmm0,			xmm1,			41
				ret
			shps_42 label shpsword
				shufps				xmm0,			xmm1,			42
				ret
			shps_43 label shpsword
				shufps				xmm0,			xmm1,			43
				ret
			shps_44 label shpsword
				shufps				xmm0,			xmm1,			44
				ret
			shps_45 label shpsword
				shufps				xmm0,			xmm1,			45
				ret
			shps_46 label shpsword
				shufps				xmm0,			xmm1,			46
				ret
			shps_47 label shpsword
				shufps				xmm0,			xmm1,			47
				ret
			shps_48 label shpsword
				shufps				xmm0,			xmm1,			48
				ret
			shps_49 label shpsword
				shufps				xmm0,			xmm1,			49
				ret
			shps_50 label shpsword
				shufps				xmm0,			xmm1,			50
				ret
			shps_51 label shpsword
				shufps				xmm0,			xmm1,			51
				ret
			shps_52 label shpsword
				shufps				xmm0,			xmm1,			52
				ret
			shps_53 label shpsword
				shufps				xmm0,			xmm1,			53
				ret
			shps_54 label shpsword
				shufps				xmm0,			xmm1,			54
				ret
			shps_55 label shpsword
				shufps				xmm0,			xmm1,			55
				ret
			shps_56 label shpsword
				shufps				xmm0,			xmm1,			56
				ret
			shps_57 label shpsword
				shufps				xmm0,			xmm1,			57
				ret
			shps_58 label shpsword
				shufps				xmm0,			xmm1,			58
				ret
			shps_59 label shpsword
				shufps				xmm0,			xmm1,			59
				ret
			shps_60 label shpsword
				shufps				xmm0,			xmm1,			60
				ret
			shps_61 label shpsword
				shufps				xmm0,			xmm1,			61
				ret
			shps_62 label shpsword
				shufps				xmm0,			xmm1,			62
				ret
			shps_63 label shpsword
				shufps				xmm0,			xmm1,			63
				ret
			shps_64 label shpsword
				shufps				xmm0,			xmm1,			64
				ret
			shps_65 label shpsword
				shufps				xmm0,			xmm1,			65
				ret
			shps_66 label shpsword
				shufps				xmm0,			xmm1,			66
				ret
			shps_67 label shpsword
				shufps				xmm0,			xmm1,			67
				ret
			shps_68 label shpsword
				shufps				xmm0,			xmm1,			68
				ret
			shps_69 label shpsword
				shufps				xmm0,			xmm1,			69
				ret
			shps_70 label shpsword
				shufps				xmm0,			xmm1,			70
				ret
			shps_71 label shpsword
				shufps				xmm0,			xmm1,			71
				ret
			shps_72 label shpsword
				shufps				xmm0,			xmm1,			72
				ret
			shps_73 label shpsword
				shufps				xmm0,			xmm1,			73
				ret
			shps_74 label shpsword
				shufps				xmm0,			xmm1,			74
				ret
			shps_75 label shpsword
				shufps				xmm0,			xmm1,			75
				ret
			shps_76 label shpsword
				shufps				xmm0,			xmm1,			76
				ret
			shps_77 label shpsword
				shufps				xmm0,			xmm1,			77
				ret
			shps_78 label shpsword
				shufps				xmm0,			xmm1,			78
				ret
			shps_79 label shpsword
				shufps				xmm0,			xmm1,			79
				ret
			shps_80 label shpsword
				shufps				xmm0,			xmm1,			80
				ret
			shps_81 label shpsword
				shufps				xmm0,			xmm1,			81
				ret
			shps_82 label shpsword
				shufps				xmm0,			xmm1,			82
				ret
			shps_83 label shpsword
				shufps				xmm0,			xmm1,			83
				ret
			shps_84 label shpsword
				shufps				xmm0,			xmm1,			84
				ret
			shps_85 label shpsword
				shufps				xmm0,			xmm1,			85
				ret
			shps_86 label shpsword
				shufps				xmm0,			xmm1,			86
				ret
			shps_87 label shpsword
				shufps				xmm0,			xmm1,			87
				ret
			shps_88 label shpsword
				shufps				xmm0,			xmm1,			88
				ret
			shps_89 label shpsword
				shufps				xmm0,			xmm1,			89
				ret
			shps_90 label shpsword
				shufps				xmm0,			xmm1,			90
				ret
			shps_91 label shpsword
				shufps				xmm0,			xmm1,			91
				ret
			shps_92 label shpsword
				shufps				xmm0,			xmm1,			92
				ret
			shps_93 label shpsword
				shufps				xmm0,			xmm1,			93
				ret
			shps_94 label shpsword
				shufps				xmm0,			xmm1,			94
				ret
			shps_95 label shpsword
				shufps				xmm0,			xmm1,			95
				ret
			shps_96 label shpsword
				shufps				xmm0,			xmm1,			96
				ret
			shps_97 label shpsword
				shufps				xmm0,			xmm1,			97
				ret
			shps_98 label shpsword
				shufps				xmm0,			xmm1,			98
				ret
			shps_99 label shpsword
				shufps				xmm0,			xmm1,			99
				ret
			shps_100 label shpsword
				shufps				xmm0,			xmm1,			100
				ret
			shps_101 label shpsword
				shufps				xmm0,			xmm1,			101
				ret
			shps_102 label shpsword
				shufps				xmm0,			xmm1,			102
				ret
			shps_103 label shpsword
				shufps				xmm0,			xmm1,			103
				ret
			shps_104 label shpsword
				shufps				xmm0,			xmm1,			104
				ret
			shps_105 label shpsword
				shufps				xmm0,			xmm1,			105
				ret
			shps_106 label shpsword
				shufps				xmm0,			xmm1,			106
				ret
			shps_107 label shpsword
				shufps				xmm0,			xmm1,			107
				ret
			shps_108 label shpsword
				shufps				xmm0,			xmm1,			108
				ret
			shps_109 label shpsword
				shufps				xmm0,			xmm1,			109
				ret
			shps_110 label shpsword
				shufps				xmm0,			xmm1,			110
				ret
			shps_111 label shpsword
				shufps				xmm0,			xmm1,			111
				ret
			shps_112 label shpsword
				shufps				xmm0,			xmm1,			112
				ret
			shps_113 label shpsword
				shufps				xmm0,			xmm1,			113
				ret
			shps_114 label shpsword
				shufps				xmm0,			xmm1,			114
				ret
			shps_115 label shpsword
				shufps				xmm0,			xmm1,			115
				ret
			shps_116 label shpsword
				shufps				xmm0,			xmm1,			116
				ret
			shps_117 label shpsword
				shufps				xmm0,			xmm1,			117
				ret
			shps_118 label shpsword
				shufps				xmm0,			xmm1,			118
				ret
			shps_119 label shpsword
				shufps				xmm0,			xmm1,			119
				ret
			shps_120 label shpsword
				shufps				xmm0,			xmm1,			120
				ret
			shps_121 label shpsword
				shufps				xmm0,			xmm1,			121
				ret
			shps_122 label shpsword
				shufps				xmm0,			xmm1,			122
				ret
			shps_123 label shpsword
				shufps				xmm0,			xmm1,			123
				ret
			shps_124 label shpsword
				shufps				xmm0,			xmm1,			124
				ret
			shps_125 label shpsword
				shufps				xmm0,			xmm1,			125
				ret
			shps_126 label shpsword
				shufps				xmm0,			xmm1,			126
				ret
			shps_127 label shpsword
				shufps				xmm0,			xmm1,			127
				ret
			shps_128 label shpsword
				shufps				xmm0,			xmm1,			128
				ret
			shps_129 label shpsword
				shufps				xmm0,			xmm1,			129
				ret
			shps_130 label shpsword
				shufps				xmm0,			xmm1,			130
				ret
			shps_131 label shpsword
				shufps				xmm0,			xmm1,			131
				ret
			shps_132 label shpsword
				shufps				xmm0,			xmm1,			132
				ret
			shps_133 label shpsword
				shufps				xmm0,			xmm1,			133
				ret
			shps_134 label shpsword
				shufps				xmm0,			xmm1,			134
				ret
			shps_135 label shpsword
				shufps				xmm0,			xmm1,			135
				ret
			shps_136 label shpsword
				shufps				xmm0,			xmm1,			136
				ret
			shps_137 label shpsword
				shufps				xmm0,			xmm1,			137
				ret
			shps_138 label shpsword
				shufps				xmm0,			xmm1,			138
				ret
			shps_139 label shpsword
				shufps				xmm0,			xmm1,			139
				ret
			shps_140 label shpsword
				shufps				xmm0,			xmm1,			140
				ret
			shps_141 label shpsword
				shufps				xmm0,			xmm1,			141
				ret
			shps_142 label shpsword
				shufps				xmm0,			xmm1,			142
				ret
			shps_143 label shpsword
				shufps				xmm0,			xmm1,			143
				ret
			shps_144 label shpsword
				shufps				xmm0,			xmm1,			144
				ret
			shps_145 label shpsword
				shufps				xmm0,			xmm1,			145
				ret
			shps_146 label shpsword
				shufps				xmm0,			xmm1,			146
				ret
			shps_147 label shpsword
				shufps				xmm0,			xmm1,			147
				ret
			shps_148 label shpsword
				shufps				xmm0,			xmm1,			148
				ret
			shps_149 label shpsword
				shufps				xmm0,			xmm1,			149
				ret
			shps_150 label shpsword
				shufps				xmm0,			xmm1,			150
				ret
			shps_151 label shpsword
				shufps				xmm0,			xmm1,			151
				ret
			shps_152 label shpsword
				shufps				xmm0,			xmm1,			152
				ret
			shps_153 label shpsword
				shufps				xmm0,			xmm1,			153
				ret
			shps_154 label shpsword
				shufps				xmm0,			xmm1,			154
				ret
			shps_155 label shpsword
				shufps				xmm0,			xmm1,			155
				ret
			shps_156 label shpsword
				shufps				xmm0,			xmm1,			156
				ret
			shps_157 label shpsword
				shufps				xmm0,			xmm1,			157
				ret
			shps_158 label shpsword
				shufps				xmm0,			xmm1,			158
				ret
			shps_159 label shpsword
				shufps				xmm0,			xmm1,			159
				ret
			shps_160 label shpsword
				shufps				xmm0,			xmm1,			160
				ret
			shps_161 label shpsword
				shufps				xmm0,			xmm1,			161
				ret
			shps_162 label shpsword
				shufps				xmm0,			xmm1,			162
				ret
			shps_163 label shpsword
				shufps				xmm0,			xmm1,			163
				ret
			shps_164 label shpsword
				shufps				xmm0,			xmm1,			164
				ret
			shps_165 label shpsword
				shufps				xmm0,			xmm1,			165
				ret
			shps_166 label shpsword
				shufps				xmm0,			xmm1,			166
				ret
			shps_167 label shpsword
				shufps				xmm0,			xmm1,			167
				ret
			shps_168 label shpsword
				shufps				xmm0,			xmm1,			168
				ret
			shps_169 label shpsword
				shufps				xmm0,			xmm1,			169
				ret
			shps_170 label shpsword
				shufps				xmm0,			xmm1,			170
				ret
			shps_171 label shpsword
				shufps				xmm0,			xmm1,			171
				ret
			shps_172 label shpsword
				shufps				xmm0,			xmm1,			172
				ret
			shps_173 label shpsword
				shufps				xmm0,			xmm1,			173
				ret
			shps_174 label shpsword
				shufps				xmm0,			xmm1,			174
				ret
			shps_175 label shpsword
				shufps				xmm0,			xmm1,			175
				ret
			shps_176 label shpsword
				shufps				xmm0,			xmm1,			176
				ret
			shps_177 label shpsword
				shufps				xmm0,			xmm1,			177
				ret
			shps_178 label shpsword
				shufps				xmm0,			xmm1,			178
				ret
			shps_179 label shpsword
				shufps				xmm0,			xmm1,			179
				ret
			shps_180 label shpsword
				shufps				xmm0,			xmm1,			180
				ret
			shps_181 label shpsword
				shufps				xmm0,			xmm1,			181
				ret
			shps_182 label shpsword
				shufps				xmm0,			xmm1,			182
				ret
			shps_183 label shpsword
				shufps				xmm0,			xmm1,			183
				ret
			shps_184 label shpsword
				shufps				xmm0,			xmm1,			184
				ret
			shps_185 label shpsword
				shufps				xmm0,			xmm1,			185
				ret
			shps_186 label shpsword
				shufps				xmm0,			xmm1,			186
				ret
			shps_187 label shpsword
				shufps				xmm0,			xmm1,			187
				ret
			shps_188 label shpsword
				shufps				xmm0,			xmm1,			188
				ret
			shps_189 label shpsword
				shufps				xmm0,			xmm1,			189
				ret
			shps_190 label shpsword
				shufps				xmm0,			xmm1,			190
				ret
			shps_191 label shpsword
				shufps				xmm0,			xmm1,			191
				ret
			shps_192 label shpsword
				shufps				xmm0,			xmm1,			192
				ret
			shps_193 label shpsword
				shufps				xmm0,			xmm1,			193
				ret
			shps_194 label shpsword
				shufps				xmm0,			xmm1,			194
				ret
			shps_195 label shpsword
				shufps				xmm0,			xmm1,			195
				ret
			shps_196 label shpsword
				shufps				xmm0,			xmm1,			196
				ret
			shps_197 label shpsword
				shufps				xmm0,			xmm1,			197
				ret
			shps_198 label shpsword
				shufps				xmm0,			xmm1,			198
				ret
			shps_199 label shpsword
				shufps				xmm0,			xmm1,			199
				ret
			shps_200 label shpsword
				shufps				xmm0,			xmm1,			200
				ret
			shps_201 label shpsword
				shufps				xmm0,			xmm1,			201
				ret
			shps_202 label shpsword
				shufps				xmm0,			xmm1,			202
				ret
			shps_203 label shpsword
				shufps				xmm0,			xmm1,			203
				ret
			shps_204 label shpsword
				shufps				xmm0,			xmm1,			204
				ret
			shps_205 label shpsword
				shufps				xmm0,			xmm1,			205
				ret
			shps_206 label shpsword
				shufps				xmm0,			xmm1,			206
				ret
			shps_207 label shpsword
				shufps				xmm0,			xmm1,			207
				ret
			shps_208 label shpsword
				shufps				xmm0,			xmm1,			208
				ret
			shps_209 label shpsword
				shufps				xmm0,			xmm1,			209
				ret
			shps_210 label shpsword
				shufps				xmm0,			xmm1,			210
				ret
			shps_211 label shpsword
				shufps				xmm0,			xmm1,			211
				ret
			shps_212 label shpsword
				shufps				xmm0,			xmm1,			212
				ret
			shps_213 label shpsword
				shufps				xmm0,			xmm1,			213
				ret
			shps_214 label shpsword
				shufps				xmm0,			xmm1,			214
				ret
			shps_215 label shpsword
				shufps				xmm0,			xmm1,			215
				ret
			shps_216 label shpsword
				shufps				xmm0,			xmm1,			216
				ret
			shps_217 label shpsword
				shufps				xmm0,			xmm1,			217
				ret
			shps_218 label shpsword
				shufps				xmm0,			xmm1,			218
				ret
			shps_219 label shpsword
				shufps				xmm0,			xmm1,			219
				ret
			shps_220 label shpsword
				shufps				xmm0,			xmm1,			220
				ret
			shps_221 label shpsword
				shufps				xmm0,			xmm1,			221
				ret
			shps_222 label shpsword
				shufps				xmm0,			xmm1,			222
				ret
			shps_223 label shpsword
				shufps				xmm0,			xmm1,			223
				ret
			shps_224 label shpsword
				shufps				xmm0,			xmm1,			224
				ret
			shps_225 label shpsword
				shufps				xmm0,			xmm1,			225
				ret
			shps_226 label shpsword
				shufps				xmm0,			xmm1,			226
				ret
			shps_227 label shpsword
				shufps				xmm0,			xmm1,			227
				ret
			shps_228 label shpsword
				shufps				xmm0,			xmm1,			228
				ret
			shps_229 label shpsword
				shufps				xmm0,			xmm1,			229
				ret
			shps_230 label shpsword
				shufps				xmm0,			xmm1,			230
				ret
			shps_231 label shpsword
				shufps				xmm0,			xmm1,			231
				ret
			shps_232 label shpsword
				shufps				xmm0,			xmm1,			232
				ret
			shps_233 label shpsword
				shufps				xmm0,			xmm1,			233
				ret
			shps_234 label shpsword
				shufps				xmm0,			xmm1,			234
				ret
			shps_235 label shpsword
				shufps				xmm0,			xmm1,			235
				ret
			shps_236 label shpsword
				shufps				xmm0,			xmm1,			236
				ret
			shps_237 label shpsword
				shufps				xmm0,			xmm1,			237
				ret
			shps_238 label shpsword
				shufps				xmm0,			xmm1,			238
				ret
			shps_239 label shpsword
				shufps				xmm0,			xmm1,			239
				ret
			shps_240 label shpsword
				shufps				xmm0,			xmm1,			240
				ret
			shps_241 label shpsword
				shufps				xmm0,			xmm1,			241
				ret
			shps_242 label shpsword
				shufps				xmm0,			xmm1,			242
				ret
			shps_243 label shpsword
				shufps				xmm0,			xmm1,			243
				ret
			shps_244 label shpsword
				shufps				xmm0,			xmm1,			244
				ret
			shps_245 label shpsword
				shufps				xmm0,			xmm1,			245
				ret
			shps_246 label shpsword
				shufps				xmm0,			xmm1,			246
				ret
			shps_247 label shpsword
				shufps				xmm0,			xmm1,			247
				ret
			shps_248 label shpsword
				shufps				xmm0,			xmm1,			248
				ret
			shps_249 label shpsword
				shufps				xmm0,			xmm1,			249
				ret
			shps_250 label shpsword
				shufps				xmm0,			xmm1,			250
				ret
			shps_251 label shpsword
				shufps				xmm0,			xmm1,			251
				ret
			shps_252 label shpsword
				shufps				xmm0,			xmm1,			252
				ret
			shps_253 label shpsword
				shufps				xmm0,			xmm1,			253
				ret
			shps_254 label shpsword
				shufps				xmm0,			xmm1,			254
				ret
			shps_255 label shpsword
				shufps				xmm0,			xmm1,			255
				ret				
			
uXm_xmm_shuffle_ps endp

			align 16
uXm_xmm_unpackhi_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpckhps 				xmm0,			xmm1

			ret
uXm_xmm_unpackhi_ps endp

			align 16
uXm_xmm_unpacklo_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpcklps 				xmm0,			xmm1

			ret
uXm_xmm_unpacklo_ps endp

			align 16
uXm_xmm_loadh_pi proc UX_VECCALL (xmmword) ;frame InXmm_A:xmmword, m64:ptr mmword
			
			movhps 				xmm0,	mmword ptr	[mm1]

			ret
uXm_xmm_loadh_pi endp

			align 16
uXm_xmm_movehl_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movhlps 				xmm0,			xmm1

			ret
uXm_xmm_movehl_ps endp

			align 16
uXm_xmm_movelh_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movlhps 				xmm0,			xmm1

			ret
uXm_xmm_movelh_ps endp

			align 16
uXm_xmm_storeh_pi proc UX_VECCALL (voidarg) ;InXmm_A:ptr mmword, InXmm_B:xmmword
			
			movhps 		mmword ptr	[mm0],			xmm1

			ret
uXm_xmm_storeh_pi endp

			align 16
uXm_xmm_loadl_pi proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, m64:ptr mmword
			
			movlps 				xmm0,	mmword ptr	[mm1]

			ret
uXm_xmm_loadl_pi endp

			align 16
uXm_xmm_storel_pi proc UX_VECCALL (voidarg) ;InXmm_A:ptr mmword, InXmm_B:xmmword
			
			movlps 		mmword ptr	[mm0],			xmm1

			ret
uXm_xmm_storel_pi endp

			align 16
uXm_xmm_movemask_ps proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			movmskps			dreturn,				xmm1

			ret
uXm_xmm_movemask_ps endp

ifndef __X64__
;******************
; Integer (MMX) extensions
;******************
			align 16
uXm_xmm_pextrw proc UX_VECCALL (dword) ;InXmm_A:xmmword,  InInt_B:dword

			__BSS segment
			storit dd 0
			__BSS ends
			mov				storit,				dparam2
			pextrw			dreturn,			xmm0,			%(dparam2)

			ret
uXm_xmm_pextrw endp

			align 16
uXm_xmm_pinsrw proc UX_VECCALL (mmword) ;InXmm_A:xmmword,  InInt_B:dword,  InInt_C:dword
			
			pinsrw			mm0,			xmm0

			ret
uXm_xmm_pinsrw endp

			align 16
uXm_xmm_cvt_pi2ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:mmword
			
			cvtpi2ps			xmm0,			mm1

			ret
uXm_xmm_cvt_pi2ps endp
endif ;!__X64__

	end
