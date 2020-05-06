
	include uXx86asm.inc

ifndef __MIC__

	.xmm
	option arch:sse
	option evex:0

	include uXavx256intrin.inc
	
	uXalignymmFPopt
	uXveccallopt

	.const
	
	;;f32 mask;;
	
	uX8Const __m256i_f32_1lshift12,			__m256i, uX_f32_1lshift12_msk
	uX8Const __m256i_f32_1lshift23,			__m256i, uX_f32_1lshift23_msk
	uX8Const __m256i_f32_1lshift24,			__m256i, uX_f32_1lshift24_msk
	uX8Const __m256i_f32_1lshift31,			__m256i, uX_f32_1lshift31_msk
	
	uX8Const __m256i_f32_neg1lshift12,		__m256i, uX_f32_neg1lshift12_msk
	uX8Const __m256i_f32_neg1lshift23,		__m256i, uX_f32_neg1lshift23_msk
	uX8Const __m256i_f32_neg1lshift24,		__m256i, uX_f32_neg1lshift24_msk
	
	uX8Const __m256i_f32_true,				__m256i, uX_f32_true_msk
	uX8Const __m256i_f32_false,				__m256i, uX_f32_false_msk
	
	uX8Const __m256i_f32_Magic,				__m256i, uX_f32_Magic_msk
	uX8Const __m256i_f32_Sign,				__m256i, uX_f32_Sign_msk
	uX8Const __m256i_f32_invSign,			__m256i, uX_f32_invSign_msk
	
	uX8Const __m256i_f32_Inf,				__m256i, uX_f32_Inf_msk
	uX8Const __m256i_f32_Fin,				__m256i, uX_f32_Fin_msk
	uX8Const __m256i_f32_invInf,			__m256i, uX_f32_invInf_msk
	uX8Const __m256i_f32_negInf,			__m256i, uX_f32_negInf_msk
	uX8Const __m256i_f32_NaN,				__m256i, uX_f32_NaN_msk
	uX8Const __m256i_f32_QNaN,				__m256i, uX_f32_QNaN_msk
	uX8Const __m256i_f32_negQNaN,			__m256i, uX_f32_negQNaN_msk
	uX8Const __m256i_f32_NaNTest,			__m256i, uX_f32_NaNTest_msk
	uX8Const __m256i_f32_Abs,				__m256i, uX_f32_Abs_msk
	uX8Const __m256i_f32_NoFraction,		__m256i, uX_f32_NoFraction_msk
	uX8Const __m256i_f32_MinDenorm,			__m256i, uX_f32_MinDenorm_msk
	uX8Const __m256i_f32_DenormLimit,		__m256i, uX_f32_DenormLimit_msk
	uX8Const __m256i_f32_MinNormal,			__m256i, uX_f32_MinNormal_msk
	uX8Const __m256i_f32_MaxNormal,			__m256i, uX_f32_MaxNormal_msk
	
	;uX8Const __m256i_f32_ExpBias,			__m256i, uX_f32_ExpBias_msk
	;uX8Const __m256i_f32_ExpM1div3,		__m256i, uX_f32_ExpM1div3_msk

	uX8Const __m256i_f32_DecDig,			__m256i, uX_f32_DecDig_msk
	uX8Const __m256i_f32_negDecDig,			__m256i, uX_f32_negDecDig_msk
	uX8Const __m256i_f32_Eps,				__m256i, uX_f32_Eps_msk
	uX8Const __m256i_f32_NormEps,			__m256i, uX_f32_NormEps_msk
	uX8Const __m256i_f32_Guard,				__m256i, uX_f32_Guard_msk
	uX8Const __m256i_f32_MantPow2,			__m256i, uX_f32_MantPow2_msk
	uX8Const __m256i_f32_MaxMantPow2,		__m256i, uX_f32_MaxMantPow2_msk
	uX8Const __m256i_f32_MantDig,			__m256i, uX_f32_MantDig_msk
	uX8Const __m256i_f32_Mant,				__m256i, uX_f32_Mant_msk
	uX8Const __m256i_f32_negMant,			__m256i, uX_f32_negMant_msk
	uX8Const __m256i_f32_Max,				__m256i, uX_f32_Max_msk
	uX8Const __m256i_f32_Min,				__m256i, uX_f32_Min_msk
	uX8Const __m256i_f32_MaxExp,			__m256i, uX_f32_MaxExp_msk
	uX8Const __m256i_f32_Exp,				__m256i, uX_f32_Exp_msk
	uX8Const __m256i_f32_negExp,			__m256i, uX_f32_negExp_msk
	uX8Const __m256i_f32_SubnormalExp,		__m256i, uX_f32_SubnormalExp_msk
	uX8Const __m256i_f32_MinExp,			__m256i, uX_f32_MinExp_msk
	uX8Const __m256i_f32_MaxDecExp,			__m256i, uX_f32_MaxDecExp_msk
	uX8Const __m256i_f32_negMaxDecExp,		__m256i, uX_f32_negMaxDecExp_msk
	uX8Const __m256i_f32_minDecExp,			__m256i, uX_f32_minDecExp_msk
	uX8Const __m256i_f32_ExpField,			__m256i, uX_f32_ExpField_msk
	uX8Const __m256i_f32_MantField,			__m256i, uX_f32_MantField_msk
	uX8Const __m256i_f32_Norm,				__m256i, uX_f32_Norm_msk
	uX8Const __m256i_f32_Radix,				__m256i, uX_f32_Radix_msk
	uX8Const __m256i_f32_Rounds,			__m256i, uX_f32_Rounds_msk
	uX8Const __m256i_f32_SubDec,			__m256i, uX_f32_SubDec_msk
	uX8Const __m256i_f32_High,				__m256i, uX_f32_High_msk
	uX8Const __m256i_f32_SmallNorm,			__m256i, uX_f32_SmallNorm_msk

	uX8Const __m256i_f32_HalfminusEps,		__m256i, uX_f32_HalfminusEps_msk

	uX8Const __m256i_f32_Byte,				__m256i, uX_f32_Byte_msk
	uX8Const __m256i_f32_4Low,				__m256i, uX_f32_4Low_msk
	uX8Const __m256i_f32_4High,				__m256i, uX_f32_4High_msk
	uX8Const __m256i_f32_flip4,				__m256i, uX_f32_flip4_msk
	uX8Const __m256i_f32_8Low,				__m256i, uX_f32_8Low_msk
	uX8Const __m256i_f32_8High,				__m256i, uX_f32_8High_msk
	uX8Const __m256i_f32_flip8,				__m256i, uX_f32_flip8_msk
	uX8Const __m256i_f32_16Low,				__m256i, uX_f32_16Low_msk
	uX8Const __m256i_f32_16High,			__m256i, uX_f32_16High_msk
	uX8Const __m256i_f32_flip16,			__m256i, uX_f32_flip16_msk
	uX8Const __m256i_f32_24Low,				__m256i, uX_f32_24Low_msk
	uX8Const __m256i_f32_24High,			__m256i, uX_f32_24High_msk
	uX8Const __m256i_f32_flip24,			__m256i, uX_f32_flip24_msk
	uX8Const __m256i_f32_28Low,				__m256i, uX_f32_28Low_msk
	uX8Const __m256i_f32_28High,			__m256i, uX_f32_28High_msk
	uX8Const __m256i_f32_flip28,			__m256i, uX_f32_flip28_msk
	uX8Const __m256i_f32_32Low,				__m256i, uX_f32_32Low_msk
	uX8Const __m256i_f32_32High,			__m256i, uX_f32_32High_msk
	uX8Const __m256i_f32_flip32,			__m256i, uX_f32_flip32_msk

	uX8Const __m256i_f32_0,					__m256i, uX_f32_0_msk
	uX8Const __m256i_f32_1,					__m256i, uX_f32_1_msk
	
	uX8Const __m256i_f32_128,				__m256i, uX_f32_128_msk

	uX8Const __m256i_f32_253,				__m256i, uX_f32_253_msk

	uX8Const __m256i_f32_neg0,				__m256i, uX_f32_neg0_msk
	uX8Const __m256i_f32_neg1,				__m256i, uX_f32_neg1_msk

	uX8Const __m256i_f32_neg150,			__m256i, uX_f32_neg150_msk
		
	uX8Const __m256i_f32_bin128,			__m256i, uX_f32_bin128_msk
	uX8Const __m256i_f32_binneg150,			__m256i, uX_f32_binneg150_msk
	
	uX8Const __m256i_f32_maxRand,			__m256i, uX_f32_maxRand_msk

	uX8Const __m256i_f32_maxI8,				__m256i, uX_f32_maxI8_msk
	uX8Const __m256i_f32_minI8,				__m256i, uX_f32_minI8_msk
	uX8Const __m256i_f32_maxU8,				__m256i, uX_f32_maxU8_msk
	
	uX8Const __m256i_f32_maxI16,			__m256i, uX_f32_maxI16_msk
	uX8Const __m256i_f32_minI16,			__m256i, uX_f32_minI16_msk
	uX8Const __m256i_f32_maxU16,			__m256i, uX_f32_maxU16_msk

	uX8Const __m256i_f32_maxI32,			__m256i, uX_f32_maxI32_msk
	uX8Const __m256i_f32_minI32,			__m256i, uX_f32_minI32_msk
	uX8Const __m256i_f32_maxU32,			__m256i, uX_f32_maxU32_msk

	uX8Const __m256i_f32_maxI8xU8,			__m256i, uX_f32_maxI8xU8_msk
	uX8Const __m256i_f32_minI8xU8,			__m256i, uX_f32_minI8xU8_msk
	uX8Const __m256i_f32_maxI8xU16,			__m256i, uX_f32_maxI8xU16_msk
	uX8Const __m256i_f32_minI8xU16,			__m256i, uX_f32_minI8xU16_msk

	uX8Const __m256i_f32_maxI16xU16,		__m256i, uX_f32_maxI16xU16_msk
	uX8Const __m256i_f32_minI16xU16,		__m256i, uX_f32_minI16xU16_msk
	
	uX8Const __m256i_f32_fixUnsigned,		__m256i, uX_f32_fixUnsigned_msk
	uX8Const __m256i_f32_fixmaxI32,			__m256i, uX_f32_fixmaxI32_msk
	uX8Const __m256i_f32_fixmaxU32,			__m256i, uX_f32_fixmaxU32_msk


	;;f64 mask;;
	

	;;int64 mask;;

	uX4Const __m256i_i64_true,				__m256q, uX_i64_true_msk
	uX4Const __m256i_i64_false,				__m256q, uX_i64_false_msk

	
	;;int32 mask;;

	uX8Const __m256i_i32_true,				__m256i, uX_i32_true_msk
	uX8Const __m256i_i32_false,				__m256i, uX_i32_false_msk
	

	;;int16 mask;;

	uX16Const __m256i_i16_true,				__m256w, uX_i16_true_msk
	uX16Const __m256i_i16_false,			__m256w, uX_i16_false_msk

	
	;;int8 mask;;

	uX32Const __m256i_i8_true,				__m256b, uX_i8_true_msk
	uX32Const __m256i_i8_false,				__m256b, uX_i8_false_msk


	;;float;;
	
	uX8Const __m256_true,					__m256f, uX_f32_true_msk
	uX8Const __m256_false,					__m256f, uX_f32_false_msk
	
	uX8Const __m256_0,						__m256f, uX_f32_0
	uX8Const __m256_1,						__m256f, uX_f32_1

	uX8Const __m256_neg0,					__m256f, uX_f32_neg0
	uX8Const __m256_neg1,					__m256f, uX_f32_neg1
	
	;;float low;;
	
	uX8Const8 __m256_strue,					__m256f, uX_f32_true_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk
	uX8Const8 __m256_sfalse,				__m256f, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk
	
	uX8Const8 __m256_s0,					__m256f, uX_f32_0, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk
	uX8Const8 __m256_s1,					__m256f, uX_f32_1, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk

	uX8Const8 __m256_sneg0,					__m256f, uX_f32_neg0, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk
	uX8Const8 __m256_sneg1,					__m256f, uX_f32_neg1, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk, uX_f32_false_msk

	;uX8Const __m256_f32_,				__m256f, 
	;uX8Const __m256_f32_,				__m256f, 
	;uX8Const __m256_f32_,				__m256f, 
	;uX8Const __m256_f32_,				__m256f, 
	;uX8Const __m256_f32_,				__m256f, 
	;uX8Const __m256_f32_,				__m256f, 
	;uX8Const __m256_f32_,				__m256f, 
	;uX8Const __m256_f32_,				__m256f, 
	
	;;double;;
	
	uX4Const __m256d_true,					__m256d, uX_f64_true_msk
	uX4Const __m256d_false,					__m256d, uX_f64_false_msk
	
	uX4Const __m256d_0,						__m256d, uX_f64_0
	uX4Const __m256d_1,						__m256d, uX_f64_1

	uX4Const __m256d_neg0,					__m256d, uX_f64_neg0
	uX4Const __m256d_neg1,					__m256d, uX_f64_neg1
	
	;;double low;;
	
	uX4Const4 __m256d_strue,				__m256d, uX_f64_true_msk, uX_f64_false_msk, uX_f64_false_msk, uX_f64_false_msk
	uX4Const4 __m256d_sfalse,				__m256d, uX_f64_false_msk, uX_f64_false_msk, uX_f64_false_msk, uX_f64_false_msk
	
	uX4Const4 __m256d_s0,					__m256d, uX_f64_0, uX_f64_false_msk, uX_f64_false_msk, uX_f64_false_msk
	uX4Const4 __m256d_s1,					__m256d, uX_f64_1, uX_f64_false_msk, uX_f64_false_msk, uX_f64_false_msk

	uX4Const4 __m256d_sneg0,				__m256d, uX_f64_neg0, uX_f64_false_msk, uX_f64_false_msk, uX_f64_false_msk
	uX4Const4 __m256d_sneg1,				__m256d, uX_f64_neg1, uX_f64_false_msk, uX_f64_false_msk, uX_f64_false_msk

	;.code
	
endif ;__MIC__

	end
