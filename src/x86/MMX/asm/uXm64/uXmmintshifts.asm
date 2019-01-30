
	include uXx86asm.inc
	
	.mmx
	;option arch:mmx
	option evex:0
	
ifdef __X32__

	.data?

	.data
	
		alignsize_t
		m64sllipi16jmptable isize_t	offset m64sllipi16_0, offset m64sllipi16_1, offset m64sllipi16_2, offset m64sllipi16_3, offset m64sllipi16_4, \
										offset m64sllipi16_5, offset m64sllipi16_6, offset m64sllipi16_7, offset m64sllipi16_8, offset m64sllipi16_9, \
										offset m64sllipi16_10, offset m64sllipi16_11, offset m64sllipi16_12, offset m64sllipi16_13, offset m64sllipi16_14, \
										offset m64sllipi16_15			
		
		alignsize_t
		m64sllipi32jmptable isize_t	offset m64sllipi32_0, offset m64sllipi32_1, offset m64sllipi32_2, offset m64sllipi32_3, offset m64sllipi32_4, \
										offset m64sllipi32_5, offset m64sllipi32_6, offset m64sllipi32_7, offset m64sllipi32_8, offset m64sllipi32_9, \
										offset m64sllipi32_10, offset m64sllipi32_11, offset m64sllipi32_12, offset m64sllipi32_13, offset m64sllipi32_14, \
										offset m64sllipi32_15, offset m64sllipi32_16, offset m64sllipi32_17, offset m64sllipi32_18, offset m64sllipi32_19, \
										offset m64sllipi32_20, offset m64sllipi32_21, offset m64sllipi32_22, offset m64sllipi32_23, offset m64sllipi32_24, \
										offset m64sllipi32_25, offset m64sllipi32_26, offset m64sllipi32_27, offset m64sllipi32_28, offset m64sllipi32_29, \
										offset m64sllipi32_30, offset m64sllipi32_31
		
		alignsize_t
		m64sllipi64jmptable isize_t	offset m64sllipi64_0, offset m64sllipi64_1, offset m64sllipi64_2, offset m64sllipi64_3, offset m64sllipi64_4, \
										offset m64sllipi64_5, offset m64sllipi64_6, offset m64sllipi64_7, offset m64sllipi64_8, offset m64sllipi64_9, \
										offset m64sllipi64_10, offset m64sllipi64_11, offset m64sllipi64_12, offset m64sllipi64_13, offset m64sllipi64_14, \
										offset m64sllipi64_15, offset m64sllipi64_16, offset m64sllipi64_17, offset m64sllipi64_18, offset m64sllipi64_19, \
										offset m64sllipi64_20, offset m64sllipi64_21, offset m64sllipi64_22, offset m64sllipi64_23, offset m64sllipi64_24, \
										offset m64sllipi64_25, offset m64sllipi64_26, offset m64sllipi64_27, offset m64sllipi64_28, offset m64sllipi64_29, \
										offset m64sllipi64_30, offset m64sllipi64_31, offset m64sllipi64_32, offset m64sllipi64_33, offset m64sllipi64_34, \
										offset m64sllipi64_35, offset m64sllipi64_36, offset m64sllipi64_37, offset m64sllipi64_38, offset m64sllipi64_39, \
										offset m64sllipi64_40, offset m64sllipi64_41, offset m64sllipi64_42, offset m64sllipi64_43, offset m64sllipi64_44, \
										offset m64sllipi64_45, offset m64sllipi64_46, offset m64sllipi64_47, offset m64sllipi64_48, offset m64sllipi64_49, \
										offset m64sllipi64_50, offset m64sllipi64_51, offset m64sllipi64_52, offset m64sllipi64_53, offset m64sllipi64_54, \
										offset m64sllipi64_55, offset m64sllipi64_56, offset m64sllipi64_57, offset m64sllipi64_58, offset m64sllipi64_59, \
										offset m64sllipi64_60, offset m64sllipi64_61, offset m64sllipi64_62, offset m64sllipi64_63
		
		alignsize_t
		m64sraipi16jmptable isize_t	offset m64sraipi16_0, offset m64sraipi16_1, offset m64sraipi16_2, offset m64sraipi16_3, offset m64sraipi16_4, \
										offset m64sraipi16_5, offset m64sraipi16_6, offset m64sraipi16_7, offset m64sraipi16_8, offset m64sraipi16_9, \
										offset m64sraipi16_10, offset m64sraipi16_11, offset m64sraipi16_12, offset m64sraipi16_13, offset m64sraipi16_14, \
										offset m64sraipi16_15			
		
		alignsize_t
		m64sraipi32jmptable isize_t	offset m64sraipi32_0, offset m64sraipi32_1, offset m64sraipi32_2, offset m64sraipi32_3, offset m64sraipi32_4, \
										offset m64sraipi32_5, offset m64sraipi32_6, offset m64sraipi32_7, offset m64sraipi32_8, offset m64sraipi32_9, \
										offset m64sraipi32_10, offset m64sraipi32_11, offset m64sraipi32_12, offset m64sraipi32_13, offset m64sraipi32_14, \
										offset m64sraipi32_15, offset m64sraipi32_16, offset m64sraipi32_17, offset m64sraipi32_18, offset m64sraipi32_19, \
										offset m64sraipi32_20, offset m64sraipi32_21, offset m64sraipi32_22, offset m64sraipi32_23, offset m64sraipi32_24, \
										offset m64sraipi32_25, offset m64sraipi32_26, offset m64sraipi32_27, offset m64sraipi32_28, offset m64sraipi32_29, \
										offset m64sraipi32_30, offset m64sraipi32_31
		
		alignsize_t
		m64srlisi128jmptable isize_t	offset m64srlisi128_0, offset m64srlisi128_1, offset m64srlisi128_2, offset m64srlisi128_3, offset m64srlisi128_4, \
										offset m64srlisi128_5, offset m64srlisi128_6, offset m64srlisi128_7, offset m64srlisi128_8, offset m64srlisi128_9, \
										offset m64srlisi128_10, offset m64srlisi128_11, offset m64srlisi128_12, offset m64srlisi128_13, offset m64srlisi128_14, \
										offset m64srlisi128_15			
		
		alignsize_t
		m64srlipi16jmptable isize_t	offset m64srlipi16_0, offset m64srlipi16_1, offset m64srlipi16_2, offset m64srlipi16_3, offset m64srlipi16_4, \
										offset m64srlipi16_5, offset m64srlipi16_6, offset m64srlipi16_7, offset m64srlipi16_8, offset m64srlipi16_9, \
										offset m64srlipi16_10, offset m64srlipi16_11, offset m64srlipi16_12, offset m64srlipi16_13, offset m64srlipi16_14, \
										offset m64srlipi16_15			
		
		alignsize_t
		m64srlipi32jmptable isize_t	offset m64srlipi32_0, offset m64srlipi32_1, offset m64srlipi32_2, offset m64srlipi32_3, offset m64srlipi32_4, \
										offset m64srlipi32_5, offset m64srlipi32_6, offset m64srlipi32_7, offset m64srlipi32_8, offset m64srlipi32_9, \
										offset m64srlipi32_10, offset m64srlipi32_11, offset m64srlipi32_12, offset m64srlipi32_13, offset m64srlipi32_14, \
										offset m64srlipi32_15, offset m64srlipi32_16, offset m64srlipi32_17, offset m64srlipi32_18, offset m64srlipi32_19, \
										offset m64srlipi32_20, offset m64srlipi32_21, offset m64srlipi32_22, offset m64srlipi32_23, offset m64srlipi32_24, \
										offset m64srlipi32_25, offset m64srlipi32_26, offset m64srlipi32_27, offset m64srlipi32_28, offset m64srlipi32_29, \
										offset m64srlipi32_30, offset m64srlipi32_31
		
		alignsize_t
		m64srlipi64jmptable isize_t	offset m64srlipi64_0, offset m64srlipi64_1, offset m64srlipi64_2, offset m64srlipi64_3, offset m64srlipi64_4, \
										offset m64srlipi64_5, offset m64srlipi64_6, offset m64srlipi64_7, offset m64srlipi64_8, offset m64srlipi64_9, \
										offset m64srlipi64_10, offset m64srlipi64_11, offset m64srlipi64_12, offset m64srlipi64_13, offset m64srlipi64_14, \
										offset m64srlipi64_15, offset m64srlipi64_16, offset m64srlipi64_17, offset m64srlipi64_18, offset m64srlipi64_19, \
										offset m64srlipi64_20, offset m64srlipi64_21, offset m64srlipi64_22, offset m64srlipi64_23, offset m64srlipi64_24, \
										offset m64srlipi64_25, offset m64srlipi64_26, offset m64srlipi64_27, offset m64srlipi64_28, offset m64srlipi64_29, \
										offset m64srlipi64_30, offset m64srlipi64_31, offset m64srlipi64_32, offset m64srlipi64_33, offset m64srlipi64_34, \
										offset m64srlipi64_35, offset m64srlipi64_36, offset m64srlipi64_37, offset m64srlipi64_38, offset m64srlipi64_39, \
										offset m64srlipi64_40, offset m64srlipi64_41, offset m64srlipi64_42, offset m64srlipi64_43, offset m64srlipi64_44, \
										offset m64srlipi64_45, offset m64srlipi64_46, offset m64srlipi64_47, offset m64srlipi64_48, offset m64srlipi64_49, \
										offset m64srlipi64_50, offset m64srlipi64_51, offset m64srlipi64_52, offset m64srlipi64_53, offset m64srlipi64_54, \
										offset m64srlipi64_55, offset m64srlipi64_56, offset m64srlipi64_57, offset m64srlipi64_58, offset m64srlipi64_59, \
										offset m64srlipi64_60, offset m64srlipi64_61, offset m64srlipi64_62, offset m64srlipi64_63
		
	.code
	
	alignmmfieldproc
	callconvopt

funcstart _uX_m64_psllwi_0, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			0
			ret
funcend

funcstart _uX_m64_psllwi_1, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			1
			ret
funcend

funcstart _uX_m64_psllwi_2, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			2
			ret
funcend

funcstart _uX_m64_psllwi_3, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			3
			ret
funcend

funcstart _uX_m64_psllwi_4, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			4
			ret
funcend

funcstart _uX_m64_psllwi_5, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			5
			ret
funcend

funcstart _uX_m64_psllwi_6, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			6
			ret
funcend

funcstart _uX_m64_psllwi_7, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			7
			ret
funcend

funcstart _uX_m64_psllwi_8, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			8
			ret
funcend

funcstart _uX_m64_psllwi_9, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			9
			ret
funcend

funcstart _uX_m64_psllwi_10, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			10
			ret
funcend

funcstart _uX_m64_psllwi_11, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			11
			ret
funcend

funcstart _uX_m64_psllwi_12, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			12
			ret
funcend

funcstart _uX_m64_psllwi_13, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			13
			ret
funcend

funcstart _uX_m64_psllwi_14, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			14
			ret
funcend

funcstart _uX_m64_psllwi_15, callconv, mmword, < >, Inmm_A:mmword
			psllw			mm0,			15
			ret
funcend

funcstart _uX_m64_psllwi, callconv, mmword, < >, Inxmm_A:mmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		movzx			eax,	byte ptr [rparam1]
		;mov				ebx,	dword ptr [ebx+rparam1*4]
		jmp		dword ptr [m64sllipi16jmptable+eax*size_t_size]

		m64sllipi16_0 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_1 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_2 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_3 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_4 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_5 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_6 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_7 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_8 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_9 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_10 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_11 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_12 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_13 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_14 label size_t
			psllw			mm0,			
			ret
		m64sllipi16_15 label size_t
			psllw			mm0,			
			ret
		;.endif

funcend

funcstart _uX_m64_pslldi_0, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			0
			ret
funcend

funcstart _uX_m64_pslldi_1, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			1
			ret
funcend

funcstart _uX_m64_pslldi_2, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			2
			ret
funcend

funcstart _uX_m64_pslldi_3, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			3
			ret
funcend

funcstart _uX_m64_pslldi_4, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			4
			ret
funcend

funcstart _uX_m64_pslldi_5, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			5
			ret
funcend

funcstart _uX_m64_pslldi_6, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			6
			ret
funcend

funcstart _uX_m64_pslldi_7, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			7
			ret
funcend

funcstart _uX_m64_pslldi_8, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			8
			ret
funcend

funcstart _uX_m64_pslldi_9, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			9
			ret
funcend

funcstart _uX_m64_pslldi_10, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			10
			ret
funcend

funcstart _uX_m64_pslldi_11, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			11
			ret
funcend

funcstart _uX_m64_pslldi_12, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			12
			ret
funcend

funcstart _uX_m64_pslldi_13, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			13
			ret
funcend

funcstart _uX_m64_pslldi_14, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			14
			ret
funcend

funcstart _uX_m64_pslldi_15, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			15
			ret
funcend

funcstart _uX_m64_pslldi_16, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			16
			ret
funcend

funcstart _uX_m64_pslldi_17, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			17
			ret
funcend

funcstart _uX_m64_pslldi_18, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			18
			ret
funcend

funcstart _uX_m64_pslldi_19, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			19
			ret
funcend

funcstart _uX_m64_pslldi_20, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			20
			ret
funcend

funcstart _uX_m64_pslldi_21, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			21
			ret
funcend

funcstart _uX_m64_pslldi_22, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			22
			ret
funcend

funcstart _uX_m64_pslldi_23, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			23
			ret
funcend

funcstart _uX_m64_pslldi_24, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			24
			ret
funcend

funcstart _uX_m64_pslldi_25, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			25
			ret
funcend

funcstart _uX_m64_pslldi_26, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			26
			ret
funcend

funcstart _uX_m64_pslldi_27, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			27
			ret
funcend

funcstart _uX_m64_pslldi_28, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			28
			ret
funcend

funcstart _uX_m64_pslldi_29, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			29
			ret
funcend

funcstart _uX_m64_pslldi_30, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			30
			ret
funcend

funcstart _uX_m64_pslldi_31, callconv, mmword, < >, Inmm_A:mmword
			pslld			mm0,			31
			ret
funcend

funcstart _uX_m64_pslldi, callconv, mmword, < >, Inxmm_A:mmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		movzx			eax,	byte ptr [rparam1]
		;mov				ebx,	dword ptr [ebx+rparam1*4]
		jmp		dword ptr [m64sllipi32jmptable+eax*size_t_size]

		m64sllipi32_0 label size_t
			pslld			mm0,			0
			ret
		m64sllipi32_1 label size_t
			pslld			mm0,			1
			ret
		m64sllipi32_2 label size_t
			pslld			mm0,			2
			ret
		m64sllipi32_3 label size_t
			pslld			mm0,			3
			ret
		m64sllipi32_4 label size_t
			pslld			mm0,			4
			ret
		m64sllipi32_5 label size_t
			pslld			mm0,			5
			ret
		m64sllipi32_6 label size_t
			pslld			mm0,			6
			ret
		m64sllipi32_7 label size_t
			pslld			mm0,			7
			ret
		m64sllipi32_8 label size_t
			pslld			mm0,			8
			ret
		m64sllipi32_9 label size_t
			pslld			mm0,			9
			ret
		m64sllipi32_10 label size_t
			pslld			mm0,			10
			ret
		m64sllipi32_11 label size_t
			pslld			mm0,			11
			ret
		m64sllipi32_12 label size_t
			pslld			mm0,			12
			ret
		m64sllipi32_13 label size_t
			pslld			mm0,			13
			ret
		m64sllipi32_14 label size_t
			pslld			mm0,			14
			ret
		m64sllipi32_15 label size_t
			pslld			mm0,			15
			ret
		m64sllipi32_16 label size_t
			pslld			mm0,			16
			ret
		m64sllipi32_17 label size_t
			pslld			mm0,			17
			ret
		m64sllipi32_18 label size_t
			pslld			mm0,			18
			ret
		m64sllipi32_19 label size_t
			pslld			mm0,			19
			ret
		m64sllipi32_20 label size_t
			pslld			mm0,			20
			ret
		m64sllipi32_21 label size_t
			pslld			mm0,			21
			ret
		m64sllipi32_22 label size_t
			pslld			mm0,			22
			ret
		m64sllipi32_23 label size_t
			pslld			mm0,			23
			ret
		m64sllipi32_24 label size_t
			pslld			mm0,			24
			ret
		m64sllipi32_25 label size_t
			pslld			mm0,			25
			ret
		m64sllipi32_26 label size_t
			pslld			mm0,			26
			ret
		m64sllipi32_27 label size_t
			pslld			mm0,			27
			ret
		m64sllipi32_28 label size_t
			pslld			mm0,			28
			ret
		m64sllipi32_29 label size_t
			pslld			mm0,			29
			ret
		m64sllipi32_30 label size_t
			pslld			mm0,			30
			ret
		m64sllipi32_31 label size_t
			pslld			mm0,			31
			ret
		;.endif

funcend

funcstart _uX_m64_psllqi_0, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			0
			ret
funcend

funcstart _uX_m64_psllqi_1, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			1
			ret
funcend

funcstart _uX_m64_psllqi_2, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			2
			ret
funcend

funcstart _uX_m64_psllqi_3, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			3
			ret
funcend

funcstart _uX_m64_psllqi_4, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			4
			ret
funcend

funcstart _uX_m64_psllqi_5, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			5
			ret
funcend

funcstart _uX_m64_psllqi_6, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			6
			ret
funcend

funcstart _uX_m64_psllqi_7, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			7
			ret
funcend

funcstart _uX_m64_psllqi_8, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			8
			ret
funcend

funcstart _uX_m64_psllqi_9, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			9
			ret
funcend

funcstart _uX_m64_psllqi_10, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			10
			ret
funcend

funcstart _uX_m64_psllqi_11, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			11
			ret
funcend

funcstart _uX_m64_psllqi_12, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			12
			ret
funcend

funcstart _uX_m64_psllqi_13, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			13
			ret
funcend

funcstart _uX_m64_psllqi_14, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			14
			ret
funcend

funcstart _uX_m64_psllqi_15, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			15
			ret
funcend

funcstart _uX_m64_psllqi_16, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			16
			ret
funcend

funcstart _uX_m64_psllqi_17, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			17
			ret
funcend

funcstart _uX_m64_psllqi_18, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			18
			ret
funcend

funcstart _uX_m64_psllqi_19, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			19
			ret
funcend

funcstart _uX_m64_psllqi_20, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			20
			ret
funcend

funcstart _uX_m64_psllqi_21, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			21
			ret
funcend

funcstart _uX_m64_psllqi_22, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			22
			ret
funcend

funcstart _uX_m64_psllqi_23, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			23
			ret
funcend

funcstart _uX_m64_psllqi_24, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			24
			ret
funcend

funcstart _uX_m64_psllqi_25, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			25
			ret
funcend

funcstart _uX_m64_psllqi_26, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			26
			ret
funcend

funcstart _uX_m64_psllqi_27, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			27
			ret
funcend

funcstart _uX_m64_psllqi_28, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			28
			ret
funcend

funcstart _uX_m64_psllqi_29, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			29
			ret
funcend

funcstart _uX_m64_psllqi_30, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			30
			ret
funcend

funcstart _uX_m64_psllqi_31, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			31
			ret
funcend

funcstart _uX_m64_psllqi_32, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			32
			ret
funcend

funcstart _uX_m64_psllqi_33, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			33
			ret
funcend

funcstart _uX_m64_psllqi_34, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			34
			ret
funcend

funcstart _uX_m64_psllqi_35, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			35
			ret
funcend

funcstart _uX_m64_psllqi_36, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			36
			ret
funcend

funcstart _uX_m64_psllqi_37, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			37
			ret
funcend

funcstart _uX_m64_psllqi_38, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			38
			ret
funcend

funcstart _uX_m64_psllqi_39, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			39
			ret
funcend

funcstart _uX_m64_psllqi_40, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			40
			ret
funcend

funcstart _uX_m64_psllqi_41, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			41
			ret
funcend

funcstart _uX_m64_psllqi_42, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			42
			ret
funcend

funcstart _uX_m64_psllqi_43, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			43
			ret
funcend

funcstart _uX_m64_psllqi_44, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			44
			ret
funcend

funcstart _uX_m64_psllqi_45, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			45
			ret
funcend

funcstart _uX_m64_psllqi_46, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			46
			ret
funcend

funcstart _uX_m64_psllqi_47, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			47
			ret
funcend

funcstart _uX_m64_psllqi_48, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			48
			ret
funcend

funcstart _uX_m64_psllqi_49, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			49
			ret
funcend

funcstart _uX_m64_psllqi_50, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			50
			ret
funcend

funcstart _uX_m64_psllqi_51, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			51
			ret
funcend

funcstart _uX_m64_psllqi_52, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			52
			ret
funcend

funcstart _uX_m64_psllqi_53, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			53
			ret
funcend

funcstart _uX_m64_psllqi_54, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			54
			ret
funcend

funcstart _uX_m64_psllqi_55, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			55
			ret
funcend

funcstart _uX_m64_psllqi_56, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			56
			ret
funcend

funcstart _uX_m64_psllqi_57, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			57
			ret
funcend

funcstart _uX_m64_psllqi_58, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			58
			ret
funcend

funcstart _uX_m64_psllqi_59, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			59
			ret
funcend

funcstart _uX_m64_psllqi_60, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			60
			ret
funcend

funcstart _uX_m64_psllqi_61, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			61
			ret
funcend

funcstart _uX_m64_psllqi_62, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			62
			ret
funcend

funcstart _uX_m64_psllqi_63, callconv, mmword, < >, Inmm_A:mmword
			psllq			mm0,			63
			ret
funcend

funcstart _uX_m64_psllqi, callconv, mmword, < >, Inxmm_A:mmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		movzx			eax,	byte ptr [rparam1]
		;mov				ebx,	dword ptr [ebx+rparam1*4]
		jmp		dword ptr [m64sllipi64jmptable+eax*size_t_size]

		m64sllipi64_0 label size_t
			psllq			mm0,			0
			ret
		m64sllipi64_1 label size_t
			psllq			mm0,			1
			ret
		m64sllipi64_2 label size_t
			psllq			mm0,			2
			ret
		m64sllipi64_3 label size_t
			psllq			mm0,			3
			ret
		m64sllipi64_4 label size_t
			psllq			mm0,			4
			ret
		m64sllipi64_5 label size_t
			psllq			mm0,			5
			ret
		m64sllipi64_6 label size_t
			psllq			mm0,			6
			ret
		m64sllipi64_7 label size_t
			psllq			mm0,			7
			ret
		m64sllipi64_8 label size_t
			psllq			mm0,			8
			ret
		m64sllipi64_9 label size_t
			psllq			mm0,			9
			ret
		m64sllipi64_10 label size_t
			psllq			mm0,			10
			ret
		m64sllipi64_11 label size_t
			psllq			mm0,			11
			ret
		m64sllipi64_12 label size_t
			psllq			mm0,			12
			ret
		m64sllipi64_13 label size_t
			psllq			mm0,			13
			ret
		m64sllipi64_14 label size_t
			psllq			mm0,			14
			ret
		m64sllipi64_15 label size_t
			psllq			mm0,			15
			ret
		m64sllipi64_16 label size_t
			psllq			mm0,			16
			ret
		m64sllipi64_17 label size_t
			psllq			mm0,			17
			ret
		m64sllipi64_18 label size_t
			psllq			mm0,			18
			ret
		m64sllipi64_19 label size_t
			psllq			mm0,			19
			ret
		m64sllipi64_20 label size_t
			psllq			mm0,			20
			ret
		m64sllipi64_21 label size_t
			psllq			mm0,			21
			ret
		m64sllipi64_22 label size_t
			psllq			mm0,			22
			ret
		m64sllipi64_23 label size_t
			psllq			mm0,			23
			ret
		m64sllipi64_24 label size_t
			psllq			mm0,			24
			ret
		m64sllipi64_25 label size_t
			psllq			mm0,			25
			ret
		m64sllipi64_26 label size_t
			psllq			mm0,			26
			ret
		m64sllipi64_27 label size_t
			psllq			mm0,			27
			ret
		m64sllipi64_28 label size_t
			psllq			mm0,			28
			ret
		m64sllipi64_29 label size_t
			psllq			mm0,			29
			ret
		m64sllipi64_30 label size_t
			psllq			mm0,			30
			ret
		m64sllipi64_31 label size_t
			psllq			mm0,			31
			ret
		m64sllipi64_32 label size_t
			psllq			mm0,			32
			ret
		m64sllipi64_33 label size_t
			psllq			mm0,			33
			ret
		m64sllipi64_34 label size_t
			psllq			mm0,			34
			ret
		m64sllipi64_35 label size_t
			psllq			mm0,			35
			ret
		m64sllipi64_36 label size_t
			psllq			mm0,			36
			ret
		m64sllipi64_37 label size_t
			psllq			mm0,			37
			ret
		m64sllipi64_38 label size_t
			psllq			mm0,			38
			ret
		m64sllipi64_39 label size_t
			psllq			mm0,			39
			ret
		m64sllipi64_40 label size_t
			psllq			mm0,			40
			ret
		m64sllipi64_41 label size_t
			psllq			mm0,			41
			ret
		m64sllipi64_42 label size_t
			psllq			mm0,			42
			ret
		m64sllipi64_43 label size_t
			psllq			mm0,			43
			ret
		m64sllipi64_44 label size_t
			psllq			mm0,			44
			ret
		m64sllipi64_45 label size_t
			psllq			mm0,			45
			ret
		m64sllipi64_46 label size_t
			psllq			mm0,			46
			ret
		m64sllipi64_47 label size_t
			psllq			mm0,			47
			ret
		m64sllipi64_48 label size_t
			psllq			mm0,			48
			ret
		m64sllipi64_49 label size_t
			psllq			mm0,			49
			ret
		m64sllipi64_50 label size_t
			psllq			mm0,			50
			ret
		m64sllipi64_51 label size_t
			psllq			mm0,			51
			ret
		m64sllipi64_52 label size_t
			psllq			mm0,			52
			ret
		m64sllipi64_53 label size_t
			psllq			mm0,			53
			ret
		m64sllipi64_54 label size_t
			psllq			mm0,			54
			ret
		m64sllipi64_55 label size_t
			psllq			mm0,			55
			ret
		m64sllipi64_56 label size_t
			psllq			mm0,			56
			ret
		m64sllipi64_57 label size_t
			psllq			mm0,			57
			ret
		m64sllipi64_58 label size_t
			psllq			mm0,			58
			ret
		m64sllipi64_59 label size_t
			psllq			mm0,			59
			ret
		m64sllipi64_60 label size_t
			psllq			mm0,			60
			ret
		m64sllipi64_61 label size_t
			psllq			mm0,			61
			ret
		m64sllipi64_62 label size_t
			psllq			mm0,			62
			ret
		m64sllipi64_63 label size_t
			psllq			mm0,			63
			ret
		;.endif

funcend

funcstart _uX_m64_psrawi_0, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			0
			ret
funcend

funcstart _uX_m64_psrawi_1, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			1
			ret
funcend

funcstart _uX_m64_psrawi_2, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			2
			ret
funcend

funcstart _uX_m64_psrawi_3, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			3
			ret
funcend

funcstart _uX_m64_psrawi_4, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			4
			ret
funcend

funcstart _uX_m64_psrawi_5, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			5
			ret
funcend

funcstart _uX_m64_psrawi_6, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			6
			ret
funcend

funcstart _uX_m64_psrawi_7, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			7
			ret
funcend

funcstart _uX_m64_psrawi_8, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			8
			ret
funcend

funcstart _uX_m64_psrawi_9, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			9
			ret
funcend

funcstart _uX_m64_psrawi_10, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			10
			ret
funcend

funcstart _uX_m64_psrawi_11, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			11
			ret
funcend

funcstart _uX_m64_psrawi_12, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			12
			ret
funcend

funcstart _uX_m64_psrawi_13, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			13
			ret
funcend

funcstart _uX_m64_psrawi_14, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			14
			ret
funcend

funcstart _uX_m64_psrawi_15, callconv, mmword, < >, Inmm_A:mmword
			psraw			mm0,			15
			ret
funcend

funcstart _uX_m64_psrawi, callconv, mmword, < >, Inxmm_A:mmword, Inint_Imm:dword
			
		;.if(rparam1 > 3)
		;	ret
		;.else

		movzx			eax,	byte ptr [rparam1]
		;mov				ebx,	dword ptr [ebx+rparam1*4]
		jmp		dword ptr [m64sraipi16jmptable+eax*size_t_size]

		m64sraipi16_0 label size_t
			psraw			mm0,			0
			ret
		m64sraipi16_1 label size_t
			psraw			mm0,			1
			ret
		m64sraipi16_2 label size_t
			psraw			mm0,			2
			ret
		m64sraipi16_3 label size_t
			psraw			mm0,			3
			ret
		m64sraipi16_4 label size_t
			psraw			mm0,			4
			ret
		m64sraipi16_5 label size_t
			psraw			mm0,			5
			ret
		m64sraipi16_6 label size_t
			psraw			mm0,			6
			ret
		m64sraipi16_7 label size_t
			psraw			mm0,			7
			ret
		m64sraipi16_8 label size_t
			psraw			mm0,			8
			ret
		m64sraipi16_9 label size_t
			psraw			mm0,			9
			ret
		m64sraipi16_10 label size_t
			psraw			mm0,			10
			ret
		m64sraipi16_11 label size_t
			psraw			mm0,			11
			ret
		m64sraipi16_12 label size_t
			psraw			mm0,			12
			ret
		m64sraipi16_13 label size_t
			psraw			mm0,			13
			ret
		m64sraipi16_14 label size_t
			psraw			mm0,			14
			ret
		m64sraipi16_15 label size_t
			psraw			mm0,			15
			ret
		;.endif

funcend

funcstart _uX_m64_psradi_0, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			0
			ret
funcend

funcstart _uX_m64_psradi_1, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			1
			ret
funcend

funcstart _uX_m64_psradi_2, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			2
			ret
funcend

funcstart _uX_m64_psradi_3, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			3
			ret
funcend

funcstart _uX_m64_psradi_4, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			4
			ret
funcend

funcstart _uX_m64_psradi_5, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			5
			ret
funcend

funcstart _uX_m64_psradi_6, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			6
			ret
funcend

funcstart _uX_m64_psradi_7, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			7
			ret
funcend

funcstart _uX_m64_psradi_8, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			8
			ret
funcend

funcstart _uX_m64_psradi_9, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			9
			ret
funcend

funcstart _uX_m64_psradi_10, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			10
			ret
funcend

funcstart _uX_m64_psradi_11, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			11
			ret
funcend

funcstart _uX_m64_psradi_12, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			12
			ret
funcend

funcstart _uX_m64_psradi_13, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			13
			ret
funcend

funcstart _uX_m64_psradi_14, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			14
			ret
funcend

funcstart _uX_m64_psradi_15, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			15
			ret
funcend

funcstart _uX_m64_psradi_16, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			16
			ret
funcend

funcstart _uX_m64_psradi_17, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			17
			ret
funcend

funcstart _uX_m64_psradi_18, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			18
			ret
funcend

funcstart _uX_m64_psradi_19, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			19
			ret
funcend

funcstart _uX_m64_psradi_20, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			20
			ret
funcend

funcstart _uX_m64_psradi_21, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			21
			ret
funcend

funcstart _uX_m64_psradi_22, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			22
			ret
funcend

funcstart _uX_m64_psradi_23, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			23
			ret
funcend

funcstart _uX_m64_psradi_24, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			24
			ret
funcend

funcstart _uX_m64_psradi_25, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			25
			ret
funcend

funcstart _uX_m64_psradi_26, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			26
			ret
funcend

funcstart _uX_m64_psradi_27, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			27
			ret
funcend

funcstart _uX_m64_psradi_28, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			28
			ret
funcend

funcstart _uX_m64_psradi_29, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			29
			ret
funcend

funcstart _uX_m64_psradi_30, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			30
			ret
funcend

funcstart _uX_m64_psradi_31, callconv, mmword, < >, Inmm_A:mmword
			psrad			mm0,			31
			ret
funcend

funcstart _uX_m64_psradi, callconv, mmword, < >, Inxmm_A:mmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		movzx			eax,	byte ptr [rparam1]
		;mov				rbx,	dword ptr [rbx+rparam1*4]
		jmp		dword ptr [m64sraipi32jmptable+eax*size_t_size]

		m64sraipi32_0 label size_t
			psrad			mm0,			0
			ret
		m64sraipi32_1 label size_t
			psrad			mm0,			1
			ret
		m64sraipi32_2 label size_t
			psrad			mm0,			2
			ret
		m64sraipi32_3 label size_t
			psrad			mm0,			3
			ret
		m64sraipi32_4 label size_t
			psrad			mm0,			4
			ret
		m64sraipi32_5 label size_t
			psrad			mm0,			5
			ret
		m64sraipi32_6 label size_t
			psrad			mm0,			6
			ret
		m64sraipi32_7 label size_t
			psrad			mm0,			7
			ret
		m64sraipi32_8 label size_t
			psrad			mm0,			8
			ret
		m64sraipi32_9 label size_t
			psrad			mm0,			9
			ret
		m64sraipi32_10 label size_t
			psrad			mm0,			10
			ret
		m64sraipi32_11 label size_t
			psrad			mm0,			11
			ret
		m64sraipi32_12 label size_t
			psrad			mm0,			12
			ret
		m64sraipi32_13 label size_t
			psrad			mm0,			13
			ret
		m64sraipi32_14 label size_t
			psrad			mm0,			14
			ret
		m64sraipi32_15 label size_t
			psrad			mm0,			15
			ret
		m64sraipi32_16 label size_t
			psrad			mm0,			16
			ret
		m64sraipi32_17 label size_t
			psrad			mm0,			17
			ret
		m64sraipi32_18 label size_t
			psrad			mm0,			18
			ret
		m64sraipi32_19 label size_t
			psrad			mm0,			19
			ret
		m64sraipi32_20 label size_t
			psrad			mm0,			20
			ret
		m64sraipi32_21 label size_t
			psrad			mm0,			21
			ret
		m64sraipi32_22 label size_t
			psrad			mm0,			22
			ret
		m64sraipi32_23 label size_t
			psrad			mm0,			23
			ret
		m64sraipi32_24 label size_t
			psrad			mm0,			24
			ret
		m64sraipi32_25 label size_t
			psrad			mm0,			25
			ret
		m64sraipi32_26 label size_t
			psrad			mm0,			26
			ret
		m64sraipi32_27 label size_t
			psrad			mm0,			27
			ret
		m64sraipi32_28 label size_t
			psrad			mm0,			28
			ret
		m64sraipi32_29 label size_t
			psrad			mm0,			29
			ret
		m64sraipi32_30 label size_t
			psrad			mm0,			30
			ret
		m64sraipi32_31 label size_t
			psrad			mm0,			31
			ret
		;.endif

funcend

funcstart _uX_m64_psrlwi_0, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			0
			ret
funcend

funcstart _uX_m64_psrlwi_1, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			1
			ret
funcend

funcstart _uX_m64_psrlwi_2, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			2
			ret
funcend

funcstart _uX_m64_psrlwi_3, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			3
			ret
funcend

funcstart _uX_m64_psrlwi_4, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			4
			ret
funcend

funcstart _uX_m64_psrlwi_5, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			5
			ret
funcend

funcstart _uX_m64_psrlwi_6, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			6
			ret
funcend

funcstart _uX_m64_psrlwi_7, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			7
			ret
funcend

funcstart _uX_m64_psrlwi_8, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			8
			ret
funcend

funcstart _uX_m64_psrlwi_9, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			9
			ret
funcend

funcstart _uX_m64_psrlwi_10, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			10
			ret
funcend

funcstart _uX_m64_psrlwi_11, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			11
			ret
funcend

funcstart _uX_m64_psrlwi_12, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			12
			ret
funcend

funcstart _uX_m64_psrlwi_13, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			13
			ret
funcend

funcstart _uX_m64_psrlwi_14, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			14
			ret
funcend

funcstart _uX_m64_psrlwi_15, callconv, mmword, < >, Inmm_A:mmword
			psrlw			mm0,			15
			ret
funcend

funcstart _uX_m64_psrlwi, callconv, mmword, < >, Inxmm_A:mmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		movzx			eax,	byte ptr [rparam1]
		;mov				rbx,	dword ptr [rbx+rparam1*4]
		jmp		dword ptr [m64srlipi16jmptable+eax*size_t_size]

		m64srlipi16_0 label size_t
			psrlw			mm0,			0
			ret
		m64srlipi16_1 label size_t
			psrlw			mm0,			1
			ret
		m64srlipi16_2 label size_t
			psrlw			mm0,			2
			ret
		m64srlipi16_3 label size_t
			psrlw			mm0,			3
			ret
		m64srlipi16_4 label size_t
			psrlw			mm0,			4
			ret
		m64srlipi16_5 label size_t
			psrlw			mm0,			5
			ret
		m64srlipi16_6 label size_t
			psrlw			mm0,			6
			ret
		m64srlipi16_7 label size_t
			psrlw			mm0,			7
			ret
		m64srlipi16_8 label size_t
			psrlw			mm0,			8
			ret
		m64srlipi16_9 label size_t
			psrlw			mm0,			9
			ret
		m64srlipi16_10 label size_t
			psrlw			mm0,			10
			ret
		m64srlipi16_11 label size_t
			psrlw			mm0,			11
			ret
		m64srlipi16_12 label size_t
			psrlw			mm0,			12
			ret
		m64srlipi16_13 label size_t
			psrlw			mm0,			13
			ret
		m64srlipi16_14 label size_t
			psrlw			mm0,			14
			ret
		m64srlipi16_15 label size_t
			psrlw			mm0,			15
			ret
		;.endif

funcend

funcstart _uX_m64_psrldi_0, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			0
			ret
funcend

funcstart _uX_m64_psrldi_1, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			1
			ret
funcend

funcstart _uX_m64_psrldi_2, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			2
			ret
funcend

funcstart _uX_m64_psrldi_3, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			3
			ret
funcend

funcstart _uX_m64_psrldi_4, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			4
			ret
funcend

funcstart _uX_m64_psrldi_5, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			5
			ret
funcend

funcstart _uX_m64_psrldi_6, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			6
			ret
funcend

funcstart _uX_m64_psrldi_7, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			7
			ret
funcend

funcstart _uX_m64_psrldi_8, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			8
			ret
funcend

funcstart _uX_m64_psrldi_9, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			9
			ret
funcend

funcstart _uX_m64_psrldi_10, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			10
			ret
funcend

funcstart _uX_m64_psrldi_11, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			11
			ret
funcend

funcstart _uX_m64_psrldi_12, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			12
			ret
funcend

funcstart _uX_m64_psrldi_13, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			13
			ret
funcend

funcstart _uX_m64_psrldi_14, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			14
			ret
funcend

funcstart _uX_m64_psrldi_15, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			15
			ret
funcend

funcstart _uX_m64_psrldi_16, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			16
			ret
funcend

funcstart _uX_m64_psrldi_17, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			17
			ret
funcend

funcstart _uX_m64_psrldi_18, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			18
			ret
funcend

funcstart _uX_m64_psrldi_19, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			19
			ret
funcend

funcstart _uX_m64_psrldi_20, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			20
			ret
funcend

funcstart _uX_m64_psrldi_21, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			21
			ret
funcend

funcstart _uX_m64_psrldi_22, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			22
			ret
funcend

funcstart _uX_m64_psrldi_23, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			23
			ret
funcend

funcstart _uX_m64_psrldi_24, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			24
			ret
funcend

funcstart _uX_m64_psrldi_25, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			25
			ret
funcend

funcstart _uX_m64_psrldi_26, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			26
			ret
funcend

funcstart _uX_m64_psrldi_27, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			27
			ret
funcend

funcstart _uX_m64_psrldi_28, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			28
			ret
funcend

funcstart _uX_m64_psrldi_29, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			29
			ret
funcend

funcstart _uX_m64_psrldi_30, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			30
			ret
funcend

funcstart _uX_m64_psrldi_31, callconv, mmword, < >, Inmm_A:mmword
			psrld			mm0,			31
			ret
funcend

funcstart _uX_m64_psrldi, callconv, mmword, < >, Inxmm_A:mmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		movzx			eax,	byte ptr [rparam1]
		;mov				rbx,	dword ptr [rbx+rparam1*4]
		jmp		dword ptr [m64srlipi32jmptable+eax*size_t_size]

		m64srlipi32_0 label size_t
			psrld			mm0,			0
			ret
		m64srlipi32_1 label size_t
			psrld			mm0,			1
			ret
		m64srlipi32_2 label size_t
			psrld			mm0,			2
			ret
		m64srlipi32_3 label size_t
			psrld			mm0,			3
			ret
		m64srlipi32_4 label size_t
			psrld			mm0,			4
			ret
		m64srlipi32_5 label size_t
			psrld			mm0,			5
			ret
		m64srlipi32_6 label size_t
			psrld			mm0,			6
			ret
		m64srlipi32_7 label size_t
			psrld			mm0,			7
			ret
		m64srlipi32_8 label size_t
			psrld			mm0,			8
			ret
		m64srlipi32_9 label size_t
			psrld			mm0,			9
			ret
		m64srlipi32_10 label size_t
			psrld			mm0,			10
			ret
		m64srlipi32_11 label size_t
			psrld			mm0,			11
			ret
		m64srlipi32_12 label size_t
			psrld			mm0,			12
			ret
		m64srlipi32_13 label size_t
			psrld			mm0,			13
			ret
		m64srlipi32_14 label size_t
			psrld			mm0,			14
			ret
		m64srlipi32_15 label size_t
			psrld			mm0,			15
			ret
		m64srlipi32_16 label size_t
			psrld			mm0,			16
			ret
		m64srlipi32_17 label size_t
			psrld			mm0,			17
			ret
		m64srlipi32_18 label size_t
			psrld			mm0,			18
			ret
		m64srlipi32_19 label size_t
			psrld			mm0,			19
			ret
		m64srlipi32_20 label size_t
			psrld			mm0,			20
			ret
		m64srlipi32_21 label size_t
			psrld			mm0,			21
			ret
		m64srlipi32_22 label size_t
			psrld			mm0,			22
			ret
		m64srlipi32_23 label size_t
			psrld			mm0,			23
			ret
		m64srlipi32_24 label size_t
			psrld			mm0,			24
			ret
		m64srlipi32_25 label size_t
			psrld			mm0,			25
			ret
		m64srlipi32_26 label size_t
			psrld			mm0,			26
			ret
		m64srlipi32_27 label size_t
			psrld			mm0,			27
			ret
		m64srlipi32_28 label size_t
			psrld			mm0,			28
			ret
		m64srlipi32_29 label size_t
			psrld			mm0,			29
			ret
		m64srlipi32_30 label size_t
			psrld			mm0,			30
			ret
		m64srlipi32_31 label size_t
			psrld			mm0,			31
			ret
		;.endif

funcend

funcstart _uX_m64_psrlqi_0, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			0
			ret
funcend

funcstart _uX_m64_psrlqi_1, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			1
			ret
funcend

funcstart _uX_m64_psrlqi_2, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			2
			ret
funcend

funcstart _uX_m64_psrlqi_3, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			3
			ret
funcend

funcstart _uX_m64_psrlqi_4, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			4
			ret
funcend

funcstart _uX_m64_psrlqi_5, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			5
			ret
funcend

funcstart _uX_m64_psrlqi_6, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			6
			ret
funcend

funcstart _uX_m64_psrlqi_7, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			7
			ret
funcend

funcstart _uX_m64_psrlqi_8, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			8
			ret
funcend

funcstart _uX_m64_psrlqi_9, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			9
			ret
funcend

funcstart _uX_m64_psrlqi_10, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			10
			ret
funcend

funcstart _uX_m64_psrlqi_11, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			11
			ret
funcend

funcstart _uX_m64_psrlqi_12, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			12
			ret
funcend

funcstart _uX_m64_psrlqi_13, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			13
			ret
funcend

funcstart _uX_m64_psrlqi_14, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			14
			ret
funcend

funcstart _uX_m64_psrlqi_15, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			15
			ret
funcend

funcstart _uX_m64_psrlqi_16, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			16
			ret
funcend

funcstart _uX_m64_psrlqi_17, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			17
			ret
funcend

funcstart _uX_m64_psrlqi_18, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			18
			ret
funcend

funcstart _uX_m64_psrlqi_19, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			19
			ret
funcend

funcstart _uX_m64_psrlqi_20, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			20
			ret
funcend

funcstart _uX_m64_psrlqi_21, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			21
			ret
funcend

funcstart _uX_m64_psrlqi_22, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			22
			ret
funcend

funcstart _uX_m64_psrlqi_23, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			23
			ret
funcend

funcstart _uX_m64_psrlqi_24, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			24
			ret
funcend

funcstart _uX_m64_psrlqi_25, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			25
			ret
funcend

funcstart _uX_m64_psrlqi_26, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			26
			ret
funcend

funcstart _uX_m64_psrlqi_27, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			27
			ret
funcend

funcstart _uX_m64_psrlqi_28, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			28
			ret
funcend

funcstart _uX_m64_psrlqi_29, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			29
			ret
funcend

funcstart _uX_m64_psrlqi_30, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			30
			ret
funcend

funcstart _uX_m64_psrlqi_31, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			31
			ret
funcend

funcstart _uX_m64_psrlqi_32, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			32
			ret
funcend

funcstart _uX_m64_psrlqi_33, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			33
			ret
funcend

funcstart _uX_m64_psrlqi_34, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			34
			ret
funcend

funcstart _uX_m64_psrlqi_35, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			35
			ret
funcend

funcstart _uX_m64_psrlqi_36, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			36
			ret
funcend

funcstart _uX_m64_psrlqi_37, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			37
			ret
funcend

funcstart _uX_m64_psrlqi_38, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			38
			ret
funcend

funcstart _uX_m64_psrlqi_39, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			39
			ret
funcend

funcstart _uX_m64_psrlqi_40, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			40
			ret
funcend

funcstart _uX_m64_psrlqi_41, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			41
			ret
funcend

funcstart _uX_m64_psrlqi_42, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			42
			ret
funcend

funcstart _uX_m64_psrlqi_43, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			43
			ret
funcend

funcstart _uX_m64_psrlqi_44, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			44
			ret
funcend

funcstart _uX_m64_psrlqi_45, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			45
			ret
funcend

funcstart _uX_m64_psrlqi_46, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			46
			ret
funcend

funcstart _uX_m64_psrlqi_47, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			47
			ret
funcend

funcstart _uX_m64_psrlqi_48, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			48
			ret
funcend

funcstart _uX_m64_psrlqi_49, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			49
			ret
funcend

funcstart _uX_m64_psrlqi_50, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			50
			ret
funcend

funcstart _uX_m64_psrlqi_51, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			51
			ret
funcend

funcstart _uX_m64_psrlqi_52, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			52
			ret
funcend

funcstart _uX_m64_psrlqi_53, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			53
			ret
funcend

funcstart _uX_m64_psrlqi_54, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			54
			ret
funcend

funcstart _uX_m64_psrlqi_55, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			55
			ret
funcend

funcstart _uX_m64_psrlqi_56, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			56
			ret
funcend

funcstart _uX_m64_psrlqi_57, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			57
			ret
funcend

funcstart _uX_m64_psrlqi_58, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			58
			ret
funcend

funcstart _uX_m64_psrlqi_59, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			59
			ret
funcend

funcstart _uX_m64_psrlqi_60, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			60
			ret
funcend

funcstart _uX_m64_psrlqi_61, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			61
			ret
funcend

funcstart _uX_m64_psrlqi_62, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			62
			ret
funcend

funcstart _uX_m64_psrlqi_63, callconv, mmword, < >, Inmm_A:mmword
			psrlq			mm0,			63
			ret
funcend

funcstart _uX_m64_psrlqi, callconv, mmword, < >, Inxmm_A:mmword, Inint_Imm:dword
					
		;.if(rparam1 > 3)
		;	ret
		;.else

		movzx			eax,	byte ptr [rparam1]
		;mov				rbx,	dword ptr [rbx+rparam1*4]
		jmp		dword ptr [m64srlipi64jmptable+eax*size_t_size]

		m64srlipi64_0 label size_t
			psrlq			mm0,			0
			ret
		m64srlipi64_1 label size_t
			psrlq			mm0,			1
			ret
		m64srlipi64_2 label size_t
			psrlq			mm0,			2
			ret
		m64srlipi64_3 label size_t
			psrlq			mm0,			3
			ret
		m64srlipi64_4 label size_t
			psrlq			mm0,			4
			ret
		m64srlipi64_5 label size_t
			psrlq			mm0,			5
			ret
		m64srlipi64_6 label size_t
			psrlq			mm0,			6
			ret
		m64srlipi64_7 label size_t
			psrlq			mm0,			7
			ret
		m64srlipi64_8 label size_t
			psrlq			mm0,			8
			ret
		m64srlipi64_9 label size_t
			psrlq			mm0,			9
			ret
		m64srlipi64_10 label size_t
			psrlq			mm0,			10
			ret
		m64srlipi64_11 label size_t
			psrlq			mm0,			11
			ret
		m64srlipi64_12 label size_t
			psrlq			mm0,			12
			ret
		m64srlipi64_13 label size_t
			psrlq			mm0,			13
			ret
		m64srlipi64_14 label size_t
			psrlq			mm0,			14
			ret
		m64srlipi64_15 label size_t
			psrlq			mm0,			15
			ret
		m64srlipi64_16 label size_t
			psrlq			mm0,			16
			ret
		m64srlipi64_17 label size_t
			psrlq			mm0,			17
			ret
		m64srlipi64_18 label size_t
			psrlq			mm0,			18
			ret
		m64srlipi64_19 label size_t
			psrlq			mm0,			19
			ret
		m64srlipi64_20 label size_t
			psrlq			mm0,			20
			ret
		m64srlipi64_21 label size_t
			psrlq			mm0,			21
			ret
		m64srlipi64_22 label size_t
			psrlq			mm0,			22
			ret
		m64srlipi64_23 label size_t
			psrlq			mm0,			23
			ret
		m64srlipi64_24 label size_t
			psrlq			mm0,			24
			ret
		m64srlipi64_25 label size_t
			psrlq			mm0,			25
			ret
		m64srlipi64_26 label size_t
			psrlq			mm0,			26
			ret
		m64srlipi64_27 label size_t
			psrlq			mm0,			27
			ret
		m64srlipi64_28 label size_t
			psrlq			mm0,			28
			ret
		m64srlipi64_29 label size_t
			psrlq			mm0,			29
			ret
		m64srlipi64_30 label size_t
			psrlq			mm0,			30
			ret
		m64srlipi64_31 label size_t
			psrlq			mm0,			31
			ret
		m64srlipi64_32 label size_t
			psrlq			mm0,			32
			ret
		m64srlipi64_33 label size_t
			psrlq			mm0,			33
			ret
		m64srlipi64_34 label size_t
			psrlq			mm0,			34
			ret
		m64srlipi64_35 label size_t
			psrlq			mm0,			35
			ret
		m64srlipi64_36 label size_t
			psrlq			mm0,			36
			ret
		m64srlipi64_37 label size_t
			psrlq			mm0,			37
			ret
		m64srlipi64_38 label size_t
			psrlq			mm0,			38
			ret
		m64srlipi64_39 label size_t
			psrlq			mm0,			39
			ret
		m64srlipi64_40 label size_t
			psrlq			mm0,			40
			ret
		m64srlipi64_41 label size_t
			psrlq			mm0,			41
			ret
		m64srlipi64_42 label size_t
			psrlq			mm0,			42
			ret
		m64srlipi64_43 label size_t
			psrlq			mm0,			43
			ret
		m64srlipi64_44 label size_t
			psrlq			mm0,			44
			ret
		m64srlipi64_45 label size_t
			psrlq			mm0,			45
			ret
		m64srlipi64_46 label size_t
			psrlq			mm0,			46
			ret
		m64srlipi64_47 label size_t
			psrlq			mm0,			47
			ret
		m64srlipi64_48 label size_t
			psrlq			mm0,			48
			ret
		m64srlipi64_49 label size_t
			psrlq			mm0,			49
			ret
		m64srlipi64_50 label size_t
			psrlq			mm0,			50
			ret
		m64srlipi64_51 label size_t
			psrlq			mm0,			51
			ret
		m64srlipi64_52 label size_t
			psrlq			mm0,			52
			ret
		m64srlipi64_53 label size_t
			psrlq			mm0,			53
			ret
		m64srlipi64_54 label size_t
			psrlq			mm0,			54
			ret
		m64srlipi64_55 label size_t
			psrlq			mm0,			55
			ret
		m64srlipi64_56 label size_t
			psrlq			mm0,			56
			ret
		m64srlipi64_57 label size_t
			psrlq			mm0,			57
			ret
		m64srlipi64_58 label size_t
			psrlq			mm0,			58
			ret
		m64srlipi64_59 label size_t
			psrlq			mm0,			59
			ret
		m64srlipi64_60 label size_t
			psrlq			mm0,			60
			ret
		m64srlipi64_61 label size_t
			psrlq			mm0,			61
			ret
		m64srlipi64_62 label size_t
			psrlq			mm0,			62
			ret
		m64srlipi64_63 label size_t
			psrlq			mm0,			63
			ret
		;.endif

funcend
endif ;__X32__

	end
