
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.code

;******************
; Proto
;******************
uXm_mm_slli_si128_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_si128 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

uXm_mm_slli_epi16_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

uXm_mm_slli_epi32_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_16 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_17 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_18 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_19 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_20 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_21 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_22 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_23 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_24 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_25 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_26 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_27 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_28 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_29 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_30 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32_31 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

uXm_mm_slli_epi64_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_16 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_17 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_18 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_19 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_20 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_21 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_22 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_23 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_24 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_25 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_26 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_27 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_28 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_29 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_30 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_31 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_32 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_33 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_34 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_35 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_36 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_36 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_38 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_39 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_40 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_41 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_42 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_43 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_44 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_45 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_46 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_47 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_48 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_49 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_50 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_51 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_52 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_53 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_54 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_55 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_56 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_57 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_58 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_59 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_60 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_61 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_62 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64_63 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_slli_epi64 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

uXm_mm_srai_epi16_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

uXm_mm_srai_epi32_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_16 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_17 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_18 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_19 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_20 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_21 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_22 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_23 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_24 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_25 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_26 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_27 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_28 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_29 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_30 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32_31 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srai_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

uXm_mm_srli_si128_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_si128 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

uXm_mm_srli_epi16_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi16 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

uXm_mm_srli_epi32_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_16 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_17 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_18 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_19 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_20 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_21 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_22 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_23 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_24 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_25 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_26 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_27 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_28 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_29 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_30 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32_31 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi32 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

uXm_mm_srli_epi64_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_8 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_9 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_10 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_11 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_12 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_13 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_14 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_15 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_16 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_17 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_18 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_19 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_20 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_21 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_22 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_23 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_24 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_25 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_26 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_27 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_28 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_29 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_30 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_31 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_32 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_33 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_34 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_35 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_36 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_36 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_38 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_39 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_40 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_41 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_42 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_43 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_44 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_45 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_46 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_47 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_48 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_49 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_50 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_51 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_52 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_53 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_54 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_55 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_56 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_57 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_58 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_59 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_60 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_61 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_62 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64_63 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword
uXm_mm_srli_epi64 proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword

;******************
; Proc
;******************
			align 16
uXm_mm_slli_si128_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			0
				ret
uXm_mm_slli_si128_0 endp

			align 16
uXm_mm_slli_si128_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			1
				ret
uXm_mm_slli_si128_1 endp

			align 16
uXm_mm_slli_si128_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			2
				ret
uXm_mm_slli_si128_2 endp

			align 16
uXm_mm_slli_si128_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			3
				ret
uXm_mm_slli_si128_3 endp

			align 16
uXm_mm_slli_si128_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			4
				ret
uXm_mm_slli_si128_4 endp

			align 16
uXm_mm_slli_si128_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			5
				ret
uXm_mm_slli_si128_5 endp

			align 16
uXm_mm_slli_si128_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			6
				ret
uXm_mm_slli_si128_6 endp

			align 16
uXm_mm_slli_si128_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			7
				ret
uXm_mm_slli_si128_7 endp

			align 16
uXm_mm_slli_si128_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			8
				ret
uXm_mm_slli_si128_8 endp

			align 16
uXm_mm_slli_si128_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			9
				ret
uXm_mm_slli_si128_9 endp

			align 16
uXm_mm_slli_si128_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			10
				ret
uXm_mm_slli_si128_10 endp

			align 16
uXm_mm_slli_si128_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			11
				ret
uXm_mm_slli_si128_11 endp

			align 16
uXm_mm_slli_si128_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			12
				ret
uXm_mm_slli_si128_12 endp

			align 16
uXm_mm_slli_si128_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			13
				ret
uXm_mm_slli_si128_13 endp

			align 16
uXm_mm_slli_si128_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			14
				ret
uXm_mm_slli_si128_14 endp

			align 16
uXm_mm_slli_si128_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslldq				xmm0,			15
				ret
uXm_mm_slli_si128_15 endp

			align 16
uXm_mm_slli_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		ifndef __X64__
		.if(dparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmsllisi128jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmsllisi128jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
		.if(rparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[mmsllisi128jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmsllisi128jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmsllisi128word		textequ		<dword>
			mmsllisi128iword		textequ		<dd>
		else
			mmsllisi128word		textequ		<qword>
			mmsllisi128iword		textequ		<dq>
		endif
		
		mmsllisi128jmptable label mmsllisi128word
			mmsllisi128iword offset mmsllisi128_0, offset mmsllisi128_1, offset mmsllisi128_2, offset mmsllisi128_3, offset mmsllisi128_4, offset mmsllisi128_5, offset mmsllisi128_6, offset mmsllisi128_7, offset mmsllisi128_8, offset mmsllisi128_9, offset mmsllisi128_10, offset mmsllisi128_11, offset mmsllisi128_12, offset mmsllisi128_13, offset mmsllisi128_14, offset mmsllisi128_15			
		
			mmsllisi128_0 label mmsllisi128word
				jmp		uXm_mm_slli_si128_0
			mmsllisi128_1 label mmsllisi128word
				jmp		uXm_mm_slli_si128_1
			mmsllisi128_2 label mmsllisi128word
				jmp		uXm_mm_slli_si128_2
			mmsllisi128_3 label mmsllisi128word
				jmp		uXm_mm_slli_si128_3
			mmsllisi128_4 label mmsllisi128word
				jmp		uXm_mm_slli_si128_4
			mmsllisi128_5 label mmsllisi128word
				jmp		uXm_mm_slli_si128_5
			mmsllisi128_6 label mmsllisi128word
				jmp		uXm_mm_slli_si128_6
			mmsllisi128_7 label mmsllisi128word
				jmp		uXm_mm_slli_si128_7
			mmsllisi128_8 label mmsllisi128word
				jmp		uXm_mm_slli_si128_8
			mmsllisi128_9 label mmsllisi128word
				jmp		uXm_mm_slli_si128_9
			mmsllisi128_10 label mmsllisi128word
				jmp		uXm_mm_slli_si128_10
			mmsllisi128_11 label mmsllisi128word
				jmp		uXm_mm_slli_si128_11
			mmsllisi128_12 label mmsllisi128word
				jmp		uXm_mm_slli_si128_12
			mmsllisi128_13 label mmsllisi128word
				jmp		uXm_mm_slli_si128_13
			mmsllisi128_14 label mmsllisi128word
				jmp		uXm_mm_slli_si128_14
			mmsllisi128_15 label mmsllisi128word
				jmp		uXm_mm_slli_si128_15

uXm_mm_slli_si128 endp

			align 16
uXm_mm_slli_epi16_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			0
				ret
uXm_mm_slli_epi16_0 endp

			align 16
uXm_mm_slli_epi16_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			1
				ret
uXm_mm_slli_epi16_1 endp

			align 16
uXm_mm_slli_epi16_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			2
				ret
uXm_mm_slli_epi16_2 endp

			align 16
uXm_mm_slli_epi16_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			3
				ret
uXm_mm_slli_epi16_3 endp

			align 16
uXm_mm_slli_epi16_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			4
				ret
uXm_mm_slli_epi16_4 endp

			align 16
uXm_mm_slli_epi16_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			5
				ret
uXm_mm_slli_epi16_5 endp

			align 16
uXm_mm_slli_epi16_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			6
				ret
uXm_mm_slli_epi16_6 endp

			align 16
uXm_mm_slli_epi16_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			7
				ret
uXm_mm_slli_epi16_7 endp

			align 16
uXm_mm_slli_epi16_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			8
				ret
uXm_mm_slli_epi16_8 endp

			align 16
uXm_mm_slli_epi16_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			9
				ret
uXm_mm_slli_epi16_9 endp

			align 16
uXm_mm_slli_epi16_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			10
				ret
uXm_mm_slli_epi16_10 endp

			align 16
uXm_mm_slli_epi16_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			11
				ret
uXm_mm_slli_epi16_11 endp

			align 16
uXm_mm_slli_epi16_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			12
				ret
uXm_mm_slli_epi16_12 endp

			align 16
uXm_mm_slli_epi16_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			13
				ret
uXm_mm_slli_epi16_13 endp

			align 16
uXm_mm_slli_epi16_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			14
				ret
uXm_mm_slli_epi16_14 endp

			align 16
uXm_mm_slli_epi16_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllw				xmm0,			15
				ret
uXm_mm_slli_epi16_15 endp

			align 16
uXm_mm_slli_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		ifndef __X64__
		.if(dparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmslliepi16jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmslliepi16jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
		.if(rparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[mmslliepi16jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmslliepi16jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmslliepi16word		textequ		<dword>
			mmslliepi16iword		textequ		<dd>
		else
			mmslliepi16word		textequ		<qword>
			mmslliepi16iword		textequ		<dq>
		endif
		
		mmslliepi16jmptable label mmslliepi16word
			mmslliepi16iword offset mmslliepi16_0, offset mmslliepi16_1, offset mmslliepi16_2, offset mmslliepi16_3, offset mmslliepi16_4, offset mmslliepi16_5, offset mmslliepi16_6, offset mmslliepi16_7, offset mmslliepi16_8, offset mmslliepi16_9, offset mmslliepi16_10, offset mmslliepi16_11, offset mmslliepi16_12, offset mmslliepi16_13, offset mmslliepi16_14, offset mmslliepi16_15			
		
			mmslliepi16_0 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_0
			mmslliepi16_1 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_1
			mmslliepi16_2 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_2
			mmslliepi16_3 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_3
			mmslliepi16_4 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_4
			mmslliepi16_5 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_5
			mmslliepi16_6 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_6
			mmslliepi16_7 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_7
			mmslliepi16_8 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_8
			mmslliepi16_9 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_9
			mmslliepi16_10 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_10
			mmslliepi16_11 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_11
			mmslliepi16_12 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_12
			mmslliepi16_13 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_13
			mmslliepi16_14 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_14
			mmslliepi16_15 label mmslliepi16word
				jmp		uXm_mm_slli_epi16_15

uXm_mm_slli_epi16 endp

			align 16
uXm_mm_slli_epi32_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			0
				ret
uXm_mm_slli_epi32_0 endp

			align 16
uXm_mm_slli_epi32_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			1
				ret
uXm_mm_slli_epi32_1 endp

			align 16
uXm_mm_slli_epi32_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			2
				ret
uXm_mm_slli_epi32_2 endp

			align 16
uXm_mm_slli_epi32_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			3
				ret
uXm_mm_slli_epi32_3 endp

			align 16
uXm_mm_slli_epi32_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			4
				ret
uXm_mm_slli_epi32_4 endp

			align 16
uXm_mm_slli_epi32_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			5
				ret
uXm_mm_slli_epi32_5 endp

			align 16
uXm_mm_slli_epi32_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			6
				ret
uXm_mm_slli_epi32_6 endp

			align 16
uXm_mm_slli_epi32_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			7
				ret
uXm_mm_slli_epi32_7 endp

			align 16
uXm_mm_slli_epi32_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			8
				ret
uXm_mm_slli_epi32_8 endp

			align 16
uXm_mm_slli_epi32_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			9
				ret
uXm_mm_slli_epi32_9 endp

			align 16
uXm_mm_slli_epi32_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			10
				ret
uXm_mm_slli_epi32_10 endp

			align 16
uXm_mm_slli_epi32_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			11
				ret
uXm_mm_slli_epi32_11 endp

			align 16
uXm_mm_slli_epi32_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			12
				ret
uXm_mm_slli_epi32_12 endp

			align 16
uXm_mm_slli_epi32_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			13
				ret
uXm_mm_slli_epi32_13 endp

			align 16
uXm_mm_slli_epi32_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			14
				ret
uXm_mm_slli_epi32_14 endp

			align 16
uXm_mm_slli_epi32_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			15
				ret
uXm_mm_slli_epi32_15 endp

			align 16
uXm_mm_slli_epi32_16 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			16
				ret
uXm_mm_slli_epi32_16 endp

			align 16
uXm_mm_slli_epi32_17 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			17
				ret
uXm_mm_slli_epi32_17 endp

			align 16
uXm_mm_slli_epi32_18 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			18
				ret
uXm_mm_slli_epi32_18 endp

			align 16
uXm_mm_slli_epi32_19 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			19
				ret
uXm_mm_slli_epi32_19 endp

			align 16
uXm_mm_slli_epi32_20 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			20
				ret
uXm_mm_slli_epi32_20 endp

			align 16
uXm_mm_slli_epi32_21 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			21
				ret
uXm_mm_slli_epi32_21 endp

			align 16
uXm_mm_slli_epi32_22 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			22
				ret
uXm_mm_slli_epi32_22 endp

			align 16
uXm_mm_slli_epi32_23 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			23
				ret
uXm_mm_slli_epi32_23 endp

			align 16
uXm_mm_slli_epi32_24 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			24
				ret
uXm_mm_slli_epi32_24 endp

			align 16
uXm_mm_slli_epi32_25 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			25
				ret
uXm_mm_slli_epi32_25 endp

			align 16
uXm_mm_slli_epi32_26 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			26
				ret
uXm_mm_slli_epi32_26 endp

			align 16
uXm_mm_slli_epi32_27 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			27
				ret
uXm_mm_slli_epi32_27 endp

			align 16
uXm_mm_slli_epi32_28 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			28
				ret
uXm_mm_slli_epi32_28 endp

			align 16
uXm_mm_slli_epi32_29 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			29
				ret
uXm_mm_slli_epi32_29 endp

			align 16
uXm_mm_slli_epi32_30 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			30
				ret
uXm_mm_slli_epi32_30 endp

			align 16
uXm_mm_slli_epi32_31 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				pslld				xmm0,			31
				ret
uXm_mm_slli_epi32_31 endp

			align 16
uXm_mm_slli_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		ifndef __X64__
		.if(dparam2 > 31)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmslliepi32jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmslliepi32jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
		.if(rparam2 > 31)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[mmslliepi32jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmslliepi32jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmslliepi32word		textequ		<dword>
			mmslliepi32iword		textequ		<dd>
		else
			mmslliepi32word		textequ		<qword>
			mmslliepi32iword		textequ		<dq>
		endif
		
		mmslliepi32jmptable label mmslliepi32word
			mmslliepi32iword offset mmslliepi32_0, offset mmslliepi32_1, offset mmslliepi32_2, offset mmslliepi32_3, offset mmslliepi32_4, offset mmslliepi32_5, offset mmslliepi32_6, offset mmslliepi32_7, offset mmslliepi32_8, offset mmslliepi32_9, offset mmslliepi32_10, offset mmslliepi32_11, offset mmslliepi32_12, offset mmslliepi32_13, offset mmslliepi32_14, offset mmslliepi32_15, offset mmslliepi32_16, offset mmslliepi32_17, offset mmslliepi32_18, offset mmslliepi32_19, offset mmslliepi32_20, offset mmslliepi32_21, offset mmslliepi32_22, offset mmslliepi32_23, offset mmslliepi32_24, offset mmslliepi32_25, offset mmslliepi32_26, offset mmslliepi32_27, offset mmslliepi32_28, offset mmslliepi32_29, offset mmslliepi32_30, offset mmslliepi32_31
		
			mmslliepi32_0 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_0
			mmslliepi32_1 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_1
			mmslliepi32_2 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_2
			mmslliepi32_3 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_3
			mmslliepi32_4 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_4
			mmslliepi32_5 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_5
			mmslliepi32_6 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_6
			mmslliepi32_7 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_7
			mmslliepi32_8 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_8
			mmslliepi32_9 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_9
			mmslliepi32_10 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_10
			mmslliepi32_11 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_11
			mmslliepi32_12 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_12
			mmslliepi32_13 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_13
			mmslliepi32_14 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_14
			mmslliepi32_15 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_15
			mmslliepi32_16 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_16
			mmslliepi32_17 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_17
			mmslliepi32_18 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_18
			mmslliepi32_19 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_19
			mmslliepi32_20 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_20
			mmslliepi32_21 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_21
			mmslliepi32_22 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_22
			mmslliepi32_23 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_23
			mmslliepi32_24 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_24
			mmslliepi32_25 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_25
			mmslliepi32_26 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_26
			mmslliepi32_27 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_27
			mmslliepi32_28 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_28
			mmslliepi32_29 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_29
			mmslliepi32_30 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_30
			mmslliepi32_31 label mmslliepi32word
				jmp		uXm_mm_slli_epi32_31

uXm_mm_slli_epi32 endp

			align 16
uXm_mm_slli_epi64_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			0
				ret
uXm_mm_slli_epi64_0 endp

			align 16
uXm_mm_slli_epi64_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			1
				ret
uXm_mm_slli_epi64_1 endp

			align 16
uXm_mm_slli_epi64_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			2
				ret
uXm_mm_slli_epi64_2 endp

			align 16
uXm_mm_slli_epi64_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			3
				ret
uXm_mm_slli_epi64_3 endp

			align 16
uXm_mm_slli_epi64_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			4
				ret
uXm_mm_slli_epi64_4 endp

			align 16
uXm_mm_slli_epi64_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			5
				ret
uXm_mm_slli_epi64_5 endp

			align 16
uXm_mm_slli_epi64_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			6
				ret
uXm_mm_slli_epi64_6 endp

			align 16
uXm_mm_slli_epi64_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			7
				ret
uXm_mm_slli_epi64_7 endp

			align 16
uXm_mm_slli_epi64_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			8
				ret
uXm_mm_slli_epi64_8 endp

			align 16
uXm_mm_slli_epi64_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			9
				ret
uXm_mm_slli_epi64_9 endp

			align 16
uXm_mm_slli_epi64_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			10
				ret
uXm_mm_slli_epi64_10 endp

			align 16
uXm_mm_slli_epi64_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			11
				ret
uXm_mm_slli_epi64_11 endp

			align 16
uXm_mm_slli_epi64_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			12
				ret
uXm_mm_slli_epi64_12 endp

			align 16
uXm_mm_slli_epi64_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			13
				ret
uXm_mm_slli_epi64_13 endp

			align 16
uXm_mm_slli_epi64_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			14
				ret
uXm_mm_slli_epi64_14 endp

			align 16
uXm_mm_slli_epi64_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			15
				ret
uXm_mm_slli_epi64_15 endp

			align 16
uXm_mm_slli_epi64_16 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			16
				ret
uXm_mm_slli_epi64_16 endp

			align 16
uXm_mm_slli_epi64_17 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			17
				ret
uXm_mm_slli_epi64_17 endp

			align 16
uXm_mm_slli_epi64_18 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			18
				ret
uXm_mm_slli_epi64_18 endp

			align 16
uXm_mm_slli_epi64_19 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			19
				ret
uXm_mm_slli_epi64_19 endp

			align 16
uXm_mm_slli_epi64_20 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			20
				ret
uXm_mm_slli_epi64_20 endp

			align 16
uXm_mm_slli_epi64_21 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			21
				ret
uXm_mm_slli_epi64_21 endp

			align 16
uXm_mm_slli_epi64_22 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			22
				ret
uXm_mm_slli_epi64_22 endp

			align 16
uXm_mm_slli_epi64_23 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			23
				ret
uXm_mm_slli_epi64_23 endp

			align 16
uXm_mm_slli_epi64_24 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			24
				ret
uXm_mm_slli_epi64_24 endp

			align 16
uXm_mm_slli_epi64_25 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			25
				ret
uXm_mm_slli_epi64_25 endp

			align 16
uXm_mm_slli_epi64_26 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			26
				ret
uXm_mm_slli_epi64_26 endp

			align 16
uXm_mm_slli_epi64_27 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			27
				ret
uXm_mm_slli_epi64_27 endp

			align 16
uXm_mm_slli_epi64_28 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			28
				ret
uXm_mm_slli_epi64_28 endp

			align 16
uXm_mm_slli_epi64_29 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			29
				ret
uXm_mm_slli_epi64_29 endp

			align 16
uXm_mm_slli_epi64_30 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			30
				ret
uXm_mm_slli_epi64_30 endp

			align 16
uXm_mm_slli_epi64_31 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			31
				ret
uXm_mm_slli_epi64_31 endp

			align 16
uXm_mm_slli_epi64_32 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			32
				ret
uXm_mm_slli_epi64_32 endp

			align 16
uXm_mm_slli_epi64_33 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			33
				ret
uXm_mm_slli_epi64_33 endp

			align 16
uXm_mm_slli_epi64_34 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			34
				ret
uXm_mm_slli_epi64_34 endp

			align 16
uXm_mm_slli_epi64_35 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			35
				ret
uXm_mm_slli_epi64_35 endp

			align 16
uXm_mm_slli_epi64_36 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			36
				ret
uXm_mm_slli_epi64_36 endp

			align 16
uXm_mm_slli_epi64_37 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			37
				ret
uXm_mm_slli_epi64_37 endp

			align 16
uXm_mm_slli_epi64_38 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			38
				ret
uXm_mm_slli_epi64_38 endp

			align 16
uXm_mm_slli_epi64_39 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			39
				ret
uXm_mm_slli_epi64_39 endp

			align 16
uXm_mm_slli_epi64_40 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			40
				ret
uXm_mm_slli_epi64_40 endp

			align 16
uXm_mm_slli_epi64_41 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			41
				ret
uXm_mm_slli_epi64_41 endp

			align 16
uXm_mm_slli_epi64_42 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			42
				ret
uXm_mm_slli_epi64_42 endp

			align 16
uXm_mm_slli_epi64_43 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			43
				ret
uXm_mm_slli_epi64_43 endp

			align 16
uXm_mm_slli_epi64_44 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			44
				ret
uXm_mm_slli_epi64_44 endp

			align 16
uXm_mm_slli_epi64_45 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			45
				ret
uXm_mm_slli_epi64_45 endp

			align 16
uXm_mm_slli_epi64_46 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			46
				ret
uXm_mm_slli_epi64_46 endp

			align 16
uXm_mm_slli_epi64_47 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			47
				ret
uXm_mm_slli_epi64_47 endp

			align 16
uXm_mm_slli_epi64_48 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			48
				ret
uXm_mm_slli_epi64_48 endp

			align 16
uXm_mm_slli_epi64_49 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			49
				ret
uXm_mm_slli_epi64_49 endp

			align 16
uXm_mm_slli_epi64_50 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			50
				ret
uXm_mm_slli_epi64_50 endp

			align 16
uXm_mm_slli_epi64_51 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			51
				ret
uXm_mm_slli_epi64_51 endp

			align 16
uXm_mm_slli_epi64_52 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			52
				ret
uXm_mm_slli_epi64_52 endp

			align 16
uXm_mm_slli_epi64_53 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			53
				ret
uXm_mm_slli_epi64_53 endp

			align 16
uXm_mm_slli_epi64_54 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			54
				ret
uXm_mm_slli_epi64_54 endp

			align 16
uXm_mm_slli_epi64_55 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			55
				ret
uXm_mm_slli_epi64_55 endp

			align 16
uXm_mm_slli_epi64_56 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			56
				ret
uXm_mm_slli_epi64_56 endp

			align 16
uXm_mm_slli_epi64_57 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			57
				ret
uXm_mm_slli_epi64_57 endp

			align 16
uXm_mm_slli_epi64_58 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			58
				ret
uXm_mm_slli_epi64_58 endp

			align 16
uXm_mm_slli_epi64_59 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			59
				ret
uXm_mm_slli_epi64_59 endp

			align 16
uXm_mm_slli_epi64_60 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			60
				ret
uXm_mm_slli_epi64_60 endp

			align 16
uXm_mm_slli_epi64_61 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			61
				ret
uXm_mm_slli_epi64_61 endp

			align 16
uXm_mm_slli_epi64_62 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			62
				ret
uXm_mm_slli_epi64_62 endp

			align 16
uXm_mm_slli_epi64_63 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psllq				xmm0,			63
				ret
uXm_mm_slli_epi64_63 endp

			align 16
uXm_mm_slli_epi64 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		ifndef __X64__
		.if(dparam2 > 63)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmslliepi64jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmslliepi64jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
		.if(rparam2 > 63)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[mmslliepi64jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmslliepi64jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmslliepi64word		textequ		<dword>
			mmslliepi64iword		textequ		<dd>
		else
			mmslliepi64word		textequ		<qword>
			mmslliepi64iword		textequ		<dq>
		endif
		
		mmslliepi64jmptable label mmslliepi64word
			mmslliepi64iword offset mmslliepi64_0, offset mmslliepi64_1, offset mmslliepi64_2, offset mmslliepi64_3, offset mmslliepi64_4, offset mmslliepi64_5, offset mmslliepi64_6, offset mmslliepi64_7, offset mmslliepi64_8, offset mmslliepi64_9, offset mmslliepi64_10, offset mmslliepi64_11, offset mmslliepi64_12, offset mmslliepi64_13, offset mmslliepi64_14, offset mmslliepi64_15, offset mmslliepi64_16, offset mmslliepi64_17, offset mmslliepi64_18, offset mmslliepi64_19, offset mmslliepi64_20, offset mmslliepi64_21, offset mmslliepi64_22, offset mmslliepi64_23, offset mmslliepi64_24, offset mmslliepi64_25, offset mmslliepi64_26, offset mmslliepi64_27, offset mmslliepi64_28, offset mmslliepi64_29, offset mmslliepi64_30, offset mmslliepi64_31
			mmslliepi64iword offset mmslliepi64_32, offset mmslliepi64_33, offset mmslliepi64_34, offset mmslliepi64_35, offset mmslliepi64_36, offset mmslliepi64_37, offset mmslliepi64_38, offset mmslliepi64_39, offset mmslliepi64_40, offset mmslliepi64_41, offset mmslliepi64_42, offset mmslliepi64_43, offset mmslliepi64_44, offset mmslliepi64_45, offset mmslliepi64_46, offset mmslliepi64_47, offset mmslliepi64_48, offset mmslliepi64_49, offset mmslliepi64_50, offset mmslliepi64_51, offset mmslliepi64_52, offset mmslliepi64_53, offset mmslliepi64_54, offset mmslliepi64_55, offset mmslliepi64_56, offset mmslliepi64_57, offset mmslliepi64_58, offset mmslliepi64_59, offset mmslliepi64_60, offset mmslliepi64_61, offset mmslliepi64_62, offset mmslliepi64_63
		
			mmslliepi64_0 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_0
			mmslliepi64_1 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_1
			mmslliepi64_2 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_2
			mmslliepi64_3 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_3
			mmslliepi64_4 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_4
			mmslliepi64_5 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_5
			mmslliepi64_6 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_6
			mmslliepi64_7 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_7
			mmslliepi64_8 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_8
			mmslliepi64_9 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_9
			mmslliepi64_10 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_10
			mmslliepi64_11 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_11
			mmslliepi64_12 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_12
			mmslliepi64_13 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_13
			mmslliepi64_14 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_14
			mmslliepi64_15 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_15
			mmslliepi64_16 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_16
			mmslliepi64_17 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_17
			mmslliepi64_18 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_18
			mmslliepi64_19 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_19
			mmslliepi64_20 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_20
			mmslliepi64_21 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_21
			mmslliepi64_22 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_22
			mmslliepi64_23 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_23
			mmslliepi64_24 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_24
			mmslliepi64_25 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_25
			mmslliepi64_26 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_26
			mmslliepi64_27 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_27
			mmslliepi64_28 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_28
			mmslliepi64_29 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_29
			mmslliepi64_30 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_30
			mmslliepi64_31 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_31
			mmslliepi64_32 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_32
			mmslliepi64_33 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_33
			mmslliepi64_34 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_34
			mmslliepi64_35 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_35
			mmslliepi64_36 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_36
			mmslliepi64_37 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_37
			mmslliepi64_38 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_38
			mmslliepi64_39 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_39
			mmslliepi64_40 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_40
			mmslliepi64_41 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_41
			mmslliepi64_42 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_42
			mmslliepi64_43 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_43
			mmslliepi64_44 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_44
			mmslliepi64_45 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_45
			mmslliepi64_46 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_46
			mmslliepi64_47 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_47
			mmslliepi64_48 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_48
			mmslliepi64_49 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_49
			mmslliepi64_50 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_50
			mmslliepi64_51 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_51
			mmslliepi64_52 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_52
			mmslliepi64_53 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_53
			mmslliepi64_54 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_54
			mmslliepi64_55 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_55
			mmslliepi64_56 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_56
			mmslliepi64_57 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_57
			mmslliepi64_58 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_58
			mmslliepi64_59 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_59
			mmslliepi64_60 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_60
			mmslliepi64_61 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_61
			mmslliepi64_62 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_62
			mmslliepi64_63 label mmslliepi64word
				jmp		uXm_mm_slli_epi64_63

uXm_mm_slli_epi64 endp

			align 16
uXm_mm_srai_epi16_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			0
				ret
uXm_mm_srai_epi16_0 endp

			align 16
uXm_mm_srai_epi16_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			1
				ret
uXm_mm_srai_epi16_1 endp

			align 16
uXm_mm_srai_epi16_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			2
				ret
uXm_mm_srai_epi16_2 endp

			align 16
uXm_mm_srai_epi16_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			3
				ret
uXm_mm_srai_epi16_3 endp

			align 16
uXm_mm_srai_epi16_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			4
				ret
uXm_mm_srai_epi16_4 endp

			align 16
uXm_mm_srai_epi16_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			5
				ret
uXm_mm_srai_epi16_5 endp

			align 16
uXm_mm_srai_epi16_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			6
				ret
uXm_mm_srai_epi16_6 endp

			align 16
uXm_mm_srai_epi16_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			7
				ret
uXm_mm_srai_epi16_7 endp

			align 16
uXm_mm_srai_epi16_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			8
				ret
uXm_mm_srai_epi16_8 endp

			align 16
uXm_mm_srai_epi16_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			9
				ret
uXm_mm_srai_epi16_9 endp

			align 16
uXm_mm_srai_epi16_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			10
				ret
uXm_mm_srai_epi16_10 endp

			align 16
uXm_mm_srai_epi16_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			11
				ret
uXm_mm_srai_epi16_11 endp

			align 16
uXm_mm_srai_epi16_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			12
				ret
uXm_mm_srai_epi16_12 endp

			align 16
uXm_mm_srai_epi16_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			13
				ret
uXm_mm_srai_epi16_13 endp

			align 16
uXm_mm_srai_epi16_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			14
				ret
uXm_mm_srai_epi16_14 endp

			align 16
uXm_mm_srai_epi16_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psraw				xmm0,			15
				ret
uXm_mm_srai_epi16_15 endp

			align 16
uXm_mm_srai_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		ifndef __X64__
		.if(dparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmsraiepi16jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmsraiepi16jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
		.if(rparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[mmsraiepi16jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmsraiepi16jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmsraiepi16word		textequ		<dword>
			mmsraiepi16iword		textequ		<dd>
		else
			mmsraiepi16word		textequ		<qword>
			mmsraiepi16iword		textequ		<dq>
		endif
		
		mmsraiepi16jmptable label mmsraiepi16word
			mmsraiepi16iword offset mmsraiepi16_0, offset mmsraiepi16_1, offset mmsraiepi16_2, offset mmsraiepi16_3, offset mmsraiepi16_4, offset mmsraiepi16_5, offset mmsraiepi16_6, offset mmsraiepi16_7, offset mmsraiepi16_8, offset mmsraiepi16_9, offset mmsraiepi16_10, offset mmsraiepi16_11, offset mmsraiepi16_12, offset mmsraiepi16_13, offset mmsraiepi16_14, offset mmsraiepi16_15			
		
			mmsraiepi16_0 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_0
			mmsraiepi16_1 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_1
			mmsraiepi16_2 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_2
			mmsraiepi16_3 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_3
			mmsraiepi16_4 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_4
			mmsraiepi16_5 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_5
			mmsraiepi16_6 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_6
			mmsraiepi16_7 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_7
			mmsraiepi16_8 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_8
			mmsraiepi16_9 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_9
			mmsraiepi16_10 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_10
			mmsraiepi16_11 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_11
			mmsraiepi16_12 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_12
			mmsraiepi16_13 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_13
			mmsraiepi16_14 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_14
			mmsraiepi16_15 label mmsraiepi16word
				jmp		uXm_mm_srai_epi16_15

uXm_mm_srai_epi16 endp

			align 16
uXm_mm_srai_epi32_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			0
				ret
uXm_mm_srai_epi32_0 endp

			align 16
uXm_mm_srai_epi32_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			1
				ret
uXm_mm_srai_epi32_1 endp

			align 16
uXm_mm_srai_epi32_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			2
				ret
uXm_mm_srai_epi32_2 endp

			align 16
uXm_mm_srai_epi32_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			3
				ret
uXm_mm_srai_epi32_3 endp

			align 16
uXm_mm_srai_epi32_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			4
				ret
uXm_mm_srai_epi32_4 endp

			align 16
uXm_mm_srai_epi32_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			5
				ret
uXm_mm_srai_epi32_5 endp

			align 16
uXm_mm_srai_epi32_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			6
				ret
uXm_mm_srai_epi32_6 endp

			align 16
uXm_mm_srai_epi32_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			7
				ret
uXm_mm_srai_epi32_7 endp

			align 16
uXm_mm_srai_epi32_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			8
				ret
uXm_mm_srai_epi32_8 endp

			align 16
uXm_mm_srai_epi32_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			9
				ret
uXm_mm_srai_epi32_9 endp

			align 16
uXm_mm_srai_epi32_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			10
				ret
uXm_mm_srai_epi32_10 endp

			align 16
uXm_mm_srai_epi32_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			11
				ret
uXm_mm_srai_epi32_11 endp

			align 16
uXm_mm_srai_epi32_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			12
				ret
uXm_mm_srai_epi32_12 endp

			align 16
uXm_mm_srai_epi32_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			13
				ret
uXm_mm_srai_epi32_13 endp

			align 16
uXm_mm_srai_epi32_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			14
				ret
uXm_mm_srai_epi32_14 endp

			align 16
uXm_mm_srai_epi32_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			15
				ret
uXm_mm_srai_epi32_15 endp

			align 16
uXm_mm_srai_epi32_16 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			16
				ret
uXm_mm_srai_epi32_16 endp

			align 16
uXm_mm_srai_epi32_17 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			17
				ret
uXm_mm_srai_epi32_17 endp

			align 16
uXm_mm_srai_epi32_18 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			18
				ret
uXm_mm_srai_epi32_18 endp

			align 16
uXm_mm_srai_epi32_19 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			19
				ret
uXm_mm_srai_epi32_19 endp

			align 16
uXm_mm_srai_epi32_20 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			20
				ret
uXm_mm_srai_epi32_20 endp

			align 16
uXm_mm_srai_epi32_21 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			21
				ret
uXm_mm_srai_epi32_21 endp

			align 16
uXm_mm_srai_epi32_22 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			22
				ret
uXm_mm_srai_epi32_22 endp

			align 16
uXm_mm_srai_epi32_23 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			23
				ret
uXm_mm_srai_epi32_23 endp

			align 16
uXm_mm_srai_epi32_24 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			24
				ret
uXm_mm_srai_epi32_24 endp

			align 16
uXm_mm_srai_epi32_25 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			25
				ret
uXm_mm_srai_epi32_25 endp

			align 16
uXm_mm_srai_epi32_26 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			26
				ret
uXm_mm_srai_epi32_26 endp

			align 16
uXm_mm_srai_epi32_27 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			27
				ret
uXm_mm_srai_epi32_27 endp

			align 16
uXm_mm_srai_epi32_28 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			28
				ret
uXm_mm_srai_epi32_28 endp

			align 16
uXm_mm_srai_epi32_29 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			29
				ret
uXm_mm_srai_epi32_29 endp

			align 16
uXm_mm_srai_epi32_30 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			30
				ret
uXm_mm_srai_epi32_30 endp

			align 16
uXm_mm_srai_epi32_31 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrad				xmm0,			31
				ret
uXm_mm_srai_epi32_31 endp

			align 16
uXm_mm_srai_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		ifndef __X64__
		.if(dparam2 > 31)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmsraiepi32jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmsraiepi32jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
		.if(rparam2 > 31)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[mmsraiepi32jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmsraiepi32jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmsraiepi32word		textequ		<dword>
			mmsraiepi32iword		textequ		<dd>
		else
			mmsraiepi32word		textequ		<qword>
			mmsraiepi32iword		textequ		<dq>
		endif
		
		mmsraiepi32jmptable label mmsraiepi32word
			mmsraiepi32iword offset mmsraiepi32_0, offset mmsraiepi32_1, offset mmsraiepi32_2, offset mmsraiepi32_3, offset mmsraiepi32_4, offset mmsraiepi32_5, offset mmsraiepi32_6, offset mmsraiepi32_7, offset mmsraiepi32_8, offset mmsraiepi32_9, offset mmsraiepi32_10, offset mmsraiepi32_11, offset mmsraiepi32_12, offset mmsraiepi32_13, offset mmsraiepi32_14, offset mmsraiepi32_15, offset mmsraiepi32_16, offset mmsraiepi32_17, offset mmsraiepi32_18, offset mmsraiepi32_19, offset mmsraiepi32_20, offset mmsraiepi32_21, offset mmsraiepi32_22, offset mmsraiepi32_23, offset mmsraiepi32_24, offset mmsraiepi32_25, offset mmsraiepi32_26, offset mmsraiepi32_27, offset mmsraiepi32_28, offset mmsraiepi32_29, offset mmsraiepi32_30, offset mmsraiepi32_31
		
			mmsraiepi32_0 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_0
			mmsraiepi32_1 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_1
			mmsraiepi32_2 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_2
			mmsraiepi32_3 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_3
			mmsraiepi32_4 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_4
			mmsraiepi32_5 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_5
			mmsraiepi32_6 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_6
			mmsraiepi32_7 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_7
			mmsraiepi32_8 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_8
			mmsraiepi32_9 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_9
			mmsraiepi32_10 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_10
			mmsraiepi32_11 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_11
			mmsraiepi32_12 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_12
			mmsraiepi32_13 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_13
			mmsraiepi32_14 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_14
			mmsraiepi32_15 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_15
			mmsraiepi32_16 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_16
			mmsraiepi32_17 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_17
			mmsraiepi32_18 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_18
			mmsraiepi32_19 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_19
			mmsraiepi32_20 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_20
			mmsraiepi32_21 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_21
			mmsraiepi32_22 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_22
			mmsraiepi32_23 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_23
			mmsraiepi32_24 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_24
			mmsraiepi32_25 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_25
			mmsraiepi32_26 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_26
			mmsraiepi32_27 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_27
			mmsraiepi32_28 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_28
			mmsraiepi32_29 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_29
			mmsraiepi32_30 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_30
			mmsraiepi32_31 label mmsraiepi32word
				jmp		uXm_mm_srai_epi32_31

uXm_mm_srai_epi32 endp

			align 16
uXm_mm_srli_si128_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			0
				ret
uXm_mm_srli_si128_0 endp

			align 16
uXm_mm_srli_si128_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			1
				ret
uXm_mm_srli_si128_1 endp

			align 16
uXm_mm_srli_si128_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			2
				ret
uXm_mm_srli_si128_2 endp

			align 16
uXm_mm_srli_si128_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			3
				ret
uXm_mm_srli_si128_3 endp

			align 16
uXm_mm_srli_si128_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			4
				ret
uXm_mm_srli_si128_4 endp

			align 16
uXm_mm_srli_si128_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			5
				ret
uXm_mm_srli_si128_5 endp

			align 16
uXm_mm_srli_si128_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			6
				ret
uXm_mm_srli_si128_6 endp

			align 16
uXm_mm_srli_si128_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			7
				ret
uXm_mm_srli_si128_7 endp

			align 16
uXm_mm_srli_si128_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			8
				ret
uXm_mm_srli_si128_8 endp

			align 16
uXm_mm_srli_si128_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			9
				ret
uXm_mm_srli_si128_9 endp

			align 16
uXm_mm_srli_si128_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			10
				ret
uXm_mm_srli_si128_10 endp

			align 16
uXm_mm_srli_si128_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			11
				ret
uXm_mm_srli_si128_11 endp

			align 16
uXm_mm_srli_si128_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			12
				ret
uXm_mm_srli_si128_12 endp

			align 16
uXm_mm_srli_si128_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			13
				ret
uXm_mm_srli_si128_13 endp

			align 16
uXm_mm_srli_si128_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			14
				ret
uXm_mm_srli_si128_14 endp

			align 16
uXm_mm_srli_si128_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrldq				xmm0,			15
				ret
uXm_mm_srli_si128_15 endp

			align 16
uXm_mm_srli_si128 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		ifndef __X64__
		.if(dparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmsrlisi128jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmsrlisi128jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
		.if(rparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[mmsrlisi128jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmsrlisi128jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmsrlisi128word		textequ		<dword>
			mmsrlisi128iword		textequ		<dd>
		else
			mmsrlisi128word		textequ		<qword>
			mmsrlisi128iword		textequ		<dq>
		endif
		
		mmsrlisi128jmptable label mmsrlisi128word
			mmsrlisi128iword offset mmsrlisi128_0, offset mmsrlisi128_1, offset mmsrlisi128_2, offset mmsrlisi128_3, offset mmsrlisi128_4, offset mmsrlisi128_5, offset mmsrlisi128_6, offset mmsrlisi128_7, offset mmsrlisi128_8, offset mmsrlisi128_9, offset mmsrlisi128_10, offset mmsrlisi128_11, offset mmsrlisi128_12, offset mmsrlisi128_13, offset mmsrlisi128_14, offset mmsrlisi128_15			
		
			mmsrlisi128_0 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_0
			mmsrlisi128_1 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_1
			mmsrlisi128_2 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_2
			mmsrlisi128_3 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_3
			mmsrlisi128_4 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_4
			mmsrlisi128_5 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_5
			mmsrlisi128_6 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_6
			mmsrlisi128_7 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_7
			mmsrlisi128_8 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_8
			mmsrlisi128_9 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_9
			mmsrlisi128_10 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_10
			mmsrlisi128_11 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_11
			mmsrlisi128_12 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_12
			mmsrlisi128_13 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_13
			mmsrlisi128_14 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_14
			mmsrlisi128_15 label mmsrlisi128word
				jmp		uXm_mm_srli_si128_15

uXm_mm_srli_si128 endp

			align 16
uXm_mm_srli_epi16_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			0
				ret
uXm_mm_srli_epi16_0 endp

			align 16
uXm_mm_srli_epi16_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			1
				ret
uXm_mm_srli_epi16_1 endp

			align 16
uXm_mm_srli_epi16_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			2
				ret
uXm_mm_srli_epi16_2 endp

			align 16
uXm_mm_srli_epi16_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			3
				ret
uXm_mm_srli_epi16_3 endp

			align 16
uXm_mm_srli_epi16_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			4
				ret
uXm_mm_srli_epi16_4 endp

			align 16
uXm_mm_srli_epi16_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			5
				ret
uXm_mm_srli_epi16_5 endp

			align 16
uXm_mm_srli_epi16_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			6
				ret
uXm_mm_srli_epi16_6 endp

			align 16
uXm_mm_srli_epi16_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			7
				ret
uXm_mm_srli_epi16_7 endp

			align 16
uXm_mm_srli_epi16_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			8
				ret
uXm_mm_srli_epi16_8 endp

			align 16
uXm_mm_srli_epi16_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			9
				ret
uXm_mm_srli_epi16_9 endp

			align 16
uXm_mm_srli_epi16_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			10
				ret
uXm_mm_srli_epi16_10 endp

			align 16
uXm_mm_srli_epi16_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			11
				ret
uXm_mm_srli_epi16_11 endp

			align 16
uXm_mm_srli_epi16_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			12
				ret
uXm_mm_srli_epi16_12 endp

			align 16
uXm_mm_srli_epi16_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			13
				ret
uXm_mm_srli_epi16_13 endp

			align 16
uXm_mm_srli_epi16_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			14
				ret
uXm_mm_srli_epi16_14 endp

			align 16
uXm_mm_srli_epi16_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlw				xmm0,			15
				ret
uXm_mm_srli_epi16_15 endp

			align 16
uXm_mm_srli_epi16 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		ifndef __X64__
		.if(dparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmsrliepi16jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmsrliepi16jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
		.if(rparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[mmsrliepi16jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmsrliepi16jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmsrliepi16word		textequ		<dword>
			mmsrliepi16iword		textequ		<dd>
		else
			mmsrliepi16word		textequ		<qword>
			mmsrliepi16iword		textequ		<dq>
		endif
		
		mmsrliepi16jmptable label mmsrliepi16word
			mmsrliepi16iword offset mmsrliepi16_0, offset mmsrliepi16_1, offset mmsrliepi16_2, offset mmsrliepi16_3, offset mmsrliepi16_4, offset mmsrliepi16_5, offset mmsrliepi16_6, offset mmsrliepi16_7, offset mmsrliepi16_8, offset mmsrliepi16_9, offset mmsrliepi16_10, offset mmsrliepi16_11, offset mmsrliepi16_12, offset mmsrliepi16_13, offset mmsrliepi16_14, offset mmsrliepi16_15			
		
			mmsrliepi16_0 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_0
			mmsrliepi16_1 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_1
			mmsrliepi16_2 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_2
			mmsrliepi16_3 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_3
			mmsrliepi16_4 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_4
			mmsrliepi16_5 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_5
			mmsrliepi16_6 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_6
			mmsrliepi16_7 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_7
			mmsrliepi16_8 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_8
			mmsrliepi16_9 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_9
			mmsrliepi16_10 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_10
			mmsrliepi16_11 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_11
			mmsrliepi16_12 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_12
			mmsrliepi16_13 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_13
			mmsrliepi16_14 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_14
			mmsrliepi16_15 label mmsrliepi16word
				jmp		uXm_mm_srli_epi16_15

uXm_mm_srli_epi16 endp

			align 16
uXm_mm_srli_epi32_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			0
				ret
uXm_mm_srli_epi32_0 endp

			align 16
uXm_mm_srli_epi32_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			1
				ret
uXm_mm_srli_epi32_1 endp

			align 16
uXm_mm_srli_epi32_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			2
				ret
uXm_mm_srli_epi32_2 endp

			align 16
uXm_mm_srli_epi32_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			3
				ret
uXm_mm_srli_epi32_3 endp

			align 16
uXm_mm_srli_epi32_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			4
				ret
uXm_mm_srli_epi32_4 endp

			align 16
uXm_mm_srli_epi32_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			5
				ret
uXm_mm_srli_epi32_5 endp

			align 16
uXm_mm_srli_epi32_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			6
				ret
uXm_mm_srli_epi32_6 endp

			align 16
uXm_mm_srli_epi32_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			7
				ret
uXm_mm_srli_epi32_7 endp

			align 16
uXm_mm_srli_epi32_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			8
				ret
uXm_mm_srli_epi32_8 endp

			align 16
uXm_mm_srli_epi32_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			9
				ret
uXm_mm_srli_epi32_9 endp

			align 16
uXm_mm_srli_epi32_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			10
				ret
uXm_mm_srli_epi32_10 endp

			align 16
uXm_mm_srli_epi32_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			11
				ret
uXm_mm_srli_epi32_11 endp

			align 16
uXm_mm_srli_epi32_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			12
				ret
uXm_mm_srli_epi32_12 endp

			align 16
uXm_mm_srli_epi32_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			13
				ret
uXm_mm_srli_epi32_13 endp

			align 16
uXm_mm_srli_epi32_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			14
				ret
uXm_mm_srli_epi32_14 endp

			align 16
uXm_mm_srli_epi32_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			15
				ret
uXm_mm_srli_epi32_15 endp

			align 16
uXm_mm_srli_epi32_16 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			16
				ret
uXm_mm_srli_epi32_16 endp

			align 16
uXm_mm_srli_epi32_17 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			17
				ret
uXm_mm_srli_epi32_17 endp

			align 16
uXm_mm_srli_epi32_18 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			18
				ret
uXm_mm_srli_epi32_18 endp

			align 16
uXm_mm_srli_epi32_19 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			19
				ret
uXm_mm_srli_epi32_19 endp

			align 16
uXm_mm_srli_epi32_20 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			20
				ret
uXm_mm_srli_epi32_20 endp

			align 16
uXm_mm_srli_epi32_21 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			21
				ret
uXm_mm_srli_epi32_21 endp

			align 16
uXm_mm_srli_epi32_22 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			22
				ret
uXm_mm_srli_epi32_22 endp

			align 16
uXm_mm_srli_epi32_23 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			23
				ret
uXm_mm_srli_epi32_23 endp

			align 16
uXm_mm_srli_epi32_24 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			24
				ret
uXm_mm_srli_epi32_24 endp

			align 16
uXm_mm_srli_epi32_25 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			25
				ret
uXm_mm_srli_epi32_25 endp

			align 16
uXm_mm_srli_epi32_26 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			26
				ret
uXm_mm_srli_epi32_26 endp

			align 16
uXm_mm_srli_epi32_27 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			27
				ret
uXm_mm_srli_epi32_27 endp

			align 16
uXm_mm_srli_epi32_28 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			28
				ret
uXm_mm_srli_epi32_28 endp

			align 16
uXm_mm_srli_epi32_29 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			29
				ret
uXm_mm_srli_epi32_29 endp

			align 16
uXm_mm_srli_epi32_30 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			30
				ret
uXm_mm_srli_epi32_30 endp

			align 16
uXm_mm_srli_epi32_31 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrld				xmm0,			31
				ret
uXm_mm_srli_epi32_31 endp

			align 16
uXm_mm_srli_epi32 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		ifndef __X64__
		.if(dparam2 > 31)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmsrliepi32jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmsrliepi32jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
		.if(rparam2 > 31)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[mmsrliepi32jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmsrliepi32jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmsrliepi32word		textequ		<dword>
			mmsrliepi32iword		textequ		<dd>
		else
			mmsrliepi32word		textequ		<qword>
			mmsrliepi32iword		textequ		<dq>
		endif
		
		mmsrliepi32jmptable label mmsrliepi32word
			mmsrliepi32iword offset mmsrliepi32_0, offset mmsrliepi32_1, offset mmsrliepi32_2, offset mmsrliepi32_3, offset mmsrliepi32_4, offset mmsrliepi32_5, offset mmsrliepi32_6, offset mmsrliepi32_7, offset mmsrliepi32_8, offset mmsrliepi32_9, offset mmsrliepi32_10, offset mmsrliepi32_11, offset mmsrliepi32_12, offset mmsrliepi32_13, offset mmsrliepi32_14, offset mmsrliepi32_15, offset mmsrliepi32_16, offset mmsrliepi32_17, offset mmsrliepi32_18, offset mmsrliepi32_19, offset mmsrliepi32_20, offset mmsrliepi32_21, offset mmsrliepi32_22, offset mmsrliepi32_23, offset mmsrliepi32_24, offset mmsrliepi32_25, offset mmsrliepi32_26, offset mmsrliepi32_27, offset mmsrliepi32_28, offset mmsrliepi32_29, offset mmsrliepi32_30, offset mmsrliepi32_31
		
			mmsrliepi32_0 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_0
			mmsrliepi32_1 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_1
			mmsrliepi32_2 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_2
			mmsrliepi32_3 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_3
			mmsrliepi32_4 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_4
			mmsrliepi32_5 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_5
			mmsrliepi32_6 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_6
			mmsrliepi32_7 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_7
			mmsrliepi32_8 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_8
			mmsrliepi32_9 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_9
			mmsrliepi32_10 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_10
			mmsrliepi32_11 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_11
			mmsrliepi32_12 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_12
			mmsrliepi32_13 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_13
			mmsrliepi32_14 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_14
			mmsrliepi32_15 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_15
			mmsrliepi32_16 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_16
			mmsrliepi32_17 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_17
			mmsrliepi32_18 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_18
			mmsrliepi32_19 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_19
			mmsrliepi32_20 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_20
			mmsrliepi32_21 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_21
			mmsrliepi32_22 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_22
			mmsrliepi32_23 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_23
			mmsrliepi32_24 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_24
			mmsrliepi32_25 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_25
			mmsrliepi32_26 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_26
			mmsrliepi32_27 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_27
			mmsrliepi32_28 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_28
			mmsrliepi32_29 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_29
			mmsrliepi32_30 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_30
			mmsrliepi32_31 label mmsrliepi32word
				jmp		uXm_mm_srli_epi32_31

uXm_mm_srli_epi32 endp

			align 16
uXm_mm_srli_epi64_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			0
				ret
uXm_mm_srli_epi64_0 endp

			align 16
uXm_mm_srli_epi64_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			1
				ret
uXm_mm_srli_epi64_1 endp

			align 16
uXm_mm_srli_epi64_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			2
				ret
uXm_mm_srli_epi64_2 endp

			align 16
uXm_mm_srli_epi64_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			3
				ret
uXm_mm_srli_epi64_3 endp

			align 16
uXm_mm_srli_epi64_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			4
				ret
uXm_mm_srli_epi64_4 endp

			align 16
uXm_mm_srli_epi64_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			5
				ret
uXm_mm_srli_epi64_5 endp

			align 16
uXm_mm_srli_epi64_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			6
				ret
uXm_mm_srli_epi64_6 endp

			align 16
uXm_mm_srli_epi64_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			7
				ret
uXm_mm_srli_epi64_7 endp

			align 16
uXm_mm_srli_epi64_8 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			8
				ret
uXm_mm_srli_epi64_8 endp

			align 16
uXm_mm_srli_epi64_9 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			9
				ret
uXm_mm_srli_epi64_9 endp

			align 16
uXm_mm_srli_epi64_10 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			10
				ret
uXm_mm_srli_epi64_10 endp

			align 16
uXm_mm_srli_epi64_11 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			11
				ret
uXm_mm_srli_epi64_11 endp

			align 16
uXm_mm_srli_epi64_12 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			12
				ret
uXm_mm_srli_epi64_12 endp

			align 16
uXm_mm_srli_epi64_13 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			13
				ret
uXm_mm_srli_epi64_13 endp

			align 16
uXm_mm_srli_epi64_14 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			14
				ret
uXm_mm_srli_epi64_14 endp

			align 16
uXm_mm_srli_epi64_15 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			15
				ret
uXm_mm_srli_epi64_15 endp

			align 16
uXm_mm_srli_epi64_16 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			16
				ret
uXm_mm_srli_epi64_16 endp

			align 16
uXm_mm_srli_epi64_17 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			17
				ret
uXm_mm_srli_epi64_17 endp

			align 16
uXm_mm_srli_epi64_18 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			18
				ret
uXm_mm_srli_epi64_18 endp

			align 16
uXm_mm_srli_epi64_19 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			19
				ret
uXm_mm_srli_epi64_19 endp

			align 16
uXm_mm_srli_epi64_20 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			20
				ret
uXm_mm_srli_epi64_20 endp

			align 16
uXm_mm_srli_epi64_21 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			21
				ret
uXm_mm_srli_epi64_21 endp

			align 16
uXm_mm_srli_epi64_22 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			22
				ret
uXm_mm_srli_epi64_22 endp

			align 16
uXm_mm_srli_epi64_23 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			23
				ret
uXm_mm_srli_epi64_23 endp

			align 16
uXm_mm_srli_epi64_24 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			24
				ret
uXm_mm_srli_epi64_24 endp

			align 16
uXm_mm_srli_epi64_25 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			25
				ret
uXm_mm_srli_epi64_25 endp

			align 16
uXm_mm_srli_epi64_26 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			26
				ret
uXm_mm_srli_epi64_26 endp

			align 16
uXm_mm_srli_epi64_27 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			27
				ret
uXm_mm_srli_epi64_27 endp

			align 16
uXm_mm_srli_epi64_28 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			28
				ret
uXm_mm_srli_epi64_28 endp

			align 16
uXm_mm_srli_epi64_29 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			29
				ret
uXm_mm_srli_epi64_29 endp

			align 16
uXm_mm_srli_epi64_30 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			30
				ret
uXm_mm_srli_epi64_30 endp

			align 16
uXm_mm_srli_epi64_31 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			31
				ret
uXm_mm_srli_epi64_31 endp

			align 16
uXm_mm_srli_epi64_32 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			32
				ret
uXm_mm_srli_epi64_32 endp

			align 16
uXm_mm_srli_epi64_33 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			33
				ret
uXm_mm_srli_epi64_33 endp

			align 16
uXm_mm_srli_epi64_34 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			34
				ret
uXm_mm_srli_epi64_34 endp

			align 16
uXm_mm_srli_epi64_35 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			35
				ret
uXm_mm_srli_epi64_35 endp

			align 16
uXm_mm_srli_epi64_36 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			36
				ret
uXm_mm_srli_epi64_36 endp

			align 16
uXm_mm_srli_epi64_37 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			37
				ret
uXm_mm_srli_epi64_37 endp

			align 16
uXm_mm_srli_epi64_38 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			38
				ret
uXm_mm_srli_epi64_38 endp

			align 16
uXm_mm_srli_epi64_39 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			39
				ret
uXm_mm_srli_epi64_39 endp

			align 16
uXm_mm_srli_epi64_40 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			40
				ret
uXm_mm_srli_epi64_40 endp

			align 16
uXm_mm_srli_epi64_41 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			41
				ret
uXm_mm_srli_epi64_41 endp

			align 16
uXm_mm_srli_epi64_42 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			42
				ret
uXm_mm_srli_epi64_42 endp

			align 16
uXm_mm_srli_epi64_43 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			43
				ret
uXm_mm_srli_epi64_43 endp

			align 16
uXm_mm_srli_epi64_44 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			44
				ret
uXm_mm_srli_epi64_44 endp

			align 16
uXm_mm_srli_epi64_45 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			45
				ret
uXm_mm_srli_epi64_45 endp

			align 16
uXm_mm_srli_epi64_46 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			46
				ret
uXm_mm_srli_epi64_46 endp

			align 16
uXm_mm_srli_epi64_47 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			47
				ret
uXm_mm_srli_epi64_47 endp

			align 16
uXm_mm_srli_epi64_48 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			48
				ret
uXm_mm_srli_epi64_48 endp

			align 16
uXm_mm_srli_epi64_49 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			49
				ret
uXm_mm_srli_epi64_49 endp

			align 16
uXm_mm_srli_epi64_50 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			50
				ret
uXm_mm_srli_epi64_50 endp

			align 16
uXm_mm_srli_epi64_51 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			51
				ret
uXm_mm_srli_epi64_51 endp

			align 16
uXm_mm_srli_epi64_52 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			52
				ret
uXm_mm_srli_epi64_52 endp

			align 16
uXm_mm_srli_epi64_53 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			53
				ret
uXm_mm_srli_epi64_53 endp

			align 16
uXm_mm_srli_epi64_54 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			54
				ret
uXm_mm_srli_epi64_54 endp

			align 16
uXm_mm_srli_epi64_55 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			55
				ret
uXm_mm_srli_epi64_55 endp

			align 16
uXm_mm_srli_epi64_56 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			56
				ret
uXm_mm_srli_epi64_56 endp

			align 16
uXm_mm_srli_epi64_57 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			57
				ret
uXm_mm_srli_epi64_57 endp

			align 16
uXm_mm_srli_epi64_58 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			58
				ret
uXm_mm_srli_epi64_58 endp

			align 16
uXm_mm_srli_epi64_59 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			59
				ret
uXm_mm_srli_epi64_59 endp

			align 16
uXm_mm_srli_epi64_60 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			60
				ret
uXm_mm_srli_epi64_60 endp

			align 16
uXm_mm_srli_epi64_61 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			61
				ret
uXm_mm_srli_epi64_61 endp

			align 16
uXm_mm_srli_epi64_62 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			62
				ret
uXm_mm_srli_epi64_62 endp

			align 16
uXm_mm_srli_epi64_63 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword
				psrlq				xmm0,			63
				ret
uXm_mm_srli_epi64_63 endp

			align 16
uXm_mm_srli_epi64 proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, Inint_Imm:dword
					
		ifndef __X64__
		.if(dparam2 > 63)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmsrliepi64jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmsrliepi64jmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
		.if(rparam2 > 63)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[mmsrliepi64jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmsrliepi64jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmsrliepi64word		textequ		<dword>
			mmsrliepi64iword		textequ		<dd>
		else
			mmsrliepi64word		textequ		<qword>
			mmsrliepi64iword		textequ		<dq>
		endif
		
		mmsrliepi64jmptable label mmsrliepi64word
			mmsrliepi64iword offset mmsrliepi64_0, offset mmsrliepi64_1, offset mmsrliepi64_2, offset mmsrliepi64_3, offset mmsrliepi64_4, offset mmsrliepi64_5, offset mmsrliepi64_6, offset mmsrliepi64_7, offset mmsrliepi64_8, offset mmsrliepi64_9, offset mmsrliepi64_10, offset mmsrliepi64_11, offset mmsrliepi64_12, offset mmsrliepi64_13, offset mmsrliepi64_14, offset mmsrliepi64_15, offset mmsrliepi64_16, offset mmsrliepi64_17, offset mmsrliepi64_18, offset mmsrliepi64_19, offset mmsrliepi64_20, offset mmsrliepi64_21, offset mmsrliepi64_22, offset mmsrliepi64_23, offset mmsrliepi64_24, offset mmsrliepi64_25, offset mmsrliepi64_26, offset mmsrliepi64_27, offset mmsrliepi64_28, offset mmsrliepi64_29, offset mmsrliepi64_30, offset mmsrliepi64_31
			mmsrliepi64iword offset mmsrliepi64_32, offset mmsrliepi64_33, offset mmsrliepi64_34, offset mmsrliepi64_35, offset mmsrliepi64_36, offset mmsrliepi64_37, offset mmsrliepi64_38, offset mmsrliepi64_39, offset mmsrliepi64_40, offset mmsrliepi64_41, offset mmsrliepi64_42, offset mmsrliepi64_43, offset mmsrliepi64_44, offset mmsrliepi64_45, offset mmsrliepi64_46, offset mmsrliepi64_47, offset mmsrliepi64_48, offset mmsrliepi64_49, offset mmsrliepi64_50, offset mmsrliepi64_51, offset mmsrliepi64_52, offset mmsrliepi64_53, offset mmsrliepi64_54, offset mmsrliepi64_55, offset mmsrliepi64_56, offset mmsrliepi64_57, offset mmsrliepi64_58, offset mmsrliepi64_59, offset mmsrliepi64_60, offset mmsrliepi64_61, offset mmsrliepi64_62, offset mmsrliepi64_63
		
			mmsrliepi64_0 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_0
			mmsrliepi64_1 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_1
			mmsrliepi64_2 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_2
			mmsrliepi64_3 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_3
			mmsrliepi64_4 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_4
			mmsrliepi64_5 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_5
			mmsrliepi64_6 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_6
			mmsrliepi64_7 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_7
			mmsrliepi64_8 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_8
			mmsrliepi64_9 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_9
			mmsrliepi64_10 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_10
			mmsrliepi64_11 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_11
			mmsrliepi64_12 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_12
			mmsrliepi64_13 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_13
			mmsrliepi64_14 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_14
			mmsrliepi64_15 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_15
			mmsrliepi64_16 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_16
			mmsrliepi64_17 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_17
			mmsrliepi64_18 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_18
			mmsrliepi64_19 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_19
			mmsrliepi64_20 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_20
			mmsrliepi64_21 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_21
			mmsrliepi64_22 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_22
			mmsrliepi64_23 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_23
			mmsrliepi64_24 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_24
			mmsrliepi64_25 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_25
			mmsrliepi64_26 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_26
			mmsrliepi64_27 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_27
			mmsrliepi64_28 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_28
			mmsrliepi64_29 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_29
			mmsrliepi64_30 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_30
			mmsrliepi64_31 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_31
			mmsrliepi64_32 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_32
			mmsrliepi64_33 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_33
			mmsrliepi64_34 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_34
			mmsrliepi64_35 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_35
			mmsrliepi64_36 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_36
			mmsrliepi64_37 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_37
			mmsrliepi64_38 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_38
			mmsrliepi64_39 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_39
			mmsrliepi64_40 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_40
			mmsrliepi64_41 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_41
			mmsrliepi64_42 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_42
			mmsrliepi64_43 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_43
			mmsrliepi64_44 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_44
			mmsrliepi64_45 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_45
			mmsrliepi64_46 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_46
			mmsrliepi64_47 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_47
			mmsrliepi64_48 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_48
			mmsrliepi64_49 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_49
			mmsrliepi64_50 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_50
			mmsrliepi64_51 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_51
			mmsrliepi64_52 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_52
			mmsrliepi64_53 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_53
			mmsrliepi64_54 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_54
			mmsrliepi64_55 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_55
			mmsrliepi64_56 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_56
			mmsrliepi64_57 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_57
			mmsrliepi64_58 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_58
			mmsrliepi64_59 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_59
			mmsrliepi64_60 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_60
			mmsrliepi64_61 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_61
			mmsrliepi64_62 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_62
			mmsrliepi64_63 label mmsrliepi64word
				jmp		uXm_mm_srli_epi64_63

uXm_mm_srli_epi64 endp

	end
