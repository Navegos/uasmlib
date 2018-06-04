
	include uXmx86asm.inc
	
ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0
	
	include uXmsseintrin.inc
	
	.const
	
		__align_size_t
		_m128iextepi16jmptable isize_t offset _m128iextepi16_0, offset _m128iextepi16_1, offset _m128iextepi16_2, offset _m128iextepi16_3, offset _m128iextepi16_4, offset _m128iextepi16_5, offset _m128iextepi16_6, offset _m128iextepi16_7
		
		__align_size_t
		_m128iinsepi16jmptable isize_t offset _m128iinsepi16_0, offset _m128iinsepi16_1, offset _m128iinsepi16_2, offset _m128iinsepi16_3, offset _m128iinsepi16_4, offset _m128iinsepi16_5, offset _m128iinsepi16_6, offset _m128iinsepi16_7
		
		__align_size_t
		_m128icvtelts128epi64jmptable isize_t offset _m128icvtelts128epi64_0, offset _m128icvtelts128epi64_1
		
		__align_size_t
		_m128icvtelts128epi64xjmptable isize_t offset _m128icvtelts128epi64x_0, offset _m128icvtelts128epi64x_1
		
		__align_size_t
		_m128icvtelts128epi32jmptable isize_t offset _m128icvtelts128epi32_0, offset _m128icvtelts128epi32_1, offset _m128icvtelts128epi32_2, offset _m128icvtelts128epi32_3
		
		__align_size_t
		_m128icvtelts128epi16jmptable isize_t offset _m128icvtelts128epi16_0, offset _m128icvtelts128epi16_1, offset _m128icvtelts128epi16_2, offset _m128icvtelts128epi16_3, offset _m128icvtelts128epi16_4, offset _m128icvtelts128epi16_5, offset _m128icvtelts128epi16_6, offset _m128icvtelts128epi16_7
		
		__align_size_t
		_m128icvtelts128epi8jmptable isize_t offset _m128icvtelts128epi8_0, offset _m128icvtelts128epi8_1, offset _m128icvtelts128epi8_2, offset _m128icvtelts128epi8_3, offset _m128icvtelts128epi8_4, offset _m128icvtelts128epi8_5, \
											offset _m128icvtelts128epi8_6, offset _m128icvtelts128epi8_7, offset _m128icvtelts128epi8_8, offset _m128icvtelts128epi8_9, offset _m128icvtelts128epi8_10, offset _m128icvtelts128epi8_11, offset _m128icvtelts128epi8_12, offset _m128icvtelts128epi8_13, offset _m128icvtelts128epi8_14, offset _m128icvtelts128epi8_15
		
	__align_fp_opt xmm_align_size, xmm_align_size

	.code

;******************
; Proto
;******************
_uXm_mm_extract_epi16_0 proto __veccall (dword) ;Inxmm_A:xmmword
_uXm_mm_extract_epi16_1 proto __veccall (dword) ;Inxmm_A:xmmword
_uXm_mm_extract_epi16_2 proto __veccall (dword) ;Inxmm_A:xmmword
_uXm_mm_extract_epi16_3 proto __veccall (dword) ;Inxmm_A:xmmword
_uXm_mm_extract_epi16_4 proto __veccall (dword) ;Inxmm_A:xmmword
_uXm_mm_extract_epi16_5 proto __veccall (dword) ;Inxmm_A:xmmword
_uXm_mm_extract_epi16_6 proto __veccall (dword) ;Inxmm_A:xmmword
_uXm_mm_extract_epi16_7 proto __veccall (dword) ;Inxmm_A:xmmword
_uXm_mm_extract_epi16 proto __veccall (dword) ;Inxmm_A:xmmword, _Imm8:dword

_uXm_mm_insert_epi16_0 proto __veccall (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_mm_insert_epi16_1 proto __veccall (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_mm_insert_epi16_2 proto __veccall (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_mm_insert_epi16_3 proto __veccall (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_mm_insert_epi16_4 proto __veccall (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_mm_insert_epi16_5 proto __veccall (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_mm_insert_epi16_6 proto __veccall (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_mm_insert_epi16_7 proto __veccall (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_mm_insert_epi16 proto __veccall (xmmword) ;Inxmm_A:xmmword, InInt_B:dword, _Imm8:dword

_uXm_mm_cvteltsi128_epi64 proto __veccall (xmmword) ;Inxmm_A:xmmword, _Imm8:dword
_uXm_mm_cvteltsi128_epi64x proto __veccall (qword) ;Inxmm_A:xmmword, _Imm8:dword
_uXm_mm_cvteltsi128_epi32 proto __veccall (dword) ;Inxmm_A:xmmword, _Imm8:dword
_uXm_mm_cvteltsi128_epi16 proto __veccall (word) ;Inxmm_A:xmmword, _Imm8:dword
_uXm_mm_cvteltsi128_epi8 proto __veccall (byte) ;Inxmm_A:xmmword, _Imm8:dword

;******************
; Proc
;******************

_uXm_mm_extract_epi16_0 proc __veccall (dword) frame ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			0

			ret
_uXm_mm_extract_epi16_0 endp

_uXm_mm_extract_epi16_1 proc __veccall (dword) frame ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			1

			ret
_uXm_mm_extract_epi16_1 endp

_uXm_mm_extract_epi16_2 proc __veccall (dword) frame ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			2

			ret
_uXm_mm_extract_epi16_2 endp

_uXm_mm_extract_epi16_3 proc __veccall (dword) frame ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			3

			ret
_uXm_mm_extract_epi16_3 endp

_uXm_mm_extract_epi16_4 proc __veccall (dword) frame ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			4

			ret
_uXm_mm_extract_epi16_4 endp

_uXm_mm_extract_epi16_5 proc __veccall (dword) frame ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			5

			ret
_uXm_mm_extract_epi16_5 endp

_uXm_mm_extract_epi16_6 proc __veccall (dword) frame ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			6

			ret
_uXm_mm_extract_epi16_6 endp

_uXm_mm_extract_epi16_7 proc __veccall (dword) frame ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			7

			ret
_uXm_mm_extract_epi16_7 endp

_uXm_mm_extract_epi16 proc __veccall (dword) frame ;Inxmm_A:xmmword, _Imm8:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128iextepi16jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128iextepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m128iextepi16_0 label size_t
			pextrw			dreturn,			xmm0,			0
			ret
		_m128iextepi16_1 label size_t
			pextrw			dreturn,			xmm0,			1
			ret
		_m128iextepi16_2 label size_t
			pextrw			dreturn,			xmm0,			2
			ret
		_m128iextepi16_3 label size_t
			pextrw			dreturn,			xmm0,			3
			ret
		_m128iextepi16_4 label size_t
			pextrw			dreturn,			xmm0,			4
			ret
		_m128iextepi16_5 label size_t
			pextrw			dreturn,			xmm0,			5
			ret
		_m128iextepi16_6 label size_t
			pextrw			dreturn,			xmm0,			6
			ret
		_m128iextepi16_7 label size_t
			pextrw			dreturn,			xmm0,			7
			ret
		;.endif

_uXm_mm_extract_epi16 endp

_uXm_mm_insert_epi16_0 proc __veccall (xmmword) frame ;Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam2,			0

			ret
_uXm_mm_insert_epi16_0 endp

_uXm_mm_insert_epi16_1 proc __veccall (xmmword) frame ;Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam2,			1

			ret
_uXm_mm_insert_epi16_1 endp

_uXm_mm_insert_epi16_2 proc __veccall (xmmword) frame ;Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam2,			2

			ret
_uXm_mm_insert_epi16_2 endp

_uXm_mm_insert_epi16_3 proc __veccall (xmmword) frame ;Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam2,			3

			ret
_uXm_mm_insert_epi16_3 endp

_uXm_mm_insert_epi16_4 proc __veccall (xmmword) frame ;Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam2,			4

			ret
_uXm_mm_insert_epi16_4 endp

_uXm_mm_insert_epi16_5 proc __veccall (xmmword) frame ;Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam2,			5

			ret
_uXm_mm_insert_epi16_5 endp

_uXm_mm_insert_epi16_6 proc __veccall (xmmword) frame ;Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam2,			6

			ret
_uXm_mm_insert_epi16_6 endp

_uXm_mm_insert_epi16_7 proc __veccall (xmmword) frame ;Inxmm_A:xmmword, InInt_B:word

			pinsrw			xmm0,			dparam2,			7

			ret
_uXm_mm_insert_epi16_7 endp

_uXm_mm_insert_epi16 proc __veccall (xmmword) frame ;Inxmm_A:xmmword, InInt_B:word, _Imm8:word

		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128iinsepi16jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128iinsepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128iinsepi16_0 label size_t
			pinsrw			xmm0,			dparam2,			0
			ret
		_m128iinsepi16_1 label size_t
			pinsrw			xmm0,			dparam2,			1
			ret
		_m128iinsepi16_2 label size_t
			pinsrw			xmm0,			dparam2,			2
			ret
		_m128iinsepi16_3 label size_t
			pinsrw			xmm0,			dparam2,			3
			ret
		_m128iinsepi16_4 label size_t
			pinsrw			xmm0,			dparam2,			4
			ret
		_m128iinsepi16_5 label size_t
			pinsrw			xmm0,			dparam2,			5
			ret
		_m128iinsepi16_6 label size_t
			pinsrw			xmm0,			dparam2,			6
			ret
		_m128iinsepi16_7 label size_t
			pinsrw			xmm0,			dparam2,			7
			ret
		;.endif

_uXm_mm_insert_epi16 endp

_uXm_mm_cvteltsi128_epi64 proc __veccall (xmmword) frame ;Inxmm_A:xmmword, _Imm8:dword

		;.if(rparam2 > 1)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128icvtelts128epi64jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128icvtelts128epi64jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m128icvtelts128epi64_0 label size_t			
			pxor			xmm1,			xmm1
			punpcklqdq		xmm0,			xmm1
			ret
		_m128icvtelts128epi64_1 label size_t
			pxor			xmm1,			xmm1
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(2,3,2,3)
			punpcklqdq		xmm0,			xmm1
			ret
		;.endif

_uXm_mm_cvteltsi128_epi64 endp

_uXm_mm_cvteltsi128_epi64x proc __veccall (qword) frame ;Inxmm_A:xmmword, _Imm8:dword

		;.if(rparam2 > 1)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128icvtelts128epi64xjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128icvtelts128epi64xjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m128icvtelts128epi64x_0 label size_t			
			pxor			xmm1,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			ret
		_m128icvtelts128epi64x_1 label size_t
			pxor			xmm1,			xmm1
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(2,3,2,3)
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			ret
		;.endif

_uXm_mm_cvteltsi128_epi64x endp

_uXm_mm_cvteltsi128_epi32 proc __veccall (dword) frame ;Inxmm_A:xmmword, _Imm8:dword

		;.if(rparam2 > 3)
		;	ret
		;.else if(rparam2 < 0)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128icvtelts128epi32jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128icvtelts128epi32jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m128icvtelts128epi32_0 label size_t			
			pxor			xmm1,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			ret
		_m128icvtelts128epi32_1 label size_t
			pxor			xmm1,			xmm1
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(1,1,1,1)
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			ret
		_m128icvtelts128epi32_2 label size_t
			pxor			xmm1,			xmm1
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(2,2,2,2)
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			ret
		_m128icvtelts128epi32_3 label size_t
			pxor			xmm1,			xmm1
			pshufd			xmm0,			xmm0,			_uXm_mm_shuffler4(3,3,3,3)
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			ret
		;.endif

_uXm_mm_cvteltsi128_epi32 endp

_uXm_mm_cvteltsi128_epi16 proc __veccall (word) frame ;Inxmm_A:xmmword, Inint_BSelect:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128icvtelts128epi16jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128icvtelts128epi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m128icvtelts128epi16_0 label size_t			
			pxor			xmm1,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			0
			ret
		_m128icvtelts128epi16_1 label size_t
			pxor			xmm1,			xmm1
			pshuflw			xmm0,			xmm0,			_uXm_mm_shuffler4(1,1,1,1)
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			1
			ret
		_m128icvtelts128epi16_2 label size_t
			pxor			xmm1,			xmm1
			pshuflw			xmm0,			xmm0,			_uXm_mm_shuffler4(2,2,2,2)
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			2
			ret
		_m128icvtelts128epi16_3 label size_t
			pxor			xmm1,			xmm1
			pshuflw			xmm0,			xmm0,			_uXm_mm_shuffler4(3,3,3,3)
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			3
			ret
		_m128icvtelts128epi16_4 label size_t
			pxor			xmm1,			xmm1
			pshufhw			xmm0,			xmm0,			_uXm_mm_shuffler4(0,0,0,0)
			punpckhdq		xmm0,			xmm0
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			4
			ret
		_m128icvtelts128epi16_5 label size_t
			pxor			xmm1,			xmm1
			pshufhw			xmm0,			xmm0,			_uXm_mm_shuffler4(1,1,1,1)
			punpckhdq		xmm0,			xmm0
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			5
			ret
		_m128icvtelts128epi16_6 label size_t
			pxor			xmm1,			xmm1
			pshufhw			xmm0,			xmm0,			_uXm_mm_shuffler4(2,2,2,2)
			punpckhdq		xmm0,			xmm0
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			6
			ret
		_m128icvtelts128epi16_7 label size_t
			pxor			xmm1,			xmm1
			pshufhw			xmm0,			xmm0,			_uXm_mm_shuffler4(3,3,3,3)
			punpckhdq		xmm0,			xmm0
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrw			dreturn,			xmm0,			7
			ret
		;.endif

_uXm_mm_cvteltsi128_epi16 endp

_uXm_mm_cvteltsi128_epi8 proc __veccall (byte) frame ;Inxmm_A:xmmword, Inint_BSelect:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128icvtelts128epi8jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128icvtelts128epi8jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m128icvtelts128epi8_0 label size_t
			pxor			xmm1,			xmm1
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			0
			ret
		_m128icvtelts128epi8_1 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			1
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			1
			ret
		_m128icvtelts128epi8_2 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			2
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			2
			ret
		_m128icvtelts128epi8_3 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			3
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			3
			ret
		_m128icvtelts128epi8_4 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			4
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			4
			ret
		_m128icvtelts128epi8_5 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			5
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			5
			ret
		_m128icvtelts128epi8_6 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			6
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			6
			ret
		_m128icvtelts128epi8_7 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			7
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			7
			ret
		_m128icvtelts128epi8_8 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			8
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			8
			ret
		_m128icvtelts128epi8_9 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			9
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			9
			ret
		_m128icvtelts128epi8_10 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			10
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			10
			ret
		_m128icvtelts128epi8_11 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			11
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			11
			ret
		_m128icvtelts128epi8_12 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			12
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			12
			ret
		_m128icvtelts128epi8_13 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			13
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			13
			ret
		_m128icvtelts128epi8_14 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			14
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			14
			ret
		_m128icvtelts128epi8_15 label size_t
			pxor			xmm1,			xmm1
			psrldq			xmm0,			15
			punpcklbw		xmm0,			xmm1
			punpcklwd		xmm0,			xmm1
			punpckldq		xmm0,			xmm1
			punpcklqdq		xmm0,			xmm1
			movd			dreturn,			xmm0
			;pextrb			dreturn,			xmm0,			15
			ret
		;.endif

_uXm_mm_cvteltsi128_epi8 endp

endif ;__MIC__

	end
