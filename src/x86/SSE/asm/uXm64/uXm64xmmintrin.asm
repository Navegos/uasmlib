
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	include uXmsseintrin.inc
	
	.code
	
;******************
; Externs
;******************
	
;******************
; Proto
;******************

ifdef __X32__
_uXm_m64_pextrw_0 proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
_uXm_m64_pextrw_1 proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
_uXm_m64_pextrw_2 proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
_uXm_m64_pextrw_3 proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
_uXm_m64_pextrw proto UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword
_uXm_m64_pinsrw_0 proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
_uXm_m64_pinsrw_1 proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
_uXm_m64_pinsrw_2 proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
_uXm_m64_pinsrw_3 proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
_uXm_m64_pinsrw proto UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  Imm8:dword
_uXm_m64_pmaxsw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_m64_pmaxub proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_m64_pminsw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_m64_pminub proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_m64_pmovmskb proto UX_VECCALL (dword) ;Inmm_A:mmword
_uXm_m64_pmulhuw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_m64_maskmovq proto UX_VECCALL (voidarg) ;Inmm_A:mmword, Inmm_B:mmword, OutPInt8_C:ptr byte
_uXm_m64_pavgb proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_m64_pavgw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
_uXm_m64_psadbw proto UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword

_uXm_m64_stream_pi proto UX_VECCALL (dword) ;OutPmm_A:ptr mmword,Inmm_B:mmword
endif ;__X32__

;******************
; Proc
;******************

;******************
; FP, misc
;******************

ifdef __X32__
;******************
; Integer (MMX) extensions
;******************
_uXm_m64_pextrw_0 proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			pextrw			dreturn,			mm0,			0

			ret
_uXm_m64_pextrw_0 endp
_uXm_m64_pextrw_1 proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			pextrw			dreturn,			mm0,			1

			ret
_uXm_m64_pextrw1 endp
_uXm_m64_pextrw_2 proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			pextrw			dreturn,			mm0,			2

			ret
_uXm_m64_pextrw_2 endp
_uXm_m64_pextrw_3 proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			pextrw			dreturn,			mm0,			3

			ret
_uXm_m64_pextrw_3 endp
_uXm_m64_pextrw proc UX_VECCALL (dword) ;Inmm_A:mmword,  _Imm8:dword

			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmpextrwjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmpextrwjmptable
			sub				ebx,			esi
			add				ebx,			rax
			xor				eax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
					
			mmpextrwword		textequ		<dword>
			mmpextrwiword		textequ		<dd>
		
		mmpextrwjmptable label mmpextrwword
			mmpextrwiword	offset mmpextrw_0, offset mmpextrw_1, offset mmpextrw_2, offset mmpextrw_3
			
			mmpextrw_0 label mmpextrwword
				jmp		_uXm_m64_pextrw_0
			mmpextrw_1 label mmpextrwword
				jmp		_uXm_m64_pextrw_1
			mmpextrw_2 label mmpextrwword
				jmp		_uXm_m64_pextrw_2
			mmpextrw_3 label mmpextrwword
				jmp		_uXm_m64_pextrw_3

_uXm_m64_pextrw endp
_uXm_m64_pinsrw_0 proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			pinsrw			mm0,			dparam2,			0

			ret
_uXm_m64_pinsrw_0 endp
_uXm_m64_pinsrw_1 proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			pinsrw			mm0,			dparam2,			1

			ret
_uXm_m64_pinsrw1 endp
_uXm_m64_pinsrw_2 proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			pinsrw			mm0,			dparam2,			2

			ret
_uXm_m64_pinsrw_2 endp
_uXm_m64_pinsrw_3 proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			pinsrw			mm0,			dparam2,			3

			ret
_uXm_m64_pinsrw_3 endp
_uXm_m64_pinsrw proc UX_VECCALL (mmword) ;Inmm_A:mmword,  InInt_B:dword,  _Imm8:dword
			
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[mmpinsrwjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmpinsrwjmptable
			sub				ebx,			esi
			add				ebx,			rax
			xor				eax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
					
			mmpinsrwword		textequ		<dword>
			mmpinsrwiword		textequ		<dd>
		
		mmpinsrwjmptable label mmpinsrwword
			mmpinsrwiword	offset mmpinsrw_0, offset mmpinsrw_1, offset mmpinsrw_2, offset mmpinsrw_3
			
			mmpinsrw_0 label mmpinsrwword
				jmp		_uXm_m64_pinsrw_0
			mmpinsrw_1 label mmpinsrwword
				jmp		_uXm_m64_pinsrw_1
			mmpinsrw_2 label mmpinsrwword
				jmp		_uXm_m64_pinsrw_2
			mmpinsrw_3 label mmpinsrwword
				jmp		_uXm_m64_pinsrw_3

_uXm_m64_pinsrw endp
_uXm_m64_pmaxsw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pmaxsw			mm0,			mm1

			ret
_uXm_m64_pmaxsw endp
_uXm_m64_pmaxub proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pmaxub			mm0,			mm1

			ret
_uXm_m64_pmaxub endp
_uXm_m64_pminsw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pminsw			mm0,			mm1

			ret
_uXm_m64_pminsw endp
_uXm_m64_pminub proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pminub			mm0,			mm1

			ret
_uXm_m64_pminub endp
_uXm_m64_pmovmskb proc UX_VECCALL (dword) ;Inmm_A:mmword
			
			pmovmskb		dreturn,			mm0

			ret
_uXm_m64_pmovmskb endp
_uXm_m64_pmulhuw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pmulhuw			mm0,			mm1

			ret
_uXm_m64_pmulhuw endp
_uXm_m64_maskmovq proc UX_VECCALL (voidarg) ;Inmm_A:mmword, Inmm_B:mmword, OutInt8_C:ptr byte			
			
			push			rdidx
			mov				rdidx,	byte ptr [rparam3]
			maskmovq		mm0,			mm1
			pop				rdidx

			ret
_uXm_m64_maskmovq endp
_uXm_m64_pavgb proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pavgb			mm0,			mm1

			ret
_uXm_m64_pavgb endp
_uXm_m64_pavgw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			pavgw			mm0,			mm1

			ret
_uXm_m64_pavgw endp
_uXm_m64_psadbw proc UX_VECCALL (mmword) ;Inmm_A:mmword, Inmm_B:mmword
			
			psadbw			mm0,			mm1

			ret
_uXm_m64_psadbw endp
endif ;__X32__

ifdef __X32__
_uXm_m64_stream_pi proc UX_VECCALL (dword) ;OutPmm_A:ptr mmword,Inmm_B:mmword
			
			movntq 		mmword ptr [rparam1],			mm1

			ret
_uXm_m64_stream_pi endp
endif ;__X32__

	end
