
	include uXmx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0
	
	include uXmsseintrin.inc
	
	.const
	
		__align_size_t
		_m128dshufpdjmptable isize_t offset _m128dshufpd_0, offset _m128dshufpd_1, offset _m128dshufpd_2, offset _m128dshufpd_3				
		
	__align_xmm_fp_opt
	__veccall_opt

	.code

_uXm_func_start _uXm_mm_shuffle_00_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			shufpd				xmm0,			xmm1,			0
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_01_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			shufpd				xmm0,			xmm1,			1
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_10_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			shufpd				xmm0,			xmm1,			2
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_11_pd, xmmword, < >, 2 * xmm_size ;InXmm_A:xmmword, InXmm_B:xmmword
			shufpd				xmm0,			xmm1,			3
			ret
_uXm_func_end

_uXm_func_start _uXm_mm_shuffle_pd, xmmword, < >, 2 * xmm_size + reg_size ;InXmm_A:xmmword, InXmm_B:xmmword, _Imm8:dword
			
		;.if(rparam3 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam3]
			;mov				rbx,	dword ptr [rbx+rparam3*4]
			jmp		dword ptr [_m128dshufpdjmptable+eax*4]
		else
			;movzx			rax,	byte ptr [rparam3]
			lea				rbx,	qword ptr [_m128dshufpdjmptable]
			mov				rbx,	qword ptr [rbx+rparam3*8]
			jmp				rbx
		endif
		
		_m128dshufpd_0 label size_t
			shufpd				xmm0,			xmm1,			0
			ret
		_m128dshufpd_1 label size_t
			shufpd				xmm0,			xmm1,			1
			ret
		_m128dshufpd_2 label size_t
			shufpd				xmm0,			xmm1,			2
			ret
		_m128dshufpd_3 label size_t
			shufpd				xmm0,			xmm1,			3
			ret
		;.endif

_uXm_func_end

endif ;__MIC__

	end
