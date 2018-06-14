
	include uXmx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	include uXmsseintrin.inc
	
	.data

	.const
	
		__align_size_t
		_m128ialignrepi8jmptable isize_t	offset _m128ialignrepi8_0, offset _m128ialignrepi8_1, offset _m128ialignrepi8_2, offset _m128ialignrepi8_3, offset _m128ialignrepi8_4, \
											offset _m128ialignrepi8_5, offset _m128ialignrepi8_6, offset _m128ialignrepi8_7, offset _m128ialignrepi8_8, offset _m128ialignrepi8_9, \
											offset _m128ialignrepi8_10, offset _m128ialignrepi8_11, offset _m128ialignrepi8_12, offset _m128ialignrepi8_13, offset _m128ialignrepi8_14, \
											offset _m128ialignrepi8_15, offset _m128ialignrepi8_16, offset _m128ialignrepi8_17, offset _m128ialignrepi8_18, offset _m128ialignrepi8_19, \
											offset _m128ialignrepi8_20, offset _m128ialignrepi8_21, offset _m128ialignrepi8_22, offset _m128ialignrepi8_23, offset _m128ialignrepi8_24, \
											offset _m128ialignrepi8_25, offset _m128ialignrepi8_26, offset _m128ialignrepi8_27, offset _m128ialignrepi8_28, offset _m128ialignrepi8_29, \
											offset _m128ialignrepi8_30, offset _m128ialignrepi8_31, offset _m128ialignrepi8_32 

ifdef __X32__
		__align_size_t
		_m128ialignrpi8jmptable isize_t	offset _m128ialignrpi8_0, offset _m128ialignrpi8_1, offset _m128ialignrpi8_2, offset _m128ialignrpi8_3, offset _m128ialignrpi8_4, \
										offset _m128ialignrpi8_5, offset _m128ialignrpi8_6, offset _m128ialignrpi8_7, offset _m128ialignrpi8_8, offset _m128ialignrpi8_9, \
										offset _m128ialignrpi8_10, offset _m128ialignrpi8_11, offset _m128ialignrpi8_12, offset _m128ialignrpi8_13, offset _m128ialignrpi8_14, \
										offset _m128ialignrpi8_15, offset _m128ialignrpi8_16 
endif ;__X32__	
		
	__align_xmm_fp_opt
	__veccall_opt

	.code
	
;************************************
; Horizontal Add:
;************************************
_uXm_func_start _uXm_mm_hadd_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			phaddw			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_hadd_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			phaddd			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_hadds_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			phaddsw			xmm0,			xmm1

			ret
_uXm_func_end

ifdef __X32__
_uXm_func_start _uXm_mm_hadd_pi16, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword

			phaddw			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_hadd_pi32, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword

			phaddd			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_hadds_pi16, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword

			phaddsw			mm0,			mm1

			ret
_uXm_func_end
endif

;************************************
; Horizontal Subtract:
;************************************
_uXm_func_start _uXm_mm_hsub_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			phsubw			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_hsub_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			phsubd			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_hsubs_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			phsubsw			xmm0,			xmm1

			ret
_uXm_func_end

ifdef __X32__
_uXm_func_start _uXm_mm_hsub_pi16, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword

			phsubw			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_hsub_pi32, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword

			phsubd			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_hsubs_pi16, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword

			phsubsw			mm0,			mm1

			ret
_uXm_func_end
endif ;__X32__	

;************************************
; Multiply unsigned bytes by signed bytes and
;************************************
_uXm_func_start _uXm_mm_maddubs_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmaddubsw			xmm0,			xmm1

			ret
_uXm_func_end

ifdef __X32__
_uXm_func_start _uXm_mm_maddubs_pi16, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword

			pmaddubsw			mm0,			mm1

			ret
_uXm_func_end
endif ;__X32__	

_uXm_func_start _uXm_mm_mulhrs_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmulhrsw			xmm0,			xmm1

			ret
_uXm_func_end

ifdef __X32__
_uXm_func_start _uXm_mm_mulhrs_pi16, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword

			pmulhrsw			mm0,			mm1

			ret
_uXm_func_end
endif ;__X32__	

;************************************
; Packed shuffle bytes
;************************************
_uXm_func_start _uXm_mm_shuffle_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pshufb			xmm0,			xmm1

			ret
_uXm_func_end

ifdef __X32__
_uXm_func_start _uXm_mm_shuffle_pi8, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword

			pshufb			mm0,			mm1

			ret
_uXm_func_end
endif ;__X32__	

;************************************
; Packed byte, word, double word sign
;************************************
_uXm_func_start _uXm_mm_sign_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			psignb			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sign_epi16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			psignw			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_sign_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			psignd			xmm0,			xmm1

			ret
_uXm_func_end

ifdef __X32__
_uXm_func_start _uXm_mm_sign_pi8, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword

			psignb			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sign_pi16, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword

			psignw			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_sign_pi32, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword

			psignd			mm0,			mm1

			ret
_uXm_func_end
endif ;__X32__	

;************************************
; Packed align and shift right by n*8 bits
;************************************
_uXm_func_start _uXm_mm_alignr_epi8_0, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_1, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_2, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_3, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_4, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_5, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_6, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_7, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_9, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_10, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_11, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_12, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_13, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			13
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_14, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			14
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_15, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			15
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			16
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_17, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			17
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_18, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			18
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_19, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			19
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_20, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			20
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_21, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			21
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_22, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			22
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_23, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			23
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_24, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			24
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_25, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			25
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_26, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			26
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_27, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			27
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_28, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			28
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_29, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			29
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_30, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			30
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_31, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			31
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8_32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			palignr			xmm0,			xmm1, 			32
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_epi8, xmmword, < >, 2 * xmm_size + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, Inint_Count:dword
		
		.if(rparam3 > 32)
			pxor			xmm0,			xmm0
			ret
		.endif

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128ialignrepi8jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128ialignrepi8jmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128ialignrepi8_0 label size_t
			palignr			xmm0,			xmm1, 			0
			ret
		_m128ialignrepi8_1 label size_t
			palignr			xmm0,			xmm1, 			1
			ret
		_m128ialignrepi8_2 label size_t
			palignr			xmm0,			xmm1, 			2
			ret
		_m128ialignrepi8_3 label size_t
			palignr			xmm0,			xmm1, 			3
			ret
		_m128ialignrepi8_4 label size_t
			palignr			xmm0,			xmm1, 			4
			ret
		_m128ialignrepi8_5 label size_t
			palignr			xmm0,			xmm1, 			5
			ret
		_m128ialignrepi8_6 label size_t
			palignr			xmm0,			xmm1, 			6
			ret
		_m128ialignrepi8_7 label size_t
			palignr			xmm0,			xmm1, 			7
			ret
		_m128ialignrepi8_8 label size_t
			palignr			xmm0,			xmm1, 			8
			ret
		_m128ialignrepi8_9 label size_t
			palignr			xmm0,			xmm1, 			9
			ret
		_m128ialignrepi8_10 label size_t
			palignr			xmm0,			xmm1, 			10
			ret
		_m128ialignrepi8_11 label size_t
			palignr			xmm0,			xmm1, 			11
			ret
		_m128ialignrepi8_12 label size_t
			palignr			xmm0,			xmm1, 			12
			ret
		_m128ialignrepi8_13 label size_t
			palignr			xmm0,			xmm1, 			13
			ret
		_m128ialignrepi8_14 label size_t
			palignr			xmm0,			xmm1, 			14
			ret
		_m128ialignrepi8_15 label size_t
			palignr			xmm0,			xmm1, 			15
			ret
		_m128ialignrepi8_16 label size_t
			palignr			xmm0,			xmm1, 			16
			ret
		_m128ialignrepi8_17 label size_t
			palignr			xmm0,			xmm1, 			17
			ret
		_m128ialignrepi8_18 label size_t
			palignr			xmm0,			xmm1, 			18
			ret
		_m128ialignrepi8_19 label size_t
			palignr			xmm0,			xmm1, 			19
			ret
		_m128ialignrepi8_20 label size_t
			palignr			xmm0,			xmm1, 			20
			ret
		_m128ialignrepi8_21 label size_t
			palignr			xmm0,			xmm1, 			21
			ret
		_m128ialignrepi8_22 label size_t
			palignr			xmm0,			xmm1, 			22
			ret
		_m128ialignrepi8_23 label size_t
			palignr			xmm0,			xmm1, 			23
			ret
		_m128ialignrepi8_24 label size_t
			palignr			xmm0,			xmm1, 			24
			ret
		_m128ialignrepi8_25 label size_t
			palignr			xmm0,			xmm1, 			25
			ret
		_m128ialignrepi8_26 label size_t
			palignr			xmm0,			xmm1, 			26
			ret
		_m128ialignrepi8_27 label size_t
			palignr			xmm0,			xmm1, 			27
			ret
		_m128ialignrepi8_28 label size_t
			palignr			xmm0,			xmm1, 			28
			ret
		_m128ialignrepi8_29 label size_t
			palignr			xmm0,			xmm1, 			29
			ret
		_m128ialignrepi8_30 label size_t
			palignr			xmm0,			xmm1, 			30
			ret
		_m128ialignrepi8_31 label size_t
			palignr			xmm0,			xmm1, 			31
			ret
		_m128ialignrepi8_32 label size_t
			palignr			xmm0,			xmm1, 			32
			ret

_uXm_func_end

ifdef __X32__
_uXm_func_start _uXm_mm_alignr_pi8_0, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_1, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_2, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_3, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_4, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_5, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_6, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_7, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_8, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_9, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_10, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_11, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_12, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_13, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			13
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_14, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			14
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_15, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			15
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8_16, mmword, < >, 2 * mm_size ;Inmm_A:mmword, Inmm_B:mmword
			palignr			mm0,			mm1, 			16
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_alignr_pi8, mmword, < >, 2 * mm_size + reg_size ;Inmm_A:mmword, Inmm_B:mmword, Inint_Count:dword
		
		.if(rparam3 > 16)
			pxor			mm0,			mm0
			ret
		.endif

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128ialignrpi8jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128ialignrpi8jmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128ialignrpi8_0 label size_t
			palignr			mm0,			mm1, 			0
			ret
		_m128ialignrpi8_1 label size_t
			palignr			mm0,			mm1, 			1
			ret
		_m128ialignrpi8_2 label size_t
			palignr			mm0,			mm1, 			2
			ret
		_m128ialignrpi8_3 label size_t
			palignr			mm0,			mm1, 			3
			ret
		_m128ialignrpi8_4 label size_t
			palignr			mm0,			mm1, 			4
			ret
		_m128ialignrpi8_5 label size_t
			palignr			mm0,			mm1, 			5
			ret
		_m128ialignrpi8_6 label size_t
			palignr			mm0,			mm1, 			6
			ret
		_m128ialignrpi8_7 label size_t
			palignr			mm0,			mm1, 			7
			ret
		_m128ialignrpi8_8 label size_t
			palignr			mm0,			mm1, 			8
			ret
		_m128ialignrpi8_9 label size_t
			palignr			mm0,			mm1, 			9
			ret
		_m128ialignrpi8_10 label size_t
			palignr			mm0,			mm1, 			10
			ret
		_m128ialignrpi8_11 label size_t
			palignr			mm0,			mm1, 			11
			ret
		_m128ialignrpi8_12 label size_t
			palignr			mm0,			mm1, 			12
			ret
		_m128ialignrpi8_13 label size_t
			palignr			mm0,			mm1, 			13
			ret
		_m128ialignrpi8_14 label size_t
			palignr			mm0,			mm1, 			14
			ret
		_m128ialignrpi8_15 label size_t
			palignr			mm0,			mm1, 			15
			ret
		_m128ialignrpi8_16 label size_t
			palignr			mm0,			mm1, 			16
			ret

_uXm_func_end
endif ;__X32__

;************************************
; Packed byte, word, double word absolute value
;************************************
_uXm_func_start _uXm_mm_abs_epi8, xmmword, < >, xmm_size ;InXmm_A:xmmword

			pabsb			xmm0,			xmm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_abs_epi16, xmmword, < >, xmm_size ;InXmm_A:xmmword

			pabsw			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_abs_epi32, xmmword, < >, xmm_size ;InXmm_A:xmmword

			pabsd			xmm0,			xmm1

			ret
_uXm_func_end

ifdef __X32__
_uXm_func_start _uXm_mm_abs_pi8, mmword, < >, mm_size ;Inmm_A:mmword

			pabsb			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_abs_pi16, mmword, < >, mm_size ;Inmm_A:mmword

			pabsw			mm0,			mm1

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_abs_pi32, mmword, < >, mm_size ;Inmm_A:mmword

			pabsd			mm0,			mm1

			ret
_uXm_func_end
endif ;__X32__	

endif ;__MIC__

	end
