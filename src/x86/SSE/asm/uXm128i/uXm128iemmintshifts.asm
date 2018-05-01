
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.data
	
		m128isllisi128jmptable isize_t  offset m128isllisi128_0, offset m128isllisi128_1, offset m128isllisi128_2, offset m128isllisi128_3, offset m128isllisi128_4, \
										offset m128isllisi128_5, offset m128isllisi128_6, offset m128isllisi128_7, offset m128isllisi128_8, offset m128isllisi128_9, \
										offset m128isllisi128_10, offset m128isllisi128_11, offset m128isllisi128_12, offset m128isllisi128_13, offset m128isllisi128_14, \
										offset m128isllisi128_15			
		
		m128islliepi16jmptable isize_t	offset m128islliepi16_0, offset m128islliepi16_1, offset m128islliepi16_2, offset m128islliepi16_3, offset m128islliepi16_4, \
										offset m128islliepi16_5, offset m128islliepi16_6, offset m128islliepi16_7, offset m128islliepi16_8, offset m128islliepi16_9, \
										offset m128islliepi16_10, offset m128islliepi16_11, offset m128islliepi16_12, offset m128islliepi16_13, offset m128islliepi16_14, \
										offset m128islliepi16_15			
		
		m128islliepi32jmptable isize_t	offset m128islliepi32_0, offset m128islliepi32_1, offset m128islliepi32_2, offset m128islliepi32_3, offset m128islliepi32_4, \
										offset m128islliepi32_5, offset m128islliepi32_6, offset m128islliepi32_7, offset m128islliepi32_8, offset m128islliepi32_9, \
										offset m128islliepi32_10, offset m128islliepi32_11, offset m128islliepi32_12, offset m128islliepi32_13, offset m128islliepi32_14, \
										offset m128islliepi32_15, offset m128islliepi32_16, offset m128islliepi32_17, offset m128islliepi32_18, offset m128islliepi32_19, \
										offset m128islliepi32_20, offset m128islliepi32_21, offset m128islliepi32_22, offset m128islliepi32_23, offset m128islliepi32_24, \
										offset m128islliepi32_25, offset m128islliepi32_26, offset m128islliepi32_27, offset m128islliepi32_28, offset m128islliepi32_29, \
										offset m128islliepi32_30, offset m128islliepi32_31
		
		m128islliepi64jmptable isize_t	offset m128islliepi64_0, offset m128islliepi64_1, offset m128islliepi64_2, offset m128islliepi64_3, offset m128islliepi64_4, \
										offset m128islliepi64_5, offset m128islliepi64_6, offset m128islliepi64_7, offset m128islliepi64_8, offset m128islliepi64_9, \
										offset m128islliepi64_10, offset m128islliepi64_11, offset m128islliepi64_12, offset m128islliepi64_13, offset m128islliepi64_14, \
										offset m128islliepi64_15, offset m128islliepi64_16, offset m128islliepi64_17, offset m128islliepi64_18, offset m128islliepi64_19, \
										offset m128islliepi64_20, offset m128islliepi64_21, offset m128islliepi64_22, offset m128islliepi64_23, offset m128islliepi64_24, \
										offset m128islliepi64_25, offset m128islliepi64_26, offset m128islliepi64_27, offset m128islliepi64_28, offset m128islliepi64_29, \
										offset m128islliepi64_30, offset m128islliepi64_31, offset m128islliepi64_32, offset m128islliepi64_33, offset m128islliepi64_34, \
										offset m128islliepi64_35, offset m128islliepi64_36, offset m128islliepi64_37, offset m128islliepi64_38, offset m128islliepi64_39, \
										offset m128islliepi64_40, offset m128islliepi64_41, offset m128islliepi64_42, offset m128islliepi64_43, offset m128islliepi64_44, \
										offset m128islliepi64_45, offset m128islliepi64_46, offset m128islliepi64_47, offset m128islliepi64_48, offset m128islliepi64_49, \
										offset m128islliepi64_50, offset m128islliepi64_51, offset m128islliepi64_52, offset m128islliepi64_53, offset m128islliepi64_54, \
										offset m128islliepi64_55, offset m128islliepi64_56, offset m128islliepi64_57, offset m128islliepi64_58, offset m128islliepi64_59, \
										offset m128islliepi64_60, offset m128islliepi64_61, offset m128islliepi64_62, offset m128islliepi64_63
		
		m128israiepi16jmptable isize_t	offset m128israiepi16_0, offset m128israiepi16_1, offset m128israiepi16_2, offset m128israiepi16_3, offset m128israiepi16_4, \
										offset m128israiepi16_5, offset m128israiepi16_6, offset m128israiepi16_7, offset m128israiepi16_8, offset m128israiepi16_9, \
										offset m128israiepi16_10, offset m128israiepi16_11, offset m128israiepi16_12, offset m128israiepi16_13, offset m128israiepi16_14, \
										offset m128israiepi16_15			
		
		m128israiepi32jmptable isize_t	offset m128israiepi32_0, offset m128israiepi32_1, offset m128israiepi32_2, offset m128israiepi32_3, offset m128israiepi32_4, \
										offset m128israiepi32_5, offset m128israiepi32_6, offset m128israiepi32_7, offset m128israiepi32_8, offset m128israiepi32_9, \
										offset m128israiepi32_10, offset m128israiepi32_11, offset m128israiepi32_12, offset m128israiepi32_13, offset m128israiepi32_14, \
										offset m128israiepi32_15, offset m128israiepi32_16, offset m128israiepi32_17, offset m128israiepi32_18, offset m128israiepi32_19, \
										offset m128israiepi32_20, offset m128israiepi32_21, offset m128israiepi32_22, offset m128israiepi32_23, offset m128israiepi32_24, \
										offset m128israiepi32_25, offset m128israiepi32_26, offset m128israiepi32_27, offset m128israiepi32_28, offset m128israiepi32_29, \
										offset m128israiepi32_30, offset m128israiepi32_31
		
		m128isrlisi128jmptable isize_t	offset m128isrlisi128_0, offset m128isrlisi128_1, offset m128isrlisi128_2, offset m128isrlisi128_3, offset m128isrlisi128_4, \
										offset m128isrlisi128_5, offset m128isrlisi128_6, offset m128isrlisi128_7, offset m128isrlisi128_8, offset m128isrlisi128_9, \
										offset m128isrlisi128_10, offset m128isrlisi128_11, offset m128isrlisi128_12, offset m128isrlisi128_13, offset m128isrlisi128_14, \
										offset m128isrlisi128_15			
		
		m128isrliepi16jmptable isize_t	offset m128isrliepi16_0, offset m128isrliepi16_1, offset m128isrliepi16_2, offset m128isrliepi16_3, offset m128isrliepi16_4, \
										offset m128isrliepi16_5, offset m128isrliepi16_6, offset m128isrliepi16_7, offset m128isrliepi16_8, offset m128isrliepi16_9, \
										offset m128isrliepi16_10, offset m128isrliepi16_11, offset m128isrliepi16_12, offset m128isrliepi16_13, offset m128isrliepi16_14, \
										offset m128isrliepi16_15			
		
		m128isrliepi32jmptable isize_t	offset m128isrliepi32_0, offset m128isrliepi32_1, offset m128isrliepi32_2, offset m128isrliepi32_3, offset m128isrliepi32_4, \
										offset m128isrliepi32_5, offset m128isrliepi32_6, offset m128isrliepi32_7, offset m128isrliepi32_8, offset m128isrliepi32_9, \
										offset m128isrliepi32_10, offset m128isrliepi32_11, offset m128isrliepi32_12, offset m128isrliepi32_13, offset m128isrliepi32_14, \
										offset m128isrliepi32_15, offset m128isrliepi32_16, offset m128isrliepi32_17, offset m128isrliepi32_18, offset m128isrliepi32_19, \
										offset m128isrliepi32_20, offset m128isrliepi32_21, offset m128isrliepi32_22, offset m128isrliepi32_23, offset m128isrliepi32_24, \
										offset m128isrliepi32_25, offset m128isrliepi32_26, offset m128isrliepi32_27, offset m128isrliepi32_28, offset m128isrliepi32_29, \
										offset m128isrliepi32_30, offset m128isrliepi32_31
		
		m128isrliepi64jmptable isize_t	offset m128isrliepi64_0, offset m128isrliepi64_1, offset m128isrliepi64_2, offset m128isrliepi64_3, offset m128isrliepi64_4, \
										offset m128isrliepi64_5, offset m128isrliepi64_6, offset m128isrliepi64_7, offset m128isrliepi64_8, offset m128isrliepi64_9, \
										offset m128isrliepi64_10, offset m128isrliepi64_11, offset m128isrliepi64_12, offset m128isrliepi64_13, offset m128isrliepi64_14, \
										offset m128isrliepi64_15, offset m128isrliepi64_16, offset m128isrliepi64_17, offset m128isrliepi64_18, offset m128isrliepi64_19, \
										offset m128isrliepi64_20, offset m128isrliepi64_21, offset m128isrliepi64_22, offset m128isrliepi64_23, offset m128isrliepi64_24, \
										offset m128isrliepi64_25, offset m128isrliepi64_26, offset m128isrliepi64_27, offset m128isrliepi64_28, offset m128isrliepi64_29, \
										offset m128isrliepi64_30, offset m128isrliepi64_31, offset m128isrliepi64_32, offset m128isrliepi64_33, offset m128isrliepi64_34, \
										offset m128isrliepi64_35, offset m128isrliepi64_36, offset m128isrliepi64_37, offset m128isrliepi64_38, offset m128isrliepi64_39, \
										offset m128isrliepi64_40, offset m128isrliepi64_41, offset m128isrliepi64_42, offset m128isrliepi64_43, offset m128isrliepi64_44, \
										offset m128isrliepi64_45, offset m128isrliepi64_46, offset m128isrliepi64_47, offset m128isrliepi64_48, offset m128isrliepi64_49, \
										offset m128isrliepi64_50, offset m128isrliepi64_51, offset m128isrliepi64_52, offset m128isrliepi64_53, offset m128isrliepi64_54, \
										offset m128isrliepi64_55, offset m128isrliepi64_56, offset m128isrliepi64_57, offset m128isrliepi64_58, offset m128isrliepi64_59, \
										offset m128isrliepi64_60, offset m128isrliepi64_61, offset m128isrliepi64_62, offset m128isrliepi64_63
		
	.code

;******************
; Proto
;******************
_uXm_m128i_slli_si128_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_si128 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

_uXm_m128i_slli_epi16_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

_uXm_m128i_slli_epi32_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_16 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_17 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_18 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_19 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_20 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_21 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_22 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_23 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_24 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_25 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_26 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_27 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_28 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_29 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_30 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32_31 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

_uXm_m128i_slli_epi64_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_16 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_17 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_18 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_19 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_20 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_21 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_22 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_23 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_24 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_25 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_26 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_27 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_28 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_29 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_30 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_31 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_32 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_33 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_34 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_35 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_36 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_36 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_38 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_39 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_40 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_41 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_42 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_43 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_44 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_45 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_46 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_47 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_48 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_49 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_50 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_51 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_52 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_53 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_54 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_55 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_56 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_57 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_58 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_59 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_60 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_61 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_62 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64_63 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_slli_epi64 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

_uXm_m128i_srai_epi16_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

_uXm_m128i_srai_epi32_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_16 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_17 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_18 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_19 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_20 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_21 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_22 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_23 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_24 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_25 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_26 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_27 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_28 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_29 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_30 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32_31 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srai_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

_uXm_m128i_srli_si128_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_si128 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

_uXm_m128i_srli_epi16_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

_uXm_m128i_srli_epi32_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_16 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_17 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_18 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_19 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_20 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_21 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_22 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_23 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_24 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_25 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_26 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_27 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_28 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_29 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_30 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32_31 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

_uXm_m128i_srli_epi64_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_16 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_17 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_18 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_19 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_20 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_21 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_22 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_23 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_24 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_25 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_26 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_27 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_28 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_29 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_30 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_31 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_32 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_33 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_34 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_35 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_36 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_36 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_38 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_39 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_40 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_41 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_42 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_43 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_44 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_45 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_46 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_47 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_48 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_49 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_50 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_51 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_52 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_53 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_54 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_55 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_56 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_57 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_58 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_59 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_60 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_61 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_62 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64_63 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
_uXm_m128i_srli_epi64 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

;******************
; Proc
;******************

_uXm_m128i_slli_si128_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			0
			ret
_uXm_m128i_slli_si128_0 endp

_uXm_m128i_slli_si128_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			1
			ret
_uXm_m128i_slli_si128_1 endp

_uXm_m128i_slli_si128_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			2
			ret
_uXm_m128i_slli_si128_2 endp

_uXm_m128i_slli_si128_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			3
			ret
_uXm_m128i_slli_si128_3 endp

_uXm_m128i_slli_si128_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			4
			ret
_uXm_m128i_slli_si128_4 endp

_uXm_m128i_slli_si128_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			5
			ret
_uXm_m128i_slli_si128_5 endp

_uXm_m128i_slli_si128_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			6
			ret
_uXm_m128i_slli_si128_6 endp

_uXm_m128i_slli_si128_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			7
			ret
_uXm_m128i_slli_si128_7 endp

_uXm_m128i_slli_si128_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			8
			ret
_uXm_m128i_slli_si128_8 endp

_uXm_m128i_slli_si128_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			9
			ret
_uXm_m128i_slli_si128_9 endp

_uXm_m128i_slli_si128_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			10
			ret
_uXm_m128i_slli_si128_10 endp

_uXm_m128i_slli_si128_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			11
			ret
_uXm_m128i_slli_si128_11 endp

_uXm_m128i_slli_si128_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			12
			ret
_uXm_m128i_slli_si128_12 endp

_uXm_m128i_slli_si128_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			13
			ret
_uXm_m128i_slli_si128_13 endp

_uXm_m128i_slli_si128_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			14
			ret
_uXm_m128i_slli_si128_14 endp

_uXm_m128i_slli_si128_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslldq			xmm0,			15
			ret
_uXm_m128i_slli_si128_15 endp

_uXm_m128i_slli_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128isllisi128jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128isllisi128jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128isllisi128_0 label size_t
			pslldq			xmm0,			0
			ret
		m128isllisi128_1 label size_t
			pslldq			xmm0,			1
			ret
		m128isllisi128_2 label size_t
			pslldq			xmm0,			2
			ret
		m128isllisi128_3 label size_t
			pslldq			xmm0,			3
			ret
		m128isllisi128_4 label size_t
			pslldq			xmm0,			4
			ret
		m128isllisi128_5 label size_t
			pslldq			xmm0,			5
			ret
		m128isllisi128_6 label size_t
			pslldq			xmm0,			6
			ret
		m128isllisi128_7 label size_t
			pslldq			xmm0,			7
			ret
		m128isllisi128_8 label size_t
			pslldq			xmm0,			8
			ret
		m128isllisi128_9 label size_t
			pslldq			xmm0,			9
			ret
		m128isllisi128_10 label size_t
			pslldq			xmm0,			10
			ret
		m128isllisi128_11 label size_t
			pslldq			xmm0,			11
			ret
		m128isllisi128_12 label size_t
			pslldq			xmm0,			12
			ret
		m128isllisi128_13 label size_t
			pslldq			xmm0,			13
			ret
		m128isllisi128_14 label size_t
			pslldq			xmm0,			14
			ret
		m128isllisi128_15 label size_t
			pslldq			xmm0,			15
			ret
		;.endif

_uXm_m128i_slli_si128 endp

_uXm_m128i_slli_epi16_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			0
			ret
_uXm_m128i_slli_epi16_0 endp

_uXm_m128i_slli_epi16_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			1
			ret
_uXm_m128i_slli_epi16_1 endp

_uXm_m128i_slli_epi16_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			2
			ret
_uXm_m128i_slli_epi16_2 endp

_uXm_m128i_slli_epi16_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			3
			ret
_uXm_m128i_slli_epi16_3 endp

_uXm_m128i_slli_epi16_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			4
			ret
_uXm_m128i_slli_epi16_4 endp

_uXm_m128i_slli_epi16_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			5
			ret
_uXm_m128i_slli_epi16_5 endp

_uXm_m128i_slli_epi16_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			6
			ret
_uXm_m128i_slli_epi16_6 endp

_uXm_m128i_slli_epi16_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			7
			ret
_uXm_m128i_slli_epi16_7 endp

_uXm_m128i_slli_epi16_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			8
			ret
_uXm_m128i_slli_epi16_8 endp

_uXm_m128i_slli_epi16_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			9
			ret
_uXm_m128i_slli_epi16_9 endp

_uXm_m128i_slli_epi16_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			10
			ret
_uXm_m128i_slli_epi16_10 endp

_uXm_m128i_slli_epi16_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			11
			ret
_uXm_m128i_slli_epi16_11 endp

_uXm_m128i_slli_epi16_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			12
			ret
_uXm_m128i_slli_epi16_12 endp

_uXm_m128i_slli_epi16_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			13
			ret
_uXm_m128i_slli_epi16_13 endp

_uXm_m128i_slli_epi16_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			14
			ret
_uXm_m128i_slli_epi16_14 endp

_uXm_m128i_slli_epi16_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllw			xmm0,			15
			ret
_uXm_m128i_slli_epi16_15 endp

_uXm_m128i_slli_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128islliepi16jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128islliepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128islliepi16_0 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_1 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_2 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_3 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_4 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_5 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_6 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_7 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_8 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_9 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_10 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_11 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_12 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_13 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_14 label size_t
			psllw			xmm0,			
			ret
		m128islliepi16_15 label size_t
			psllw			xmm0,			
			ret
		;.endif

_uXm_m128i_slli_epi16 endp

_uXm_m128i_slli_epi32_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			0
			ret
_uXm_m128i_slli_epi32_0 endp

_uXm_m128i_slli_epi32_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			1
			ret
_uXm_m128i_slli_epi32_1 endp

_uXm_m128i_slli_epi32_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			2
			ret
_uXm_m128i_slli_epi32_2 endp

_uXm_m128i_slli_epi32_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			3
			ret
_uXm_m128i_slli_epi32_3 endp

_uXm_m128i_slli_epi32_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			4
			ret
_uXm_m128i_slli_epi32_4 endp

_uXm_m128i_slli_epi32_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			5
			ret
_uXm_m128i_slli_epi32_5 endp

_uXm_m128i_slli_epi32_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			6
			ret
_uXm_m128i_slli_epi32_6 endp

_uXm_m128i_slli_epi32_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			7
			ret
_uXm_m128i_slli_epi32_7 endp

_uXm_m128i_slli_epi32_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			8
			ret
_uXm_m128i_slli_epi32_8 endp

_uXm_m128i_slli_epi32_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			9
			ret
_uXm_m128i_slli_epi32_9 endp

_uXm_m128i_slli_epi32_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			10
			ret
_uXm_m128i_slli_epi32_10 endp

_uXm_m128i_slli_epi32_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			11
			ret
_uXm_m128i_slli_epi32_11 endp

_uXm_m128i_slli_epi32_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			12
			ret
_uXm_m128i_slli_epi32_12 endp

_uXm_m128i_slli_epi32_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			13
			ret
_uXm_m128i_slli_epi32_13 endp

_uXm_m128i_slli_epi32_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			14
			ret
_uXm_m128i_slli_epi32_14 endp

_uXm_m128i_slli_epi32_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			15
			ret
_uXm_m128i_slli_epi32_15 endp

_uXm_m128i_slli_epi32_16 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			16
			ret
_uXm_m128i_slli_epi32_16 endp

_uXm_m128i_slli_epi32_17 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			17
			ret
_uXm_m128i_slli_epi32_17 endp

_uXm_m128i_slli_epi32_18 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			18
			ret
_uXm_m128i_slli_epi32_18 endp

_uXm_m128i_slli_epi32_19 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			19
			ret
_uXm_m128i_slli_epi32_19 endp

_uXm_m128i_slli_epi32_20 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			20
			ret
_uXm_m128i_slli_epi32_20 endp

_uXm_m128i_slli_epi32_21 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			21
			ret
_uXm_m128i_slli_epi32_21 endp

_uXm_m128i_slli_epi32_22 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			22
			ret
_uXm_m128i_slli_epi32_22 endp

_uXm_m128i_slli_epi32_23 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			23
			ret
_uXm_m128i_slli_epi32_23 endp

_uXm_m128i_slli_epi32_24 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			24
			ret
_uXm_m128i_slli_epi32_24 endp

_uXm_m128i_slli_epi32_25 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			25
			ret
_uXm_m128i_slli_epi32_25 endp

_uXm_m128i_slli_epi32_26 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			26
			ret
_uXm_m128i_slli_epi32_26 endp

_uXm_m128i_slli_epi32_27 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			27
			ret
_uXm_m128i_slli_epi32_27 endp

_uXm_m128i_slli_epi32_28 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			28
			ret
_uXm_m128i_slli_epi32_28 endp

_uXm_m128i_slli_epi32_29 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			29
			ret
_uXm_m128i_slli_epi32_29 endp

_uXm_m128i_slli_epi32_30 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			30
			ret
_uXm_m128i_slli_epi32_30 endp

_uXm_m128i_slli_epi32_31 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			pslld			xmm0,			31
			ret
_uXm_m128i_slli_epi32_31 endp

_uXm_m128i_slli_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128islliepi32jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128islliepi32jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128islliepi32_0 label size_t
			pslld			xmm0,			0
			ret
		m128islliepi32_1 label size_t
			pslld			xmm0,			1
			ret
		m128islliepi32_2 label size_t
			pslld			xmm0,			2
			ret
		m128islliepi32_3 label size_t
			pslld			xmm0,			3
			ret
		m128islliepi32_4 label size_t
			pslld			xmm0,			4
			ret
		m128islliepi32_5 label size_t
			pslld			xmm0,			5
			ret
		m128islliepi32_6 label size_t
			pslld			xmm0,			6
			ret
		m128islliepi32_7 label size_t
			pslld			xmm0,			7
			ret
		m128islliepi32_8 label size_t
			pslld			xmm0,			8
			ret
		m128islliepi32_9 label size_t
			pslld			xmm0,			9
			ret
		m128islliepi32_10 label size_t
			pslld			xmm0,			10
			ret
		m128islliepi32_11 label size_t
			pslld			xmm0,			11
			ret
		m128islliepi32_12 label size_t
			pslld			xmm0,			12
			ret
		m128islliepi32_13 label size_t
			pslld			xmm0,			13
			ret
		m128islliepi32_14 label size_t
			pslld			xmm0,			14
			ret
		m128islliepi32_15 label size_t
			pslld			xmm0,			15
			ret
		m128islliepi32_16 label size_t
			pslld			xmm0,			16
			ret
		m128islliepi32_17 label size_t
			pslld			xmm0,			17
			ret
		m128islliepi32_18 label size_t
			pslld			xmm0,			18
			ret
		m128islliepi32_19 label size_t
			pslld			xmm0,			19
			ret
		m128islliepi32_20 label size_t
			pslld			xmm0,			20
			ret
		m128islliepi32_21 label size_t
			pslld			xmm0,			21
			ret
		m128islliepi32_22 label size_t
			pslld			xmm0,			22
			ret
		m128islliepi32_23 label size_t
			pslld			xmm0,			23
			ret
		m128islliepi32_24 label size_t
			pslld			xmm0,			24
			ret
		m128islliepi32_25 label size_t
			pslld			xmm0,			25
			ret
		m128islliepi32_26 label size_t
			pslld			xmm0,			26
			ret
		m128islliepi32_27 label size_t
			pslld			xmm0,			27
			ret
		m128islliepi32_28 label size_t
			pslld			xmm0,			28
			ret
		m128islliepi32_29 label size_t
			pslld			xmm0,			29
			ret
		m128islliepi32_30 label size_t
			pslld			xmm0,			30
			ret
		m128islliepi32_31 label size_t
			pslld			xmm0,			31
			ret
		;.endif

_uXm_m128i_slli_epi32 endp

_uXm_m128i_slli_epi64_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			0
			ret
_uXm_m128i_slli_epi64_0 endp

_uXm_m128i_slli_epi64_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			1
			ret
_uXm_m128i_slli_epi64_1 endp

_uXm_m128i_slli_epi64_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			2
			ret
_uXm_m128i_slli_epi64_2 endp

_uXm_m128i_slli_epi64_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			3
			ret
_uXm_m128i_slli_epi64_3 endp

_uXm_m128i_slli_epi64_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			4
			ret
_uXm_m128i_slli_epi64_4 endp

_uXm_m128i_slli_epi64_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			5
			ret
_uXm_m128i_slli_epi64_5 endp

_uXm_m128i_slli_epi64_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			6
			ret
_uXm_m128i_slli_epi64_6 endp

_uXm_m128i_slli_epi64_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			7
			ret
_uXm_m128i_slli_epi64_7 endp

_uXm_m128i_slli_epi64_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			8
			ret
_uXm_m128i_slli_epi64_8 endp

_uXm_m128i_slli_epi64_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			9
			ret
_uXm_m128i_slli_epi64_9 endp

_uXm_m128i_slli_epi64_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			10
			ret
_uXm_m128i_slli_epi64_10 endp

_uXm_m128i_slli_epi64_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			11
			ret
_uXm_m128i_slli_epi64_11 endp

_uXm_m128i_slli_epi64_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			12
			ret
_uXm_m128i_slli_epi64_12 endp

_uXm_m128i_slli_epi64_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			13
			ret
_uXm_m128i_slli_epi64_13 endp

_uXm_m128i_slli_epi64_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			14
			ret
_uXm_m128i_slli_epi64_14 endp

_uXm_m128i_slli_epi64_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			15
			ret
_uXm_m128i_slli_epi64_15 endp

_uXm_m128i_slli_epi64_16 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			16
			ret
_uXm_m128i_slli_epi64_16 endp

_uXm_m128i_slli_epi64_17 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			17
			ret
_uXm_m128i_slli_epi64_17 endp

_uXm_m128i_slli_epi64_18 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			18
			ret
_uXm_m128i_slli_epi64_18 endp

_uXm_m128i_slli_epi64_19 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			19
			ret
_uXm_m128i_slli_epi64_19 endp

_uXm_m128i_slli_epi64_20 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			20
			ret
_uXm_m128i_slli_epi64_20 endp

_uXm_m128i_slli_epi64_21 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			21
			ret
_uXm_m128i_slli_epi64_21 endp

_uXm_m128i_slli_epi64_22 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			22
			ret
_uXm_m128i_slli_epi64_22 endp

_uXm_m128i_slli_epi64_23 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			23
			ret
_uXm_m128i_slli_epi64_23 endp

_uXm_m128i_slli_epi64_24 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			24
			ret
_uXm_m128i_slli_epi64_24 endp

_uXm_m128i_slli_epi64_25 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			25
			ret
_uXm_m128i_slli_epi64_25 endp

_uXm_m128i_slli_epi64_26 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			26
			ret
_uXm_m128i_slli_epi64_26 endp

_uXm_m128i_slli_epi64_27 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			27
			ret
_uXm_m128i_slli_epi64_27 endp

_uXm_m128i_slli_epi64_28 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			28
			ret
_uXm_m128i_slli_epi64_28 endp

_uXm_m128i_slli_epi64_29 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			29
			ret
_uXm_m128i_slli_epi64_29 endp

_uXm_m128i_slli_epi64_30 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			30
			ret
_uXm_m128i_slli_epi64_30 endp

_uXm_m128i_slli_epi64_31 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			31
			ret
_uXm_m128i_slli_epi64_31 endp

_uXm_m128i_slli_epi64_32 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			32
			ret
_uXm_m128i_slli_epi64_32 endp

_uXm_m128i_slli_epi64_33 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			33
			ret
_uXm_m128i_slli_epi64_33 endp

_uXm_m128i_slli_epi64_34 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			34
			ret
_uXm_m128i_slli_epi64_34 endp

_uXm_m128i_slli_epi64_35 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			35
			ret
_uXm_m128i_slli_epi64_35 endp

_uXm_m128i_slli_epi64_36 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			36
			ret
_uXm_m128i_slli_epi64_36 endp

_uXm_m128i_slli_epi64_37 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			37
			ret
_uXm_m128i_slli_epi64_37 endp

_uXm_m128i_slli_epi64_38 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			38
			ret
_uXm_m128i_slli_epi64_38 endp

_uXm_m128i_slli_epi64_39 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			39
			ret
_uXm_m128i_slli_epi64_39 endp

_uXm_m128i_slli_epi64_40 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			40
			ret
_uXm_m128i_slli_epi64_40 endp

_uXm_m128i_slli_epi64_41 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			41
			ret
_uXm_m128i_slli_epi64_41 endp

_uXm_m128i_slli_epi64_42 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			42
			ret
_uXm_m128i_slli_epi64_42 endp

_uXm_m128i_slli_epi64_43 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			43
			ret
_uXm_m128i_slli_epi64_43 endp

_uXm_m128i_slli_epi64_44 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			44
			ret
_uXm_m128i_slli_epi64_44 endp

_uXm_m128i_slli_epi64_45 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			45
			ret
_uXm_m128i_slli_epi64_45 endp

_uXm_m128i_slli_epi64_46 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			46
			ret
_uXm_m128i_slli_epi64_46 endp

_uXm_m128i_slli_epi64_47 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			47
			ret
_uXm_m128i_slli_epi64_47 endp

_uXm_m128i_slli_epi64_48 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			48
			ret
_uXm_m128i_slli_epi64_48 endp

_uXm_m128i_slli_epi64_49 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			49
			ret
_uXm_m128i_slli_epi64_49 endp

_uXm_m128i_slli_epi64_50 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			50
			ret
_uXm_m128i_slli_epi64_50 endp

_uXm_m128i_slli_epi64_51 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			51
			ret
_uXm_m128i_slli_epi64_51 endp

_uXm_m128i_slli_epi64_52 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			52
			ret
_uXm_m128i_slli_epi64_52 endp

_uXm_m128i_slli_epi64_53 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			53
			ret
_uXm_m128i_slli_epi64_53 endp

_uXm_m128i_slli_epi64_54 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			54
			ret
_uXm_m128i_slli_epi64_54 endp

_uXm_m128i_slli_epi64_55 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			55
			ret
_uXm_m128i_slli_epi64_55 endp

_uXm_m128i_slli_epi64_56 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			56
			ret
_uXm_m128i_slli_epi64_56 endp

_uXm_m128i_slli_epi64_57 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			57
			ret
_uXm_m128i_slli_epi64_57 endp

_uXm_m128i_slli_epi64_58 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			58
			ret
_uXm_m128i_slli_epi64_58 endp

_uXm_m128i_slli_epi64_59 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			59
			ret
_uXm_m128i_slli_epi64_59 endp

_uXm_m128i_slli_epi64_60 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			60
			ret
_uXm_m128i_slli_epi64_60 endp

_uXm_m128i_slli_epi64_61 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			61
			ret
_uXm_m128i_slli_epi64_61 endp

_uXm_m128i_slli_epi64_62 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			62
			ret
_uXm_m128i_slli_epi64_62 endp

_uXm_m128i_slli_epi64_63 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psllq			xmm0,			63
			ret
_uXm_m128i_slli_epi64_63 endp

_uXm_m128i_slli_epi64 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128islliepi64jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128islliepi64jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128islliepi64_0 label size_t
			psllq			xmm0,			0
			ret
		m128islliepi64_1 label size_t
			psllq			xmm0,			1
			ret
		m128islliepi64_2 label size_t
			psllq			xmm0,			2
			ret
		m128islliepi64_3 label size_t
			psllq			xmm0,			3
			ret
		m128islliepi64_4 label size_t
			psllq			xmm0,			4
			ret
		m128islliepi64_5 label size_t
			psllq			xmm0,			5
			ret
		m128islliepi64_6 label size_t
			psllq			xmm0,			6
			ret
		m128islliepi64_7 label size_t
			psllq			xmm0,			7
			ret
		m128islliepi64_8 label size_t
			psllq			xmm0,			8
			ret
		m128islliepi64_9 label size_t
			psllq			xmm0,			9
			ret
		m128islliepi64_10 label size_t
			psllq			xmm0,			10
			ret
		m128islliepi64_11 label size_t
			psllq			xmm0,			11
			ret
		m128islliepi64_12 label size_t
			psllq			xmm0,			12
			ret
		m128islliepi64_13 label size_t
			psllq			xmm0,			13
			ret
		m128islliepi64_14 label size_t
			psllq			xmm0,			14
			ret
		m128islliepi64_15 label size_t
			psllq			xmm0,			15
			ret
		m128islliepi64_16 label size_t
			psllq			xmm0,			16
			ret
		m128islliepi64_17 label size_t
			psllq			xmm0,			17
			ret
		m128islliepi64_18 label size_t
			psllq			xmm0,			18
			ret
		m128islliepi64_19 label size_t
			psllq			xmm0,			19
			ret
		m128islliepi64_20 label size_t
			psllq			xmm0,			20
			ret
		m128islliepi64_21 label size_t
			psllq			xmm0,			21
			ret
		m128islliepi64_22 label size_t
			psllq			xmm0,			22
			ret
		m128islliepi64_23 label size_t
			psllq			xmm0,			23
			ret
		m128islliepi64_24 label size_t
			psllq			xmm0,			24
			ret
		m128islliepi64_25 label size_t
			psllq			xmm0,			25
			ret
		m128islliepi64_26 label size_t
			psllq			xmm0,			26
			ret
		m128islliepi64_27 label size_t
			psllq			xmm0,			27
			ret
		m128islliepi64_28 label size_t
			psllq			xmm0,			28
			ret
		m128islliepi64_29 label size_t
			psllq			xmm0,			29
			ret
		m128islliepi64_30 label size_t
			psllq			xmm0,			30
			ret
		m128islliepi64_31 label size_t
			psllq			xmm0,			31
			ret
		m128islliepi64_32 label size_t
			psllq			xmm0,			32
			ret
		m128islliepi64_33 label size_t
			psllq			xmm0,			33
			ret
		m128islliepi64_34 label size_t
			psllq			xmm0,			34
			ret
		m128islliepi64_35 label size_t
			psllq			xmm0,			35
			ret
		m128islliepi64_36 label size_t
			psllq			xmm0,			36
			ret
		m128islliepi64_37 label size_t
			psllq			xmm0,			37
			ret
		m128islliepi64_38 label size_t
			psllq			xmm0,			38
			ret
		m128islliepi64_39 label size_t
			psllq			xmm0,			39
			ret
		m128islliepi64_40 label size_t
			psllq			xmm0,			40
			ret
		m128islliepi64_41 label size_t
			psllq			xmm0,			41
			ret
		m128islliepi64_42 label size_t
			psllq			xmm0,			42
			ret
		m128islliepi64_43 label size_t
			psllq			xmm0,			43
			ret
		m128islliepi64_44 label size_t
			psllq			xmm0,			44
			ret
		m128islliepi64_45 label size_t
			psllq			xmm0,			45
			ret
		m128islliepi64_46 label size_t
			psllq			xmm0,			46
			ret
		m128islliepi64_47 label size_t
			psllq			xmm0,			47
			ret
		m128islliepi64_48 label size_t
			psllq			xmm0,			48
			ret
		m128islliepi64_49 label size_t
			psllq			xmm0,			49
			ret
		m128islliepi64_50 label size_t
			psllq			xmm0,			50
			ret
		m128islliepi64_51 label size_t
			psllq			xmm0,			51
			ret
		m128islliepi64_52 label size_t
			psllq			xmm0,			52
			ret
		m128islliepi64_53 label size_t
			psllq			xmm0,			53
			ret
		m128islliepi64_54 label size_t
			psllq			xmm0,			54
			ret
		m128islliepi64_55 label size_t
			psllq			xmm0,			55
			ret
		m128islliepi64_56 label size_t
			psllq			xmm0,			56
			ret
		m128islliepi64_57 label size_t
			psllq			xmm0,			57
			ret
		m128islliepi64_58 label size_t
			psllq			xmm0,			58
			ret
		m128islliepi64_59 label size_t
			psllq			xmm0,			59
			ret
		m128islliepi64_60 label size_t
			psllq			xmm0,			60
			ret
		m128islliepi64_61 label size_t
			psllq			xmm0,			61
			ret
		m128islliepi64_62 label size_t
			psllq			xmm0,			62
			ret
		m128islliepi64_63 label size_t
			psllq			xmm0,			63
			ret
		;.endif

_uXm_m128i_slli_epi64 endp

_uXm_m128i_srai_epi16_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			0
			ret
_uXm_m128i_srai_epi16_0 endp

_uXm_m128i_srai_epi16_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			1
			ret
_uXm_m128i_srai_epi16_1 endp

_uXm_m128i_srai_epi16_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			2
			ret
_uXm_m128i_srai_epi16_2 endp

_uXm_m128i_srai_epi16_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			3
			ret
_uXm_m128i_srai_epi16_3 endp

_uXm_m128i_srai_epi16_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			4
			ret
_uXm_m128i_srai_epi16_4 endp

_uXm_m128i_srai_epi16_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			5
			ret
_uXm_m128i_srai_epi16_5 endp

_uXm_m128i_srai_epi16_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			6
			ret
_uXm_m128i_srai_epi16_6 endp

_uXm_m128i_srai_epi16_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			7
			ret
_uXm_m128i_srai_epi16_7 endp

_uXm_m128i_srai_epi16_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			8
			ret
_uXm_m128i_srai_epi16_8 endp

_uXm_m128i_srai_epi16_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			9
			ret
_uXm_m128i_srai_epi16_9 endp

_uXm_m128i_srai_epi16_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			10
			ret
_uXm_m128i_srai_epi16_10 endp

_uXm_m128i_srai_epi16_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			11
			ret
_uXm_m128i_srai_epi16_11 endp

_uXm_m128i_srai_epi16_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			12
			ret
_uXm_m128i_srai_epi16_12 endp

_uXm_m128i_srai_epi16_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			13
			ret
_uXm_m128i_srai_epi16_13 endp

_uXm_m128i_srai_epi16_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			14
			ret
_uXm_m128i_srai_epi16_14 endp

_uXm_m128i_srai_epi16_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psraw			xmm0,			15
			ret
_uXm_m128i_srai_epi16_15 endp

_uXm_m128i_srai_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
			
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128israiepi16jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128israiepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128israiepi16_0 label size_t
			psraw			xmm0,			0
			ret
		m128israiepi16_1 label size_t
			psraw			xmm0,			1
			ret
		m128israiepi16_2 label size_t
			psraw			xmm0,			2
			ret
		m128israiepi16_3 label size_t
			psraw			xmm0,			3
			ret
		m128israiepi16_4 label size_t
			psraw			xmm0,			4
			ret
		m128israiepi16_5 label size_t
			psraw			xmm0,			5
			ret
		m128israiepi16_6 label size_t
			psraw			xmm0,			6
			ret
		m128israiepi16_7 label size_t
			psraw			xmm0,			7
			ret
		m128israiepi16_8 label size_t
			psraw			xmm0,			8
			ret
		m128israiepi16_9 label size_t
			psraw			xmm0,			9
			ret
		m128israiepi16_10 label size_t
			psraw			xmm0,			10
			ret
		m128israiepi16_11 label size_t
			psraw			xmm0,			11
			ret
		m128israiepi16_12 label size_t
			psraw			xmm0,			12
			ret
		m128israiepi16_13 label size_t
			psraw			xmm0,			13
			ret
		m128israiepi16_14 label size_t
			psraw			xmm0,			14
			ret
		m128israiepi16_15 label size_t
			psraw			xmm0,			15
			ret
		;.endif

_uXm_m128i_srai_epi16 endp

_uXm_m128i_srai_epi32_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			0
			ret
_uXm_m128i_srai_epi32_0 endp

_uXm_m128i_srai_epi32_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			1
			ret
_uXm_m128i_srai_epi32_1 endp

_uXm_m128i_srai_epi32_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			2
			ret
_uXm_m128i_srai_epi32_2 endp

_uXm_m128i_srai_epi32_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			3
			ret
_uXm_m128i_srai_epi32_3 endp

_uXm_m128i_srai_epi32_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			4
			ret
_uXm_m128i_srai_epi32_4 endp

_uXm_m128i_srai_epi32_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			5
			ret
_uXm_m128i_srai_epi32_5 endp

_uXm_m128i_srai_epi32_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			6
			ret
_uXm_m128i_srai_epi32_6 endp

_uXm_m128i_srai_epi32_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			7
			ret
_uXm_m128i_srai_epi32_7 endp

_uXm_m128i_srai_epi32_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			8
			ret
_uXm_m128i_srai_epi32_8 endp

_uXm_m128i_srai_epi32_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			9
			ret
_uXm_m128i_srai_epi32_9 endp

_uXm_m128i_srai_epi32_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			10
			ret
_uXm_m128i_srai_epi32_10 endp

_uXm_m128i_srai_epi32_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			11
			ret
_uXm_m128i_srai_epi32_11 endp

_uXm_m128i_srai_epi32_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			12
			ret
_uXm_m128i_srai_epi32_12 endp

_uXm_m128i_srai_epi32_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			13
			ret
_uXm_m128i_srai_epi32_13 endp

_uXm_m128i_srai_epi32_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			14
			ret
_uXm_m128i_srai_epi32_14 endp

_uXm_m128i_srai_epi32_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			15
			ret
_uXm_m128i_srai_epi32_15 endp

_uXm_m128i_srai_epi32_16 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			16
			ret
_uXm_m128i_srai_epi32_16 endp

_uXm_m128i_srai_epi32_17 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			17
			ret
_uXm_m128i_srai_epi32_17 endp

_uXm_m128i_srai_epi32_18 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			18
			ret
_uXm_m128i_srai_epi32_18 endp

_uXm_m128i_srai_epi32_19 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			19
			ret
_uXm_m128i_srai_epi32_19 endp

_uXm_m128i_srai_epi32_20 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			20
			ret
_uXm_m128i_srai_epi32_20 endp

_uXm_m128i_srai_epi32_21 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			21
			ret
_uXm_m128i_srai_epi32_21 endp

_uXm_m128i_srai_epi32_22 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			22
			ret
_uXm_m128i_srai_epi32_22 endp

_uXm_m128i_srai_epi32_23 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			23
			ret
_uXm_m128i_srai_epi32_23 endp

_uXm_m128i_srai_epi32_24 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			24
			ret
_uXm_m128i_srai_epi32_24 endp

_uXm_m128i_srai_epi32_25 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			25
			ret
_uXm_m128i_srai_epi32_25 endp

_uXm_m128i_srai_epi32_26 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			26
			ret
_uXm_m128i_srai_epi32_26 endp

_uXm_m128i_srai_epi32_27 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			27
			ret
_uXm_m128i_srai_epi32_27 endp

_uXm_m128i_srai_epi32_28 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			28
			ret
_uXm_m128i_srai_epi32_28 endp

_uXm_m128i_srai_epi32_29 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			29
			ret
_uXm_m128i_srai_epi32_29 endp

_uXm_m128i_srai_epi32_30 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			30
			ret
_uXm_m128i_srai_epi32_30 endp

_uXm_m128i_srai_epi32_31 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrad			xmm0,			31
			ret
_uXm_m128i_srai_epi32_31 endp

_uXm_m128i_srai_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128israiepi32jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128israiepi32jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128israiepi32_0 label size_t
			psrad			xmm0,			0
			ret
		m128israiepi32_1 label size_t
			psrad			xmm0,			1
			ret
		m128israiepi32_2 label size_t
			psrad			xmm0,			2
			ret
		m128israiepi32_3 label size_t
			psrad			xmm0,			3
			ret
		m128israiepi32_4 label size_t
			psrad			xmm0,			4
			ret
		m128israiepi32_5 label size_t
			psrad			xmm0,			5
			ret
		m128israiepi32_6 label size_t
			psrad			xmm0,			6
			ret
		m128israiepi32_7 label size_t
			psrad			xmm0,			7
			ret
		m128israiepi32_8 label size_t
			psrad			xmm0,			8
			ret
		m128israiepi32_9 label size_t
			psrad			xmm0,			9
			ret
		m128israiepi32_10 label size_t
			psrad			xmm0,			10
			ret
		m128israiepi32_11 label size_t
			psrad			xmm0,			11
			ret
		m128israiepi32_12 label size_t
			psrad			xmm0,			12
			ret
		m128israiepi32_13 label size_t
			psrad			xmm0,			13
			ret
		m128israiepi32_14 label size_t
			psrad			xmm0,			14
			ret
		m128israiepi32_15 label size_t
			psrad			xmm0,			15
			ret
		m128israiepi32_16 label size_t
			psrad			xmm0,			16
			ret
		m128israiepi32_17 label size_t
			psrad			xmm0,			17
			ret
		m128israiepi32_18 label size_t
			psrad			xmm0,			18
			ret
		m128israiepi32_19 label size_t
			psrad			xmm0,			19
			ret
		m128israiepi32_20 label size_t
			psrad			xmm0,			20
			ret
		m128israiepi32_21 label size_t
			psrad			xmm0,			21
			ret
		m128israiepi32_22 label size_t
			psrad			xmm0,			22
			ret
		m128israiepi32_23 label size_t
			psrad			xmm0,			23
			ret
		m128israiepi32_24 label size_t
			psrad			xmm0,			24
			ret
		m128israiepi32_25 label size_t
			psrad			xmm0,			25
			ret
		m128israiepi32_26 label size_t
			psrad			xmm0,			26
			ret
		m128israiepi32_27 label size_t
			psrad			xmm0,			27
			ret
		m128israiepi32_28 label size_t
			psrad			xmm0,			28
			ret
		m128israiepi32_29 label size_t
			psrad			xmm0,			29
			ret
		m128israiepi32_30 label size_t
			psrad			xmm0,			30
			ret
		m128israiepi32_31 label size_t
			psrad			xmm0,			31
			ret
		;.endif

_uXm_m128i_srai_epi32 endp

_uXm_m128i_srli_si128_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			0
			ret
_uXm_m128i_srli_si128_0 endp

_uXm_m128i_srli_si128_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			1
			ret
_uXm_m128i_srli_si128_1 endp

_uXm_m128i_srli_si128_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			2
			ret
_uXm_m128i_srli_si128_2 endp

_uXm_m128i_srli_si128_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			3
			ret
_uXm_m128i_srli_si128_3 endp

_uXm_m128i_srli_si128_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			4
			ret
_uXm_m128i_srli_si128_4 endp

_uXm_m128i_srli_si128_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			5
			ret
_uXm_m128i_srli_si128_5 endp

_uXm_m128i_srli_si128_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			6
			ret
_uXm_m128i_srli_si128_6 endp

_uXm_m128i_srli_si128_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			7
			ret
_uXm_m128i_srli_si128_7 endp

_uXm_m128i_srli_si128_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			8
			ret
_uXm_m128i_srli_si128_8 endp

_uXm_m128i_srli_si128_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			9
			ret
_uXm_m128i_srli_si128_9 endp

_uXm_m128i_srli_si128_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			10
			ret
_uXm_m128i_srli_si128_10 endp

_uXm_m128i_srli_si128_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			11
			ret
_uXm_m128i_srli_si128_11 endp

_uXm_m128i_srli_si128_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			12
			ret
_uXm_m128i_srli_si128_12 endp

_uXm_m128i_srli_si128_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			13
			ret
_uXm_m128i_srli_si128_13 endp

_uXm_m128i_srli_si128_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			14
			ret
_uXm_m128i_srli_si128_14 endp

_uXm_m128i_srli_si128_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrldq			xmm0,			15
			ret
_uXm_m128i_srli_si128_15 endp

_uXm_m128i_srli_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
				
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128isrlisi128jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128isrlisi128jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128isrlisi128_0 label size_t
			psrldq			xmm0,			0
			ret
		m128isrlisi128_1 label size_t
			psrldq			xmm0,			1
			ret
		m128isrlisi128_2 label size_t
			psrldq			xmm0,			2
			ret
		m128isrlisi128_3 label size_t
			psrldq			xmm0,			3
			ret
		m128isrlisi128_4 label size_t
			psrldq			xmm0,			4
			ret
		m128isrlisi128_5 label size_t
			psrldq			xmm0,			5
			ret
		m128isrlisi128_6 label size_t
			psrldq			xmm0,			6
			ret
		m128isrlisi128_7 label size_t
			psrldq			xmm0,			7
			ret
		m128isrlisi128_8 label size_t
			psrldq			xmm0,			8
			ret
		m128isrlisi128_9 label size_t
			psrldq			xmm0,			9
			ret
		m128isrlisi128_10 label size_t
			psrldq			xmm0,			10
			ret
		m128isrlisi128_11 label size_t
			psrldq			xmm0,			11
			ret
		m128isrlisi128_12 label size_t
			psrldq			xmm0,			12
			ret
		m128isrlisi128_13 label size_t
			psrldq			xmm0,			13
			ret
		m128isrlisi128_14 label size_t
			psrldq			xmm0,			14
			ret
		m128isrlisi128_15 label size_t
			psrldq			xmm0,			15
			ret
		;.endif

_uXm_m128i_srli_si128 endp

_uXm_m128i_srli_epi16_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			0
			ret
_uXm_m128i_srli_epi16_0 endp

_uXm_m128i_srli_epi16_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			1
			ret
_uXm_m128i_srli_epi16_1 endp

_uXm_m128i_srli_epi16_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			2
			ret
_uXm_m128i_srli_epi16_2 endp

_uXm_m128i_srli_epi16_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			3
			ret
_uXm_m128i_srli_epi16_3 endp

_uXm_m128i_srli_epi16_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			4
			ret
_uXm_m128i_srli_epi16_4 endp

_uXm_m128i_srli_epi16_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			5
			ret
_uXm_m128i_srli_epi16_5 endp

_uXm_m128i_srli_epi16_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			6
			ret
_uXm_m128i_srli_epi16_6 endp

_uXm_m128i_srli_epi16_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			7
			ret
_uXm_m128i_srli_epi16_7 endp

_uXm_m128i_srli_epi16_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			8
			ret
_uXm_m128i_srli_epi16_8 endp

_uXm_m128i_srli_epi16_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			9
			ret
_uXm_m128i_srli_epi16_9 endp

_uXm_m128i_srli_epi16_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			10
			ret
_uXm_m128i_srli_epi16_10 endp

_uXm_m128i_srli_epi16_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			11
			ret
_uXm_m128i_srli_epi16_11 endp

_uXm_m128i_srli_epi16_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			12
			ret
_uXm_m128i_srli_epi16_12 endp

_uXm_m128i_srli_epi16_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			13
			ret
_uXm_m128i_srli_epi16_13 endp

_uXm_m128i_srli_epi16_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			14
			ret
_uXm_m128i_srli_epi16_14 endp

_uXm_m128i_srli_epi16_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlw			xmm0,			15
			ret
_uXm_m128i_srli_epi16_15 endp

_uXm_m128i_srli_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128isrliepi16jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128isrliepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128isrliepi16_0 label size_t
			psrlw			xmm0,			0
			ret
		m128isrliepi16_1 label size_t
			psrlw			xmm0,			1
			ret
		m128isrliepi16_2 label size_t
			psrlw			xmm0,			2
			ret
		m128isrliepi16_3 label size_t
			psrlw			xmm0,			3
			ret
		m128isrliepi16_4 label size_t
			psrlw			xmm0,			4
			ret
		m128isrliepi16_5 label size_t
			psrlw			xmm0,			5
			ret
		m128isrliepi16_6 label size_t
			psrlw			xmm0,			6
			ret
		m128isrliepi16_7 label size_t
			psrlw			xmm0,			7
			ret
		m128isrliepi16_8 label size_t
			psrlw			xmm0,			8
			ret
		m128isrliepi16_9 label size_t
			psrlw			xmm0,			9
			ret
		m128isrliepi16_10 label size_t
			psrlw			xmm0,			10
			ret
		m128isrliepi16_11 label size_t
			psrlw			xmm0,			11
			ret
		m128isrliepi16_12 label size_t
			psrlw			xmm0,			12
			ret
		m128isrliepi16_13 label size_t
			psrlw			xmm0,			13
			ret
		m128isrliepi16_14 label size_t
			psrlw			xmm0,			14
			ret
		m128isrliepi16_15 label size_t
			psrlw			xmm0,			15
			ret
		;.endif

_uXm_m128i_srli_epi16 endp

_uXm_m128i_srli_epi32_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			0
			ret
_uXm_m128i_srli_epi32_0 endp

_uXm_m128i_srli_epi32_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			1
			ret
_uXm_m128i_srli_epi32_1 endp

_uXm_m128i_srli_epi32_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			2
			ret
_uXm_m128i_srli_epi32_2 endp

_uXm_m128i_srli_epi32_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			3
			ret
_uXm_m128i_srli_epi32_3 endp

_uXm_m128i_srli_epi32_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			4
			ret
_uXm_m128i_srli_epi32_4 endp

_uXm_m128i_srli_epi32_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			5
			ret
_uXm_m128i_srli_epi32_5 endp

_uXm_m128i_srli_epi32_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			6
			ret
_uXm_m128i_srli_epi32_6 endp

_uXm_m128i_srli_epi32_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			7
			ret
_uXm_m128i_srli_epi32_7 endp

_uXm_m128i_srli_epi32_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			8
			ret
_uXm_m128i_srli_epi32_8 endp

_uXm_m128i_srli_epi32_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			9
			ret
_uXm_m128i_srli_epi32_9 endp

_uXm_m128i_srli_epi32_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			10
			ret
_uXm_m128i_srli_epi32_10 endp

_uXm_m128i_srli_epi32_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			11
			ret
_uXm_m128i_srli_epi32_11 endp

_uXm_m128i_srli_epi32_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			12
			ret
_uXm_m128i_srli_epi32_12 endp

_uXm_m128i_srli_epi32_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			13
			ret
_uXm_m128i_srli_epi32_13 endp

_uXm_m128i_srli_epi32_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			14
			ret
_uXm_m128i_srli_epi32_14 endp

_uXm_m128i_srli_epi32_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			15
			ret
_uXm_m128i_srli_epi32_15 endp

_uXm_m128i_srli_epi32_16 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			16
			ret
_uXm_m128i_srli_epi32_16 endp

_uXm_m128i_srli_epi32_17 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			17
			ret
_uXm_m128i_srli_epi32_17 endp

_uXm_m128i_srli_epi32_18 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			18
			ret
_uXm_m128i_srli_epi32_18 endp

_uXm_m128i_srli_epi32_19 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			19
			ret
_uXm_m128i_srli_epi32_19 endp

_uXm_m128i_srli_epi32_20 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			20
			ret
_uXm_m128i_srli_epi32_20 endp

_uXm_m128i_srli_epi32_21 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			21
			ret
_uXm_m128i_srli_epi32_21 endp

_uXm_m128i_srli_epi32_22 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			22
			ret
_uXm_m128i_srli_epi32_22 endp

_uXm_m128i_srli_epi32_23 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			23
			ret
_uXm_m128i_srli_epi32_23 endp

_uXm_m128i_srli_epi32_24 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			24
			ret
_uXm_m128i_srli_epi32_24 endp

_uXm_m128i_srli_epi32_25 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			25
			ret
_uXm_m128i_srli_epi32_25 endp

_uXm_m128i_srli_epi32_26 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			26
			ret
_uXm_m128i_srli_epi32_26 endp

_uXm_m128i_srli_epi32_27 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			27
			ret
_uXm_m128i_srli_epi32_27 endp

_uXm_m128i_srli_epi32_28 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			28
			ret
_uXm_m128i_srli_epi32_28 endp

_uXm_m128i_srli_epi32_29 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			29
			ret
_uXm_m128i_srli_epi32_29 endp

_uXm_m128i_srli_epi32_30 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			30
			ret
_uXm_m128i_srli_epi32_30 endp

_uXm_m128i_srli_epi32_31 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrld			xmm0,			31
			ret
_uXm_m128i_srli_epi32_31 endp

_uXm_m128i_srli_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128isrliepi32jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128isrliepi32jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128isrliepi32_0 label size_t
			psrld			xmm0,			0
			ret
		m128isrliepi32_1 label size_t
			psrld			xmm0,			1
			ret
		m128isrliepi32_2 label size_t
			psrld			xmm0,			2
			ret
		m128isrliepi32_3 label size_t
			psrld			xmm0,			3
			ret
		m128isrliepi32_4 label size_t
			psrld			xmm0,			4
			ret
		m128isrliepi32_5 label size_t
			psrld			xmm0,			5
			ret
		m128isrliepi32_6 label size_t
			psrld			xmm0,			6
			ret
		m128isrliepi32_7 label size_t
			psrld			xmm0,			7
			ret
		m128isrliepi32_8 label size_t
			psrld			xmm0,			8
			ret
		m128isrliepi32_9 label size_t
			psrld			xmm0,			9
			ret
		m128isrliepi32_10 label size_t
			psrld			xmm0,			10
			ret
		m128isrliepi32_11 label size_t
			psrld			xmm0,			11
			ret
		m128isrliepi32_12 label size_t
			psrld			xmm0,			12
			ret
		m128isrliepi32_13 label size_t
			psrld			xmm0,			13
			ret
		m128isrliepi32_14 label size_t
			psrld			xmm0,			14
			ret
		m128isrliepi32_15 label size_t
			psrld			xmm0,			15
			ret
		m128isrliepi32_16 label size_t
			psrld			xmm0,			16
			ret
		m128isrliepi32_17 label size_t
			psrld			xmm0,			17
			ret
		m128isrliepi32_18 label size_t
			psrld			xmm0,			18
			ret
		m128isrliepi32_19 label size_t
			psrld			xmm0,			19
			ret
		m128isrliepi32_20 label size_t
			psrld			xmm0,			20
			ret
		m128isrliepi32_21 label size_t
			psrld			xmm0,			21
			ret
		m128isrliepi32_22 label size_t
			psrld			xmm0,			22
			ret
		m128isrliepi32_23 label size_t
			psrld			xmm0,			23
			ret
		m128isrliepi32_24 label size_t
			psrld			xmm0,			24
			ret
		m128isrliepi32_25 label size_t
			psrld			xmm0,			25
			ret
		m128isrliepi32_26 label size_t
			psrld			xmm0,			26
			ret
		m128isrliepi32_27 label size_t
			psrld			xmm0,			27
			ret
		m128isrliepi32_28 label size_t
			psrld			xmm0,			28
			ret
		m128isrliepi32_29 label size_t
			psrld			xmm0,			29
			ret
		m128isrliepi32_30 label size_t
			psrld			xmm0,			30
			ret
		m128isrliepi32_31 label size_t
			psrld			xmm0,			31
			ret
		;.endif

_uXm_m128i_srli_epi32 endp

_uXm_m128i_srli_epi64_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			0
			ret
_uXm_m128i_srli_epi64_0 endp

_uXm_m128i_srli_epi64_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			1
			ret
_uXm_m128i_srli_epi64_1 endp

_uXm_m128i_srli_epi64_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			2
			ret
_uXm_m128i_srli_epi64_2 endp

_uXm_m128i_srli_epi64_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			3
			ret
_uXm_m128i_srli_epi64_3 endp

_uXm_m128i_srli_epi64_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			4
			ret
_uXm_m128i_srli_epi64_4 endp

_uXm_m128i_srli_epi64_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			5
			ret
_uXm_m128i_srli_epi64_5 endp

_uXm_m128i_srli_epi64_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			6
			ret
_uXm_m128i_srli_epi64_6 endp

_uXm_m128i_srli_epi64_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			7
			ret
_uXm_m128i_srli_epi64_7 endp

_uXm_m128i_srli_epi64_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			8
			ret
_uXm_m128i_srli_epi64_8 endp

_uXm_m128i_srli_epi64_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			9
			ret
_uXm_m128i_srli_epi64_9 endp

_uXm_m128i_srli_epi64_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			10
			ret
_uXm_m128i_srli_epi64_10 endp

_uXm_m128i_srli_epi64_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			11
			ret
_uXm_m128i_srli_epi64_11 endp

_uXm_m128i_srli_epi64_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			12
			ret
_uXm_m128i_srli_epi64_12 endp

_uXm_m128i_srli_epi64_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			13
			ret
_uXm_m128i_srli_epi64_13 endp

_uXm_m128i_srli_epi64_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			14
			ret
_uXm_m128i_srli_epi64_14 endp

_uXm_m128i_srli_epi64_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			15
			ret
_uXm_m128i_srli_epi64_15 endp

_uXm_m128i_srli_epi64_16 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			16
			ret
_uXm_m128i_srli_epi64_16 endp

_uXm_m128i_srli_epi64_17 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			17
			ret
_uXm_m128i_srli_epi64_17 endp

_uXm_m128i_srli_epi64_18 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			18
			ret
_uXm_m128i_srli_epi64_18 endp

_uXm_m128i_srli_epi64_19 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			19
			ret
_uXm_m128i_srli_epi64_19 endp

_uXm_m128i_srli_epi64_20 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			20
			ret
_uXm_m128i_srli_epi64_20 endp

_uXm_m128i_srli_epi64_21 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			21
			ret
_uXm_m128i_srli_epi64_21 endp

_uXm_m128i_srli_epi64_22 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			22
			ret
_uXm_m128i_srli_epi64_22 endp

_uXm_m128i_srli_epi64_23 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			23
			ret
_uXm_m128i_srli_epi64_23 endp

_uXm_m128i_srli_epi64_24 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			24
			ret
_uXm_m128i_srli_epi64_24 endp

_uXm_m128i_srli_epi64_25 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			25
			ret
_uXm_m128i_srli_epi64_25 endp

_uXm_m128i_srli_epi64_26 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			26
			ret
_uXm_m128i_srli_epi64_26 endp

_uXm_m128i_srli_epi64_27 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			27
			ret
_uXm_m128i_srli_epi64_27 endp

_uXm_m128i_srli_epi64_28 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			28
			ret
_uXm_m128i_srli_epi64_28 endp

_uXm_m128i_srli_epi64_29 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			29
			ret
_uXm_m128i_srli_epi64_29 endp

_uXm_m128i_srli_epi64_30 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			30
			ret
_uXm_m128i_srli_epi64_30 endp

_uXm_m128i_srli_epi64_31 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			31
			ret
_uXm_m128i_srli_epi64_31 endp

_uXm_m128i_srli_epi64_32 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			32
			ret
_uXm_m128i_srli_epi64_32 endp

_uXm_m128i_srli_epi64_33 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			33
			ret
_uXm_m128i_srli_epi64_33 endp

_uXm_m128i_srli_epi64_34 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			34
			ret
_uXm_m128i_srli_epi64_34 endp

_uXm_m128i_srli_epi64_35 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			35
			ret
_uXm_m128i_srli_epi64_35 endp

_uXm_m128i_srli_epi64_36 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			36
			ret
_uXm_m128i_srli_epi64_36 endp

_uXm_m128i_srli_epi64_37 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			37
			ret
_uXm_m128i_srli_epi64_37 endp

_uXm_m128i_srli_epi64_38 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			38
			ret
_uXm_m128i_srli_epi64_38 endp

_uXm_m128i_srli_epi64_39 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			39
			ret
_uXm_m128i_srli_epi64_39 endp

_uXm_m128i_srli_epi64_40 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			40
			ret
_uXm_m128i_srli_epi64_40 endp

_uXm_m128i_srli_epi64_41 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			41
			ret
_uXm_m128i_srli_epi64_41 endp

_uXm_m128i_srli_epi64_42 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			42
			ret
_uXm_m128i_srli_epi64_42 endp

_uXm_m128i_srli_epi64_43 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			43
			ret
_uXm_m128i_srli_epi64_43 endp

_uXm_m128i_srli_epi64_44 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			44
			ret
_uXm_m128i_srli_epi64_44 endp

_uXm_m128i_srli_epi64_45 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			45
			ret
_uXm_m128i_srli_epi64_45 endp

_uXm_m128i_srli_epi64_46 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			46
			ret
_uXm_m128i_srli_epi64_46 endp

_uXm_m128i_srli_epi64_47 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			47
			ret
_uXm_m128i_srli_epi64_47 endp

_uXm_m128i_srli_epi64_48 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			48
			ret
_uXm_m128i_srli_epi64_48 endp

_uXm_m128i_srli_epi64_49 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			49
			ret
_uXm_m128i_srli_epi64_49 endp

_uXm_m128i_srli_epi64_50 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			50
			ret
_uXm_m128i_srli_epi64_50 endp

_uXm_m128i_srli_epi64_51 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			51
			ret
_uXm_m128i_srli_epi64_51 endp

_uXm_m128i_srli_epi64_52 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			52
			ret
_uXm_m128i_srli_epi64_52 endp

_uXm_m128i_srli_epi64_53 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			53
			ret
_uXm_m128i_srli_epi64_53 endp

_uXm_m128i_srli_epi64_54 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			54
			ret
_uXm_m128i_srli_epi64_54 endp

_uXm_m128i_srli_epi64_55 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			55
			ret
_uXm_m128i_srli_epi64_55 endp

_uXm_m128i_srli_epi64_56 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			56
			ret
_uXm_m128i_srli_epi64_56 endp

_uXm_m128i_srli_epi64_57 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			57
			ret
_uXm_m128i_srli_epi64_57 endp

_uXm_m128i_srli_epi64_58 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			58
			ret
_uXm_m128i_srli_epi64_58 endp

_uXm_m128i_srli_epi64_59 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			59
			ret
_uXm_m128i_srli_epi64_59 endp

_uXm_m128i_srli_epi64_60 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			60
			ret
_uXm_m128i_srli_epi64_60 endp

_uXm_m128i_srli_epi64_61 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			61
			ret
_uXm_m128i_srli_epi64_61 endp

_uXm_m128i_srli_epi64_62 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			62
			ret
_uXm_m128i_srli_epi64_62 endp

_uXm_m128i_srli_epi64_63 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
			psrlq			xmm0,			63
			ret
_uXm_m128i_srli_epi64_63 endp

_uXm_m128i_srli_epi64 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128isrliepi64jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128isrliepi64jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128isrliepi64_0 label size_t
			psrlq			xmm0,			0
			ret
		m128isrliepi64_1 label size_t
			psrlq			xmm0,			1
			ret
		m128isrliepi64_2 label size_t
			psrlq			xmm0,			2
			ret
		m128isrliepi64_3 label size_t
			psrlq			xmm0,			3
			ret
		m128isrliepi64_4 label size_t
			psrlq			xmm0,			4
			ret
		m128isrliepi64_5 label size_t
			psrlq			xmm0,			5
			ret
		m128isrliepi64_6 label size_t
			psrlq			xmm0,			6
			ret
		m128isrliepi64_7 label size_t
			psrlq			xmm0,			7
			ret
		m128isrliepi64_8 label size_t
			psrlq			xmm0,			8
			ret
		m128isrliepi64_9 label size_t
			psrlq			xmm0,			9
			ret
		m128isrliepi64_10 label size_t
			psrlq			xmm0,			10
			ret
		m128isrliepi64_11 label size_t
			psrlq			xmm0,			11
			ret
		m128isrliepi64_12 label size_t
			psrlq			xmm0,			12
			ret
		m128isrliepi64_13 label size_t
			psrlq			xmm0,			13
			ret
		m128isrliepi64_14 label size_t
			psrlq			xmm0,			14
			ret
		m128isrliepi64_15 label size_t
			psrlq			xmm0,			15
			ret
		m128isrliepi64_16 label size_t
			psrlq			xmm0,			16
			ret
		m128isrliepi64_17 label size_t
			psrlq			xmm0,			17
			ret
		m128isrliepi64_18 label size_t
			psrlq			xmm0,			18
			ret
		m128isrliepi64_19 label size_t
			psrlq			xmm0,			19
			ret
		m128isrliepi64_20 label size_t
			psrlq			xmm0,			20
			ret
		m128isrliepi64_21 label size_t
			psrlq			xmm0,			21
			ret
		m128isrliepi64_22 label size_t
			psrlq			xmm0,			22
			ret
		m128isrliepi64_23 label size_t
			psrlq			xmm0,			23
			ret
		m128isrliepi64_24 label size_t
			psrlq			xmm0,			24
			ret
		m128isrliepi64_25 label size_t
			psrlq			xmm0,			25
			ret
		m128isrliepi64_26 label size_t
			psrlq			xmm0,			26
			ret
		m128isrliepi64_27 label size_t
			psrlq			xmm0,			27
			ret
		m128isrliepi64_28 label size_t
			psrlq			xmm0,			28
			ret
		m128isrliepi64_29 label size_t
			psrlq			xmm0,			29
			ret
		m128isrliepi64_30 label size_t
			psrlq			xmm0,			30
			ret
		m128isrliepi64_31 label size_t
			psrlq			xmm0,			31
			ret
		m128isrliepi64_32 label size_t
			psrlq			xmm0,			32
			ret
		m128isrliepi64_33 label size_t
			psrlq			xmm0,			33
			ret
		m128isrliepi64_34 label size_t
			psrlq			xmm0,			34
			ret
		m128isrliepi64_35 label size_t
			psrlq			xmm0,			35
			ret
		m128isrliepi64_36 label size_t
			psrlq			xmm0,			36
			ret
		m128isrliepi64_37 label size_t
			psrlq			xmm0,			37
			ret
		m128isrliepi64_38 label size_t
			psrlq			xmm0,			38
			ret
		m128isrliepi64_39 label size_t
			psrlq			xmm0,			39
			ret
		m128isrliepi64_40 label size_t
			psrlq			xmm0,			40
			ret
		m128isrliepi64_41 label size_t
			psrlq			xmm0,			41
			ret
		m128isrliepi64_42 label size_t
			psrlq			xmm0,			42
			ret
		m128isrliepi64_43 label size_t
			psrlq			xmm0,			43
			ret
		m128isrliepi64_44 label size_t
			psrlq			xmm0,			44
			ret
		m128isrliepi64_45 label size_t
			psrlq			xmm0,			45
			ret
		m128isrliepi64_46 label size_t
			psrlq			xmm0,			46
			ret
		m128isrliepi64_47 label size_t
			psrlq			xmm0,			47
			ret
		m128isrliepi64_48 label size_t
			psrlq			xmm0,			48
			ret
		m128isrliepi64_49 label size_t
			psrlq			xmm0,			49
			ret
		m128isrliepi64_50 label size_t
			psrlq			xmm0,			50
			ret
		m128isrliepi64_51 label size_t
			psrlq			xmm0,			51
			ret
		m128isrliepi64_52 label size_t
			psrlq			xmm0,			52
			ret
		m128isrliepi64_53 label size_t
			psrlq			xmm0,			53
			ret
		m128isrliepi64_54 label size_t
			psrlq			xmm0,			54
			ret
		m128isrliepi64_55 label size_t
			psrlq			xmm0,			55
			ret
		m128isrliepi64_56 label size_t
			psrlq			xmm0,			56
			ret
		m128isrliepi64_57 label size_t
			psrlq			xmm0,			57
			ret
		m128isrliepi64_58 label size_t
			psrlq			xmm0,			58
			ret
		m128isrliepi64_59 label size_t
			psrlq			xmm0,			59
			ret
		m128isrliepi64_60 label size_t
			psrlq			xmm0,			60
			ret
		m128isrliepi64_61 label size_t
			psrlq			xmm0,			61
			ret
		m128isrliepi64_62 label size_t
			psrlq			xmm0,			62
			ret
		m128isrliepi64_63 label size_t
			psrlq			xmm0,			63
			ret
		;.endif

_uXm_m128i_srli_epi64 endp

	end
