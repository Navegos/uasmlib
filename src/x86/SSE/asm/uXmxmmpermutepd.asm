
	include uXmx86asm.inc
	
	.code

;******************
; Proto
;******************
uXm_mm_permute_00_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_01_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_10_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_11_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword
uXm_mm_permute_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword

;******************
; Proc
;******************
			align 16
uXm_mm_permute_00_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufpd				xmm0,			xmm0,			0
				ret
uXm_mm_permute_00_pd endp

			align 16
uXm_mm_permute_01_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufpd				xmm0,			xmm0,			1
				ret
uXm_mm_permute_01_pd endp

			align 16
uXm_mm_permute_10_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufpd				xmm0,			xmm0,			2
				ret
uXm_mm_permute_10_pd endp

			align 16
uXm_mm_permute_11_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword
				shufpd				xmm0,			xmm0,			3
				ret
uXm_mm_permute_11_pd endp

			align 16
uXm_mm_permute_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, _Imm8:dword
				
		ifndef __X64__
			ifdef WINDOWS
			push			esi
			endif
			movzx			eax,	byte ptr [dparam2]
			lea				ebx,			[pmpdjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			pmpdjmptable
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
			movzx			rax,	byte ptr [rparam2]
			lea				rbx,			[pmpdjmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			pmpdjmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif

		ifndef __X64__			
			pmpdword		textequ		<dword>
			pmpdiword		textequ		<dd>
		else
			pmpdword		textequ		<qword>
			pmpdiword		textequ		<dq>
		endif
		
		pmpdjmptable label pmpdword
			pmpdiword	offset pmpd_0, offset pmpd_1, offset pmpd_2, offset pmpd_3				

			pmpd_0 label pmpdword
				jmp		uXm_mm_permute_00_pd
			pmpd_1 label pmpdword
				jmp		uXm_mm_permute_01_pd
			pmpd_2 label pmpdword
				jmp		uXm_mm_permute_10_pd
			pmpd_3 label pmpdword
				jmp		uXm_mm_permute_11_pd

uXm_mm_permute_pd endp

	end
