
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	include uXmsseintrin.inc
	
	.data
	ifndef __X64__
		externdef intrin_has_SSE2:byte
	endif
	
	.code
	
;******************
; Externs
;******************
	extern UX_VECCALL _uXm_intrin_CPUFeatures:proc
	
;******************
; Proto
;******************
_uXm_m128f_add_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_add_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_sub_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_sub_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_mul_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_mul_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_div_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_div_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_sqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128f_sqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128f_rcp_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128f_rcp_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128f_rsqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128f_rsqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128f_min_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_min_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_max_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_max_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128_add_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_add_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_sub_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_sub_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_mul_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_mul_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_div_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_div_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_sqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128_sqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128_rcp_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128_rcp_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128_rsqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128_rsqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128_min_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_min_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_max_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_max_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128fd_add_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_add_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_sub_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_sub_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_mul_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_mul_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_div_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_div_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_sqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_sqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_rcp_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_rcp_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_rsqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_rsqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fd_min_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_min_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_max_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_max_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128fed_add_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_add_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_sub_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_sub_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_mul_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_mul_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_div_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_div_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_sqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fed_sqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fed_rcp_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fed_rcp_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fed_rsqrt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fed_rsqrt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
_uXm_m128fed_min_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_min_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_max_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_max_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128f_and_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_andnot_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_or_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_xor_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128_and_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_andnot_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_or_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_xor_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128fd_and_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_andnot_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_or_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_xor_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128fed_and_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_andnot_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_or_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_xor_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128f_cmpeq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpeq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmplt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmplt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmple_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmple_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpgt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpgt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpneq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpneq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpnlt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpnlt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpnle_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpnle_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpngt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpngt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpnge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpnge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpunord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_cmpunord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128_cmpeq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpeq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmplt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmplt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmple_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmple_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpgt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpgt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpneq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpneq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpnlt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpnlt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpnle_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpnle_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpngt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpngt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpnge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpnge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpunord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_cmpunord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128fd_cmpeq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpeq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmplt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmplt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmple_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmple_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpgt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpgt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpneq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpneq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpnlt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpnlt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpnle_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpnle_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpngt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpngt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpnge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpnge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpunord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_cmpunord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128fed_cmpeq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpeq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmplt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmplt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmple_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmple_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpgt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpgt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpneq_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpneq_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpnlt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpnlt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpnle_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpnle_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpngt_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpngt_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpnge_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpnge_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpunord_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_cmpunord_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128f_comieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_comilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_comile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_comige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_comigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_comineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_ucomieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_ucomilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_ucomile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_ucomigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_ucomige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128f_ucomineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128_comieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_comilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_comile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_comige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_comigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_comineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_ucomieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_ucomilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_ucomile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_ucomigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_ucomige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_ucomineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128fd_comieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_comilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_comile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_comige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_comigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_comineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_ucomieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_ucomilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_ucomile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_ucomigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_ucomige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fd_ucomineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128fed_comieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_comilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_comile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_comige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_comigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_comineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_ucomieq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_ucomilt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_ucomile_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_ucomigt_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_ucomige_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128fed_ucomineq_ss proto UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword

_uXm_m128f_cvt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128f_cvtt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128f_cvt_si2ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
_uXm_m128f_cvtss_f32 proto UX_VECCALL (real4) ;InXmm_A:xmmword

_uXm_m128_cvt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128_cvtt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128_cvt_si2ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
_uXm_m128_cvtss_f32 proto UX_VECCALL (real4) ;InXmm_A:xmmword

_uXm_m128fd_cvt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128fd_cvtt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128fd_cvt_si2ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
_uXm_m128fd_cvtss_f32 proto UX_VECCALL (real4) ;InXmm_A:xmmword

_uXm_m128fed_cvt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128fed_cvtt_ss2si proto UX_VECCALL (dword) ;InXmm_A:xmmword
_uXm_m128fed_cvt_si2ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
_uXm_m128fed_cvtss_f32 proto UX_VECCALL (real4) ;InXmm_A:xmmword

ifdef __X32__
_uXm_m64f_cvt_ps2pi proto UX_VECCALL (mmword) ;InXmm_A:xmmword
_uXm_m64f_cvtt_ps2pi proto UX_VECCALL (mmword) ;InXmm_A:xmmword
_uXm_m128f_cvt_pi2ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword

_uXm_m64_cvt_ps2pi proto UX_VECCALL (mmword) ;InXmm_A:xmmword
_uXm_m64_cvtt_ps2pi proto UX_VECCALL (mmword) ;InXmm_A:xmmword
_uXm_m128_cvt_pi2ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword
endif ;!__X32__

ifdef __X64__
_uXm_m128f_cvtss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
_uXm_m128f_cvttss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
_uXm_m128f_cvtsi64_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword

_uXm_m128_cvtss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
_uXm_m128_cvttss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
_uXm_m128_cvtsi64_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword

_uXm_m128fd_cvtss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
_uXm_m128fd_cvttss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
_uXm_m128fd_cvtsi64_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword

_uXm_m128fed_cvtss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
_uXm_m128fed_cvttss_si64 proto UX_VECCALL (qword) ;InXmm_A:xmmword
_uXm_m128fed_cvtsi64_ss proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword
endif ;__X64__

_uXm_mm_transpose4_ps proto UX_VECCALL (voidarg) ;InXmm_row0:xmmword, InXmm_row1:xmmword, InXmm_row2:xmmword, InXmm_row3:xmmword
_uXm_mm_unpackhi_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_unpacklo_ps proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_movehl_ps proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_B:xmmword, InXmm_C:xmmword
_uXm_mm_movelh_ps proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_B:xmmword, InXmm_C:xmmword
_uXm_mm_loadh_pi proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_B:xmmword, InPmm_C:ptr mmword
_uXm_mm_loadl_pi proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_B:xmmword, InPmm_C:ptr mmword
_uXm_mm_storeh_pi proto UX_VECCALL (voidarg) ;OutPmm_A:ptr mmword, InXmm_B:xmmword
_uXm_mm_storel_pi proto UX_VECCALL (voidarg) ;OutPmm_A:ptr mmword, InXmm_B:xmmword
_uXm_mm_movemask_ps proto UX_VECCALL (dword) ;InXmm_A:xmmword
ifdef __X32__
_uXm_mm_pextrw_0 proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
_uXm_mm_pextrw_1 proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
_uXm_mm_pextrw_2 proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
_uXm_mm_pextrw_3 proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
_uXm_mm_pextrw proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
_uXm_mm_pinsrw_0 proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
_uXm_mm_pinsrw_1 proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
_uXm_mm_pinsrw_2 proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
_uXm_mm_pinsrw_3 proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
_uXm_mm_pinsrw proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
_uXm_mm_pmaxsw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_pmaxub proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_pminsw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_pminub proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_pmovmskb proto UX_VECCALL (dword) ;Inmm_A:mmword
_uXm_mm_pmulhuw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_maskmovq proto UX_VECCALL (voidarg) ;Inmm_A:mmword, Inmm_B:mmword, OutPInt8_C:ptr byte
_uXm_mm_pavgb proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_pavgw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_mm_psadbw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
endif ;!__X32__
_uXm_mm_set_ss proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, Inreal4_A:real4
_uXm_mm_set_ps1 proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, Inreal4_A:real4
_uXm_mm_set_ps proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, Inreal4_D:real4 ;Inreal4_C:real4 ;Inreal4_B:real4 ;Inreal4_A:real4
_uXm_mm_setr_ps proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, Inreal4_A:real4 ;Inreal4_B:real4 ;Inreal4_C:real4 ;Inreal4_D:real4
_uXm_mm_setzero_ps proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword
_uXm_mm_load_ss proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal4_A:ptr real4
_uXm_mm_load_ps1 proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal4_A:ptr real4
_uXm_mm_load_ps proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal4_A:ptr xmmword
_uXm_mm_loadr_ps proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal4_A:ptr xmmword
_uXm_mm_loadu_ps proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal4_A:ptr xmmword
_uXm_mm_loadur_ps proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal4_A:ptr xmmword
_uXm_mm_loadh_ps proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_A:xmmword, InPreal4_B:ptr mmword
_uXm_mm_loadl_ps proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_A:xmmword, InPreal4_B:ptr mmword
_uXm_mm_store_ss proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword
_uXm_mm_store_ps1 proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword
_uXm_mm_storeu_ps1 proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword
_uXm_mm_store_ps proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storeu_ps proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storer_ps proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storeur_ps proto UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storeh_ps proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_storel_ps proto UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_move_ss proto UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_B:xmmword, InXmm_C:xmmword
_uXm_mm_move_ps proto UX_VECCALL (voidarg) ;OutXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_mover_ps proto UX_VECCALL (voidarg) ;OutXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_prefetch_0 proto UX_VECCALL (voidarg) ;InPInt8_A:ptr byte
_uXm_mm_prefetch_1 proto UX_VECCALL (voidarg) ;InPInt8_A:ptr byte
_uXm_mm_prefetch_2 proto UX_VECCALL (voidarg) ;InPInt8_A:ptr byte
_uXm_mm_prefetch_3 proto UX_VECCALL (voidarg) ;InPInt8_A:ptr byte
_uXm_mm_prefetch proto UX_VECCALL (voidarg) ;InPInt8_A:ptr byte, InInt_BSel:dword
ifdef __X32__
_uXm_mm_stream_pi proto UX_VECCALL (dword) ;OutPmm_A:ptr mmword,Inmm_B:mmword
endif ;__X32__
_uXm_mm_stream_ps proto UX_VECCALL (dword) ;OutPfloat_A:ptr xmmword, InXmm_B:xmmword
_uXm_mm_sfence proto UX_VECCALL (voidarg)
_uXm_mm_getcsr proto UX_VECCALL (dword)
_uXm_mm_setcsr proto UX_VECCALL (voidarg) ;InInt_A:dword

;******************
; Proc
;******************

;************************************
; __uXm128f, FP, arithmetic
;************************************
			align 16
_uXm_m128f_add_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addss			xmm0,			xmm1

			ret
_uXm_m128f_add_ss endp

			align 16
_uXm_m128f_add_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addps			xmm0,			xmm1

			ret
_uXm_m128f_add_ps endp
	
			align 16
_uXm_m128f_sub_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subss			xmm0,			xmm1

			ret
_uXm_m128f_sub_ss endp

			align 16
_uXm_m128f_sub_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subps			xmm0,			xmm1

			ret
_uXm_m128f_sub_ps endp

			align 16
_uXm_m128f_mul_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulss			xmm0,			xmm1

			ret
_uXm_m128f_mul_ss endp

			align 16
_uXm_m128f_mul_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulps			xmm0,			xmm1

			ret
_uXm_m128f_mul_ps endp

			align 16
_uXm_m128f_div_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divss			xmm0,			xmm1

			ret
_uXm_m128f_div_ss endp

			align 16
_uXm_m128f_div_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divps			xmm0,			xmm1

			ret
_uXm_m128f_div_ps endp

			align 16
_uXm_m128f_sqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtss			xmm0,			xmm1

			ret
_uXm_m128f_sqrt_ss endp

			align 16
_uXm_m128f_sqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtps			xmm0,			xmm1

			ret
_uXm_m128f_sqrt_ps endp

			align 16
_uXm_m128f_rcp_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpss			xmm0,			xmm1

			ret
_uXm_m128f_rcp_ss endp

			align 16
_uXm_m128f_rcp_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpps			xmm0,			xmm1

			ret
_uXm_m128f_rcp_ps endp

			align 16
_uXm_m128f_rsqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtss			xmm0,			xmm1

			ret
_uXm_m128f_rsqrt_ss endp

			align 16
_uXm_m128f_rsqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtps			xmm0,			xmm1

			ret
_uXm_m128f_rsqrt_ps endp

			align 16
_uXm_m128f_min_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minss			xmm0,			xmm1

			ret
_uXm_m128f_min_ss endp

			align 16
_uXm_m128f_min_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minps			xmm0,			xmm1

			ret
_uXm_m128f_min_ps endp

			align 16
_uXm_m128f_max_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxss			xmm0,			xmm1

			ret
_uXm_m128f_max_ss endp

			align 16
_uXm_m128f_max_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxps			xmm0,			xmm1

			ret
_uXm_m128f_max_ps endp

;************************************
; __uXm128, FP, arithmetic
;************************************
			align 16
_uXm_m128_add_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addss			xmm0,			xmm1

			ret
_uXm_m128_add_ss endp

			align 16
_uXm_m128_add_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addps			xmm0,			xmm1

			ret
_uXm_m128_add_ps endp
	
			align 16
_uXm_m128_sub_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subss			xmm0,			xmm1

			ret
_uXm_m128_sub_ss endp

			align 16
_uXm_m128_sub_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subps			xmm0,			xmm1

			ret
_uXm_m128_sub_ps endp

			align 16
_uXm_m128_mul_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulss			xmm0,			xmm1

			ret
_uXm_m128_mul_ss endp

			align 16
_uXm_m128_mul_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulps			xmm0,			xmm1

			ret
_uXm_m128_mul_ps endp

			align 16
_uXm_m128_div_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divss			xmm0,			xmm1

			ret
_uXm_m128_div_ss endp

			align 16
_uXm_m128_div_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divps			xmm0,			xmm1

			ret
_uXm_m128_div_ps endp

			align 16
_uXm_m128_sqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtss			xmm0,			xmm1

			ret
_uXm_m128_sqrt_ss endp

			align 16
_uXm_m128_sqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtps			xmm0,			xmm1

			ret
_uXm_m128_sqrt_ps endp

			align 16
_uXm_m128_rcp_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpss			xmm0,			xmm1

			ret
_uXm_m128_rcp_ss endp

			align 16
_uXm_m128_rcp_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpps			xmm0,			xmm1

			ret
_uXm_m128_rcp_ps endp

			align 16
_uXm_m128_rsqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtss			xmm0,			xmm1

			ret
_uXm_m128_rsqrt_ss endp

			align 16
_uXm_m128_rsqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtps			xmm0,			xmm1

			ret
_uXm_m128_rsqrt_ps endp

			align 16
_uXm_m128_min_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minss			xmm0,			xmm1

			ret
_uXm_m128_min_ss endp

			align 16
_uXm_m128_min_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minps			xmm0,			xmm1

			ret
_uXm_m128_min_ps endp

			align 16
_uXm_m128_max_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxss			xmm0,			xmm1

			ret
_uXm_m128_max_ss endp

			align 16
_uXm_m128_max_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxps			xmm0,			xmm1

			ret
_uXm_m128_max_ps endp

;************************************
; __uXm128fd, FP, arithmetic
;************************************
			align 16
_uXm_m128fd_add_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addss			xmm0,			xmm1

			ret
_uXm_m128fd_add_ss endp

			align 16
_uXm_m128fd_add_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addps			xmm0,			xmm1

			ret
_uXm_m128fd_add_ps endp
	
			align 16
_uXm_m128fd_sub_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subss			xmm0,			xmm1

			ret
_uXm_m128fd_sub_ss endp

			align 16
_uXm_m128fd_sub_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subps			xmm0,			xmm1

			ret
_uXm_m128fd_sub_ps endp

			align 16
_uXm_m128fd_mul_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulss			xmm0,			xmm1

			ret
_uXm_m128fd_mul_ss endp

			align 16
_uXm_m128fd_mul_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulps			xmm0,			xmm1

			ret
_uXm_m128fd_mul_ps endp

			align 16
_uXm_m128fd_div_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divss			xmm0,			xmm1

			ret
_uXm_m128fd_div_ss endp

			align 16
_uXm_m128fd_div_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divps			xmm0,			xmm1

			ret
_uXm_m128fd_div_ps endp

			align 16
_uXm_m128fd_sqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtss			xmm0,			xmm1

			ret
_uXm_m128fd_sqrt_ss endp

			align 16
_uXm_m128fd_sqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtps			xmm0,			xmm1

			ret
_uXm_m128fd_sqrt_ps endp

			align 16
_uXm_m128fd_rcp_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpss			xmm0,			xmm1

			ret
_uXm_m128fd_rcp_ss endp

			align 16
_uXm_m128fd_rcp_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpps			xmm0,			xmm1

			ret
_uXm_m128fd_rcp_ps endp

			align 16
_uXm_m128fd_rsqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtss			xmm0,			xmm1

			ret
_uXm_m128fd_rsqrt_ss endp

			align 16
_uXm_m128fd_rsqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtps			xmm0,			xmm1

			ret
_uXm_m128fd_rsqrt_ps endp

			align 16
_uXm_m128fd_min_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minss			xmm0,			xmm1

			ret
_uXm_m128fd_min_ss endp

			align 16
_uXm_m128fd_min_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minps			xmm0,			xmm1

			ret
_uXm_m128fd_min_ps endp

			align 16
_uXm_m128fd_max_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxss			xmm0,			xmm1

			ret
_uXm_m128fd_max_ss endp

			align 16
_uXm_m128fd_max_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxps			xmm0,			xmm1

			ret
_uXm_m128fd_max_ps endp

;************************************
; __uXm128fid, FP, arithmetic
;************************************
			align 16
_uXm_m128fed_add_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addss			xmm0,			xmm1

			ret
_uXm_m128fed_add_ss endp

			align 16
_uXm_m128fed_add_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			addps			xmm0,			xmm1

			ret
_uXm_m128fed_add_ps endp
	
			align 16
_uXm_m128fed_sub_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subss			xmm0,			xmm1

			ret
_uXm_m128fed_sub_ss endp

			align 16
_uXm_m128fed_sub_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			subps			xmm0,			xmm1

			ret
_uXm_m128fed_sub_ps endp

			align 16
_uXm_m128fed_mul_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulss			xmm0,			xmm1

			ret
_uXm_m128fed_mul_ss endp

			align 16
_uXm_m128fed_mul_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			mulps			xmm0,			xmm1

			ret
_uXm_m128fed_mul_ps endp

			align 16
_uXm_m128fed_div_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divss			xmm0,			xmm1

			ret
_uXm_m128fed_div_ss endp

			align 16
_uXm_m128fed_div_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			divps			xmm0,			xmm1

			ret
_uXm_m128fed_div_ps endp

			align 16
_uXm_m128fed_sqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtss			xmm0,			xmm1

			ret
_uXm_m128fed_sqrt_ss endp

			align 16
_uXm_m128fed_sqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			sqrtps			xmm0,			xmm1

			ret
_uXm_m128fed_sqrt_ps endp

			align 16
_uXm_m128fed_rcp_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpss			xmm0,			xmm1

			ret
_uXm_m128fed_rcp_ss endp

			align 16
_uXm_m128fed_rcp_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rcpps			xmm0,			xmm1

			ret
_uXm_m128fed_rcp_ps endp

			align 16
_uXm_m128fed_rsqrt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtss			xmm0,			xmm1

			ret
_uXm_m128fed_rsqrt_ss endp

			align 16
_uXm_m128fed_rsqrt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword

			rsqrtps			xmm0,			xmm1

			ret
_uXm_m128fed_rsqrt_ps endp

			align 16
_uXm_m128fed_min_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minss			xmm0,			xmm1

			ret
_uXm_m128fed_min_ss endp

			align 16
_uXm_m128fed_min_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			minps			xmm0,			xmm1

			ret
_uXm_m128fed_min_ps endp

			align 16
_uXm_m128fed_max_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxss			xmm0,			xmm1

			ret
_uXm_m128fed_max_ss endp

			align 16
_uXm_m128fed_max_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			maxps			xmm0,			xmm1

			ret
_uXm_m128fed_max_ps endp

;******************
; __uXm128f, FP, logical
;******************
			align 16
_uXm_m128f_and_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andps			xmm0,			xmm1

			ret
_uXm_m128f_and_ps endp

			align 16
_uXm_m128f_andnot_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andnps			xmm0,			xmm1

			ret
_uXm_m128f_andnot_ps endp

			align 16
_uXm_m128f_or_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			orps			xmm0,			xmm1

			ret
_uXm_m128f_or_ps endp

			align 16
_uXm_m128f_xor_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			xorps			xmm0,			xmm1

			ret
_uXm_m128f_xor_ps endp

;******************
; __uXm128, FP, logical
;******************
			align 16
_uXm_m128_and_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andps			xmm0,			xmm1

			ret
_uXm_m128_and_ps endp

			align 16
_uXm_m128_andnot_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andnps			xmm0,			xmm1

			ret
_uXm_m128_andnot_ps endp

			align 16
_uXm_m128_or_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			orps			xmm0,			xmm1

			ret
_uXm_m128_or_ps endp

			align 16
_uXm_m128_xor_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			xorps			xmm0,			xmm1

			ret
_uXm_m128_xor_ps endp

;******************
; __uXm128fd, FP, logical
;******************
			align 16
_uXm_m128fd_and_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andps			xmm0,			xmm1

			ret
_uXm_m128fd_and_ps endp

			align 16
_uXm_m128fd_andnot_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andnps			xmm0,			xmm1

			ret
_uXm_m128fd_andnot_ps endp

			align 16
_uXm_m128fd_or_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			orps			xmm0,			xmm1

			ret
_uXm_m128fd_or_ps endp

			align 16
_uXm_m128fd_xor_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			xorps			xmm0,			xmm1

			ret
_uXm_m128fd_xor_ps endp

;******************
; __uXm128fid, FP, logical
;******************
			align 16
_uXm_m128fed_and_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andps			xmm0,			xmm1

			ret
_uXm_m128fed_and_ps endp

			align 16
_uXm_m128fed_andnot_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			andnps			xmm0,			xmm1

			ret
_uXm_m128fed_andnot_ps endp

			align 16
_uXm_m128fed_or_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			orps			xmm0,			xmm1

			ret
_uXm_m128fed_or_ps endp

			align 16
_uXm_m128fed_xor_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword

			xorps			xmm0,			xmm1

			ret
_uXm_m128fed_xor_ps endp

;******************
; __uXm128f, FP, comparison
;******************
			align 16
_uXm_m128f_cmpeq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpeq_ss endp

			align 16
_uXm_m128f_cmpeq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpeq_ps endp

			align 16
_uXm_m128f_cmplt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmplt_ss endp

			align 16
_uXm_m128f_cmplt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmplt_ps endp

			align 16
_uXm_m128f_cmple_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmple_ss endp

			align 16
_uXm_m128f_cmple_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmple_ps endp

			align 16
_uXm_m128f_cmpgt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpgt_ss endp

			align 16
_uXm_m128f_cmpgt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpgt_ps endp

			align 16
_uXm_m128f_cmpge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpge_ss endp

			align 16
_uXm_m128f_cmpge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpge_ps endp

			align 16
_uXm_m128f_cmpneq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpneq_ss endp

			align 16
_uXm_m128f_cmpneq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpneq_ps endp

			align 16
_uXm_m128f_cmpnlt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpnlt_ss endp

			align 16
_uXm_m128f_cmpnlt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpnlt_ps endp

			align 16
_uXm_m128f_cmpnle_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpnle_ss endp

			align 16
_uXm_m128f_cmpnle_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpnle_ps endp

			align 16
_uXm_m128f_cmpngt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpngt_ss endp

			align 16
_uXm_m128f_cmpngt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpngt_ps endp

			align 16
_uXm_m128f_cmpnge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpnge_ss endp

			align 16
_uXm_m128f_cmpnge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpnge_ps endp

			align 16
_uXm_m128f_cmpord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpord_ss endp

			align 16
_uXm_m128f_cmpord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpord_ps endp

			align 16
_uXm_m128f_cmpunord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpunord_ss endp

			align 16
_uXm_m128f_cmpunord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128f_cmpunord_ps endp

;******************
; __uXm128f, FP, comparison return int
;******************
			align 16
_uXm_m128f_comieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			je m128f_label_comieq_ss
			xor				rreturn,			rreturn
	m128f_label_comieq_ss:
			mov				breturn,			true

			ret
_uXm_m128f_comieq_ss endp

			align 16
_uXm_m128f_comilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128f_label_comilt_ss
			xor				rreturn,			rreturn
	m128f_label_comilt_ss:
			mov				breturn,			true

			ret
_uXm_m128f_comilt_ss endp

			align 16
_uXm_m128f_comile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe m128f_label_comile_ss
			xor				rreturn,			rreturn
	m128f_label_comile_ss:
			mov				breturn,			true

			ret
_uXm_m128f_comile_ss endp

			align 16
_uXm_m128f_comigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128f_label_comigt_ss
			xor				rreturn,			rreturn
	m128f_label_comigt_ss:
			mov				breturn,			true

			ret
_uXm_m128f_comigt_ss endp

			align 16
_uXm_m128f_comige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128f_label_comige_ss
			xor				rreturn,			rreturn
	m128f_label_comige_ss:
			mov				breturn,			true

			ret
_uXm_m128f_comige_ss endp

			align 16
_uXm_m128f_comineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128f_label_comineq_ss
			xor				rreturn,			rreturn
	m128f_label_comineq_ss:
			mov				breturn,			true

			ret
_uXm_m128f_comineq_ss endp

			align 16
_uXm_m128f_ucomieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			ucomiss			xmm0,			xmm1
			je m128f_label_ucomieq_ss
			xor				rreturn,			rreturn
	m128f_label_ucomieq_ss:
			mov				breturn,			true

			ret
_uXm_m128f_ucomieq_ss endp

			align 16
_uXm_m128f_ucomilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128f_label_ucomilt_ss
			xor				rreturn,			rreturn
	m128f_label_ucomilt_ss:
			mov				breturn,			true

			ret
_uXm_m128f_ucomilt_ss endp

			align 16
_uXm_m128f_ucomile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe label_ucomile_ss
			xor				rreturn,			rreturn
	label_ucomile_ss:
			mov				breturn,			true

			ret
_uXm_m128f_ucomile_ss endp

			align 16
_uXm_m128f_ucomigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128f_label_ucomigt_ss
			xor				rreturn,			rreturn
	m128f_label_ucomigt_ss:
			mov				breturn,			true

			ret
_uXm_m128f_ucomigt_ss endp

			align 16
_uXm_m128f_ucomige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128f_label_ucomige_ss
			xor				rreturn,			rreturn
	m128f_label_ucomige_ss:
			mov				breturn,			true

			ret
_uXm_m128f_ucomige_ss endp

			align 16
_uXm_m128f_ucomineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128f_label_ucomineq_ss
			xor				rreturn,			rreturn
	m128f_label_ucomineq_ss:
			mov				breturn,			true

			ret
_uXm_m128f_ucomineq_ss endp

;******************
; __uXm128, FP, comparison
;******************
			align 16
_uXm_m128_cmpeq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpeq_ss endp

			align 16
_uXm_m128_cmpeq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpeq_ps endp

			align 16
_uXm_m128_cmplt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmplt_ss endp

			align 16
_uXm_m128_cmplt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmplt_ps endp

			align 16
_uXm_m128_cmple_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmple_ss endp

			align 16
_uXm_m128_cmple_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmple_ps endp

			align 16
_uXm_m128_cmpgt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpgt_ss endp

			align 16
_uXm_m128_cmpgt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpgt_ps endp

			align 16
_uXm_m128_cmpge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpge_ss endp

			align 16
_uXm_m128_cmpge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpge_ps endp

			align 16
_uXm_m128_cmpneq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpneq_ss endp

			align 16
_uXm_m128_cmpneq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpneq_ps endp

			align 16
_uXm_m128_cmpnlt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpnlt_ss endp

			align 16
_uXm_m128_cmpnlt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpnlt_ps endp

			align 16
_uXm_m128_cmpnle_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpnle_ss endp

			align 16
_uXm_m128_cmpnle_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpnle_ps endp

			align 16
_uXm_m128_cmpngt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpngt_ss endp

			align 16
_uXm_m128_cmpngt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpngt_ps endp

			align 16
_uXm_m128_cmpnge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpnge_ss endp

			align 16
_uXm_m128_cmpnge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpnge_ps endp

			align 16
_uXm_m128_cmpord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpord_ss endp

			align 16
_uXm_m128_cmpord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpord_ps endp

			align 16
_uXm_m128_cmpunord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpunord_ss endp

			align 16
_uXm_m128_cmpunord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128_cmpunord_ps endp

;******************
; __uXm128, FP, comparison return int
;******************
			align 16
_uXm_m128_comieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			je lm128_abel_comieq_ss
			xor				rreturn,			rreturn
	m128_label_comieq_ss:
			mov				breturn,			true

			ret
_uXm_m128_comieq_ss endp

			align 16
_uXm_m128_comilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128_label_comilt_ss
			xor				rreturn,			rreturn
	m128_label_comilt_ss:
			mov				breturn,			true

			ret
_uXm_m128_comilt_ss endp

			align 16
_uXm_m128_comile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe m128_label_comile_ss
			xor				rreturn,			rreturn
	m128_label_comile_ss:
			mov				breturn,			true

			ret
_uXm_m128_comile_ss endp

			align 16
_uXm_m128_comigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128_label_comigt_ss
			xor				rreturn,			rreturn
	m128_label_comigt_ss:
			mov				breturn,			true

			ret
_uXm_m128_comigt_ss endp

			align 16
_uXm_m128_comige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128_label_comige_ss
			xor				rreturn,			rreturn
	m128_label_comige_ss:
			mov				breturn,			true

			ret
_uXm_m128_comige_ss endp

			align 16
_uXm_m128_comineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128_label_comineq_ss
			xor				rreturn,			rreturn
	m128_label_comineq_ss:
			mov				breturn,			true

			ret
_uXm_m128_comineq_ss endp

			align 16
_uXm_m128_ucomieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			ucomiss			xmm0,			xmm1
			je m128_label_ucomieq_ss
			xor				rreturn,			rreturn
	m128_label_ucomieq_ss:
			mov				breturn,			true

			ret
_uXm_m128_ucomieq_ss endp

			align 16
_uXm_m128_ucomilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128_label_ucomilt_ss
			xor				rreturn,			rreturn
	m128_label_ucomilt_ss:
			mov				breturn,			true

			ret
_uXm_m128_ucomilt_ss endp

			align 16
_uXm_m128_ucomile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe m128_label_ucomile_ss
			xor				rreturn,			rreturn
	m128_label_ucomile_ss:
			mov				breturn,			true

			ret
_uXm_m128_ucomile_ss endp

			align 16
_uXm_m128_ucomigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128_label_ucomigt_ss
			xor				rreturn,			rreturn
	m128_label_ucomigt_ss:
			mov				breturn,			true

			ret
_uXm_m128_ucomigt_ss endp

			align 16
_uXm_m128_ucomige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128_label_ucomige_ss
			xor				rreturn,			rreturn
	m128_label_ucomige_ss:
			mov				breturn,			true

			ret
_uXm_m128_ucomige_ss endp

			align 16
_uXm_m128_ucomineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128_label_ucomineq_ss
			xor				rreturn,			rreturn
	m128_label_ucomineq_ss:
			mov				breturn,			true

			ret
_uXm_m128_ucomineq_ss endp

;******************
; __uXm128fd, FP, comparison
;******************
			align 16
_uXm_m128fd_cmpeq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpeq_ss endp

			align 16
_uXm_m128fd_cmpeq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpeq_ps endp

			align 16
_uXm_m128fd_cmplt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmplt_ss endp

			align 16
_uXm_m128fd_cmplt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmplt_ps endp

			align 16
_uXm_m128fd_cmple_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmple_ss endp

			align 16
_uXm_m128fd_cmple_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmple_ps endp

			align 16
_uXm_m128fd_cmpgt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpgt_ss endp

			align 16
_uXm_m128fd_cmpgt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpgt_ps endp

			align 16
_uXm_m128fd_cmpge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpge_ss endp

			align 16
_uXm_m128fd_cmpge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpge_ps endp

			align 16
_uXm_m128fd_cmpneq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpneq_ss endp

			align 16
_uXm_m128fd_cmpneq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpneq_ps endp

			align 16
_uXm_m128fd_cmpnlt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpnlt_ss endp

			align 16
_uXm_m128fd_cmpnlt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpnlt_ps endp

			align 16
_uXm_m128fd_cmpnle_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpnle_ss endp

			align 16
_uXm_m128fd_cmpnle_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpnle_ps endp

			align 16
_uXm_m128fd_cmpngt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpngt_ss endp

			align 16
_uXm_m128fd_cmpngt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpngt_ps endp

			align 16
_uXm_m128fd_cmpnge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpnge_ss endp

			align 16
_uXm_m128fd_cmpnge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpnge_ps endp

			align 16
_uXm_m128fd_cmpord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpord_ss endp

			align 16
_uXm_m128fd_cmpord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpord_ps endp

			align 16
_uXm_m128fd_cmpunord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpunord_ss endp

			align 16
_uXm_m128fd_cmpunord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fd_cmpunord_ps endp

;******************
; __uXm128fd, FP, comparison return int
;******************
			align 16
_uXm_m128fd_comieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			je m128fd_label_comieq_ss
			xor				rreturn,			rreturn
	m128fd_label_comieq_ss:
			mov				breturn,			true

			ret
_uXm_m128fd_comieq_ss endp

			align 16
_uXm_m128fd_comilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128fd_label_comilt_ss
			xor				rreturn,			rreturn
	m128fd_label_comilt_ss:
			mov				breturn,			true

			ret
_uXm_m128fd_comilt_ss endp

			align 16
_uXm_m128fd_comile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe m128fd_label_comile_ss
			xor				rreturn,			rreturn
	m128fd_label_comile_ss:
			mov				breturn,			true

			ret
_uXm_m128fd_comile_ss endp

			align 16
_uXm_m128fd_comigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128fd_label_comigt_ss
			xor				rreturn,			rreturn
	m128fd_label_comigt_ss:
			mov				breturn,			true

			ret
_uXm_m128fd_comigt_ss endp

			align 16
_uXm_m128fd_comige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128fd_label_comige_ss
			xor				rreturn,			rreturn
	m128fd_label_comige_ss:
			mov				breturn,			true

			ret
_uXm_m128fd_comige_ss endp

			align 16
_uXm_m128fd_comineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128fd_label_comineq_ss
			xor				rreturn,			rreturn
	m128fd_label_comineq_ss:
			mov				breturn,			true

			ret
_uXm_m128fd_comineq_ss endp

			align 16
_uXm_m128fd_ucomieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			ucomiss			xmm0,			xmm1
			je m128fd_label_ucomieq_ss
			xor				rreturn,			rreturn
	m128fd_label_ucomieq_ss:
			mov				breturn,			true

			ret
_uXm_m128fd_ucomieq_ss endp

			align 16
_uXm_m128fd_ucomilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128fd_label_ucomilt_ss
			xor				rreturn,			rreturn
	m128fd_label_ucomilt_ss:
			mov				breturn,			true

			ret
_uXm_m128fd_ucomilt_ss endp

			align 16
_uXm_m128fd_ucomile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe m128fd_label_ucomile_ss
			xor				rreturn,			rreturn
	m128fd_label_ucomile_ss:
			mov				breturn,			true

			ret
_uXm_m128fd_ucomile_ss endp

			align 16
_uXm_m128fd_ucomigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128fd_label_ucomigt_ss
			xor				rreturn,			rreturn
	m128fd_label_ucomigt_ss:
			mov				breturn,			true

			ret
_uXm_m128fd_ucomigt_ss endp

			align 16
_uXm_m128fd_ucomige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128fd_label_ucomige_ss
			xor				rreturn,			rreturn
	m128fd_label_ucomige_ss:
			mov				breturn,			true

			ret
_uXm_m128fd_ucomige_ss endp

			align 16
_uXm_m128fd_ucomineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128fd_label_ucomineq_ss
			xor				rreturn,			rreturn
	m128fd_label_ucomineq_ss:
			mov				breturn,			true

			ret
_uXm_m128fd_ucomineq_ss endp

;******************
; __uXm128fid, FP, comparison
;******************
			align 16
_uXm_m128fed_cmpeq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpeq_ss endp

			align 16
_uXm_m128fed_cmpeq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpeq_ps endp

			align 16
_uXm_m128fed_cmplt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmplt_ss endp

			align 16
_uXm_m128fed_cmplt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmplt_ps endp

			align 16
_uXm_m128fed_cmple_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmple_ss endp

			align 16
_uXm_m128fed_cmple_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmple_ps endp

			align 16
_uXm_m128fed_cmpgt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpgt_ss endp

			align 16
_uXm_m128fed_cmpgt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpgt_ps endp

			align 16
_uXm_m128fed_cmpge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpge_ss endp

			align 16
_uXm_m128fed_cmpge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpge_ps endp

			align 16
_uXm_m128fed_cmpneq_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpneq_ss endp

			align 16
_uXm_m128fed_cmpneq_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpneq_ps endp

			align 16
_uXm_m128fed_cmpnlt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpnlt_ss endp

			align 16
_uXm_m128fed_cmpnlt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpnlt_ps endp

			align 16
_uXm_m128fed_cmpnle_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpnle_ss endp

			align 16
_uXm_m128fed_cmpnle_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpnle_ps endp

			align 16
_uXm_m128fed_cmpngt_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpngt_ss endp

			align 16
_uXm_m128fed_cmpngt_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpngt_ps endp

			align 16
_uXm_m128fed_cmpnge_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpnge_ss endp

			align 16
_uXm_m128fed_cmpnge_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpnge_ps endp

			align 16
_uXm_m128fed_cmpord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpord_ss endp

			align 16
_uXm_m128fed_cmpord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpord_ps endp

			align 16
_uXm_m128fed_cmpunord_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpunord_ss endp

			align 16
_uXm_m128fed_cmpunord_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
	
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
_uXm_m128fed_cmpunord_ps endp

;******************
; __uXm128fid, FP, comparison return int
;******************
			align 16
_uXm_m128fed_comieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			je m128fed_label_comieq_ss
			xor				rreturn,			rreturn
	m128fed_label_comieq_ss:
			mov				breturn,			true

			ret
_uXm_m128fed_comieq_ss endp

			align 16
_uXm_m128fed_comilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128fed_label_comilt_ss
			xor				rreturn,			rreturn
	m128fed_label_comilt_ss:
			mov				breturn,			true

			ret
_uXm_m128fed_comilt_ss endp

			align 16
_uXm_m128fed_comile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe m128fed_label_comile_ss
			xor				rreturn,			rreturn
	m128fed_label_comile_ss:
			mov				breturn,			true

			ret
_uXm_m128fed_comile_ss endp

			align 16
_uXm_m128fed_comigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128fed_label_comigt_ss
			xor				rreturn,			rreturn
	m128fed_label_comigt_ss:
			mov				breturn,			true

			ret
_uXm_m128fed_comigt_ss endp

			align 16
_uXm_m128fed_comige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128fed_label_comige_ss
			xor				rreturn,			rreturn
	m128fed_label_comige_ss:
			mov				breturn,			true

			ret
_uXm_m128fed_comige_ss endp

			align 16
_uXm_m128fed_comineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128fed_label_comineq_ss
			xor				rreturn,			rreturn
	m128fed_label_comineq_ss:
			mov				breturn,			true

			ret
_uXm_m128fed_comineq_ss endp

			align 16
_uXm_m128fed_ucomieq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			ucomiss			xmm0,			xmm1
			je m128fed_label_ucomieq_ss
			xor				rreturn,			rreturn
	m128fed_label_ucomieq_ss:
			mov				breturn,			true

			ret
_uXm_m128fed_ucomieq_ss endp

			align 16
_uXm_m128fed_ucomilt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jb m128fed_label_ucomilt_ss
			xor				rreturn,			rreturn
	m128fed_label_ucomilt_ss:
			mov				breturn,			true

			ret
_uXm_m128fed_ucomilt_ss endp

			align 16
_uXm_m128fed_ucomile_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jbe m128fed_label_ucomile_ss
			xor				rreturn,			rreturn
	m128fed_label_ucomile_ss:
			mov				breturn,			true

			ret
_uXm_m128fed_ucomile_ss endp

			align 16
_uXm_m128fed_ucomigt_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			ja m128fed_label_ucomigt_ss
			xor				rreturn,			rreturn
	m128fed_label_ucomigt_ss:
			mov				breturn,			true

			ret
_uXm_m128fed_ucomigt_ss endp

			align 16
_uXm_m128fed_ucomige_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jae m128fed_label_ucomige_ss
			xor				rreturn,			rreturn
	m128fed_label_ucomige_ss:
			mov				breturn,			true

			ret
_uXm_m128fed_ucomige_ss endp

			align 16
_uXm_m128fed_ucomineq_ss proc UX_VECCALL (byte) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			comiss			xmm0,			xmm1
			jne m128fed_label_ucomineq_ss
			xor				rreturn,			rreturn
	m128fed_label_ucomineq_ss:
			mov				breturn,			true

			ret
_uXm_m128fed_ucomineq_ss endp

;******************
; __uXm128f, FP, conversions
;******************
			align 16
_uXm_m128f_cvt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvtss2si			dreturn,			xmm0

			ret
_uXm_m128f_cvt_ss2si endp

			align 16
_uXm_m128f_cvtt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvttss2si			dreturn,			xmm0

			ret
_uXm_m128f_cvtt_ss2si endp

			align 16
_uXm_m128f_cvt_si2ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
			
			cvtsi2ss			xmm0,			dparam2

			ret
_uXm_m128f_cvt_si2ss endp

			align 16
_uXm_m128f_cvtss_f32 proc UX_VECCALL (real4) ;InXmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
_uXm_m128f_cvtss_f32 endp

;******************
; __uXm128, FP, conversions
;******************
			align 16
_uXm_m128_cvt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvtss2si			dreturn,			xmm0

			ret
_uXm_m128_cvt_ss2si endp

			align 16
_uXm_m128_cvtt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvttss2si			dreturn,			xmm0

			ret
_uXm_m128_cvtt_ss2si endp

			align 16
_uXm_m128_cvt_si2ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
			
			cvtsi2ss			xmm0,			dparam2

			ret
_uXm_m128_cvt_si2ss endp

			align 16
_uXm_m128_cvtss_f32 proc UX_VECCALL (real4) ;InXmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
_uXm_m128_cvtss_f32 endp

;******************
; __uXm128fd, FP, conversions
;******************
			align 16
_uXm_m128fd_cvt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvtss2si			dreturn,			xmm0

			ret
_uXm_m128fd_cvt_ss2si endp

			align 16
_uXm_m128fd_cvtt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvttss2si			dreturn,			xmm0

			ret
_uXm_m128fd_cvtt_ss2si endp

			align 16
_uXm_m128fd_cvt_si2ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
			
			cvtsi2ss			xmm0,			dparam2

			ret
_uXm_m128fd_cvt_si2ss endp

			align 16
_uXm_m128fd_cvtss_f32 proc UX_VECCALL (real4) ;InXmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
_uXm_m128fd_cvtss_f32 endp

;******************
; __uXm128fid, FP, conversions
;******************
			align 16
_uXm_m128fed_cvt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvtss2si			dreturn,			xmm0

			ret
_uXm_m128fed_cvt_ss2si endp

			align 16
_uXm_m128fed_cvtt_ss2si proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			cvttss2si			dreturn,			xmm0

			ret
_uXm_m128fed_cvtt_ss2si endp

			align 16
_uXm_m128fed_cvt_si2ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:dword
			
			cvtsi2ss			xmm0,			dparam2

			ret
_uXm_m128fed_cvt_si2ss endp

			align 16
_uXm_m128fed_cvtss_f32 proc UX_VECCALL (real4) ;InXmm_A:xmmword
			
			movss			xmm0,			xmm0

			ret
_uXm_m128fed_cvtss_f32 endp

ifdef __X32__
;******************
; FP, conversions, Support for MMX extension intrinsics
;******************
			align 16
_uXm_m64f_cvt_ps2pi proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvtps2pi			mm0,			xmm0

			ret
_uXm_m64f_cvt_ps2pi endp

			align 16
_uXm_m64f_cvtt_ps2pi proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvttps2pi			mm0,			xmm0

			ret
_uXm_m64f_cvtt_ps2pi endp

			align 16
_uXm_m128f_cvt_pi2ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword
			
			cvtpi2ps			xmm0,			mm1

			ret
_uXm_m128f_cvt_pi2ps endp

			align 16
_uXm_m64_cvt_ps2pi proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvtps2pi			mm0,			xmm0

			ret
_uXm_m64_cvt_ps2pi endp

			align 16
_uXm_m64_cvtt_ps2pi proc UX_VECCALL (mmword) ;InXmm_A:xmmword
			
			cvttps2pi			mm0,			xmm0

			ret
_uXm_m64_cvtt_ps2pi endp

			align 16
_uXm_m128_cvt_pi2ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inmm_B:mmword
			
			cvtpi2ps			xmm0,			mm1

			ret
_uXm_m128_cvt_pi2ps endp
endif ;__X32__

ifdef __X64__
;******************
; __uXm128f, FP, conversions, 64-bit intrinsics
;******************
			align 16
_uXm_m128f_cvtss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvtss2si			qreturn,			xmm0

			ret
_uXm_m128f_cvtss_si64 endp

			align 16
_uXm_m128f_cvttss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvttss2si			qreturn,			xmm0

			ret
_uXm_m128f_cvttss_si64 endp

			align 16
_uXm_m128f_cvtsi64_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword
			
			cvtsi2ss			xmm0,			rparam2

			ret
_uXm_m128f_cvtsi64_ss endp

;******************
; __uXm128, FP, conversions, 64-bit intrinsics
;******************
			align 16
_uXm_m128_cvtss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvtss2si			qreturn,			xmm0

			ret
_uXm_m128_cvtss_si64 endp

			align 16
_uXm_m128_cvttss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvttss2si			qreturn,			xmm0

			ret
_uXm_m128_cvttss_si64 endp

			align 16
_uXm_m128_cvtsi64_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword
			
			cvtsi2ss			xmm0,			rparam2

			ret
_uXm_m128_cvtsi64_ss endp

;******************
; __uXm128fd, FP, conversions, 64-bit intrinsics
;******************
			align 16
_uXm_m128fd_cvtss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvtss2si			qreturn,			xmm0

			ret
_uXm_m128fd_cvtss_si64 endp

			align 16
_uXm_m128fd_cvttss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvttss2si			qreturn,			xmm0

			ret
_uXm_m128fd_cvttss_si64 endp

			align 16
_uXm_m128fd_cvtsi64_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword
			
			cvtsi2ss			xmm0,			rparam2

			ret
_uXm_m128fd_cvtsi64_ss endp

;******************
; __uXm128fid, FP, conversions, 64-bit intrinsics
;******************
			align 16
_uXm_m128fed_cvtss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvtss2si			qreturn,			xmm0

			ret
_uXm_m128fed_cvtss_si64 endp

			align 16
_uXm_m128fed_cvttss_si64 proc UX_VECCALL (qword) ;InXmm_A:xmmword
			
			cvttss2si			qreturn,			xmm0

			ret
_uXm_m128fed_cvttss_si64 endp

			align 16
_uXm_m128fed_cvtsi64_ss proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InInt_B:qword
			
			cvtsi2ss			xmm0,			rparam2

			ret
_uXm_m128fed_cvtsi64_ss endp
endif ;__X64__

;******************
; FP, misc
;******************
			align 16
_uXm_mm_transpose4_ps proc UX_VECCALL (voidarg) ;InXmm_row0:xmmword, InXmm_row1:xmmword, InXmm_row2:xmmword, InXmm_row3:xmmword
			
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

			align 16
_uXm_mm_unpackhi_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpckhps 				xmm0,			xmm1

			ret
_uXm_mm_unpackhi_ps endp

			align 16
_uXm_mm_unpacklo_ps proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			
			unpcklps 				xmm0,			xmm1

			ret
_uXm_mm_unpacklo_ps endp

			align 16
_uXm_mm_movehl_ps proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_B:xmmword, InXmm_C:xmmword
			
			movaps			xmm0,			xmm1
			movhlps			xmm0,			xmm2

			ret
_uXm_mm_movehl_ps endp

			align 16
_uXm_mm_movelh_ps proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_B:xmmword, InXmm_C:xmmword
			
			movaps			xmm0,			xmm1
			movlhps 		xmm0,			xmm2

			ret
_uXm_mm_movelh_ps endp

			align 16
_uXm_mm_loadh_pi proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_B:xmmword, InPmm_C:ptr mmword
			
			movaps			xmm0,			xmm1
			movhps 			xmm0,	mmword ptr [rparam3]

			ret
_uXm_mm_loadh_pi endp

			align 16
_uXm_mm_loadl_pi proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_B:xmmword, InPmm_C:ptr mmword
			
			movaps			xmm0,			xmm1
			movlps			xmm0,	mmword ptr [rparam3]

			ret
_uXm_mm_loadl_pi endp

			align 16
_uXm_mm_storeh_pi proc UX_VECCALL (voidarg) ;OutPmm_A:ptr mmword, InXmm_B:xmmword
			
			movhps 		mmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storeh_pi endp

			align 16
_uXm_mm_storel_pi proc UX_VECCALL (voidarg) ;OutPmm_A:ptr mmword, InXmm_B:xmmword
			
			movlps 		mmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storel_pi endp

			align 16
_uXm_mm_movemask_ps proc UX_VECCALL (dword) ;InXmm_A:xmmword
			
			movmskps			dreturn,				xmm1

			ret
_uXm_mm_movemask_ps endp

ifdef __X32__
;******************
; Integer (MMX) extensions
;******************
			align 8
_uXm_mm_pextrw_0 proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			pextrw			dreturn,			mm0,			0

			ret
_uXm_mm_pextrw_0 endp

			align 8
_uXm_mm_pextrw_1 proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			pextrw			dreturn,			mm0,			1

			ret
_uXm_mm_pextrw1 endp

			align 8
_uXm_mm_pextrw_2 proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			pextrw			dreturn,			mm0,			2

			ret
_uXm_mm_pextrw_2 endp

			align 8
_uXm_mm_pextrw_3 proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			pextrw			dreturn,			mm0,			3

			ret
_uXm_mm_pextrw_3 endp

			align 8
_uXm_mm_pextrw proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmpextrwjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmpextrwjmptable
			sub				ebx,			esi
			add				ebx,			rax
			xor				eax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
					
			mmpextrwword		textequ		<dword>
			mmpextrwiword		textequ		<dd>
		
		mmpextrwjmptable label mmpextrwword
			mmpextrwiword	offset mmpextrw_0, offset mmpextrw_1, offset mmpextrw_2, offset mmpextrw_3
			
			mmpextrw_0 label mmpextrwword
				jmp		_uXm_mm_pextrw_0
			mmpextrw_1 label mmpextrwword
				jmp		_uXm_mm_pextrw_1
			mmpextrw_2 label mmpextrwword
				jmp		_uXm_mm_pextrw_2
			mmpextrw_3 label mmpextrwword
				jmp		_uXm_mm_pextrw_3

_uXm_mm_pextrw endp

			align 8
_uXm_mm_pinsrw_0 proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			pinsrw			mm0,			dparam2,			0

			ret
_uXm_mm_pinsrw_0 endp

			align 8
_uXm_mm_pinsrw_1 proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			pinsrw			mm0,			dparam2,			1

			ret
_uXm_mm_pinsrw1 endp

			align 8
_uXm_mm_pinsrw_2 proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			pinsrw			mm0,			dparam2,			2

			ret
_uXm_mm_pinsrw_2 endp

			align 8
_uXm_mm_pinsrw_3 proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			pinsrw			mm0,			dparam2,			3

			ret
_uXm_mm_pinsrw_3 endp

			align 8
_uXm_mm_pinsrw proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmpinsrwjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmpinsrwjmptable
			sub				ebx,			esi
			add				ebx,			rax
			xor				eax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
					
			mmpinsrwword		textequ		<dword>
			mmpinsrwiword		textequ		<dd>
		
		mmpinsrwjmptable label mmpinsrwword
			mmpinsrwiword	offset mmpinsrw_0, offset mmpinsrw_1, offset mmpinsrw_2, offset mmpinsrw_3
			
			mmpinsrw_0 label mmpinsrwword
				jmp		_uXm_mm_pinsrw_0
			mmpinsrw_1 label mmpinsrwword
				jmp		_uXm_mm_pinsrw_1
			mmpinsrw_2 label mmpinsrwword
				jmp		_uXm_mm_pinsrw_2
			mmpinsrw_3 label mmpinsrwword
				jmp		_uXm_mm_pinsrw_3

_uXm_mm_pinsrw endp

			align 8
_uXm_mm_pmaxsw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pmaxsw			mm0,			mm1

			ret
_uXm_mm_pmaxsw endp

			align 8
_uXm_mm_pmaxub proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pmaxub			mm0,			mm1

			ret
_uXm_mm_pmaxub endp

			align 8
_uXm_mm_pminsw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pminsw			mm0,			mm1

			ret
_uXm_mm_pminsw endp

			align 8
_uXm_mm_pminub proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pminub			mm0,			mm1

			ret
_uXm_mm_pminub endp

			align 8
_uXm_mm_pmovmskb proc UX_VECCALL (dword) ;Inmm_A:mmword
			
			pmovmskb		dreturn,			mm0

			ret
_uXm_mm_pmovmskb endp

			align 8
_uXm_mm_pmulhuw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pmulhuw			mm0,			mm1

			ret
_uXm_mm_pmulhuw endp

			align 8
_uXm_mm_maskmovq proc UX_VECCALL (voidarg) ;Inmm_A:mmword, Inmm_B:mmword, OutInt8_C:ptr byte			
			
			push			rdidx
			mov				rdidx,	byte ptr [rparam3]
			maskmovq		mm0,			mm1
			pop				rdidx

			ret
_uXm_mm_maskmovq endp

			align 8
_uXm_mm_pavgb proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pavgb			mm0,			mm1

			ret
_uXm_mm_pavgb endp

			align 8
_uXm_mm_pavgw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pavgw			mm0,			mm1

			ret
_uXm_mm_pavgw endp

			align 8
_uXm_mm_psadbw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			psadbw			mm0,			mm1

			ret
_uXm_mm_psadbw endp
endif ;__X32__

;******************
; memory & initialization
;******************
			align 16
_uXm_mm_set_ss proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, Inreal4_A:real4

			movss			xmm0,			xmm1

			ret
_uXm_mm_set_ss endp

			align 16
_uXm_mm_set_ps1 proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, Inreal4_A:real4

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			0

			ret
_uXm_mm_set_ps1 endp

			align 16
_uXm_mm_set_ps proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, Inreal4_D:real4 ;Inreal4_C:real4 ;Inreal4_B:real4 ;Inreal4_A:real4

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffle4(0,0,0,0)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			_uXm_mm_shuffle4(3,0,0,0)

			movss			xmm0,			xmm3
			shufps			xmm0,			xmm0,			_uXm_mm_shuffle4(3,2,0,0)

			movss			xmm0,			xmm4

			ret
_uXm_mm_set_ps endp

			align 16
_uXm_mm_setr_ps proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, Inreal4_A:real4 ;Inreal4_B:real4 ;Inreal4_C:real4 ;Inreal4_D:real4

			movss			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(0,0,0,0)

			movss			xmm0,			xmm2
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(0,0,0,3)

			movss			xmm0,			xmm3
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(0,0,2,3)

			movss			xmm0,			xmm4
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_mm_setr_ps endp

			align 16
_uXm_mm_setzero_ps proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword

			xorps			xmm0,			xmm0

			ret
_uXm_mm_setzero_ps endp

			align 16
_uXm_mm_load_ss proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam2]

			ret
_uXm_mm_load_ss endp

			align 16
_uXm_mm_load_ps1 proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal4_A:ptr real4

			movss			xmm0,		real4 ptr [rparam2]
			shufps			xmm0,			xmm0,			0

			ret
_uXm_mm_load_ps1 endp

			align 16
_uXm_mm_load_ps proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam2]

			ret
_uXm_mm_load_ps endp

			align 16
_uXm_mm_loadr_ps proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal4_A:ptr xmmword

			movaps			xmm0,		xmmword ptr [rparam2]
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_mm_loadr_ps endp

			align 16
_uXm_mm_loadu_ps proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam2]

			ret
_uXm_mm_loadu_ps endp

			align 16
_uXm_mm_loadur_ps proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InPreal4_A:ptr xmmword

			movups			xmm0,		xmmword ptr [rparam2]
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_mm_loadur_ps endp

			align 16
_uXm_mm_loadh_ps proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_A:xmmword, InPreal4_B:ptr mmword

			movhps			xmm1,		mmword ptr [rparam2]
			movaps			xmm0,			xmm1

			ret
_uXm_mm_loadh_ps endp

			align 16
_uXm_mm_loadl_ps proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_A:xmmword, InPreal4_B:ptr mmword

			movlps			xmm1,		mmword ptr [rparam2]
			movaps			xmm0,			xmm1

			ret
_uXm_mm_loadl_ps endp

			align 16
_uXm_mm_store_ss proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movss		real4 ptr [rparam1],			xmm1

			ret
_uXm_mm_store_ss endp

			align 16
_uXm_mm_store_ps1 proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			0
			movaps		xmmword ptr [rparam1],			xmm0

			ret
_uXm_mm_store_ps1 endp

			align 16
_uXm_mm_storeu_ps1 proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr real4, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			0
			movups		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storeu_ps1 endp

			align 16
_uXm_mm_store_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_store_ps endp

			align 16
_uXm_mm_storeu_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movups		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storeu_ps endp

			align 16
_uXm_mm_storer_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movaps		xmmword ptr [rparam1],			xmm0

			ret
_uXm_mm_storer_ps endp

			align 16
_uXm_mm_storeur_ps proc UX_VECCALL (voidarg) ;OutPreal4_A:ptr xmmword, InXmm_B:xmmword

			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)
			movups		xmmword ptr [rparam1],			xmm0

			ret
_uXm_mm_storeur_ps endp

			align 16
_uXm_mm_storeh_ps proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movhps		mmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storeh_ps endp

			align 16
_uXm_mm_storel_ps proc UX_VECCALL (voidarg) ;OutPreal8_A:ptr xmmword, InXmm_B:xmmword

			movlps		mmword ptr [rparam1],			xmm1

			ret
_uXm_mm_storel_ps endp

;******************
; FP, moves
;******************
			align 16
_uXm_mm_move_ss proc UX_VECCALL (voidarg) ;Outxmm_A:xmmword, InXmm_B:xmmword, InXmm_C:xmmword
			
			movss 			xmm0,			xmm1
			movaps			xmm0,			xmm2

			ret
_uXm_mm_move_ss endp

			align 16
_uXm_mm_move_ps proc UX_VECCALL (voidarg) ;OutXmm_A:xmmword, InXmm_B:xmmword
			
			movaps 			xmm0,			xmm1

			ret
_uXm_mm_move_ps endp

			align 16
_uXm_mm_mover_ps proc UX_VECCALL (voidarg) ;OutXmm_A:xmmword, InXmm_B:xmmword
			
			movaps 			xmm0,			xmm1
			shufps			xmm0,			xmm0,			_uXm_mm_shuffler4(3,2,1,0)

			ret
_uXm_mm_mover_ps endp

;******************
; Cacheability support
;******************
			align 16
_uXm_mm_prefetch_0 proc UX_VECCALL (voidarg) ;InPInt8_A:ptr byte

			prefetchnta			byte ptr [rparam1]

			ret
_uXm_mm_prefetch_0 endp

			align 16
_uXm_mm_prefetch_1 proc UX_VECCALL (voidarg) ;InPInt8_A:ptr byte

			prefetcht0			byte ptr [rparam1]

			ret
_uXm_mm_prefetch_1 endp

			align 16
_uXm_mm_prefetch_2 proc UX_VECCALL (voidarg) ;InPInt8_A:ptr byte

			prefetcht1			byte ptr [rparam1]

			ret
_uXm_mm_prefetch_2 endp

			align 16
_uXm_mm_prefetch_3 proc UX_VECCALL (voidarg) ;InPInt8_A:ptr byte

			prefetcht2			byte ptr [rparam1]

			ret
_uXm_mm_prefetch_3 endp

			align 16
_uXm_mm_prefetch proc UX_VECCALL (voidarg) ;InPInt8_A:ptr byte, InInt_BSel:dword

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
			lea				rbx,			[mmprefetchjmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmprefetchjmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif
			
		ifndef __X64__			
			mmprefetchword		textequ		<dword>
			mmprefetchiword		textequ		<dd>
		else
			mmprefetchword		textequ		<qword>
			mmprefetchiword		textequ		<dq>
		endif
		
		mmprefetchjmptable label mmprefetchword
			mmprefetchiword	offset mmprefetch_0, offset mmprefetch_1, offset mmprefetch_2, offset mmprefetch_3

			mmprefetch_0 label mmprefetchword
				jmp		_uXm_mm_prefetch_0
			mmprefetch_1 label mmprefetchword
				jmp		_uXm_mm_prefetch_1
			mmprefetch_2 label mmprefetchword
				jmp		_uXm_mm_prefetch_2
			mmprefetch_3 label mmprefetchword
				jmp		_uXm_mm_prefetch_3
			
_uXm_mm_prefetch endp

ifdef __X32__
			align 8
_uXm_mm_stream_pi proc UX_VECCALL (dword) ;OutPmm_A:ptr mmword,Inmm_B:mmword
			
			movntq 		mmword ptr [rparam1],			mm1

			ret
_uXm_mm_stream_pi endp
endif ;__X32__

			align 16
_uXm_mm_stream_ps proc UX_VECCALL (dword) ;OutPfloat_A:ptr xmmword, InXmm_B:xmmword
			
			movntps 		xmmword ptr [rparam1],			xmm1

			ret
_uXm_mm_stream_ps endp

			align 16
_uXm_mm_sfence proc UX_VECCALL (voidarg)
			
			sfence

			ret
_uXm_mm_sfence endp

			align 4
_uXm_mm_getcsr proc UX_VECCALL (dword)
			
			stmxcsr			dword ptr [rreturn]

			ret
_uXm_mm_getcsr endp

			align 4
_uXm_mm_setcsr proc UX_VECCALL (voidarg) ;InInt_A:dword
			
			ldmxcsr			dword ptr [rparam1]

			ret
_uXm_mm_setcsr endp

	end
