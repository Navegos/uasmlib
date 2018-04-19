
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.code

;******************
; Proto
;******************
uXm_mm_extract_epi16_0 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
uXm_mm_extract_epi16_1 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
uXm_mm_extract_epi16_2 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
uXm_mm_extract_epi16_3 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
uXm_mm_extract_epi16_4 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
uXm_mm_extract_epi16_5 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
uXm_mm_extract_epi16_6 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
uXm_mm_extract_epi16_7 proto UX_VECCALL (dword) ;Inxmm_A:xmmword
uXm_mm_extract_epi16 proto UX_VECCALL (dword) ;Inxmm_A:xmmword, _Imm8:dword

uXm_mm_insert_epi16_0 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
uXm_mm_insert_epi16_1 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
uXm_mm_insert_epi16_2 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
uXm_mm_insert_epi16_3 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
uXm_mm_insert_epi16_4 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
uXm_mm_insert_epi16_5 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
uXm_mm_insert_epi16_6 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
uXm_mm_insert_epi16_7 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword
uXm_mm_insert_epi16 proto UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword, _Imm8:dword

;******************
; Proc
;******************
			align 16
uXm_mm_extract_epi16_0 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			0

			ret
uXm_mm_extract_epi16_0 endp

			align 16
uXm_mm_extract_epi16_1 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			1

			ret
uXm_mm_extract_epi16_1 endp

			align 16
uXm_mm_extract_epi16_2 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			2

			ret
uXm_mm_extract_epi16_2 endp

			align 16
uXm_mm_extract_epi16_3 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			3

			ret
uXm_mm_extract_epi16_3 endp

			align 16
uXm_mm_extract_epi16_4 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			4

			ret
uXm_mm_extract_epi16_4 endp

			align 16
uXm_mm_extract_epi16_5 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			5

			ret
uXm_mm_extract_epi16_5 endp

			align 16
uXm_mm_extract_epi16_6 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			6

			ret
uXm_mm_extract_epi16_6 endp

			align 16
uXm_mm_extract_epi16_7 proc UX_VECCALL (dword) ;Inxmm_A:xmmword

			pextrw			dreturn,			xmm0,			7

			ret
uXm_mm_extract_epi16_7 endp

			align 16
uXm_mm_extract_epi16 proc UX_VECCALL (dword) ;Inxmm_A:xmmword, _Imm8:dword

		ifndef __X64__
		.if(dparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmextepi16jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmextepi16jmptable
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
			lea				rbx,			[mmextepi16jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmextepi16jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mmextepi16word		textequ		<dword>
			mmextepi16iword		textequ		<dd>
		else
			mmextepi16word		textequ		<qword>
			mmextepi16iword		textequ		<dq>
		endif
		
		mmextepi16jmptable label mmextepi16word
			mmextepi16iword	offset mmextepi16_0, offset mmextepi16_1, offset mmextepi16_2, offset mmextepi16_3, offset mmextepi16_4, offset mmextepi16_5, offset mmextepi16_6, offset mmextepi16_7
		
			mmextepi16_0 label mmextepi16word
				jmp		uXm_mm_extract_epi16_0
			mmextepi16_1 label mmextepi16word
				jmp		uXm_mm_extract_epi16_1
			mmextepi16_2 label mmextepi16word
				jmp		uXm_mm_extract_epi16_2
			mmextepi16_3 label mmextepi16word
				jmp		uXm_mm_extract_epi16_3
			mmextepi16_4 label mmextepi16word
				jmp		uXm_mm_extract_epi16_4
			mmextepi16_5 label mmextepi16word
				jmp		uXm_mm_extract_epi16_5
			mmextepi16_6 label mmextepi16word
				jmp		uXm_mm_extract_epi16_6
			mmextepi16_7 label mmextepi16word
				jmp		uXm_mm_extract_epi16_7

uXm_mm_extract_epi16 endp

			align 16
uXm_mm_insert_epi16_0 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			0

			ret
uXm_mm_insert_epi16_0 endp

			align 16
uXm_mm_insert_epi16_1 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			1

			ret
uXm_mm_insert_epi16_1 endp

			align 16
uXm_mm_insert_epi16_2 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			2

			ret
uXm_mm_insert_epi16_2 endp

			align 16
uXm_mm_insert_epi16_3 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			3

			ret
uXm_mm_insert_epi16_3 endp

			align 16
uXm_mm_insert_epi16_4 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			4

			ret
uXm_mm_insert_epi16_4 endp

			align 16
uXm_mm_insert_epi16_5 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			5

			ret
uXm_mm_insert_epi16_5 endp

			align 16
uXm_mm_insert_epi16_6 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			6

			ret
uXm_mm_insert_epi16_6 endp

			align 16
uXm_mm_insert_epi16_7 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword

			pinsrw			xmm0,			dparam2,			7

			ret
uXm_mm_insert_epi16_7 endp

			align 16
uXm_mm_insert_epi16 proc UX_VECCALL (xmmword) ;Inxmm_A:xmmword, InInt_B:dword, _Imm8:dword

		ifndef __X64__
		.if(dparam2 > 15)
			pxor			xmm0,			xmm0
			ret
		.endif
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mminsepi16jmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mminsepi16jmptable
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
			lea				rbx,			[mminsepi16jmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mminsepi16jmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif			

		ifndef __X64__			
			mminsepi16word		textequ		<dword>
			mminsepi16iword		textequ		<dd>
		else
			mminsepi16word		textequ		<qword>
			mminsepi16iword		textequ		<dq>
		endif
		
		mminsepi16jmptable label mminsepi16word
			mminsepi16iword	offset mminsepi16_0, offset mminsepi16_1, offset mminsepi16_2, offset mminsepi16_3, offset mminsepi16_4, offset mminsepi16_5, offset mminsepi16_6, offset mminsepi16_7
		
			mminsepi16_0 label mminsepi16word
				jmp		uXm_mm_insert_epi16_0
			mminsepi16_1 label mminsepi16word
				jmp		uXm_mm_insert_epi16_1
			mminsepi16_2 label mminsepi16word
				jmp		uXm_mm_insert_epi16_2
			mminsepi16_3 label mminsepi16word
				jmp		uXm_mm_insert_epi16_3
			mminsepi16_4 label mminsepi16word
				jmp		uXm_mm_insert_epi16_4
			mminsepi16_5 label mminsepi16word
				jmp		uXm_mm_insert_epi16_5
			mminsepi16_6 label mminsepi16word
				jmp		uXm_mm_insert_epi16_6
			mminsepi16_7 label mminsepi16word
				jmp		uXm_mm_insert_epi16_7

uXm_mm_insert_epi16 endp

	end
