
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

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
			lea				ebx,			[mmshufpdjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmshufpdjmptable
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
			lea				rbx,			[mmshufpdjmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmshufpdjmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif
			
		ifndef __X64__			
			mmshufpdword		textequ		<dword>
			mmshufpdiword		textequ		<dd>
		else
			mmshufpdword		textequ		<qword>
			mmshufpdiword		textequ		<dq>
		endif
		
		mmshufpdjmptable label mmshufpdword
			mmshufpdiword	offset mmshufpd_0, offset mmshufpd_1, offset mmshufpd_2, offset mmshufpd_3				

			mmshufpd_0 label mmshufpdword
				jmp		uXm_mm_shuffle_00_pd
			mmshufpd_1 label mmshufpdword
				jmp		uXm_mm_shuffle_01_pd
			mmshufpd_2 label mmshufpdword
				jmp		uXm_mm_shuffle_10_pd
			mmshufpd_3 label mmshufpdword
				jmp		uXm_mm_shuffle_11_pd

uXm_mm_shuffle_pd endp

	end
