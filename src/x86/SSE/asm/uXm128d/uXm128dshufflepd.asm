
	include uXmx86asm.inc
	
	.xmm
	option arch:sse
	option evex:0

	.data

		m128dshufpdjmptable isize_t offset m128dshufpd_0, offset m128dshufpd_1, offset m128dshufpd_2, offset m128dshufpd_3				

	.code

;******************
; Proto
;******************
_uXm_m128_shuffle_00_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_01_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_10_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_11_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_m128_shuffle_pd proto UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword

;******************
; Proc
;******************

_uXm_m128_shuffle_00_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufpd				xmm0,			xmm1,			0
			ret
_uXm_m128_shuffle_00_pd endp


_uXm_m128_shuffle_01_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufpd				xmm0,			xmm1,			1
			ret
_uXm_m128_shuffle_01_pd endp

_uXm_m128_shuffle_10_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufpd				xmm0,			xmm1,			2
			ret
_uXm_m128_shuffle_10_pd endp

_uXm_m128_shuffle_11_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
			shufpd				xmm0,			xmm1,			3
			ret
_uXm_m128_shuffle_11_pd endp

_uXm_m128_shuffle_pd proc UX_VECCALL (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
			
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [m128dshufpdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [m128dshufpdjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		m128dshufpd_0 label size_t
			shufpd				xmm0,			xmm1,			0
			ret
		m128dshufpd_1 label size_t
			shufpd				xmm0,			xmm1,			1
			ret
		m128dshufpd_2 label size_t
			shufpd				xmm0,			xmm1,			2
			ret
		m128dshufpd_3 label size_t
			shufpd				xmm0,			xmm1,			3
			ret
		;.endif

_uXm_m128_shuffle_pd endp

	end
