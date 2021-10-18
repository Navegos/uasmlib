	
	include uXx86asm.inc

ifndef __MIC__

	.ymm
	option arch:avx
	option evex:0

	;include uXavx256intrin.inc
	
	include uXymmconstdata.inc
	
	.const
	
		uXalignsize_t
		_m256cvteltdf64jmptable isize_t offset _m256cvteltdf64_0, offset _m256cvteltdf64_1		
		
	.data?

		uXalignymm
		m256_setepi8_hi1 ymmword ?

		uXalignymm
		m256_setepi8_hi0 ymmword ?

		uXalignymm
		m256_setrepi8_hi1 ymmword ?

		uXalignymm
		m256_setrepi8_hi0 ymmword ?
		
	uXalignymmFPopt
	uXveccallopt

	.code
	
;******************
; Externs
;******************
	;extern uXveccall _uX_intrin_CPUFeatures:proc
	
;******************
; FP, arithmetic
;******************
uXprocstart _uX_mm256_add_ss, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vaddss			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_add_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vaddps			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_sub_ss, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vsubss			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_sub_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vsubps			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_mul_ss, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vmulss			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_mul_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vmulps			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_div_ss, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vdivss			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_div_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vdivps			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_sqrt_ss, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vsqrtss			ymm0,			ymm0

			ret
uXprocend

uXprocstart _uX_mm256_sqrt_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vsqrtps			ymm0,			ymm0

			ret
uXprocend

uXprocstart _uX_mm256_rcp_ss, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vrcpss			ymm0,			ymm0

			ret
uXprocend

uXprocstart _uX_mm256_rcp_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vrcpps			ymm0,			ymm0

			ret
uXprocend

uXprocstart _uX_mm256_rsqrt_ss, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vrsqrtss			ymm0,			ymm0

			ret
uXprocend

uXprocstart _uX_mm256_rsqrt_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vrsqrtps			ymm0,			ymm0

			ret
uXprocend

uXprocstart _uX_mm256_min_ss, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vminss			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_min_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vminps			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_max_ss, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vmaxss			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_max_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vmaxps			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_addsub_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vaddsubps			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_hadd_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vhaddps			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_hsub_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vhsubps			ymm0,			ymm1

			ret
uXprocend

;******************
; DP, arithmetic
;******************
uXprocstart _uX_mm256_add_sd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vaddsd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_add_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vaddpd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_sub_sd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vsubsd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_sub_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vsubpd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_mul_sd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vmulsd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_mul_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vmulpd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_div_sd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vdivsd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_div_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vdivpd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_sqrt_sd, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vsqrtsd			ymm0,			ymm0

			ret
uXprocend

uXprocstart _uX_mm256_sqrt_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vsqrtpd			ymm0,			ymm0

			ret
uXprocend

uXprocstart _uX_mm256_rcp_sd, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vmovapd			xmm1,			__m256d_s1
			vdivsd			xmm1,			xmm0
			vmovapd			xmm0,			xmm1

			ret
uXprocend

uXprocstart _uX_mm256_rcp_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vmovapd			xmm1,			__m256d_1
			vdivpd			xmm1,			xmm0
			vmovapd			xmm0,			xmm1

			ret
uXprocend

uXprocstart _uX_mm256_rsqrt_sd, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vmovapd			xmm1,			__m256d_s1
			vsqrtsd			xmm0,			xmm0
			vdivsd			xmm1,			xmm0
			vmovapd			xmm0,			xmm1

			ret
uXprocend

uXprocstart _uX_mm256_rsqrt_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vmovapd			xmm1,			__m256d_1
			vsqrtpd			xmm0,			xmm0
			vdivpd			xmm1,			xmm0
			vmovapd			xmm0,			xmm1

			ret
uXprocend

uXprocstart _uX_mm256_min_sd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vminsd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_min_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vminpd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_max_sd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vmaxsd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_max_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vmaxpd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_addsub_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vaddsubpd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_hadd_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vhaddpd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_hsub_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vhsubpd			ymm0,			ymm1

			ret
uXprocend

;******************
; FP, logical
;******************
uXprocstart _uX_mm256_and_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vandps			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_andnot_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vandnps			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_or_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vorps			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_xor_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vxorps			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_not_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vmovaps			ymm1,			__m256_true
			vxorps			ymm0,			ymm1

			ret
uXprocend

;******************
; DP, logical
;******************
uXprocstart _uX_mm256_and_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vandpd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_andnot_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vandnpd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_or_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vorpd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_xor_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A), ymmwordparam2(Inymm_B)

			vxorpd			ymm0,			ymm1

			ret
uXprocend

uXprocstart _uX_mm256_not_pd, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vmovapd			ymm1,			__m256d_true
			vxorpd			ymm0,			ymm1

			ret
uXprocend

;******************
; FP, conversions
;******************
uXprocstart _uX_mm256_cvtepi32_ps, ymmword, < >, < >,  ymmwordparam1(Inymm_A)

			vcvtdq2ps			ymm0,			ymm0

			ret
uXprocend

uXprocstart _uX_mm256_cvtpd_ps, xmmword, < >, < >,  ymmwordparam1(Inymm_A)

			vcvtpd2ps			xmm0,			ymm0

			ret
uXprocend

;******************
; DP, conversions
;******************
uXprocstart _uX_mm256_cvtepi32_pd, ymmword, < >, < >,  xmmwordparam1(Inymm_A)

			vcvtdq2pd			ymm0,			xmm0

			ret
uXprocend

uXprocstart _uX_mm256_cvtps_pd, ymmword, < >, < >,  xmmwordparam1(Inymm_A)

			vcvtpd2ps			ymm0,			xmm0

			ret
uXprocend

endif ;__MIC__

	end
