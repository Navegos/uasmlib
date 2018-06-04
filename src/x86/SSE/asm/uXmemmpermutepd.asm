
	include uXmx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0
	
	include uXmsseintrin.inc
	
	.const
	
		__align_size_t
		_m128dpermpdjmptable isize_t offset _m128dpermpd_0, offset _m128dpermpd_1, offset _m128dpermpd_2, offset _m128dpermpd_3				
		
	__align_fp_opt xmm_align_size, xmm_align_size
	
	.code
	
;******************
; Proto
;******************
_uXm_mm_permute_00_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_permute_01_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_permute_10_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_permute_11_pd proto __veccall (xmmword) ;InXmm_A:xmmword, InXmm_B:xmmword
_uXm_mm_permute_pd proto __veccall (xmmword) ;InXmm_A:xmmword, _Imm8:dword

;******************
; Proc
;******************

_uXm_mm_permute_00_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			shufpd				xmm0,			xmm0,			0
			ret
_uXm_mm_permute_00_pd endp

_uXm_mm_permute_01_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			shufpd				xmm0,			xmm0,			1
			ret
_uXm_mm_permute_01_pd endp

_uXm_mm_permute_10_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			shufpd				xmm0,			xmm0,			2
			ret
_uXm_mm_permute_10_pd endp

_uXm_mm_permute_11_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, InXmm_B:xmmword
			shufpd				xmm0,			xmm0,			3
			ret
_uXm_mm_permute_11_pd endp

_uXm_mm_permute_pd proc __veccall (xmmword) frame ;InXmm_A:xmmword, _Imm8:dword
			
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128dpermpdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128dpermpdjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*8]
			jmp				rbx
		endif
		
		_m128dpermpd_0 label size_t
			shufpd				xmm0,			xmm0,			0
			ret
		_m128dpermpd_1 label size_t
			shufpd				xmm0,			xmm0,			1
			ret
		_m128dpermpd_2 label size_t
			shufpd				xmm0,			xmm0,			2
			ret
		_m128dpermpd_3 label size_t
			shufpd				xmm0,			xmm0,			3
			ret
		;.endif

_uXm_mm_permute_pd endp

endif ;__MIC__

	end
