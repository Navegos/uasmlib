
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	include uXmsseintrin.inc
	
	.data

	.data?
		align 16
		m128_setepi8_hi1 xmmword ?
		align 16
		m128_setepi8_hi0 xmmword ?
		align 16
		m128_setrepi8_hi1 xmmword ?
		align 16
		m128_setrepi8_hi0 xmmword ?

	.code
	
;******************
; Externs
;******************
	;extern UX_VECCALL _uXm_intrin_CPUFeatures:proc
	
;******************
; Proto
;******************
_uXm_m128fid_add_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_add_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_sub_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_sub_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_mul_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_mul_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_sqrt_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_sqrt_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_div_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_div_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_min_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_min_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_max_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_max_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_and_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_andnot_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_or_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_xor_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpeq_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpeq_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmplt_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmplt_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmple_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmple_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpgt_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpgt_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpge_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpge_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpneq_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpneq_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpnlt_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpnlt_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpnle_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpnle_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpngt_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpngt_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpnge_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpnge_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpord_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpord_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpunord_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpunord_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_comieq_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_comilt_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_comile_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_comige_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_comigt_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_comineq_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_ucomieq_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_ucomilt_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_ucomile_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_ucomigt_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_ucomige_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_ucomineq_sd proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cvtepi32_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_cvtpd_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_cvttpd_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_cvtepi32_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_cvtps_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_cvttps_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_cvtpd_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_cvtps_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_cvtsd_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cvtss_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cvtsd_si32 proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128fid_cvttsd_si32 proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128fid_cvtsi32_sd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
ifdef __X32__
_uXm_m128fid_cvtpd_pi32 proto UX_VECCALL (mmword) ;InXmm_A:xmmword
_uXm_m128fid_cvttpd_pi32 proto UX_VECCALL (mmword) ;InXmm_A:xmmword
_uXm_m128fid_cvtpi32_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword
endif ;!__X32__
_uXm_m128fid_unpackhi_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_unpacklo_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_movemask_pd proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128fid_load_sd proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal8_B:ptr real8
_uXm_m128fid_load_pd1 proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal8_B:ptr real8
_uXm_m128fid_load_pd proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal8_B:ptr xmmword
_uXm_m128fid_loadr_pd proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal8_B:ptr xmmword
_uXm_m128fid_loadu_pd proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal8_B:ptr xmmword
_uXm_m128fid_loadur_pd proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal8_B:ptr xmmword
_uXm_m128fid_loadh_pd proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_B:xmmword, InPreal8_C:ptr xmmword
_uXm_m128fid_loadl_pd proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_B:xmmword, InPreal8_C:ptr xmmword
_uXm_m128fid_set_sd proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, Inreal8_B:real8
_uXm_m128fid_set_pd1 proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, Inreal8_B:real8
_uXm_m128fid_set_pd proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, Inreal8_C:real8, Inreal8_B:real8
_uXm_m128fid_setr_pd proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, Inreal8_B:real8, Inreal8_C:real8
_uXm_m128fid_setzero_pd proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword
_uXm_m128fid_store_sd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword
_uXm_m128fid_store_pd1 proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword
_uXm_m128fid_storeu_pd1 proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword
_uXm_m128fid_store_pd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_storeu_pd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_storer_pd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_storeur_pd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_storeh_pd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_storel_pd proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_add_epi8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_add_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_add_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
ifdef __X32__
_uXm_m128fid_add_si64 proto UX_VECCALL (mmword) ;InXmm_A:mmword, InXmm_B:mmword
endif ;!__X32__
_uXm_m128fid_add_epi64 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_adds_epi8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_adds_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_adds_epu8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_adds_epu16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_avg_epu8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_avg_epu16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_madd_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_max_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_max_epu8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_min_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_min_epu8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_mulhi_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_mulhi_epu16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_mullo_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
ifdef __X32__
_uXm_m128fid_mul_su32 proto UX_VECCALL (mmword) ;InXmm_A:mmword, InXmm_B:mmword
endif ;!__X32__
_uXm_m128fid_mul_epu32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_sad_epu8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_sub_epi8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_sub_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_sub_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
ifdef __X32__
_uXm_m128fid_sub_si64 proto UX_VECCALL (mmword) ;InXmm_A:mmword, InXmm_B:mmword
endif ;!__X32__
_uXm_m128fid_sub_epi64 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_subs_epi8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_subs_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_subs_epu8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_subs_epu16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_and_si128 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_andnot_si128 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword			
_uXm_m128fid_or_si128 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_xor_si128 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_sll_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_m128fid_sll_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_m128fid_sll_epi64 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_m128fid_sra_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_m128fid_sra_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_m128fid_srl_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_m128fid_srl_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_m128fid_srl_epi64 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_m128fid_cmpeq_epi8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpeq_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpeq_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpgt_epi8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpgt_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpgt_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmplt_epi8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmplt_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmplt_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cvtsi32_si128 proto UX_VECCALL (xmmword) ;InInt_A:dword
_uXm_m128fid_cvtsi128_si32 proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128fid_packs_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_packs_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_packus_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_movemask_epi8 proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128fid_unpackhi_epi8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_unpackhi_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_unpackhi_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_unpackhi_epi64 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_unpacklo_epi8 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_unpacklo_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_unpacklo_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_unpacklo_epi64 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128fid_load1_epi64 proto UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
_uXm_m128fid_load1_epi32 proto UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
_uXm_m128fid_load_si128 proto UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
_uXm_m128fid_loadr_epi64 proto UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
_uXm_m128fid_loadr_epi32 proto UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
_uXm_m128fid_loadu_si128 proto UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
_uXm_m128fid_loadur_epi64 proto UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
_uXm_m128fid_loadur_epi32 proto UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
_uXm_m128fid_loadh_epi64 proto UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
_uXm_m128fid_loadl_epi64 proto UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
_uXm_m128fid_loadh_epi32 proto UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword	
_uXm_m128fid_loadl_epi32 proto UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword

ifdef __X32__
_uXm_m128fid_set_pi64 proto UX_VECCALL (xmmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_m128fid_setr_pi64 proto UX_VECCALL (xmmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_m128fid_set1_pi64 proto UX_VECCALL (xmmword) ;Inmm_A:mmword
endif ;__X32__

_uXm_m128fid_set_epi64 proto UX_VECCALL (xmmword) ;InXmm_Q1:xmmword, InXmm_Q0:xmmword
_uXm_m128fid_set_epi64x proto UX_VECCALL (xmmword) ;InInt_Q1:qword, InInt_Q0:qword
_uXm_m128fid_setr_epi64 proto UX_VECCALL (xmmword) ;InXmm_Q1:xmmword, InXmm_Q0:xmmword
_uXm_m128fid_setr_epi64x proto UX_VECCALL (xmmword) ;InInt_Q0:qword, InInt_Q1:qword
_uXm_m128fid_setl_epi64 proto UX_VECCALL (xmmword) ;InXmm_Q:xmmword
_uXm_m128fid_set1_epi64x proto UX_VECCALL (xmmword) ;InInt_Q:qword
_uXm_m128fid_set_epi32 proto UX_VECCALL (xmmword) ;InInt_D3:dword, InInt_D2:dword, InInt_D1:dword, InInt_D0:dword
_uXm_m128fid_setr_epi32 proto UX_VECCALL (xmmword) ;InInt_D0:dword, InInt_D1:dword, InInt_D2:dword, InInt_D3:dword
_uXm_m128fid_set1_epi32 proto UX_VECCALL (xmmword) ;InInt_D:dword
_uXm_m128fid_set_epi16 proto UX_VECCALL (xmmword) ;InInt_W7:word, InInt_W6:word, InInt_W5:word, InInt_W4:word, InInt_W3:word, InInt_W2:word, InInt_W1:word, InInt_W0:word
_uXm_m128fid_setr_epi16 proto UX_VECCALL (xmmword) ;InInt_W0:word, InInt_W1:word, InInt_W2:word, InInt_W3:word, InInt_W4:word, InInt_W5:word, InInt_W6:word, InInt_W7:word
_uXm_m128fid_set1_epi16 proto UX_VECCALL (xmmword) ;InInt_D:dword
_uXm_m128fid_set_epi8 proto UX_VECCALL (xmmword) ;InInt_W15:byte, InInt_W14:byte, InInt_W13:byte, InInt_W12:byte, InInt_W11:byte, InInt_W10:byte, InInt_W9:byte, InInt_W8:byte
										  ;InInt_W7:byte, InInt_W6:byte, InInt_W5:byte, InInt_W4:byte, InInt_W3:byte, InInt_W2:byte, InInt_W1:byte, InInt_W0:byte
_uXm_m128fid_setr_epi8 proto UX_VECCALL (xmmword)  ;InInt_W0:byte, InInt_W1:byte, InInt_W2:byte, InInt_W3:byte, InInt_W4:byte, InInt_W5:byte, InInt_W6:byte, InInt_W7:byte
											;InInt_W8:byte, InInt_W9:byte, InInt_W10:byte, InInt_W11:byte, InInt_W12:byte, InInt_W13:byte, InInt_W14:byte, InInt_W15:byte
_uXm_m128fid_set1_epi8 proto UX_VECCALL (xmmword) ;InInt_D:byte
_uXm_m128fid_setzero_si128 proto UX_VECCALL (xmmword) ;

_uXm_m128fid_store1_epi64 proto UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
_uXm_m128fid_store1_epi32 proto UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
_uXm_m128fid_store_si128 proto UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_storer_epi64 proto UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
_uXm_m128fid_storer_epi32 proto UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
_uXm_m128fid_storeu_si128 proto UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_storeur_epi64 proto UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
_uXm_m128fid_storeur_epi32 proto UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
_uXm_m128fid_storeh_epi64 proto UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
_uXm_m128fid_storel_epi64 proto UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
_uXm_m128fid_storeh_epi32 proto UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
_uXm_m128fid_storel_epi32 proto UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
_uXm_m128fid_maskmoveu_si128 proto UX_VECCALL (voidarg) ;InXmm_D:xmmword, InXmm_N:xmmword, OutPint_P:ptr byte


;******************
; Proc
;******************

;******************
; DP, arithmetic
;******************
			align 16
_uXm_m128fid_add_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addsd			xmm0,			xmm1

			ret
_uXm_m128fid_add_sd endp

			align 16
_uXm_m128fid_add_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addpd			xmm0,			xmm1

			ret
_uXm_m128fid_add_pd endp
	
			align 16
_uXm_m128fid_sub_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subsd			xmm0,			xmm1

			ret
_uXm_m128fid_sub_sd endp

			align 16
_uXm_m128fid_sub_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subpd			xmm0,			xmm1

			ret
_uXm_m128fid_sub_pd endp

			align 16
_uXm_m128fid_mul_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulsd			xmm0,			xmm1

			ret
_uXm_m128fid_mul_sd endp

			align 16
_uXm_m128fid_mul_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulpd			xmm0,			xmm1

			ret
_uXm_m128fid_mul_pd endp

			align 16
_uXm_m128fid_sqrt_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtsd			xmm0,			xmm1

			ret
_uXm_m128fid_sqrt_sd endp

			align 16
_uXm_m128fid_sqrt_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtpd			xmm0,			xmm1

			ret
_uXm_m128fid_sqrt_pd endp

			align 16
_uXm_m128fid_div_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divsd			xmm0,			xmm1

			ret
_uXm_m128fid_div_sd endp

			align 16
_uXm_m128fid_div_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divpd			xmm0,			xmm1

			ret
_uXm_m128fid_div_pd endp

			align 16
_uXm_m128fid_min_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minsd			xmm0,			xmm1

			ret
_uXm_m128fid_min_sd endp

			align 16
_uXm_m128fid_min_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minpd			xmm0,			xmm1

			ret
_uXm_m128fid_min_pd endp

			align 16
_uXm_m128fid_max_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxsd			xmm0,			xmm1

			ret
_uXm_m128fid_max_sd endp

			align 16
_uXm_m128fid_max_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxpd			xmm0,			xmm1

			ret
_uXm_m128fid_max_pd endp

;******************
; DP, logicals
;******************
			align 16
_uXm_m128fid_and_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andpd			xmm0,			xmm1

			ret
_uXm_m128fid_and_pd endp

			align 16
_uXm_m128fid_andnot_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andnpd			xmm0,			xmm1

			ret
_uXm_m128fid_andnot_pd endp

			align 16
_uXm_m128fid_or_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			orpd			xmm0,			xmm1

			ret
_uXm_m128fid_or_pd endp

			align 16
_uXm_m128fid_xor_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			xorpd			xmm0,			xmm1

			ret
_uXm_m128fid_xor_pd endp

;******************
; DP, comparison
;******************
			align 16
_uXm_m128fid_cmpeq_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpeqsd			xmm0,			xmm1

			ret
_uXm_m128fid_cmpeq_sd endp

			align 16
_uXm_m128fid_cmpeq_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpeqpd			xmm0,			xmm1

			ret
_uXm_m128fid_cmpeq_pd endp

			align 16
_uXm_m128fid_cmplt_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpltsd			xmm0,			xmm1

			ret
_uXm_m128fid_cmplt_sd endp

			align 16
_uXm_m128fid_cmplt_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpltpd			xmm0,			xmm1

			ret
_uXm_m128fid_cmplt_pd endp

			align 16
_uXm_m128fid_cmple_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmplesd			xmm0,			xmm1

			ret
_uXm_m128fid_cmple_sd endp

			align 16
_uXm_m128fid_cmple_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmplepd			xmm0,			xmm1

			ret
_uXm_m128fid_cmple_pd endp

			align 16
_uXm_m128fid_cmpgt_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnlesd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpgt_sd endp

			align 16
_uXm_m128fid_cmpgt_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnlepd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpgt_pd endp

			align 16
_uXm_m128fid_cmpge_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnltsd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpge_sd endp

			align 16
_uXm_m128fid_cmpge_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnltpd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpge_pd endp

			align 16
_uXm_m128fid_cmpneq_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpneqsd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpneq_sd endp

			align 16
_uXm_m128fid_cmpneq_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpneqpd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpneq_pd endp

			align 16
_uXm_m128fid_cmpnlt_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnltsd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpnlt_sd endp

			align 16
_uXm_m128fid_cmpnlt_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnltpd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpnlt_pd endp

			align 16
_uXm_m128fid_cmpnle_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnlesd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpnle_sd endp

			align 16
_uXm_m128fid_cmpnle_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpnlepd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpnle_pd endp

			align 16
_uXm_m128fid_cmpngt_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmplesd			xmm0,			xmm1

			ret
_uXm_m128fid_cmpngt_sd endp

			align 16
_uXm_m128fid_cmpngt_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmplepd			xmm0,			xmm1

			ret
_uXm_m128fid_cmpngt_pd endp

			align 16
_uXm_m128fid_cmpnge_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpltsd			xmm0,			xmm1

			ret
_uXm_m128fid_cmpnge_sd endp

			align 16
_uXm_m128fid_cmpnge_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpltpd			xmm0,			xmm1

			ret
_uXm_m128fid_cmpnge_pd endp

			align 16
_uXm_m128fid_cmpord_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpordsd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpord_sd endp

			align 16
_uXm_m128fid_cmpord_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpordpd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpord_pd endp

			align 16
_uXm_m128fid_cmpunord_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpunordsd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpunord_sd endp

			align 16
_uXm_m128fid_cmpunord_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpunordpd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpunord_pd endp

;******************
; DP, comparison return int
;******************
			align 16
_uXm_m128fid_comieq_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			je label_comieq_sd
			xor				rreturn,			rreturn
			ret
	label_comieq_sd:
			mov				breturn,			true

			ret
_uXm_m128fid_comieq_sd endp

			align 16
_uXm_m128fid_comilt_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jl label_comilt_sd
			xor				rreturn,			rreturn
			ret
	label_comilt_sd:
			mov				breturn,			true

			ret
_uXm_m128fid_comilt_sd endp

			align 16
_uXm_m128fid_comile_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jle label_comile_sd
			xor				rreturn,			rreturn
			ret
	label_comile_sd:
			mov				breturn,			true

			ret
_uXm_m128fid_comile_sd endp

			align 16
_uXm_m128fid_comigt_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jg label_comigt_sd
			xor				rreturn,			rreturn
			ret
	label_comigt_sd:
			mov				breturn,			true

			ret
_uXm_m128fid_comigt_sd endp

			align 16
_uXm_m128fid_comige_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jge label_comige_sd
			xor				rreturn,			rreturn
			ret
	label_comige_sd:
			mov				breturn,			true

			ret
_uXm_m128fid_comige_sd endp

			align 16
_uXm_m128fid_comineq_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jne label_comineq_sd
			xor				rreturn,			rreturn
			ret
	label_comineq_sd:
			mov				breturn,			true

			ret
_uXm_m128fid_comineq_sd endp

			align 16
_uXm_m128fid_ucomieq_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			ucomisd			xmm0,			xmm1
			je label_ucomieq_sd
			xor				rreturn,			rreturn
			ret
	label_ucomieq_sd:
			mov				breturn,			true

			ret
_uXm_m128fid_ucomieq_sd endp

			align 16
_uXm_m128fid_ucomilt_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jl label_ucomilt_sd
			xor				rreturn,			rreturn
			ret
	label_ucomilt_sd:
			mov				breturn,			true

			ret
_uXm_m128fid_ucomilt_sd endp

			align 16
_uXm_m128fid_ucomile_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jle label_ucomile_sd
			xor				rreturn,			rreturn
			ret
	label_ucomile_sd:
			mov				breturn,			true

			ret
_uXm_m128fid_ucomile_sd endp

			align 16
_uXm_m128fid_ucomigt_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jg label_ucomigt_sd
			xor				rreturn,			rreturn
			ret
	label_ucomigt_sd:
			mov				breturn,			true

			ret
_uXm_m128fid_ucomigt_sd endp

			align 16
_uXm_m128fid_ucomige_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jge label_ucomige_sd
			xor				rreturn,			rreturn
			ret
	label_ucomige_sd:
			mov				breturn,			true

			ret
_uXm_m128fid_ucomige_sd endp

			align 16
_uXm_m128fid_ucomineq_sd proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jne label_ucomineq_sd
			xor				rreturn,			rreturn
			ret
	label_ucomineq_sd:
			mov				breturn,			true

			ret
_uXm_m128fid_ucomineq_sd endp

;******************
; DP, conversions
;******************
			align 16
_uXm_m128fid_cvtepi32_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvtdq2pd			xmm0,			xmm1

			ret
_uXm_m128fid_cvtepi32_pd endp

			align 16
_uXm_m128fid_cvtpd_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvtpd2dq			xmm0,			xmm1

			ret
_uXm_m128fid_cvtpd_epi32 endp

			align 16
_uXm_m128fid_cvttpd_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvttpd2dq			xmm0,			xmm1

			ret
_uXm_m128fid_cvttpd_epi32 endp

			align 16
_uXm_m128fid_cvtepi32_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvtdq2ps			xmm0,			xmm1

			ret
_uXm_m128fid_cvtepi32_ps endp

			align 16
_uXm_m128fid_cvtps_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvtps2dq			xmm0,			xmm1

			ret
_uXm_m128fid_cvtps_epi32 endp

			align 16
_uXm_m128fid_cvttps_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvttps2dq			xmm0,			xmm1

			ret
_uXm_m128fid_cvttps_epi32 endp

			align 16
_uXm_m128fid_cvtpd_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvtpd2ps			xmm0,			xmm1

			ret
_uXm_m128fid_cvtpd_ps endp

			align 16
_uXm_m128fid_cvtps_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
	
			cvtps2pd			xmm0,			xmm1

			ret
_uXm_m128fid_cvtps_pd endp

			align 16
_uXm_m128fid_cvtsd_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cvtsd2ss			xmm0,			xmm1

			ret
_uXm_m128fid_cvtsd_ss endp

			align 16
_uXm_m128fid_cvtss_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cvtss2sd			xmm0,			xmm1

			ret
_uXm_m128fid_cvtss_sd endp

			align 16
_uXm_m128fid_cvtsd_si32 proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvtsd2si			dreturn,			xmm0

			ret
_uXm_m128fid_cvtsd_si32 endp

			align 16
_uXm_m128fid_cvttsd_si32 proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvttsd2si			dreturn,			xmm0

			ret
_uXm_m128fid_cvttsd_si32 endp

			align 16
_uXm_m128fid_cvtsi32_sd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
			
			cvtsi2sd			xmm0,			dparam2

			ret
_uXm_m128fid_cvtsi32_sd endp

ifdef __X32__
;******************
; DP, conversions, Support for MMX extension intrinsics
;******************
			align 16
_uXm_m128fid_cvtpd_pi32 proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvtpd2pi			mm0,			xmm0

			ret
_uXm_m128fid_cvtpd_pi32 endp

			align 16
_uXm_m128fid_cvttpd_pi32 proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvttpd2pi			mm0,			xmm0

			ret
_uXm_m128fid_cvttpd_pi32 endp

			align 16
_uXm_m128fid_cvtpi32_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword
			
			cvtpi2pd			xmm0,			mm1

			ret
_uXm_m128fid_cvtpi32_pd endp
endif ;__X32__

;******************
; DP, Misc
;******************
			align 16
_uXm_m128fid_unpackhi_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpckhpd 				xmm0,			xmm1

			ret
_uXm_m128fid_unpackhi_pd endp

			align 16
_uXm_m128fid_unpacklo_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpcklpd 				xmm0,			xmm1

			ret
_uXm_m128fid_unpacklo_pd endp

			align 16
_uXm_m128fid_movemask_pd proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			movmskpd			dreturn,				xmm1

			ret
_uXm_m128fid_movemask_pd endp

;******************
; DP, loads
;******************
			align 16
_uXm_m128fid_load_sd proc UX_VECCALL (xmmword) ;Outxmm_A:xmmword, InPreal8_B:ptr real8

			movsd			xmm0,		real8 ptr [rparam2]

			ret
_uXm_m128fid_load_sd endp

			align 16
_uXm_m128fid_load_pd1 proc UX_VECCALL (xmmword) ;Outxmm_A:xmmword, InPreal8_B:ptr real8

			movsd			xmm0,		real8 ptr [rparam2]
			shufpd			xmm0,			xmm0,			0

			ret
_uXm_m128fid_load_pd1 endp

			align 16
_uXm_m128fid_load_pd proc UX_VECCALL (xmmword) ;Outxmm_A:xmmword, InPreal8_B:ptr xmmword

			movapd			xmm0,		xmmword ptr [rparam2]

			ret
_uXm_m128fid_load_pd endp

			align 16
_uXm_m128fid_loadr_pd proc UX_VECCALL (xmmword) ;Outxmm_A:xmmword, InPreal8_B:ptr xmmword

			movapd			xmm0,		xmmword ptr [rparam2]
			shufpd			xmm0,			xmm0,			_uXm_m128fid_shuffler2(1,0)

			ret
_uXm_m128fid_loadr_pd endp

			align 16
_uXm_m128fid_loadu_pd proc UX_VECCALL (xmmword) ;Outxmm_A:xmmword, InPreal8_B:ptr xmmword

			movupd			xmm0,		xmmword ptr [rparam2]

			ret
_uXm_m128fid_loadu_pd endp

			align 16
_uXm_m128fid_loadur_pd proc UX_VECCALL (xmmword) ;Outxmm_A:xmmword, InPreal8_B:ptr xmmword

			movupd			xmm0,		xmmword ptr [rparam2]
			shufpd			xmm0,			xmm0,			_uXm_m128fid_shuffler2(1,0)

			ret
_uXm_m128fid_loadur_pd endp

			align 16
_uXm_m128fid_loadh_pd proc UX_VECCALL (xmmword) ;Outxmm_A:xmmword, InXmm_B:xmmword, InPreal8_C:ptr mmword

			movhpd			xmm0,		mmword ptr [rparam2]

			ret
_uXm_m128fid_loadh_pd endp

			align 16
_uXm_m128fid_loadl_pd proc UX_VECCALL (xmmword) ;Outxmm_A:xmmword, InXmm_B:xmmword, InPreal8_C:ptr mmword

			movlpd			xmm0,		mmword ptr [rparam2]

			ret
_uXm_m128fid_loadl_pd endp

;******************
; DP, sets
;******************
			align 16
_uXm_m128fid_set_sd proc UX_VECCALL (xmmword) ;Outxmm_A:xmmword, Inreal8_B:real8

			movsd			xmm0,			xmm1

			ret
_uXm_m128fid_set_sd endp

			align 16
_uXm_m128fid_set_pd1 proc UX_VECCALL (xmmword) ;Outxmm_A:xmmword, Inreal8_B:real8

			movsd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			0

			ret
_uXm_m128fid_set_pd1 endp

			align 16
_uXm_m128fid_set_pd proc UX_VECCALL (xmmword) ;Outxmm_A:xmmword, Inreal8_C:real8, Inreal8_B:real8

			movsd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			_uXm_m128fid_shuffle2(0,0)

			movsd			xmm0,			xmm2

			ret
_uXm_m128fid_set_pd endp

			align 16
_uXm_m128fid_setr_pd proc UX_VECCALL (xmmword) ;Outxmm_A:xmmword, Inreal8_B:real8, Inreal8_C:real8

			movsd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			_uXm_m128fid_shuffler2(0,0)

			movsd			xmm0,			xmm2
			shufpd			xmm0,			xmm0,			_uXm_m128fid_shuffler2(1,0)
			
			ret
_uXm_m128fid_setr_pd endp

			align 16
_uXm_m128fid_setzero_pd proc UX_VECCALL (xmmword) ;Outxmm_A:xmmword, 

			xorpd			xmm0,			xmm0

			ret
_uXm_m128fid_setzero_pd endp

;******************
; DP, stores
;******************
			align 16
_uXm_m128fid_store_sd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword

			movsd		real8 ptr [rparam1],			xmm1

			ret
_uXm_m128fid_store_sd endp

			align 16
_uXm_m128fid_store_pd1 proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			0
			movapd		xmmword ptr [rparam1],			xmm0

			ret
_uXm_m128fid_store_pd1 endp

			align 16
_uXm_m128fid_storeu_pd1 proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			0
			movupd		xmmword ptr [rparam1],			xmm0

			ret
_uXm_m128fid_storeu_pd1 endp

			align 16
_uXm_m128fid_store_pd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_store_pd endp

			align 16
_uXm_m128fid_storeu_pd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movupd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_storeu_pd endp

			align 16
_uXm_m128fid_storer_pd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			_uXm_m128fid_shuffler2(1,0)
			movapd		xmmword ptr [rparam1],			xmm0

			ret
_uXm_m128fid_storer_pd endp

			align 16
_uXm_m128fid_storeur_pd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			_uXm_m128fid_shuffler2(1,0)
			movupd		xmmword ptr [rparam1],			xmm0

			ret
_uXm_m128fid_storeur_pd endp

			align 16
_uXm_m128fid_storeh_pd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movhpd		mmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_storeh_pd endp

			align 16
_uXm_m128fid_storel_pd proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movlpd		mmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_storel_pd endp

;******************
; Integer, arithmetic
;******************
			align 16
_uXm_m128fid_add_epi8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddb 				xmm0,			xmm1

			ret
_uXm_m128fid_add_epi8 endp


			align 16
_uXm_m128fid_add_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddw 				xmm0,			xmm1

			ret
_uXm_m128fid_add_epi16 endp

			align 16
_uXm_m128fid_add_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddd 				xmm0,			xmm1

			ret
_uXm_m128fid_add_epi32 endp

ifdef __X32__
			align 8
_uXm_m128fid_add_si64 proc UX_VECCALL (mmword) ;InXmm_A:mmword, InXmm_B:mmword
			
			paddq 				mm0,			mm1

			ret
_uXm_m128fid_add_si64 endp
endif ;__X32__

			align 16
_uXm_m128fid_add_epi64 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddq 				xmm0,			xmm1

			ret
_uXm_m128fid_add_epi64 endp

			align 16
_uXm_m128fid_adds_epi8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddsb 				xmm0,			xmm1

			ret
_uXm_m128fid_adds_epi8 endp

			align 16
_uXm_m128fid_adds_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddsw 				xmm0,			xmm1

			ret
_uXm_m128fid_adds_epi16 endp

			align 16
_uXm_m128fid_adds_epu8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddusb 				xmm0,			xmm1

			ret
_uXm_m128fid_adds_epu8 endp

			align 16
_uXm_m128fid_adds_epu16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddusw 				xmm0,			xmm1

			ret
_uXm_m128fid_adds_epu16 endp

			align 16
_uXm_m128fid_avg_epu8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pavgb 				xmm0,			xmm1

			ret
_uXm_m128fid_avg_epu8 endp

			align 16
_uXm_m128fid_avg_epu16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pavgw 				xmm0,			xmm1

			ret
_uXm_m128fid_avg_epu16 endp

			align 16
_uXm_m128fid_madd_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmaddwd 				xmm0,			xmm1

			ret
_uXm_m128fid_madd_epi16 endp

			align 16
_uXm_m128fid_max_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmaxsw 				xmm0,			xmm1

			ret
_uXm_m128fid_max_epi16 endp

			align 16
_uXm_m128fid_max_epu8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmaxub 				xmm0,			xmm1

			ret
_uXm_m128fid_max_epu8 endp

			align 16
_uXm_m128fid_min_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pminsw				xmm0,			xmm1

			ret
_uXm_m128fid_min_epi16 endp

			align 16
_uXm_m128fid_min_epu8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pminub 				xmm0,			xmm1

			ret
_uXm_m128fid_min_epu8 endp

			align 16
_uXm_m128fid_mulhi_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmulhw 				xmm0,			xmm1

			ret
_uXm_m128fid_mulhi_epi16 endp

			align 16
_uXm_m128fid_mulhi_epu16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmulhuw 				xmm0,			xmm1

			ret
_uXm_m128fid_mulhi_epu16 endp

			align 16
_uXm_m128fid_mullo_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmullw 				xmm0,			xmm1

			ret
_uXm_m128fid_mullo_epi16 endp

ifdef __X32__
			align 8
_uXm_m128fid_mul_su32 proc UX_VECCALL (mmword) ;InXmm_A:mmword, InXmm_B:mmword
			
			pmuludq 				mm0,			mm1

			ret
_uXm_m128fid_mul_su32 endp
endif ;__X32__

			align 16
_uXm_m128fid_mul_epu32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmuludq 				xmm0,			xmm1

			ret
_uXm_m128fid_mul_epu32 endp

			align 16
_uXm_m128fid_sad_epu8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psadbw 				xmm0,			xmm1

			ret
_uXm_m128fid_sad_epu8 endp

			align 16
_uXm_m128fid_sub_epi8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubb 				xmm0,			xmm1

			ret
_uXm_m128fid_sub_epi8 endp

			align 16
_uXm_m128fid_sub_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubw 				xmm0,			xmm1

			ret
_uXm_m128fid_sub_epi16 endp

			align 16
_uXm_m128fid_sub_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubd 				xmm0,			xmm1

			ret
_uXm_m128fid_sub_epi32 endp

ifdef __X32__
			align 8
_uXm_m128fid_sub_si64 proc UX_VECCALL (mmword) ;InXmm_A:mmword, InXmm_B:mmword
			
			psubq 				mm0,			mm1

			ret
_uXm_m128fid_sub_si64 endp
endif ;__X32__

			align 16
_uXm_m128fid_sub_epi64 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubq 				xmm0,			xmm1

			ret
_uXm_m128fid_sub_epi64 endp

			align 16
_uXm_m128fid_subs_epi8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubsb 				xmm0,			xmm1

			ret
_uXm_m128fid_subs_epi8 endp

			align 16
_uXm_m128fid_subs_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubsw 				xmm0,			xmm1

			ret
_uXm_m128fid_subs_epi16 endp

			align 16
_uXm_m128fid_subs_epu8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubusb 				xmm0,			xmm1

			ret
_uXm_m128fid_subs_epu8 endp

			align 16
_uXm_m128fid_subs_epu16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubusw 				xmm0,			xmm1

			ret
_uXm_m128fid_subs_epu16 endp

;******************
; Integer, logicals
;******************
			align 16
_uXm_m128fid_and_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pand 				xmm0,			xmm1

			ret
_uXm_m128fid_and_si128 endp

			align 16
_uXm_m128fid_andnot_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pandn 				xmm0,			xmm1

			ret
_uXm_m128fid_andnot_si128 endp

			align 16
_uXm_m128fid_or_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			por 				xmm0,			xmm1

			ret
_uXm_m128fid_or_si128 endp

			align 16
_uXm_m128fid_xor_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pxor 				xmm0,			xmm1

			ret
_uXm_m128fid_xor_si128 endp

;******************
; Integer, shifts
;******************
			align 16
_uXm_m128fid_sll_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psllw 				xmm0,			xmm1

			ret
_uXm_m128fid_sll_epi16 endp

			align 16
_uXm_m128fid_sll_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			pslld 				xmm0,			xmm1

			ret
_uXm_m128fid_sll_epi32 endp

			align 16
_uXm_m128fid_sll_epi64 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psllq 				xmm0,			xmm1

			ret
_uXm_m128fid_sll_epi64 endp

			align 16
_uXm_m128fid_sra_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psraw 				xmm0,			xmm1

			ret
_uXm_m128fid_sra_epi16 endp

			align 16
_uXm_m128fid_sra_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psrad 				xmm0,			xmm1

			ret
_uXm_m128fid_sra_epi32 endp

			align 16
_uXm_m128fid_srl_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psrlw 				xmm0,			xmm1

			ret
_uXm_m128fid_srl_epi16 endp

			align 16
_uXm_m128fid_srl_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psrld 				xmm0,			xmm1

			ret
_uXm_m128fid_srl_epi32 endp

			align 16
_uXm_m128fid_srl_epi64 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psrlq 				xmm0,			xmm1

			ret
_uXm_m128fid_srl_epi64 endp

;******************
; Integer, comparisons
;******************
			align 16
_uXm_m128fid_cmpeq_epi8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpeqb		xmm0,			xmm1

			ret
_uXm_m128fid_cmpeq_epi8 endp

			align 16
_uXm_m128fid_cmpeq_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpeqw		xmm0,			xmm1

			ret
_uXm_m128fid_cmpeq_epi16 endp

			align 16
_uXm_m128fid_cmpeq_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpeqd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpeq_epi32 endp

			align 16
_uXm_m128fid_cmpgt_epi8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtb		xmm0,			xmm1

			ret
_uXm_m128fid_cmpgt_epi8 endp

			align 16
_uXm_m128fid_cmpgt_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtw		xmm0,			xmm1

			ret
_uXm_m128fid_cmpgt_epi16 endp

			align 16
_uXm_m128fid_cmpgt_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtd		xmm0,			xmm1

			ret
_uXm_m128fid_cmpgt_epi32 endp

			align 16
_uXm_m128fid_cmplt_epi8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtb		xmm1,			xmm0

			ret
_uXm_m128fid_cmplt_epi8 endp

			align 16
_uXm_m128fid_cmplt_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtw		xmm1,			xmm0

			ret
_uXm_m128fid_cmplt_epi16 endp

			align 16
_uXm_m128fid_cmplt_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtd		xmm1,			xmm0

			ret
_uXm_m128fid_cmplt_epi32 endp

;******************
; Integer, converts
;******************
			align 16
_uXm_m128fid_cvtsi32_si128 proc UX_VECCALL (xmmword) ;InInt_A:dword
			
			movd			xmm0,			dparam1

			ret
_uXm_m128fid_cvtsi32_si128 endp

			align 16
_uXm_m128fid_cvtsi128_si32 proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			movd			dreturn,			xmm0

			ret
_uXm_m128fid_cvtsi128_si32 endp

;******************
; Integer, misc
;******************
			align 16
_uXm_m128fid_packs_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			packsswb		xmm0,			xmm1

			ret
_uXm_m128fid_packs_epi16 endp

			align 16
_uXm_m128fid_packs_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			packssdw		xmm0,			xmm1

			ret
_uXm_m128fid_packs_epi32 endp

			align 16
_uXm_m128fid_packus_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			packuswb		xmm0,			xmm1

			ret
_uXm_m128fid_packus_epi16 endp

			align 16
_uXm_m128fid_movemask_epi8 proc UX_VECCALL (dword) ;InXmm_A:xmmword
	
			pmovmskb		dreturn,			xmm0

			ret
_uXm_m128fid_movemask_epi8 endp

			align 16
_uXm_m128fid_unpackhi_epi8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckhbw		xmm0,			xmm1

			ret
_uXm_m128fid_unpackhi_epi8 endp

			align 16
_uXm_m128fid_unpackhi_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckhwd		xmm0,			xmm1

			ret
_uXm_m128fid_unpackhi_epi16 endp

			align 16
_uXm_m128fid_unpackhi_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckhdq		xmm0,			xmm1

			ret
_uXm_m128fid_unpackhi_epi32 endp

			align 16
_uXm_m128fid_unpackhi_epi64 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckhqdq		xmm0,			xmm1

			ret
_uXm_m128fid_unpackhi_epi64 endp

			align 16
_uXm_m128fid_unpacklo_epi8 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpcklbw		xmm0,			xmm1

			ret
_uXm_m128fid_unpacklo_epi8 endp

			align 16
_uXm_m128fid_unpacklo_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpcklwd		xmm0,			xmm1

			ret
_uXm_m128fid_unpacklo_epi16 endp

			align 16
_uXm_m128fid_unpacklo_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckldq		xmm0,			xmm1

			ret
_uXm_m128fid_unpacklo_epi32 endp

			align 16
_uXm_m128fid_unpacklo_epi64 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpcklqdq		xmm0,			xmm1

			ret
_uXm_m128fid_unpacklo_epi64 endp

;******************
; Integer, loads
;******************
			align 16
_uXm_m128fid_load1_epi64 proc UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
	
			movq			xmm1,		qword ptr [rparam1]
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(0,1,0,1)

			ret
_uXm_m128fid_load1_epi64 endp

			align 16
_uXm_m128fid_load1_epi32 proc UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
	
			movd			xmm1,		dword ptr [rparam1]
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(0,0,0,0)

			ret
_uXm_m128fid_load1_epi32 endp

			align 16
_uXm_m128fid_load_si128 proc UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
	
			movdqa			xmm0,		xmmword ptr [rparam1]

			ret
_uXm_m128fid_load_si128 endp

			align 16
_uXm_m128fid_loadr_epi64 proc UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
	
			movdqa			xmm1,		xmmword ptr [rparam1]
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(2,3,0,1)

			ret
_uXm_m128fid_loadr_epi64 endp

			align 16
_uXm_m128fid_loadr_epi32 proc UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
	
			movdqa			xmm1,		xmmword ptr [rparam1]
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(3,2,1,0)

			ret
_uXm_m128fid_loadr_epi32 endp

			align 16
_uXm_m128fid_loadu_si128 proc UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
	
			movdqu			xmm0,		xmmword ptr [rparam1]

			ret
_uXm_m128fid_loadu_si128 endp

			align 16
_uXm_m128fid_loadur_epi64 proc UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
	
			movdqu			xmm1,		xmmword ptr [rparam1]
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(2,3,0,1)

			ret
_uXm_m128fid_loadur_epi64 endp

			align 16
_uXm_m128fid_loadur_epi32 proc UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
	
			movdqu			xmm1,		xmmword ptr [rparam1]
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(3,2,1,0)

			ret
_uXm_m128fid_loadur_epi32 endp

			align 16
_uXm_m128fid_loadh_epi64 proc UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
	
			movq			xmm1,		qword ptr [rparam1]
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(2,3,0,1)

			ret
_uXm_m128fid_loadh_epi64 endp

			align 16
_uXm_m128fid_loadl_epi64 proc UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
	
			movq			xmm0,		qword ptr [rparam1]

			ret
_uXm_m128fid_loadl_epi64 endp

			align 16
_uXm_m128fid_loadh_epi32 proc UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
	
			movd			xmm1,		dword ptr [rparam1]
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(1,2,3,0)

			ret
_uXm_m128fid_loadh_epi32 endp

			align 16
_uXm_m128fid_loadl_epi32 proc UX_VECCALL (xmmword) ;InXPmm_A:ptr xmmword
	
			movd			xmm0,		dword ptr [rparam1]

			ret
_uXm_m128fid_loadl_epi32 endp

;******************
; Integer, sets
;******************
ifdef __X32__
			align 16
_uXm_m128fid_set_pi64 proc UX_VECCALL (xmmword) ;Inmm_Q1:mmword, Inmm_Q0:mmword
	
			movq			xmm3,			mm0
			movq			xmm2,			mm1
			
			punpcklqdq 		xmm2, 			xmm3			;shuffle2(1,0)

			movdqa			xmm0,			xmm2

			ret
_uXm_m128fid_set_pi64 endp

			align 16
_uXm_m128fid_setr_pi64 proc UX_VECCALL (xmmword) ;Inmm_Q0:mmword, Inmm_Q1:mmword
	
			movq			xmm2,			mm0
			movq			xmm3,			mm1
			
			punpcklqdq 		xmm2, 			xmm3			;shuffler2(0,1)

			movdqa			xmm0,			xmm2

			ret
_uXm_m128fid_setr_pi64 endp

			align 16
_uXm_m128fid_set1_pi64 proc UX_VECCALL (xmmword) ;Inmm_Q:mmword
	
			movq			xmm1,			mm0

			punpcklqdq 		xmm1, 			xmm1		;shuffle2(0,0)

			movdqa			xmm0,			xmm1

			ret
_uXm_m128fid_set1_pi64 endp
endif ;__X32__

			align 16
_uXm_m128fid_set_epi64 proc UX_VECCALL (xmmword) ;InXmm_Q1:xmmword, InXmm_Q0:xmmword
	
			punpcklqdq 		xmm1, 			xmm0			;shuffle2(1,0)

			movdqa			xmm0,			xmm1

			ret
_uXm_m128fid_set_epi64 endp

			align 16
_uXm_m128fid_set_epi64x proc UX_VECCALL (xmmword) ;InInt_Q1:qword, InInt_Q0:qword
	
			movq			xmm1,			rparam1
			movq			xmm0,			rparam2
			
			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)

			ret
_uXm_m128fid_set_epi64x endp

			align 16
_uXm_m128fid_setr_epi64 proc UX_VECCALL (xmmword) ;InXmm_Q0:xmmword, InXmm_Q1:xmmword
	
			punpcklqdq 		xmm0, 			xmm1			;shuffler2(0,1)

			ret
_uXm_m128fid_setr_epi64 endp

			align 16
_uXm_m128fid_setr_epi64x proc UX_VECCALL (xmmword) ;InInt_Q0:qword, InInt_Q1:qword
	
			movq			xmm0,			rparam1
			movq			xmm1,			rparam2
			
			punpcklqdq 		xmm0, 			xmm1			;shuffler2(0,1)

			ret
_uXm_m128fid_setr_epi64x endp

			align 16
_uXm_m128fid_setl_epi64 proc UX_VECCALL (xmmword) ;InXmm_Q:xmmword
	
			punpcklqdq 		xmm0, 			xmm0		;shuffle2(0,0)

			ret
_uXm_m128fid_setl_epi64 endp

			align 16
_uXm_m128fid_set1_epi64x proc UX_VECCALL (xmmword) ;InInt_Q:qword
	
			movq			xmm0,			rparam1

			punpcklqdq 		xmm0, 			xmm0		;shuffle2(0,0)

			ret
_uXm_m128fid_set1_epi64x endp

			align 16
_uXm_m128fid_set_epi32 proc UX_VECCALL (xmmword) ;InInt_D3:dword, InInt_D2:dword, InInt_D1:dword, InInt_D0:dword
	
			movd			xmm3,			dparam1
			movd			xmm2,			dparam2
			movd			xmm1,			dparam3
			movd			xmm0,			dparam4
			
			punpckldq 		xmm2, 			xmm3 		;shuffle4(3,2,3,2)
			punpckldq 		xmm0, 			xmm1 		;shuffle4(1,0,1,0)
			
			punpcklqdq 		xmm0, 			xmm2 		;shuffle2(1,0) (1:3,2|0:1,0)

			ret
_uXm_m128fid_set_epi32 endp

			align 16
_uXm_m128fid_setr_epi32 proc UX_VECCALL (xmmword) ;InInt_D0:dword, InInt_D1:dword, InInt_D2:dword, InInt_D3:dword
	
			movd			xmm0,			dparam1
			movd			xmm1,			dparam2
			movd			xmm2,			dparam3
			movd			xmm3,			dparam4
			
			punpckldq 		xmm2, 			xmm3 		;shuffler4(2,3,2,3)
			punpckldq 		xmm0, 			xmm1 		;shuffler4(0,1,0,1)
			
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)

			ret
_uXm_m128fid_setr_epi32 endp

			align 16
_uXm_m128fid_set1_epi32 proc UX_VECCALL (xmmword) ;InInt_D:dword
	
			movd			xmm1,			dparam1
			pshufd			xmm0,			xmm1,			0

			ret
_uXm_m128fid_set1_epi32 endp

			align 16
_uXm_m128fid_set_epi16 proc UX_VECCALL (xmmword) ;InInt_W7:word, InInt_W6:word, InInt_W5:word, InInt_W4:word, InInt_W3:word, InInt_W2:word, InInt_W1:word, InInt_W0:word
	
			movd			xmm7,			dparam1
			movd			xmm6,			dparam2
			movd			xmm5,			dparam3
			movd			xmm4,			dparam4
			
			movd			xmm3,			dparam5
			movd			xmm2,			dparam6
			movd			xmm1,			dparam7
			movd			xmm0,			dparam8
			
			punpcklwd 		xmm6, 			xmm7 		;shufflehi4(3,2,3,2)
			punpcklwd 		xmm4, 			xmm5 		;shufflehi4(1,0,1,0)
			
			punpcklwd 		xmm2, 			xmm3 		;shufflelo4(3,2,3,2)
			punpcklwd 		xmm0, 			xmm1 		;shufflelo4(1,0,1,0)

			punpckldq 		xmm4, 			xmm6 		;shuffle4(3,2,3,2)
			punpckldq 		xmm0, 			xmm2 		;shuffle4(1,0,1,0)
			
			punpcklqdq 		xmm0, 			xmm4 		;shuffle2(1,0) (1:3,2|0:1,0)

			ret
_uXm_m128fid_set_epi16 endp

			align 16
_uXm_m128fid_setr_epi16 proc UX_VECCALL (xmmword) ;InInt_W0:word, InInt_W1:word, InInt_W2:word, InInt_W3:word, InInt_W4:word, InInt_W5:word, InInt_W6:word, InInt_W7:word
	
			movd			xmm0,			dparam1
			movd			xmm1,			dparam2
			movd			xmm2,			dparam3
			movd			xmm3,			dparam4
			
			movd			xmm4,			dparam5
			movd			xmm5,			dparam6
			movd			xmm6,			dparam7
			movd			xmm7,			dparam8
			
			punpcklwd 		xmm6, 			xmm7 		;shufflerhi4(2,3,2,3)
			punpcklwd 		xmm4, 			xmm5 		;shufflerhi4(0,1,0,1)
			
			punpcklwd 		xmm2, 			xmm3 		;shufflerlo4(2,3,2,3)
			punpcklwd 		xmm0, 			xmm1 		;shufflerlo4(0,1,0,1)

			punpckldq 		xmm4, 			xmm6 		;shuffler4(2,3,2,3)
			punpckldq 		xmm0, 			xmm2 		;shuffler4(0,1,0,1)
			
			punpcklqdq 		xmm0, 			xmm4 		;shuffler2(0,1) (0:0,1|1:2,3)

			ret
_uXm_m128fid_setr_epi16 endp

			align 16
_uXm_m128fid_set1_epi16 proc UX_VECCALL (xmmword) ;InInt_D:dword
	
			movd			xmm1,			dparam1
			
			movdqa			xmm0,			xmm1
			pshufd			xmm1,			xmm0,			0
			
			punpcklwd 		xmm0, 			xmm1 		;shufflehi4(0,0,0,0)
			
			ret
_uXm_m128fid_set1_epi16 endp

			align 16
_uXm_m128fid_set_epi8 proc UX_VECCALL (xmmword) ;InInt_W15:byte, InInt_W14:byte, InInt_W13:byte, InInt_W12:byte, InInt_W11:byte, InInt_W10:byte, InInt_W9:byte, InInt_W8:byte
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
			movd			xmm7,			dparam1
			movd			xmm6,			dparam2
			movd			xmm5,			dparam3
			movd			xmm4,			dparam4

			movd			xmm3,			dparam5
			movd			xmm2,			dparam6
			movd			xmm1,			dparam7
			movd			xmm0,			dparam8
			
			punpcklbw 		xmm6, 			xmm7 		;shufflehi4(3,2,3,2)
			punpcklbw 		xmm4, 			xmm5 		;shufflehi4(1,0,1,0)
			
			punpcklbw 		xmm2, 			xmm3 		;shufflelo4(3,2,3,2)
			punpcklbw 		xmm0, 			xmm1 		;shufflelo4(1,0,1,0)
			
			punpcklwd 		xmm4, 			xmm6 		;shufflelo4(3,2,3,2)
			punpcklwd 		xmm0, 			xmm2 		;shufflelo4(1,0,1,0)
			
			movdqa			m128_setepi8_hi1, xmm4
			movdqa			m128_setepi8_hi0, xmm0
			
			movd			xmm7,			dparam9
			movd			xmm6,			dparam10
			movd			xmm5,			dparam11
			movd			xmm4,			dparam12

			movd			xmm3,			dparam13
			movd			xmm2,			dparam14
			movd			xmm1,			dparam15
			movd			xmm0,			dparam16
			
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
_uXm_m128fid_set_epi8 endp

			align 16
_uXm_m128fid_setr_epi8 proc UX_VECCALL (xmmword)  ;InInt_W0:byte, InInt_W1:byte, InInt_W2:byte, InInt_W3:byte, InInt_W4:byte, InInt_W5:byte, InInt_W6:byte, InInt_W7:byte
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
			movd			xmm0,			dparam1
			movd			xmm1,			dparam2
			movd			xmm2,			dparam3
			movd			xmm3,			dparam4

			movd			xmm4,			dparam5
			movd			xmm5,			dparam6
			movd			xmm6,			dparam7
			movd			xmm7,			dparam8
			
			punpcklbw 		xmm6, 			xmm7 		;shufflehi4(3,2,3,2)
			punpcklbw 		xmm4, 			xmm5 		;shufflehi4(1,0,1,0)
			
			punpcklbw 		xmm2, 			xmm3 		;shufflelo4(3,2,3,2)
			punpcklbw 		xmm0, 			xmm1 		;shufflelo4(1,0,1,0)
			
			punpcklwd 		xmm4, 			xmm6 		;shufflelo4(3,2,3,2)
			punpcklwd 		xmm0, 			xmm2 		;shufflelo4(1,0,1,0)
			
			movdqa			m128_setrepi8_hi1, xmm4
			movdqa			m128_setrepi8_hi0, xmm0
			
			movd			xmm0,			dparam9
			movd			xmm1,			dparam10
			movd			xmm2,			dparam11
			movd			xmm3,			dparam12

			movd			xmm4,			dparam13
			movd			xmm5,			dparam14
			movd			xmm6,			dparam15
			movd			xmm7,			dparam16
			
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
_uXm_m128fid_setr_epi8 endp

			align 16
_uXm_m128fid_set1_epi8 proc UX_VECCALL (xmmword) ;InInt_D:byte
	
			movd			xmm1,			dparam1
			
			movdqa			xmm0,			xmm1
			pshufd			xmm1,			xmm0,			0
			
			punpcklbw 		xmm0, 			xmm1 		;shufflehi4(0,0,0,0)
			
			ret
_uXm_m128fid_set1_epi8 endp

			align 16
_uXm_m128fid_setzero_si128 proc UX_VECCALL (xmmword) ;
	
			pxor			xmm0,			xmm1

			ret
_uXm_m128fid_setzero_si128 endp

;******************
; Integer, stores
;******************
			align 16
_uXm_m128fid_store1_epi64 proc UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(0,1,0,1)
			movq	qword ptr [rparam1],	xmm0

			ret
_uXm_m128fid_store1_epi64 endp

			align 16
_uXm_m128fid_store1_epi32 proc UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(0,0,0,0)
			movd	dword ptr [rparam1],	xmm0

			ret
_uXm_m128fid_store1_epi32 endp

			align 16
_uXm_m128fid_store_si128 proc UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
	
			movdqa	xmmword ptr [rparam1],	xmm1

			ret
_uXm_m128fid_store_si128 endp

			align 16
_uXm_m128fid_storer_epi64 proc UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(2,3,0,1)
			movdqa	xmmword ptr [rparam1],	xmm0

			ret
_uXm_m128fid_storer_epi64 endp

			align 16
_uXm_m128fid_storer_epi32 proc UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(3,2,1,0)
			movdqa	xmmword ptr [rparam1],	xmm0

			ret
_uXm_m128fid_storer_epi32 endp

			align 16
_uXm_m128fid_storeu_si128 proc UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
	
			movdqu	xmmword ptr [rparam1],	xmm1

			ret
_uXm_m128fid_storeu_si128 endp

			align 16
_uXm_m128fid_storeur_epi64 proc UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(2,3,0,1)
			movdqu	xmmword ptr [rparam1],	xmm0

			ret
_uXm_m128fid_storeur_epi64 endp

			align 16
_uXm_m128fid_storeur_epi32 proc UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(3,2,1,0)
			movdqu	xmmword ptr [rparam1],	xmm0

			ret
_uXm_m128fid_storeur_epi32 endp

			align 16
_uXm_m128fid_storeh_epi64 proc UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(2,3,0,1)
			movq	qword ptr [rparam1],	xmm0

			ret
_uXm_m128fid_storeh_epi64 endp

			align 16
_uXm_m128fid_storel_epi64 proc UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			movq	qword ptr [rparam1],	xmm1

			ret
_uXm_m128fid_storel_epi64 endp

			align 16
_uXm_m128fid_storeh_epi32 proc UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_m128fid_shuffler4(1,2,3,0)
			movd	dword ptr [rparam1],	xmm0

			ret
_uXm_m128fid_storeh_epi32 endp

			align 16
_uXm_m128fid_storel_epi32 proc UX_VECCALL (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			movd	dword ptr [rparam1],	xmm1

			ret
_uXm_m128fid_storel_epi32 endp

			align 16
_uXm_m128fid_maskmoveu_si128 proc UX_VECCALL (voidarg) ;InXmm_D:xmmword, InXmm_N:xmmword, OutPint_P:ptr byte
	
			push			rdidx
			mov				bdidx,	byte ptr [rparam3]
			maskmovdqu		xmm0,			xmm1
			pop				rdidx

			ret
_uXm_m128fid_maskmoveu_si128 endp

;******************
; Integer, moves
;******************

	end
