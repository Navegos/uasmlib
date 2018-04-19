
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

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
			lea				ebx,			[mmpermpdjmptable]
			mov				eax,			[ebx+eax*4]
			mov				esi,			mmpermpdjmptable
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
			lea				rbx,			[mmpermpdjmptable]
			mov				eax,			[rbx+rax*8]
			mov				rsi,			mmpermpdjmptable
			sub				rbx,			rsi
			add				rbx,			rax
			ifdef WINDOWS
			pop				rsi
			endif
			jmp				rbx
		endif

		ifndef __X64__			
			mmpermpdword		textequ		<dword>
			mmpermpdiword		textequ		<dd>
		else
			mmpermpdword		textequ		<qword>
			mmpermpdiword		textequ		<dq>
		endif
		
		mmpermpdjmptable label mmpermpdword
			mmpermpdiword	offset mmpermpd_0, offset mmpermpd_1, offset mmpermpd_2, offset mmpermpd_3				

			mmpermpd_0 label mmpermpdword
				jmp		uXm_mm_permute_00_pd
			mmpermpd_1 label mmpermpdword
				jmp		uXm_mm_permute_01_pd
			mmpermpd_2 label mmpermpdword
				jmp		uXm_mm_permute_10_pd
			mmpermpd_3 label mmpermpdword
				jmp		uXm_mm_permute_11_pd

uXm_mm_permute_pd endp

	end
