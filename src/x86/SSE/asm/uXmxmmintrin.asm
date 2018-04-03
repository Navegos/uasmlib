
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
	
;******************
; Externs
;******************
	extern UX_VECCALL _uXmCPUFeatures_Is_Inited:proc
	extern UX_VECCALL _uXmCPUFeatures_Init:proc
	extern UX_VECCALL _uXmCPUFeatures_has_SSE2:proc
	
;******************
; Proto
;******************
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

;******************
; Proc
;******************
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
