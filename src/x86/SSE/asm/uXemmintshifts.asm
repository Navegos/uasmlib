
	include uXx86asm.inc
	
ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0
	
	include uXsseintrin.inc
	
	.data?

	.data

	.const
	
		alignsize_t
		_m128isllisi128jmptable isize_t  offset _m128isllisi128_0, offset _m128isllisi128_1, offset _m128isllisi128_2, offset _m128isllisi128_3, offset _m128isllisi128_4, \
										offset _m128isllisi128_5, offset _m128isllisi128_6, offset _m128isllisi128_7, offset _m128isllisi128_8, offset _m128isllisi128_9, \
										offset _m128isllisi128_10, offset _m128isllisi128_11, offset _m128isllisi128_12, offset _m128isllisi128_13, offset _m128isllisi128_14, \
										offset _m128isllisi128_15			
		
		alignsize_t
		_m128islliepi16jmptable isize_t	offset _m128islliepi16_0, offset _m128islliepi16_1, offset _m128islliepi16_2, offset _m128islliepi16_3, offset _m128islliepi16_4, \
										offset _m128islliepi16_5, offset _m128islliepi16_6, offset _m128islliepi16_7, offset _m128islliepi16_8, offset _m128islliepi16_9, \
										offset _m128islliepi16_10, offset _m128islliepi16_11, offset _m128islliepi16_12, offset _m128islliepi16_13, offset _m128islliepi16_14, \
										offset _m128islliepi16_15			
		
		alignsize_t
		_m128islliepi32jmptable isize_t	offset _m128islliepi32_0, offset _m128islliepi32_1, offset _m128islliepi32_2, offset _m128islliepi32_3, offset _m128islliepi32_4, \
										offset _m128islliepi32_5, offset _m128islliepi32_6, offset _m128islliepi32_7, offset _m128islliepi32_8, offset _m128islliepi32_9, \
										offset _m128islliepi32_10, offset _m128islliepi32_11, offset _m128islliepi32_12, offset _m128islliepi32_13, offset _m128islliepi32_14, \
										offset _m128islliepi32_15, offset _m128islliepi32_16, offset _m128islliepi32_17, offset _m128islliepi32_18, offset _m128islliepi32_19, \
										offset _m128islliepi32_20, offset _m128islliepi32_21, offset _m128islliepi32_22, offset _m128islliepi32_23, offset _m128islliepi32_24, \
										offset _m128islliepi32_25, offset _m128islliepi32_26, offset _m128islliepi32_27, offset _m128islliepi32_28, offset _m128islliepi32_29, \
										offset _m128islliepi32_30, offset _m128islliepi32_31
		
		alignsize_t
		_m128islliepi64jmptable isize_t	offset _m128islliepi64_0, offset _m128islliepi64_1, offset _m128islliepi64_2, offset _m128islliepi64_3, offset _m128islliepi64_4, \
										offset _m128islliepi64_5, offset _m128islliepi64_6, offset _m128islliepi64_7, offset _m128islliepi64_8, offset _m128islliepi64_9, \
										offset _m128islliepi64_10, offset _m128islliepi64_11, offset _m128islliepi64_12, offset _m128islliepi64_13, offset _m128islliepi64_14, \
										offset _m128islliepi64_15, offset _m128islliepi64_16, offset _m128islliepi64_17, offset _m128islliepi64_18, offset _m128islliepi64_19, \
										offset _m128islliepi64_20, offset _m128islliepi64_21, offset _m128islliepi64_22, offset _m128islliepi64_23, offset _m128islliepi64_24, \
										offset _m128islliepi64_25, offset _m128islliepi64_26, offset _m128islliepi64_27, offset _m128islliepi64_28, offset _m128islliepi64_29, \
										offset _m128islliepi64_30, offset _m128islliepi64_31, offset _m128islliepi64_32, offset _m128islliepi64_33, offset _m128islliepi64_34, \
										offset _m128islliepi64_35, offset _m128islliepi64_36, offset _m128islliepi64_37, offset _m128islliepi64_38, offset _m128islliepi64_39, \
										offset _m128islliepi64_40, offset _m128islliepi64_41, offset _m128islliepi64_42, offset _m128islliepi64_43, offset _m128islliepi64_44, \
										offset _m128islliepi64_45, offset _m128islliepi64_46, offset _m128islliepi64_47, offset _m128islliepi64_48, offset _m128islliepi64_49, \
										offset _m128islliepi64_50, offset _m128islliepi64_51, offset _m128islliepi64_52, offset _m128islliepi64_53, offset _m128islliepi64_54, \
										offset _m128islliepi64_55, offset _m128islliepi64_56, offset _m128islliepi64_57, offset _m128islliepi64_58, offset _m128islliepi64_59, \
										offset _m128islliepi64_60, offset _m128islliepi64_61, offset _m128islliepi64_62, offset _m128islliepi64_63
		
		alignsize_t
		_m128israiepi16jmptable isize_t	offset _m128israiepi16_0, offset _m128israiepi16_1, offset _m128israiepi16_2, offset _m128israiepi16_3, offset _m128israiepi16_4, \
										offset _m128israiepi16_5, offset _m128israiepi16_6, offset _m128israiepi16_7, offset _m128israiepi16_8, offset _m128israiepi16_9, \
										offset _m128israiepi16_10, offset _m128israiepi16_11, offset _m128israiepi16_12, offset _m128israiepi16_13, offset _m128israiepi16_14, \
										offset _m128israiepi16_15			
		
		alignsize_t
		_m128israiepi32jmptable isize_t	offset _m128israiepi32_0, offset _m128israiepi32_1, offset _m128israiepi32_2, offset _m128israiepi32_3, offset _m128israiepi32_4, \
										offset _m128israiepi32_5, offset _m128israiepi32_6, offset _m128israiepi32_7, offset _m128israiepi32_8, offset _m128israiepi32_9, \
										offset _m128israiepi32_10, offset _m128israiepi32_11, offset _m128israiepi32_12, offset _m128israiepi32_13, offset _m128israiepi32_14, \
										offset _m128israiepi32_15, offset _m128israiepi32_16, offset _m128israiepi32_17, offset _m128israiepi32_18, offset _m128israiepi32_19, \
										offset _m128israiepi32_20, offset _m128israiepi32_21, offset _m128israiepi32_22, offset _m128israiepi32_23, offset _m128israiepi32_24, \
										offset _m128israiepi32_25, offset _m128israiepi32_26, offset _m128israiepi32_27, offset _m128israiepi32_28, offset _m128israiepi32_29, \
										offset _m128israiepi32_30, offset _m128israiepi32_31
		
		alignsize_t
		_m128isrlisi128jmptable isize_t	offset _m128isrlisi128_0, offset _m128isrlisi128_1, offset _m128isrlisi128_2, offset _m128isrlisi128_3, offset _m128isrlisi128_4, \
										offset _m128isrlisi128_5, offset _m128isrlisi128_6, offset _m128isrlisi128_7, offset _m128isrlisi128_8, offset _m128isrlisi128_9, \
										offset _m128isrlisi128_10, offset _m128isrlisi128_11, offset _m128isrlisi128_12, offset _m128isrlisi128_13, offset _m128isrlisi128_14, \
										offset _m128isrlisi128_15			
		
		alignsize_t
		_m128isrliepi16jmptable isize_t	offset _m128isrliepi16_0, offset _m128isrliepi16_1, offset _m128isrliepi16_2, offset _m128isrliepi16_3, offset _m128isrliepi16_4, \
										offset _m128isrliepi16_5, offset _m128isrliepi16_6, offset _m128isrliepi16_7, offset _m128isrliepi16_8, offset _m128isrliepi16_9, \
										offset _m128isrliepi16_10, offset _m128isrliepi16_11, offset _m128isrliepi16_12, offset _m128isrliepi16_13, offset _m128isrliepi16_14, \
										offset _m128isrliepi16_15			
		
		alignsize_t
		_m128isrliepi32jmptable isize_t	offset _m128isrliepi32_0, offset _m128isrliepi32_1, offset _m128isrliepi32_2, offset _m128isrliepi32_3, offset _m128isrliepi32_4, \
										offset _m128isrliepi32_5, offset _m128isrliepi32_6, offset _m128isrliepi32_7, offset _m128isrliepi32_8, offset _m128isrliepi32_9, \
										offset _m128isrliepi32_10, offset _m128isrliepi32_11, offset _m128isrliepi32_12, offset _m128isrliepi32_13, offset _m128isrliepi32_14, \
										offset _m128isrliepi32_15, offset _m128isrliepi32_16, offset _m128isrliepi32_17, offset _m128isrliepi32_18, offset _m128isrliepi32_19, \
										offset _m128isrliepi32_20, offset _m128isrliepi32_21, offset _m128isrliepi32_22, offset _m128isrliepi32_23, offset _m128isrliepi32_24, \
										offset _m128isrliepi32_25, offset _m128isrliepi32_26, offset _m128isrliepi32_27, offset _m128isrliepi32_28, offset _m128isrliepi32_29, \
										offset _m128isrliepi32_30, offset _m128isrliepi32_31
		
		alignsize_t
		_m128isrliepi64jmptable isize_t	offset _m128isrliepi64_0, offset _m128isrliepi64_1, offset _m128isrliepi64_2, offset _m128isrliepi64_3, offset _m128isrliepi64_4, \
										offset _m128isrliepi64_5, offset _m128isrliepi64_6, offset _m128isrliepi64_7, offset _m128isrliepi64_8, offset _m128isrliepi64_9, \
										offset _m128isrliepi64_10, offset _m128isrliepi64_11, offset _m128isrliepi64_12, offset _m128isrliepi64_13, offset _m128isrliepi64_14, \
										offset _m128isrliepi64_15, offset _m128isrliepi64_16, offset _m128isrliepi64_17, offset _m128isrliepi64_18, offset _m128isrliepi64_19, \
										offset _m128isrliepi64_20, offset _m128isrliepi64_21, offset _m128isrliepi64_22, offset _m128isrliepi64_23, offset _m128isrliepi64_24, \
										offset _m128isrliepi64_25, offset _m128isrliepi64_26, offset _m128isrliepi64_27, offset _m128isrliepi64_28, offset _m128isrliepi64_29, \
										offset _m128isrliepi64_30, offset _m128isrliepi64_31, offset _m128isrliepi64_32, offset _m128isrliepi64_33, offset _m128isrliepi64_34, \
										offset _m128isrliepi64_35, offset _m128isrliepi64_36, offset _m128isrliepi64_37, offset _m128isrliepi64_38, offset _m128isrliepi64_39, \
										offset _m128isrliepi64_40, offset _m128isrliepi64_41, offset _m128isrliepi64_42, offset _m128isrliepi64_43, offset _m128isrliepi64_44, \
										offset _m128isrliepi64_45, offset _m128isrliepi64_46, offset _m128isrliepi64_47, offset _m128isrliepi64_48, offset _m128isrliepi64_49, \
										offset _m128isrliepi64_50, offset _m128isrliepi64_51, offset _m128isrliepi64_52, offset _m128isrliepi64_53, offset _m128isrliepi64_54, \
										offset _m128isrliepi64_55, offset _m128isrliepi64_56, offset _m128isrliepi64_57, offset _m128isrliepi64_58, offset _m128isrliepi64_59, \
										offset _m128isrliepi64_60, offset _m128isrliepi64_61, offset _m128isrliepi64_62, offset _m128isrliepi64_63
		
	alignxmmfieldproc
	callconvopt

	.code

funcstart _uX_mm_slli_si128_0, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			0
			ret
funcend

funcstart _uX_mm_slli_si128_1, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			1
			ret
funcend

funcstart _uX_mm_slli_si128_2, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			2
			ret
funcend

funcstart _uX_mm_slli_si128_3, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			3
			ret
funcend

funcstart _uX_mm_slli_si128_4, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			4
			ret
funcend

funcstart _uX_mm_slli_si128_5, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			5
			ret
funcend

funcstart _uX_mm_slli_si128_6, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			6
			ret
funcend

funcstart _uX_mm_slli_si128_7, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			7
			ret
funcend

funcstart _uX_mm_slli_si128_8, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			8
			ret
funcend

funcstart _uX_mm_slli_si128_9, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			9
			ret
funcend

funcstart _uX_mm_slli_si128_10, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			10
			ret
funcend

funcstart _uX_mm_slli_si128_11, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			11
			ret
funcend

funcstart _uX_mm_slli_si128_12, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			12
			ret
funcend

funcstart _uX_mm_slli_si128_13, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			13
			ret
funcend

funcstart _uX_mm_slli_si128_14, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			14
			ret
funcend

funcstart _uX_mm_slli_si128_15, callconv, xmmword, < >, Inxmm_A:xmmword
			pslldq			xmm0,			15
			ret
funcend

funcstart _uX_mm_slli_si128, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128isllisi128jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128isllisi128jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128isllisi128_0 label size_t
			pslldq			xmm0,			0
			ret
		_m128isllisi128_1 label size_t
			pslldq			xmm0,			1
			ret
		_m128isllisi128_2 label size_t
			pslldq			xmm0,			2
			ret
		_m128isllisi128_3 label size_t
			pslldq			xmm0,			3
			ret
		_m128isllisi128_4 label size_t
			pslldq			xmm0,			4
			ret
		_m128isllisi128_5 label size_t
			pslldq			xmm0,			5
			ret
		_m128isllisi128_6 label size_t
			pslldq			xmm0,			6
			ret
		_m128isllisi128_7 label size_t
			pslldq			xmm0,			7
			ret
		_m128isllisi128_8 label size_t
			pslldq			xmm0,			8
			ret
		_m128isllisi128_9 label size_t
			pslldq			xmm0,			9
			ret
		_m128isllisi128_10 label size_t
			pslldq			xmm0,			10
			ret
		_m128isllisi128_11 label size_t
			pslldq			xmm0,			11
			ret
		_m128isllisi128_12 label size_t
			pslldq			xmm0,			12
			ret
		_m128isllisi128_13 label size_t
			pslldq			xmm0,			13
			ret
		_m128isllisi128_14 label size_t
			pslldq			xmm0,			14
			ret
		_m128isllisi128_15 label size_t
			pslldq			xmm0,			15
			ret
		;.endif

funcend

funcstart _uX_mm_slli_epi16_0, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			0
			ret
funcend

funcstart _uX_mm_slli_epi16_1, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			1
			ret
funcend

funcstart _uX_mm_slli_epi16_2, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			2
			ret
funcend

funcstart _uX_mm_slli_epi16_3, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			3
			ret
funcend

funcstart _uX_mm_slli_epi16_4, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			4
			ret
funcend

funcstart _uX_mm_slli_epi16_5, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			5
			ret
funcend

funcstart _uX_mm_slli_epi16_6, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			6
			ret
funcend

funcstart _uX_mm_slli_epi16_7, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			7
			ret
funcend

funcstart _uX_mm_slli_epi16_8, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			8
			ret
funcend

funcstart _uX_mm_slli_epi16_9, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			9
			ret
funcend

funcstart _uX_mm_slli_epi16_10, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			10
			ret
funcend

funcstart _uX_mm_slli_epi16_11, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			11
			ret
funcend

funcstart _uX_mm_slli_epi16_12, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			12
			ret
funcend

funcstart _uX_mm_slli_epi16_13, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			13
			ret
funcend

funcstart _uX_mm_slli_epi16_14, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			14
			ret
funcend

funcstart _uX_mm_slli_epi16_15, callconv, xmmword, < >, Inxmm_A:xmmword
			psllw			xmm0,			15
			ret
funcend

funcstart _uX_mm_slli_epi16, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128islliepi16jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128islliepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128islliepi16_0 label size_t
			psllw			xmm0,			0
			ret
		_m128islliepi16_1 label size_t
			psllw			xmm0,			1
			ret
		_m128islliepi16_2 label size_t
			psllw			xmm0,			2
			ret
		_m128islliepi16_3 label size_t
			psllw			xmm0,			3
			ret
		_m128islliepi16_4 label size_t
			psllw			xmm0,			4
			ret
		_m128islliepi16_5 label size_t
			psllw			xmm0,			5
			ret
		_m128islliepi16_6 label size_t
			psllw			xmm0,			6
			ret
		_m128islliepi16_7 label size_t
			psllw			xmm0,			7
			ret
		_m128islliepi16_8 label size_t
			psllw			xmm0,			8
			ret
		_m128islliepi16_9 label size_t
			psllw			xmm0,			9
			ret
		_m128islliepi16_10 label size_t
			psllw			xmm0,			10
			ret
		_m128islliepi16_11 label size_t
			psllw			xmm0,			11
			ret
		_m128islliepi16_12 label size_t
			psllw			xmm0,			12
			ret
		_m128islliepi16_13 label size_t
			psllw			xmm0,			13
			ret
		_m128islliepi16_14 label size_t
			psllw			xmm0,			14
			ret
		_m128islliepi16_15 label size_t
			psllw			xmm0,			15
			ret
		;.endif

funcend

funcstart _uX_mm_slli_epi32_0, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			0
			ret
funcend

funcstart _uX_mm_slli_epi32_1, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			1
			ret
funcend

funcstart _uX_mm_slli_epi32_2, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			2
			ret
funcend

funcstart _uX_mm_slli_epi32_3, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			3
			ret
funcend

funcstart _uX_mm_slli_epi32_4, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			4
			ret
funcend

funcstart _uX_mm_slli_epi32_5, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			5
			ret
funcend

funcstart _uX_mm_slli_epi32_6, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			6
			ret
funcend

funcstart _uX_mm_slli_epi32_7, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			7
			ret
funcend

funcstart _uX_mm_slli_epi32_8, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			8
			ret
funcend

funcstart _uX_mm_slli_epi32_9, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			9
			ret
funcend

funcstart _uX_mm_slli_epi32_10, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			10
			ret
funcend

funcstart _uX_mm_slli_epi32_11, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			11
			ret
funcend

funcstart _uX_mm_slli_epi32_12, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			12
			ret
funcend

funcstart _uX_mm_slli_epi32_13, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			13
			ret
funcend

funcstart _uX_mm_slli_epi32_14, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			14
			ret
funcend

funcstart _uX_mm_slli_epi32_15, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			15
			ret
funcend

funcstart _uX_mm_slli_epi32_16, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			16
			ret
funcend

funcstart _uX_mm_slli_epi32_17, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			17
			ret
funcend

funcstart _uX_mm_slli_epi32_18, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			18
			ret
funcend

funcstart _uX_mm_slli_epi32_19, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			19
			ret
funcend

funcstart _uX_mm_slli_epi32_20, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			20
			ret
funcend

funcstart _uX_mm_slli_epi32_21, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			21
			ret
funcend

funcstart _uX_mm_slli_epi32_22, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			22
			ret
funcend

funcstart _uX_mm_slli_epi32_23, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			23
			ret
funcend

funcstart _uX_mm_slli_epi32_24, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			24
			ret
funcend

funcstart _uX_mm_slli_epi32_25, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			25
			ret
funcend

funcstart _uX_mm_slli_epi32_26, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			26
			ret
funcend

funcstart _uX_mm_slli_epi32_27, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			27
			ret
funcend

funcstart _uX_mm_slli_epi32_28, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			28
			ret
funcend

funcstart _uX_mm_slli_epi32_29, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			29
			ret
funcend

funcstart _uX_mm_slli_epi32_30, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			30
			ret
funcend

funcstart _uX_mm_slli_epi32_31, callconv, xmmword, < >, Inxmm_A:xmmword
			pslld			xmm0,			31
			ret
funcend

funcstart _uX_mm_slli_epi32, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128islliepi32jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128islliepi32jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128islliepi32_0 label size_t
			pslld			xmm0,			0
			ret
		_m128islliepi32_1 label size_t
			pslld			xmm0,			1
			ret
		_m128islliepi32_2 label size_t
			pslld			xmm0,			2
			ret
		_m128islliepi32_3 label size_t
			pslld			xmm0,			3
			ret
		_m128islliepi32_4 label size_t
			pslld			xmm0,			4
			ret
		_m128islliepi32_5 label size_t
			pslld			xmm0,			5
			ret
		_m128islliepi32_6 label size_t
			pslld			xmm0,			6
			ret
		_m128islliepi32_7 label size_t
			pslld			xmm0,			7
			ret
		_m128islliepi32_8 label size_t
			pslld			xmm0,			8
			ret
		_m128islliepi32_9 label size_t
			pslld			xmm0,			9
			ret
		_m128islliepi32_10 label size_t
			pslld			xmm0,			10
			ret
		_m128islliepi32_11 label size_t
			pslld			xmm0,			11
			ret
		_m128islliepi32_12 label size_t
			pslld			xmm0,			12
			ret
		_m128islliepi32_13 label size_t
			pslld			xmm0,			13
			ret
		_m128islliepi32_14 label size_t
			pslld			xmm0,			14
			ret
		_m128islliepi32_15 label size_t
			pslld			xmm0,			15
			ret
		_m128islliepi32_16 label size_t
			pslld			xmm0,			16
			ret
		_m128islliepi32_17 label size_t
			pslld			xmm0,			17
			ret
		_m128islliepi32_18 label size_t
			pslld			xmm0,			18
			ret
		_m128islliepi32_19 label size_t
			pslld			xmm0,			19
			ret
		_m128islliepi32_20 label size_t
			pslld			xmm0,			20
			ret
		_m128islliepi32_21 label size_t
			pslld			xmm0,			21
			ret
		_m128islliepi32_22 label size_t
			pslld			xmm0,			22
			ret
		_m128islliepi32_23 label size_t
			pslld			xmm0,			23
			ret
		_m128islliepi32_24 label size_t
			pslld			xmm0,			24
			ret
		_m128islliepi32_25 label size_t
			pslld			xmm0,			25
			ret
		_m128islliepi32_26 label size_t
			pslld			xmm0,			26
			ret
		_m128islliepi32_27 label size_t
			pslld			xmm0,			27
			ret
		_m128islliepi32_28 label size_t
			pslld			xmm0,			28
			ret
		_m128islliepi32_29 label size_t
			pslld			xmm0,			29
			ret
		_m128islliepi32_30 label size_t
			pslld			xmm0,			30
			ret
		_m128islliepi32_31 label size_t
			pslld			xmm0,			31
			ret
		;.endif

funcend

funcstart _uX_mm_slli_epi64_0, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			0
			ret
funcend

funcstart _uX_mm_slli_epi64_1, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			1
			ret
funcend

funcstart _uX_mm_slli_epi64_2, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			2
			ret
funcend

funcstart _uX_mm_slli_epi64_3, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			3
			ret
funcend

funcstart _uX_mm_slli_epi64_4, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			4
			ret
funcend

funcstart _uX_mm_slli_epi64_5, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			5
			ret
funcend

funcstart _uX_mm_slli_epi64_6, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			6
			ret
funcend

funcstart _uX_mm_slli_epi64_7, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			7
			ret
funcend

funcstart _uX_mm_slli_epi64_8, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			8
			ret
funcend

funcstart _uX_mm_slli_epi64_9, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			9
			ret
funcend

funcstart _uX_mm_slli_epi64_10, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			10
			ret
funcend

funcstart _uX_mm_slli_epi64_11, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			11
			ret
funcend

funcstart _uX_mm_slli_epi64_12, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			12
			ret
funcend

funcstart _uX_mm_slli_epi64_13, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			13
			ret
funcend

funcstart _uX_mm_slli_epi64_14, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			14
			ret
funcend

funcstart _uX_mm_slli_epi64_15, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			15
			ret
funcend

funcstart _uX_mm_slli_epi64_16, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			16
			ret
funcend

funcstart _uX_mm_slli_epi64_17, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			17
			ret
funcend

funcstart _uX_mm_slli_epi64_18, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			18
			ret
funcend

funcstart _uX_mm_slli_epi64_19, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			19
			ret
funcend

funcstart _uX_mm_slli_epi64_20, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			20
			ret
funcend

funcstart _uX_mm_slli_epi64_21, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			21
			ret
funcend

funcstart _uX_mm_slli_epi64_22, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			22
			ret
funcend

funcstart _uX_mm_slli_epi64_23, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			23
			ret
funcend

funcstart _uX_mm_slli_epi64_24, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			24
			ret
funcend

funcstart _uX_mm_slli_epi64_25, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			25
			ret
funcend

funcstart _uX_mm_slli_epi64_26, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			26
			ret
funcend

funcstart _uX_mm_slli_epi64_27, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			27
			ret
funcend

funcstart _uX_mm_slli_epi64_28, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			28
			ret
funcend

funcstart _uX_mm_slli_epi64_29, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			29
			ret
funcend

funcstart _uX_mm_slli_epi64_30, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			30
			ret
funcend

funcstart _uX_mm_slli_epi64_31, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			31
			ret
funcend

funcstart _uX_mm_slli_epi64_32, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			32
			ret
funcend

funcstart _uX_mm_slli_epi64_33, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			33
			ret
funcend

funcstart _uX_mm_slli_epi64_34, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			34
			ret
funcend

funcstart _uX_mm_slli_epi64_35, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			35
			ret
funcend

funcstart _uX_mm_slli_epi64_36, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			36
			ret
funcend

funcstart _uX_mm_slli_epi64_37, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			37
			ret
funcend

funcstart _uX_mm_slli_epi64_38, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			38
			ret
funcend

funcstart _uX_mm_slli_epi64_39, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			39
			ret
funcend

funcstart _uX_mm_slli_epi64_40, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			40
			ret
funcend

funcstart _uX_mm_slli_epi64_41, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			41
			ret
funcend

funcstart _uX_mm_slli_epi64_42, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			42
			ret
funcend

funcstart _uX_mm_slli_epi64_43, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			43
			ret
funcend

funcstart _uX_mm_slli_epi64_44, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			44
			ret
funcend

funcstart _uX_mm_slli_epi64_45, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			45
			ret
funcend

funcstart _uX_mm_slli_epi64_46, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			46
			ret
funcend

funcstart _uX_mm_slli_epi64_47, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			47
			ret
funcend

funcstart _uX_mm_slli_epi64_48, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			48
			ret
funcend

funcstart _uX_mm_slli_epi64_49, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			49
			ret
funcend

funcstart _uX_mm_slli_epi64_50, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			50
			ret
funcend

funcstart _uX_mm_slli_epi64_51, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			51
			ret
funcend

funcstart _uX_mm_slli_epi64_52, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			52
			ret
funcend

funcstart _uX_mm_slli_epi64_53, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			53
			ret
funcend

funcstart _uX_mm_slli_epi64_54, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			54
			ret
funcend

funcstart _uX_mm_slli_epi64_55, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			55
			ret
funcend

funcstart _uX_mm_slli_epi64_56, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			56
			ret
funcend

funcstart _uX_mm_slli_epi64_57, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			57
			ret
funcend

funcstart _uX_mm_slli_epi64_58, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			58
			ret
funcend

funcstart _uX_mm_slli_epi64_59, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			59
			ret
funcend

funcstart _uX_mm_slli_epi64_60, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			60
			ret
funcend

funcstart _uX_mm_slli_epi64_61, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			61
			ret
funcend

funcstart _uX_mm_slli_epi64_62, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			62
			ret
funcend

funcstart _uX_mm_slli_epi64_63, callconv, xmmword, < >, Inxmm_A:xmmword
			psllq			xmm0,			63
			ret
funcend

funcstart _uX_mm_slli_epi64, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128islliepi64jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128islliepi64jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128islliepi64_0 label size_t
			psllq			xmm0,			0
			ret
		_m128islliepi64_1 label size_t
			psllq			xmm0,			1
			ret
		_m128islliepi64_2 label size_t
			psllq			xmm0,			2
			ret
		_m128islliepi64_3 label size_t
			psllq			xmm0,			3
			ret
		_m128islliepi64_4 label size_t
			psllq			xmm0,			4
			ret
		_m128islliepi64_5 label size_t
			psllq			xmm0,			5
			ret
		_m128islliepi64_6 label size_t
			psllq			xmm0,			6
			ret
		_m128islliepi64_7 label size_t
			psllq			xmm0,			7
			ret
		_m128islliepi64_8 label size_t
			psllq			xmm0,			8
			ret
		_m128islliepi64_9 label size_t
			psllq			xmm0,			9
			ret
		_m128islliepi64_10 label size_t
			psllq			xmm0,			10
			ret
		_m128islliepi64_11 label size_t
			psllq			xmm0,			11
			ret
		_m128islliepi64_12 label size_t
			psllq			xmm0,			12
			ret
		_m128islliepi64_13 label size_t
			psllq			xmm0,			13
			ret
		_m128islliepi64_14 label size_t
			psllq			xmm0,			14
			ret
		_m128islliepi64_15 label size_t
			psllq			xmm0,			15
			ret
		_m128islliepi64_16 label size_t
			psllq			xmm0,			16
			ret
		_m128islliepi64_17 label size_t
			psllq			xmm0,			17
			ret
		_m128islliepi64_18 label size_t
			psllq			xmm0,			18
			ret
		_m128islliepi64_19 label size_t
			psllq			xmm0,			19
			ret
		_m128islliepi64_20 label size_t
			psllq			xmm0,			20
			ret
		_m128islliepi64_21 label size_t
			psllq			xmm0,			21
			ret
		_m128islliepi64_22 label size_t
			psllq			xmm0,			22
			ret
		_m128islliepi64_23 label size_t
			psllq			xmm0,			23
			ret
		_m128islliepi64_24 label size_t
			psllq			xmm0,			24
			ret
		_m128islliepi64_25 label size_t
			psllq			xmm0,			25
			ret
		_m128islliepi64_26 label size_t
			psllq			xmm0,			26
			ret
		_m128islliepi64_27 label size_t
			psllq			xmm0,			27
			ret
		_m128islliepi64_28 label size_t
			psllq			xmm0,			28
			ret
		_m128islliepi64_29 label size_t
			psllq			xmm0,			29
			ret
		_m128islliepi64_30 label size_t
			psllq			xmm0,			30
			ret
		_m128islliepi64_31 label size_t
			psllq			xmm0,			31
			ret
		_m128islliepi64_32 label size_t
			psllq			xmm0,			32
			ret
		_m128islliepi64_33 label size_t
			psllq			xmm0,			33
			ret
		_m128islliepi64_34 label size_t
			psllq			xmm0,			34
			ret
		_m128islliepi64_35 label size_t
			psllq			xmm0,			35
			ret
		_m128islliepi64_36 label size_t
			psllq			xmm0,			36
			ret
		_m128islliepi64_37 label size_t
			psllq			xmm0,			37
			ret
		_m128islliepi64_38 label size_t
			psllq			xmm0,			38
			ret
		_m128islliepi64_39 label size_t
			psllq			xmm0,			39
			ret
		_m128islliepi64_40 label size_t
			psllq			xmm0,			40
			ret
		_m128islliepi64_41 label size_t
			psllq			xmm0,			41
			ret
		_m128islliepi64_42 label size_t
			psllq			xmm0,			42
			ret
		_m128islliepi64_43 label size_t
			psllq			xmm0,			43
			ret
		_m128islliepi64_44 label size_t
			psllq			xmm0,			44
			ret
		_m128islliepi64_45 label size_t
			psllq			xmm0,			45
			ret
		_m128islliepi64_46 label size_t
			psllq			xmm0,			46
			ret
		_m128islliepi64_47 label size_t
			psllq			xmm0,			47
			ret
		_m128islliepi64_48 label size_t
			psllq			xmm0,			48
			ret
		_m128islliepi64_49 label size_t
			psllq			xmm0,			49
			ret
		_m128islliepi64_50 label size_t
			psllq			xmm0,			50
			ret
		_m128islliepi64_51 label size_t
			psllq			xmm0,			51
			ret
		_m128islliepi64_52 label size_t
			psllq			xmm0,			52
			ret
		_m128islliepi64_53 label size_t
			psllq			xmm0,			53
			ret
		_m128islliepi64_54 label size_t
			psllq			xmm0,			54
			ret
		_m128islliepi64_55 label size_t
			psllq			xmm0,			55
			ret
		_m128islliepi64_56 label size_t
			psllq			xmm0,			56
			ret
		_m128islliepi64_57 label size_t
			psllq			xmm0,			57
			ret
		_m128islliepi64_58 label size_t
			psllq			xmm0,			58
			ret
		_m128islliepi64_59 label size_t
			psllq			xmm0,			59
			ret
		_m128islliepi64_60 label size_t
			psllq			xmm0,			60
			ret
		_m128islliepi64_61 label size_t
			psllq			xmm0,			61
			ret
		_m128islliepi64_62 label size_t
			psllq			xmm0,			62
			ret
		_m128islliepi64_63 label size_t
			psllq			xmm0,			63
			ret
		;.endif

funcend

funcstart _uX_mm_srai_epi16_0, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			0
			ret
funcend

funcstart _uX_mm_srai_epi16_1, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			1
			ret
funcend

funcstart _uX_mm_srai_epi16_2, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			2
			ret
funcend

funcstart _uX_mm_srai_epi16_3, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			3
			ret
funcend

funcstart _uX_mm_srai_epi16_4, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			4
			ret
funcend

funcstart _uX_mm_srai_epi16_5, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			5
			ret
funcend

funcstart _uX_mm_srai_epi16_6, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			6
			ret
funcend

funcstart _uX_mm_srai_epi16_7, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			7
			ret
funcend

funcstart _uX_mm_srai_epi16_8, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			8
			ret
funcend

funcstart _uX_mm_srai_epi16_9, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			9
			ret
funcend

funcstart _uX_mm_srai_epi16_10, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			10
			ret
funcend

funcstart _uX_mm_srai_epi16_11, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			11
			ret
funcend

funcstart _uX_mm_srai_epi16_12, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			12
			ret
funcend

funcstart _uX_mm_srai_epi16_13, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			13
			ret
funcend

funcstart _uX_mm_srai_epi16_14, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			14
			ret
funcend

funcstart _uX_mm_srai_epi16_15, callconv, xmmword, < >, Inxmm_A:xmmword
			psraw			xmm0,			15
			ret
funcend

funcstart _uX_mm_srai_epi16, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_Imm:dword
			
		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128israiepi16jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128israiepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128israiepi16_0 label size_t
			psraw			xmm0,			0
			ret
		_m128israiepi16_1 label size_t
			psraw			xmm0,			1
			ret
		_m128israiepi16_2 label size_t
			psraw			xmm0,			2
			ret
		_m128israiepi16_3 label size_t
			psraw			xmm0,			3
			ret
		_m128israiepi16_4 label size_t
			psraw			xmm0,			4
			ret
		_m128israiepi16_5 label size_t
			psraw			xmm0,			5
			ret
		_m128israiepi16_6 label size_t
			psraw			xmm0,			6
			ret
		_m128israiepi16_7 label size_t
			psraw			xmm0,			7
			ret
		_m128israiepi16_8 label size_t
			psraw			xmm0,			8
			ret
		_m128israiepi16_9 label size_t
			psraw			xmm0,			9
			ret
		_m128israiepi16_10 label size_t
			psraw			xmm0,			10
			ret
		_m128israiepi16_11 label size_t
			psraw			xmm0,			11
			ret
		_m128israiepi16_12 label size_t
			psraw			xmm0,			12
			ret
		_m128israiepi16_13 label size_t
			psraw			xmm0,			13
			ret
		_m128israiepi16_14 label size_t
			psraw			xmm0,			14
			ret
		_m128israiepi16_15 label size_t
			psraw			xmm0,			15
			ret
		;.endif

funcend

funcstart _uX_mm_srai_epi32_0, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			0
			ret
funcend

funcstart _uX_mm_srai_epi32_1, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			1
			ret
funcend

funcstart _uX_mm_srai_epi32_2, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			2
			ret
funcend

funcstart _uX_mm_srai_epi32_3, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			3
			ret
funcend

funcstart _uX_mm_srai_epi32_4, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			4
			ret
funcend

funcstart _uX_mm_srai_epi32_5, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			5
			ret
funcend

funcstart _uX_mm_srai_epi32_6, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			6
			ret
funcend

funcstart _uX_mm_srai_epi32_7, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			7
			ret
funcend

funcstart _uX_mm_srai_epi32_8, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			8
			ret
funcend

funcstart _uX_mm_srai_epi32_9, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			9
			ret
funcend

funcstart _uX_mm_srai_epi32_10, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			10
			ret
funcend

funcstart _uX_mm_srai_epi32_11, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			11
			ret
funcend

funcstart _uX_mm_srai_epi32_12, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			12
			ret
funcend

funcstart _uX_mm_srai_epi32_13, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			13
			ret
funcend

funcstart _uX_mm_srai_epi32_14, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			14
			ret
funcend

funcstart _uX_mm_srai_epi32_15, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			15
			ret
funcend

funcstart _uX_mm_srai_epi32_16, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			16
			ret
funcend

funcstart _uX_mm_srai_epi32_17, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			17
			ret
funcend

funcstart _uX_mm_srai_epi32_18, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			18
			ret
funcend

funcstart _uX_mm_srai_epi32_19, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			19
			ret
funcend

funcstart _uX_mm_srai_epi32_20, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			20
			ret
funcend

funcstart _uX_mm_srai_epi32_21, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			21
			ret
funcend

funcstart _uX_mm_srai_epi32_22, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			22
			ret
funcend

funcstart _uX_mm_srai_epi32_23, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			23
			ret
funcend

funcstart _uX_mm_srai_epi32_24, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			24
			ret
funcend

funcstart _uX_mm_srai_epi32_25, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			25
			ret
funcend

funcstart _uX_mm_srai_epi32_26, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			26
			ret
funcend

funcstart _uX_mm_srai_epi32_27, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			27
			ret
funcend

funcstart _uX_mm_srai_epi32_28, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			28
			ret
funcend

funcstart _uX_mm_srai_epi32_29, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			29
			ret
funcend

funcstart _uX_mm_srai_epi32_30, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			30
			ret
funcend

funcstart _uX_mm_srai_epi32_31, callconv, xmmword, < >, Inxmm_A:xmmword
			psrad			xmm0,			31
			ret
funcend

funcstart _uX_mm_srai_epi32, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128israiepi32jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128israiepi32jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128israiepi32_0 label size_t
			psrad			xmm0,			0
			ret
		_m128israiepi32_1 label size_t
			psrad			xmm0,			1
			ret
		_m128israiepi32_2 label size_t
			psrad			xmm0,			2
			ret
		_m128israiepi32_3 label size_t
			psrad			xmm0,			3
			ret
		_m128israiepi32_4 label size_t
			psrad			xmm0,			4
			ret
		_m128israiepi32_5 label size_t
			psrad			xmm0,			5
			ret
		_m128israiepi32_6 label size_t
			psrad			xmm0,			6
			ret
		_m128israiepi32_7 label size_t
			psrad			xmm0,			7
			ret
		_m128israiepi32_8 label size_t
			psrad			xmm0,			8
			ret
		_m128israiepi32_9 label size_t
			psrad			xmm0,			9
			ret
		_m128israiepi32_10 label size_t
			psrad			xmm0,			10
			ret
		_m128israiepi32_11 label size_t
			psrad			xmm0,			11
			ret
		_m128israiepi32_12 label size_t
			psrad			xmm0,			12
			ret
		_m128israiepi32_13 label size_t
			psrad			xmm0,			13
			ret
		_m128israiepi32_14 label size_t
			psrad			xmm0,			14
			ret
		_m128israiepi32_15 label size_t
			psrad			xmm0,			15
			ret
		_m128israiepi32_16 label size_t
			psrad			xmm0,			16
			ret
		_m128israiepi32_17 label size_t
			psrad			xmm0,			17
			ret
		_m128israiepi32_18 label size_t
			psrad			xmm0,			18
			ret
		_m128israiepi32_19 label size_t
			psrad			xmm0,			19
			ret
		_m128israiepi32_20 label size_t
			psrad			xmm0,			20
			ret
		_m128israiepi32_21 label size_t
			psrad			xmm0,			21
			ret
		_m128israiepi32_22 label size_t
			psrad			xmm0,			22
			ret
		_m128israiepi32_23 label size_t
			psrad			xmm0,			23
			ret
		_m128israiepi32_24 label size_t
			psrad			xmm0,			24
			ret
		_m128israiepi32_25 label size_t
			psrad			xmm0,			25
			ret
		_m128israiepi32_26 label size_t
			psrad			xmm0,			26
			ret
		_m128israiepi32_27 label size_t
			psrad			xmm0,			27
			ret
		_m128israiepi32_28 label size_t
			psrad			xmm0,			28
			ret
		_m128israiepi32_29 label size_t
			psrad			xmm0,			29
			ret
		_m128israiepi32_30 label size_t
			psrad			xmm0,			30
			ret
		_m128israiepi32_31 label size_t
			psrad			xmm0,			31
			ret
		;.endif

funcend

funcstart _uX_mm_srli_si128_0, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			0
			ret
funcend

funcstart _uX_mm_srli_si128_1, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			1
			ret
funcend

funcstart _uX_mm_srli_si128_2, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			2
			ret
funcend

funcstart _uX_mm_srli_si128_3, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			3
			ret
funcend

funcstart _uX_mm_srli_si128_4, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			4
			ret
funcend

funcstart _uX_mm_srli_si128_5, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			5
			ret
funcend

funcstart _uX_mm_srli_si128_6, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			6
			ret
funcend

funcstart _uX_mm_srli_si128_7, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			7
			ret
funcend

funcstart _uX_mm_srli_si128_8, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			8
			ret
funcend

funcstart _uX_mm_srli_si128_9, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			9
			ret
funcend

funcstart _uX_mm_srli_si128_10, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			10
			ret
funcend

funcstart _uX_mm_srli_si128_11, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			11
			ret
funcend

funcstart _uX_mm_srli_si128_12, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			12
			ret
funcend

funcstart _uX_mm_srli_si128_13, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			13
			ret
funcend

funcstart _uX_mm_srli_si128_14, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			14
			ret
funcend

funcstart _uX_mm_srli_si128_15, callconv, xmmword, < >, Inxmm_A:xmmword
			psrldq			xmm0,			15
			ret
funcend

funcstart _uX_mm_srli_si128, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_Imm:dword
				
		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128isrlisi128jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128isrlisi128jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128isrlisi128_0 label size_t
			psrldq			xmm0,			0
			ret
		_m128isrlisi128_1 label size_t
			psrldq			xmm0,			1
			ret
		_m128isrlisi128_2 label size_t
			psrldq			xmm0,			2
			ret
		_m128isrlisi128_3 label size_t
			psrldq			xmm0,			3
			ret
		_m128isrlisi128_4 label size_t
			psrldq			xmm0,			4
			ret
		_m128isrlisi128_5 label size_t
			psrldq			xmm0,			5
			ret
		_m128isrlisi128_6 label size_t
			psrldq			xmm0,			6
			ret
		_m128isrlisi128_7 label size_t
			psrldq			xmm0,			7
			ret
		_m128isrlisi128_8 label size_t
			psrldq			xmm0,			8
			ret
		_m128isrlisi128_9 label size_t
			psrldq			xmm0,			9
			ret
		_m128isrlisi128_10 label size_t
			psrldq			xmm0,			10
			ret
		_m128isrlisi128_11 label size_t
			psrldq			xmm0,			11
			ret
		_m128isrlisi128_12 label size_t
			psrldq			xmm0,			12
			ret
		_m128isrlisi128_13 label size_t
			psrldq			xmm0,			13
			ret
		_m128isrlisi128_14 label size_t
			psrldq			xmm0,			14
			ret
		_m128isrlisi128_15 label size_t
			psrldq			xmm0,			15
			ret
		;.endif

funcend

funcstart _uX_mm_srli_epi16_0, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			0
			ret
funcend

funcstart _uX_mm_srli_epi16_1, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			1
			ret
funcend

funcstart _uX_mm_srli_epi16_2, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			2
			ret
funcend

funcstart _uX_mm_srli_epi16_3, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			3
			ret
funcend

funcstart _uX_mm_srli_epi16_4, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			4
			ret
funcend

funcstart _uX_mm_srli_epi16_5, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			5
			ret
funcend

funcstart _uX_mm_srli_epi16_6, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			6
			ret
funcend

funcstart _uX_mm_srli_epi16_7, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			7
			ret
funcend

funcstart _uX_mm_srli_epi16_8, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			8
			ret
funcend

funcstart _uX_mm_srli_epi16_9, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			9
			ret
funcend

funcstart _uX_mm_srli_epi16_10, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			10
			ret
funcend

funcstart _uX_mm_srli_epi16_11, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			11
			ret
funcend

funcstart _uX_mm_srli_epi16_12, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			12
			ret
funcend

funcstart _uX_mm_srli_epi16_13, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			13
			ret
funcend

funcstart _uX_mm_srli_epi16_14, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			14
			ret
funcend

funcstart _uX_mm_srli_epi16_15, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlw			xmm0,			15
			ret
funcend

funcstart _uX_mm_srli_epi16, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128isrliepi16jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128isrliepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128isrliepi16_0 label size_t
			psrlw			xmm0,			0
			ret
		_m128isrliepi16_1 label size_t
			psrlw			xmm0,			1
			ret
		_m128isrliepi16_2 label size_t
			psrlw			xmm0,			2
			ret
		_m128isrliepi16_3 label size_t
			psrlw			xmm0,			3
			ret
		_m128isrliepi16_4 label size_t
			psrlw			xmm0,			4
			ret
		_m128isrliepi16_5 label size_t
			psrlw			xmm0,			5
			ret
		_m128isrliepi16_6 label size_t
			psrlw			xmm0,			6
			ret
		_m128isrliepi16_7 label size_t
			psrlw			xmm0,			7
			ret
		_m128isrliepi16_8 label size_t
			psrlw			xmm0,			8
			ret
		_m128isrliepi16_9 label size_t
			psrlw			xmm0,			9
			ret
		_m128isrliepi16_10 label size_t
			psrlw			xmm0,			10
			ret
		_m128isrliepi16_11 label size_t
			psrlw			xmm0,			11
			ret
		_m128isrliepi16_12 label size_t
			psrlw			xmm0,			12
			ret
		_m128isrliepi16_13 label size_t
			psrlw			xmm0,			13
			ret
		_m128isrliepi16_14 label size_t
			psrlw			xmm0,			14
			ret
		_m128isrliepi16_15 label size_t
			psrlw			xmm0,			15
			ret
		;.endif

funcend

funcstart _uX_mm_srli_epi32_0, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			0
			ret
funcend

funcstart _uX_mm_srli_epi32_1, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			1
			ret
funcend

funcstart _uX_mm_srli_epi32_2, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			2
			ret
funcend

funcstart _uX_mm_srli_epi32_3, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			3
			ret
funcend

funcstart _uX_mm_srli_epi32_4, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			4
			ret
funcend

funcstart _uX_mm_srli_epi32_5, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			5
			ret
funcend

funcstart _uX_mm_srli_epi32_6, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			6
			ret
funcend

funcstart _uX_mm_srli_epi32_7, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			7
			ret
funcend

funcstart _uX_mm_srli_epi32_8, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			8
			ret
funcend

funcstart _uX_mm_srli_epi32_9, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			9
			ret
funcend

funcstart _uX_mm_srli_epi32_10, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			10
			ret
funcend

funcstart _uX_mm_srli_epi32_11, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			11
			ret
funcend

funcstart _uX_mm_srli_epi32_12, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			12
			ret
funcend

funcstart _uX_mm_srli_epi32_13, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			13
			ret
funcend

funcstart _uX_mm_srli_epi32_14, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			14
			ret
funcend

funcstart _uX_mm_srli_epi32_15, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			15
			ret
funcend

funcstart _uX_mm_srli_epi32_16, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			16
			ret
funcend

funcstart _uX_mm_srli_epi32_17, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			17
			ret
funcend

funcstart _uX_mm_srli_epi32_18, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			18
			ret
funcend

funcstart _uX_mm_srli_epi32_19, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			19
			ret
funcend

funcstart _uX_mm_srli_epi32_20, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			20
			ret
funcend

funcstart _uX_mm_srli_epi32_21, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			21
			ret
funcend

funcstart _uX_mm_srli_epi32_22, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			22
			ret
funcend

funcstart _uX_mm_srli_epi32_23, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			23
			ret
funcend

funcstart _uX_mm_srli_epi32_24, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			24
			ret
funcend

funcstart _uX_mm_srli_epi32_25, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			25
			ret
funcend

funcstart _uX_mm_srli_epi32_26, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			26
			ret
funcend

funcstart _uX_mm_srli_epi32_27, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			27
			ret
funcend

funcstart _uX_mm_srli_epi32_28, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			28
			ret
funcend

funcstart _uX_mm_srli_epi32_29, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			29
			ret
funcend

funcstart _uX_mm_srli_epi32_30, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			30
			ret
funcend

funcstart _uX_mm_srli_epi32_31, callconv, xmmword, < >, Inxmm_A:xmmword
			psrld			xmm0,			31
			ret
funcend

funcstart _uX_mm_srli_epi32, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128isrliepi32jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128isrliepi32jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128isrliepi32_0 label size_t
			psrld			xmm0,			0
			ret
		_m128isrliepi32_1 label size_t
			psrld			xmm0,			1
			ret
		_m128isrliepi32_2 label size_t
			psrld			xmm0,			2
			ret
		_m128isrliepi32_3 label size_t
			psrld			xmm0,			3
			ret
		_m128isrliepi32_4 label size_t
			psrld			xmm0,			4
			ret
		_m128isrliepi32_5 label size_t
			psrld			xmm0,			5
			ret
		_m128isrliepi32_6 label size_t
			psrld			xmm0,			6
			ret
		_m128isrliepi32_7 label size_t
			psrld			xmm0,			7
			ret
		_m128isrliepi32_8 label size_t
			psrld			xmm0,			8
			ret
		_m128isrliepi32_9 label size_t
			psrld			xmm0,			9
			ret
		_m128isrliepi32_10 label size_t
			psrld			xmm0,			10
			ret
		_m128isrliepi32_11 label size_t
			psrld			xmm0,			11
			ret
		_m128isrliepi32_12 label size_t
			psrld			xmm0,			12
			ret
		_m128isrliepi32_13 label size_t
			psrld			xmm0,			13
			ret
		_m128isrliepi32_14 label size_t
			psrld			xmm0,			14
			ret
		_m128isrliepi32_15 label size_t
			psrld			xmm0,			15
			ret
		_m128isrliepi32_16 label size_t
			psrld			xmm0,			16
			ret
		_m128isrliepi32_17 label size_t
			psrld			xmm0,			17
			ret
		_m128isrliepi32_18 label size_t
			psrld			xmm0,			18
			ret
		_m128isrliepi32_19 label size_t
			psrld			xmm0,			19
			ret
		_m128isrliepi32_20 label size_t
			psrld			xmm0,			20
			ret
		_m128isrliepi32_21 label size_t
			psrld			xmm0,			21
			ret
		_m128isrliepi32_22 label size_t
			psrld			xmm0,			22
			ret
		_m128isrliepi32_23 label size_t
			psrld			xmm0,			23
			ret
		_m128isrliepi32_24 label size_t
			psrld			xmm0,			24
			ret
		_m128isrliepi32_25 label size_t
			psrld			xmm0,			25
			ret
		_m128isrliepi32_26 label size_t
			psrld			xmm0,			26
			ret
		_m128isrliepi32_27 label size_t
			psrld			xmm0,			27
			ret
		_m128isrliepi32_28 label size_t
			psrld			xmm0,			28
			ret
		_m128isrliepi32_29 label size_t
			psrld			xmm0,			29
			ret
		_m128isrliepi32_30 label size_t
			psrld			xmm0,			30
			ret
		_m128isrliepi32_31 label size_t
			psrld			xmm0,			31
			ret
		;.endif

funcend

funcstart _uX_mm_srli_epi64_0, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			0
			ret
funcend

funcstart _uX_mm_srli_epi64_1, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			1
			ret
funcend

funcstart _uX_mm_srli_epi64_2, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			2
			ret
funcend

funcstart _uX_mm_srli_epi64_3, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			3
			ret
funcend

funcstart _uX_mm_srli_epi64_4, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			4
			ret
funcend

funcstart _uX_mm_srli_epi64_5, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			5
			ret
funcend

funcstart _uX_mm_srli_epi64_6, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			6
			ret
funcend

funcstart _uX_mm_srli_epi64_7, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			7
			ret
funcend

funcstart _uX_mm_srli_epi64_8, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			8
			ret
funcend

funcstart _uX_mm_srli_epi64_9, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			9
			ret
funcend

funcstart _uX_mm_srli_epi64_10, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			10
			ret
funcend

funcstart _uX_mm_srli_epi64_11, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			11
			ret
funcend

funcstart _uX_mm_srli_epi64_12, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			12
			ret
funcend

funcstart _uX_mm_srli_epi64_13, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			13
			ret
funcend

funcstart _uX_mm_srli_epi64_14, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			14
			ret
funcend

funcstart _uX_mm_srli_epi64_15, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			15
			ret
funcend

funcstart _uX_mm_srli_epi64_16, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			16
			ret
funcend

funcstart _uX_mm_srli_epi64_17, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			17
			ret
funcend

funcstart _uX_mm_srli_epi64_18, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			18
			ret
funcend

funcstart _uX_mm_srli_epi64_19, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			19
			ret
funcend

funcstart _uX_mm_srli_epi64_20, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			20
			ret
funcend

funcstart _uX_mm_srli_epi64_21, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			21
			ret
funcend

funcstart _uX_mm_srli_epi64_22, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			22
			ret
funcend

funcstart _uX_mm_srli_epi64_23, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			23
			ret
funcend

funcstart _uX_mm_srli_epi64_24, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			24
			ret
funcend

funcstart _uX_mm_srli_epi64_25, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			25
			ret
funcend

funcstart _uX_mm_srli_epi64_26, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			26
			ret
funcend

funcstart _uX_mm_srli_epi64_27, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			27
			ret
funcend

funcstart _uX_mm_srli_epi64_28, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			28
			ret
funcend

funcstart _uX_mm_srli_epi64_29, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			29
			ret
funcend

funcstart _uX_mm_srli_epi64_30, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			30
			ret
funcend

funcstart _uX_mm_srli_epi64_31, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			31
			ret
funcend

funcstart _uX_mm_srli_epi64_32, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			32
			ret
funcend

funcstart _uX_mm_srli_epi64_33, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			33
			ret
funcend

funcstart _uX_mm_srli_epi64_34, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			34
			ret
funcend

funcstart _uX_mm_srli_epi64_35, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			35
			ret
funcend

funcstart _uX_mm_srli_epi64_36, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			36
			ret
funcend

funcstart _uX_mm_srli_epi64_37, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			37
			ret
funcend

funcstart _uX_mm_srli_epi64_38, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			38
			ret
funcend

funcstart _uX_mm_srli_epi64_39, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			39
			ret
funcend

funcstart _uX_mm_srli_epi64_40, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			40
			ret
funcend

funcstart _uX_mm_srli_epi64_41, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			41
			ret
funcend

funcstart _uX_mm_srli_epi64_42, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			42
			ret
funcend

funcstart _uX_mm_srli_epi64_43, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			43
			ret
funcend

funcstart _uX_mm_srli_epi64_44, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			44
			ret
funcend

funcstart _uX_mm_srli_epi64_45, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			45
			ret
funcend

funcstart _uX_mm_srli_epi64_46, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			46
			ret
funcend

funcstart _uX_mm_srli_epi64_47, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			47
			ret
funcend

funcstart _uX_mm_srli_epi64_48, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			48
			ret
funcend

funcstart _uX_mm_srli_epi64_49, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			49
			ret
funcend

funcstart _uX_mm_srli_epi64_50, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			50
			ret
funcend

funcstart _uX_mm_srli_epi64_51, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			51
			ret
funcend

funcstart _uX_mm_srli_epi64_52, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			52
			ret
funcend

funcstart _uX_mm_srli_epi64_53, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			53
			ret
funcend

funcstart _uX_mm_srli_epi64_54, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			54
			ret
funcend

funcstart _uX_mm_srli_epi64_55, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			55
			ret
funcend

funcstart _uX_mm_srli_epi64_56, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			56
			ret
funcend

funcstart _uX_mm_srli_epi64_57, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			57
			ret
funcend

funcstart _uX_mm_srli_epi64_58, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			58
			ret
funcend

funcstart _uX_mm_srli_epi64_59, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			59
			ret
funcend

funcstart _uX_mm_srli_epi64_60, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			60
			ret
funcend

funcstart _uX_mm_srli_epi64_61, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			61
			ret
funcend

funcstart _uX_mm_srli_epi64_62, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			62
			ret
funcend

funcstart _uX_mm_srli_epi64_63, callconv, xmmword, < >, Inxmm_A:xmmword
			psrlq			xmm0,			63
			ret
funcend

funcstart _uX_mm_srli_epi64, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128isrliepi64jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128isrliepi64jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128isrliepi64_0 label size_t
			psrlq			xmm0,			0
			ret
		_m128isrliepi64_1 label size_t
			psrlq			xmm0,			1
			ret
		_m128isrliepi64_2 label size_t
			psrlq			xmm0,			2
			ret
		_m128isrliepi64_3 label size_t
			psrlq			xmm0,			3
			ret
		_m128isrliepi64_4 label size_t
			psrlq			xmm0,			4
			ret
		_m128isrliepi64_5 label size_t
			psrlq			xmm0,			5
			ret
		_m128isrliepi64_6 label size_t
			psrlq			xmm0,			6
			ret
		_m128isrliepi64_7 label size_t
			psrlq			xmm0,			7
			ret
		_m128isrliepi64_8 label size_t
			psrlq			xmm0,			8
			ret
		_m128isrliepi64_9 label size_t
			psrlq			xmm0,			9
			ret
		_m128isrliepi64_10 label size_t
			psrlq			xmm0,			10
			ret
		_m128isrliepi64_11 label size_t
			psrlq			xmm0,			11
			ret
		_m128isrliepi64_12 label size_t
			psrlq			xmm0,			12
			ret
		_m128isrliepi64_13 label size_t
			psrlq			xmm0,			13
			ret
		_m128isrliepi64_14 label size_t
			psrlq			xmm0,			14
			ret
		_m128isrliepi64_15 label size_t
			psrlq			xmm0,			15
			ret
		_m128isrliepi64_16 label size_t
			psrlq			xmm0,			16
			ret
		_m128isrliepi64_17 label size_t
			psrlq			xmm0,			17
			ret
		_m128isrliepi64_18 label size_t
			psrlq			xmm0,			18
			ret
		_m128isrliepi64_19 label size_t
			psrlq			xmm0,			19
			ret
		_m128isrliepi64_20 label size_t
			psrlq			xmm0,			20
			ret
		_m128isrliepi64_21 label size_t
			psrlq			xmm0,			21
			ret
		_m128isrliepi64_22 label size_t
			psrlq			xmm0,			22
			ret
		_m128isrliepi64_23 label size_t
			psrlq			xmm0,			23
			ret
		_m128isrliepi64_24 label size_t
			psrlq			xmm0,			24
			ret
		_m128isrliepi64_25 label size_t
			psrlq			xmm0,			25
			ret
		_m128isrliepi64_26 label size_t
			psrlq			xmm0,			26
			ret
		_m128isrliepi64_27 label size_t
			psrlq			xmm0,			27
			ret
		_m128isrliepi64_28 label size_t
			psrlq			xmm0,			28
			ret
		_m128isrliepi64_29 label size_t
			psrlq			xmm0,			29
			ret
		_m128isrliepi64_30 label size_t
			psrlq			xmm0,			30
			ret
		_m128isrliepi64_31 label size_t
			psrlq			xmm0,			31
			ret
		_m128isrliepi64_32 label size_t
			psrlq			xmm0,			32
			ret
		_m128isrliepi64_33 label size_t
			psrlq			xmm0,			33
			ret
		_m128isrliepi64_34 label size_t
			psrlq			xmm0,			34
			ret
		_m128isrliepi64_35 label size_t
			psrlq			xmm0,			35
			ret
		_m128isrliepi64_36 label size_t
			psrlq			xmm0,			36
			ret
		_m128isrliepi64_37 label size_t
			psrlq			xmm0,			37
			ret
		_m128isrliepi64_38 label size_t
			psrlq			xmm0,			38
			ret
		_m128isrliepi64_39 label size_t
			psrlq			xmm0,			39
			ret
		_m128isrliepi64_40 label size_t
			psrlq			xmm0,			40
			ret
		_m128isrliepi64_41 label size_t
			psrlq			xmm0,			41
			ret
		_m128isrliepi64_42 label size_t
			psrlq			xmm0,			42
			ret
		_m128isrliepi64_43 label size_t
			psrlq			xmm0,			43
			ret
		_m128isrliepi64_44 label size_t
			psrlq			xmm0,			44
			ret
		_m128isrliepi64_45 label size_t
			psrlq			xmm0,			45
			ret
		_m128isrliepi64_46 label size_t
			psrlq			xmm0,			46
			ret
		_m128isrliepi64_47 label size_t
			psrlq			xmm0,			47
			ret
		_m128isrliepi64_48 label size_t
			psrlq			xmm0,			48
			ret
		_m128isrliepi64_49 label size_t
			psrlq			xmm0,			49
			ret
		_m128isrliepi64_50 label size_t
			psrlq			xmm0,			50
			ret
		_m128isrliepi64_51 label size_t
			psrlq			xmm0,			51
			ret
		_m128isrliepi64_52 label size_t
			psrlq			xmm0,			52
			ret
		_m128isrliepi64_53 label size_t
			psrlq			xmm0,			53
			ret
		_m128isrliepi64_54 label size_t
			psrlq			xmm0,			54
			ret
		_m128isrliepi64_55 label size_t
			psrlq			xmm0,			55
			ret
		_m128isrliepi64_56 label size_t
			psrlq			xmm0,			56
			ret
		_m128isrliepi64_57 label size_t
			psrlq			xmm0,			57
			ret
		_m128isrliepi64_58 label size_t
			psrlq			xmm0,			58
			ret
		_m128isrliepi64_59 label size_t
			psrlq			xmm0,			59
			ret
		_m128isrliepi64_60 label size_t
			psrlq			xmm0,			60
			ret
		_m128isrliepi64_61 label size_t
			psrlq			xmm0,			61
			ret
		_m128isrliepi64_62 label size_t
			psrlq			xmm0,			62
			ret
		_m128isrliepi64_63 label size_t
			psrlq			xmm0,			63
			ret
		;.endif

funcend

endif ;__MIC__

	end
