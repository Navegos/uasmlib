
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.data
	
		m128iextepi16jmptable isize_t offset m128iextepi16_0, offset m128iextepi16_1, offset m128iextepi16_2, offset m128iextepi16_3, offset m128iextepi16_4, offset m128iextepi16_5, offset m128iextepi16_6, offset m128iextepi16_7
		m128iinsepi16jmptable isize_t offset m128iinsepi16_0, offset m128iinsepi16_1, offset m128iinsepi16_2, offset m128iinsepi16_3, offset m128iinsepi16_4, offset m128iinsepi16_5, offset m128iinsepi16_6, offset m128iinsepi16_7
		
	.code

;******************
; Proto
;******************
_uXm_m128i_extract_epi16_0 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
_uXm_m128i_extract_epi16_1 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
_uXm_m128i_extract_epi16_2 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
_uXm_m128i_extract_epi16_3 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
_uXm_m128i_extract_epi16_4 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
_uXm_m128i_extract_epi16_5 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
_uXm_m128i_extract_epi16_6 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
_uXm_m128i_extract_epi16_7 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
_uXm_m128i_extract_epi16 proto UX_VECCALL (dword) ;Inxmm_A:xmmword, _Imm8:dword

_uXm_m128i_insert_epi16_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_m128i_insert_epi16_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_m128i_insert_epi16_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_m128i_insert_epi16_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_m128i_insert_epi16_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_m128i_insert_epi16_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_m128i_insert_epi16_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_m128i_insert_epi16_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
_uXm_m128i_insert_epi16 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword, _Imm8:dword

;******************
; Proc
;******************

_uXm_m128i_extract_epi16_0 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			0

			ret
_uXm_m128i_extract_epi16_0 endp

_uXm_m128i_extract_epi16_1 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			1

			ret
_uXm_m128i_extract_epi16_1 endp

_uXm_m128i_extract_epi16_2 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			2

			ret
_uXm_m128i_extract_epi16_2 endp

_uXm_m128i_extract_epi16_3 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			3

			ret
_uXm_m128i_extract_epi16_3 endp

_uXm_m128i_extract_epi16_4 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			4

			ret
_uXm_m128i_extract_epi16_4 endp

_uXm_m128i_extract_epi16_5 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			5

			ret
_uXm_m128i_extract_epi16_5 endp

_uXm_m128i_extract_epi16_6 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			6

			ret
_uXm_m128i_extract_epi16_6 endp

_uXm_m128i_extract_epi16_7 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			7

			ret
_uXm_m128i_extract_epi16_7 endp

_uXm_m128i_extract_epi16 proc UX_VECCALL (dword) ;Inxmm_A:xmmword, _Imm8:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128iextepi16jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128iextepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128iextepi16_0 label size_t
			pextrw			dreturn,			xmm0,			0
			ret
		m128iextepi16_1 label size_t
			pextrw			dreturn,			xmm0,			1
			ret
		m128iextepi16_2 label size_t
			pextrw			dreturn,			xmm0,			2
			ret
		m128iextepi16_3 label size_t
			pextrw			dreturn,			xmm0,			3
			ret
		m128iextepi16_4 label size_t
			pextrw			dreturn,			xmm0,			4
			ret
		m128iextepi16_5 label size_t
			pextrw			dreturn,			xmm0,			5
			ret
		m128iextepi16_6 label size_t
			pextrw			dreturn,			xmm0,			6
			ret
		m128iextepi16_7 label size_t
			pextrw			dreturn,			xmm0,			7
			ret
		;.endif

_uXm_m128i_extract_epi16 endp

_uXm_m128i_insert_epi16_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			0

			ret
_uXm_m128i_insert_epi16_0 endp

_uXm_m128i_insert_epi16_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			1

			ret
_uXm_m128i_insert_epi16_1 endp

_uXm_m128i_insert_epi16_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			2

			ret
_uXm_m128i_insert_epi16_2 endp

_uXm_m128i_insert_epi16_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			3

			ret
_uXm_m128i_insert_epi16_3 endp

_uXm_m128i_insert_epi16_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			4

			ret
_uXm_m128i_insert_epi16_4 endp

_uXm_m128i_insert_epi16_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			5

			ret
_uXm_m128i_insert_epi16_5 endp

_uXm_m128i_insert_epi16_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			6

			ret
_uXm_m128i_insert_epi16_6 endp

_uXm_m128i_insert_epi16_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			7

			ret
_uXm_m128i_insert_epi16_7 endp

_uXm_m128i_insert_epi16 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword, _Imm8:dword

		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128iinsepi16jmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128iinsepi16jmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128iinsepi16_0 label size_t
			pinsrw			xmm0,			dparam2,			0
			ret
		m128iinsepi16_1 label size_t
			pinsrw			xmm0,			dparam2,			1
			ret
		m128iinsepi16_2 label size_t
			pinsrw			xmm0,			dparam2,			2
			ret
		m128iinsepi16_3 label size_t
			pinsrw			xmm0,			dparam2,			3
			ret
		m128iinsepi16_4 label size_t
			pinsrw			xmm0,			dparam2,			4
			ret
		m128iinsepi16_5 label size_t
			pinsrw			xmm0,			dparam2,			5
			ret
		m128iinsepi16_6 label size_t
			pinsrw			xmm0,			dparam2,			6
			ret
		m128iinsepi16_7 label size_t
			pinsrw			xmm0,			dparam2,			7
			ret
		;.endif

_uXm_m128i_insert_epi16 endp

	end
