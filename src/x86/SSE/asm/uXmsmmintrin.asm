
	include uXmx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	include uXmsseintrin.inc
	
	.data

	.const
	
	__align_size_t
	_m128extractpsjmptable isize_t	offset _m128extractps_0, offset _m128extractps_1, offset _m128extractps_2, offset _m128extractps_3
	
	__align_size_t
	_m128iinsertepi8jmptable isize_t	offset _m128iinsertepi8_0, offset _m128iinsertepi8_1, offset _m128iinsertepi8_2, offset _m128iinsertepi8_3, offset _m128iinsertepi8_4, \
										offset _m128iinsertepi8_5, offset _m128iinsertepi8_6, offset _m128iinsertepi8_7, offset _m128iinsertepi8_8, offset _m128iinsertepi8_9, \
										offset _m128iinsertepi8_10, offset _m128iinsertepi8_11, offset _m128iinsertepi8_12, offset _m128iinsertepi8_13, offset _m128iinsertepi8_14, \
										offset _m128iinsertepi8_15

	__align_size_t
	_m128iinsertepi32jmptable isize_t	offset _m128iinsertepi32_0, offset _m128iinsertepi32_1, offset _m128iinsertepi32_2, offset _m128iinsertepi32_3
	
	__align_size_t
	_m128iinsertepi64jmptable isize_t	offset _m128iinsertepi64_0, offset _m128iinsertepi64_1
	
	__align_size_t
	_m128iextractepi8jmptable isize_t	offset _m128iextractepi8_0, offset _m128iextractepi8_1, offset _m128iextractepi8_2, offset _m128iextractepi8_3, offset _m128iextractepi8_4, \
										offset _m128iextractepi8_5, offset _m128iextractepi8_6, offset _m128iextractepi8_7, offset _m128iextractepi8_8, offset _m128iextractepi8_9, \
										offset _m128iextractepi8_10, offset _m128iextractepi8_11, offset _m128iextractepi8_12, offset _m128iextractepi8_13, offset _m128iextractepi8_14, \
										offset _m128iextractepi8_15

	__align_size_t
	_m128iextractepi32jmptable isize_t	offset _m128iextractepi32_0, offset _m128iextractepi32_1, offset _m128iextractepi32_2, offset _m128iextractepi32_3
	
	__align_size_t
	_m128iextractepi64jmptable isize_t	offset _m128iextractepi64_0, offset _m128iextractepi64_1
	
	__align_size_t
	_m128droundpdjmptable isize_t	offset _m128droundpd_0, offset _m128droundpd_1, offset _m128droundpd_2, offset _m128droundpd_3, offset _m128droundpd_4, \
									offset _m128droundpd_5, offset _m128droundpd_6, offset _m128droundpd_7, offset _m128droundpd_8, offset _m128droundpd_9, \
									offset _m128droundpd_10, offset _m128droundpd_11, offset _m128droundpd_12

	__align_size_t
	_m128droundsdjmptable isize_t	offset _m128droundsd_0, offset _m128droundsd_1, offset _m128droundsd_2, offset _m128droundsd_3, offset _m128droundsd_4, \
									offset _m128droundsd_5, offset _m128droundsd_6, offset _m128droundsd_7, offset _m128droundsd_8, offset _m128droundsd_9, \
									offset _m128droundsd_10, offset _m128droundsd_11, offset _m128droundsd_12

	__align_size_t
	_m128roundpsjmptable isize_t	offset _m128roundps_0, offset _m128roundps_1, offset _m128roundps_2, offset _m128roundps_3, offset _m128roundps_4, \
									offset _m128roundps_5, offset _m128roundps_6, offset _m128roundps_7, offset _m128roundps_8, offset _m128roundps_9, \
									offset _m128roundps_10, offset _m128roundps_11, offset _m128roundps_12

	__align_size_t
	_m128roundssjmptable isize_t	offset _m128roundss_0, offset _m128roundss_1, offset _m128roundss_2, offset _m128roundss_3, offset _m128roundss_4, \
									offset _m128roundss_5, offset _m128roundss_6, offset _m128roundss_7, offset _m128roundss_8, offset _m128roundss_9, \
									offset _m128roundss_10, offset _m128roundss_11, offset _m128roundss_12


	__align_xmm_fp_opt
	__veccall_opt

	include uXmxmmconstdata.inc
	
	.code
	
;************************************
; blend instructions
;************************************
_uXm_func_start _uXm_mm_blendv_epi8, xmmword, < >, 3 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword, InXmm_Bmask:xmmword

			movdqa				xmm3,			xmm0
			movdqa				xmm0,			xmm2
			pblendvb			xmm3,			xmm1,			xmm0
			movdqa				xmm0,			xmm3

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_blendv_ps, xmmword, < >, 3 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword, InXmm_Bmask:xmmword

			movaps				xmm3,			xmm0
			movaps				xmm0,			xmm2
			blendvps			xmm3,			xmm1,			xmm0
			movaps				xmm0,			xmm3

			ret
_uXm_func_end

_uXm_func_start _uXm_mm_blendv_pd, xmmword, < >, 3 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword, InXmm_Bmask:xmmword

			movapd				xmm3,			xmm0
			movapd				xmm0,			xmm2
			blendvpd			xmm3,			xmm1,			xmm0
			movapd				xmm0,			xmm3

			ret
_uXm_func_end

;************************************
; Packed integer 64-bit comparison
;************************************
_uXm_func_start _uXm_mm_cmpeq_epi64, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pcmpeqq			xmm0,			xmm1

			ret
_uXm_func_end
	
;************************************
; Min/max packed integer instructions
;************************************
_uXm_func_start _uXm_mm_min_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pminsb			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_max_epi8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmaxsb			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_min_epu16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pminuw			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_max_epu16, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmaxuw			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_min_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pminsd			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_max_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmaxsd			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_min_epu32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pminud			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_max_epu32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmaxud			xmm0,			xmm1

			ret
_uXm_func_end
	
;************************************
; Packed integer 32-bit multiplication
;************************************
_uXm_func_start _uXm_mm_mullo_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmulld			xmm0,			xmm1

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_mul_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			pmuldq			xmm0,			xmm1

			ret
_uXm_func_end
	
;************************************
; Packed integer 128-bit bitwise comparison
;************************************
_uXm_func_start _uXm_mm_testz_si128, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			ptest			xmm0,			xmm1
			mov				eax,			1
			mov				ecx,			0
			cmovz			ecx,			eax
			mov				eax,			ecx

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_testc_si128, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			ptest			xmm0,			xmm1
			mov				eax,			1
			mov				ecx,			0
			cmovb			ecx,			eax
			mov				eax,			ecx

			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_testnzc_si128, dword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword

			ptest			xmm0,			xmm1
			mov				eax,			1
			mov				ecx,			0
			cmova			ecx,			eax
			mov				eax,			ecx

			ret
_uXm_func_end

;************************************
; Extract binary representation of single precision float
;************************************
_uXm_func_start _uXm_mm_extract_ps_0, dword, < >, xmm_size ;InXmm_A:xmmword
			extractps 			dreturn, 			xmm0,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_ps_1, dword, < >, xmm_size ;InXmm_A:xmmword
			extractps 			dreturn, 			xmm0,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_ps_2, dword, < >, xmm_size ;InXmm_A:xmmword
			extractps 			dreturn, 			xmm0,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_ps_3, dword, < >, xmm_size ;InXmm_A:xmmword
			extractps 			dreturn, 			xmm0,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_ps, dword, < >, xmm_size + reg_size ;InXmm_A:xmmword, _Imm8:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128extractpsjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128extractpsjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
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

_uXm_func_end
	
;************************************
; Insert integer
;************************************
_uXm_func_start _uXm_mm_insert_epi8_0, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_1, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_2, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_3, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_4, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_5, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_6, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_7, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_8, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_9, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_10, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_11, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_12, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_13, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			13
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_14, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			14
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi8_15, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrb 			xmm0, 			dparam2,			15
			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_insert_epi8, xmmword, < >, xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_B:dword, _Imm8:dword

		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128iinsertepi8jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128iinsertepi8jmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128iinsertepi8_0 label size_t
			pinsrb 			xmm0, 			dparam2,			0
			ret
		_m128iinsertepi8_1 label size_t
			pinsrb 			xmm0, 			dparam2,			1
			ret
		_m128iinsertepi8_2 label size_t
			pinsrb 			xmm0, 			dparam2,			2
			ret
		_m128iinsertepi8_3 label size_t
			pinsrb 			xmm0, 			dparam2,			3
			ret
		_m128iinsertepi8_4 label size_t
			pinsrb 			xmm0, 			dparam2,			4
			ret
		_m128iinsertepi8_5 label size_t
			pinsrb 			xmm0, 			dparam2,			5
			ret
		_m128iinsertepi8_6 label size_t
			pinsrb 			xmm0, 			dparam2,			6
			ret
		_m128iinsertepi8_7 label size_t
			pinsrb 			xmm0, 			dparam2,			7
			ret
		_m128iinsertepi8_8 label size_t
			pinsrb 			xmm0, 			dparam2,			8
			ret
		_m128iinsertepi8_9 label size_t
			pinsrb 			xmm0, 			dparam2,			9
			ret
		_m128iinsertepi8_10 label size_t
			pinsrb 			xmm0, 			dparam2,			10
			ret
		_m128iinsertepi8_11 label size_t
			pinsrb 			xmm0, 			dparam2,			11
			ret
		_m128iinsertepi8_12 label size_t
			pinsrb 			xmm0, 			dparam2,			12
			ret
		_m128iinsertepi8_13 label size_t
			pinsrb 			xmm0, 			dparam2,			13
			ret
		_m128iinsertepi8_14 label size_t
			pinsrb 			xmm0, 			dparam2,			14
			ret			
		_m128iinsertepi8_15 label size_t
			pinsrb 			xmm0, 			dparam2,			15
			ret		
		;.endif

_uXm_func_end
	
_uXm_func_start _uXm_mm_insert_epi32_0, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrd 			xmm0, 			dparam2,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi32_1, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrd 			xmm0, 			dparam2,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi32_2, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrd 			xmm0, 			dparam2,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi32_3, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:dword
			pinsrd 			xmm0, 			dparam2,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi32, xmmword, < >, xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_B:dword, _Imm8:dword

		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128iinsertepi32jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128iinsertepi32jmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128iinsertepi32_0 label size_t
			pinsrd 			xmm0, 			dparam2,			0
			ret
		_m128iinsertepi32_1 label size_t
			pinsrd 			xmm0, 			dparam2,			1
			ret
		_m128iinsertepi32_2 label size_t
			pinsrd 			xmm0, 			dparam2,			2
			ret
		_m128iinsertepi32_3 label size_t
			pinsrd 			xmm0, 			dparam2,			3
			ret
		;.endif

_uXm_func_end
	
ifdef __X64__
_uXm_func_start _uXm_mm_insert_epi64_0, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:qword
			pinsrq 			xmm0, 			rparam2,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi64_1, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_B:qword
			pinsrq 			xmm0, 			rparam2,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_insert_epi64, xmmword, < >, xmm_size + 2 * reg_size ;InXmm_A:xmmword, Inint_B:qword, _Imm8:dword

		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128iinsertepi64jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128iinsertepi64jmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128iinsertepi64_0 label size_t
			pinsrq 			xmm0, 			rparam2,			0
			ret
		_m128iinsertepi64_1 label size_t
			pinsrq 			xmm0, 			rparam2,			1
			ret
		;.endif

_uXm_func_end
endif ;__X64__
	
;************************************
; Extract integer
;************************************
_uXm_func_start _uXm_mm_extract_epi8_0, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_1, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_2, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_3, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_4, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_5, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_6, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_7, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_8, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_9, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_10, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_11, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_12, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_13, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			13
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_14, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			14
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi8_15, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrb 			dreturn, 			xmm0,			15
			ret
_uXm_func_end
	
_uXm_func_start _uXm_mm_extract_epi8, dword, < >, xmm_size + reg_size ;InXmm_A:xmmword, _Imm8:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128iextractepi8jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128iextractepi8jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
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

_uXm_func_end
	
_uXm_func_start _uXm_mm_extract_epi32_0, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrd 			dreturn, 			xmm0,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi32_1, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrd 			dreturn, 			xmm0,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi32_2, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrd 			dreturn, 			xmm0,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi32_3, dword, < >, xmm_size ;InXmm_A:xmmword
			pextrd 			dreturn, 			xmm0,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi32, dword, < >, xmm_size + reg_size ;InXmm_A:xmmword, _Imm8:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128iextractepi32jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128iextractepi32jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
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

_uXm_func_end
	
ifdef __X64__
_uXm_func_start _uXm_mm_extract_epi64_0, qword, < >, xmm_size ;InXmm_A:xmmword
			pextrq			rreturn,			xmm0,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi64_1, qword, < >, xmm_size ;InXmm_A:xmmword
			pextrq			rreturn,			xmm0,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_extract_epi64, qword, < >, xmm_size + reg_size ;InXmm_A:xmmword, _Imm8:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128iextractepi64jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128iextractepi64jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m128iextractepi64_0 label size_t
			pextrq			rreturn,			xmm0,			0
			ret
		_m128iextractepi64_1 label size_t
			pextrq			rreturn,			xmm0,			1
			ret
		;.endif

_uXm_func_end
endif ;__X64__
	
;************************************
; Horizontal packed word minimum
;************************************
_uXm_func_start _uXm_mm_minpos_epu16, xmmword, < >, xmm_size ;InXmm_A:xmmword

			phminposuw			xmm0,			xmm0

			ret
_uXm_func_end

;************************************
; Packed/single float double precision rounding
;************************************
_uXm_func_start _uXm_mm_round_pd_0, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_pd_1, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_pd_2, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_pd_3, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_pd_4, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_pd_5, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_pd_6, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_pd_7, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_pd_8, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_pd_9, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_pd_10, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_pd_11, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_pd_12, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_pd, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_RoundMode:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128droundpdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128droundpdjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
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

_uXm_func_end

_uXm_func_start _uXm_mm_round_sd_0, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_sd_1, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_sd_2, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_sd_3, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_sd_4, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_sd_5, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_sd_6, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_sd_7, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_sd_8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_sd_9, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_sd_10, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_sd_11, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_sd_12, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_sd, xmmword, < >, 2 * xmm_size + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, Inint_RoundMode:dword

		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128droundsdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128droundsdjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
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

_uXm_func_end

_uXm_func_start _uXm_mm_round_ps_0, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ps_1, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ps_2, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ps_3, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ps_4, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ps_5, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ps_6, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ps_7, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ps_8, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ps_9, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ps_10, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ps_11, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ps_12, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ps, xmmword, < >, xmm_size + reg_size ;InXmm_A:xmmword, Inint_RoundMode:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128roundpsjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128roundpsjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
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

_uXm_func_end

_uXm_func_start _uXm_mm_round_ss_0, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ss_1, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ss_2, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ss_3, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ss_4, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			4
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ss_5, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			5
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ss_6, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			6
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ss_7, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			7
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ss_8, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			8
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ss_9, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			9
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ss_10, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			10
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ss_11, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			11
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ss_12, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			12
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_round_ss, xmmword, < >, 2 * xmm_size + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, Inint_RoundMode:dword

		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128roundssjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128roundssjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
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

_uXm_func_end

;************************************
; ceil/floor intrinsics
;************************************
_uXm_func_start _uXm_mm_floor_pd, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ceil_pd, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundpd 			xmm0, 			xmm0,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_floor_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ceil_sd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundsd 			xmm0, 			xmm1,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_floor_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ceil_ps, xmmword, < >, xmm_size ;InXmm_A:xmmword
			roundps 			xmm0, 			xmm0,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_floor_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_ceil_ss, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			roundss 			xmm0, 			xmm1,			2
			ret
_uXm_func_end

;************************************
; Packed integer sign-extension
;************************************
_uXm_func_start _uXm_mm_cvtepi8_epi32, xmmword, < >, xmm_size ;InXmm_A:xmmword
			pmovsxbd 			xmm0, 			xmm0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtepi16_epi32, xmmword, < >, xmm_size ;InXmm_A:xmmword
			pmovsxwd 			xmm0, 			xmm0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtepi8_epi64, xmmword, < >, xmm_size ;InXmm_A:xmmword
			pmovsxbq 			xmm0, 			xmm0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtepi32_epi64, xmmword, < >, xmm_size ;InXmm_A:xmmword
			pmovsxdq 			xmm0, 			xmm0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtepi16_epi64, xmmword, < >, xmm_size ;InXmm_A:xmmword
			pmovsxwq 			xmm0, 			xmm0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtepi8_epi16, xmmword, < >, xmm_size ;InXmm_A:xmmword
			pmovsxbw 			xmm0, 			xmm0
			ret
_uXm_func_end

;************************************
; Packed integer zero-extension
;************************************
_uXm_func_start _uXm_mm_cvtepu8_epi32, xmmword, < >, xmm_size ;InXmm_A:xmmword
			pmovzxbd 			xmm0, 			xmm0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtepu16_epi32, xmmword, < >, xmm_size ;InXmm_A:xmmword
			pmovzxwd 			xmm0, 			xmm0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtepu8_epi64, xmmword, < >, xmm_size ;InXmm_A:xmmword
			pmovzxbq 			xmm0, 			xmm0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtepu32_epi64, xmmword, < >, xmm_size ;InXmm_A:xmmword
			pmovzxdq 			xmm0, 			xmm0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtepu16_epi64, xmmword, < >, xmm_size ;InXmm_A:xmmword
			pmovzxwq 			xmm0, 			xmm0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_cvtepu8_epi16, xmmword, < >, xmm_size ;InXmm_A:xmmword
			pmovzxbw 			xmm0, 			xmm0
			ret
_uXm_func_end

;************************************
; Pack 8 double words from 2 operands into 8 words
;************************************
_uXm_func_start _uXm_mm_packus_epi32, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			packusdw 			xmm0, 			xmm1
			ret
_uXm_func_end

;************************************
; Load double quadword using non-temporal aligned hint
;************************************
_uXm_func_start _uXm_mm_stream_load_si128, xmmword, < >, reg_size ;InXPmm_A:ptr xmmword
	
			movntdqa			xmm0,		xmmword ptr [rparam1]

			ret
_uXm_func_end

endif ;__MIC__

	end
