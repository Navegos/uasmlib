
	include uXmx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	include uXmsseintrin.inc	
	include uXmxmmconst.inc
	
	;option fieldalign:16

	.const
	
	public __m128_false
	public __m128_true
	
	public __m128_f32_0
	public __m128_f32_1

	public __m128_f32_neg0
	public __m128_f32_neg1

	;;default;;
	__align 16
		__m128_false xmmword m128_false

	__align 16
		__m128_true xmmword m128_true
		
	;;32bits;;
	
	__align 16
		__m128_f32_magic xmmword m128_f32_magic

	__align 16
		__m128_f32_sign xmmword m128_f32_sign

	__align 16
		__m128_f32_invsign xmmword m128_f32_invsign

	__align 16
		__m128_f32_inf xmmword m128_f32_inf
		
	__align 16
		__m128_f32_invinf xmmword m128_f32_invinf

	__align 16
		__m128_f32_neginf xmmword m128_f32_neginf

	__align 16
		__m128_f32_nan xmmword m128_f32_nan

	__align 16
		__m128_f32_qnan xmmword m128_f32_qnan

	__align 16
		__m128_f32_negqnan xmmword m128_f32_negqnan

	__align 16
		__m128_f32_nantest xmmword m128_f32_nantest

	__align 16
		__m128_f32_abs xmmword m128_f32_abs

	__align 16
		__m128_f32_min xmmword m128_f32_min

	__align 16
		__m128_f32_max xmmword m128_f32_max

	__align 16
		__m128_f32_nofraction xmmword m128_f32_nofraction

	__align 16
		__m128_f32_mindenorm xmmword m128_f32_mindenorm

	__align 16
		__m128_f32_denormlimit xmmword m128_f32_denormlimit

	__align 16
		__m128_f32_minnormal xmmword m128_f32_minnormal

	__align 16
		__m128_f32_maxnormal xmmword m128_f32_maxnormal


	__align 16
		__m128_f32_decdig xmmword m128_f32_decdig

	__align 16
		__m128_f32_negdecdig xmmword m128_f32_negdecdig

	__align 16
		__m128_f32_epsilon xmmword m128_f32_epsilon

	__align 16
		__m128_f32_norm_epsilon xmmword m128_f32_norm_epsilon

	__align 16
		__m128_f32_guard xmmword m128_f32_guard

	__align 16
		__m128_f32_mantpow2 xmmword m128_f32_mantpow2

	__align 16
		__m128_f32_maxmantpow2 xmmword m128_f32_maxmantpow2

	__align 16
		__m128_f32_mantdig xmmword m128_f32_mantdig

	__align 16
		__m128_f32_mant xmmword m128_f32_mant

	__align 16
		__m128_f32_negmant xmmword m128_f32_negmant

	__align 16
		__m128_f32_maxexp xmmword m128_f32_maxexp

	__align 16
		__m128_f32_exp xmmword m128_f32_exp

	__align 16
		__m128_f32_negexp xmmword m128_f32_negexp

	__align 16
		__m128_f32_subnormalexp xmmword m128_f32_subnormalexp

	__align 16
		__m128_f32_minexp xmmword m128_f32_minexp

	__align 16
		__m128_f32_maxdecexp xmmword m128_f32_maxdecexp

	__align 16
		__m128_f32_mindecexp xmmword m128_f32_mindecexp

	__align 16
		__m128_f32_expfield xmmword m128_f32_expfield

	__align 16
		__m128_f32_mantfield xmmword m128_f32_mantfield

	__align 16
		__m128_f32_norm xmmword m128_f32_norm

	__align 16
		__m128_f32_radix xmmword m128_f32_radix

	__align 16
		__m128_f32_round xmmword m128_f32_round

	__align 16
		__m128_f32_subdec xmmword m128_f32_subdec

	__align 16
		__m128_f32_high xmmword m128_f32_high

	__align 16
		__m128_f32_smalnormal xmmword m128_f32_smalnormal

	__align 16
		__m128_f32_halfminuseps xmmword m128_f32_halfminuseps


	__align 16
		__m128_f32_byte xmmword m128_f32_byte

	__align 16
		__m128_f32_4low xmmword m128_f32_4low

	__align 16
		__m128_f32_4high xmmword m128_f32_4high

	__align 16
		__m128_f32_flip4 xmmword m128_f32_flip4

	__align 16
		__m128_f32_8low xmmword m128_f32_8low

	__align 16
		__m128_f32_8high xmmword m128_f32_8high

	__align 16
		__m128_f32_flip8 xmmword m128_f32_flip8

	__align 16
		__m128_f32_16low xmmword m128_f32_16low

	__align 16
		__m128_f32_16high xmmword m128_f32_16high

	__align 16
		__m128_f32_flip16 xmmword m128_f32_flip16

	__align 16
		__m128_f32_24low xmmword m128_f32_24low

	__align 16
		__m128_f32_24high xmmword m128_f32_24high

	__align 16
		__m128_f32_flip24 xmmword m128_f32_flip24

	__align 16
		__m128_f32_28low xmmword m128_f32_28low

	__align 16
		__m128_f32_28high xmmword m128_f32_28high

	__align 16
		__m128_f32_flip28 xmmword m128_f32_flip28

	__align 16
		__m128_f32_32low xmmword m128_f32_32low

	__align 16
		__m128_f32_32high xmmword m128_f32_32high

	__align 16
		__m128_f32_flip32 xmmword m128_f32_flip32

		
	__align 16
		__m128_f32_0 xmmword m128_f32_0
		
	__align 16
		__m128_f32_0d25 xmmword m128_f32_0d25

	__align 16
		__m128_f32_0d5 xmmword m128_f32_0d5

	__align 16
		__m128_f32_1 xmmword m128_f32_1

	__align 16
		__m128_f32_1d25 xmmword m128_f32_1d25

	__align 16
		__m128_f32_1d5 xmmword m128_f32_1d5

	__align 16
		__m128_f32_2 xmmword m128_f32_2
		
	__align 16
		__m128_f32_2d25 xmmword m128_f32_2d25

	__align 16
		__m128_f32_2d5 xmmword m128_f32_2d5


	__align 16
		__m128_f32_neg0 __m128 { <-0.0, -0.0, -0.0, -0.0> }

	__align 16
		__m128_f32_neg1 xmmword m128_f32_neg1
		
	__align 16
		__m128_f32_neg125 xmmword m128_f32_neg125

	__align 16
		__m128_f32_neg128 xmmword m128_f32_neg128
		
	__align 16
		__m128_f32_neg150 xmmword m128_f32_neg150
		

	__align 16
		__m128_f32_maxrand xmmword m128_f32_maxrand


	__align 16
		__m128_f32_maxi8 __m128 { <0000007fh, 0000007fh, 0000007fh, 0000007fh> }

	__align 16
		__m128_f32_mini8 xmmword m128_f32_mini8

	__align 16
		__m128_f32_maxu8 xmmword m128_f32_maxu8


	__align 16
		__m128_f32_maxi16 xmmword m128_f32_maxi16

	__align 16
		__m128_f32_mini16 xmmword m128_f32_mini16

	__align 16
		__m128_f32_maxu16 xmmword m128_f32_maxu16


	__align 16
		__m128_f32_maxi32 xmmword m128_f32_maxi32
		
	__align 16
		__m128_f32_mini32 xmmword m128_f32_mini32

	__align 16
		__m128_f32_maxu32 xmmword m128_f32_maxu32


	__align 16
		__m128_f32_maxi8xu8 xmmword m128_f32_maxi8xu8

	__align 16
		__m128_f32_mini8xu8 xmmword m128_f32_mini8xu8
		
	__align 16
		__m128_f32_maxi8xu16 xmmword m128_f32_maxi8xu16

	__align 16
		__m128_f32_mini8xu16 xmmword m128_f32_mini8xu16


	__align 16
		__m128_f32_maxi16xu16 xmmword m128_f32_maxi16xu16

	__align 16
		__m128_f32_mini16xu16 xmmword m128_f32_mini16xu16


	__align 16
		__m128_f32_fixunsigned xmmword m128_f32_fixunsigned

	__align 16
		__m128_f32_fixmaxi32 xmmword m128_f32_fixmaxi32

	__align 16
		__m128_f32_fixmaxu32 xmmword m128_f32_fixmaxu32


	__align 16
		__m128_f32_mega xmmword m128_f32_mega

	__align 16
		__m128_f32_negmega xmmword m128_f32_negmega

	__align 16
		__m128_f32_halfmega xmmword m128_f32_halfmega

	__align 16
		__m128_f32_neghalfmega xmmword m128_f32_neghalfmega

	__align 16
		__m128_f32_megadiv4 xmmword m128_f32_megadiv4

	__align 16
		__m128_f32_negmegadiv4 xmmword m128_f32_negmegadiv4

	__align 16
		__m128_f32_halfmegaxmega xmmword m128_f32_halfmegaxmega

	__align 16
		__m128_f32_halfmegaxsqrmega xmmword m128_f32_halfmegaxsqrmega

	__align 16
		__m128_f32_halfmegaxcubemega xmmword m128_f32_halfmegaxcubemega

	__align 16
		__m128_f32_neghalfmegaxmega xmmword m128_f32_neghalfmegaxmega

	__align 16
		__m128_f32_neghalfmegaxsqrmega xmmword m128_f32_neghalfmegaxsqrmega

	__align 16
		__m128_f32_neghalfmegaxcubemega xmmword m128_f32_neghalfmegaxcubemega

	__align 16
		__m128_f32_sqrmega xmmword m128_f32_sqrmega

	__align 16
		__m128_f32_cubemega xmmword m128_f32_cubemega

	__align 16
		__m128_f32_sqrtmega xmmword m128_f32_sqrtmega

	__align 16
		__m128_f32_cbrtmega xmmword m128_f32_cbrtmega

	__align 16
		__m128_f32_rcpmega xmmword m128_f32_rcpmega

	__align 16
		__m128_f32_rcpsqrmega xmmword m128_f32_rcpsqrmega

	__align 16
		__m128_f32_rcpcubemega xmmword m128_f32_rcpcubemega

	__align 16
		__m128_f32_rcpsqrtmega xmmword m128_f32_rcpsqrtmega

	__align 16
		__m128_f32_rcpcbrtmega xmmword m128_f32_rcpcbrtmega


	__align 16
		__m128_f32_2mega xmmword m128_f32_2mega

	__align 16
		__m128_f32_neg2mega xmmword m128_f32_neg2mega

	__align 16
		__m128_f32_sqr2mega xmmword m128_f32_sqr2mega

	__align 16
		__m128_f32_cube2mega xmmword m128_f32_cube2mega

	__align 16
		__m128_f32_sqrt2mega xmmword m128_f32_sqrt2mega

	__align 16
		__m128_f32_cbrt2mega xmmword m128_f32_cbrt2mega

	__align 16
		__m128_f32_4mega xmmword m128_f32_4mega

	__align 16
		__m128_f32_neg4mega xmmword m128_f32_neg4mega

	__align 16
		__m128_f32_sqr4mega xmmword m128_f32_sqr4mega

	__align 16
		__m128_f32_cube4mega xmmword m128_f32_cube4mega

	__align 16
		__m128_f32_sqrt4mega xmmword m128_f32_sqrt4mega

	__align 16
		__m128_f32_cbrt4mega xmmword m128_f32_cbrt4mega

	__align 16
		__m128_f32_rcp2mega xmmword m128_f32_rcp2mega

	__align 16
		__m128_f32_rcp4mega xmmword m128_f32_rcp4mega


	__align 16
		__m128_f32_E xmmword m128_f32_E

	__align 16
		__m128_f32_logE xmmword m128_f32_logE

	__align 16
		__m128_f32_logEhigh xmmword m128_f32_logEhigh

	__align 16
		__m128_f32_log2E xmmword m128_f32_log2E

	__align 16
		__m128_f32_log2Ehigh xmmword m128_f32_log2Ehigh

	__align 16
		__m128_f32_log10E xmmword m128_f32_log10E

	__align 16
		__m128_f32_rcplog2E xmmword m128_f32_rcplog2E

	__align 16
		__m128_f32_rcplog10E xmmword m128_f32_rcplog10E

	__align 16
		__m128_f32_log2T xmmword m128_f32_log2T

	__align 16
		__m128_f32_log2 xmmword m128_f32_log2

	__align 16
		__m128_f32_log2high xmmword m128_f32_log2high

	__align 16
		__m128_f32_ln2 xmmword m128_f32_ln2

	__align 16
		__m128_f32_ln2high xmmword m128_f32_ln2high

	__align 16
		__m128_f32_1divln2 xmmword m128_f32_1divln2

	__align 16
		__m128_f32_2divln2 xmmword m128_f32_2divln2

	__align 16
		__m128_f32_lnT xmmword m128_f32_lnT

	__align 16
		__m128_f32_lnThigh xmmword m128_f32_lnThigh

	__align 16
		__m128_f32_ln10 xmmword m128_f32_ln10

	__align 16
		__m128_f32_sqrt2 xmmword m128_f32_sqrt2

	__align 16
		__m128_f32_rcpsqrt2 xmmword m128_f32_rcpsqrt2

	__align 16
		__m128_f32_sqrt2div2 xmmword m128_f32_sqrt2div2

	__align 16
		__m128_f32_sqrt2div2high xmmword m128_f32_sqrt2div2high

	__align 16
		__m128_f32_sqrt2div2low xmmword m128_f32_sqrt2div2low

	__align 16
		__m128_f32_sqrthalf xmmword m128_f32_sqrthalf

	__align 16
		__m128_f32_sqrthalfhigh xmmword m128_f32_sqrthalfhigh

	__align 16
		__m128_f32_sqrthalflow xmmword m128_f32_sqrthalflow

	__align 16
		__m128_f32_powe2 xmmword m128_f32_powe2

	__align 16
		__m128_f32_rcpowe2 xmmword m128_f32_rcpowe2

	__align 16
		__m128_f32_cbrt2 xmmword m128_f32_cbrt2

	__align 16
		__m128_f32_rcpcbrt2 xmmword m128_f32_rcpcbrt2
		
	__align 16
		__m128_f32_1div3 xmmword m128_f32_1div3

	__align 16
		__m128_f32_1div7 xmmword m128_f32_1div7

	__align 16
		__m128_f32_1div9 xmmword m128_f32_1div9

	__align 16
		__m128_f32_2div3 xmmword m128_f32_2div3

	__align 16
		__m128_f32_2div7 xmmword m128_f32_2div7

	__align 16
		__m128_f32_2div9 xmmword m128_f32_2div9


	__align 16
		__m128_f32_Pi xmmword m128_f32_Pi

	__align 16
		__m128_f32_Pihigh xmmword m128_f32_Pihigh

	__align 16
		__m128_f32_halfPi xmmword m128_f32_halfPi

	__align 16
		__m128_f32_2Pi xmmword m128_f32_2Pi

	__align 16
		__m128_f32_negPi xmmword m128_f32_negPi

	__align 16
		__m128_f32_neghalfPi xmmword m128_f32_neghalfPi

	__align 16
		__m128_f32_neg2Pi xmmword m128_f32_neg2Pi

	__align 16
		__m128_f32_rcpPi xmmword m128_f32_rcpPi

	__align 16
		__m128_f32_invPi xmmword m128_f32_invPi

	__align 16
		__m128_f32_rcp2Pi xmmword m128_f32_rcp2Pi

	__align 16
		__m128_f32_inv2Pi xmmword m128_f32_inv2Pi

	__align 16
		__m128_f32_Pidiv2 xmmword m128_f32_Pidiv2

	__align 16
		__m128_f32_Pidiv2high xmmword m128_f32_Pidiv2high

	__align 16
		__m128_f32_Pidiv4 xmmword m128_f32_Pidiv4

	__align 16
		__m128_f32_Pidiv4high xmmword m128_f32_Pidiv4high

	__align 16
		__m128_f32_Pix3div4 xmmword m128_f32_Pix3div4

	__align 16
		__m128_f32_sqrtPi xmmword m128_f32_sqrtPi

	__align 16
		__m128_f32_sqrt2Pi xmmword m128_f32_sqrt2Pi

	__align 16
		__m128_f32_sqrt2Pihigh xmmword m128_f32_sqrt2Pihigh

	__align 16
		__m128_f32_rcpsqrtPi xmmword m128_f32_rcpsqrtPi

	__align 16
		__m128_f32_rcpsqrt2Pi xmmword m128_f32_rcpsqrt2Pi

	__align 16
		__m128_f32_sqrtPidiv2 xmmword m128_f32_sqrtPidiv2

	__align 16
		__m128_f32_sqrtPidiv2high xmmword m128_f32_sqrtPidiv2high

	__align 16
		__m128_f32_sqrt2Pidiv2 xmmword m128_f32_sqrt2Pidiv2

	__align 16
		__m128_f32_sqrt2Pidiv2high xmmword m128_f32_sqrt2Pidiv2high

	__align 16
		__m128_f32_2divPi xmmword m128_f32_2divPi

	__align 16
		__m128_f32_2div2Pi xmmword m128_f32_2div2Pi

	__align 16
		__m128_f32_2divsqrtPi xmmword m128_f32_2divsqrtPi

	__align 16
		__m128_f32_2divsqrt2Pi xmmword m128_f32_2divsqrt2Pi

	__align 16
		__m128_f32_sqrt2divPi xmmword m128_f32_sqrt2divPi

	__align 16
		__m128_f32_logPi xmmword m128_f32_logPi

	__align 16
		__m128_f32_log2Pi xmmword m128_f32_log2Pi

	__align 16
		__m128_f32_lnPi xmmword m128_f32_lnPi

	__align 16
		__m128_f32_ln2Pi xmmword m128_f32_ln2Pi

	__align 16
		__m128_f32_powePi xmmword m128_f32_powePi

	__align 16
		__m128_f32_rcpowePi xmmword m128_f32_rcpowePi

	__align 16
		__m128_f32_powe2Pi xmmword m128_f32_powe2Pi

	__align 16
		__m128_f32_rcppowe2Pi xmmword m128_f32_rcppowe2Pi

	__align 16
		__m128_f32_cbrtPi xmmword m128_f32_cbrtPi

	__align 16
		__m128_f32_rcpcbrtPi xmmword m128_f32_rcpcbrtPi

	__align 16
		__m128_f32_cbrt2Pi xmmword m128_f32_cbrt2Pi

	__align 16
		__m128_f32_rcpcbrt2Pi xmmword m128_f32_rcpcbrt2Pi


	__align 16
		__m128_f32_pow2toM126 xmmword m128_f32_pow2toM126

	__align 16
		__m128_f32_pow2to126 xmmword m128_f32_pow2to126

	__align 16
		__m128_f32_normhuge xmmword m128_f32_normhuge

	__align 16
		__m128_f32_pow2to23 xmmword m128_f32_pow2to23

	__align 16
		__m128_f32_pow2to24 xmmword m128_f32_pow2to24

	__align 16
		__m128_f32_maxi32pow2to23 xmmword m128_f32_maxi32pow2to23

	__align 16
		__m128_f32_pow2to31 xmmword m128_f32_pow2to31

	__align 16
		__m128_f32_pow2to32 xmmword m128_f32_pow2to32


	__align 16
		__m128_f32_trigploss xmmword m128_f32_trigploss


	__align 16
		__m128_f32_DegtoRad xmmword m128_f32_DegtoRad

	__align 16
		__m128_f32_RadtoDeg xmmword m128_f32_RadtoDeg


	__align 16
		__m128_f32_DegtoGrad xmmword m128_f32_DegtoGrad

	__align 16
		__m128_f32_GradtoDeg xmmword m128_f32_GradtoDeg


	__align 16
		__m128_f32_RadtoGrad xmmword m128_f32_RadtoGrad

	__align 16
		__m128_f32_GradtoRad xmmword m128_f32_GradtoRad


	__align 16
		__m128_f32_SunGravity xmmword m128_f32_SunGravity

	__align 16
		__m128_f32_JupiterGravity xmmword m128_f32_JupiterGravity

	__align 16
		__m128_f32_NeptuneGravity xmmword m128_f32_NeptuneGravity

	__align 16
		__m128_f32_SaturnGravity xmmword m128_f32_SaturnGravity

	__align 16
		__m128_f32_UranusGravity xmmword m128_f32_UranusGravity

	__align 16
		__m128_f32_EarthGravity xmmword m128_f32_EarthGravity

	__align 16
		__m128_f32_VenusGravity xmmword m128_f32_VenusGravity

	__align 16
		__m128_f32_MarsGravity xmmword m128_f32_MarsGravity

	__align 16
		__m128_f32_MercuryGravity xmmword m128_f32_MercuryGravity
		
	__align 16
		__m128_f32_MoonGravity xmmword m128_f32_MoonGravity

	__align 16
		__m128_f32_PlutoGravity xmmword m128_f32_PlutoGravity

		

	;;double;;

	;.code
	
endif ;__MIC__

	end
