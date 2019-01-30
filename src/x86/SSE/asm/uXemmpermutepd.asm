
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
		_m128dpermpdjmptable isize_t offset _m128dpermpd_0, offset _m128dpermpd_1, offset _m128dpermpd_2, offset _m128dpermpd_3				
		
	alignxmmfieldproc
	callconvopt
	
	.code
	
funcstart _uX_mm_permute_00_pd, callconv, xmmword, < >, Inxmm_A:xmmword
			shufpd				xmm0,			xmm0,			0
			ret
funcend

funcstart _uX_mm_permute_01_pd, callconv, xmmword, < >, Inxmm_A:xmmword
			shufpd				xmm0,			xmm0,			1
			ret
funcend

funcstart _uX_mm_permute_10_pd, callconv, xmmword, < >, Inxmm_A:xmmword
			shufpd				xmm0,			xmm0,			2
			ret
funcend

funcstart _uX_mm_permute_11_pd, callconv, xmmword, < >, Inxmm_A:xmmword
			shufpd				xmm0,			xmm0,			3
			ret
funcend

funcstart _uX_mm_permute_pd, callconv, xmmword, < >, Inxmm_A:xmmword, Inint_Imm:dword
			
		;.if(rparam1 > 3)
		;	ret
		;.else

		ifndef __X64__
			movzx			eax,	byte ptr [rparam1]
			;mov				rbx,	dword ptr [rbx+rparam1*4]
			jmp		dword ptr [_m128dpermpdjmptable+eax*size_t_size]
		else
			;movzx			rax,	byte ptr [rparam1]
			lea				rbx,	qword ptr [_m128dpermpdjmptable]
			mov				rbx,	qword ptr [rbx+rparam1*size_t_size]
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

funcend

endif ;__MIC__

	end
