
	include uXmx86asm.inc

	include uXmsseintrin.inc
	
	.data
	ifndef __X64__
		externdef intrin_has_SSE2:byte
	endif
	
	.code
	
;******************
; Externs
;******************
	extern UX_VECCALL uXm_intrin_CPUFeatures:proc
	
;******************
; Proto
;******************
uXm_mm_add_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_add_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_sub_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_sub_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_mul_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_mul_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_div_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_div_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_sqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_sqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_rcp_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_rcp_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_rsqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_rsqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_min_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_min_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_max_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_max_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_and_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_andnot_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_or_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_xor_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpeq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpeq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmplt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmplt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmple_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmple_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpgt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpgt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpneq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpneq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpnlt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpnlt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpnle_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpnle_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpngt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpngt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpnge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpnge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpunord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpunord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_comieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_comilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_comile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_comige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_comigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_comineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_ucomieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_ucomilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_ucomile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_ucomigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_ucomige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_ucomineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cvt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
uXm_mm_cvtt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
uXm_mm_cvt_si2ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
uXm_mm_cvtss_f32 proto UX_VECCALL (real4) ;InXmm_A:xmmword
ifdef __X32__
uXm_mm_cvt_ps2pi proto UX_VECCALL (mmword) ;InXmm_A:xmmword
uXm_mm_cvtt_ps2pi proto UX_VECCALL (mmword) ;InXmm_A:xmmword
uXm_mm_cvt_pi2ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword
endif ;!__X32__
ifdef __X64__
uXm_mm_cvtss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
uXm_mm_cvttss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
uXm_mm_cvtsi64_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword
endif ;__X64__
uXm_mm_unpackhi_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_unpacklo_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_loadh_pi proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:ptr mmword
uXm_mm_movehl_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_movelh_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_storeh_pi proto UX_VECCALL (voidarg) ;Outmm_A:ptr mmword, InXmm_B:xmmword
uXm_mm_loadl_pi proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:ptr mmword
uXm_mm_storel_pi proto UX_VECCALL (voidarg) ;Outmm_A:ptr mmword, InXmm_B:xmmword
uXm_mm_movemask_ps proto UX_VECCALL (dword) ;InXmm_A:xmmword
ifdef __X32__
uXm_mm_pextrw_0 proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
uXm_mm_pextrw_1 proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
uXm_mm_pextrw_2 proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
uXm_mm_pextrw_3 proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
uXm_mm_pextrw proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
uXm_mm_pinsrw_0 proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
uXm_mm_pinsrw_1 proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
uXm_mm_pinsrw_2 proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
uXm_mm_pinsrw_3 proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
uXm_mm_pinsrw proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
uXm_mm_pmaxsw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pmaxub proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pminsw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pminub proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pmovmskb proto UX_VECCALL (dword) ;Inmm_A:mmword
uXm_mm_pmulhuw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_maskmovq proto UX_VECCALL (voidarg) ;Inmm_A:mmword, Inmm_B:mmword, OutPInt8_C:ptr byte
uXm_mm_pavgb proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_pavgw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
uXm_mm_psadbw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
endif ;!__X32__
uXm_mmf_set_ss proto UX_VECCALL (xmmword) ;Inreal4_A:real4
uXm_mmf_set_ps1 proto UX_VECCALL (xmmword) ;Inreal4_A:real4
uXm_mmf_set_ps proto UX_VECCALL (xmmword) ;Inreal4_D:real4 ;Inreal4_C:real4 ;Inreal4_B:real4 ;Inreal4_A:real4
uXm_mmf_setr_ps proto UX_VECCALL (xmmword) ;Inreal4_A:real4 ;Inreal4_B:real4 ;Inreal4_C:real4 ;Inreal4_D:real4
uXm_mmf_setzero_ps proto UX_VECCALL (xmmword)
uXm_mmf_load_ss proto UX_VECCALL (xmmword) ;InPreal4_A:ptr real4
uXm_mmf_load_ps1 proto UX_VECCALL (xmmword) ;InPreal4_A:ptr real4
uXm_mmf_load_ps proto UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword
uXm_mmf_loadr_ps proto UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword
uXm_mmf_loadu_ps proto UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword
uXm_mmf_loadur_ps proto UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword
uXm_mm_set_ss proto UX_VECCALL (xmmword) ;Inreal4_A:real4
uXm_mm_set_ps1 proto UX_VECCALL (xmmword) ;Inreal4_A:real4
uXm_mm_set_ps proto UX_VECCALL (xmmword) ;Inreal4_D:real4 ;Inreal4_C:real4 ;Inreal4_B:real4 ;Inreal4_A:real4
uXm_mm_setr_ps proto UX_VECCALL (xmmword) ;Inreal4_A:real4 ;Inreal4_B:real4 ;Inreal4_C:real4 ;Inreal4_D:real4
uXm_mm_setzero_ps proto UX_VECCALL (xmmword)
uXm_mm_load_ss proto UX_VECCALL (xmmword) ;InPreal4_A:ptr real4
uXm_mm_load_ps1 proto UX_VECCALL (xmmword) ;InPreal4_A:ptr real4
uXm_mm_load_ps proto UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword
uXm_mm_loadr_ps proto UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword
uXm_mm_loadu_ps proto UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword
uXm_mm_loadur_ps proto UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword
uXm_mm_store_ss proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword
uXm_mm_store_ps1 proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword
uXm_mm_storeu_ps1 proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword
uXm_mm_store_ps proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
uXm_mm_storeu_ps proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
uXm_mm_storer_ps proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
uXm_mm_storeur_ps proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
uXm_mm_prefetch_0 proto UX_VECCALL (voidarg) ;InPInt8_A:ptr byte
uXm_mm_prefetch_1 proto UX_VECCALL (voidarg) ;InPInt8_A:ptr byte
uXm_mm_prefetch_2 proto UX_VECCALL (voidarg) ;InPInt8_A:ptr byte
uXm_mm_prefetch_3 proto UX_VECCALL (voidarg) ;InPInt8_A:ptr byte
uXm_mm_prefetch proto UX_VECCALL (voidarg) ;InPInt8_A:ptr byte, InInt_BSel:dword
ifdef __X32__
uXm_mm_stream_pi proto UX_VECCALL (dword) ;OutPmm_A:ptr mmword,Inmm_B:mmword
endif ;__X32__
uXm_mm_stream_ps proto UX_VECCALL (dword) ;OutPfloat_A:ptr xmmword, InXmm_B:xmmword
uXm_mm_move_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_move_ps proto UX_VECCALL (voidarg) ;OutXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_mover_ps proto UX_VECCALL (voidarg) ;OutXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_sfence proto UX_VECCALL (voidarg)
uXm_mm_getcsr proto UX_VECCALL (dword)
uXm_mm_setcsr proto UX_VECCALL (voidarg) ;InInt_A:dword

;******************
; Proc
;******************

;******************
; FP, arithmetic
;******************
			align 16
uXm_mm_add_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addss			xmm0,			xmm1

			ret
uXm_mm_add_ss endp

			align 16
uXm_mm_add_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addps			xmm0,			xmm1

			ret
uXm_mm_add_ps endp
	
			align 16
uXm_mm_sub_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subss			xmm0,			xmm1

			ret
uXm_mm_sub_ss endp

			align 16
uXm_mm_sub_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subps			xmm0,			xmm1

			ret
uXm_mm_sub_ps endp

			align 16
uXm_mm_mul_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulss			xmm0,			xmm1

			ret
uXm_mm_mul_ss endp

			align 16
uXm_mm_mul_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulps			xmm0,			xmm1

			ret
uXm_mm_mul_ps endp

			align 16
uXm_mm_div_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divss			xmm0,			xmm1

			ret
uXm_mm_div_ss endp

			align 16
uXm_mm_div_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divps			xmm0,			xmm1

			ret
uXm_mm_div_ps endp

			align 16
uXm_mm_sqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtss			xmm0,			xmm1

			ret
uXm_mm_sqrt_ss endp

			align 16
uXm_mm_sqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtps			xmm0,			xmm1

			ret
uXm_mm_sqrt_ps endp

			align 16
uXm_mm_rcp_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpss			xmm0,			xmm1

			ret
uXm_mm_rcp_ss endp

			align 16
uXm_mm_rcp_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpps			xmm0,			xmm1

			ret
uXm_mm_rcp_ps endp

			align 16
uXm_mm_rsqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtss			xmm0,			xmm1

			ret
uXm_mm_rsqrt_ss endp

			align 16
uXm_mm_rsqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtps			xmm0,			xmm1

			ret
uXm_mm_rsqrt_ps endp

			align 16
uXm_mm_min_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minss			xmm0,			xmm1

			ret
uXm_mm_min_ss endp

			align 16
uXm_mm_min_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minps			xmm0,			xmm1

			ret
uXm_mm_min_ps endp

			align 16
uXm_mm_max_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxss			xmm0,			xmm1

			ret
uXm_mm_max_ss endp

			align 16
uXm_mm_max_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxps			xmm0,			xmm1

			ret
uXm_mm_max_ps endp

;******************
; FP, logical
;******************
			align 16
uXm_mm_and_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andps			xmm0,			xmm1

			ret
uXm_mm_and_ps endp

			align 16
uXm_mm_andnot_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andnps			xmm0,			xmm1

			ret
uXm_mm_andnot_ps endp

			align 16
uXm_mm_or_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			orps			xmm0,			xmm1

			ret
uXm_mm_or_ps endp

			align 16
uXm_mm_xor_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			xorps			xmm0,			xmm1

			ret
uXm_mm_xor_ps endp

;******************
; FP, comparison
;******************
			align 16
uXm_mm_cmpeq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpeqss			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_EQ
		.endif
	else
			cmpeqss			xmm0,			xmm1
	endif

			ret
uXm_mm_cmpeq_ss endp

			align 16
uXm_mm_cmpeq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpeqps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_EQ
		.endif
	else
			cmpeqps			xmm0,			xmm1
	endif

			ret
uXm_mm_cmpeq_ps endp

			align 16
uXm_mm_cmplt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpltss			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_LT
		.endif
	else
			cmpltss			xmm0,			xmm1
	endif

			ret
uXm_mm_cmplt_ss endp

			align 16
uXm_mm_cmplt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpltps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_LT
		.endif
	else
			cmpltps			xmm0,			xmm1
	endif

			ret
uXm_mm_cmplt_ps endp

			align 16
uXm_mm_cmple_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpless			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_LE
		.endif
	else
			cmpless			xmm0,			xmm1
	endif

			ret
uXm_mm_cmple_ss endp

			align 16
uXm_mm_cmple_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpleps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_LE
		.endif
	else
			cmpleps			xmm0,			xmm1
	endif

			ret
uXm_mm_cmple_ps endp

			align 16
uXm_mm_cmpgt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnless		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_NLE
		.endif
	else
			cmpnless		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpgt_ss endp

			align 16
uXm_mm_cmpgt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnleps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_NLE
		.endif
	else
			cmpnleps		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpgt_ps endp

			align 16
uXm_mm_cmpge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnltss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_NLT
		.endif
	else
			cmpnltss		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpge_ss endp

			align 16
uXm_mm_cmpge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnltps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_NLT
		.endif
	else
			cmpnltps		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpge_ps endp

			align 16
uXm_mm_cmpneq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpneqss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_NEQ
		.endif
	else
			cmpneqss		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpneq_ss endp

			align 16
uXm_mm_cmpneq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpneqps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_NEQ
		.endif
	else
			cmpneqps		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpneq_ps endp

			align 16
uXm_mm_cmpnlt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnltss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_NLT
		.endif
	else
			cmpnltss		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpnlt_ss endp

			align 16
uXm_mm_cmpnlt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnltps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_NLT
		.endif
	else
			cmpnltps		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpnlt_ps endp

			align 16
uXm_mm_cmpnle_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnless		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_NLE
		.endif
	else
			cmpnless		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpnle_ss endp

			align 16
uXm_mm_cmpnle_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnleps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_NLE
		.endif
	else
			cmpnleps		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpnle_ps endp

			align 16
uXm_mm_cmpngt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpless			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_LE
		.endif
	else
			cmpless			xmm0,			xmm1
	endif

			ret
uXm_mm_cmpngt_ss endp

			align 16
uXm_mm_cmpngt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpleps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_LE
		.endif
	else
			cmpleps			xmm0,			xmm1
	endif

			ret
uXm_mm_cmpngt_ps endp

			align 16
uXm_mm_cmpnge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpltss			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_LT
		.endif
	else
			cmpltss			xmm0,			xmm1
	endif

			ret
uXm_mm_cmpnge_ss endp

			align 16
uXm_mm_cmpnge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpltps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_LT
		.endif
	else
			cmpltps			xmm0,			xmm1
	endif

			ret
uXm_mm_cmpnge_ps endp

			align 16
uXm_mm_cmpord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpordss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_ORD
		.endif
	else
			cmpordss		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpord_ss endp

			align 16
uXm_mm_cmpord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpordps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_ORD
		.endif
	else
			cmpordps		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpord_ps endp

			align 16
uXm_mm_cmpunord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpunordss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_UNORD
		.endif
	else
			cmpunordss		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpunord_ss endp

			align 16
uXm_mm_cmpunord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpunordps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_UNORD
		.endif
	else
			cmpunordps		xmm0,			xmm1
	endif

			ret
uXm_mm_cmpunord_ps endp

;******************
; FP, comparison return int
;******************
			align 16
uXm_mm_comieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			je label_comieq_ss
			xor				rreturn,			rreturn
	label_comieq_ss:
			mov				breturn,			true

			ret
uXm_mm_comieq_ss endp

			align 16
uXm_mm_comilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb label_comilt_ss
			xor				rreturn,			rreturn
	label_comilt_ss:
			mov				breturn,			true

			ret
uXm_mm_comilt_ss endp

			align 16
uXm_mm_comile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe label_comile_ss
			xor				rreturn,			rreturn
	label_comile_ss:
			mov				breturn,			true

			ret
uXm_mm_comile_ss endp

			align 16
uXm_mm_comigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja label_comigt_ss
			xor				rreturn,			rreturn
	label_comigt_ss:
			mov				breturn,			true

			ret
uXm_mm_comigt_ss endp

			align 16
uXm_mm_comige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae label_comige_ss
			xor				rreturn,			rreturn
	label_comige_ss:
			mov				breturn,			true

			ret
uXm_mm_comige_ss endp

			align 16
uXm_mm_comineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne label_comineq_ss
			xor				rreturn,			rreturn
	label_comineq_ss:
			mov				breturn,			true

			ret
uXm_mm_comineq_ss endp

			align 16
uXm_mm_ucomieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			ucomiss			xmm0,			xmm1
			je label_ucomieq_ss
			xor				rreturn,			rreturn
	label_ucomieq_ss:
			mov				breturn,			true

			ret
uXm_mm_ucomieq_ss endp

			align 16
uXm_mm_ucomilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb label_ucomilt_ss
			xor				rreturn,			rreturn
	label_ucomilt_ss:
			mov				breturn,			true

			ret
uXm_mm_ucomilt_ss endp

			align 16
uXm_mm_ucomile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe label_ucomile_ss
			xor				rreturn,			rreturn
	label_ucomile_ss:
			mov				breturn,			true

			ret
uXm_mm_ucomile_ss endp

			align 16
uXm_mm_ucomigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja label_ucomigt_ss
			xor				rreturn,			rreturn
	label_ucomigt_ss:
			mov				breturn,			true

			ret
uXm_mm_ucomigt_ss endp

			align 16
uXm_mm_ucomige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae label_ucomige_ss
			xor				rreturn,			rreturn
	label_ucomige_ss:
			mov				breturn,			true

			ret
uXm_mm_ucomige_ss endp

			align 16
uXm_mm_ucomineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne label_ucomineq_ss
			xor				rreturn,			rreturn
	label_ucomineq_ss:
			mov				breturn,			true

			ret
uXm_mm_ucomineq_ss endp


;******************
; FP, conversions
;******************
			align 16
uXm_mm_cvt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvtss2si			dreturn,			xmm0

			ret
uXm_mm_cvt_ss2si endp

			align 16
uXm_mm_cvtt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvttss2si			dreturn,			xmm0

			ret
uXm_mm_cvtt_ss2si endp

			align 16
uXm_mm_cvt_si2ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
			
			cvtsi2ss			xmm0,			dparam2

			ret
uXm_mm_cvt_si2ss endp

			align 16
uXm_mm_cvtss_f32 proc UX_VECCALL (real4) ;InXmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
uXm_mm_cvtss_f32 endp

ifdef __X32__
;******************
; FP, conversions, Support for MMX extension intrinsics
;******************
			align 16
uXm_mm_cvt_ps2pi proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvtps2pi			mm0,			xmm0

			ret
uXm_mm_cvt_ps2pi endp

			align 16
uXm_mm_cvtt_ps2pi proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvttps2pi			mm0,			xmm0

			ret
uXm_mm_cvtt_ps2pi endp

			align 16
uXm_mm_cvt_pi2ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword
			
			cvtpi2ps			xmm0,			mm1

			ret
uXm_mm_cvt_pi2ps endp
endif ;__X32__

ifdef __X64__
;******************
; FP, conversions, 64-bit intrinsics
;******************
			align 16
uXm_mm_cvtss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvtss2si			qreturn,			xmm0

			ret
uXm_mm_cvtss_si64 endp

			align 16
uXm_mm_cvttss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvttss2si			qreturn,			xmm0

			ret
uXm_mm_cvttss_si64 endp

			align 16
uXm_mm_cvtsi64_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword
			
			cvtsi2ss			xmm0,			rparam2

			ret
uXm_mm_cvtsi64_ss endp
endif ;__X64__

;******************
; FP, misc
;******************
			align 16
uXm_mm_unpackhi_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpckhps 				xmm0,			xmm1

			ret
uXm_mm_unpackhi_ps endp

			align 16
uXm_mm_unpacklo_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpcklps 				xmm0,			xmm1

			ret
uXm_mm_unpacklo_ps endp

			align 16
uXm_mm_loadh_pi proc UX_VECCALL (xmmword) ;frame InXmm_A:xmmword, InPmm_B:ptr mmword
			
			movhps 				xmm0,	mmword ptr [rparam2]

			ret
uXm_mm_loadh_pi endp

			align 16
uXm_mm_movehl_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movhlps 				xmm0,			xmm1

			ret
uXm_mm_movehl_ps endp

			align 16
uXm_mm_movelh_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movlhps 				xmm0,			xmm1

			ret
uXm_mm_movelh_ps endp

			align 16
uXm_mm_storeh_pi proc UX_VECCALL (voidarg) ;OutPmm_A:ptr mmword, InXmm_B:xmmword
			
			movhps 		mmword ptr [rparam1],			xmm1

			ret
uXm_mm_storeh_pi endp

			align 16
uXm_mm_loadl_pi proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InPmm_B:ptr mmword
			
			movlps 				xmm0,	mmword ptr [rparam2]

			ret
uXm_mm_loadl_pi endp

			align 16
uXm_mm_storel_pi proc UX_VECCALL (voidarg) ;OutPmm_A:ptr mmword, InXmm_B:xmmword
			
			movlps 		mmword ptr [rparam1],			xmm1

			ret
uXm_mm_storel_pi endp

			align 16
uXm_mm_movemask_ps proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			movmskps			dreturn,				xmm1

			ret
uXm_mm_movemask_ps endp

ifdef __X32__
;******************
; Integer (MMX) extensions
;******************
			align 8
uXm_mm_pextrw_0 proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			pextrw			dreturn,			mm0,			0

			ret
uXm_mm_pextrw_0 endp

			align 8
uXm_mm_pextrw_1 proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			pextrw			dreturn,			mm0,			1

			ret
uXm_mm_pextrw1 endp

			align 8
uXm_mm_pextrw_2 proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			pextrw			dreturn,			mm0,			2

			ret
uXm_mm_pextrw_2 endp

			align 8
uXm_mm_pextrw_3 proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			pextrw			dreturn,			mm0,			3

			ret
uXm_mm_pextrw_3 endp

			align 8
uXm_mm_pextrw proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[pextrwjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			pextrwjmptable
			sub				ebx,			esi
			add				ebx,			rax
			xor				eax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
					
			pextrwword		textequ		<dword>
			pextrwiword		textequ		<dd>
		
		pextrwjmptable label pextrwword
			pextrwiword	offset pextrw_0, offset pextrw_1, offset pextrw_2, offset pextrw_3
			
			pextrw_0 label pextrwword
				jmp		uXm_mm_pextrw_0
			pextrw_1 label pextrwword
				jmp		uXm_mm_pextrw_1
			pextrw_2 label pextrwword
				jmp		uXm_mm_pextrw_2
			pextrw_3 label pextrwword
				jmp		uXm_mm_pextrw_3

uXm_mm_pextrw endp

			align 8
uXm_mm_pinsrw_0 proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			pinsrw			mm0,			dparam2,			0

			ret
uXm_mm_pinsrw_0 endp

			align 8
uXm_mm_pinsrw_1 proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			pinsrw			mm0,			dparam2,			1

			ret
uXm_mm_pinsrw1 endp

			align 8
uXm_mm_pinsrw_2 proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			pinsrw			mm0,			dparam2,			2

			ret
uXm_mm_pinsrw_2 endp

			align 8
uXm_mm_pinsrw_3 proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			pinsrw			mm0,			dparam2,			3

			ret
uXm_mm_pinsrw_3 endp

			align 8
uXm_mm_pinsrw proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[pextrwjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			pextrwjmptable
			sub				ebx,			esi
			add				ebx,			rax
			xor				eax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
					
			pinsrwword		textequ		<dword>
			pinsrwiword		textequ		<dd>
		
		pinsrwjmptable label pinsrwword
			pinsrwiword	offset pinsrw_0, offset pinsrw_1, offset pinsrw_2, offset pinsrw_3
			
			pinsrw_0 label pinsrwword
				jmp		uXm_mm_pinsrw_0
			pinsrw_1 label pinsrwword
				jmp		uXm_mm_pinsrw_1
			pinsrw_2 label pinsrwword
				jmp		uXm_mm_pinsrw_2
			pinsrw_3 label pinsrwword
				jmp		uXm_mm_pinsrw_3

uXm_mm_pinsrw endp

			align 8
uXm_mm_pmaxsw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pmaxsw			mm0,			mm1

			ret
uXm_mm_pmaxsw endp

			align 8
uXm_mm_pmaxub proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pmaxub			mm0,			mm1

			ret
uXm_mm_pmaxub endp

			align 8
uXm_mm_pminsw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pminsw			mm0,			mm1

			ret
uXm_mm_pminsw endp

			align 8
uXm_mm_pminub proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pminub			mm0,			mm1

			ret
uXm_mm_pminub endp

			align 8
uXm_mm_pmovmskb proc UX_VECCALL (dword) ;Inmm_A:mmword
			
			pmovmskb		dreturn,			mm0

			ret
uXm_mm_pmovmskb endp

			align 8
uXm_mm_pmulhuw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pmulhuw			mm0,			mm1

			ret
uXm_mm_pmulhuw endp

			align 8
uXm_mm_maskmovq proc UX_VECCALL (voidarg) ;Inmm_A:mmword, Inmm_B:mmword, OutInt8_C:ptr byte
			
			maskmovq			mm0,			mm1,			byte ptr [rparam3]

			ret
uXm_mm_maskmovq endp

			align 8
uXm_mm_pavgb proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pavgb			mm0,			mm1

			ret
uXm_mm_pavgb endp

			align 8
uXm_mm_pavgw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pavgw			mm0,			mm1

			ret
uXm_mm_pavgw endp

			align 8
uXm_mm_psadbw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			psadbw			mm0,			mm1

			ret
uXm_mm_psadbw endp
endif ;__X32__

uXm_mmf_set_ss proc UX_VECCALL (xmmword) ;Inreal4_A:real4

			movss			xmm0,			xmm0
			ret
uXm_mmf_set_ss endp

uXm_mmf_set_ps1 proc UX_VECCALL (xmmword) ;Inreal4_A:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
uXm_mmf_set_ps1 endp

uXm_mmf_set_ps proc UX_VECCALL (xmmword) ;Inreal4_D:real4 ;Inreal4_C:real4 ;Inreal4_B:real4 ;Inreal4_A:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			uXm_mm_shuffle4(0,0,0,0)

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			uXm_mm_shuffle4(3,0,0,0)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			uXm_mm_shuffle4(3,2,0,0)

			movss			xmm0,			xmm3

			ret
uXm_mmf_set_ps endp

uXm_mmf_setr_ps proc UX_VECCALL (xmmword) ;Inreal4_A:real4 ;Inreal4_B:real4 ;Inreal4_C:real4 ;Inreal4_D:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(0,0,0,0)

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(0,0,0,3)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(0,0,2,3)

			movss			xmm0,			xmm3
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(3,2,1,0)

			ret
uXm_mmf_setr_ps endp

uXm_mmf_setzero_ps proc UX_VECCALL (xmmword)

			xorps			xmm0,			xmm0

			ret
uXm_mmf_setzero_ps endp

uXm_mmf_load_ss proc UX_VECCALL (xmmword) ;InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam1]

			ret
uXm_mmf_load_ss endp

uXm_mmf_load_ps1 proc UX_VECCALL (xmmword) ;InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam1]
			shufps			xmm0,			xmm0,			0

			ret
uXm_mmf_load_ps1 endp

uXm_mmf_load_ps proc UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam1]

			ret
uXm_mmf_load_ps endp

uXm_mmf_loadr_ps proc UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam1]
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(3,2,1,0)

			ret
uXm_mmf_loadr_ps endp

uXm_mmf_loadu_ps proc UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam1]

			ret
uXm_mmf_loadu_ps endp

uXm_mmf_loadur_ps proc UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam1]
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(3,2,1,0)

			ret
uXm_mmf_loadur_ps endp

uXm_mm_set_ss proc UX_VECCALL (xmmword) ;Inreal4_A:real4

			movss			xmm0,			xmm0
			ret
uXm_mm_set_ss endp

uXm_mm_set_ps1 proc UX_VECCALL (xmmword) ;Inreal4_A:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
uXm_mm_set_ps1 endp

uXm_mm_set_ps proc UX_VECCALL (xmmword) ;Inreal4_D:real4 ;Inreal4_C:real4 ;Inreal4_B:real4 ;Inreal4_A:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			uXm_mm_shuffle4(0,0,0,0)

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			uXm_mm_shuffle4(3,0,0,0)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			uXm_mm_shuffle4(3,2,0,0)

			movss			xmm0,			xmm3

			ret
uXm_mm_set_ps endp

uXm_mm_setr_ps proc UX_VECCALL (xmmword) ;Inreal4_A:real4 ;Inreal4_B:real4 ;Inreal4_C:real4 ;Inreal4_D:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(0,0,0,0)

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(0,0,0,3)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(0,0,2,3)

			movss			xmm0,			xmm3
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(3,2,1,0)

			ret
uXm_mm_setr_ps endp

uXm_mm_setzero_ps proc UX_VECCALL (xmmword)

			xorps			xmm0,			xmm0

			ret
uXm_mm_setzero_ps endp

uXm_mm_load_ss proc UX_VECCALL (xmmword) ;InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam1]

			ret
uXm_mm_load_ss endp

uXm_mm_load_ps1 proc UX_VECCALL (xmmword) ;InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam1]
			shufps			xmm0,			xmm0,			0

			ret
uXm_mm_load_ps1 endp

uXm_mm_load_ps proc UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam1]

			ret
uXm_mm_load_ps endp

uXm_mm_loadr_ps proc UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam1]
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(3,2,1,0)

			ret
uXm_mm_loadr_ps endp

uXm_mm_loadu_ps proc UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam1]

			ret
uXm_mm_loadu_ps endp

uXm_mm_loadur_ps proc UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam1]
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(3,2,1,0)

			ret
uXm_mm_loadur_ps endp

uXm_mm_store_ss proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movss		real4 ptr [rparam1],			xmm1

			ret
uXm_mm_store_ss endp

uXm_mm_store_ps1 proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			0
			movaps		xmmword ptr [rparam1],			xmm0

			ret
uXm_mm_store_ps1 endp

uXm_mm_storeu_ps1 proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			0
			movups		xmmword ptr [rparam1],			xmm1

			ret
uXm_mm_storeu_ps1 endp

uXm_mm_store_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
uXm_mm_store_ps endp

uXm_mm_storeu_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movups		xmmword ptr [rparam1],			xmm1

			ret
uXm_mm_storeu_ps endp

uXm_mm_storer_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(3,2,1,0)
			movaps		xmmword ptr [rparam1],			xmm0

			ret
uXm_mm_storer_ps endp

uXm_mm_storeur_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(3,2,1,0)
			movups		xmmword ptr [rparam1],			xmm0

			ret
uXm_mm_storeur_ps endp

uXm_mm_prefetch_0 proc UX_VECCALL (voidarg) ;InPInt8_A:ptr byte

			prefetchnta			byte ptr [rparam1]

			ret
uXm_mm_prefetch_0 endp

uXm_mm_prefetch_1 proc UX_VECCALL (voidarg) ;InPInt8_A:ptr byte

			prefetcht0			byte ptr [rparam1]

			ret
uXm_mm_prefetch_1 endp

uXm_mm_prefetch_2 proc UX_VECCALL (voidarg) ;InPInt8_A:ptr byte

			prefetcht1			byte ptr [rparam1]

			ret
uXm_mm_prefetch_2 endp

uXm_mm_prefetch_3 proc UX_VECCALL (voidarg) ;InPInt8_A:ptr byte

			prefetcht2			byte ptr [rparam1]

			ret
uXm_mm_prefetch_3 endp

uXm_mm_prefetch proc UX_VECCALL (voidarg) ;InPInt8_A:ptr byte, InInt_BSel:dword

		ifndef __X64__
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [rparam2]
			lea				ebx,			[prefetchjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			prefetchjmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[prefetchjmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			prefetchjmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif
			
		ifndef __X64__			
			prefetchword		textequ		<dword>
			prefetchiword		textequ		<dd>
		else
			prefetchword		textequ		<qword>
			prefetchiword		textequ		<dq>
		endif
		
		prefetchjmptable label prefetchword
			prefetchiword	offset prefetch_0, offset prefetch_1, offset prefetch_2, offset prefetch_3

			prefetch_0 label prefetchword
				jmp		uXm_mm_prefetch_0
			prefetch_1 label prefetchword
				jmp		uXm_mm_prefetch_1
			prefetch_2 label prefetchword
				jmp		uXm_mm_prefetch_2
			prefetch_3 label prefetchword
				jmp		uXm_mm_prefetch_3
			
uXm_mm_prefetch endp

ifdef __X32__
			align 8
uXm_mm_stream_pi proc UX_VECCALL (dword) ;OutPmm_A:ptr mmword,Inmm_B:mmword
			
			movntq 		mmword ptr [rparam1],			mm1

			ret
uXm_mm_stream_pi endp
endif ;__X32__

			align 16
uXm_mm_stream_ps proc UX_VECCALL (dword) ;OutPfloat_A:ptr xmmword, InXmm_B:xmmword
			
			movntps 		xmmword ptr [rparam1],			xmm1

			ret
uXm_mm_stream_ps endp

			align 16
uXm_mm_move_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movss 			xmm0,			xmm1

			ret
uXm_mm_move_ss endp

			align 16
uXm_mm_move_ps proc UX_VECCALL (voidarg) ;OutXmm_A:xmmword, InXmm_B:xmmword
			
			movaps 			xmm0,			xmm1

			ret
uXm_mm_move_ps endp

			align 16
uXm_mm_mover_ps proc UX_VECCALL (voidarg) ;OutXmm_A:xmmword, InXmm_B:xmmword
			
			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			uXm_mm_shuffler4(3,2,1,0)

			ret
uXm_mm_mover_ps endp

			align 16
uXm_mm_sfence proc UX_VECCALL (voidarg)
			
			sfence

			ret
uXm_mm_sfence endp

			align 4
uXm_mm_getcsr proc UX_VECCALL (dword)
			
			stmxcsr			dword ptr [rreturn]

			ret
uXm_mm_getcsr endp

			align 4
uXm_mm_setcsr proc UX_VECCALL (voidarg) ;InInt_A:dword
			
			ldmxcsr			dword ptr [rparam1]

			ret
uXm_mm_setcsr endp

	end
