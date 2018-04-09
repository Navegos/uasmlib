
	include uXmx86asm.inc
	
	.code

;******************
; Proto
;******************
uXm_mm_shuffle_00_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_01_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_10_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_11_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
uXm_mm_shuffle_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword

;******************
; Proc
;******************
			align 16
uXm_mm_shuffle_00_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufpd				xmm0,			xmm1,			0
				ret
uXm_mm_shuffle_00_pd endp

			align 16
uXm_mm_shuffle_01_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufpd				xmm0,			xmm1,			1
				ret
uXm_mm_shuffle_01_pd endp

			align 16
uXm_mm_shuffle_10_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufpd				xmm0,			xmm1,			2
				ret
uXm_mm_shuffle_10_pd endp

			align 16
uXm_mm_shuffle_11_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
				shufpd				xmm0,			xmm1,			3
				ret
uXm_mm_shuffle_11_pd endp

			align 16
uXm_mm_shuffle_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
				
		ifndef __X64__
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam3]
			lea				ebx,			[shpdjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			shpdjmptable
			sub				ebx,			esi
			add				ebx,			rax
			ifdef WINDOWS
			pop				esi
			endif
			jmp				ebx
		else
			ifdef WINDOWS
			push			rsi
			endif
			movzx			rax,	byte ptr [rparam3]
			lea				rbx,			[shpdjmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			shpdjmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif
			
		ifndef __X64__			
			shpdword		textequ		<dword>
			shpdiword		textequ		<dd>
		else
			shpdword		textequ		<qword>
			shpdiword		textequ		<dq>
		endif
		
		shpdjmptable label shpdword
			shpdiword	offset shpd_0, offset shpd_1, offset shpd_2, offset shpd_3				

			shpd_0 label shpdword
				jmp		uXm_mm_shuffle_00_pd
			shpd_1 label shpdword
				jmp		uXm_mm_shuffle_01_pd
			shpd_2 label shpdword
				jmp		uXm_mm_shuffle_10_pd
			shpd_3 label shpdword
				jmp		uXm_mm_shuffle_11_pd

uXm_mm_shuffle_pd endp

	end
