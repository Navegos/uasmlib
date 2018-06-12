
	include uXmx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	include uXmsseintrin.inc	
	include uXmConstants.inc
	
	__align_xmm_fp_opt
	__veccall_opt

	.const
	
	;;f32 mask;;
	
	_uXm_xmm4_const __m128i_f32_1lshift12,		__m128i, uXm_f32_1lshift12_msk
	_uXm_xmm4_const __m128i_f32_1lshift23,		__m128i, uXm_f32_1lshift23_msk
	_uXm_xmm4_const __m128i_f32_1lshift24,		__m128i, uXm_f32_1lshift24_msk
	_uXm_xmm4_const __m128i_f32_1lshift31,		__m128i, uXm_f32_1lshift31_msk
	
	_uXm_xmm4_const __m128i_f32_neg1lshift12,	__m128i, uXm_f32_neg1lshift12_msk
	_uXm_xmm4_const __m128i_f32_neg1lshift23,	__m128i, uXm_f32_neg1lshift23_msk
	_uXm_xmm4_const __m128i_f32_neg1lshift24,	__m128i, uXm_f32_neg1lshift24_msk
	
	_uXm_xmm4_const __m128i_f32_true,			__m128i, uXm_f32_true_msk
	_uXm_xmm4_const __m128i_f32_false,			__m128i, uXm_f32_false_msk
	
	_uXm_xmm4_const __m128i_f32_Magic,			__m128i, uXm_f32_Magic_msk
	_uXm_xmm4_const __m128i_f32_Sign,			__m128i, uXm_f32_Sign_msk
	_uXm_xmm4_const __m128i_f32_invSign,		__m128i, uXm_f32_invSign_msk
	
	_uXm_xmm4_const __m128i_f32_Inf,			__m128i, uXm_f32_Inf_msk
	_uXm_xmm4_const __m128i_f32_Fin,			__m128i, uXm_f32_Fin_msk
	_uXm_xmm4_const __m128i_f32_invInf,			__m128i, uXm_f32_invInf_msk
	_uXm_xmm4_const __m128i_f32_negInf,			__m128i, uXm_f32_negInf_msk
	_uXm_xmm4_const __m128i_f32_NaN,			__m128i, uXm_f32_NaN_msk
	_uXm_xmm4_const __m128i_f32_QNaN,			__m128i, uXm_f32_QNaN_msk
	_uXm_xmm4_const __m128i_f32_negQNaN,		__m128i, uXm_f32_negQNaN_msk
	_uXm_xmm4_const __m128i_f32_NaNTest,		__m128i, uXm_f32_NaNTest_msk
	_uXm_xmm4_const __m128i_f32_Abs,			__m128i, uXm_f32_Abs_msk
	_uXm_xmm4_const __m128i_f32_NoFraction,		__m128i, uXm_f32_NoFraction_msk
	_uXm_xmm4_const __m128i_f32_MinDenorm,		__m128i, uXm_f32_MinDenorm_msk
	_uXm_xmm4_const __m128i_f32_DenormLimit,	__m128i, uXm_f32_DenormLimit_msk
	_uXm_xmm4_const __m128i_f32_MinNormal,		__m128i, uXm_f32_MinNormal_msk
	_uXm_xmm4_const __m128i_f32_MaxNormal,		__m128i, uXm_f32_MaxNormal_msk
	
	;_uXm_xmm4_const __m128i_f32_ExpBias,		__m128i, uXm_f32_ExpBias_msk
	;_uXm_xmm4_const __m128i_f32_ExpM1div3,		__m128i, uXm_f32_ExpM1div3_msk

	_uXm_xmm4_const __m128i_f32_DecDig,			__m128i, uXm_f32_DecDig_msk
	_uXm_xmm4_const __m128i_f32_negDecDig,		__m128i, uXm_f32_negDecDig_msk
	_uXm_xmm4_const __m128i_f32_Eps,			__m128i, uXm_f32_Eps_msk
	_uXm_xmm4_const __m128i_f32_NormEps,		__m128i, uXm_f32_NormEps_msk
	_uXm_xmm4_const __m128i_f32_Guard,			__m128i, uXm_f32_Guard_msk
	_uXm_xmm4_const __m128i_f32_MantPow2,		__m128i, uXm_f32_MantPow2_msk
	_uXm_xmm4_const __m128i_f32_MaxMantPow2,	__m128i, uXm_f32_MaxMantPow2_msk
	_uXm_xmm4_const __m128i_f32_MantDig,		__m128i, uXm_f32_MantDig_msk
	_uXm_xmm4_const __m128i_f32_Mant,			__m128i, uXm_f32_Mant_msk
	_uXm_xmm4_const __m128i_f32_negMant,		__m128i, uXm_f32_negMant_msk
	_uXm_xmm4_const __m128i_f32_Max,			__m128i, uXm_f32_Max_msk
	_uXm_xmm4_const __m128i_f32_Min,			__m128i, uXm_f32_Min_msk
	_uXm_xmm4_const __m128i_f32_MaxExp,			__m128i, uXm_f32_MaxExp_msk
	_uXm_xmm4_const __m128i_f32_Exp,			__m128i, uXm_f32_Exp_msk
	_uXm_xmm4_const __m128i_f32_negExp,			__m128i, uXm_f32_negExp_msk
	_uXm_xmm4_const __m128i_f32_SubnormalExp,	__m128i, uXm_f32_SubnormalExp_msk
	_uXm_xmm4_const __m128i_f32_MinExp,			__m128i, uXm_f32_MinExp_msk
	_uXm_xmm4_const __m128i_f32_MaxDecExp,		__m128i, uXm_f32_MaxDecExp_msk
	_uXm_xmm4_const __m128i_f32_negMaxDecExp,	__m128i, uXm_f32_negMaxDecExp_msk
	_uXm_xmm4_const __m128i_f32_minDecExp,		__m128i, uXm_f32_minDecExp_msk
	_uXm_xmm4_const __m128i_f32_ExpField,		__m128i, uXm_f32_ExpField_msk
	_uXm_xmm4_const __m128i_f32_MantField,		__m128i, uXm_f32_MantField_msk
	_uXm_xmm4_const __m128i_f32_Norm,			__m128i, uXm_f32_Norm_msk
	_uXm_xmm4_const __m128i_f32_Radix,			__m128i, uXm_f32_Radix_msk
	_uXm_xmm4_const __m128i_f32_Rounds,			__m128i, uXm_f32_Rounds_msk
	_uXm_xmm4_const __m128i_f32_SubDec,			__m128i, uXm_f32_SubDec_msk
	_uXm_xmm4_const __m128i_f32_High,			__m128i, uXm_f32_High_msk
	_uXm_xmm4_const __m128i_f32_SmallNorm,		__m128i, uXm_f32_SmallNorm_msk

	_uXm_xmm4_const __m128i_f32_HalfminusEps,	__m128i, uXm_f32_HalfminusEps_msk

	_uXm_xmm4_const __m128i_f32_Byte,			__m128i, uXm_f32_Byte_msk
	_uXm_xmm4_const __m128i_f32_4Low,			__m128i, uXm_f32_4Low_msk
	_uXm_xmm4_const __m128i_f32_4High,			__m128i, uXm_f32_4High_msk
	_uXm_xmm4_const __m128i_f32_flip4,			__m128i, uXm_f32_flip4_msk
	_uXm_xmm4_const __m128i_f32_8Low,			__m128i, uXm_f32_8Low_msk
	_uXm_xmm4_const __m128i_f32_8High,			__m128i, uXm_f32_8High_msk
	_uXm_xmm4_const __m128i_f32_flip8,			__m128i, uXm_f32_flip8_msk
	_uXm_xmm4_const __m128i_f32_16Low,			__m128i, uXm_f32_16Low_msk
	_uXm_xmm4_const __m128i_f32_16High,			__m128i, uXm_f32_16High_msk
	_uXm_xmm4_const __m128i_f32_flip16,			__m128i, uXm_f32_flip16_msk
	_uXm_xmm4_const __m128i_f32_24Low,			__m128i, uXm_f32_24Low_msk
	_uXm_xmm4_const __m128i_f32_24High,			__m128i, uXm_f32_24High_msk
	_uXm_xmm4_const __m128i_f32_flip24,			__m128i, uXm_f32_flip24_msk
	_uXm_xmm4_const __m128i_f32_28Low,			__m128i, uXm_f32_28Low_msk
	_uXm_xmm4_const __m128i_f32_28High,			__m128i, uXm_f32_28High_msk
	_uXm_xmm4_const __m128i_f32_flip28,			__m128i, uXm_f32_flip28_msk
	_uXm_xmm4_const __m128i_f32_32Low,			__m128i, uXm_f32_32Low_msk
	_uXm_xmm4_const __m128i_f32_32High,			__m128i, uXm_f32_32High_msk
	_uXm_xmm4_const __m128i_f32_flip32,			__m128i, uXm_f32_flip32_msk

	_uXm_xmm4_const __m128i_f32_0,				__m128i, uXm_f32_0_msk
	_uXm_xmm4_const __m128i_f32_1,				__m128i, uXm_f32_1_msk
	
	_uXm_xmm4_const __m128i_f32_128,			__m128i, uXm_f32_128_msk

	_uXm_xmm4_const __m128i_f32_253,			__m128i, uXm_f32_253_msk

	_uXm_xmm4_const __m128i_f32_neg0,			__m128i, uXm_f32_neg0_msk
	_uXm_xmm4_const __m128i_f32_neg1,			__m128i, uXm_f32_neg1_msk

	_uXm_xmm4_const __m128i_f32_neg150,			__m128i, uXm_f32_neg150_msk
		
	_uXm_xmm4_const __m128i_f32_bin128,			__m128i, uXm_f32_bin128_msk
	_uXm_xmm4_const __m128i_f32_binneg150,		__m128i, uXm_f32_binneg150_msk
	
	_uXm_xmm4_const __m128i_f32_maxRand,		__m128i, uXm_f32_maxRand_msk

	_uXm_xmm4_const __m128i_f32_maxI8,			__m128i, uXm_f32_maxI8_msk
	_uXm_xmm4_const __m128i_f32_minI8,			__m128i, uXm_f32_minI8_msk
	_uXm_xmm4_const __m128i_f32_maxU8,			__m128i, uXm_f32_maxU8_msk
	
	_uXm_xmm4_const __m128i_f32_maxI16,			__m128i, uXm_f32_maxI16_msk
	_uXm_xmm4_const __m128i_f32_minI16,			__m128i, uXm_f32_minI16_msk
	_uXm_xmm4_const __m128i_f32_maxU16,			__m128i, uXm_f32_maxU16_msk

	_uXm_xmm4_const __m128i_f32_maxI32,			__m128i, uXm_f32_maxI32_msk
	_uXm_xmm4_const __m128i_f32_minI32,			__m128i, uXm_f32_minI32_msk
	_uXm_xmm4_const __m128i_f32_maxU32,			__m128i, uXm_f32_maxU32_msk

	_uXm_xmm4_const __m128i_f32_maxI8xU8,		__m128i, uXm_f32_maxI8xU8_msk
	_uXm_xmm4_const __m128i_f32_minI8xU8,		__m128i, uXm_f32_minI8xU8_msk
	_uXm_xmm4_const __m128i_f32_maxI8xU16,		__m128i, uXm_f32_maxI8xU16_msk
	_uXm_xmm4_const __m128i_f32_minI8xU16,		__m128i, uXm_f32_minI8xU16_msk

	_uXm_xmm4_const __m128i_f32_maxI16xU16,		__m128i, uXm_f32_maxI16xU16_msk
	_uXm_xmm4_const __m128i_f32_minI16xU16,		__m128i, uXm_f32_minI16xU16_msk
	
	_uXm_xmm4_const __m128i_f32_fixUnsigned,	__m128i, uXm_f32_fixUnsigned_msk
	_uXm_xmm4_const __m128i_f32_fixmaxI32,		__m128i, uXm_f32_fixmaxI32_msk
	_uXm_xmm4_const __m128i_f32_fixmaxU32,		__m128i, uXm_f32_fixmaxU32_msk


	;;f64 mask;;
	

	;;int64 mask;;

	_uXm_xmm2_const __m128i_i64_true,			__m128q, uXm_i64_true_msk
	_uXm_xmm2_const __m128i_i64_false,			__m128q, uXm_i64_false_msk

	
	;;int32 mask;;

	_uXm_xmm4_const __m128i_i32_true,			__m128i, uXm_i32_true_msk
	_uXm_xmm4_const __m128i_i32_false,			__m128i, uXm_i32_false_msk
	

	;;int16 mask;;

	_uXm_xmm8_const __m128i_i16_true,			__m128w, uXm_i16_true_msk
	_uXm_xmm8_const __m128i_i16_false,			__m128w, uXm_i16_false_msk

	
	;;int8 mask;;

	_uXm_xmm16_const __m128i_i8_true,			__m128b, uXm_i8_true_msk
	_uXm_xmm16_const __m128i_i8_false,			__m128b, uXm_i8_false_msk


	;;float;;
	
	_uXm_xmm4_const __m128_true,				__m128f, uXm_f32_true_msk
	_uXm_xmm4_const __m128_false,				__m128f, uXm_f32_false_msk
	
	_uXm_xmm4_const __m128_0,					__m128f, uXm_f32_0
	_uXm_xmm4_const __m128_1,					__m128f, uXm_f32_1

	_uXm_xmm4_const __m128_neg0,				__m128f, uXm_f32_neg0
	_uXm_xmm4_const __m128_neg1,				__m128f, uXm_f32_neg1

	;_uXm_xmm4_const __m128_f32_,			__m128f, 
	;_uXm_xmm4_const __m128_f32_,			__m128f, 
	;_uXm_xmm4_const __m128_f32_,			__m128f, 
	;_uXm_xmm4_const __m128_f32_,			__m128f, 
	;_uXm_xmm4_const __m128_f32_,			__m128f, 
	;_uXm_xmm4_const __m128_f32_,			__m128f, 
	;_uXm_xmm4_const __m128_f32_,			__m128f, 
	;_uXm_xmm4_const __m128_f32_,			__m128f, 
	
	;;double;;
	
	_uXm_xmm2_const __m128d_true,				__m128d, uXm_f64_true_msk
	_uXm_xmm2_const __m128d_false,				__m128d, uXm_f64_false_msk
	
	_uXm_xmm2_const __m128d_0,					__m128d, uXm_f64_0
	_uXm_xmm2_const __m128d_1,					__m128d, uXm_f64_1

	_uXm_xmm2_const __m128d_neg0,				__m128d, uXm_f64_neg0
	_uXm_xmm2_const __m128d_neg1,				__m128d, uXm_f64_neg1

	;.code
	
endif ;__MIC__

	end
