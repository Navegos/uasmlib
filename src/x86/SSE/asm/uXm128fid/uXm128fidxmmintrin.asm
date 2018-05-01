
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	include uXmsseintrin.inc
	
	.data

	ifndef __X64__
		externdef intrin_has_SSE2:byte
	endif
	
		m128fidcvteltsf32jmptable isize_t offset m128fidcvteltsf32_0, offset m128fidcvteltsf32_1, offset m128fidcvteltsf32_2, offset m128fidcvteltsf32_3			
		
	public _m128fid_dw_true
	align 16
		_m128fid_dw_true dd _m_dw_true, _m_dw_true, _m_dw_true, _m_dw_true

	.code
	
;******************
; Externs
;******************
	extern UX_VECCALL _uXm_intrin_CPUFeatures:proc
	
;******************
; Proto
;******************
_uXm_m128fid_add_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_add_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_sub_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_sub_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_mul_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_mul_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_div_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_div_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_sqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_sqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_rcp_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_rcp_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_rsqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_rsqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_min_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_min_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_max_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_max_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128fid_and_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_andnot_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_or_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_xor_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_not_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword

_uXm_m128fid_cmpeq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpeq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmplt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmplt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmple_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmple_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpgt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpgt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpneq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpneq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpnlt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpnlt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpnle_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpnle_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpngt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpngt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpnge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpnge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpunord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_cmpunord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128fid_comieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_comilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_comile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_comige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_comigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_comineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_ucomieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_ucomilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_ucomile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_ucomigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_ucomige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_ucomineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128fid_cvt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128fid_cvtt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128fid_cvt_si2ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
_uXm_m128fid_cvtss_f32 proto UX_VECCALL (real4) ;InXmm_A:xmmword
_uXm_m128fid_cvt0s_f32 proto UX_VECCALL (real4) ;InXmm_A:xmmword
_uXm_m128fid_cvt1s_f32 proto UX_VECCALL (real4) ;InXmm_A:xmmword
_uXm_m128fid_cvt2s_f32 proto UX_VECCALL (real4) ;InXmm_A:xmmword
_uXm_m128fid_cvt3s_f32 proto UX_VECCALL (real4) ;InXmm_A:xmmword
_uXm_m128fid_cvtelts_f32 proto UX_VECCALL (real4) ;InXmm_A:xmmword, InInt_BSel:dword

ifdef __X32__
_uXm_m128fid_cvt_ps2pi proto UX_VECCALL (mmword) ;InXmm_A:xmmword
_uXm_m128fid_cvtt_ps2pi proto UX_VECCALL (mmword) ;InXmm_A:xmmword
_uXm_m128fid_cvt_pi2ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword
endif ;!__X32__

ifdef __X64__
_uXm_m128fid_cvtss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
_uXm_m128fid_cvttss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
_uXm_m128fid_cvtsi64_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword
endif ;__X64__

_uXm_m128fid_transpose4_ps proto UX_VECCALL (voidarg) ;InXmm_row0:xmmword, InXmm_row1:xmmword, InXmm_row2:xmmword, InXmm_row3:xmmword
_uXm_m128fid_unpackhi_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_unpacklo_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_movehl_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_movelh_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_loadh_pi proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InPmm_B:ptr mmword
_uXm_m128fid_loadl_pi proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InPmm_B:ptr mmword
_uXm_m128fid_storeh_pi proto UX_VECCALL (voidarg) ;OutPmm_A:ptr mmword, InXmm_B:xmmword
_uXm_m128fid_storel_pi proto UX_VECCALL (voidarg) ;OutPmm_A:ptr mmword, InXmm_B:xmmword
_uXm_m128fid_movemask_ps proto UX_VECCALL (dword) ;InXmm_A:xmmword

_uXm_m128fid_set_ss proto UX_VECCALL (xmmword) ;Inreal4_A:real4
_uXm_m128fid_set_ps1 proto UX_VECCALL (xmmword) ;Inreal4_A:real4
_uXm_m128fid_set_ps proto UX_VECCALL (xmmword) ;Inreal4_D:real4 ;Inreal4_C:real4 ;Inreal4_B:real4 ;Inreal4_A:real4
_uXm_m128fid_setr_ps proto UX_VECCALL (xmmword) ;Inreal4_A:real4 ;Inreal4_B:real4 ;Inreal4_C:real4 ;Inreal4_D:real4
_uXm_m128fid_setzero_ps proto UX_VECCALL (xmmword)

_uXm_m128fid_load_ss proto UX_VECCALL (xmmword) ;InPreal4_A:ptr real4
_uXm_m128fid_load_ps1 proto UX_VECCALL (xmmword) ;InPreal4_A:ptr real4
_uXm_m128fid_load_ps proto UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword
_uXm_m128fid_loadr_ps proto UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword
_uXm_m128fid_loadu_ps proto UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword
_uXm_m128fid_loadur_ps proto UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword
_uXm_m128fid_loadh_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InPreal4_B:ptr mmword
_uXm_m128fid_loadl_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InPreal4_B:ptr mmword

_uXm_m128fid_store_ss proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword
_uXm_m128fid_store_ps1 proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword
_uXm_m128fid_storeu_ps1 proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword
_uXm_m128fid_store_ps proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_storeu_ps proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_storer_ps proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_storeur_ps proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_storeh_ps proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_storel_ps proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

_uXm_m128fid_store_m128f_ps proto UX_VECCALL (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_store_m128_ps proto UX_VECCALL (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_store_m128fi_ps proto UX_VECCALL (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_store_m128fd_ps proto UX_VECCALL (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_store_m128fid_ps proto UX_VECCALL (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_store_cm128_ps proto UX_VECCALL (voidarg) ;OutPxmmword_A:ptr xmmword, InXmm_B:xmmword
_uXm_m128fid_store_Pfloat_ps proto UX_VECCALL (voidarg) ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword
_uXm_m128fid_storeu_Pfloat_ps proto UX_VECCALL (voidarg) ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword

_uXm_m128fid_move_m128f_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_move_m128f_ps1 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_move_m128f_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_mover_m128f_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword

_uXm_m128fid_move_m128_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_move_m128_ps1 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_move_m128_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_mover_m128_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword

_uXm_m128fid_move_m128fi_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_move_m128fi_ps1 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_move_m128fi_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_mover_m128fi_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword

_uXm_m128fid_move_m128fd_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_move_m128fd_ps1 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_move_m128fd_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_mover_m128fd_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword

_uXm_m128fid_move_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_move_ps1 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_move_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_mover_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword

_uXm_m128fid_move_cm128_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fid_move_cm128_ps1 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_move_cm128_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fid_mover_cm128_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword

_uXm_Pfloat_move_m128fid_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_Pfloat_move_m128fid_ps1 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_Pfloat_move_m128fid_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_Pfloat_mover_m128fid_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_Pfloat_moveu_m128fid_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_Pfloat_moveu_m128fid_ps1 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_Pfloat_moveu_m128fid_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_Pfloat_moveur_m128fid_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword

_uXm_m128fid_stream_ps proto UX_VECCALL (dword) ;OutPfloat_A:ptr xmmword, InXmm_B:xmmword

;******************
; Proc
;******************

;************************************
; __uXm128f, FP, arithmetic
;************************************
_uXm_m128fid_add_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addss			xmm0,			xmm1

			ret
_uXm_m128fid_add_ss endp

_uXm_m128fid_add_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addps			xmm0,			xmm1

			ret
_uXm_m128fid_add_ps endp
	
_uXm_m128fid_sub_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subss			xmm0,			xmm1

			ret
_uXm_m128fid_sub_ss endp

_uXm_m128fid_sub_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subps			xmm0,			xmm1

			ret
_uXm_m128fid_sub_ps endp

_uXm_m128fid_mul_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulss			xmm0,			xmm1

			ret
_uXm_m128fid_mul_ss endp

_uXm_m128fid_mul_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulps			xmm0,			xmm1

			ret
_uXm_m128fid_mul_ps endp

_uXm_m128fid_div_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divss			xmm0,			xmm1

			ret
_uXm_m128fid_div_ss endp

_uXm_m128fid_div_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divps			xmm0,			xmm1

			ret
_uXm_m128fid_div_ps endp

_uXm_m128fid_sqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtss			xmm0,			xmm1

			ret
_uXm_m128fid_sqrt_ss endp

_uXm_m128fid_sqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtps			xmm0,			xmm1

			ret
_uXm_m128fid_sqrt_ps endp

_uXm_m128fid_rcp_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpss			xmm0,			xmm1

			ret
_uXm_m128fid_rcp_ss endp

_uXm_m128fid_rcp_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpps			xmm0,			xmm1

			ret
_uXm_m128fid_rcp_ps endp

_uXm_m128fid_rsqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtss			xmm0,			xmm1

			ret
_uXm_m128fid_rsqrt_ss endp

_uXm_m128fid_rsqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtps			xmm0,			xmm1

			ret
_uXm_m128fid_rsqrt_ps endp

_uXm_m128fid_min_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minss			xmm0,			xmm1

			ret
_uXm_m128fid_min_ss endp

_uXm_m128fid_min_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minps			xmm0,			xmm1

			ret
_uXm_m128fid_min_ps endp

_uXm_m128fid_max_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxss			xmm0,			xmm1

			ret
_uXm_m128fid_max_ss endp

_uXm_m128fid_max_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxps			xmm0,			xmm1

			ret
_uXm_m128fid_max_ps endp

;******************
; __uXm128f, FP, logical
;******************
_uXm_m128fid_and_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andps			xmm0,			xmm1

			ret
_uXm_m128fid_and_ps endp

_uXm_m128fid_andnot_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andnps			xmm0,			xmm1

			ret
_uXm_m128fid_andnot_ps endp

_uXm_m128fid_or_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			orps			xmm0,			xmm1

			ret
_uXm_m128fid_or_ps endp

_uXm_m128fid_xor_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			xorps			xmm0,			xmm1

			ret
_uXm_m128fid_xor_ps endp

_uXm_m128fid_not_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			movdqa			xmm2,			_m128fid_dw_true
			movaps			xmm1,			xmm2
		.else
			movaps			xmm1,			_m128fid_dw_true
		.endif
	else
			movdqa			xmm2,			_m128fid_dw_true
			movaps			xmm1,			xmm2
	endif
			xorps			xmm0,			xmm1

			ret
_uXm_m128fid_not_ps endp

;******************
; __uXm128f, FP, comparison
;******************
_uXm_m128fid_cmpeq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpeqss			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_EQ
		.endif
	else
			cmpeqss			xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpeq_ss endp

_uXm_m128fid_cmpeq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpeqps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_EQ
		.endif
	else
			cmpeqps			xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpeq_ps endp

_uXm_m128fid_cmplt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpltss			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_LT
		.endif
	else
			cmpltss			xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmplt_ss endp

_uXm_m128fid_cmplt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpltps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_LT
		.endif
	else
			cmpltps			xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmplt_ps endp

_uXm_m128fid_cmple_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpless			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_LE
		.endif
	else
			cmpless			xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmple_ss endp

_uXm_m128fid_cmple_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpleps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_LE
		.endif
	else
			cmpleps			xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmple_ps endp

_uXm_m128fid_cmpgt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnless		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_NLE
		.endif
	else
			cmpnless		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpgt_ss endp

_uXm_m128fid_cmpgt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnleps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_NLE
		.endif
	else
			cmpnleps		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpgt_ps endp

_uXm_m128fid_cmpge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnltss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_NLT
		.endif
	else
			cmpnltss		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpge_ss endp

_uXm_m128fid_cmpge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnltps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_NLT
		.endif
	else
			cmpnltps		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpge_ps endp

_uXm_m128fid_cmpneq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpneqss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_NEQ
		.endif
	else
			cmpneqss		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpneq_ss endp

_uXm_m128fid_cmpneq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpneqps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_NEQ
		.endif
	else
			cmpneqps		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpneq_ps endp

_uXm_m128fid_cmpnlt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnltss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_NLT
		.endif
	else
			cmpnltss		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpnlt_ss endp

_uXm_m128fid_cmpnlt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnltps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_NLT
		.endif
	else
			cmpnltps		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpnlt_ps endp

_uXm_m128fid_cmpnle_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnless		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_NLE
		.endif
	else
			cmpnless		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpnle_ss endp

_uXm_m128fid_cmpnle_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpnleps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_NLE
		.endif
	else
			cmpnleps		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpnle_ps endp

_uXm_m128fid_cmpngt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpless			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_LE
		.endif
	else
			cmpless			xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpngt_ss endp

_uXm_m128fid_cmpngt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpleps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_LE
		.endif
	else
			cmpleps			xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpngt_ps endp

_uXm_m128fid_cmpnge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpltss			xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_LT
		.endif
	else
			cmpltss			xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpnge_ss endp

_uXm_m128fid_cmpnge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpltps			xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_LT
		.endif
	else
			cmpltps			xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpnge_ps endp

_uXm_m128fid_cmpord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpordss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_ORD
		.endif
	else
			cmpordss		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpord_ss endp

_uXm_m128fid_cmpord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpordps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_ORD
		.endif
	else
			cmpordps		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpord_ps endp

_uXm_m128fid_cmpunord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpunordss		xmm0,			xmm1
		.else
			cmpss			xmm0,			xmm1,			CMPP_UNORD
		.endif
	else
			cmpunordss		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpunord_ss endp

_uXm_m128fid_cmpunord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
	ifndef __X64__
			call			_uXm_intrin_CPUFeatures
		.if(intrin_has_SSE2 == true)
			cmpunordps		xmm0,			xmm1
		.else
			cmpps			xmm0,			xmm1,			CMPP_UNORD
		.endif
	else
			cmpunordps		xmm0,			xmm1
	endif

			ret
_uXm_m128fid_cmpunord_ps endp

;******************
; __uXm128f, FP, comparison return int
;******************
_uXm_m128fid_comieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			je m128fid_label_comieq_ss
			xor				rreturn,			rreturn
	m128fid_label_comieq_ss:
			mov				breturn,			true

			ret
_uXm_m128fid_comieq_ss endp

_uXm_m128fid_comilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128fid_label_comilt_ss
			xor				rreturn,			rreturn
	m128fid_label_comilt_ss:
			mov				breturn,			true

			ret
_uXm_m128fid_comilt_ss endp

_uXm_m128fid_comile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe m128fid_label_comile_ss
			xor				rreturn,			rreturn
	m128fid_label_comile_ss:
			mov				breturn,			true

			ret
_uXm_m128fid_comile_ss endp

_uXm_m128fid_comigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128fid_label_comigt_ss
			xor				rreturn,			rreturn
	m128fid_label_comigt_ss:
			mov				breturn,			true

			ret
_uXm_m128fid_comigt_ss endp

_uXm_m128fid_comige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128fid_label_comige_ss
			xor				rreturn,			rreturn
	m128fid_label_comige_ss:
			mov				breturn,			true

			ret
_uXm_m128fid_comige_ss endp

_uXm_m128fid_comineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128fid_label_comineq_ss
			xor				rreturn,			rreturn
	m128fid_label_comineq_ss:
			mov				breturn,			true

			ret
_uXm_m128fid_comineq_ss endp

_uXm_m128fid_ucomieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			ucomiss			xmm0,			xmm1
			je m128fid_label_ucomieq_ss
			xor				rreturn,			rreturn
	m128fid_label_ucomieq_ss:
			mov				breturn,			true

			ret
_uXm_m128fid_ucomieq_ss endp

_uXm_m128fid_ucomilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128fid_label_ucomilt_ss
			xor				rreturn,			rreturn
	m128fid_label_ucomilt_ss:
			mov				breturn,			true

			ret
_uXm_m128fid_ucomilt_ss endp

_uXm_m128fid_ucomile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe m128fid_label_ucomile_ss
			xor				rreturn,			rreturn
	m128fid_label_ucomile_ss:
			mov				breturn,			true

			ret
_uXm_m128fid_ucomile_ss endp

_uXm_m128fid_ucomigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128fid_label_ucomigt_ss
			xor				rreturn,			rreturn
	m128fid_label_ucomigt_ss:
			mov				breturn,			true

			ret
_uXm_m128fid_ucomigt_ss endp

_uXm_m128fid_ucomige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128fid_label_ucomige_ss
			xor				rreturn,			rreturn
	m128fid_label_ucomige_ss:
			mov				breturn,			true

			ret
_uXm_m128fid_ucomige_ss endp

_uXm_m128fid_ucomineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128fid_label_ucomineq_ss
			xor				rreturn,			rreturn
	m128fid_label_ucomineq_ss:
			mov				breturn,			true

			ret
_uXm_m128fid_ucomineq_ss endp

;******************
; __uXm128f, FP, conversions
;******************
_uXm_m128fid_cvt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvtss2si			dreturn,			xmm0

			ret
_uXm_m128fid_cvt_ss2si endp

_uXm_m128fid_cvtt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvttss2si			dreturn,			xmm0

			ret
_uXm_m128fid_cvtt_ss2si endp

_uXm_m128fid_cvt_si2ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
			
			cvtsi2ss			xmm0,			dparam2

			ret
_uXm_m128fid_cvt_si2ss endp

_uXm_m128fid_cvtss_f32 proc UX_VECCALL (real4) ;InXmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
_uXm_m128fid_cvtss_f32 endp

_uXm_m128fid_cvt0s_f32 proc UX_VECCALL (real4) ;InXmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
_uXm_m128fid_cvt0s_f32 endp

_uXm_m128fid_cvt1s_f32 proc UX_VECCALL (real4) ;InXmm_A:xmmword

			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(1,1,1,1)
			movss			xmm0,			xmm0

			ret
_uXm_m128fid_cvt1s_f32 endp

_uXm_m128fid_cvt2s_f32 proc UX_VECCALL (real4) ;InXmm_A:xmmword

			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(2,2,2,2)
			movss			xmm0,			xmm0

			ret
_uXm_m128fid_cvt2s_f32 endp

_uXm_m128fid_cvt3s_f32 proc UX_VECCALL (real4) ;InXmm_A:xmmword

			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,3,3,3)
			movss			xmm0,			xmm0

			ret
_uXm_m128fid_cvt3s_f32 endp

_uXm_m128fid_cvtelts_f32 proc UX_VECCALL (real4) ;InXmm_A:xmmword, InInt_BSel:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128fidcvteltsf32jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128fidcvteltsf32jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
			
		m128fidcvteltsf32_0 label size_t
			movss			xmm0,			xmm0
			ret
		m128fidcvteltsf32_1 label size_t
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(1,1,1,1)
			movss			xmm0,			xmm0
			ret
		m128fidcvteltsf32_2 label size_t
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(2,2,2,2)
			movss			xmm0,			xmm0
			ret
		m128fidcvteltsf32_3 label size_t
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,3,3,3)
			movss			xmm0,			xmm0
			ret
		;.endif
			
_uXm_m128fid_cvtelts_f32 endp

ifdef __X32__
_uXm_m128fid_cvt_ps2pi proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvtps2pi			mm0,			xmm0

			ret
_uXm_m128fid_cvt_ps2pi endp

_uXm_m128fid_cvtt_ps2pi proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvttps2pi			mm0,			xmm0

			ret
_uXm_m128fid_cvtt_ps2pi endp

_uXm_m128fid_cvt_pi2ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword
			
			cvtpi2ps			xmm0,			mm1

			ret
_uXm_m128fid_cvt_pi2ps endp
endif ;__X32__

ifdef __X64__
;******************
; __uXm128f, FP, conversions, 64-bit intrinsics
;******************
_uXm_m128fid_cvtss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvtss2si			qreturn,			xmm0

			ret
_uXm_m128fid_cvtss_si64 endp

_uXm_m128fid_cvttss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvttss2si			qreturn,			xmm0

			ret
_uXm_m128fid_cvttss_si64 endp

_uXm_m128fid_cvtsi64_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword
			
			cvtsi2ss			xmm0,			rparam2

			ret
_uXm_m128fid_cvtsi64_ss endp
endif ;__X64__

;******************
; FP, misc
;******************
_uXm_m128fid_transpose4_ps proc UX_VECCALL (voidarg) ;InXmm_row0:xmmword, InXmm_row1:xmmword, InXmm_row2:xmmword, InXmm_row3:xmmword
			
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
_uXm_m128fid_transpose4_ps endp

_uXm_m128fid_unpackhi_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpckhps 			xmm0,			xmm1

			ret
_uXm_m128fid_unpackhi_ps endp

_uXm_m128fid_unpacklo_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpcklps			xmm0,			xmm1

			ret
_uXm_m128fid_unpacklo_ps endp

_uXm_m128fid_movehl_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movhlps				xmm0,			xmm1

			ret
_uXm_m128fid_movehl_ps endp

_uXm_m128fid_movelh_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movlhps 		xmm0,			xmm1

			ret
_uXm_m128fid_movelh_ps endp

_uXm_m128fid_loadh_pi proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InPmm_B:ptr mmword
			
			movhps 			xmm0,	mmword ptr [rparam2]

			ret
_uXm_m128fid_loadh_pi endp

_uXm_m128fid_loadl_pi proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InPmm_B:ptr mmword
			
			movlps			xmm0,	mmword ptr [rparam2]

			ret
_uXm_m128fid_loadl_pi endp

_uXm_m128fid_storeh_pi proc UX_VECCALL (voidarg) ;OutPmm_A:ptr mmword, InXmm_B:xmmword
			
			movhps 		mmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_storeh_pi endp

_uXm_m128fid_storel_pi proc UX_VECCALL (voidarg) ;OutPmm_A:ptr mmword, InXmm_B:xmmword
			
			movlps 		mmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_storel_pi endp

_uXm_m128fid_movemask_ps proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			movmskps			dreturn,				xmm0

			ret
_uXm_m128fid_movemask_ps endp

;******************
; memory & initialization
;******************
_uXm_m128fid_set_ss proc UX_VECCALL (xmmword) ;Inreal4_A:real4

			movss			xmm0,			xmm0

			ret
_uXm_m128fid_set_ss endp

_uXm_m128fid_set_ps1 proc UX_VECCALL (xmmword) ;Inreal4_A:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
_uXm_m128fid_set_ps1 endp

_uXm_m128fid_set_ps proc UX_VECCALL (xmmword) ;Inreal4_D:real4 ;Inreal4_C:real4 ;Inreal4_B:real4 ;Inreal4_A:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffle4(0,0,0,0)

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffle4(3,0,0,0)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			_uXm_mm_shuffle4(3,2,0,0)

			movss			xmm0,			xmm3

			ret
_uXm_m128fid_set_ps endp

_uXm_m128fid_setr_ps proc UX_VECCALL (xmmword) ;Inreal4_A:real4 ;Inreal4_B:real4 ;Inreal4_C:real4 ;Inreal4_D:real4

			movss			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(0,0,0,0)

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(0,0,0,3)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(0,0,2,3)

			movss			xmm0,			xmm3
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_m128fid_setr_ps endp

_uXm_m128fid_setzero_ps proc UX_VECCALL (xmmword)

			xorps			xmm0,			xmm0

			ret
_uXm_m128fid_setzero_ps endp

_uXm_m128fid_load_ss proc UX_VECCALL (xmmword) ;InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam1]

			ret
_uXm_m128fid_load_ss endp

_uXm_m128fid_load_ps1 proc UX_VECCALL (xmmword) ;InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam1]
			shufps			xmm0,			xmm0,			0

			ret
_uXm_m128fid_load_ps1 endp

_uXm_m128fid_load_ps proc UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam1]

			ret
_uXm_m128fid_load_ps endp

_uXm_m128fid_loadr_ps proc UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam1]
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_m128fid_loadr_ps endp

_uXm_m128fid_loadu_ps proc UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam1]

			ret
_uXm_m128fid_loadu_ps endp

_uXm_m128fid_loadur_ps proc UX_VECCALL (xmmword) ;InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam1]
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_m128fid_loadur_ps endp

_uXm_m128fid_loadh_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InPreal4_B:ptr mmword

			movhps			xmm0,			mmword ptr [rparam2]

			ret
_uXm_m128fid_loadh_ps endp

_uXm_m128fid_loadl_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InPreal4_B:ptr mmword

			movlps			xmm0,		mmword ptr [rparam2]

			ret
_uXm_m128fid_loadl_ps endp

_uXm_m128fid_store_ss proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movss		real4 ptr [rparam1],			xmm1

			ret
_uXm_m128fid_store_ss endp

_uXm_m128fid_store_ps1 proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			0
			movaps		xmmword ptr [rparam1],			xmm0

			ret
_uXm_m128fid_store_ps1 endp

_uXm_m128fid_storeu_ps1 proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			0
			movups		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_storeu_ps1 endp

_uXm_m128fid_store_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_store_ps endp

_uXm_m128fid_storeu_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movups		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_storeu_ps endp

_uXm_m128fid_storer_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movaps		xmmword ptr [rparam1],			xmm0

			ret
_uXm_m128fid_storer_ps endp

_uXm_m128fid_storeur_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movups		xmmword ptr [rparam1],			xmm0

			ret
_uXm_m128fid_storeur_ps endp

_uXm_m128fid_storeh_ps proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movhps		mmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_storeh_ps endp

_uXm_m128fid_storel_ps proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movlps		mmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_storel_ps endp

_uXm_m128fid_store_m128f_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_store_m128f_ps endp

_uXm_m128fid_store_m128_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_store_m128_ps endp

_uXm_m128fid_store_m128fi_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_store_m128fi_ps endp

_uXm_m128fid_store_m128fd_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_store_m128fd_ps endp

_uXm_m128fid_store_m128fid_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_store_m128fid_ps endp

_uXm_m128fid_store_cm128_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_store_cm128_ps endp

_uXm_m128fid_store_Pfloat_ps proc UX_VECCALL (voidarg) ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword

			movaps			xmm1,			xmmword ptr [rparam2]
			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_store_Pfloat_ps endp

_uXm_m128fid_storeu_Pfloat_ps proc UX_VECCALL (voidarg) ;OutPxmmword_A:ptr xmmword, InPreal4_A:ptr xmmword

			movups			xmm1,			xmmword ptr [rparam2]
			movups		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_storeu_Pfloat_ps endp

;******************
; FP, moves
;******************
_uXm_m128fid_move_m128f_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1

			ret
_uXm_m128fid_move_m128f_ss endp

_uXm_m128fid_move_m128f_ps1 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
_uXm_m128fid_move_m128f_ps1 endp

_uXm_m128fid_move_m128f_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0

			ret
_uXm_m128fid_move_m128f_ps endp

_uXm_m128fid_mover_m128f_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_m128fid_mover_m128f_ps endp

_uXm_m128fid_move_m128_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1

			ret
_uXm_m128fid_move_m128_ss endp

_uXm_m128fid_move_m128_ps1 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
_uXm_m128fid_move_m128_ps1 endp

_uXm_m128fid_move_m128_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0

			ret
_uXm_m128fid_move_m128_ps endp

_uXm_m128fid_mover_m128_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_m128fid_mover_m128_ps endp

_uXm_m128fid_move_m128fi_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1

			ret
_uXm_m128fid_move_m128fi_ss endp

_uXm_m128fid_move_m128fi_ps1 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
_uXm_m128fid_move_m128fi_ps1 endp

_uXm_m128fid_move_m128fi_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0

			ret
_uXm_m128fid_move_m128fi_ps endp

_uXm_m128fid_mover_m128fi_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_m128fid_mover_m128fi_ps endp

_uXm_m128fid_move_m128fd_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1

			ret
_uXm_m128fid_move_m128fd_ss endp

_uXm_m128fid_move_m128fd_ps1 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
_uXm_m128fid_move_m128fd_ps1 endp

_uXm_m128fid_move_m128fd_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0

			ret
_uXm_m128fid_move_m128fd_ps endp

_uXm_m128fid_mover_m128fd_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_m128fid_mover_m128fd_ps endp

_uXm_m128fid_move_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1

			ret
_uXm_m128fid_move_ss endp

_uXm_m128fid_move_ps1 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
_uXm_m128fid_move_ps1 endp

_uXm_m128fid_move_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0

			ret
_uXm_m128fid_move_ps endp

_uXm_m128fid_mover_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_m128fid_mover_ps endp

_uXm_m128fid_move_cm128_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1

			ret
_uXm_m128fid_move_cm128_ss endp

_uXm_m128fid_move_cm128_ps1 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0

			ret
_uXm_m128fid_move_cm128_ps1 endp

_uXm_m128fid_move_cm128_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0

			ret
_uXm_m128fid_move_cm128_ps endp

_uXm_m128fid_mover_cm128_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
			
			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_m128fid_mover_cm128_ps endp

_uXm_Pfloat_move_m128fid_ss proc UX_VECCALL (ptr real4) ;InXmm_A:xmmword, InXmm_B:xmmword

			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_Pfloat_move_m128fid_ss endp

_uXm_Pfloat_move_m128fid_ps1 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_Pfloat_move_m128fid_ps1 endp

_uXm_Pfloat_move_m128fid_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			movaps 			xmm0,			xmm0
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_Pfloat_move_m128fid_ps endp

_uXm_Pfloat_mover_m128fid_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movaps		xmmword ptr [rreturn],			xmm0

			ret
_uXm_Pfloat_mover_m128fid_ps endp

_uXm_Pfloat_moveu_m128fid_ss proc UX_VECCALL (ptr real4) ;InXmm_A:xmmword, InXmm_B:xmmword

			movaps			xmm0,			xmm0
			movss 			xmm0,			xmm1
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_Pfloat_moveu_m128fid_ss endp

_uXm_Pfloat_moveu_m128fid_ps1 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			0
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_Pfloat_moveu_m128fid_ps1 endp

_uXm_Pfloat_moveu_m128fid_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			movaps 			xmm0,			xmm0
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_Pfloat_moveu_m128fid_ps endp

_uXm_Pfloat_moveur_m128fid_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			movaps			xmm0,			xmm0
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movups		xmmword ptr [rreturn],			xmm0

			ret
_uXm_Pfloat_moveur_m128fid_ps endp

;******************
; Cacheability support
;******************
_uXm_m128fid_stream_ps proc UX_VECCALL (dword) ;OutPfloat_A:ptr xmmword, InXmm_B:xmmword
			
			movntps 		xmmword ptr [rparam1],			xmm1

			ret
_uXm_m128fid_stream_ps endp

	end
