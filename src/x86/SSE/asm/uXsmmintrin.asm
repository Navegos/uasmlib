
	include uXx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	include uXsseintrin.inc
	include uXxmmconstdata.inc
		
	.data?

	.data

	.const
	
	alignsize_t
	_m128extractpsjmptable isize_t	offset _m128extractps_0, offset _m128extractps_1, offset _m128extractps_2, offset _m128extractps_3
	
	alignsize_t
	_m128iinsertepi8jmptable isize_t	offset _m128iinsertepi8_0, offset _m128iinsertepi8_1, offset _m128iinsertepi8_2, offset _m128iinsertepi8_3, offset _m128iinsertepi8_4, \
										offset _m128iinsertepi8_5, offset _m128iinsertepi8_6, offset _m128iinsertepi8_7, offset _m128iinsertepi8_8, offset _m128iinsertepi8_9, \
										offset _m128iinsertepi8_10, offset _m128iinsertepi8_11, offset _m128iinsertepi8_12, offset _m128iinsertepi8_13, offset _m128iinsertepi8_14, \
										offset _m128iinsertepi8_15

	alignsize_t
	_m128iinsertepi32jmptable isize_t	offset _m128iinsertepi32_0, offset _m128iinsertepi32_1, offset _m128iinsertepi32_2, offset _m128iinsertepi32_3
	
	alignsize_t
	_m128iinsertepi64jmptable isize_t	offset _m128iinsertepi64_0, offset _m128iinsertepi64_1
	
	alignsize_t
	_m128iextractepi8jmptable isize_t	offset _m128iextractepi8_0, offset _m128iextractepi8_1, offset _m128iextractepi8_2, offset _m128iextractepi8_3, offset _m128iextractepi8_4, \
										offset _m128iextractepi8_5, offset _m128iextractepi8_6, offset _m128iextractepi8_7, offset _m128iextractepi8_8, offset _m128iextractepi8_9, \
										offset _m128iextractepi8_10, offset _m128iextractepi8_11, offset _m128iextractepi8_12, offset _m128iextractepi8_13, offset _m128iextractepi8_14, \
										offset _m128iextractepi8_15

	alignsize_t
	_m128iextractepi32jmptable isize_t	offset _m128iextractepi32_0, offset _m128iextractepi32_1, offset _m128iextractepi32_2, offset _m128iextractepi32_3
	
	alignsize_t
	_m128iextractepi64jmptable isize_t	offset _m128iextractepi64_0, offset _m128iextractepi64_1
	
	alignsize_t
	_m128droundpdjmptable isize_t	offset _m128droundpd_0, offset _m128droundpd_1, offset _m128droundpd_2, offset _m128droundpd_3, offset _m128droundpd_4, \
									offset _m128droundpd_5, offset _m128droundpd_6, offset _m128droundpd_7, offset _m128droundpd_8, offset _m128droundpd_9, \
									offset _m128droundpd_10, offset _m128droundpd_11, offset _m128droundpd_12

	alignsize_t
	_m128droundsdjmptable isize_t	offset _m128droundsd_0, offset _m128droundsd_1, offset _m128droundsd_2, offset _m128droundsd_3, offset _m128droundsd_4, \
									offset _m128droundsd_5, offset _m128droundsd_6, offset _m128droundsd_7, offset _m128droundsd_8, offset _m128droundsd_9, \
									offset _m128droundsd_10, offset _m128droundsd_11, offset _m128droundsd_12

	alignsize_t
	_m128roundpsjmptable isize_t	offset _m128roundps_0, offset _m128roundps_1, offset _m128roundps_2, offset _m128roundps_3, offset _m128roundps_4, \
									offset _m128roundps_5, offset _m128roundps_6, offset _m128roundps_7, offset _m128roundps_8, offset _m128roundps_9, \
									offset _m128roundps_10, offset _m128roundps_11, offset _m128roundps_12

	alignsize_t
	_m128roundssjmptable isize_t	offset _m128roundss_0, offset _m128roundss_1, offset _m128roundss_2, offset _m128roundss_3, offset _m128roundss_4, \
									offset _m128roundss_5, offset _m128roundss_6, offset _m128roundss_7, offset _m128roundss_8, offset _m128roundss_9, \
									offset _m128roundss_10, offset _m128roundss_11, offset _m128roundss_12


	alignxmmfieldproc
	callconvopt

	.code
	
;************************************
; blend instructions
;************************************
funcstart _uX_mm_blendv_epi8, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_mask:xmmword

			movdqa				xmm3,			xmm0
			movdqa				xmm0,			xmm2
			pblendvb			xmm3,			xmm1,			xmm0
			movdqa				xmm0,			xmm3

			ret
funcend
	
funcstart _uX_mm_blendv_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_mask:xmmword

			movaps				xmm3,			xmm0
			movaps				xmm0,			xmm2
			blendvps			xmm3,			xmm1,			xmm0
			movaps				xmm0,			xmm3

			ret
funcend

funcstart _uX_mm_blendv_pd, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inxmm_mask:xmmword

			movapd				xmm3,			xmm0
			movapd				xmm0,			xmm2
			blendvpd			xmm3,			xmm1,			xmm0
			movapd				xmm0,			xmm3

			ret
funcend

;************************************
; Packed integer 64-bit comparison
;************************************
funcstart _uX_mm_cmpeq_epi64, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pcmpeqq			xmm0,			xmm1

			ret
funcend
	
;************************************
; Min/max packed integer instructions
;************************************
funcstart _uX_mm_min_epi8, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pminsb			xmm0,			xmm1

			ret
funcend
	
funcstart _uX_mm_max_epi8, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pmaxsb			xmm0,			xmm1

			ret
funcend
	
funcstart _uX_mm_min_epu16, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pminuw			xmm0,			xmm1

			ret
funcend
	
funcstart _uX_mm_max_epu16, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pmaxuw			xmm0,			xmm1

			ret
funcend
	
funcstart _uX_mm_min_epi32, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pminsd			xmm0,			xmm1

			ret
funcend
	
funcstart _uX_mm_max_epi32, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pmaxsd			xmm0,			xmm1

			ret
funcend
	
funcstart _uX_mm_min_epu32, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pminud			xmm0,			xmm1

			ret
funcend
	
funcstart _uX_mm_max_epu32, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pmaxud			xmm0,			xmm1

			ret
funcend
	
;************************************
; Packed integer 32-bit multiplication
;************************************
funcstart _uX_mm_mullo_epi32, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pmulld			xmm0,			xmm1

			ret
funcend
	
funcstart _uX_mm_mul_epi32, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			pmuldq			xmm0,			xmm1

			ret
funcend
		
;************************************
; Packed integer 128-bit bitwise comparison
;************************************
funcstart _uX_mm_testz_si128, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			ptest			xmm0,			xmm1
			mov				ecx,			1
			mov				eax,			0
			cmovz			eax,			ecx

			ret
funcend
	
funcstart _uX_mm_testc_si128, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			ptest			xmm0,			xmm1
			mov				ecx,			1
			mov				eax,			0
			cmovb			ecx,			eax

			ret
funcend
	
funcstart _uX_mm_testnzc_si128, callconv, dword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword

			ptest			xmm0,			xmm1
			mov				ecx,			1
			mov				eax,			0
			cmova			ecx,			eax

			ret
funcend

;************************************
; Extract binary representation of single precision float
;************************************
funcstart _uX_mm_extract_ps_0, callconv, dword, < >, Inxmm_A:xmmword
			extractps 			dreturn, 			xmm0,			0
			ret
funcend

funcstart _uX_mm_extract_ps_1, callconv, dword, < >, Inxmm_A:xmmword
			extractps 			dreturn, 			xmm0,			1
			ret
funcend

funcstart _uX_mm_extract_ps_2, callconv, dword, < >, Inxmm_A:xmmword
			extractps 			dreturn, 			xmm0,			2
			ret
funcend

funcstart _uX_mm_extract_ps_3, callconv, dword, < >, Inxmm_A:xmmword
			extractps 			dreturn, 			xmm0,			3
			ret
funcend

funcstart _uX_mm_extract_ps, callconv, dword, < >, Inxmm_A:xmmword, Inint_Imm:dword

		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*size_t_size]
			jmp		dword ptr [_m128extractpsjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128extractpsjmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128extractps_0 label size_t
			extractps 			dreturn, 			xmm0,			0
			ret
		_m128extractps_1 label size_t
			extractps 			dreturn, 			xmm0,			1
			ret
		_m128extractps_2 label size_t
			extractps 			dreturn, 			xmm0,			2
			ret
		_m128extractps_3 label size_t
			extractps 			dreturn, 			xmm0,			3
			ret
		;.endif

funcend
	
;************************************
; Insert integer
;************************************
funcstart _uX_mm_insert_epi8_0, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			0
			ret
funcend

funcstart _uX_mm_insert_epi8_1, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			1
			ret
funcend

funcstart _uX_mm_insert_epi8_2, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			2
			ret
funcend

funcstart _uX_mm_insert_epi8_3, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			3
			ret
funcend

funcstart _uX_mm_insert_epi8_4, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			4
			ret
funcend

funcstart _uX_mm_insert_epi8_5, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			5
			ret
funcend

funcstart _uX_mm_insert_epi8_6, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			6
			ret
funcend

funcstart _uX_mm_insert_epi8_7, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			7
			ret
funcend

funcstart _uX_mm_insert_epi8_8, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			8
			ret
funcend

funcstart _uX_mm_insert_epi8_9, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			9
			ret
funcend

funcstart _uX_mm_insert_epi8_10, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			10
			ret
funcend

funcstart _uX_mm_insert_epi8_11, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			11
			ret
funcend

funcstart _uX_mm_insert_epi8_12, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			12
			ret
funcend

funcstart _uX_mm_insert_epi8_13, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			13
			ret
funcend

funcstart _uX_mm_insert_epi8_14, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			14
			ret
funcend

funcstart _uX_mm_insert_epi8_15, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam1,			15
			ret
funcend
	
funcstart _uX_mm_insert_epi8, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword, _Imm8:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*size_t_size]
			jmp		dword ptr [_m128iinsertepi8jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128iinsertepi8jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
			jmp				rbx
		endif
		
		_m128iinsertepi8_0 label size_t
			pinsrb 			xmm0, 			dparam1,			0
			ret
		_m128iinsertepi8_1 label size_t
			pinsrb 			xmm0, 			dparam1,			1
			ret
		_m128iinsertepi8_2 label size_t
			pinsrb 			xmm0, 			dparam1,			2
			ret
		_m128iinsertepi8_3 label size_t
			pinsrb 			xmm0, 			dparam1,			3
			ret
		_m128iinsertepi8_4 label size_t
			pinsrb 			xmm0, 			dparam1,			4
			ret
		_m128iinsertepi8_5 label size_t
			pinsrb 			xmm0, 			dparam1,			5
			ret
		_m128iinsertepi8_6 label size_t
			pinsrb 			xmm0, 			dparam1,			6
			ret
		_m128iinsertepi8_7 label size_t
			pinsrb 			xmm0, 			dparam1,			7
			ret
		_m128iinsertepi8_8 label size_t
			pinsrb 			xmm0, 			dparam1,			8
			ret
		_m128iinsertepi8_9 label size_t
			pinsrb 			xmm0, 			dparam1,			9
			ret
		_m128iinsertepi8_10 label size_t
			pinsrb 			xmm0, 			dparam1,			10
			ret
		_m128iinsertepi8_11 label size_t
			pinsrb 			xmm0, 			dparam1,			11
			ret
		_m128iinsertepi8_12 label size_t
			pinsrb 			xmm0, 			dparam1,			12
			ret
		_m128iinsertepi8_13 label size_t
			pinsrb 			xmm0, 			dparam1,			13
			ret
		_m128iinsertepi8_14 label size_t
			pinsrb 			xmm0, 			dparam1,			14
			ret			
		_m128iinsertepi8_15 label size_t
			pinsrb 			xmm0, 			dparam1,			15
			ret		
		;.endif

funcend
	
funcstart _uX_mm_insert_epi32_0, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrd 			xmm0, 			dparam1,			0
			ret
funcend

funcstart _uX_mm_insert_epi32_1, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrd 			xmm0, 			dparam1,			1
			ret
funcend

funcstart _uX_mm_insert_epi32_2, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrd 			xmm0, 			dparam1,			2
			ret
funcend

funcstart _uX_mm_insert_epi32_3, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword
			pinsrd 			xmm0, 			dparam1,			3
			ret
funcend

funcstart _uX_mm_insert_epi32, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:dword, _Imm8:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*size_t_size]
			jmp		dword ptr [_m128iinsertepi32jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128iinsertepi32jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
			jmp				rbx
		endif
		
		_m128iinsertepi32_0 label size_t
			pinsrd 			xmm0, 			dparam1,			0
			ret
		_m128iinsertepi32_1 label size_t
			pinsrd 			xmm0, 			dparam1,			1
			ret
		_m128iinsertepi32_2 label size_t
			pinsrd 			xmm0, 			dparam1,			2
			ret
		_m128iinsertepi32_3 label size_t
			pinsrd 			xmm0, 			dparam1,			3
			ret
		;.endif

funcend
	
ifdef __X64__
funcstart _uX_mm_insert_epi64_0, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:qword
			pinsrq 			xmm0, 			rparam1,			0
			ret
funcend

funcstart _uX_mm_insert_epi64_1, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:qword
			pinsrq 			xmm0, 			rparam1,			1
			ret
funcend

funcstart _uX_mm_insert_epi64, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_B:qword, _Imm8:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*size_t_size]
			jmp		dword ptr [_m128iinsertepi64jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128iinsertepi64jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
			jmp				rbx
		endif
		
		_m128iinsertepi64_0 label size_t
			pinsrq 			xmm0, 			rparam1,			0
			ret
		_m128iinsertepi64_1 label size_t
			pinsrq 			xmm0, 			rparam1,			1
			ret
		;.endif

funcend
endif ;__X64__
	
;************************************
; Extract integer
;************************************
funcstart _uX_mm_extract_epi8_0, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			0
			ret
funcend

funcstart _uX_mm_extract_epi8_1, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			1
			ret
funcend

funcstart _uX_mm_extract_epi8_2, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			2
			ret
funcend

funcstart _uX_mm_extract_epi8_3, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			3
			ret
funcend

funcstart _uX_mm_extract_epi8_4, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			4
			ret
funcend

funcstart _uX_mm_extract_epi8_5, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			5
			ret
funcend

funcstart _uX_mm_extract_epi8_6, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			6
			ret
funcend

funcstart _uX_mm_extract_epi8_7, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			7
			ret
funcend

funcstart _uX_mm_extract_epi8_8, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			8
			ret
funcend

funcstart _uX_mm_extract_epi8_9, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			9
			ret
funcend

funcstart _uX_mm_extract_epi8_10, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			10
			ret
funcend

funcstart _uX_mm_extract_epi8_11, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			11
			ret
funcend

funcstart _uX_mm_extract_epi8_12, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			12
			ret
funcend

funcstart _uX_mm_extract_epi8_13, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			13
			ret
funcend

funcstart _uX_mm_extract_epi8_14, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			14
			ret
funcend

funcstart _uX_mm_extract_epi8_15, callconv, dword, < >, Inxmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			15
			ret
funcend
	
funcstart _uX_mm_extract_epi8, callconv, dword, < >, Inxmm_A:xmmword, Inint_Imm:dword

		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*size_t_size]
			jmp		dword ptr [_m128iextractepi8jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128iextractepi8jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128iextractepi8_0 label size_t
			pextrb 			dreturn, 			xmm0,			0
			ret
		_m128iextractepi8_1 label size_t
			pextrb 			dreturn, 			xmm0,			1
			ret
		_m128iextractepi8_2 label size_t
			pextrb 			dreturn, 			xmm0,			2
			ret
		_m128iextractepi8_3 label size_t
			pextrb 			dreturn, 			xmm0,			3
			ret
		_m128iextractepi8_4 label size_t
			pextrb 			dreturn, 			xmm0,			4
			ret
		_m128iextractepi8_5 label size_t
			pextrb 			dreturn, 			xmm0,			5
			ret
		_m128iextractepi8_6 label size_t
			pextrb 			dreturn, 			xmm0,			6
			ret
		_m128iextractepi8_7 label size_t
			pextrb 			dreturn, 			xmm0,			7
			ret
		_m128iextractepi8_8 label size_t
			pextrb 			dreturn, 			xmm0,			8
			ret
		_m128iextractepi8_9 label size_t
			pextrb 			dreturn, 			xmm0,			9
			ret
		_m128iextractepi8_10 label size_t
			pextrb 			dreturn, 			xmm0,			10
			ret
		_m128iextractepi8_11 label size_t
			pextrb 			dreturn, 			xmm0,			11
			ret
		_m128iextractepi8_12 label size_t
			pextrb 			dreturn, 			xmm0,			12
			ret
		_m128iextractepi8_13 label size_t
			pextrb 			dreturn, 			xmm0,			13
			ret
		_m128iextractepi8_14 label size_t
			pextrb 			dreturn, 			xmm0,			14
			ret			
		_m128iextractepi8_15 label size_t
			pextrb 			dreturn, 			xmm0,			15
			ret		
		;.endif

funcend
	
funcstart _uX_mm_extract_epi32_0, callconv, dword, < >, Inxmm_A:xmmword
			pextrd 			dreturn, 			xmm0,			0
			ret
funcend

funcstart _uX_mm_extract_epi32_1, callconv, dword, < >, Inxmm_A:xmmword
			pextrd 			dreturn, 			xmm0,			1
			ret
funcend

funcstart _uX_mm_extract_epi32_2, callconv, dword, < >, Inxmm_A:xmmword
			pextrd 			dreturn, 			xmm0,			2
			ret
funcend

funcstart _uX_mm_extract_epi32_3, callconv, dword, < >, Inxmm_A:xmmword
			pextrd 			dreturn, 			xmm0,			3
			ret
funcend

funcstart _uX_mm_extract_epi32, callconv, dword, < >, Inxmm_A:xmmword, Inint_Imm:dword

		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*size_t_size]
			jmp		dword ptr [_m128iextractepi32jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128iextractepi32jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128iextractepi32_0 label size_t
			pextrd 			dreturn, 			xmm0,			0
			ret
		_m128iextractepi32_1 label size_t
			pextrd 			dreturn, 			xmm0,			1
			ret
		_m128iextractepi32_2 label size_t
			pextrd 			dreturn, 			xmm0,			2
			ret
		_m128iextractepi32_3 label size_t
			pextrd 			dreturn, 			xmm0,			3
			ret
		;.endif

funcend
	
ifdef __X64__
funcstart _uX_mm_extract_epi64_0, qword, < >, Inxmm_A:xmmword
			pextrq			rreturn,			xmm0,			0
			ret
funcend

funcstart _uX_mm_extract_epi64_1, qword, < >, Inxmm_A:xmmword
			pextrq			rreturn,			xmm0,			1
			ret
funcend

funcstart _uX_mm_extract_epi64, qword, < >, Inxmm_A:xmmword, Inint_Imm:dword

		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*size_t_size]
			jmp		dword ptr [_m128iextractepi64jmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128iextractepi64jmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128iextractepi64_0 label size_t
			pextrq			rreturn,			xmm0,			0
			ret
		_m128iextractepi64_1 label size_t
			pextrq			rreturn,			xmm0,			1
			ret
		;.endif

funcend
endif ;__X64__
	
;************************************
; Horizontal packed word minimum
;************************************
funcstart _uX_mm_minpos_epu16, callconv, xmmword, < >, Inxmm_A:xmmword

			phminposuw			xmm0,			xmm0

			ret
funcend

;************************************
; Packed/single float double precision rounding
;************************************
funcstart _uX_mm_round_pd_0, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			0
			ret
funcend

funcstart _uX_mm_round_pd_1, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			1
			ret
funcend

funcstart _uX_mm_round_pd_2, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			2
			ret
funcend

funcstart _uX_mm_round_pd_3, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			3
			ret
funcend

funcstart _uX_mm_round_pd_4, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			4
			ret
funcend

funcstart _uX_mm_round_pd_5, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			5
			ret
funcend

funcstart _uX_mm_round_pd_6, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			6
			ret
funcend

funcstart _uX_mm_round_pd_7, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			7
			ret
funcend

funcstart _uX_mm_round_pd_8, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			8
			ret
funcend

funcstart _uX_mm_round_pd_9, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			9
			ret
funcend

funcstart _uX_mm_round_pd_10, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			10
			ret
funcend

funcstart _uX_mm_round_pd_11, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			11
			ret
funcend

funcstart _uX_mm_round_pd_12, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			12
			ret
funcend

funcstart _uX_mm_round_pd, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_RoundMode:dword

		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*size_t_size]
			jmp		dword ptr [_m128droundpdjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128droundpdjmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128droundpd_0 label size_t
			roundpd 			xmm0, 			xmm0,			0
			ret
		_m128droundpd_1 label size_t
			roundpd 			xmm0, 			xmm0,			1
			ret
		_m128droundpd_2 label size_t
			roundpd 			xmm0, 			xmm0,			2
			ret
		_m128droundpd_3 label size_t
			roundpd 			xmm0, 			xmm0,			3
			ret
		_m128droundpd_4 label size_t
			roundpd 			xmm0, 			xmm0,			4
			ret
		_m128droundpd_5 label size_t
			roundpd 			xmm0, 			xmm0,			5
			ret
		_m128droundpd_6 label size_t
			roundpd 			xmm0, 			xmm0,			6
			ret
		_m128droundpd_7 label size_t
			roundpd 			xmm0, 			xmm0,			7
			ret
		_m128droundpd_8 label size_t
			roundpd 			xmm0, 			xmm0,			8
			ret
		_m128droundpd_9 label size_t
			roundpd 			xmm0, 			xmm0,			9
			ret
		_m128droundpd_10 label size_t
			roundpd 			xmm0, 			xmm0,			10
			ret
		_m128droundpd_11 label size_t
			roundpd 			xmm0, 			xmm0,			11
			ret
		_m128droundpd_12 label size_t
			roundpd 			xmm0, 			xmm0,			12
			ret
		;.endif

funcend

funcstart _uX_mm_round_sd_0, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			0
			ret
funcend

funcstart _uX_mm_round_sd_1, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			1
			ret
funcend

funcstart _uX_mm_round_sd_2, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			2
			ret
funcend

funcstart _uX_mm_round_sd_3, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			3
			ret
funcend

funcstart _uX_mm_round_sd_4, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			4
			ret
funcend

funcstart _uX_mm_round_sd_5, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			5
			ret
funcend

funcstart _uX_mm_round_sd_6, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			6
			ret
funcend

funcstart _uX_mm_round_sd_7, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			7
			ret
funcend

funcstart _uX_mm_round_sd_8, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			8
			ret
funcend

funcstart _uX_mm_round_sd_9, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			9
			ret
funcend

funcstart _uX_mm_round_sd_10, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			10
			ret
funcend

funcstart _uX_mm_round_sd_11, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			11
			ret
funcend

funcstart _uX_mm_round_sd_12, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			12
			ret
funcend

funcstart _uX_mm_round_sd, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_RoundMode:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*size_t_size]
			jmp		dword ptr [_m128droundsdjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128droundsdjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
			jmp				rbx
		endif
		
		_m128droundsd_0 label size_t
			roundsd 			xmm0, 			xmm1,			0
			ret
		_m128droundsd_1 label size_t
			roundsd 			xmm0, 			xmm1,			1
			ret
		_m128droundsd_2 label size_t
			roundsd 			xmm0, 			xmm1,			2
			ret
		_m128droundsd_3 label size_t
			roundsd 			xmm0, 			xmm1,			3
			ret
		_m128droundsd_4 label size_t
			roundsd 			xmm0, 			xmm1,			4
			ret
		_m128droundsd_5 label size_t
			roundsd 			xmm0, 			xmm1,			5
			ret
		_m128droundsd_6 label size_t
			roundsd 			xmm0, 			xmm1,			6
			ret
		_m128droundsd_7 label size_t
			roundsd 			xmm0, 			xmm1,			7
			ret
		_m128droundsd_8 label size_t
			roundsd 			xmm0, 			xmm1,			8
			ret
		_m128droundsd_9 label size_t
			roundsd 			xmm0, 			xmm1,			9
			ret
		_m128droundsd_10 label size_t
			roundsd 			xmm0, 			xmm1,			10
			ret
		_m128droundsd_11 label size_t
			roundsd 			xmm0, 			xmm1,			11
			ret
		_m128droundsd_12 label size_t
			roundsd 			xmm0, 			xmm1,			12
			ret
		;.endif

funcend

funcstart _uX_mm_round_ps_0, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			0
			ret
funcend

funcstart _uX_mm_round_ps_1, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			1
			ret
funcend

funcstart _uX_mm_round_ps_2, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			2
			ret
funcend

funcstart _uX_mm_round_ps_3, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			3
			ret
funcend

funcstart _uX_mm_round_ps_4, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			4
			ret
funcend

funcstart _uX_mm_round_ps_5, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			5
			ret
funcend

funcstart _uX_mm_round_ps_6, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			6
			ret
funcend

funcstart _uX_mm_round_ps_7, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			7
			ret
funcend

funcstart _uX_mm_round_ps_8, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			8
			ret
funcend

funcstart _uX_mm_round_ps_9, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			9
			ret
funcend

funcstart _uX_mm_round_ps_10, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			10
			ret
funcend

funcstart _uX_mm_round_ps_11, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			11
			ret
funcend

funcstart _uX_mm_round_ps_12, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			12
			ret
funcend

funcstart _uX_mm_round_ps, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_RoundMode:dword

		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*size_t_size]
			jmp		dword ptr [_m128roundpsjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128roundpsjmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
			jmp				rbx
		endif
		
		_m128roundps_0 label size_t
			roundps 			xmm0, 			xmm0,			0
			ret
		_m128roundps_1 label size_t
			roundps 			xmm0, 			xmm0,			1
			ret
		_m128roundps_2 label size_t
			roundps 			xmm0, 			xmm0,			2
			ret
		_m128roundps_3 label size_t
			roundps 			xmm0, 			xmm0,			3
			ret
		_m128roundps_4 label size_t
			roundps 			xmm0, 			xmm0,			4
			ret
		_m128roundps_5 label size_t
			roundps 			xmm0, 			xmm0,			5
			ret
		_m128roundps_6 label size_t
			roundps 			xmm0, 			xmm0,			6
			ret
		_m128roundps_7 label size_t
			roundps 			xmm0, 			xmm0,			7
			ret
		_m128roundps_8 label size_t
			roundps 			xmm0, 			xmm0,			8
			ret
		_m128roundps_9 label size_t
			roundps 			xmm0, 			xmm0,			9
			ret
		_m128roundps_10 label size_t
			roundps 			xmm0, 			xmm0,			10
			ret
		_m128roundps_11 label size_t
			roundps 			xmm0, 			xmm0,			11
			ret
		_m128roundps_12 label size_t
			roundps 			xmm0, 			xmm0,			12
			ret
		;.endif

funcend

funcstart _uX_mm_round_ss_0, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			0
			ret
funcend

funcstart _uX_mm_round_ss_1, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			1
			ret
funcend

funcstart _uX_mm_round_ss_2, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			2
			ret
funcend

funcstart _uX_mm_round_ss_3, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			3
			ret
funcend

funcstart _uX_mm_round_ss_4, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			4
			ret
funcend

funcstart _uX_mm_round_ss_5, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			5
			ret
funcend

funcstart _uX_mm_round_ss_6, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			6
			ret
funcend

funcstart _uX_mm_round_ss_7, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			7
			ret
funcend

funcstart _uX_mm_round_ss_8, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			8
			ret
funcend

funcstart _uX_mm_round_ss_9, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			9
			ret
funcend

funcstart _uX_mm_round_ss_10, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			10
			ret
funcend

funcstart _uX_mm_round_ss_11, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			11
			ret
funcend

funcstart _uX_mm_round_ss_12, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			12
			ret
funcend

funcstart _uX_mm_round_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_RoundMode:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*size_t_size]
			jmp		dword ptr [_m128roundssjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128roundssjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
			jmp				rbx
		endif
		
		_m128roundss_0 label size_t
			roundss 			xmm0, 			xmm1,			0
			ret
		_m128roundss_1 label size_t
			roundss 			xmm0, 			xmm1,			1
			ret
		_m128roundss_2 label size_t
			roundss 			xmm0, 			xmm1,			2
			ret
		_m128roundss_3 label size_t
			roundss 			xmm0, 			xmm1,			3
			ret
		_m128roundss_4 label size_t
			roundss 			xmm0, 			xmm1,			4
			ret
		_m128roundss_5 label size_t
			roundss 			xmm0, 			xmm1,			5
			ret
		_m128roundss_6 label size_t
			roundss 			xmm0, 			xmm1,			6
			ret
		_m128roundss_7 label size_t
			roundss 			xmm0, 			xmm1,			7
			ret
		_m128roundss_8 label size_t
			roundss 			xmm0, 			xmm1,			8
			ret
		_m128roundss_9 label size_t
			roundss 			xmm0, 			xmm1,			9
			ret
		_m128roundss_10 label size_t
			roundss 			xmm0, 			xmm1,			10
			ret
		_m128roundss_11 label size_t
			roundss 			xmm0, 			xmm1,			11
			ret
		_m128roundss_12 label size_t
			roundss 			xmm0, 			xmm1,			12
			ret
		;.endif

funcend

;************************************
; ceil/floor intrinsics
;************************************
funcstart _uX_mm_floor_pd, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			1
			ret
funcend

funcstart _uX_mm_ceil_pd, callconv, xmmword, < >, Inxmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			2
			ret
funcend

funcstart _uX_mm_floor_sd, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			1
			ret
funcend

funcstart _uX_mm_ceil_sd, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			2
			ret
funcend

funcstart _uX_mm_floor_ps, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			1
			ret
funcend

funcstart _uX_mm_ceil_ps, callconv, xmmword, < >, Inxmm_A:xmmword
			roundps 			xmm0, 			xmm0,			2
			ret
funcend

funcstart _uX_mm_floor_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			1
			ret
funcend

funcstart _uX_mm_ceil_ss, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			roundss 			xmm0, 			xmm1,			2
			ret
funcend

;************************************
; Packed integer sign-extension
;************************************
funcstart _uX_mm_cvtepi8_epi32, callconv, xmmword, < >, Inxmm_A:xmmword
			pmovsxbd 			xmm0, 			xmm0
			ret
funcend

funcstart _uX_mm_cvtepi16_epi32, callconv, xmmword, < >, Inxmm_A:xmmword
			pmovsxwd 			xmm0, 			xmm0
			ret
funcend

funcstart _uX_mm_cvtepi8_epi64, callconv, xmmword, < >, Inxmm_A:xmmword
			pmovsxbq 			xmm0, 			xmm0
			ret
funcend

funcstart _uX_mm_cvtepi32_epi64, callconv, xmmword, < >, Inxmm_A:xmmword
			pmovsxdq 			xmm0, 			xmm0
			ret
funcend

funcstart _uX_mm_cvtepi16_epi64, callconv, xmmword, < >, Inxmm_A:xmmword
			pmovsxwq 			xmm0, 			xmm0
			ret
funcend

funcstart _uX_mm_cvtepi8_epi16, callconv, xmmword, < >, Inxmm_A:xmmword
			pmovsxbw 			xmm0, 			xmm0
			ret
funcend

;************************************
; Packed integer zero-extension
;************************************
funcstart _uX_mm_cvtepu8_epi32, callconv, xmmword, < >, Inxmm_A:xmmword
			pmovzxbd 			xmm0, 			xmm0
			ret
funcend

funcstart _uX_mm_cvtepu16_epi32, callconv, xmmword, < >, Inxmm_A:xmmword
			pmovzxwd 			xmm0, 			xmm0
			ret
funcend

funcstart _uX_mm_cvtepu8_epi64, callconv, xmmword, < >, Inxmm_A:xmmword
			pmovzxbq 			xmm0, 			xmm0
			ret
funcend

funcstart _uX_mm_cvtepu32_epi64, callconv, xmmword, < >, Inxmm_A:xmmword
			pmovzxdq 			xmm0, 			xmm0
			ret
funcend

funcstart _uX_mm_cvtepu16_epi64, callconv, xmmword, < >, Inxmm_A:xmmword
			pmovzxwq 			xmm0, 			xmm0
			ret
funcend

funcstart _uX_mm_cvtepu8_epi16, callconv, xmmword, < >, Inxmm_A:xmmword
			pmovzxbw 			xmm0, 			xmm0
			ret
funcend

;************************************
; Pack 8 double words from 2 operands into 8 words
;************************************
funcstart _uX_mm_packus_epi32, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			packusdw 			xmm0, 			xmm1
			ret
funcend

;************************************
; Load double quadword using non-temporal aligned hint
;************************************
funcstart _uX_mm_stream_load_si128, callconv, xmmword, < >, InXPmm_A:ptr xmmword
	
			movntdqa			xmm0,		xmmword ptr [rparam0]

			ret
funcend

endif ;__MIC__

	end
