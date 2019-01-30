
	include uXx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0
	
	include uXsseintrin.inc
	
	.data?

	.data

	.const
	
		alignsize_t
		_m128dshufpdjmptable isize_t offset _m128dshufpd_0, offset _m128dshufpd_1, offset _m128dshufpd_2, offset _m128dshufpd_3				
		
	alignxmmfieldproc
	callconvopt
	
	.code

funcstart _uX_mm_shuffle_00_pd, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			shufpd				xmm0,			xmm1,			0
			ret
funcend

funcstart _uX_mm_shuffle_01_pd, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			shufpd				xmm0,			xmm1,			1
			ret
funcend

funcstart _uX_mm_shuffle_10_pd, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			shufpd				xmm0,			xmm1,			2
			ret
funcend

funcstart _uX_mm_shuffle_11_pd, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword
			shufpd				xmm0,			xmm1,			3
			ret
funcend

funcstart _uX_mm_shuffle_pd, callconv, xmmword, < >, Inxmm_A:xmmword, Inxmm_B:xmmword, Inint_Imm:dword
			
		;.if(rparam2 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam2]
			;mov				rbx,	dword ptr [rbx+rparam2*4]
			jmp		dword ptr [_m128dshufpdjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam2]
			lea				rbx,	qword ptr [_m128dshufpdjmptable]
			mov				rbx,	qword ptr [rbx+rparam2*size_t_size]
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

funcend

endif ;__MIC__

	end
