
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
uXm_mm_add_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_add_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_sub_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_sub_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_mul_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_mul_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_sqrt_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_sqrt_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_div_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_div_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_min_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_min_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_max_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_max_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_and_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_andnot_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_or_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_xor_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpeq_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpeq_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmplt_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmplt_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmple_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmple_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpgt_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpgt_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpge_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpge_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpneq_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpneq_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpnlt_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpnlt_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpnle_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpnle_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpngt_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpngt_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpnge_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpnge_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpord_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpord_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpunord_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cmpunord_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_comieq_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_comilt_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_comile_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_comige_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_comigt_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_comineq_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_ucomieq_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_ucomilt_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_ucomile_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_ucomigt_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_ucomige_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_ucomineq_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cvtepi32_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_cvtpd_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_cvttpd_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_cvtepi32_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_cvtps_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_cvttps_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_cvtpd_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_cvtps_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_cvtsd_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cvtss_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_cvtsd_si32 proto UX_VECCALL (dword) ;InXmm_A:xmmword
uXm_mm_cvttsd_si32 proto UX_VECCALL (dword) ;InXmm_A:xmmword
uXm_mm_cvtsi32_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
ifdef __X32__
uXm_mm_cvtpd_pi32 proto UX_VECCALL (mmword) ;InXmm_A:xmmword
uXm_mm_cvttpd_pi32 proto UX_VECCALL (mmword) ;InXmm_A:xmmword
uXm_mm_cvtpi32_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword
endif ;!__X32__
uXm_mm_unpackhi_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_unpacklo_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_movemask_pd proto UX_VECCALL (dword) ;InXmm_A:xmmword
uXm_mm_load_sd proto UX_VECCALL (xmmword) ;InPreal8_A:ptr real8
uXm_mm_load_pd1 proto UX_VECCALL (xmmword) ;InPreal8_A:ptr real8
uXm_mm_load_pd proto UX_VECCALL (xmmword) ;InPreal8_A:ptr xmmword
uXm_mm_loadr_pd proto UX_VECCALL (xmmword) ;InPreal8_A:ptr xmmword
uXm_mm_loadu_pd proto UX_VECCALL (xmmword) ;InPreal8_A:ptr xmmword
uXm_mm_loadur_pd proto UX_VECCALL (xmmword) ;InPreal8_A:ptr xmmword
uXm_mm_loadh_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InPreal8_B:ptr xmmword
uXm_mm_loadl_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InPreal8_B:ptr xmmword
uXm_mm_set_sd proto UX_VECCALL (xmmword) ;Inreal8_A:real8
uXm_mm_set_pd1 proto UX_VECCALL (xmmword) ;Inreal8_A:real8
uXm_mm_set_pd proto UX_VECCALL (xmmword) ;Inreal8_B:real8, Inreal8_A:real8
uXm_mm_setr_pd proto UX_VECCALL (xmmword) ;Inreal8_A:real8, Inreal8_B:real8
uXm_mm_setzero_pd proto UX_VECCALL (xmmword)
uXm_mm_store_sd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword
uXm_mm_store_pd1 proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword
uXm_mm_storeu_pd1 proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword
uXm_mm_store_pd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
uXm_mm_storeu_pd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
uXm_mm_storer_pd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
uXm_mm_storeur_pd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
uXm_mm_storeh_pd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
uXm_mm_storel_pd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
uXm_mm_add_epi8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_add_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_add_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
ifdef __X32__
uXm_mm_add_si64 proto UX_VECCALL (mmword) ;InXmm_A:mmword, InXmm_B:mmword
endif ;!__X32__
uXm_mm_add_epi64 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_adds_epi8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_adds_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_adds_epu8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_adds_epu16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_avg_epu8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_avg_epu16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_madd_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_max_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_max_epu8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_min_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_min_epu8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_mulhi_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_mulhi_epu16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_mullo_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
ifdef __X32__
uXm_mm_mul_su32 proto UX_VECCALL (mmword) ;InXmm_A:mmword, InXmm_B:mmword
endif ;!__X32__
uXm_mm_mul_epu32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_sad_epu8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_sub_epi8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_sub_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_sub_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
ifdef __X32__
uXm_mm_sub_si64 proto UX_VECCALL (mmword) ;InXmm_A:mmword, InXmm_B:mmword
endif ;!__X32__
uXm_mm_sub_epi64 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_subs_epi8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_subs_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_subs_epu8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_subs_epu16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_and_si128 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_andnot_si128 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword			
uXm_mm_or_si128 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_xor_si128 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword


;******************
; Proc
;******************

;******************
; DP, arithmetic
;******************
			align 16
uXm_mm_add_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addsd			xmm0,			xmm1

			ret
uXm_mm_add_sd endp

			align 16
uXm_mm_add_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addpd			xmm0,			xmm1

			ret
uXm_mm_add_pd endp
	
			align 16
uXm_mm_sub_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subsd			xmm0,			xmm1

			ret
uXm_mm_sub_sd endp

			align 16
uXm_mm_sub_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subpd			xmm0,			xmm1

			ret
uXm_mm_sub_pd endp

			align 16
uXm_mm_mul_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulsd			xmm0,			xmm1

			ret
uXm_mm_mul_sd endp

			align 16
uXm_mm_mul_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulpd			xmm0,			xmm1

			ret
uXm_mm_mul_pd endp

			align 16
uXm_mm_sqrt_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtsd			xmm0,			xmm1

			ret
uXm_mm_sqrt_sd endp

			align 16
uXm_mm_sqrt_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtpd			xmm0,			xmm1

			ret
uXm_mm_sqrt_pd endp

			align 16
uXm_mm_div_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divsd			xmm0,			xmm1

			ret
uXm_mm_div_sd endp

			align 16
uXm_mm_div_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divpd			xmm0,			xmm1

			ret
uXm_mm_div_pd endp

			align 16
uXm_mm_min_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minsd			xmm0,			xmm1

			ret
uXm_mm_min_sd endp

			align 16
uXm_mm_min_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minpd			xmm0,			xmm1

			ret
uXm_mm_min_pd endp

			align 16
uXm_mm_max_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxsd			xmm0,			xmm1

			ret
uXm_mm_max_sd endp

			align 16
uXm_mm_max_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxpd			xmm0,			xmm1

			ret
uXm_mm_max_pd endp

;******************
; DP, logicals
;******************
			align 16
uXm_mm_and_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andpd			xmm0,			xmm1

			ret
uXm_mm_and_pd endp

			align 16
uXm_mm_andnot_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andnpd			xmm0,			xmm1

			ret
uXm_mm_andnot_pd endp

			align 16
uXm_mm_or_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			orpd			xmm0,			xmm1

			ret
uXm_mm_or_pd endp

			align 16
uXm_mm_xor_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			xorpd			xmm0,			xmm1

			ret
uXm_mm_xor_pd endp

;******************
; DP, comparison
;******************
			align 16
uXm_mm_cmpeq_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpeqsd			xmm0,			xmm1

			ret
uXm_mm_cmpeq_sd endp

			align 16
uXm_mm_cmpeq_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpeqpd			xmm0,			xmm1

			ret
uXm_mm_cmpeq_pd endp

			align 16
uXm_mm_cmplt_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpltsd			xmm0,			xmm1

			ret
uXm_mm_cmplt_sd endp

			align 16
uXm_mm_cmplt_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpltpd			xmm0,			xmm1

			ret
uXm_mm_cmplt_pd endp

			align 16
uXm_mm_cmple_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmplesd			xmm0,			xmm1

			ret
uXm_mm_cmple_sd endp

			align 16
uXm_mm_cmple_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmplepd			xmm0,			xmm1

			ret
uXm_mm_cmple_pd endp

			align 16
uXm_mm_cmpgt_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnlesd		xmm0,			xmm1

			ret
uXm_mm_cmpgt_sd endp

			align 16
uXm_mm_cmpgt_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnlepd		xmm0,			xmm1

			ret
uXm_mm_cmpgt_pd endp

			align 16
uXm_mm_cmpge_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnltsd		xmm0,			xmm1

			ret
uXm_mm_cmpge_sd endp

			align 16
uXm_mm_cmpge_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnltpd		xmm0,			xmm1

			ret
uXm_mm_cmpge_pd endp

			align 16
uXm_mm_cmpneq_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpneqsd		xmm0,			xmm1

			ret
uXm_mm_cmpneq_sd endp

			align 16
uXm_mm_cmpneq_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpneqpd		xmm0,			xmm1

			ret
uXm_mm_cmpneq_pd endp

			align 16
uXm_mm_cmpnlt_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnltsd		xmm0,			xmm1

			ret
uXm_mm_cmpnlt_sd endp

			align 16
uXm_mm_cmpnlt_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnltpd		xmm0,			xmm1

			ret
uXm_mm_cmpnlt_pd endp

			align 16
uXm_mm_cmpnle_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnlesd		xmm0,			xmm1

			ret
uXm_mm_cmpnle_sd endp

			align 16
uXm_mm_cmpnle_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnlepd		xmm0,			xmm1

			ret
uXm_mm_cmpnle_pd endp

			align 16
uXm_mm_cmpngt_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmplesd			xmm0,			xmm1

			ret
uXm_mm_cmpngt_sd endp

			align 16
uXm_mm_cmpngt_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmplepd			xmm0,			xmm1

			ret
uXm_mm_cmpngt_pd endp

			align 16
uXm_mm_cmpnge_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpltsd			xmm0,			xmm1

			ret
uXm_mm_cmpnge_sd endp

			align 16
uXm_mm_cmpnge_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpltpd			xmm0,			xmm1

			ret
uXm_mm_cmpnge_pd endp

			align 16
uXm_mm_cmpord_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpordsd		xmm0,			xmm1

			ret
uXm_mm_cmpord_sd endp

			align 16
uXm_mm_cmpord_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpordpd		xmm0,			xmm1

			ret
uXm_mm_cmpord_pd endp

			align 16
uXm_mm_cmpunord_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpunordsd		xmm0,			xmm1

			ret
uXm_mm_cmpunord_sd endp

			align 16
uXm_mm_cmpunord_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpunordpd		xmm0,			xmm1

			ret
uXm_mm_cmpunord_pd endp

;******************
; DP, comparison return int
;******************
			align 16
uXm_mm_comieq_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			je label_comieq_sd
			xor				rreturn,			rreturn
			ret
	label_comieq_sd:
			mov				breturn,			true

			ret
uXm_mm_comieq_sd endp

			align 16
uXm_mm_comilt_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jl label_comilt_sd
			xor				rreturn,			rreturn
			ret
	label_comilt_sd:
			mov				breturn,			true

			ret
uXm_mm_comilt_sd endp

			align 16
uXm_mm_comile_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jle label_comile_sd
			xor				rreturn,			rreturn
			ret
	label_comile_sd:
			mov				breturn,			true

			ret
uXm_mm_comile_sd endp

			align 16
uXm_mm_comigt_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jg label_comigt_sd
			xor				rreturn,			rreturn
			ret
	label_comigt_sd:
			mov				breturn,			true

			ret
uXm_mm_comigt_sd endp

			align 16
uXm_mm_comige_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jge label_comige_sd
			xor				rreturn,			rreturn
			ret
	label_comige_sd:
			mov				breturn,			true

			ret
uXm_mm_comige_sd endp

			align 16
uXm_mm_comineq_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jne label_comineq_sd
			xor				rreturn,			rreturn
			ret
	label_comineq_sd:
			mov				breturn,			true

			ret
uXm_mm_comineq_sd endp

			align 16
uXm_mm_ucomieq_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			ucomisd			xmm0,			xmm1
			je label_ucomieq_sd
			xor				rreturn,			rreturn
			ret
	label_ucomieq_sd:
			mov				breturn,			true

			ret
uXm_mm_ucomieq_sd endp

			align 16
uXm_mm_ucomilt_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jl label_ucomilt_sd
			xor				rreturn,			rreturn
			ret
	label_ucomilt_sd:
			mov				breturn,			true

			ret
uXm_mm_ucomilt_sd endp

			align 16
uXm_mm_ucomile_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jle label_ucomile_sd
			xor				rreturn,			rreturn
			ret
	label_ucomile_sd:
			mov				breturn,			true

			ret
uXm_mm_ucomile_sd endp

			align 16
uXm_mm_ucomigt_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jg label_ucomigt_sd
			xor				rreturn,			rreturn
			ret
	label_ucomigt_sd:
			mov				breturn,			true

			ret
uXm_mm_ucomigt_sd endp

			align 16
uXm_mm_ucomige_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jge label_ucomige_sd
			xor				rreturn,			rreturn
			ret
	label_ucomige_sd:
			mov				breturn,			true

			ret
uXm_mm_ucomige_sd endp

			align 16
uXm_mm_ucomineq_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jne label_ucomineq_sd
			xor				rreturn,			rreturn
			ret
	label_ucomineq_sd:
			mov				breturn,			true

			ret
uXm_mm_ucomineq_sd endp

;******************
; DP, conversions
;******************
			align 16
uXm_mm_cvtepi32_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvtdq2pd			xmm0,			xmm1

			ret
uXm_mm_cvtepi32_pd endp

			align 16
uXm_mm_cvtpd_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvtpd2dq			xmm0,			xmm1

			ret
uXm_mm_cvtpd_epi32 endp

			align 16
uXm_mm_cvttpd_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvttpd2dq			xmm0,			xmm1

			ret
uXm_mm_cvttpd_epi32 endp

			align 16
uXm_mm_cvtepi32_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvtdq2ps			xmm0,			xmm1

			ret
uXm_mm_cvtepi32_ps endp

			align 16
uXm_mm_cvtps_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvtps2dq			xmm0,			xmm1

			ret
uXm_mm_cvtps_epi32 endp

			align 16
uXm_mm_cvttps_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvttps2dq			xmm0,			xmm1

			ret
uXm_mm_cvttps_epi32 endp

			align 16
uXm_mm_cvtpd_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvtpd2ps			xmm0,			xmm1

			ret
uXm_mm_cvtpd_ps endp

			align 16
uXm_mm_cvtps_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvtps2pd			xmm0,			xmm1

			ret
uXm_mm_cvtps_pd endp

			align 16
uXm_mm_cvtsd_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cvtsd2ss			xmm0,			xmm1

			ret
uXm_mm_cvtsd_ss endp

			align 16
uXm_mm_cvtss_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cvtss2sd			xmm0,			xmm1

			ret
uXm_mm_cvtss_sd endp

			align 16
uXm_mm_cvtsd_si32 proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvtsd2si			dreturn,			xmm0

			ret
uXm_mm_cvtsd_si32 endp

			align 16
uXm_mm_cvttsd_si32 proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvttsd2si			dreturn,			xmm0

			ret
uXm_mm_cvttsd_si32 endp

			align 16
uXm_mm_cvtsi32_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
			
			cvtsi2sd			xmm0,			dparam2

			ret
uXm_mm_cvtsi32_sd endp

ifdef __X32__
;******************
; DP, conversions, Support for MMX extension intrinsics
;******************
			align 16
uXm_mm_cvtpd_pi32 proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvtpd2pi			mm0,			xmm0

			ret
uXm_mm_cvtpd_pi32 endp

			align 16
uXm_mm_cvttpd_pi32 proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvttpd2pi			mm0,			xmm0

			ret
uXm_mm_cvttpd_pi32 endp

			align 16
uXm_mm_cvtpi32_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword
			
			cvtpi2pd			xmm0,			mm1

			ret
uXm_mm_cvtpi32_pd endp
endif ;__X32__

;******************
; DP, Misc
;******************
			align 16
uXm_mm_unpackhi_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpckhpd 				xmm0,			xmm1

			ret
uXm_mm_unpackhi_pd endp

			align 16
uXm_mm_unpacklo_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpcklpd 				xmm0,			xmm1

			ret
uXm_mm_unpacklo_pd endp

			align 16
uXm_mm_movemask_pd proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			movmskpd			dreturn,				xmm1

			ret
uXm_mm_movemask_pd endp

;******************
; DP, loads
;******************
			align 16
uXm_mm_load_sd proc UX_VECCALL (xmmword) ;InPreal8_A:ptr real8

			movsd			xmm0,		real8 ptr [rparam1]

			ret
uXm_mm_load_sd endp

			align 16
uXm_mm_load_pd1 proc UX_VECCALL (xmmword) ;InPreal8_A:ptr real8

			movsd			xmm0,		real8 ptr [rparam1]
			shufpd			xmm0,			xmm0,			0

			ret
uXm_mm_load_pd1 endp

			align 16
uXm_mm_load_pd proc UX_VECCALL (xmmword) ;InPreal8_A:ptr xmmword

			movapd			xmm0,		xmmword ptr [rparam1]

			ret
uXm_mm_load_pd endp

			align 16
uXm_mm_loadr_pd proc UX_VECCALL (xmmword) ;InPreal8_A:ptr xmmword

			movapd			xmm0,		xmmword ptr [rparam1]
			shufpd			xmm0,			xmm0,			uXm_mm_shuffler2(1,0)

			ret
uXm_mm_loadr_pd endp

			align 16
uXm_mm_loadu_pd proc UX_VECCALL (xmmword) ;InPreal8_A:ptr xmmword

			movupd			xmm0,		xmmword ptr [rparam1]

			ret
uXm_mm_loadu_pd endp

			align 16
uXm_mm_loadur_pd proc UX_VECCALL (xmmword) ;InPreal8_A:ptr xmmword

			movupd			xmm0,		xmmword ptr [rparam1]
			shufpd			xmm0,			xmm0,			uXm_mm_shuffler2(1,0)

			ret
uXm_mm_loadur_pd endp

			align 16
uXm_mm_loadh_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InPreal8_B:ptr xmmword

			movhpd			xmm0,		mmword ptr [rparam1]

			ret
uXm_mm_loadh_pd endp

			align 16
uXm_mm_loadl_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InPreal8_B:ptr xmmword

			movlpd			xmm0,		mmword ptr [rparam1]

			ret
uXm_mm_loadl_pd endp

;******************
; DP, sets
;******************
			align 16
uXm_mm_set_sd proc UX_VECCALL (xmmword) ;Inreal8_A:real8

			movsd			xmm0,			xmm0

			ret
uXm_mm_set_sd endp

			align 16
uXm_mm_set_pd1 proc UX_VECCALL (xmmword) ;Inreal8_A:real8

			movsd			xmm0,			xmm0
			shufpd			xmm0,			xmm0,			0

			ret
uXm_mm_set_pd1 endp

			align 16
uXm_mm_set_pd proc UX_VECCALL (xmmword) ;Inreal8_B:real8, Inreal8_A:real8

			movsd			xmm0,			xmm0
			shufpd			xmm0,			xmm0,			uXm_mm_shuffle2(0,0)

			movsd			xmm0,			xmm1

			ret
uXm_mm_set_pd endp

			align 16
uXm_mm_setr_pd proc UX_VECCALL (xmmword) ;Inreal8_A:real8, Inreal8_B:real8

			movsd			xmm0,			xmm0
			shufpd			xmm0,			xmm0,			uXm_mm_shuffler2(0,0)

			movsd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			uXm_mm_shuffler2(1,0)
			
			ret
uXm_mm_setr_pd endp

			align 16
uXm_mm_setzero_pd proc UX_VECCALL (xmmword)

			xorpd			xmm0,			xmm0

			ret
uXm_mm_setzero_pd endp

;******************
; DP, stores
;******************
			align 16
uXm_mm_store_sd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword

			movsd		real8 ptr [rparam1],			xmm1

			ret
uXm_mm_store_sd endp

			align 16
uXm_mm_store_pd1 proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			0
			movapd		xmmword ptr [rparam1],			xmm0

			ret
uXm_mm_store_pd1 endp

			align 16
uXm_mm_storeu_pd1 proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			0
			movupd		xmmword ptr [rparam1],			xmm0

			ret
uXm_mm_storeu_pd1 endp

			align 16
uXm_mm_store_pd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd		xmmword ptr [rparam1],			xmm1

			ret
uXm_mm_store_pd endp

			align 16
uXm_mm_storeu_pd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movupd		xmmword ptr [rparam1],			xmm1

			ret
uXm_mm_storeu_pd endp

			align 16
uXm_mm_storer_pd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			uXm_mm_shuffler2(1,0)
			movapd		xmmword ptr [rparam1],			xmm0

			ret
uXm_mm_storer_pd endp

			align 16
uXm_mm_storeur_pd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			uXm_mm_shuffler2(1,0)
			movupd		xmmword ptr [rparam1],			xmm0

			ret
uXm_mm_storeur_pd endp

			align 16
uXm_mm_storeh_pd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movhpd		mmword ptr [rparam1],			xmm1

			ret
uXm_mm_storeh_pd endp

			align 16
uXm_mm_storel_pd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movlpd		mmword ptr [rparam1],			xmm1

			ret
uXm_mm_storel_pd endp

;******************
; Integer, arithmetic
;******************
			align 16
uXm_mm_add_epi8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddb 				xmm0,			xmm1

			ret
uXm_mm_add_epi8 endp


			align 16
uXm_mm_add_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddw 				xmm0,			xmm1

			ret
uXm_mm_add_epi16 endp

			align 16
uXm_mm_add_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddd 				xmm0,			xmm1

			ret
uXm_mm_add_epi32 endp

ifdef __X32__
			align 8
uXm_mm_add_si64 proc UX_VECCALL (mmword) ;InXmm_A:mmword, InXmm_B:mmword
			
			paddq 				mm0,			mm1

			ret
uXm_mm_add_si64 endp
endif ;__X32__

			align 16
uXm_mm_add_epi64 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddq 				xmm0,			xmm1

			ret
uXm_mm_add_epi64 endp

			align 16
uXm_mm_adds_epi8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddsb 				xmm0,			xmm1

			ret
uXm_mm_adds_epi8 endp

			align 16
uXm_mm_adds_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddsw 				xmm0,			xmm1

			ret
uXm_mm_adds_epi16 endp

			align 16
uXm_mm_adds_epu8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddusb 				xmm0,			xmm1

			ret
uXm_mm_adds_epu8 endp

			align 16
uXm_mm_adds_epu16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddusw 				xmm0,			xmm1

			ret
uXm_mm_adds_epu16 endp

			align 16
uXm_mm_avg_epu8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pavgb 				xmm0,			xmm1

			ret
uXm_mm_avg_epu8 endp

			align 16
uXm_mm_avg_epu16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pavgw 				xmm0,			xmm1

			ret
uXm_mm_avg_epu16 endp

			align 16
uXm_mm_madd_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmaddwd 				xmm0,			xmm1

			ret
uXm_mm_madd_epi16 endp

			align 16
uXm_mm_max_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmaxsw 				xmm0,			xmm1

			ret
uXm_mm_max_epi16 endp

			align 16
uXm_mm_max_epu8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmaxub 				xmm0,			xmm1

			ret
uXm_mm_max_epu8 endp

			align 16
uXm_mm_min_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pminsw				xmm0,			xmm1

			ret
uXm_mm_min_epi16 endp

			align 16
uXm_mm_min_epu8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pminub 				xmm0,			xmm1

			ret
uXm_mm_min_epu8 endp

			align 16
uXm_mm_mulhi_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmulhw 				xmm0,			xmm1

			ret
uXm_mm_mulhi_epi16 endp

			align 16
uXm_mm_mulhi_epu16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmulhuw 				xmm0,			xmm1

			ret
uXm_mm_mulhi_epu16 endp

			align 16
uXm_mm_mullo_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmullw 				xmm0,			xmm1

			ret
uXm_mm_mullo_epi16 endp

ifdef __X32__
			align 8
uXm_mm_mul_su32 proc UX_VECCALL (mmword) ;InXmm_A:mmword, InXmm_B:mmword
			
			pmuludq 				mm0,			mm1

			ret
uXm_mm_mul_su32 endp
endif ;__X32__

			align 16
uXm_mm_mul_epu32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmuludq 				xmm0,			xmm1

			ret
uXm_mm_mul_epu32 endp

			align 16
uXm_mm_sad_epu8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psadbw 				xmm0,			xmm1

			ret
uXm_mm_sad_epu8 endp

			align 16
uXm_mm_sub_epi8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubb 				xmm0,			xmm1

			ret
uXm_mm_sub_epi8 endp

			align 16
uXm_mm_sub_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubw 				xmm0,			xmm1

			ret
uXm_mm_sub_epi16 endp

			align 16
uXm_mm_sub_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubd 				xmm0,			xmm1

			ret
uXm_mm_sub_epi32 endp

ifdef __X32__
			align 8
uXm_mm_sub_si64 proc UX_VECCALL (mmword) ;InXmm_A:mmword, InXmm_B:mmword
			
			psubq 				mm0,			mm1

			ret
uXm_mm_sub_si64 endp
endif ;__X32__

			align 16
uXm_mm_sub_epi64 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubq 				xmm0,			xmm1

			ret
uXm_mm_sub_epi64 endp

			align 16
uXm_mm_subs_epi8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubsb 				xmm0,			xmm1

			ret
uXm_mm_subs_epi8 endp

			align 16
uXm_mm_subs_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubsw 				xmm0,			xmm1

			ret
uXm_mm_subs_epi16 endp

			align 16
uXm_mm_subs_epu8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubusb 				xmm0,			xmm1

			ret
uXm_mm_subs_epu8 endp

			align 16
uXm_mm_subs_epu16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubusw 				xmm0,			xmm1

			ret
uXm_mm_subs_epu16 endp

;******************
; Integer, logicals
;******************
			align 16
uXm_mm_and_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pand 				xmm0,			xmm1

			ret
uXm_mm_and_si128 endp

			align 16
uXm_mm_andnot_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pandn 				xmm0,			xmm1

			ret
uXm_mm_andnot_si128 endp

			align 16
uXm_mm_or_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			por 				xmm0,			xmm1

			ret
uXm_mm_or_si128 endp

			align 16
uXm_mm_xor_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pxor 				xmm0,			xmm1

			ret
uXm_mm_xor_si128 endp

;******************
; Integer, shifts
;******************
			align 16
uXm_mm_slli_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
			
			pslldq 				xmm0,		dparam2

			ret
uXm_mm_slli_si128 endp

			align 16
uXm_mm_slli_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
			
			psllw 				xmm0,			dparam2

			ret
uXm_mm_slli_epi16 endp


	end
