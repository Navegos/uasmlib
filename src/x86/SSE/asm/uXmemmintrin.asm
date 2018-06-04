
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

		__align xmm_align_size
		m128_setepi8_hi1 xmmword ?

		__align xmm_align_size
		m128_setepi8_hi0 xmmword ?

		__align xmm_align_size
		m128_setrepi8_hi1 xmmword ?

		__align xmm_align_size
		m128_setrepi8_hi0 xmmword ?
		
	include uXmxmmconstdata.inc
	
	__align_fp_opt xmm_align_size, xmm_align_size

	.code
	
;******************
; Externs
;******************
	;extern __veccall _uXm_intrin_CPUFeatures:proc
	
;******************
; Proto
;******************
_uXm_mm_add_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_add_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_sub_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_sub_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_mul_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_mul_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_sqrt_sd proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_sqrt_pd proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_div_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_div_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_min_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_min_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_max_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_max_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_mm_and_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_andnot_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_or_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_xor_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_not_pd proto __veccall (xmmword) ;InXmm_A:xmmword

_uXm_mm_cmpeq_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpeq_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmplt_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmplt_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmple_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmple_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpgt_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpgt_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpge_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpge_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpneq_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpneq_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpnlt_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpnlt_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpnle_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpnle_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpngt_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpngt_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpnge_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpnge_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpord_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpord_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpunord_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpunord_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_mm_comieq_sd proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_comilt_sd proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_comile_sd proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_comige_sd proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_comigt_sd proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_comineq_sd proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_ucomieq_sd proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_ucomilt_sd proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_ucomile_sd proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_ucomigt_sd proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_ucomige_sd proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_ucomineq_sd proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_mm_cvtepi32_pd proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_cvtpd_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_cvttpd_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_cvtepi32_ps proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_cvtps_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_cvttps_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_cvtpd_ps proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_cvtps_pd proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_cvtsd_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cvtss_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_mm_cvtsd_si32 proto __veccall (dword) ;InXmm_A:xmmword
_uXm_mm_cvttsd_si32 proto __veccall (dword) ;InXmm_A:xmmword
_uXm_mm_cvtsi32_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InInt_B:dword

ifdef __X32__
_uXm_mm_cvtpd_pi32 proto __veccall (mmword) ;InXmm_A:xmmword
_uXm_mm_cvttpd_pi32 proto __veccall (mmword) ;InXmm_A:xmmword
_uXm_mm_cvtpi32_pd proto __veccall (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword
endif ;!__X32__

ifdef __X64__
_uXm_mm_cvtsd_si64 proto __veccall (qword) ;InXmm_A:xmmword
_uXm_mm_cvttsd_si64 proto __veccall (qword) ;InXmm_A:xmmword
_uXm_mm_cvtsi64_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InInt_B:qword
endif ;__X64__

_uXm_mm_cvtsd_f64 proto __veccall (real8) ;InXmm_A:xmmword
_uXm_mm_cvt0d_f64 proto __veccall (real8) ;InXmm_A:xmmword
_uXm_mm_cvt1d_f64 proto __veccall (real8) ;InXmm_A:xmmword
_uXm_mm_cvteltd_f64 proto __veccall (real8) ;InXmm_A:xmmword, InInt_BSel:dword

_uXm_mm_unpackhi_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_unpacklo_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_movemask_pd proto __veccall (dword) ;InXmm_A:xmmword

_uXm_mm_set_sd proto __veccall (xmmword) ;Inreal8_B:real8
_uXm_mm_set_pd1 proto __veccall (xmmword) ;Inreal8_B:real8
_uXm_mm_set_pd proto __veccall (xmmword) ;Inreal8_C:real8, Inreal8_B:real8
_uXm_mm_setr_pd proto __veccall (xmmword) ;Inreal8_B:real8, Inreal8_C:real8
_uXm_mm_setzero_pd proto __veccall (xmmword) ;

_uXm_mm_load_sd proto __veccall (xmmword) ;InPreal8_B:ptr real8
_uXm_mm_load_pd1 proto __veccall (xmmword) ;InPreal8_B:ptr real8
_uXm_mm_load_pd proto __veccall (xmmword) ;InPreal8_B:ptr xmmword
_uXm_mm_loadr_pd proto __veccall (xmmword) ;InPreal8_B:ptr xmmword
_uXm_mm_loadu_pd proto __veccall (xmmword) ;InPreal8_B:ptr xmmword
_uXm_mm_loadur_pd proto __veccall (xmmword) ;InPreal8_B:ptr xmmword
_uXm_mm_loadh_pd proto __veccall (xmmword) ;InXmm_B:xmmword, InPreal8_C:ptr xmmword
_uXm_mm_loadl_pd proto __veccall (xmmword) ;InXmm_B:xmmword, InPreal8_C:ptr xmmword

_uXm_mm_store_sd proto __veccall (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword
_uXm_mm_store_pd1 proto __veccall (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword
_uXm_mm_storeu_pd1 proto __veccall (voidarg) ;OutPreal8_A:ptr real8, InXmm_B:xmmword
_uXm_mm_store_pd proto __veccall (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storeu_pd proto __veccall (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storer_pd proto __veccall (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storeur_pd proto __veccall (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storeh_pd proto __veccall (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storel_pd proto __veccall (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

_uXm_mm_store_mm_pd proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_store_m128d_pd proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_store_Pdouble_pd proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InPreal8_A:ptr xmmword
_uXm_mm_storeu_Pdouble_pd proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InPreal8_A:ptr xmmword

_uXm_m128d_store_mm_pd proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128d_store_Pdouble_pd proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InPreal8_A:ptr xmmword
_uXm_m128d_storeu_Pdouble_pd proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InPreal8_A:ptr xmmword

_uXm_mm_move_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_move_pd1 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_move_pd proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_mover_pd proto __veccall (xmmword) ;InXmm_A:xmmword

_uXm_mm_move_m128d_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_move_m128d_pd1 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_move_m128d_pd proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_mover_m128d_pd proto __veccall (xmmword) ;InXmm_A:xmmword

_uXm_ptr_move_mm_sd proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_move_mm_pd1 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_move_mm_pd proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_mover_mm_pd proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_mm_sd proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_moveu_mm_pd1 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_mm_pd proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveur_mm_pd proto __veccall (ptr) ;InXmm_A:xmmword

_uXm_m128d_move_mm_sd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128d_move_mm_pd1 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_m128d_move_mm_pd proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_m128d_mover_mm_pd proto __veccall (xmmword) ;InXmm_A:xmmword

_uXm_ptr_move_m128d_sd proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_move_m128d_pd1 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_move_m128d_pd proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_mover_m128d_pd proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_m128d_sd proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_moveu_m128d_pd1 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_m128d_pd proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveur_m128d_pd proto __veccall (ptr) ;InXmm_A:xmmword

_uXm_mm_add_epi8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_add_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_add_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
ifdef __X32__
	__align_fp_opt mm_align_size, mm_align_size
_uXm_mm_add_si64 proto __veccall (mmword) ;InXmm_A:mmword, InXmm_B:mmword
	__align_fp_opt xmm_align_size, xmm_align_size
endif ;!__X32__
_uXm_mm_add_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_adds_epi8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_adds_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_adds_epu8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_adds_epu16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_avg_epu8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_avg_epu16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_madd_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_max_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_max_epu8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_min_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_min_epu8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_mulhi_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_mulhi_epu16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_mullo_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
ifdef __X32__
	__align_fp_opt mm_align_size, mm_align_size
_uXm_mm_mul_su32 proto __veccall (mmword) ;InXmm_A:mmword, InXmm_B:mmword
	__align_fp_opt xmm_align_size, xmm_align_size
endif ;!__X32__
_uXm_mm_mul_epu32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_sad_epu8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_sub_epi8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_sub_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_sub_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
ifdef __X32__
	__align_fp_opt mm_align_size, mm_align_size
_uXm_mm_sub_si64 proto __veccall (mmword) ;InXmm_A:mmword, InXmm_B:mmword
	__align_fp_opt xmm_align_size, xmm_align_size
endif ;!__X32__
_uXm_mm_sub_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_subs_epi8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_subs_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_subs_epu8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_subs_epu16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_mm_and_si128 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_andnot_si128 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword			
_uXm_mm_or_si128 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_xor_si128 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_not_si128 proto __veccall (xmmword) ;InXmm_A:xmmword

_uXm_mm_sll_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_mm_sll_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_mm_sll_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_mm_sra_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_mm_sra_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_mm_srl_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_mm_srl_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword
_uXm_mm_srl_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B_Count:xmmword

_uXm_mm_cmpeq_epi8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpeq_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpeq_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpgt_epi8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpgt_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpgt_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmplt_epi8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmplt_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmplt_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_mm_cvtsi32_si128 proto __veccall (xmmword) ;InInt_A:dword
_uXm_mm_cvtsi128_si32 proto __veccall (dword) ;InXmm_A:xmmword

ifdef __X64__
_uXm_mm_cvtsi64_si128 proto __veccall (xmmword) ;InInt_A:qword
_uXm_mm_cvtsi128_si64 proto __veccall (qword) ;InXmm_A:xmmword
endif ;__X64__

_uXm_mm_packs_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_packs_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_packus_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_movemask_epi8 proto __veccall (dword) ;InXmm_A:xmmword
_uXm_mm_unpackhi_epi8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_unpackhi_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_unpackhi_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_unpackhi_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_unpacklo_epi8 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_unpacklo_epi16 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_unpacklo_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_unpacklo_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_mm_load1_epi64 proto __veccall (xmmword) ;InXPmm_A:ptr xmmword
_uXm_mm_load1_epi32 proto __veccall (xmmword) ;InXPmm_A:ptr xmmword
_uXm_mm_load_si128 proto __veccall (xmmword) ;InXPmm_A:ptr xmmword
_uXm_mm_loadr_epi64 proto __veccall (xmmword) ;InXPmm_A:ptr xmmword
_uXm_mm_loadr_epi32 proto __veccall (xmmword) ;InXPmm_A:ptr xmmword
_uXm_mm_loadu_si128 proto __veccall (xmmword) ;InXPmm_A:ptr xmmword
_uXm_mm_loadur_epi64 proto __veccall (xmmword) ;InXPmm_A:ptr xmmword
_uXm_mm_loadur_epi32 proto __veccall (xmmword) ;InXPmm_A:ptr xmmword
_uXm_mm_loadh_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXPmm_B:ptr xmmword
_uXm_mm_loadl_epi64 proto __veccall (xmmword) ;IInXmm_A:xmmword, InXPmm_B:ptr xmmword
_uXm_mm_loadh_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXPmm_B:ptr xmmword
_uXm_mm_loadl_epi32 proto __veccall (xmmword) ;IInXmm_A:xmmword, InXPmm_B:ptr xmmword

ifdef __X32__
	__align_fp_opt mm_align_size, mm_align_size
_uXm_mm_set_pi64 proto __veccall (xmmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_setr_pi64 proto __veccall (xmmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_set1_pi64 proto __veccall (xmmword) ;Inmm_A:mmword
	__align_fp_opt xmm_align_size, xmm_align_size
endif ;__X32__

_uXm_mm_set_epi64 proto __veccall (xmmword) ;InXmm_Q1:xmmword, InXmm_Q0:xmmword
_uXm_mm_set_epi64x proto __veccall (xmmword) ;InInt_Q1:qword, InInt_Q0:qword
_uXm_mm_setr_epi64 proto __veccall (xmmword) ;InXmm_Q1:xmmword, InXmm_Q0:xmmword
_uXm_mm_setr_epi64x proto __veccall (xmmword) ;InInt_Q0:qword, InInt_Q1:qword
_uXm_mm_set1_epi64 proto __veccall (xmmword) ;InXmm_Q:xmmword
_uXm_mm_set1_epi64x proto __veccall (xmmword) ;InInt_Q:qword
_uXm_mm_set_epi32 proto __veccall (xmmword) ;InInt_D3:dword, InInt_D2:dword, InInt_D1:dword, InInt_D0:dword
_uXm_mm_setr_epi32 proto __veccall (xmmword) ;InInt_D0:dword, InInt_D1:dword, InInt_D2:dword, InInt_D3:dword
_uXm_mm_set1_epi32 proto __veccall (xmmword) ;InInt_D:dword
_uXm_mm_set_epi16 proto __veccall (xmmword) ;InInt_W7:word, InInt_W6:word, InInt_W5:word, InInt_W4:word, InInt_W3:word, InInt_W2:word, InInt_W1:word, InInt_W0:word
_uXm_mm_setr_epi16 proto __veccall (xmmword) ;InInt_W0:word, InInt_W1:word, InInt_W2:word, InInt_W3:word, InInt_W4:word, InInt_W5:word, InInt_W6:word, InInt_W7:word
_uXm_mm_set1_epi16 proto __veccall (xmmword) ;InInt_D:dword
_uXm_mm_set_epi8 proto __veccall (xmmword) ;InInt_W15:byte, InInt_W14:byte, InInt_W13:byte, InInt_W12:byte, InInt_W11:byte, InInt_W10:byte, InInt_W9:byte, InInt_W8:byte
										  ;InInt_W7:byte, InInt_W6:byte, InInt_W5:byte, InInt_W4:byte, InInt_W3:byte, InInt_W2:byte, InInt_W1:byte, InInt_W0:byte
_uXm_mm_setr_epi8 proto __veccall (xmmword)  ;InInt_W0:byte, InInt_W1:byte, InInt_W2:byte, InInt_W3:byte, InInt_W4:byte, InInt_W5:byte, InInt_W6:byte, InInt_W7:byte
											;InInt_W8:byte, InInt_W9:byte, InInt_W10:byte, InInt_W11:byte, InInt_W12:byte, InInt_W13:byte, InInt_W14:byte, InInt_W15:byte
_uXm_mm_set1_epi8 proto __veccall (xmmword) ;InInt_D:byte
_uXm_mm_setl_epi64 proto __veccall (xmmword) ;InXmm_Q:xmmword
_uXm_mm_setl_epi64x proto __veccall (xmmword) ;InInt_Q:qword

_uXm_mm_setzero_si128 proto __veccall (xmmword) ;

_uXm_mm_store1_epi64 proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
_uXm_mm_store1_epi32 proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
_uXm_mm_store_si128 proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storer_epi64 proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
_uXm_mm_storer_epi32 proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
_uXm_mm_storeu_si128 proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storeur_epi64 proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
_uXm_mm_storeur_epi32 proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
_uXm_mm_storeh_epi64 proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
_uXm_mm_storel_epi64 proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
_uXm_mm_storeh_epi32 proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
_uXm_mm_storel_epi32 proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
_uXm_mm_maskmoveu_si128 proto __veccall (voidarg) ;InXmm_D:xmmword, InXmm_N:xmmword, OutPint_P:ptr byte

_uXm_mm_store_m128i proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_store_psi128 proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:ptr xmmword
_uXm_mm_storeu_psi128 proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:ptr xmmword

_uXm_m128i_store_mm_si128 proto __veccall (voidarg) ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128i_store_psi128 proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:ptr xmmword
_uXm_m128i_storeu_psi128 proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:ptr xmmword

_uXm_mm_moveq_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_moveqr_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_moved_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_movedr_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword

_uXm_mm_move_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_mover_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_move1_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_move_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_mover_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_move1_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_move_si128 proto __veccall (xmmword) ;InXmm_A:xmmwor

ifdef __X32__
_uXm_mm_movqpi64_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_movpi64_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_movepi64_pi64 proto __veccall (xmmword) ;InXmm_A:xmmword
endif ;__X32__

_uXm_mm_move_m128i_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_mover_m128i_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_move1_m128i_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_move_m128i_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_mover_m128i_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_move1_m128i_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_move_m128i_si128 proto __veccall (xmmword) ;InXmm_A:xmmwor

_uXm_ptr_move_mm_epi64 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_mover_mm_epi64 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_move1_mm_epi64 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_mm_epi64 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_moveur_mm_epi64 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_moveu1_mm_epi64 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_move_mm_epi32 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_mover_mm_epi32 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_move1_mm_epi32 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_mm_epi32 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_moveur_mm_epi32 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_moveu1_mm_epi32 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_move_mm_si128 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_mm_si128 proto __veccall (ptr) ;InXmm_A:xmmword

_uXm_m128i_move_mm_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128i_mover_mm_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128i_move1_mm_epi64 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_m128i_move_mm_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128i_mover_mm_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128i_move1_mm_epi32 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_m128i_move_mm_si128 proto __veccall (xmmword) ;InXmm_A:xmmwor

_uXm_ptr_move_m128i_epi64 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_mover_m128i_epi64 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_move1_m128i_epi64 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_m128i_epi64 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_moveur_m128i_epi64 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_moveu1_m128i_epi64 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_move_m128i_epi32 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_mover_m128i_epi32 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_move1_m128i_epi32 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_m128i_epi32 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_moveur_m128i_epi32 proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_moveu1_m128i_epi32 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_move_m128i_si128 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_m128i_si128 proto __veccall (ptr) ;InXmm_A:xmmword

;******************
; Proc
;******************

;******************
; DP, arithmetic
;******************
_uXm_mm_add_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			addsd			xmm0,			xmm1

			ret
_uXm_mm_add_sd endp

_uXm_mm_add_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			addpd			xmm0,			xmm1

			ret
_uXm_mm_add_pd endp
	
_uXm_mm_sub_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			subsd			xmm0,			xmm1

			ret
_uXm_mm_sub_sd endp

_uXm_mm_sub_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			subpd			xmm0,			xmm1

			ret
_uXm_mm_sub_pd endp

_uXm_mm_mul_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			mulsd			xmm0,			xmm1

			ret
_uXm_mm_mul_sd endp

_uXm_mm_mul_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			mulpd			xmm0,			xmm1

			ret
_uXm_mm_mul_pd endp

_uXm_mm_sqrt_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword

			sqrtsd			xmm0,			xmm1

			ret
_uXm_mm_sqrt_sd endp

_uXm_mm_sqrt_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword

			sqrtpd			xmm0,			xmm1

			ret
_uXm_mm_sqrt_pd endp

_uXm_mm_div_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			divsd			xmm0,			xmm1

			ret
_uXm_mm_div_sd endp

_uXm_mm_div_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			divpd			xmm0,			xmm1

			ret
_uXm_mm_div_pd endp

_uXm_mm_min_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			minsd			xmm0,			xmm1

			ret
_uXm_mm_min_sd endp

_uXm_mm_min_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			minpd			xmm0,			xmm1

			ret
_uXm_mm_min_pd endp

_uXm_mm_max_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			maxsd			xmm0,			xmm1

			ret
_uXm_mm_max_sd endp

_uXm_mm_max_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			maxpd			xmm0,			xmm1

			ret
_uXm_mm_max_pd endp

;******************
; DP, logicals
;******************
_uXm_mm_and_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			andpd			xmm0,			xmm1

			ret
_uXm_mm_and_pd endp

_uXm_mm_andnot_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			andnpd			xmm0,			xmm1

			ret
_uXm_mm_andnot_pd endp

_uXm_mm_or_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			orpd			xmm0,			xmm1

			ret
_uXm_mm_or_pd endp

_uXm_mm_xor_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			xorpd			xmm0,			xmm1

			ret
_uXm_mm_xor_pd endp

_uXm_mm_not_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			;movdqa			xmm2,			__m128_true
			movapd			xmm1,			__m128_true
			xorpd			xmm0,			xmm1

			ret
_uXm_mm_not_pd endp

;******************
; DP, comparison
;******************
_uXm_mm_cmpeq_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_EQ

			ret
_uXm_mm_cmpeq_sd endp

_uXm_mm_cmpeq_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_EQ

			ret
_uXm_mm_cmpeq_pd endp

_uXm_mm_cmplt_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_mm_cmplt_sd endp

_uXm_mm_cmplt_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_mm_cmplt_pd endp

_uXm_mm_cmple_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_mm_cmple_sd endp

_uXm_mm_cmple_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_mm_cmple_pd endp

_uXm_mm_cmpgt_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_mm_cmpgt_sd endp

_uXm_mm_cmpgt_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_mm_cmpgt_pd endp

_uXm_mm_cmpge_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_mm_cmpge_sd endp

_uXm_mm_cmpge_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_mm_cmpge_pd endp

_uXm_mm_cmpneq_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_NEQ

			ret
_uXm_mm_cmpneq_sd endp

_uXm_mm_cmpneq_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_NEQ

			ret
_uXm_mm_cmpneq_pd endp

_uXm_mm_cmpnlt_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_mm_cmpnlt_sd endp

_uXm_mm_cmpnlt_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_mm_cmpnlt_pd endp

_uXm_mm_cmpnle_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_mm_cmpnle_sd endp

_uXm_mm_cmpnle_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_mm_cmpnle_pd endp

_uXm_mm_cmpngt_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_mm_cmpngt_sd endp

_uXm_mm_cmpngt_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_mm_cmpngt_pd endp

_uXm_mm_cmpnge_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_mm_cmpnge_sd endp

_uXm_mm_cmpnge_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_mm_cmpnge_pd endp

_uXm_mm_cmpord_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_ORD

			ret
_uXm_mm_cmpord_sd endp

_uXm_mm_cmpord_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_ORD

			ret
_uXm_mm_cmpord_pd endp

_uXm_mm_cmpunord_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpsd			xmm0,			xmm1,			CMPP_UNORD

			ret
_uXm_mm_cmpunord_sd endp

_uXm_mm_cmpunord_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmppd			xmm0,			xmm1,			CMPP_UNORD

			ret
_uXm_mm_cmpunord_pd endp

;******************
; DP, comparison return int
;******************
_uXm_mm_comieq_sd proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			je label_comieq_sd
			xor				rreturn,			rreturn
			ret
	label_comieq_sd:
			mov				rreturn,			true

			ret
_uXm_mm_comieq_sd endp

_uXm_mm_comilt_sd proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jl label_comilt_sd
			xor				rreturn,			rreturn
			ret
	label_comilt_sd:
			mov				rreturn,			true

			ret
_uXm_mm_comilt_sd endp

_uXm_mm_comile_sd proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jle label_comile_sd
			xor				rreturn,			rreturn
			ret
	label_comile_sd:
			mov				rreturn,			true

			ret
_uXm_mm_comile_sd endp

_uXm_mm_comigt_sd proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jg label_comigt_sd
			xor				rreturn,			rreturn
			ret
	label_comigt_sd:
			mov				rreturn,			true

			ret
_uXm_mm_comigt_sd endp

_uXm_mm_comige_sd proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jge label_comige_sd
			xor				rreturn,			rreturn
			ret
	label_comige_sd:
			mov				rreturn,			true

			ret
_uXm_mm_comige_sd endp

_uXm_mm_comineq_sd proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jne label_comineq_sd
			xor				rreturn,			rreturn
			ret
	label_comineq_sd:
			mov				rreturn,			true

			ret
_uXm_mm_comineq_sd endp

_uXm_mm_ucomieq_sd proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			ucomisd			xmm0,			xmm1
			je label_ucomieq_sd
			xor				rreturn,			rreturn
			ret
	label_ucomieq_sd:
			mov				rreturn,			true

			ret
_uXm_mm_ucomieq_sd endp

_uXm_mm_ucomilt_sd proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jl label_ucomilt_sd
			xor				rreturn,			rreturn
			ret
	label_ucomilt_sd:
			mov				rreturn,			true

			ret
_uXm_mm_ucomilt_sd endp

_uXm_mm_ucomile_sd proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jle label_ucomile_sd
			xor				rreturn,			rreturn
			ret
	label_ucomile_sd:
			mov				rreturn,			true

			ret
_uXm_mm_ucomile_sd endp

_uXm_mm_ucomigt_sd proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jg label_ucomigt_sd
			xor				rreturn,			rreturn
			ret
	label_ucomigt_sd:
			mov				rreturn,			true

			ret
_uXm_mm_ucomigt_sd endp

_uXm_mm_ucomige_sd proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jge label_ucomige_sd
			xor				rreturn,			rreturn
			ret
	label_ucomige_sd:
			mov				rreturn,			true

			ret
_uXm_mm_ucomige_sd endp

_uXm_mm_ucomineq_sd proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comisd			xmm0,			xmm1
			jne label_ucomineq_sd
			xor				rreturn,			rreturn
			ret
	label_ucomineq_sd:
			mov				rreturn,			true

			ret
_uXm_mm_ucomineq_sd endp

;******************
; DP, conversions
;******************
_uXm_mm_cvtepi32_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword
	
			cvtdq2pd			xmm0,			xmm1

			ret
_uXm_mm_cvtepi32_pd endp

_uXm_mm_cvtpd_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword
	
			cvtpd2dq			xmm0,			xmm1

			ret
_uXm_mm_cvtpd_epi32 endp

_uXm_mm_cvttpd_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword
	
			cvttpd2dq			xmm0,			xmm1

			ret
_uXm_mm_cvttpd_epi32 endp

_uXm_mm_cvtepi32_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword
	
			cvtdq2ps			xmm0,			xmm1

			ret
_uXm_mm_cvtepi32_ps endp

_uXm_mm_cvtps_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword
	
			cvtps2dq			xmm0,			xmm1

			ret
_uXm_mm_cvtps_epi32 endp

_uXm_mm_cvttps_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword
	
			cvttps2dq			xmm0,			xmm1

			ret
_uXm_mm_cvttps_epi32 endp

_uXm_mm_cvtpd_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword
	
			cvtpd2ps			xmm0,			xmm1

			ret
_uXm_mm_cvtpd_ps endp

_uXm_mm_cvtps_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword
	
			cvtps2pd			xmm0,			xmm1

			ret
_uXm_mm_cvtps_pd endp

_uXm_mm_cvtsd_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cvtsd2ss			xmm0,			xmm1

			ret
_uXm_mm_cvtsd_ss endp

_uXm_mm_cvtss_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cvtss2sd			xmm0,			xmm1

			ret
_uXm_mm_cvtss_sd endp

_uXm_mm_cvtsd_si32 proc __veccall (dword) frame ;InXmm_A:xmmword
			
			cvtsd2si			dreturn,			xmm0

			ret
_uXm_mm_cvtsd_si32 endp

_uXm_mm_cvttsd_si32 proc __veccall (dword) frame ;InXmm_A:xmmword
			
			cvttsd2si			dreturn,			xmm0

			ret
_uXm_mm_cvttsd_si32 endp

_uXm_mm_cvtsi32_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InInt_B:dword
			
			cvtsi2sd			xmm0,			dparam2

			ret
_uXm_mm_cvtsi32_sd endp

ifdef __X32__
;******************
; DP, conversions, Support for MMX extension intrinsics
;******************
_uXm_mm_cvtpd_pi32 proc __veccall (mmword) frame ;InXmm_A:xmmword
			
			cvtpd2pi			mm0,			xmm0

			ret
_uXm_mm_cvtpd_pi32 endp

_uXm_mm_cvttpd_pi32 proc __veccall (mmword) frame ;InXmm_A:xmmword
			
			cvttpd2pi			mm0,			xmm0

			ret
_uXm_mm_cvttpd_pi32 endp

_uXm_mm_cvtpi32_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, Inmm_B:mmword
			
			cvtpi2pd			xmm0,			mm1

			ret
_uXm_mm_cvtpi32_pd endp
endif ;__X32__

ifdef __X64__
_uXm_mm_cvtsd_si64 proc __veccall (qword) frame ;InXmm_A:xmmword
			
			cvtsd2si			dreturn,			xmm0

			ret
_uXm_mm_cvtsd_si64 endp

_uXm_mm_cvttsd_si64 proc __veccall (qword) frame ;InXmm_A:xmmword
			
			cvttsd2si			dreturn,			xmm0

			ret
_uXm_mm_cvttsd_si64 endp

_uXm_mm_cvtsi64_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InInt_B:qword
			
			cvtsi2sd			xmm0,			rparam2

			ret
_uXm_mm_cvtsi64_sd endp
endif ;__X64__

_uXm_mm_cvtsd_f64 proc __veccall (real8) frame ;InXmm_A:xmmword
			
			movsd			xmm0,			xmm0

			ret
_uXm_mm_cvtsd_f64 endp

_uXm_mm_cvt0d_f64 proc __veccall (real8) frame ;InXmm_A:xmmword
			
			movsd			xmm0,			xmm0

			ret
_uXm_mm_cvt0d_f64 endp

_uXm_mm_cvt1d_f64 proc __veccall (real8) frame ;InXmm_A:xmmword
			
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,1)
			movsd			xmm0,			xmm0

			ret
_uXm_mm_cvt1d_f64 endp

_uXm_mm_cvteltd_f64 proc __veccall (real8) frame ;InXmm_A:xmmword, InInt_BSel:dword
			
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
			
_uXm_mm_cvteltd_f64 endp

;******************
; DP, Misc
;******************
_uXm_mm_unpackhi_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpckhpd 				xmm0,			xmm1

			ret
_uXm_mm_unpackhi_pd endp

_uXm_mm_unpacklo_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpcklpd 				xmm0,			xmm1

			ret
_uXm_mm_unpacklo_pd endp

_uXm_mm_movemask_pd proc __veccall (dword) frame ;InXmm_A:xmmword
			
			movmskpd			dreturn,				xmm1

			ret
_uXm_mm_movemask_pd endp

;******************
; DP, sets
;******************
_uXm_mm_set_sd proc __veccall (xmmword) frame ;Inreal8_B:real8

			movsd			xmm0,			xmm1

			ret
_uXm_mm_set_sd endp

_uXm_mm_set_pd1 proc __veccall (xmmword) frame ;Inreal8_B:real8

			movsd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			0

			ret
_uXm_mm_set_pd1 endp

_uXm_mm_set_pd proc __veccall (xmmword) frame ;Inreal8_C:real8, Inreal8_B:real8

			movsd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffle2(0,0)

			movsd			xmm0,			xmm2

			ret
_uXm_mm_set_pd endp

_uXm_mm_setr_pd proc __veccall (xmmword) frame ;Inreal8_B:real8, Inreal8_C:real8

			movsd			xmm0,			xmm2
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffle2(0,0)

			movsd			xmm0,			xmm1

			ret
_uXm_mm_setr_pd endp

_uXm_mm_setzero_pd proc __veccall (xmmword) frame ;

			xorpd			xmm0,			xmm0

			ret
_uXm_mm_setzero_pd endp

;******************
; DP, loads
;******************
_uXm_mm_load_sd proc __veccall (xmmword) frame ;InPreal8_B:ptr real8

			movsd			xmm0,		real8 ptr [rparam2]

			ret
_uXm_mm_load_sd endp

_uXm_mm_load_pd1 proc __veccall (xmmword) frame ;InPreal8_B:ptr real8

			movsd			xmm0,		real8 ptr [rparam2]
			shufpd			xmm0,			xmm0,			0

			ret
_uXm_mm_load_pd1 endp

_uXm_mm_load_pd proc __veccall (xmmword) frame ;InPreal8_B:ptr xmmword

			movapd			xmm0,		xmmword ptr [rparam2]

			ret
_uXm_mm_load_pd endp

_uXm_mm_loadr_pd proc __veccall (xmmword) frame ;InPreal8_B:ptr xmmword

			movapd			xmm0,		xmmword ptr [rparam2]
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)

			ret
_uXm_mm_loadr_pd endp

_uXm_mm_loadu_pd proc __veccall (xmmword) frame ;InPreal8_B:ptr xmmword

			movupd			xmm0,		xmmword ptr [rparam2]

			ret
_uXm_mm_loadu_pd endp

_uXm_mm_loadur_pd proc __veccall (xmmword) frame ;InPreal8_B:ptr xmmword

			movupd			xmm0,		xmmword ptr [rparam2]
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)

			ret
_uXm_mm_loadur_pd endp

_uXm_mm_loadh_pd proc __veccall (xmmword) frame ;InXmm_B:xmmword, InPreal8_C:ptr mmword

			movhpd			xmm0,		mmword ptr [rparam2]

			ret
_uXm_mm_loadh_pd endp

_uXm_mm_loadl_pd proc __veccall (xmmword) frame ;InXmm_B:xmmword, InPreal8_C:ptr mmword

			movlpd			xmm0,		mmword ptr [rparam2]

			ret
_uXm_mm_loadl_pd endp

;******************
; DP, stores
;******************
_uXm_mm_store_sd proc __veccall (voidarg) frame ;OutPreal8_A:ptr real8, InXmm_B:xmmword

			movsd		real8 ptr [rparam1],			xmm1

			ret
_uXm_mm_store_sd endp

_uXm_mm_store_pd1 proc __veccall (voidarg) frame ;OutPreal8_A:ptr real8, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			0
			movapd		xmmword ptr [rparam1],			xmm0

			ret
_uXm_mm_store_pd1 endp

_uXm_mm_storeu_pd1 proc __veccall (voidarg) frame ;OutPreal8_A:ptr real8, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			0
			movupd		xmmword ptr [rparam1],			xmm0

			ret
_uXm_mm_storeu_pd1 endp

_uXm_mm_store_pd proc __veccall (voidarg) frame ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_store_pd endp

_uXm_mm_storeu_pd proc __veccall (voidarg) frame ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movupd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storeu_pd endp

_uXm_mm_storer_pd proc __veccall (voidarg) frame ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)
			movapd		xmmword ptr [rparam1],			xmm0

			ret
_uXm_mm_storer_pd endp

_uXm_mm_storeur_pd proc __veccall (voidarg) frame ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd			xmm0,			xmm1
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)
			movupd		xmmword ptr [rparam1],			xmm0

			ret
_uXm_mm_storeur_pd endp

_uXm_mm_storeh_pd proc __veccall (voidarg) frame ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movhpd		mmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storeh_pd endp

_uXm_mm_storel_pd proc __veccall (voidarg) frame ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movlpd		mmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storel_pd endp

_uXm_mm_store_mm_pd proc __veccall (voidarg) frame ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_store_mm_pd endp

_uXm_mm_store_m128d_pd proc __veccall (voidarg) frame ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_store_m128d_pd endp

_uXm_mm_store_Pdouble_pd proc __veccall (voidarg) frame ;OutPxmmword_A:ptr xmmword, InPreal8_A:ptr xmmword

			movapd			xmm1,			xmmword ptr [rparam2]
			movapd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_store_Pdouble_pd endp

_uXm_mm_storeu_Pdouble_pd proc __veccall (voidarg) frame ;OutPxmmword_A:ptr xmmword, InPreal8_A:ptr xmmword

			movupd			xmm1,			xmmword ptr [rparam2]
			movupd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storeu_Pdouble_pd endp

_uXm_m128d_store_mm_pd proc __veccall (voidarg) frame ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movapd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128d_store_mm_pd endp

_uXm_m128d_store_Pdouble_pd proc __veccall (voidarg) frame ;OutPxmmword_A:ptr xmmword, InPreal8_A:ptr xmmword

			movapd			xmm1,			xmmword ptr [rparam2]
			movapd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128d_store_Pdouble_pd endp

_uXm_m128d_storeu_Pdouble_pd proc __veccall (voidarg) frame ;OutPxmmword_A:ptr xmmword, InPreal8_A:ptr xmmword

			movupd			xmm1,			xmmword ptr [rparam2]
			movupd		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128d_storeu_Pdouble_pd endp

;******************
; DP, moves
;******************
_uXm_mm_move_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movsd 			xmm0,			xmm1

			ret
_uXm_mm_move_sd endp

_uXm_mm_move_pd1 proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			shufpd			xmm0,			xmm0,			0

			ret
_uXm_mm_move_pd1 endp

_uXm_mm_move_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			movapd			xmm0,			xmm0

			ret
_uXm_mm_move_pd endp

_uXm_mm_mover_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)

			ret
_uXm_mm_mover_pd endp

_uXm_mm_move_m128d_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movsd 			xmm0,			xmm1

			ret
_uXm_mm_move_m128d_sd endp

_uXm_mm_move_m128d_pd1 proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			shufpd			xmm0,			xmm0,			0

			ret
_uXm_mm_move_m128d_pd1 endp

_uXm_mm_move_m128d_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			movapd			xmm0,			xmm0

			ret
_uXm_mm_move_m128d_pd endp

_uXm_mm_mover_m128d_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)

			ret
_uXm_mm_mover_m128d_pd endp

_uXm_ptr_move_mm_sd proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movsd 			xmm0,			xmm1
			movapd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_mm_sd endp

_uXm_ptr_move_mm_pd1 proc __veccall (ptr) frame ;InXmm_A:xmmword

			shufpd			xmm0,			xmm0,			0
			movapd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_mm_pd1 endp

_uXm_ptr_move_mm_pd proc __veccall (ptr) frame ;InXmm_A:xmmword

			movapd 			xmm0,			xmm0
			movapd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_mm_pd endp

_uXm_ptr_mover_mm_pd proc __veccall (ptr) frame ;InXmm_A:xmmword

			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)
			movapd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_mover_mm_pd endp

_uXm_ptr_moveu_mm_sd proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movsd 			xmm0,			xmm1
			movupd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_mm_sd endp

_uXm_ptr_moveu_mm_pd1 proc __veccall (ptr) frame ;InXmm_A:xmmword

			shufpd			xmm0,			xmm0,			0
			movupd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_mm_pd1 endp

_uXm_ptr_moveu_mm_pd proc __veccall (ptr) frame ;InXmm_A:xmmword

			movapd 			xmm0,			xmm0
			movupd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_mm_pd endp

_uXm_ptr_moveur_mm_pd proc __veccall (ptr) frame ;InXmm_A:xmmword

			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)
			movupd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveur_mm_pd endp

_uXm_m128d_move_mm_sd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movsd 			xmm0,			xmm1

			ret
_uXm_m128d_move_mm_sd endp

_uXm_m128d_move_mm_pd1 proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			shufpd			xmm0,			xmm0,			0

			ret
_uXm_m128d_move_mm_pd1 endp

_uXm_m128d_move_mm_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			movapd			xmm0,			xmm0

			ret
_uXm_m128d_move_mm_pd endp

_uXm_m128d_mover_mm_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)

			ret
_uXm_m128d_mover_mm_pd endp

_uXm_ptr_move_m128d_sd proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movsd 			xmm0,			xmm1
			movapd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_m128d_sd endp

_uXm_ptr_move_m128d_pd1 proc __veccall (ptr) frame ;InXmm_A:xmmword

			shufpd			xmm0,			xmm0,			0
			movapd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_m128d_pd1 endp

_uXm_ptr_move_m128d_pd proc __veccall (ptr) frame ;InXmm_A:xmmword

			movapd 			xmm0,			xmm0
			movapd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_m128d_pd endp

_uXm_ptr_mover_m128d_pd proc __veccall (ptr) frame ;InXmm_A:xmmword

			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)
			movapd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_mover_m128d_pd endp

_uXm_ptr_moveu_m128d_sd proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movsd 			xmm0,			xmm1
			movupd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_m128d_sd endp

_uXm_ptr_moveu_m128d_pd1 proc __veccall (ptr) frame ;InXmm_A:xmmword

			shufpd			xmm0,			xmm0,			0
			movupd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_m128d_pd1 endp

_uXm_ptr_moveu_m128d_pd proc __veccall (ptr) frame ;InXmm_A:xmmword

			movapd 			xmm0,			xmm0
			movupd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_m128d_pd endp

_uXm_ptr_moveur_m128d_pd proc __veccall (ptr) frame ;InXmm_A:xmmword

			shufpd			xmm0,			xmm0,			_uXm_mm_shuffler2(1,0)
			movupd		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveur_m128d_pd endp

;******************
; Integer, arithmetic
;******************
_uXm_mm_add_epi8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddb 				xmm0,			xmm1

			ret
_uXm_mm_add_epi8 endp

_uXm_mm_add_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddw 				xmm0,			xmm1

			ret
_uXm_mm_add_epi16 endp

_uXm_mm_add_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddd 				xmm0,			xmm1

			ret
_uXm_mm_add_epi32 endp

ifdef __X32__
	__align_fp_opt mm_align_size, mm_align_size

_uXm_mm_add_si64 proc __veccall (mmword) frame ;InXmm_A:mmword, InXmm_B:mmword
			
			paddq 				mm0,			mm1

			ret
_uXm_mm_add_si64 endp

	__align_fp_opt xmm_align_size, xmm_align_size
endif ;__X32__

_uXm_mm_add_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddq 				xmm0,			xmm1

			ret
_uXm_mm_add_epi64 endp

_uXm_mm_adds_epi8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddsb 				xmm0,			xmm1

			ret
_uXm_mm_adds_epi8 endp

_uXm_mm_adds_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddsw 				xmm0,			xmm1

			ret
_uXm_mm_adds_epi16 endp

_uXm_mm_adds_epu8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddusb 				xmm0,			xmm1

			ret
_uXm_mm_adds_epu8 endp

_uXm_mm_adds_epu16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			paddusw 				xmm0,			xmm1

			ret
_uXm_mm_adds_epu16 endp

_uXm_mm_avg_epu8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pavgb 				xmm0,			xmm1

			ret
_uXm_mm_avg_epu8 endp

_uXm_mm_avg_epu16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pavgw 				xmm0,			xmm1

			ret
_uXm_mm_avg_epu16 endp

_uXm_mm_madd_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmaddwd 				xmm0,			xmm1

			ret
_uXm_mm_madd_epi16 endp

_uXm_mm_max_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmaxsw 				xmm0,			xmm1

			ret
_uXm_mm_max_epi16 endp

_uXm_mm_max_epu8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmaxub 				xmm0,			xmm1

			ret
_uXm_mm_max_epu8 endp

_uXm_mm_min_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pminsw				xmm0,			xmm1

			ret
_uXm_mm_min_epi16 endp

_uXm_mm_min_epu8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pminub 				xmm0,			xmm1

			ret
_uXm_mm_min_epu8 endp

_uXm_mm_mulhi_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmulhw 				xmm0,			xmm1

			ret
_uXm_mm_mulhi_epi16 endp

_uXm_mm_mulhi_epu16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmulhuw 				xmm0,			xmm1

			ret
_uXm_mm_mulhi_epu16 endp

_uXm_mm_mullo_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmullw 				xmm0,			xmm1

			ret
_uXm_mm_mullo_epi16 endp

ifdef __X32__
	__align_fp_opt mm_align_size, mm_align_size

_uXm_mm_mul_su32 proc __veccall (mmword) frame ;InXmm_A:mmword, InXmm_B:mmword
			
			pmuludq 				mm0,			mm1

			ret
_uXm_mm_mul_su32 endp

	__align_fp_opt xmm_align_size, xmm_align_size
endif ;__X32__

_uXm_mm_mul_epu32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pmuludq 				xmm0,			xmm1

			ret
_uXm_mm_mul_epu32 endp

_uXm_mm_sad_epu8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psadbw 				xmm0,			xmm1

			ret
_uXm_mm_sad_epu8 endp

_uXm_mm_sub_epi8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubb 				xmm0,			xmm1

			ret
_uXm_mm_sub_epi8 endp

_uXm_mm_sub_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubw 				xmm0,			xmm1

			ret
_uXm_mm_sub_epi16 endp

_uXm_mm_sub_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubd 				xmm0,			xmm1

			ret
_uXm_mm_sub_epi32 endp

ifdef __X32__
	__align_fp_opt mm_align_size, mm_align_size

_uXm_mm_sub_si64 proc __veccall (mmword) frame ;InXmm_A:mmword, InXmm_B:mmword
			
			psubq 				mm0,			mm1

			ret
_uXm_mm_sub_si64 endp

	__align_fp_opt xmm_align_size, xmm_align_size
endif ;__X32__

_uXm_mm_sub_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubq 				xmm0,			xmm1

			ret
_uXm_mm_sub_epi64 endp

_uXm_mm_subs_epi8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubsb 				xmm0,			xmm1

			ret
_uXm_mm_subs_epi8 endp

_uXm_mm_subs_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubsw 				xmm0,			xmm1

			ret
_uXm_mm_subs_epi16 endp

_uXm_mm_subs_epu8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubusb 				xmm0,			xmm1

			ret
_uXm_mm_subs_epu8 endp

_uXm_mm_subs_epu16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			psubusw 				xmm0,			xmm1

			ret
_uXm_mm_subs_epu16 endp

;******************
; Integer, logicals
;******************
_uXm_mm_and_si128 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pand 				xmm0,			xmm1

			ret
_uXm_mm_and_si128 endp

_uXm_mm_andnot_si128 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pandn 				xmm0,			xmm1

			ret
_uXm_mm_andnot_si128 endp

_uXm_mm_or_si128 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			por 				xmm0,			xmm1

			ret
_uXm_mm_or_si128 endp

_uXm_mm_xor_si128 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			pxor 				xmm0,			xmm1

			ret
_uXm_mm_xor_si128 endp

_uXm_mm_not_si128 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movdqa			xmm1,			__m128_true
			pxor			xmm0,			xmm1

			ret
_uXm_mm_not_si128 endp

;******************
; Integer, shifts
;******************
_uXm_mm_sll_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psllw 				xmm0,			xmm1

			ret
_uXm_mm_sll_epi16 endp

_uXm_mm_sll_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			pslld 				xmm0,			xmm1

			ret
_uXm_mm_sll_epi32 endp

_uXm_mm_sll_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psllq 				xmm0,			xmm1

			ret
_uXm_mm_sll_epi64 endp

_uXm_mm_sra_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psraw 				xmm0,			xmm1

			ret
_uXm_mm_sra_epi16 endp

_uXm_mm_sra_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psrad 				xmm0,			xmm1

			ret
_uXm_mm_sra_epi32 endp

_uXm_mm_srl_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psrlw 				xmm0,			xmm1

			ret
_uXm_mm_srl_epi16 endp

_uXm_mm_srl_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psrld 				xmm0,			xmm1

			ret
_uXm_mm_srl_epi32 endp

_uXm_mm_srl_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B_Count:xmmword
			
			psrlq 				xmm0,			xmm1

			ret
_uXm_mm_srl_epi64 endp

;******************
; Integer, comparisons
;******************
_uXm_mm_cmpeq_epi8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpeqb		xmm0,			xmm1

			ret
_uXm_mm_cmpeq_epi8 endp

_uXm_mm_cmpeq_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpeqw		xmm0,			xmm1

			ret
_uXm_mm_cmpeq_epi16 endp

_uXm_mm_cmpeq_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpeqd		xmm0,			xmm1

			ret
_uXm_mm_cmpeq_epi32 endp

_uXm_mm_cmpgt_epi8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtb		xmm0,			xmm1

			ret
_uXm_mm_cmpgt_epi8 endp

_uXm_mm_cmpgt_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtw		xmm0,			xmm1

			ret
_uXm_mm_cmpgt_epi16 endp

_uXm_mm_cmpgt_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtd		xmm0,			xmm1

			ret
_uXm_mm_cmpgt_epi32 endp

_uXm_mm_cmplt_epi8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtb		xmm1,			xmm0

			ret
_uXm_mm_cmplt_epi8 endp

_uXm_mm_cmplt_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtw		xmm1,			xmm0

			ret
_uXm_mm_cmplt_epi16 endp

_uXm_mm_cmplt_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			pcmpgtd		xmm1,			xmm0

			ret
_uXm_mm_cmplt_epi32 endp

;******************
; Integer, converts
;******************
_uXm_mm_cvtsi32_si128 proc __veccall (xmmword) frame ;InInt_A:dword
			
			movd			xmm0,			rparam1

			ret
_uXm_mm_cvtsi32_si128 endp

_uXm_mm_cvtsi128_si32 proc __veccall (dword) frame ;InXmm_A:xmmword
			
			movd			dreturn,			xmm0

			ret
_uXm_mm_cvtsi128_si32 endp

ifdef __X64__
_uXm_mm_cvtsi64_si128 proc __veccall (xmmword) frame ;InInt_A:qword
			
			movq			xmm0,			rparam1

			ret
_uXm_mm_cvtsi64_si128 endp

_uXm_mm_cvtsi128_si64 proc __veccall (qword) frame ;InXmm_A:xmmword
			
			movq			dreturn,			xmm0

			ret
_uXm_mm_cvtsi128_si64 endp
endif ;__X64__

;******************
; Integer, misc
;******************
_uXm_mm_packs_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			packsswb		xmm0,			xmm1

			ret
_uXm_mm_packs_epi16 endp

_uXm_mm_packs_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			packssdw		xmm0,			xmm1

			ret
_uXm_mm_packs_epi32 endp

_uXm_mm_packus_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			packuswb		xmm0,			xmm1

			ret
_uXm_mm_packus_epi16 endp

_uXm_mm_movemask_epi8 proc __veccall (dword) frame ;InXmm_A:xmmword
	
			pmovmskb		dreturn,			xmm0

			ret
_uXm_mm_movemask_epi8 endp

_uXm_mm_unpackhi_epi8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckhbw		xmm0,			xmm1

			ret
_uXm_mm_unpackhi_epi8 endp

_uXm_mm_unpackhi_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckhwd		xmm0,			xmm1

			ret
_uXm_mm_unpackhi_epi16 endp

_uXm_mm_unpackhi_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckhdq		xmm0,			xmm1

			ret
_uXm_mm_unpackhi_epi32 endp

_uXm_mm_unpackhi_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckhqdq		xmm0,			xmm1

			ret
_uXm_mm_unpackhi_epi64 endp

_uXm_mm_unpacklo_epi8 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpcklbw		xmm0,			xmm1

			ret
_uXm_mm_unpacklo_epi8 endp

_uXm_mm_unpacklo_epi16 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpcklwd		xmm0,			xmm1

			ret
_uXm_mm_unpacklo_epi16 endp

_uXm_mm_unpacklo_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpckldq		xmm0,			xmm1

			ret
_uXm_mm_unpacklo_epi32 endp

_uXm_mm_unpacklo_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			punpcklqdq		xmm0,			xmm1

			ret
_uXm_mm_unpacklo_epi64 endp

;******************
; Integer, loads
;******************
_uXm_mm_load1_epi64 proc __veccall (xmmword) frame ;InXPmm_A:ptr xmmword
	
			movq			xmm0,		qword ptr [rparam1]
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)

			ret
_uXm_mm_load1_epi64 endp

_uXm_mm_load1_epi32 proc __veccall (xmmword) frame ;InXPmm_A:ptr xmmword
	
			movd			xmm0,		dword ptr [rparam1]
			pshufd			xmm0,			xmm0,			0

			ret
_uXm_mm_load1_epi32 endp

_uXm_mm_load_si128 proc __veccall (xmmword) frame ;InXPmm_A:ptr xmmword
	
			movdqa			xmm0,		xmmword ptr [rparam1]

			ret
_uXm_mm_load_si128 endp

_uXm_mm_loadr_epi64 proc __veccall (xmmword) frame ;InXPmm_A:ptr xmmword
	
			movdqa			xmm0,		xmmword ptr [rparam1]
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(2,3,0,1)

			ret
_uXm_mm_loadr_epi64 endp

_uXm_mm_loadr_epi32 proc __veccall (xmmword) frame ;InXPmm_A:ptr xmmword
	
			movdqa			xmm0,		xmmword ptr [rparam1]
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_mm_loadr_epi32 endp

_uXm_mm_loadu_si128 proc __veccall (xmmword) frame ;InXPmm_A:ptr xmmword
	
			movdqu			xmm0,		xmmword ptr [rparam1]

			ret
_uXm_mm_loadu_si128 endp

_uXm_mm_loadur_epi64 proc __veccall (xmmword) frame ;InXPmm_A:ptr xmmword
	
			movdqu			xmm0,		xmmword ptr [rparam1]
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(2,3,0,1)

			ret
_uXm_mm_loadur_epi64 endp

_uXm_mm_loadur_epi32 proc __veccall (xmmword) frame ;InXPmm_A:ptr xmmword
	
			movdqu			xmm0,		xmmword ptr [rparam1]
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_mm_loadur_epi32 endp

_uXm_mm_loadh_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXPmm_B:ptr xmmword
	
			movq			xmm1,		qword ptr [rparam2]
			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)

			ret
_uXm_mm_loadh_epi64 endp

_uXm_mm_loadl_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXPmm_B:ptr xmmword
	
			movq			xmm1,		qword ptr [rparam2]

			punpcklqdq 		xmm1, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa			xmm0,			xmm1

			ret
_uXm_mm_loadl_epi64 endp

_uXm_mm_loadh_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXPmm_B:ptr xmmword
	
			movd			xmm1,		dword ptr [rparam2]
			
			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(2,1,2,3)

			punpckldq 		xmm2, 			xmm1 		;shuffler4(2,3,2,3)
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)
			
			ret
_uXm_mm_loadh_epi32 endp

_uXm_mm_loadl_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXPmm_B:ptr xmmword
	
			movd			xmm1,		dword ptr [rparam2]			
			
			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(1,1,2,3)

			punpckldq 		xmm1, 			xmm2 		;shuffler4(0,1,0,1)
			punpcklqdq 		xmm1, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa			xmm0,			xmm1

			ret
_uXm_mm_loadl_epi32 endp

;******************
; Integer, sets
;******************
ifdef __X32__
_uXm_mm_set_pi64 proc __veccall (xmmword) frame ;Inmm_Q1:mmword, Inmm_Q0:mmword
	
			movq			xmm3,			mm0
			movq			xmm2,			mm1
			
			punpcklqdq 		xmm2, 			xmm3			;shuffle2(1,0)

			movdqa			xmm0,			xmm2

			ret
_uXm_mm_set_pi64 endp

_uXm_mm_setr_pi64 proc __veccall (xmmword) frame ;Inmm_Q0:mmword, Inmm_Q1:mmword
	
			movq			xmm2,			mm0
			movq			xmm3,			mm1
			
			punpcklqdq 		xmm2, 			xmm3			;shuffler2(0,1)

			movdqa			xmm0,			xmm2

			ret
_uXm_mm_setr_pi64 endp

_uXm_mm_set1_pi64 proc __veccall (xmmword) frame ;Inmm_Q:mmword
	
			movq			xmm1,			mm0

			punpcklqdq 		xmm1, 			xmm1		;shuffle2(0,0)

			movdqa			xmm0,			xmm1

			ret
_uXm_mm_set1_pi64 endp
endif ;__X32__

_uXm_mm_set_epi64 proc __veccall (xmmword) frame ;InXmm_Q1:xmmword, InXmm_Q0:xmmword

			movdqa			xmm2,			xmm1
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqa			xmm0,			xmm2

			ret
_uXm_mm_set_epi64 endp

_uXm_mm_set_epi64x proc __veccall (xmmword) frame ;InInt_Q1:qword, InInt_Q0:qword
	
			movq			xmm1,			rparam1
			movq			xmm0,			rparam2
			
			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)

			ret
_uXm_mm_set_epi64x endp

_uXm_mm_setr_epi64 proc __veccall (xmmword) frame ;InXmm_Q0:xmmword, InXmm_Q1:xmmword
	
			punpcklqdq 		xmm0, 			xmm1			;shuffler2(0,1)

			ret
_uXm_mm_setr_epi64 endp

_uXm_mm_setr_epi64x proc __veccall (xmmword) frame ;InInt_Q0:qword, InInt_Q1:qword
	
			movq			xmm0,			rparam1
			movq			xmm1,			rparam2
			
			punpcklqdq 		xmm0, 			xmm1			;shuffler2(0,1)

			ret
_uXm_mm_setr_epi64x endp

_uXm_mm_set1_epi64 proc __veccall (xmmword) frame ;InXmm_Q:xmmword
	
			punpcklqdq 		xmm0, 			xmm0		;shuffle2(0,0)

			ret
_uXm_mm_set1_epi64 endp

_uXm_mm_set1_epi64x proc __veccall (xmmword) frame ;InInt_Q:qword
	
			movq			xmm0,			rparam1

			punpcklqdq 		xmm0, 			xmm0		;shuffle2(0,0)

			ret
_uXm_mm_set1_epi64x endp

_uXm_mm_set_epi32 proc __veccall (xmmword) frame ;InInt_D3:dword, InInt_D2:dword, InInt_D1:dword, InInt_D0:dword
	
			movd			xmm3,			rparam1
			movd			xmm2,			rparam2
			movd			xmm1,			rparam3
			movd			xmm0,			rparam4
			
			punpckldq 		xmm2, 			xmm3 		;shuffle4(3,2,3,2)
			punpckldq 		xmm0, 			xmm1 		;shuffle4(1,0,1,0)
			
			punpcklqdq 		xmm0, 			xmm2 		;shuffle2(1,0) (1:3,2|0:1,0)

			ret
_uXm_mm_set_epi32 endp

_uXm_mm_setr_epi32 proc __veccall (xmmword) frame ;InInt_D0:dword, InInt_D1:dword, InInt_D2:dword, InInt_D3:dword
	
			movd			xmm0,			rparam1
			movd			xmm1,			rparam2
			movd			xmm2,			rparam3
			movd			xmm3,			rparam4
			
			punpckldq 		xmm2, 			xmm3 		;shuffler4(2,3,2,3)
			punpckldq 		xmm0, 			xmm1 		;shuffler4(0,1,0,1)
			
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)

			ret
_uXm_mm_setr_epi32 endp

_uXm_mm_set1_epi32 proc __veccall (xmmword) frame ;InInt_D:dword
	
			movd			xmm0,			rparam1
			pshufd			xmm0,			xmm0,			0

			ret
_uXm_mm_set1_epi32 endp

_uXm_mm_set_epi16 proc __veccall (xmmword) frame ;InInt_W7:word, InInt_W6:word, InInt_W5:word, InInt_W4:word, InInt_W3:word, InInt_W2:word, InInt_W1:word, InInt_W0:word
	
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
_uXm_mm_set_epi16 endp

_uXm_mm_setr_epi16 proc __veccall (xmmword) frame ;InInt_W0:word, InInt_W1:word, InInt_W2:word, InInt_W3:word, InInt_W4:word, InInt_W5:word, InInt_W6:word, InInt_W7:word
	
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
_uXm_mm_setr_epi16 endp

_uXm_mm_set1_epi16 proc __veccall (xmmword) frame ;InInt_D:dword
	
			movd			xmm0,			rparam1			
			punpcklwd 		xmm0, 			xmm0 		;shufflerlo4(0,1,0,1)
			punpckldq 		xmm0, 			xmm0 		;shuffler4(0,1,0,1)			
			punpcklqdq 		xmm0, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)

			ret
_uXm_mm_set1_epi16 endp

_uXm_mm_set_epi8 proc __veccall (xmmword) frame ;InInt_W15:byte, InInt_W14:byte, InInt_W13:byte, InInt_W12:byte, InInt_W11:byte, InInt_W10:byte, InInt_W9:byte, InInt_W8:byte
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
_uXm_mm_set_epi8 endp

_uXm_mm_setr_epi8 proc __veccall (xmmword) frame ;InInt_W0:byte, InInt_W1:byte, InInt_W2:byte, InInt_W3:byte, InInt_W4:byte, InInt_W5:byte, InInt_W6:byte, InInt_W7:byte
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
_uXm_mm_setr_epi8 endp

_uXm_mm_set1_epi8 proc __veccall (xmmword) frame ;InInt_D:byte
	
			movd			xmm0,			rparam1			
			punpcklbw 		xmm0, 			xmm0 		;shufflelo4(1,0,1,0)			
			punpcklwd 		xmm0, 			xmm0 		;shufflehi4(1,0,1,0)			
			punpckldq 		xmm0, 			xmm0 		;shuffle4(1,0,1,0)			
			punpcklqdq 		xmm0, 			xmm0 		;shuffle2(1,0) (1:3,2|0:1,0)

			ret
_uXm_mm_set1_epi8 endp

_uXm_mm_setl_epi64 proc __veccall (xmmword) frame ;InXmm_Q:xmmword
	
			movq			xmm0,			xmm0
			
			ret
_uXm_mm_setl_epi64 endp

_uXm_mm_setl_epi64x proc __veccall (xmmword) frame ;InInt_Q:qword
	
			movq			xmm0,			rparam1
			
			ret
_uXm_mm_setl_epi64x endp

_uXm_mm_setzero_si128 proc __veccall (xmmword) frame ;
	
			pxor			xmm0,			xmm1

			ret
_uXm_mm_setzero_si128 endp

;******************
; Integer, stores
;******************
_uXm_mm_store1_epi64 proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(0,1,0,1)
			movq	qword ptr [rparam1],	xmm0

			ret
_uXm_mm_store1_epi64 endp

_uXm_mm_store1_epi32 proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(0,0,0,0)
			movd	dword ptr [rparam1],	xmm0

			ret
_uXm_mm_store1_epi32 endp

_uXm_mm_store_si128 proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
	
			movdqa	xmmword ptr [rparam1],	xmm1

			ret
_uXm_mm_store_si128 endp

_uXm_mm_storer_epi64 proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(2,3,0,1)
			movdqa	xmmword ptr [rparam1],	xmm0

			ret
_uXm_mm_storer_epi64 endp

_uXm_mm_storer_epi32 proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(3,2,1,0)
			movdqa	xmmword ptr [rparam1],	xmm0

			ret
_uXm_mm_storer_epi32 endp

_uXm_mm_storeu_si128 proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
	
			movdqu	xmmword ptr [rparam1],	xmm1

			ret
_uXm_mm_storeu_si128 endp

_uXm_mm_storeur_epi64 proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(2,3,0,1)
			movdqu	xmmword ptr [rparam1],	xmm0

			ret
_uXm_mm_storeur_epi64 endp

_uXm_mm_storeur_epi32 proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(3,2,1,0)
			movdqu	xmmword ptr [rparam1],	xmm0

			ret
_uXm_mm_storeur_epi32 endp

_uXm_mm_storeh_epi64 proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(2,3,2,3)
			movq	qword ptr [rparam1],	xmm0

			ret
_uXm_mm_storeh_epi64 endp

_uXm_mm_storel_epi64 proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_Q:xmmword
	
			movq	qword ptr [rparam1],	xmm1

			ret
_uXm_mm_storel_epi64 endp

_uXm_mm_storeh_epi32 proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			pshufd			xmm0,			xmm1,			_uXm_mm_shuffler4(3,3,3,3)
			movd	dword ptr [rparam1],	xmm0

			ret
_uXm_mm_storeh_epi32 endp

_uXm_mm_storel_epi32 proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_D:xmmword
	
			movd	dword ptr [rparam1],	xmm1

			ret
_uXm_mm_storel_epi32 endp

_uXm_mm_maskmoveu_si128 proc __veccall (voidarg) frame ;InXmm_D:xmmword, InXmm_N:xmmword, OutPint_P:ptr byte
	
			push			rdidx
			mov				bdidx,	byte ptr [rparam3]
			maskmovdqu		xmm0,			xmm1
			pop				rdidx

			ret
_uXm_mm_maskmoveu_si128 endp

_uXm_mm_store_m128i proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
	
			movdqa	xmmword ptr [rparam1],	xmm1

			ret
_uXm_mm_store_m128i endp

_uXm_mm_store_psi128 proc __veccall (voidarg) frame ;OutPxmmword_A:ptr xmmword, InXmm_B:ptr xmmword

			movdqa			xmm1,			xmmword ptr [rparam2]
			movdqa		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_store_psi128 endp

_uXm_mm_storeu_psi128 proc __veccall (voidarg) frame ;OutPxmmword_A:ptr xmmword, InXmm_B:ptr xmmword

			movdqu			xmm1,			xmmword ptr [rparam2]
			movdqu		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storeu_psi128 endp

_uXm_m128i_store_mm_si128 proc __veccall (voidarg) frame ;OutPXmm_A:ptr xmmword, InXmm_B:xmmword
	
			movdqa	xmmword ptr [rparam1],	xmm1

			ret
_uXm_m128i_store_mm_si128 endp

_uXm_m128i_store_psi128 proc __veccall (voidarg) frame ;OutPxmmword_A:ptr xmmword, InXmm_B:ptr xmmword

			movdqa			xmm1,			xmmword ptr [rparam2]
			movdqa		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128i_store_psi128 endp

_uXm_m128i_storeu_psi128 proc __veccall (voidarg) frame ;OutPxmmword_A:ptr xmmword, InXmm_B:ptr xmmword

			movdqu			xmm1,			xmmword ptr [rparam2]
			movdqu		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128i_storeu_psi128 endp

;******************
; Integer, moves
;******************
_uXm_mm_moveq_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			movq			xmm0,			xmm0

			ret
_uXm_mm_moveq_epi64 endp

_uXm_mm_moveqr_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			movq			xmm0,			xmm0
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(2,3,0,1)

			ret
_uXm_mm_moveqr_epi64 endp

_uXm_mm_moved_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			movq			xmm0,			xmm0

			ret
_uXm_mm_moved_epi32 endp

_uXm_mm_movedr_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			movq			xmm0,			xmm0
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_mm_movedr_epi32 endp

_uXm_mm_move_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqa			xmm0,			xmm2

			ret
_uXm_mm_move_epi64 endp

_uXm_mm_mover_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)

			ret
_uXm_mm_mover_epi64 endp

_uXm_mm_move1_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)

			ret
_uXm_mm_move1_epi64 endp

_uXm_mm_move_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			
			movdqa			xmm3,			xmm0
			pshufd			xmm3,			xmm3,			_uXm_mm_shuffler4(1,1,2,3)

			punpckldq 		xmm2, 			xmm3 		;shuffler4(0,1,0,1)
			punpcklqdq 		xmm2, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa			xmm0,			xmm2

			ret
_uXm_mm_move_epi32 endp

_uXm_mm_mover_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(2,1,2,3)

			punpckldq 		xmm2, 			xmm1 		;shuffler4(2,3,2,3)
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)
			
			ret
_uXm_mm_mover_epi32 endp

_uXm_mm_move1_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			0

			ret
_uXm_mm_move1_epi32 endp

_uXm_mm_move_si128 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			movdqa			xmm0,			xmm0

			ret
_uXm_mm_move_si128 endp

ifdef __X32__
_uXm_mm_movqpi64_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			movq2dq			xmm0,			mm0

			ret
_uXm_mm_movqpi64_epi64 endp

_uXm_mm_movpi64_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, Inmm_B:mmword

			movq2dq			xmm2,			mm1
			
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqa			xmm0,			xmm2

			ret
_uXm_mm_movpi64_epi64 endp

_uXm_mm_movepi64_pi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			movdq2q			mm0,			xmm0

			ret
_uXm_mm_movepi64_pi64 endp
endif ;__X32__

_uXm_mm_move_m128i_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqa			xmm0,			xmm2

			ret
_uXm_mm_move_m128i_epi64 endp

_uXm_mm_mover_m128i_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)

			ret
_uXm_mm_mover_m128i_epi64 endp

_uXm_mm_move1_m128i_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)

			ret
_uXm_mm_move1_m128i_epi64 endp

_uXm_mm_move_m128i_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			
			movdqa			xmm3,			xmm0
			pshufd			xmm3,			xmm3,			_uXm_mm_shuffler4(1,1,2,3)

			punpckldq 		xmm2, 			xmm3 		;shuffler4(0,1,0,1)
			punpcklqdq 		xmm2, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa			xmm0,			xmm2

			ret
_uXm_mm_move_m128i_epi32 endp

_uXm_mm_mover_m128i_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(2,1,2,3)

			punpckldq 		xmm2, 			xmm1 		;shuffler4(2,3,2,3)
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)
			
			ret
_uXm_mm_mover_m128i_epi32 endp

_uXm_mm_move1_m128i_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			0

			ret
_uXm_mm_move1_m128i_epi32 endp

_uXm_mm_move_m128i_si128 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			movdqa			xmm0,			xmm0

			ret
_uXm_mm_move_m128i_si128 endp

_uXm_ptr_move_mm_epi64 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqa		xmmword ptr [rreturn],			xmm2

			ret
_uXm_ptr_move_mm_epi64 endp

_uXm_ptr_mover_mm_epi64 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)
			movdqa		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_mover_mm_epi64 endp

_uXm_ptr_move1_mm_epi64 proc __veccall (ptr) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)
			movdqa		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move1_mm_epi64 endp

_uXm_ptr_moveu_mm_epi64 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqu		xmmword ptr [rreturn],			xmm2

			ret
_uXm_ptr_moveu_mm_epi64 endp

_uXm_ptr_moveur_mm_epi64 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)
			movdqu		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveur_mm_epi64 endp

_uXm_ptr_moveu1_mm_epi64 proc __veccall (ptr) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)
			movdqu		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu1_mm_epi64 endp

_uXm_ptr_move_mm_epi32 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			
			movdqa			xmm3,			xmm0
			pshufd			xmm3,			xmm3,			_uXm_mm_shuffler4(1,1,2,3)

			punpckldq 		xmm2, 			xmm3 		;shuffler4(0,1,0,1)
			punpcklqdq 		xmm2, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa		xmmword ptr [rreturn],			xmm2

			ret
_uXm_ptr_move_mm_epi32 endp

_uXm_ptr_mover_mm_epi32 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(2,1,2,3)

			punpckldq 		xmm2, 			xmm1 		;shuffler4(2,3,2,3)
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa		xmmword ptr [rreturn],			xmm0
			
			ret
_uXm_ptr_mover_mm_epi32 endp

_uXm_ptr_move1_mm_epi32 proc __veccall (ptr) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			0
			movdqa		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move1_mm_epi32 endp

_uXm_ptr_moveu_mm_epi32 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			
			movdqa			xmm3,			xmm0
			pshufd			xmm3,			xmm3,			_uXm_mm_shuffler4(1,1,2,3)

			punpckldq 		xmm2, 			xmm3 		;shuffler4(0,1,0,1)
			punpcklqdq 		xmm2, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqu		xmmword ptr [rreturn],			xmm2

			ret
_uXm_ptr_moveu_mm_epi32 endp

_uXm_ptr_moveur_mm_epi32 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(2,1,2,3)

			punpckldq 		xmm2, 			xmm1 		;shuffler4(2,3,2,3)
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqu		xmmword ptr [rreturn],			xmm0
			
			ret
_uXm_ptr_moveur_mm_epi32 endp

_uXm_ptr_moveu1_mm_epi32 proc __veccall (ptr) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			0
			movdqu		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu1_mm_epi32 endp

_uXm_ptr_move_mm_si128 proc __veccall (ptr) frame ;InXmm_A:xmmword

			movdqa		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_mm_si128 endp

_uXm_ptr_moveu_mm_si128 proc __veccall (ptr) frame ;InXmm_A:xmmword

			movdqu		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_mm_si128 endp

_uXm_m128i_move_mm_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqa			xmm0,			xmm2

			ret
_uXm_m128i_move_mm_epi64 endp

_uXm_m128i_mover_mm_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)

			ret
_uXm_m128i_mover_mm_epi64 endp

_uXm_m128i_move1_mm_epi64 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)

			ret
_uXm_m128i_move1_mm_epi64 endp

_uXm_m128i_move_mm_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			
			movdqa			xmm3,			xmm0
			pshufd			xmm3,			xmm3,			_uXm_mm_shuffler4(1,1,2,3)

			punpckldq 		xmm2, 			xmm3 		;shuffler4(0,1,0,1)
			punpcklqdq 		xmm2, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa			xmm0,			xmm2

			ret
_uXm_m128i_move_mm_epi32 endp

_uXm_m128i_mover_mm_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(2,1,2,3)

			punpckldq 		xmm2, 			xmm1 		;shuffler4(2,3,2,3)
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)
			
			ret
_uXm_m128i_mover_mm_epi32 endp

_uXm_m128i_move1_mm_epi32 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			0

			ret
_uXm_m128i_move1_mm_epi32 endp

_uXm_m128i_move_mm_si128 proc __veccall (xmmword) frame ;InXmm_A:xmmword

			movdqa			xmm0,			xmm0

			ret
_uXm_m128i_move_mm_si128 endp

_uXm_ptr_move_m128i_epi64 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqa		xmmword ptr [rreturn],			xmm2

			ret
_uXm_ptr_move_m128i_epi64 endp

_uXm_ptr_mover_m128i_epi64 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)
			movdqa		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_mover_m128i_epi64 endp

_uXm_ptr_move1_m128i_epi64 proc __veccall (ptr) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)
			movdqa		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move1_m128i_epi64 endp

_uXm_ptr_moveu_m128i_epi64 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			punpcklqdq 		xmm2, 			xmm0			;shuffle2(1,0)
			movdqu		xmmword ptr [rreturn],			xmm2

			ret
_uXm_ptr_moveu_m128i_epi64 endp

_uXm_ptr_moveur_m128i_epi64 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			punpcklqdq 		xmm0, 			xmm1			;shuffle2(1,0)
			movdqu		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveur_m128i_epi64 endp

_uXm_ptr_moveu1_m128i_epi64 proc __veccall (ptr) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(0,1,0,1)
			movdqu		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu1_m128i_epi64 endp

_uXm_ptr_move_m128i_epi32 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			
			movdqa			xmm3,			xmm0
			pshufd			xmm3,			xmm3,			_uXm_mm_shuffler4(1,1,2,3)

			punpckldq 		xmm2, 			xmm3 		;shuffler4(0,1,0,1)
			punpcklqdq 		xmm2, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa		xmmword ptr [rreturn],			xmm2

			ret
_uXm_ptr_move_m128i_epi32 endp

_uXm_ptr_mover_m128i_epi32 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(2,1,2,3)

			punpckldq 		xmm2, 			xmm1 		;shuffler4(2,3,2,3)
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqa		xmmword ptr [rreturn],			xmm0
			
			ret
_uXm_ptr_mover_m128i_epi32 endp

_uXm_ptr_move1_m128i_epi32 proc __veccall (ptr) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			0
			movdqa		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move1_m128i_epi32 endp

_uXm_ptr_moveu_m128i_epi32 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movq			xmm2,			xmm1
			
			movdqa			xmm3,			xmm0
			pshufd			xmm3,			xmm3,			_uXm_mm_shuffler4(1,1,2,3)

			punpckldq 		xmm2, 			xmm3 		;shuffler4(0,1,0,1)
			punpcklqdq 		xmm2, 			xmm0 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqu		xmmword ptr [rreturn],			xmm2

			ret
_uXm_ptr_moveu_m128i_epi32 endp

_uXm_ptr_moveur_m128i_epi32 proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movdqa			xmm2,			xmm0
			pshufd			xmm2,			xmm2,			_uXm_mm_shuffler4(2,1,2,3)

			punpckldq 		xmm2, 			xmm1 		;shuffler4(2,3,2,3)
			punpcklqdq 		xmm0, 			xmm2 		;shuffler2(0,1) (0:0,1|1:2,3)
			movdqu		xmmword ptr [rreturn],			xmm0
			
			ret
_uXm_ptr_moveur_m128i_epi32 endp

_uXm_ptr_moveu1_m128i_epi32 proc __veccall (ptr) frame ;InXmm_A:xmmword

			pshufd			xmm0,			xmm0,			0
			movdqu		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu1_m128i_epi32 endp

_uXm_ptr_move_m128i_si128 proc __veccall (ptr) frame ;InXmm_A:xmmword

			movdqa		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_m128i_si128 endp

_uXm_ptr_moveu_m128i_si128 proc __veccall (ptr) frame ;InXmm_A:xmmword

			movdqu		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_m128i_si128 endp


endif ;__MIC__

	end
