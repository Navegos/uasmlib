
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
	
	__align_fp_opt xmm_align_size, xmm_align_size

	.code
	
;******************
; Externs
;******************
	;extern __veccall _uXm_intrin_CPUFeatures:proc
	
;******************
; Proto
;******************
_uXm_mm_add_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_add_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_sub_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_sub_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_mul_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_mul_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_div_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_div_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_sqrt_ss proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_sqrt_ps proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_rcp_ss proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_rcp_ps proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_rsqrt_ss proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_rsqrt_ps proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_min_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_min_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_max_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_max_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_mm_and_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_andnot_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_or_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_xor_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_not_ps proto __veccall (xmmword) ;InXmm_A:xmmword

_uXm_mm_cmpeq_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpeq_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmplt_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmplt_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmple_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmple_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpgt_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpgt_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpge_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpge_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpneq_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpneq_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpnlt_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpnlt_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpnle_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpnle_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpngt_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpngt_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpnge_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpnge_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpord_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpord_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpunord_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_cmpunord_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_mm_comieq_ss proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_comilt_ss proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_comile_ss proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_comige_ss proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_comigt_ss proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_comineq_ss proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_ucomieq_ss proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_ucomilt_ss proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_ucomile_ss proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_ucomigt_ss proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_ucomige_ss proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_ucomineq_ss proto __veccall (dword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_mm_cvt_ss2si proto __veccall (dword) ;InXmm_A:xmmword
_uXm_mm_cvtt_ss2si proto __veccall (dword) ;InXmm_A:xmmword
_uXm_mm_cvt_si2ss proto __veccall (xmmword) ;InXmm_A:xmmword, InInt_B:dword
_uXm_mm_cvtss_f32 proto __veccall (real4) ;InXmm_A:xmmword
_uXm_mm_cvt0s_f32 proto __veccall (real4) ;InXmm_A:xmmword
_uXm_mm_cvt1s_f32 proto __veccall (real4) ;InXmm_A:xmmword
_uXm_mm_cvt2s_f32 proto __veccall (real4) ;InXmm_A:xmmword
_uXm_mm_cvt3s_f32 proto __veccall (real4) ;InXmm_A:xmmword
_uXm_mm_cvtelts_f32 proto __veccall (real4) ;InXmm_A:xmmword, InInt_BSel:dword

ifdef __X32__
	__align_fp_opt mm_align_size, mm_align_size
_uXm_mm_cvt_ps2pi proto __veccall (mmword) ;InXmm_A:xmmword
_uXm_mm_cvtt_ps2pi proto __veccall (mmword) ;InXmm_A:xmmword
_uXm_mm_cvt_pi2ps proto __veccall (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword
	__align_fp_opt xmm_align_size, xmm_align_size
endif ;!__X32__

ifdef __X64__
_uXm_mm_cvtss_si64 proto __veccall (qword) ;InXmm_A:xmmword
_uXm_mm_cvttss_si64 proto __veccall (qword) ;InXmm_A:xmmword
_uXm_mm_cvtsi64_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InInt_B:qword
endif ;__X64__

_uXm_mm_transpose4_ps proto __veccall (voidarg) ;InXmm_row0:xmmword, InXmm_row1:xmmword, InXmm_row2:xmmword, InXmm_row3:xmmword
_uXm_mm_unpackhi_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_unpacklo_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_movehl_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_movelh_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_loadh_pi proto __veccall (xmmword) ;InXmm_A:xmmword, InPmm_B:ptr mmword
_uXm_mm_loadl_pi proto __veccall (xmmword) ;InXmm_A:xmmword, InPmm_B:ptr mmword
_uXm_mm_storeh_pi proto __veccall (voidarg) ;OutPmm_A:ptr mmword, InXmm_B:xmmword
_uXm_mm_storel_pi proto __veccall (voidarg) ;OutPmm_A:ptr mmword, InXmm_B:xmmword
_uXm_mm_movemask_ps proto __veccall (dword) ;InXmm_A:xmmword

ifdef __X32__
	__align_fp_opt mm_align_size, mm_align_size
_uXm_mm_pextrw_0 proto __veccall (dword) ;Inmm_A:mmword
_uXm_mm_pextrw_1 proto __veccall (dword) ;Inmm_A:mmword
_uXm_mm_pextrw_2 proto __veccall (dword) ;Inmm_A:mmword
_uXm_mm_pextrw_3 proto __veccall (dword) ;Inmm_A:mmword
_uXm_mm_pextrw proto __veccall (dword) ;Inmm_A:mmword,  _Imm8:dword
_uXm_mm_pinsrw_0 proto __veccall (mmword) ;Inmm_A:mmword,  InInt_B:dword
_uXm_mm_pinsrw_1 proto __veccall (mmword) ;Inmm_A:mmword,  InInt_B:dword
_uXm_mm_pinsrw_2 proto __veccall (mmword) ;Inmm_A:mmword,  InInt_B:dword
_uXm_mm_pinsrw_3 proto __veccall (mmword) ;Inmm_A:mmword,  InInt_B:dword
_uXm_mm_pinsrw proto __veccall (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
_uXm_mm_pmaxsw proto __veccall (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_pmaxub proto __veccall (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_pminsw proto __veccall (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_pminub proto __veccall (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_pmovmskb proto __veccall (dword) ;Inmm_A:mmword
_uXm_mm_pmulhuw proto __veccall (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_maskmovq proto __veccall (voidarg) ;Inmm_A:mmword, Inmm_B:mmword, OutPInt8_C:ptr byte
_uXm_mm_pavgb proto __veccall (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_pavgw proto __veccall (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_psadbw proto __veccall (mmword) ;Inmm_A:mmword, Inmm_B:mmword
	__align_fp_opt xmm_align_size, xmm_align_size
endif ;__X32__

_uXm_mm_set_ss proto __veccall (xmmword) ;Inreal4_A:real4
_uXm_mm_set_ps1 proto __veccall (xmmword) ;Inreal4_A:real4
_uXm_mm_set_ps proto __veccall (xmmword) ;Inreal4_D:real4 ;Inreal4_C:real4 ;Inreal4_B:real4 ;Inreal4_A:real4
_uXm_mm_setr_ps proto __veccall (xmmword) ;Inreal4_A:real4 ;Inreal4_B:real4 ;Inreal4_C:real4 ;Inreal4_D:real4
_uXm_mm_setzero_ps proto __veccall (xmmword)

_uXm_mm_load_ss proto __veccall (xmmword) ;InPreal4_A:ptr real4
_uXm_mm_load_ps1 proto __veccall (xmmword) ;InPreal4_A:ptr real4
_uXm_mm_load_ps proto __veccall (xmmword) ;InPreal4_A:ptr xmmword
_uXm_mm_loadr_ps proto __veccall (xmmword) ;InPreal4_A:ptr xmmword
_uXm_mm_loadu_ps proto __veccall (xmmword) ;InPreal4_A:ptr xmmword
_uXm_mm_loadur_ps proto __veccall (xmmword) ;InPreal4_A:ptr xmmword
_uXm_mm_loadh_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InPreal4_B:ptr mmword
_uXm_mm_loadl_ps proto __veccall (xmmword) ;InXmm_A:xmmword, InPreal4_B:ptr mmword

_uXm_mm_store_ss proto __veccall (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword
_uXm_mm_store_ps1 proto __veccall (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword
_uXm_mm_storeu_ps1 proto __veccall (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword
_uXm_mm_store_ps proto __veccall (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storeu_ps proto __veccall (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storer_ps proto __veccall (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storeur_ps proto __veccall (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storeh_ps proto __veccall (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storel_ps proto __veccall (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

_uXm_mm_store_mm_ps proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_store_m128_ps proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_store_Pfloat_ps proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword
_uXm_mm_storeu_Pfloat_ps proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword

_uXm_m128_store_mm_ps proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128_store_Pfloat_ps proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword
_uXm_m128_storeu_Pfloat_ps proto __veccall (voidarg) ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword

_uXm_mm_move_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_move_ps1 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_move_ps proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_mover_ps proto __veccall (xmmword) ;InXmm_A:xmmword

_uXm_mm_move_m128_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_move_m128_ps1 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_move_m128_ps proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_mm_mover_m128_ps proto __veccall (xmmword) ;InXmm_A:xmmword

_uXm_ptr_move_mm_ss proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_move_mm_ps1 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_move_mm_ps proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_mover_mm_ps proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_mm_ss proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_moveu_mm_ps1 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_mm_ps proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveur_mm_ps proto __veccall (ptr) ;InXmm_A:xmmword

_uXm_m128_move_mm_ss proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_move_mm_ps1 proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_m128_move_mm_ps proto __veccall (xmmword) ;InXmm_A:xmmword
_uXm_m128_mover_mm_ps proto __veccall (xmmword) ;InXmm_A:xmmword

_uXm_ptr_move_m128_ss proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_move_m128_ps1 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_move_m128_ps proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_mover_m128_ps proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_m128_ss proto __veccall (ptr) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_ptr_moveu_m128_ps1 proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveu_m128_ps proto __veccall (ptr) ;InXmm_A:xmmword
_uXm_ptr_moveur_m128_ps proto __veccall (ptr) ;InXmm_A:xmmword

_uXm_mm_prefetch_0 proto __veccall (voidarg) ;InPInt8_A:ptr byte
_uXm_mm_prefetch_1 proto __veccall (voidarg) ;InPInt8_A:ptr byte
_uXm_mm_prefetch_2 proto __veccall (voidarg) ;InPInt8_A:ptr byte
_uXm_mm_prefetch_3 proto __veccall (voidarg) ;InPInt8_A:ptr byte
_uXm_mm_prefetch proto __veccall (voidarg) ;InPInt8_A:ptr byte, InInt_BSel:dword

ifdef __X32__
	__align_fp_opt mm_align_size, mm_align_size
_uXm_mm_stream_pi proto __veccall (dword) ;OutPmm_A:ptr mmword,Inmm_B:mmword
	__align_fp_opt xmm_align_size, xmm_align_size
endif ;__X32__

_uXm_mm_stream_ps proto __veccall (dword) ;OutPfloat_A:ptr xmmword, InXmm_B:xmmword

_uXm_mm_sfence proto __veccall (voidarg)
_uXm_mm_getcsr proto __veccall (dword)
_uXm_mm_setcsr proto __veccall (voidarg) ;InInt_A:dword

;******************
; Proc
;******************

;************************************
; __uXm128, FP, arithmetic
;************************************
_uXm_mm_add_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			addss			xmm0,			xmm1

			ret
_uXm_mm_add_ss endp

_uXm_mm_add_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			addps			xmm0,			xmm1

			ret
_uXm_mm_add_ps endp
	
_uXm_mm_sub_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			subss			xmm0,			xmm1

			ret
_uXm_mm_sub_ss endp

_uXm_mm_sub_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			subps			xmm0,			xmm1

			ret
_uXm_mm_sub_ps endp

_uXm_mm_mul_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			mulss			xmm0,			xmm1

			ret
_uXm_mm_mul_ss endp

_uXm_mm_mul_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			mulps			xmm0,			xmm1

			ret
_uXm_mm_mul_ps endp

_uXm_mm_div_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			divss			xmm0,			xmm1

			ret
_uXm_mm_div_ss endp

_uXm_mm_div_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			divps			xmm0,			xmm1

			ret
_uXm_mm_div_ps endp

_uXm_mm_sqrt_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword

			sqrtss			xmm0,			xmm1

			ret
_uXm_mm_sqrt_ss endp

_uXm_mm_sqrt_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword

			sqrtps			xmm0,			xmm1

			ret
_uXm_mm_sqrt_ps endp

_uXm_mm_rcp_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword

			rcpss			xmm0,			xmm1

			ret
_uXm_mm_rcp_ss endp

_uXm_mm_rcp_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword

			rcpps			xmm0,			xmm1

			ret
_uXm_mm_rcp_ps endp

_uXm_mm_rsqrt_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword

			rsqrtss			xmm0,			xmm1

			ret
_uXm_mm_rsqrt_ss endp

_uXm_mm_rsqrt_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword

			rsqrtps			xmm0,			xmm1

			ret
_uXm_mm_rsqrt_ps endp

_uXm_mm_min_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			minss			xmm0,			xmm1

			ret
_uXm_mm_min_ss endp

_uXm_mm_min_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			minps			xmm0,			xmm1

			ret
_uXm_mm_min_ps endp

_uXm_mm_max_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			maxss			xmm0,			xmm1

			ret
_uXm_mm_max_ss endp

_uXm_mm_max_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			maxps			xmm0,			xmm1

			ret
_uXm_mm_max_ps endp

;******************
; __uXm128, FP, logical
;******************
_uXm_mm_and_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			andps			xmm0,			xmm1

			ret
_uXm_mm_and_ps endp

_uXm_mm_andnot_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			andnps			xmm0,			xmm1

			ret
_uXm_mm_andnot_ps endp

_uXm_mm_or_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			orps			xmm0,			xmm1

			ret
_uXm_mm_or_ps endp

_uXm_mm_xor_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			xorps			xmm0,			xmm1

			ret
_uXm_mm_xor_ps endp

_uXm_mm_not_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword

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
_uXm_mm_not_ps endp

;******************
; __uXm128, FP, comparison
;******************
_uXm_mm_cmpeq_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_EQ

			ret
_uXm_mm_cmpeq_ss endp

_uXm_mm_cmpeq_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_EQ

			ret
_uXm_mm_cmpeq_ps endp

_uXm_mm_cmplt_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_mm_cmplt_ss endp

_uXm_mm_cmplt_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_mm_cmplt_ps endp

_uXm_mm_cmple_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_mm_cmple_ss endp

_uXm_mm_cmple_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_mm_cmple_ps endp

_uXm_mm_cmpgt_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_mm_cmpgt_ss endp

_uXm_mm_cmpgt_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_mm_cmpgt_ps endp

_uXm_mm_cmpge_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_mm_cmpge_ss endp

_uXm_mm_cmpge_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_mm_cmpge_ps endp

_uXm_mm_cmpneq_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NEQ

			ret
_uXm_mm_cmpneq_ss endp

_uXm_mm_cmpneq_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NEQ

			ret
_uXm_mm_cmpneq_ps endp

_uXm_mm_cmpnlt_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_mm_cmpnlt_ss endp

_uXm_mm_cmpnlt_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NLT

			ret
_uXm_mm_cmpnlt_ps endp

_uXm_mm_cmpnle_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_mm_cmpnle_ss endp

_uXm_mm_cmpnle_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_NLE

			ret
_uXm_mm_cmpnle_ps endp

_uXm_mm_cmpngt_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_mm_cmpngt_ss endp

_uXm_mm_cmpngt_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_LE

			ret
_uXm_mm_cmpngt_ps endp

_uXm_mm_cmpnge_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_mm_cmpnge_ss endp

_uXm_mm_cmpnge_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_LT

			ret
_uXm_mm_cmpnge_ps endp

_uXm_mm_cmpord_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_ORD

			ret
_uXm_mm_cmpord_ss endp

_uXm_mm_cmpord_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_ORD

			ret
_uXm_mm_cmpord_ps endp

_uXm_mm_cmpunord_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpss			xmm0,			xmm1,			CMPP_UNORD

			ret
_uXm_mm_cmpunord_ss endp

_uXm_mm_cmpunord_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
	
			cmpps			xmm0,			xmm1,			CMPP_UNORD

			ret
_uXm_mm_cmpunord_ps endp

;******************
; __uXm128, FP, comparison return int
;******************
_uXm_mm_comieq_ss proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			je m128_label_comieq_ss
			xor				rreturn,			rreturn
	m128_label_comieq_ss:
			mov				rreturn,			true

			ret
_uXm_mm_comieq_ss endp

_uXm_mm_comilt_ss proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128_label_comilt_ss
			xor				rreturn,			rreturn
	m128_label_comilt_ss:
			mov				rreturn,			true

			ret
_uXm_mm_comilt_ss endp

_uXm_mm_comile_ss proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe m128_label_comile_ss
			xor				rreturn,			rreturn
	m128_label_comile_ss:
			mov				rreturn,			true

			ret
_uXm_mm_comile_ss endp

_uXm_mm_comigt_ss proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128_label_comigt_ss
			xor				rreturn,			rreturn
	m128_label_comigt_ss:
			mov				rreturn,			true

			ret
_uXm_mm_comigt_ss endp

_uXm_mm_comige_ss proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128_label_comige_ss
			xor				rreturn,			rreturn
	m128_label_comige_ss:
			mov				rreturn,			true

			ret
_uXm_mm_comige_ss endp

_uXm_mm_comineq_ss proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128_label_comineq_ss
			xor				rreturn,			rreturn
	m128_label_comineq_ss:
			mov				rreturn,			true

			ret
_uXm_mm_comineq_ss endp

_uXm_mm_ucomieq_ss proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			ucomiss			xmm0,			xmm1
			je m128_label_ucomieq_ss
			xor				rreturn,			rreturn
	m128_label_ucomieq_ss:
			mov				rreturn,			true

			ret
_uXm_mm_ucomieq_ss endp

_uXm_mm_ucomilt_ss proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128_label_ucomilt_ss
			xor				rreturn,			rreturn
	m128_label_ucomilt_ss:
			mov				rreturn,			true

			ret
_uXm_mm_ucomilt_ss endp

_uXm_mm_ucomile_ss proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe m128_label_ucomile_ss
			xor				rreturn,			rreturn
	m128_label_ucomile_ss:
			mov				rreturn,			true

			ret
_uXm_mm_ucomile_ss endp

_uXm_mm_ucomigt_ss proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128_label_ucomigt_ss
			xor				rreturn,			rreturn
	m128_label_ucomigt_ss:
			mov				rreturn,			true

			ret
_uXm_mm_ucomigt_ss endp

_uXm_mm_ucomige_ss proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128_label_ucomige_ss
			xor				rreturn,			rreturn
	m128_label_ucomige_ss:
			mov				rreturn,			true

			ret
_uXm_mm_ucomige_ss endp

_uXm_mm_ucomineq_ss proc __veccall (dword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128_label_ucomineq_ss
			xor				rreturn,			rreturn
	m128_label_ucomineq_ss:
			mov				rreturn,			true

			ret
_uXm_mm_ucomineq_ss endp

;******************
; __uXm128, FP, conversions
;******************
_uXm_mm_cvt_ss2si proc __veccall (dword) frame ;InXmm_A:xmmword
			
			cvtss2si			dreturn,			xmm0

			ret
_uXm_mm_cvt_ss2si endp

_uXm_mm_cvtt_ss2si proc __veccall (dword) frame ;InXmm_A:xmmword
			
			cvttss2si			dreturn,			xmm0

			ret
_uXm_mm_cvtt_ss2si endp

_uXm_mm_cvt_si2ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InInt_B:dword
			
			cvtsi2ss			xmm0,			dparam2

			ret
_uXm_mm_cvt_si2ss endp

_uXm_mm_cvtss_f32 proc __veccall (real4) frame ;InXmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
_uXm_mm_cvtss_f32 endp

_uXm_mm_cvt0s_f32 proc __veccall (real4) frame ;InXmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
_uXm_mm_cvt0s_f32 endp

_uXm_mm_cvt1s_f32 proc __veccall (real4) frame ;InXmm_A:xmmword

			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(1,1,1,1)
			movss			xmm0,			xmm0

			ret
_uXm_mm_cvt1s_f32 endp

_uXm_mm_cvt2ss_f32 proc __veccall (real4) frame ;InXmm_A:xmmword

			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(2,2,2,2)
			movss			xmm0,			xmm0

			ret
_uXm_mm_cvt2ss_f32 endp

_uXm_mm_cvt3s_f32 proc __veccall (real4) frame ;InXmm_A:xmmword

			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,3,3,3)
			movss			xmm0,			xmm0

			ret
_uXm_mm_cvt3s_f32 endp

_uXm_mm_cvtelts_f32 proc __veccall (real4) frame ;InXmm_A:xmmword, InInt_BSel:dword

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
			
_uXm_mm_cvtelts_f32 endp

ifdef __X32__
	__align_fp_opt mm_align_size, mm_align_size

_uXm_mm_cvt_ps2pi proc __veccall (mmword) frame ;InXmm_A:xmmword
			
			cvtps2pi			mm0,			xmm0

			ret
_uXm_mm_cvt_ps2pi endp

_uXm_mm_cvtt_ps2pi proc __veccall (mmword) frame ;InXmm_A:xmmword
			
			cvttps2pi			mm0,			xmm0

			ret
_uXm_mm_cvtt_ps2pi endp

_uXm_mm_cvt_pi2ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, Inmm_B:mmword
			
			cvtpi2ps			xmm0,			mm1

			ret
_uXm_mm_cvt_pi2ps endp

	__align_fp_opt xmm_align_size, xmm_align_size
endif ;__X32__

ifdef __X64__
;******************
; __uXm128, FP, conversions, 64-bit intrinsics
;******************
_uXm_mm_cvtss_si64 proc __veccall (qword) frame ;InXmm_A:xmmword
			
			cvtss2si			qreturn,			xmm0

			ret
_uXm_mm_cvtss_si64 endp

_uXm_mm_cvttss_si64 proc __veccall (qword) frame ;InXmm_A:xmmword
			
			cvttss2si			qreturn,			xmm0

			ret
_uXm_mm_cvttss_si64 endp

_uXm_mm_cvtsi64_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InInt_B:qword
			
			cvtsi2ss			xmm0,			rparam2

			ret
_uXm_mm_cvtsi64_ss endp
endif ;__X64__

;******************
; FP, misc
;******************
_uXm_mm_transpose4_ps proc __veccall (voidarg) frame ;InXmm_row0:xmmword, InXmm_row1:xmmword, InXmm_row2:xmmword, InXmm_row3:xmmword
			
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
_uXm_mm_transpose4_ps endp

_uXm_mm_unpackhi_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpckhps 			xmm0,			xmm1

			ret
_uXm_mm_unpackhi_ps endp

_uXm_mm_unpacklo_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpcklps			xmm0,			xmm1

			ret
_uXm_mm_unpacklo_ps endp

_uXm_mm_movehl_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movhlps				xmm0,			xmm1

			ret
_uXm_mm_movehl_ps endp

_uXm_mm_movelh_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movlhps 		xmm0,			xmm1

			ret
_uXm_mm_movelh_ps endp

_uXm_mm_loadh_pi proc __veccall (xmmword) frame ;InXmm_A:xmmword, InPmm_B:ptr mmword
			
			movhps 			xmm0,	mmword ptr [rparam2]

			ret
_uXm_mm_loadh_pi endp

_uXm_mm_loadl_pi proc __veccall (xmmword) frame ;InXmm_A:xmmword, InPmm_B:ptr mmword
			
			movlps			xmm0,	mmword ptr [rparam2]

			ret
_uXm_mm_loadl_pi endp

_uXm_mm_storeh_pi proc __veccall (voidarg) frame ;OutPmm_A:ptr mmword, InXmm_B:xmmword
			
			movhps 		mmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storeh_pi endp

_uXm_mm_storel_pi proc __veccall (voidarg) frame ;OutPmm_A:ptr mmword, InXmm_B:xmmword
			
			movlps 		mmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storel_pi endp

_uXm_mm_movemask_ps proc __veccall (dword) frame ;InXmm_A:xmmword
			
			movmskps			dreturn,				xmm0

			ret
_uXm_mm_movemask_ps endp

ifdef __X32__
;******************
; Integer (MMX) extensions
;******************
	__align_fp_opt mm_align_size, mm_align_size

_uXm_mm_pextrw_0 proc __veccall (dword) frame ;Inmm_A:mmword

			pextrw			dreturn,			mm0,			0

			ret
_uXm_mm_pextrw_0 endp

_uXm_mm_pextrw_1 proc __veccall (dword) frame ;Inmm_A:mmword

			pextrw			dreturn,			mm0,			1

			ret
_uXm_mm_pextrw1 endp

_uXm_mm_pextrw_2 proc __veccall (dword) frame ;Inmm_A:mmword

			pextrw			dreturn,			mm0,			2

			ret
_uXm_mm_pextrw_2 endp

_uXm_mm_pextrw_3 proc __veccall (dword) frame ;Inmm_A:mmword

			pextrw			dreturn,			mm0,			3

			ret
_uXm_mm_pextrw_3 endp

_uXm_mm_pextrw proc __veccall (dword) frame ;Inmm_A:mmword,  _Imm8:dword

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

_uXm_mm_pextrw endp

_uXm_mm_pinsrw_0 proc __veccall (mmword) frame ;Inmm_A:mmword,  InInt_B:dword
			
			pinsrw			mm0,			dparam2,			0

			ret
_uXm_mm_pinsrw_0 endp

_uXm_mm_pinsrw_1 proc __veccall (mmword) frame ;Inmm_A:mmword,  InInt_B:dword
			
			pinsrw			mm0,			dparam2,			1

			ret
_uXm_mm_pinsrw1 endp

_uXm_mm_pinsrw_2 proc __veccall (mmword) frame ;Inmm_A:mmword,  InInt_B:dword
			
			pinsrw			mm0,			dparam2,			2

			ret
_uXm_mm_pinsrw_2 endp

_uXm_mm_pinsrw_3 proc __veccall (mmword) frame ;Inmm_A:mmword,  InInt_B:dword
			
			pinsrw			mm0,			dparam2,			3

			ret
_uXm_mm_pinsrw_3 endp

_uXm_mm_pinsrw proc __veccall (mmword) frame ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
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

_uXm_mm_pinsrw endp

_uXm_mm_pmaxsw proc __veccall (mmword) frame ;Inmm_A:mmword, Inmm_B:mmword
			
			pmaxsw			mm0,			mm1

			ret
_uXm_mm_pmaxsw endp

_uXm_mm_pmaxub proc __veccall (mmword) frame ;Inmm_A:mmword, Inmm_B:mmword
			
			pmaxub			mm0,			mm1

			ret
_uXm_mm_pmaxub endp

_uXm_mm_pminsw proc __veccall (mmword) frame ;Inmm_A:mmword, Inmm_B:mmword
			
			pminsw			mm0,			mm1

			ret
_uXm_mm_pminsw endp

_uXm_mm_pminub proc __veccall (mmword) frame ;Inmm_A:mmword, Inmm_B:mmword
			
			pminub			mm0,			mm1

			ret
_uXm_mm_pminub endp

_uXm_mm_pmovmskb proc __veccall (dword) frame ;Inmm_A:mmword
			
			pmovmskb		dreturn,			mm0

			ret
_uXm_mm_pmovmskb endp

_uXm_mm_pmulhuw proc __veccall (mmword) frame ;Inmm_A:mmword, Inmm_B:mmword
			
			pmulhuw			mm0,			mm1

			ret
_uXm_mm_pmulhuw endp

_uXm_mm_maskmovq proc __veccall (voidarg) frame ;Inmm_A:mmword, Inmm_B:mmword, OutInt8_C:ptr byte			
			
			push			rdidx
			mov				rdidx,	byte ptr [rparam3]
			maskmovq		mm0,			mm1
			pop				rdidx

			ret
_uXm_mm_maskmovq endp

_uXm_mm_pavgb proc __veccall (mmword) frame ;Inmm_A:mmword, Inmm_B:mmword
			
			pavgb			mm0,			mm1

			ret
_uXm_mm_pavgb endp

_uXm_mm_pavgw proc __veccall (mmword) frame ;Inmm_A:mmword, Inmm_B:mmword
			
			pavgw			mm0,			mm1

			ret
_uXm_mm_pavgw endp

_uXm_mm_psadbw proc __veccall (mmword) frame ;Inmm_A:mmword, Inmm_B:mmword
			
			psadbw			mm0,			mm1

			ret
_uXm_mm_psadbw endp

	__align_fp_opt xmm_align_size, xmm_align_size
endif ;__X32__

;******************
; memory & initialization
;******************
_uXm_mm_set_ss proc __veccall (xmmword) frame ;Inreal4_A:real4

			movss			xmm0,			xmm0

			ret
_uXm_mm_set_ss endp

_uXm_mm_set_ps1 proc __veccall (xmmword) frame ;Inreal4_A:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
_uXm_mm_set_ps1 endp

_uXm_mm_set_ps proc __veccall (xmmword) frame ;Inreal4_D:real4 ;Inreal4_C:real4 ;Inreal4_B:real4 ;Inreal4_A:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffle4(0,0,0,0)

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffle4(3,0,0,0)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			_uXm_mm_shuffle4(3,2,0,0)

			movss			xmm0,			xmm3

			ret
_uXm_mm_set_ps endp

_uXm_mm_setr_ps proc __veccall (xmmword) frame ;Inreal4_A:real4 ;Inreal4_B:real4 ;Inreal4_C:real4 ;Inreal4_D:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(0,0,0,0)

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(0,0,0,3)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(0,0,2,3)

			movss			xmm0,			xmm3
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_mm_setr_ps endp

_uXm_mm_setzero_ps proc __veccall (xmmword) frame ;

			xorps			xmm0,			xmm0

			ret
_uXm_mm_setzero_ps endp

_uXm_mm_load_ss proc __veccall (xmmword) frame ;InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam1]

			ret
_uXm_mm_load_ss endp

_uXm_mm_load_ps1 proc __veccall (xmmword) frame ;InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam1]
			shufps			xmm0,			xmm0,			0

			ret
_uXm_mm_load_ps1 endp

_uXm_mm_load_ps proc __veccall (xmmword) frame ;InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam1]

			ret
_uXm_mm_load_ps endp

_uXm_mm_loadr_ps proc __veccall (xmmword) frame ;InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam1]
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_mm_loadr_ps endp

_uXm_mm_loadu_ps proc __veccall (xmmword) frame ;InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam1]

			ret
_uXm_mm_loadu_ps endp

_uXm_mm_loadur_ps proc __veccall (xmmword) frame ;InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam1]
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_mm_loadur_ps endp

_uXm_mm_loadh_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InPreal4_B:ptr mmword

			movhps			xmm0,			mmword ptr [rparam2]

			ret
_uXm_mm_loadh_ps endp

_uXm_mm_loadl_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword, InPreal4_B:ptr mmword

			movlps			xmm0,		mmword ptr [rparam2]

			ret
_uXm_mm_loadl_ps endp

_uXm_mm_store_ss proc __veccall (voidarg) frame ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movss		real4 ptr [rparam1],			xmm1

			ret
_uXm_mm_store_ss endp

_uXm_mm_store_ps1 proc __veccall (voidarg) frame ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			0
			movaps		xmmword ptr [rparam1],			xmm0

			ret
_uXm_mm_store_ps1 endp

_uXm_mm_storeu_ps1 proc __veccall (voidarg) frame ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			0
			movups		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storeu_ps1 endp

_uXm_mm_store_ps proc __veccall (voidarg) frame ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_store_ps endp

_uXm_mm_storeu_ps proc __veccall (voidarg) frame ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movups		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storeu_ps endp

_uXm_mm_storer_ps proc __veccall (voidarg) frame ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movaps		xmmword ptr [rparam1],			xmm0

			ret
_uXm_mm_storer_ps endp

_uXm_mm_storeur_ps proc __veccall (voidarg) frame ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movups		xmmword ptr [rparam1],			xmm0

			ret
_uXm_mm_storeur_ps endp

_uXm_mm_storeh_ps proc __veccall (voidarg) frame ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movhps		mmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storeh_ps endp

_uXm_mm_storel_ps proc __veccall (voidarg) frame ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movlps		mmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storel_ps endp

_uXm_mm_store_mm_ps proc __veccall (voidarg) frame ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_store_mm_ps endp

_uXm_mm_store_m128_ps proc __veccall (voidarg) frame ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_store_m128_ps endp

_uXm_mm_store_Pfloat_ps proc __veccall (voidarg) frame ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword

			movaps			xmm1,			xmmword ptr [rparam2]
			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_store_Pfloat_ps endp

_uXm_mm_storeu_Pfloat_ps proc __veccall (voidarg) frame ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword

			movups			xmm1,			xmmword ptr [rparam2]
			movups		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storeu_Pfloat_ps endp

_uXm_m128_store_mm_ps proc __veccall (voidarg) frame ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128_store_mm_ps endp

_uXm_m128_store_Pfloat_ps proc __veccall (voidarg) frame ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword

			movaps			xmm1,			xmmword ptr [rparam2]
			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128_store_Pfloat_ps endp

_uXm_m128_storeu_Pfloat_ps proc __veccall (voidarg) frame ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword

			movups			xmm1,			xmmword ptr [rparam2]
			movups		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128_storeu_Pfloat_ps endp

;******************
; FP, moves
;******************
_uXm_mm_move_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1

			ret
_uXm_mm_move_ss endp

_uXm_mm_move_ps1 proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
_uXm_mm_move_ps1 endp

_uXm_mm_move_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0

			ret
_uXm_mm_move_ps endp

_uXm_mm_mover_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_mm_mover_ps endp

_uXm_mm_move_m128_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1

			ret
_uXm_mm_move_m128_ss endp

_uXm_mm_move_m128_ps1 proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
_uXm_mm_move_m128_ps1 endp

_uXm_mm_move_m128_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0

			ret
_uXm_mm_move_m128_ps endp

_uXm_mm_mover_m128_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_mm_mover_m128_ps endp

_uXm_ptr_move_mm_ss proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_mm_ss endp

_uXm_ptr_move_mm_ps1 proc __veccall (ptr) frame ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_mm_ps1 endp

_uXm_ptr_move_mm_ps proc __veccall (ptr) frame ;InXmm_A:xmmword

			movaps 			xmm0,			xmm0
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_mm_ps endp

_uXm_ptr_mover_mm_ps proc __veccall (ptr) frame ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_mover_mm_ps endp

_uXm_ptr_moveu_mm_ss proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_mm_ss endp

_uXm_ptr_moveu_mm_ps1 proc __veccall (ptr) frame ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_mm_ps1 endp

_uXm_ptr_moveu_mm_ps proc __veccall (ptr) frame ;InXmm_A:xmmword

			movaps 			xmm0,			xmm0
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_mm_ps endp

_uXm_ptr_moveur_mm_ps proc __veccall (ptr) frame ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveur_mm_ps endp

_uXm_m128_move_mm_ss proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1

			ret
_uXm_m128_move_mm_ss endp

_uXm_m128_move_mm_ps1 proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
_uXm_m128_move_mm_ps1 endp

_uXm_m128_move_mm_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0

			ret
_uXm_m128_move_mm_ps endp

_uXm_m128_mover_mm_ps proc __veccall (xmmword) frame ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_m128_mover_mm_ps endp

_uXm_ptr_move_m128_ss proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_m128_ss endp

_uXm_ptr_move_m128_ps1 proc __veccall (ptr) frame ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_m128_ps1 endp

_uXm_ptr_move_m128_ps proc __veccall (ptr) frame ;InXmm_A:xmmword

			movaps 			xmm0,			xmm0
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_move_m128_ps endp

_uXm_ptr_mover_m128_ps proc __veccall (ptr) frame ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_mover_m128_ps endp

_uXm_ptr_moveu_m128_ss proc __veccall (ptr) frame ;InXmm_A:xmmword, InXmm_B:xmmword

			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_m128_ss endp

_uXm_ptr_moveu_m128_ps1 proc __veccall (ptr) frame ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_m128_ps1 endp

_uXm_ptr_moveu_m128_ps proc __veccall (ptr) frame ;InXmm_A:xmmword

			movaps 			xmm0,			xmm0
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveu_m128_ps endp

_uXm_ptr_moveur_m128_ps proc __veccall (ptr) frame ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_ptr_moveur_m128_ps endp

;******************
; Cacheability support
;******************
_uXm_mm_prefetch_0 proc __veccall (voidarg) frame ;InPInt8_A:ptr byte

			prefetchnta			byte ptr [rparam1]

			ret
_uXm_mm_prefetch_0 endp

_uXm_mm_prefetch_1 proc __veccall (voidarg) frame ;InPInt8_A:ptr byte

			prefetcht0			byte ptr [rparam1]

			ret
_uXm_mm_prefetch_1 endp

_uXm_mm_prefetch_2 proc __veccall (voidarg) frame ;InPInt8_A:ptr byte

			prefetcht1			byte ptr [rparam1]

			ret
_uXm_mm_prefetch_2 endp

_uXm_mm_prefetch_3 proc __veccall (voidarg) frame ;InPInt8_A:ptr byte

			prefetcht2			byte ptr [rparam1]

			ret
_uXm_mm_prefetch_3 endp

_uXm_mm_prefetch proc __veccall (voidarg) frame ;InPInt8_A:ptr byte, InInt_BSel:dword

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
			
_uXm_mm_prefetch endp

ifdef __X32__
	__align_fp_opt mm_align_size, mm_align_size

_uXm_mm_stream_pi proc __veccall (dword) frame ;OutPmm_A:ptr mmword,Inmm_B:mmword
			
			movntq 		mmword ptr [rparam1],			mm1

			ret
_uXm_mm_stream_pi endp

	__align_fp_opt xmm_align_size, xmm_align_size
endif ;__X32__

_uXm_mm_stream_ps proc __veccall (dword) frame ;OutPfloat_A:ptr xmmword, InXmm_B:xmmword
			
			movntps 		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_stream_ps endp

_uXm_mm_sfence proc __veccall (voidarg) frame
			
			sfence

			ret
_uXm_mm_sfence endp

_uXm_mm_getcsr proc __veccall (dword) frame
			
			stmxcsr			dword ptr [rreturn]

			ret
_uXm_mm_getcsr endp

_uXm_mm_setcsr proc __veccall (voidarg) frame ;InInt_A:dword
			
			ldmxcsr			dword ptr [rparam1]

			ret
_uXm_mm_setcsr endp

endif ;__MIC__

	end
