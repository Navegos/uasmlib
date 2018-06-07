
#pragma once

#ifndef uXm_CONSTANTS_H
#define uXm_CONSTANTS_H

#include "uXmTypes.h"

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                   start of head macro constants                     */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/* single precision constants */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// mask or hex constants for single precision

#define uXm_f32_1lshift12_msk		0x00001000
#define uXm_f32_1lshift23_msk		0x00800000
#define uXm_f32_1lshift24_msk		0x01000000
#define uXm_f32_1lshift31_msk		0x80000000

#define uXm_f32_neg1lshift12_msk	0xfffff000
#define uXm_f32_neg1lshift23_msk	0xff800000
#define uXm_f32_neg1lshift24_msk	0xff000000

#define uXm_f32_true_msk			0xffffffff
#define uXm_f32_false_msk			0x00000000

#define uXm_f32_Magic_msk			0x4b000000		/* 1258291200 */
#define uXm_f32_Sign_msk			0x80000000		/* -2147483648 MinI32 */
#define uXm_f32_invSign_msk			0x7fffffff		/* 2147483647 MaxI32 */

#define uXm_f32_Inf_msk				0x7f800000		/* 2139095040 MaxI32+1-pow2^23*/
#define uXm_f32_Fin_msk				0xff000000		/* 4278190080 */
#define uXm_f32_invInf_msk			0x807fffff		/* -2139095041 */
#define uXm_f32_negInf_msk			0xff800000		/* -8388608 */
#define uXm_f32_NaN_msk				0x7fffffff		/* 2147483647 MaxI32 */
#define uXm_f32_QNaN_msk			0x7fc00000		/* 2143289344 */
#define uXm_f32_negQNaN_msk			0xffc00000		/* -4194304 */
#define uXm_f32_NaNTest_msk			0x007fffff		/* 8388607 */
#define uXm_f32_Abs_msk				0x7fffffff		/* 2147483647 MaxI32 */
#define uXm_f32_Min_msk				0x00800000		/* 1.175494351e-38F 8388608 pow2^23*/			/* min positive value */
#define uXm_f32_Max_msk				0x7f7fffff		/* 2139095039 MaxI32-pow2^23*/
#define uXm_f32_NoFraction_msk		0x00800000		/* 8388608 pow2^23*/
#define uXm_f32_MinDenorm_msk		0x00000001
#define uXm_f32_DenormLimit_msk		0x00800000		/* 8388608 pow2^23*/
#define uXm_f32_MinNormal_msk		0x00800000		/* 8388608 pow2^23*/
#define uXm_f32_MaxNormal_msk		0x7f7fffff		/* 2139095039 MaxI32-pow2^23*/

//#define uXm_f32_ExpBias_msk		0x54800000		/* 1417674752 exponent bias */
//#define uXm_f32_ExpM1div3_msk		0x002aaaaa		/* 2796202 exponent multiplier for 1/3 */

#define uXm_f32_DecDig_msk			0x00000006			/* 6 */							/* # of float decimal digits of precision */
#define uXm_f32_negDecDig_msk		0xfffffffa			/* -6 */						/* # negate of float decimal digits of precision */
#define uXm_f32_Eps_msk				0x34000000			/* 1.192092896e-07f */			/* smallest such that 1.0+FLT_EPSILON != 1.0 */
#define uXm_f32_NormEps_msk			0x1e3ce508			/* 1e-20f */
#define uXm_f32_Guard_msk			0x00000000
#define uXm_f32_MantPow2_msk		0x00800000			/* 8388608 */					/* # pow2^23 */
#define uXm_f32_MaxMantPow2_msk		0x7f7fffff			/* 2139095039 */				/* # MaxI32-pow2^23 */
#define uXm_f32_MantDig_msk			0x00000018			/* 24 */						/* # of bits in float mantissa */
#define uXm_f32_Mant_msk			0x00000017			/* 23 */						/* # stable of float bits in mantissa */
#define uXm_f32_negMant_msk			0xffffffe9			/* -23 */						/* # negate stable of float bits in mantissa */
#define uXm_f32_Max_msk				0x7f7fffff			/* 3.402823466e+38F */	/* maximum possible float value 2139095039 MaxI32-pow2^2*/		/* .4028234663852885981170418348452e+38F */
#define uXm_f32_Min_msk				0x00800000			/* 1.175494351e-38F 8388608 pow2^23*/			/* min positive value */
#define uXm_f32_MaxExp_msk			0x00000080			/* 128 */						/* stable max float binary exponent */
#define uXm_f32_Exp_msk				0x0000007f			/* 127 */						/* stable binary exponent */
#define uXm_f32_negExp_msk			0xffffff81			/* -127 */						/* stable binary exponent */
#define uXm_f32_SubnormalExp_msk	0xffffff82			/* -126 */						/* stable min float binary exponent */
#define uXm_f32_MinExp_msk			0xffffff83			/* -125 */						/* min binary exponent */
#define uXm_f32_MaxDecExp_msk		0x00000026			/* 38 */						/* max float decimal exponent */
#define uXm_f32_negMaxDecExp_msk	0xffffffda			/* -38 */						/* neg max float decimal exponent */
#define uXm_f32_minDecExp_msk		0xffffffd8			/* -37 */						/* float min decimal exponent */
#define uXm_f32_ExpField_msk		0xff000000			/* -16777216 */					/* float exponent field */
#define uXm_f32_MantField_msk		0x00ffffff			/* 16777215 */					/* float mantissa field */
#define uXm_f32_Norm_msk			0x00000000
#define uXm_f32_Radix_msk			0x00000002			/* 2 */							/* float exponent radix */
#define uXm_f32_Rounds_msk			0x00000001			/* 1 */							/* addition rounding: near */
#define uXm_f32_SubDec_msk			0x0000000a
#define uXm_f32_High_msk			0x5f7ffff0			/* 1.8446726e+019f */
#define uXm_f32_SmallNorm_msk		0x00800000			/* 1.175494351e-38f */         /* smallest normal number, float*/

#define uXm_f32_HalfminusEps_msk	0x3efffffd		/* 1056964605 */

//#define uXm_f32_maxExp_msk		0x0000007f			/* 127 */						/* stable max float binary exponent */
//#define uXm_f32_minExp_msk		0xffffff82			/* -126 */						/* stable min float binary exponent */

//#define uXm_f32_ExpSign_msk		0x00000080			/* 128 uXm_f32_MaxExp_msk */						/* stable sign float binary exponent */

#define uXm_f32_Byte_msk			0x000000ff		/* 255 */
#define uXm_f32_4Low_msk			0x0fffffff		/* 268435455 */
#define uXm_f32_4High_msk			0xfffffff0		/* -16 */
#define uXm_f32_flip4_msk			0x00000008		/* 8 */
#define uXm_f32_8Low_msk			0x00ffffff		/* 16777215 */
#define uXm_f32_8High_msk			0xffffff00		/* -256 */
#define uXm_f32_flip8_msk			0x00000080		/* 128 */
#define uXm_f32_16Low_msk			0x0000ffff		/* 65535 */
#define uXm_f32_16High_msk			0xffff0000		/* -65536 */
#define uXm_f32_flip16_msk			0x00008000		/* 32768 */
#define uXm_f32_24Low_msk			0x000000ff		/* 255 */
#define uXm_f32_24High_msk			0xff000000		/* -16777216 */
#define uXm_f32_flip24_msk			0x00800000		/* 8388608 */
#define uXm_f32_28Low_msk			0x0000000f		/* 15 */
#define uXm_f32_28High_msk			0xf0000000		/* -268435456 */
#define uXm_f32_flip28_msk			0x08000000		/* 134217728 */
#define uXm_f32_32Low_msk			0x00000000		/* 0 */
#define uXm_f32_32High_msk			0x00000000		/* 0 */
#define uXm_f32_flip32_msk			0x80000000		/* -2147483648 */

#define uXm_f32_0_msk				0x00000000
#define uXm_f32_0d001_msk			0x3a83126f      /* 0.001f */
#define uXm_f32_0d002_msk			0x3b03126f      /* 0.002f */
#define uXm_f32_0d003_msk			0x3b449ba6      /* 0.003f */
#define uXm_f32_0d004_msk			0x3b83126f      /* 0.004f */
#define uXm_f32_0d005_msk			0x3ba3d70a      /* 0.005f */
#define uXm_f32_0d006_msk			0x3bc49ba6      /* 0.006f */
#define uXm_f32_0d007_msk			0x3be56042      /* 0.007f */
#define uXm_f32_0d008_msk			0x3c03126f      /* 0.008f */
#define uXm_f32_0d009_msk			0x3c1374bc      /* 0.009f */
#define uXm_f32_0d01_msk			0x3c23d70a      /* 0.01f */
#define uXm_f32_0d02_msk			0x3ca3d70a      /* 0.02f */
#define uXm_f32_0d03_msk			0x3cf5c28f      /* 0.03f */
#define uXm_f32_0d04_msk			0x3d23d70a      /* 0.04f */
#define uXm_f32_0d05_msk			0x3d4ccccd      /* 0.05f */
#define uXm_f32_0d06_msk			0x3d75c28f      /* 0.06f */
#define uXm_f32_0d07_msk			0x3d8f5c29      /* 0.07f */
#define uXm_f32_0d08_msk			0x3da3d70a      /* 0.08f */
#define uXm_f32_0d09_msk			0x3db851ec      /* 0.09f */
#define uXm_f32_0d1_msk				0x3dcccccd      /* 0.1f */
#define uXm_f32_0d2_msk				0x3e4ccccd      /* 0.2f */
#define uXm_f32_0d3_msk				0x3e99999a      /* 0.3f */
#define uXm_f32_0d4_msk				0x3ecccccd      /* 0.4f */
#define uXm_f32_0d5_msk				0x3f000000      /* 0.5f */
#define uXm_f32_0d6_msk				0x3f19999a      /* 0.6f */
#define uXm_f32_0d7_msk				0x3f333333      /* 0.7f */
#define uXm_f32_0d8_msk				0x3f4ccccd      /* 0.8f */
#define uXm_f32_0d9_msk				0x3f666666      /* 0.9f */
#define uXm_f32_1_msk				0x3f800000      /* 1.f */
#define uXm_f32_1d5_msk				0x3fc00000      /* 1.5f */
#define uXm_f32_2_msk				0x40000000      /* 2.f */
#define uXm_f32_2d5_msk				0x40200000      /* 2.5f */
#define uXm_f32_3_msk				0x40400000      /* 3.f */
#define uXm_f32_4_msk				0x40800000      /* 4.f */
#define uXm_f32_5_msk				0x40a00000      /* 5.f */
#define uXm_f32_6_msk				0x40c00000      /* 6.f */
#define uXm_f32_7_msk				0x40e00000      /* 7.f */
#define uXm_f32_8_msk				0x41000000      /* 8.f */
#define uXm_f32_9_msk				0x41100000      /* 9.f */
#define uXm_f32_10_msk				0x41200000      /* 10.f */
#define uXm_f32_11_msk				0x41300000      /* 11.f */
#define uXm_f32_12_msk				0x41400000      /* 12.f */
#define uXm_f32_13_msk				0x41500000      /* 13.f */
#define uXm_f32_14_msk				0x41600000      /* 14.f */
#define uXm_f32_15_msk				0x41700000      /* 15.f */
#define uXm_f32_16_msk				0x41800000      /* 16.f */
#define uXm_f32_17_msk				0x41880000      /* 17.f */
#define uXm_f32_18_msk				0x41900000      /* 18.f */
#define uXm_f32_19_msk				0x41980000      /* 19.f */
#define uXm_f32_20_msk				0x41a00000      /* 20.f */
#define uXm_f32_24_msk				0x41c00000      /* 24.f */
#define uXm_f32_24d5_msk			0x41c40000      /* 24.5f */
#define uXm_f32_25_msk				0x41c80000      /* 25.f */

#define uXm_f32_128_msk				0x43000000      /* 128.f */

#define uXm_f32_253_msk				0x437d0000      /* 253.f */

#define uXm_f32_neg0_msk			0x80000000		/* -0.f -2147483648 MinI32 */
#define uXm_f32_neg1_msk			0xbf800000		/* -1.f */

#define uXm_f32_neg150_msk			0xc3160000		/* -150.f */

#define uXm_f32_A8_msk				0x00ff0000		/* 16711680 */
#define uXm_f32_R8_msk				0x0000ff00		/* 65280 */
#define uXm_f32_G8_msk				0x000000ff		/* 255 */
#define uXm_f32_B8_msk				0xff000000		/* -16777216 */

#define uXm_f32_flipA8_msk			uXm_f32_0_msk
#define uXm_f32_flipR8_msk			uXm_f32_0_msk
#define uXm_f32_flipG8_msk			uXm_f32_0_msk
#define uXm_f32_flipB8_msk			uXm_f32_neg0_msk

#define uXm_f32_A2_msk				0x000003ff		/* 1023 */
#define uXm_f32_B10_msk				0x000ffc00		/* 1047552 */
#define uXm_f32_G10_msk				0x3ff00000		/* 1072693248 */
#define uXm_f32_R10_msk				0xc0000000		/* -1073741824 */

#define uXm_f32_flipA2_msk			0x00000200		/* 512 */
#define uXm_f32_flipB10_msk			0x00080000		/* 524288 */
#define uXm_f32_flipG10_msk			0x20000000		/* 536870912 */
#define uXm_f32_flipR10_msk			0x80000000		/* -2147483648 */

#define uXm_f32_bin128_msk			uXm_f32_128_msk		/* 1124073472 */
#define uXm_f32_binneg150_msk		uXm_f32_neg150_msk	/* -1021968384 */

#define uXm_f32_maxRand_msk			0x00007fff

#define uXm_f32_maxI8_msk			0x0000007f			/*127*/
#define uXm_f32_minI8_msk			0xffffff80			/*-128*/
#define uXm_f32_maxU8_msk			0x000000ff			/*255*/

#define uXm_f32_maxI16_msk			0x00007fff			/*32767*/
#define uXm_f32_minI16_msk			0xffff8000			/*-32768*/
#define uXm_f32_maxU16_msk			0x0000ffff			/*65535*/

#define uXm_f32_maxI32_msk			0x7fffffff			/*2147483647*/
#define uXm_f32_minI32_msk			0x80000000			/*-2147483648*/
#define uXm_f32_maxU32_msk			0xffffffff			/*4294967295*/

#define uXm_f32_maxI8xU8_msk		0x00000800			/*32768*/				/*128.f*256.f*/
#define uXm_f32_minI8xU8_msk		0xffff8000			/*-32768*/				/*-128.f*256.f*/
#define uXm_f32_maxI8xU16_msk		0x00800000			/*8388608*/				/*128.f*65536.f*/
#define uXm_f32_minI8xU16_msk		0xff800000			/*-8388608*/			/*-128.f*65536.f*/

#define uXm_f32_maxI16xU16_msk		0x80000000			/*(0x00008000 * 0x00010000)*/	/*2147483648*/			/*32768.f*65536.f*/
#define uXm_f32_minI16xU16_msk		0x80000000			/*-2147483648*/			/*-32768.f*65536.f*/

#define uXm_f32_fixUnsigned_msk		0x80000000			/*(0x00008000 * 0x00010000)*/					/*2147483648*/			/*32768.f*65536.f*/
#define uXm_f32_fixmaxI32_msk		0x7fffff80			/*(0x00010000 * 0x00008000 + 0x7fffff80)*/		/*2147483520*/			/*65536.f*32768.f-128.f*/
#define uXm_f32_fixmaxU32_msk		0xffffff00			/*(0x00010000 * 0x00010000 + 0xffffff00)*/		/*4294967040*/			/*65536.f*65536.f-256.f*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// int

#define uXm_f32_1lshift12_int		4096
#define uXm_f32_1lshift23_int		8388608
#define uXm_f32_1lshift24_int		16777216
#define uXm_f32_1lshift31_int		2147483648

#define uXm_f32_neg1lshift12_int	4294963200
#define uXm_f32_neg1lshift23_int	4286578688
#define uXm_f32_neg1lshift24_int	4278190080

#define uXm_f32_True_int			4294967295
#define uXm_f32_False_int			0

#define uXm_f32_Magic_int			1258291200			/* 1258291200 */
#define uXm_f32_Sign_int			2147483648			/* -2147483648 MinI32 */
#define uXm_f32_invSign_int			2147483647			/* 2147483647 MaxI32 */

#define uXm_f32_Inf_int				2139095040		/* 2139095040 MaxI32+1-pow2^23*/
#define uXm_f32_Fin_int				4278190080		/* 4278190080 */
#define uXm_f32_invInf_int			2155872255		/* -2139095041 */
#define uXm_f32_negInf_int			4286578688		/* -8388608 */
#define uXm_f32_NaN_int				2147483647		/* 2147483647 MaxI32 */
#define uXm_f32_QNaN_int			2143289344		/* 2143289344 */
#define uXm_f32_negQNaN_int			4290772992		/* -4194304 */
#define uXm_f32_NaNTest_int			8388607			/* 8388607 */
#define uXm_f32_Abs_int				2147483647		/* 2147483647 MaxI32 */
#define uXm_f32_Min_int				8388608			/* 1.175494351e-38F 8388608 pow2^23*/			/* min positive value */
#define uXm_f32_Max_int				2139095039		/* 2139095039 MaxI32-pow2^23*/
#define uXm_f32_NoFraction_int		8388608			/* 8388608 pow2^23*/
#define uXm_f32_MinDenorm_int		1
#define uXm_f32_DenormLimit_int		8388608			/* 8388608 pow2^23*/
#define uXm_f32_MinNormal_int		8388608			/* 8388608 pow2^23*/
#define uXm_f32_MaxNormal_int		2139095039		/* 2139095039 MaxI32-pow2^23*/

//#define uXm_f32_ExpBias_int		1417674752		/* 1417674752 exponent bias */
//#define uXm_f32_ExpM1div3_int		2796202			/* 2796202 exponent multiplier for 1/3 */

#define uXm_f32_DecDig_int			6					/* 6 */							/* # of float decimal digits of precision */
#define uXm_f32_negDecDig_int		4294967290			/* -6 */						/* # negate of float decimal digits of precision */
#define uXm_f32_Eps_int				872415232			/* 1.192092896e-07f */			/* smallest such that 1.0+FLT_EPSILON != 1.0 */
#define uXm_f32_NormEps_int			507307272			/* 1e-20f */
#define uXm_f32_Guard_int			0
#define uXm_f32_MantPow2_int		8388608				/* 8388608 */					/* # pow2^23 */
#define uXm_f32_MaxMantPow2_int		2139095039			/* 2139095039 */				/* # MaxI32-pow2^23 */
#define uXm_f32_MantDig_int			24					/* 24 */						/* # of bits in float mantissa */
#define uXm_f32_Mant_int			23					/* 23 */						/* # stable of float bits in mantissa */
#define uXm_f32_negMant_int			4294967273			/* -23 */						/* # negate stable of float bits in mantissa */
#define uXm_f32_Max_int				2139095039			/* 3.402823466e+38F */	/* maximum possible float value 2139095039 MaxI32-pow2^2*/		/* .4028234663852885981170418348452e+38F */
#define uXm_f32_Min_int				8388608				/* 1.175494351e-38F 8388608 pow2^23*/			/* min positive value */
#define uXm_f32_MaxExp_int			128					/* 128 */						/* stable max float binary exponent */
#define uXm_f32_Exp_int				127					/* 127 */						/* stable binary exponent */
#define uXm_f32_negExp_int			4294967169			/* -127 */						/* stable binary exponent */
#define uXm_f32_SubnormalExp_int	4294967170			/* -126 */						/* stable min float binary exponent */
#define uXm_f32_MinExp_int			4294967171			/* -125 */						/* min binary exponent */
#define uXm_f32_MaxDecExp_int		38					/* 38 */						/* max float decimal exponent */
#define uXm_f32_negMaxDecExp_int	4294967258			/* -38 */						/* neg max float decimal exponent */
#define uXm_f32_minDecExp_int		4294967256			/* -37 */						/* float min decimal exponent */
#define uXm_f32_ExpField_int		4278190080			/* -16777216 */					/* float exponent field */
#define uXm_f32_MantField_int		16777215			/* 16777215 */					/* float mantissa field */
#define uXm_f32_Norm_int			0
#define uXm_f32_Radix_int			2					/* 2 */							/* float exponent radix */
#define uXm_f32_Rounds_int			1					/* 1 */							/* addition rounding: near */
#define uXm_f32_SubDec_int			10
#define uXm_f32_High_int			1602224112			/* 1.8446726e+019f */
#define uXm_f32_SmallNorm_int		8388608				/* 1.175494351e-38f */         /* smallest normal number, float*/

#define uXm_f32_HalfminusEps_int	1056964605			/* 1056964605 */

#define uXm_f32_Byte_int			255					/* 255 */
#define uXm_f32_4Low_int			268435455			/* 268435455 */
#define uXm_f32_4High_int			4294967280			/* -16 */
#define uXm_f32_flip4_int			8					/* 8 */
#define uXm_f32_8Low_int			16777215			/* 16777215 */
#define uXm_f32_8High_int			4294967040			/* -256 */
#define uXm_f32_flip8_int			128					/* 128 */
#define uXm_f32_16Low_int			65535				/* 65535 */
#define uXm_f32_16High_int			4294901760			/* -65536 */
#define uXm_f32_flip16_int			32768				/* 32768 */
#define uXm_f32_24Low_int			255					/* 255 */
#define uXm_f32_24High_int			4278190080			/* -16777216 */
#define uXm_f32_flip24_int			8388608				/* 8388608 */
#define uXm_f32_28Low_int			15					/* 15 */
#define uXm_f32_28High_int			4026531840			/* -268435456 */
#define uXm_f32_flip28_int			134217728			/* 134217728 */
#define uXm_f32_32Low_int			0					/* 0 */
#define uXm_f32_32High_int			0					/* 0 */
#define uXm_f32_flip32_int			2147483648			/* -2147483648 */

#define uXm_f32_0_int				0

#define uXm_f32_128_int				1124073472			/* 128.f */

#define uXm_f32_253_int				1132265472			/* 253.f */

#define uXm_f32_neg0_int			2147483648			/* -0.f -2147483648 MinI32 */
#define uXm_f32_neg1_int			3212836864			/* -1.f */

#define uXm_f32_neg150_int			3272998912			/* -150.f */

#define uXm_f32_A8_int				16711680			/* 16711680 */
#define uXm_f32_R8_int				65280				/* 65280 */
#define uXm_f32_G8_int				255					/* 255 */
#define uXm_f32_B8_int				4278190080			/* -16777216 */

#define uXm_f32_flipA8_int			uXm_f32_0_int
#define uXm_f32_flipR8_int			uXm_f32_0_int
#define uXm_f32_flipG8_int			uXm_f32_0_int
#define uXm_f32_flipB8_int			uXm_f32_neg0_int

#define uXm_f32_A2_int				1023				/* 1023 */
#define uXm_f32_B10_int				1047552				/* 1047552 */
#define uXm_f32_G10_int				1072693248			/* 1072693248 */
#define uXm_f32_R10_int				3221225472			/* -1073741824 */

#define uXm_f32_flipA2_int			512					/* 512 */
#define uXm_f32_flipB10_int			524288				/* 524288 */
#define uXm_f32_flipG10_int			536870912			/* 536870912 */
#define uXm_f32_flipR10_int			2147483648			/* -2147483648 */

#define uXm_f32_bin128_int			uXm_f32_128_int		/* 1124073472 */
#define uXm_f32_binneg150_int		uXm_f32_neg150_int	/* -1021968384 */

#define uXm_f32_maxRand_int			32767

#define uXm_f32_maxI8_int			127					/*127*/
#define uXm_f32_minI8_int			4294967168			/*-128*/
#define uXm_f32_maxU8_int			255					/*255*/

#define uXm_f32_maxI16_int			32767				/*32767*/
#define uXm_f32_minI16_int			4294934528			/*-32768*/
#define uXm_f32_maxU16_int			65535				/*65535*/

#define uXm_f32_maxI32_int			2147483647			/*2147483647*/
#define uXm_f32_minI32_int			2147483648			/*-2147483648*/
#define uXm_f32_maxU32_int			4294967295			/*4294967295*/

#define uXm_f32_maxI8xU8_int		2048			/*32768*/				/*128.f*256.f*/
#define uXm_f32_minI8xU8_int		4294934528			/*-32768*/				/*-128.f*256.f*/
#define uXm_f32_maxI8xU16_int		8388608			/*8388608*/				/*128.f*65536.f*/
#define uXm_f32_minI8xU16_int		4286578688			/*-8388608*/			/*-128.f*65536.f*/

#define uXm_f32_maxI16xU16_int		2147483648			/*(0x00008000 * 0x00010000)*/	/*2147483648*/			/*32768.f*65536.f*/
#define uXm_f32_minI16xU16_int		2147483648			/*-2147483648*/			/*-32768.f*65536.f*/

#define uXm_f32_fixUnsigned_int		2147483648			/*(0x00008000 * 0x00010000)*/					/*2147483648*/			/*32768.f*65536.f*/
#define uXm_f32_fixmaxI32_int		2147483520			/*(0x00010000 * 0x00008000 + 0x7fffff80)*/		/*2147483520*/			/*65536.f*32768.f-128.f*/
#define uXm_f32_fixmaxU32_int		4294967040			/*(0x00010000 * 0x00010000 + 0xffffff00)*/		/*4294967040*/			/*65536.f*65536.f-256.f*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// flt

#define uXm_f32_1lshift12			4096.f
#define uXm_f32_1lshift23			8388608.f
#define uXm_f32_1lshift24			16777216.f
#define uXm_f32_1lshift31			2147483648.f

#define uXm_f32_neg1lshift12		4294963200.f
#define uXm_f32_neg1lshift23		4286578688.f
#define uXm_f32_neg1lshift24		4278190080.f

#define uXm_f32_True				4294967295.f
#define uXm_f32_False				0.f

#define uXm_f32_Magic				8388608.f										/*8388608.f*/								/* 1258291200 */
#define uXm_f32_Sign				uXm_uint32_as_float(uXm_f32_Sign_msk)			/*-0.f*/									/* -2147483648 MinI32 */
#define uXm_f32_invSign				uXm_int32_as_float(uXm_f32_invSign_msk)			/* 2147483647 MaxI32 */

#define uXm_f32_Inf					uXm_int32_as_float(uXm_f32_Inf_msk)				/* 2139095040 MaxI32+1-pow2^23*/
#define uXm_f32_Fin					uXm_int32_as_float(uXm_f32_Fin_msk)				/* 4278190080 */
#define uXm_f32_invInf				uXm_uint32_as_float(uXm_f32_invInf_msk)			/*1.17549420987015360768624e-38f*/				/* -2139095041 */
#define uXm_f32_negInf				uXm_uint32_as_float(uXm_f32_negInf_msk)			/* -8388608 */
#define uXm_f32_NaN					uXm_int32_as_float(uXm_f32_NaN_msk)				/* 2147483647 MaxI32 */
#define uXm_f32_QNaN				uXm_int32_as_float(uXm_f32_QNaN_msk)			/* 2143289344 */
#define uXm_f32_negQNaN				uXm_uint32_as_float(uXm_f32_negQNaN_msk)		/* -4194304 */
#define uXm_f32_NaNTest				uXm_int32_as_float(uXm_f32_NaNTest_msk)			/*1.17549420987015360768624e-38f*/				/* 8388607 */
#define uXm_f32_Abs					uXm_int32_as_float(uXm_f32_Abs_msk)				/* 2147483647 MaxI32 */
#define uXm_f32_Min					1.175494351e-38f								/*1.175494351e-38f*/							/* 8388608 pow2^23*/
#define uXm_f32_Max					3.402823457175904428664032e+38f					/*3.402823457175904428664032e+38f*/				/* 2139095039 MaxI32-pow2^23*/
#define uXm_f32_NoFraction			8388608.f										/*1.175494351e-38f*/							/* 8388608 pow2^23*/
#define uXm_f32_MinDenorm			1.401298463344573974609375e-45f					/*1.f*/ /*1.401298463344573974609375e-45f*/				
#define uXm_f32_DenormLimit			1.175494351e-38f								/*1.175494351e-38f*/							/* 8388608 pow2^23*/
#define uXm_f32_MinNormal			1.175494351e-38f								/*1.175494351e-38f*/							/* 8388608 pow2^23*/
#define uXm_f32_MaxNormal			3.402823457175904428664032e+38f					/*3.402823457175904428664032e+38f*/				/* 2139095039 MaxI32-pow2^23*/

//#define uXm_f32_ExpBias				1417674752.f			/* 1417674752 exponent bias */
//#define uXm_f32_ExpM1div3			2796202.f				/* 2796202 exponent multiplier for 1/3 */

#define uXm_f32_DecDig				6.f					/* 6 */							/* # of float decimal digits of precision */
#define uXm_f32_negDecDig			-6.f					/* -6 */						/* # neg of float decimal digits of precision */
#define uXm_f32_Eps					1.192092896e-07f		/* 1.192092896e-07f */			/* smallest such that 1.0+FLT_EPSILON != 1.0 */
#define uXm_f32_NormEps				1e-20f	
#define uXm_f32_Guard				0.f
#define uXm_f32_MantPow2			1.175494351e-38f						/* 8388608 */					/* # pow2^23 */
#define uXm_f32_MaxMantPow2			3.402823457175904428664032e+38f			/* 2139095039 */				/* # MaxI32-pow2^23 */
#define uXm_f32_MantDig				24.f					/* 24 */						/* # of bits in mantissa */
#define uXm_f32_Mant				23.f					/* 23 */						/* # stable of bits in mantissa */
#define uXm_f32_negMant				-23.f					/* -23 */						/* # neg stable of float bits in mantissa */
#define uXm_f32_Max					3.402823457175904428664032e+38f		/* 3.402823466e+38F */		/* maximum possible float value 2139095039 MaxI32-pow2^2*/	/* 3.4028234663852885981170418348452e+38F */
#define uXm_f32_Min					1.175494351e-38f				/* 1.175494351e-38F 8388608 pow2^23*/			/* min positive value */
#define uXm_f32_MaxExp				128.f					/* 128 */						/* stable max float binary exponent */
#define uXm_f32_Exp					127.f					/* 127 */						/* stable binary exponent */
#define uXm_f32_SubnormalExp		-126.f					/* -126 */						/* stable min float binary exponent */
#define uXm_f32_MinExp				-125.f					/* (-125) */					/* min binary exponent */
#define uXm_f32_MaxDecExp			38.f					/* 38 */						/* max float decimal exponent */
#define uXm_f32_negMaxDecExp		-38.f					/* -38 */						/* neg max float decimal exponent */
#define uXm_f32_MinDecExp			-37.f					/* -37 */						/*  min decimal exponent */
#define uXm_f32_Norm				0.f
#define uXm_f32_Radix				2.f					/* 2 */							/* float exponent radix */
#define uXm_f32_Rounds				1.f					/* 1 */							/* addition rounding: near */
#define uXm_f32_SubDec				10.f
#define uXm_f32_High				1.8446726e+019f
#define uXm_f32_SmallNorm			1.175494351e-38f         /* smallest normal number, float*/

#define uXm_f32_Byte				255.f					/* 255 */
#define uXm_f32_4Low				268435455.f			/* 268435455 */
#define uXm_f32_4High				-16.f					/* -16 */
#define uXm_f32_flip4				8.f					/* 8 */
#define uXm_f32_8Low				16777215.f				/* 16777215 */
#define uXm_f32_8High				-256.f					/* -256 */
#define uXm_f32_flip8				128.f					/* 128 */
#define uXm_f32_16Low				65535.f				/* 65535 */
#define uXm_f32_16High				-65536.f				/* -65536 */
#define uXm_f32_flip16				32768.f				/* 32768 */
#define uXm_f32_24Low				255.f					/* 255 */
#define uXm_f32_24High				-16777216.f			/* -16777216 */
#define uXm_f32_flip24				8388608.f				/* 8388608 */
#define uXm_f32_28Low				15.f					/* 15 */
#define uXm_f32_28High				-268435456.f			/* -268435456 */
#define uXm_f32_flip28				134217728.f			/* 134217728 */
#define uXm_f32_32Low				0.f					/* 0 */
#define uXm_f32_32High				0.f					/* 0 */
#define uXm_f32_flip32				-2147483648.f			/* -2147483648 */

#define uXm_f32_HalfminusEps		0.5f			/* 1056964605 */

#define uXm_f32_0			0.f
#define uXm_f32_05			0.5f
#define uXm_f32_1			1.f
#define uXm_f32_2			2.f
#define uXm_f32_3			3.f
#define uXm_f32_4			4.f
#define uXm_f32_5			5.f
#define uXm_f32_6			6.f
#define uXm_f32_7			7.f
#define uXm_f32_8			8.f
#define uXm_f32_9			9.f
#define uXm_f32_10			10.f
#define uXm_f32_11			11.f
#define uXm_f32_12			12.f
#define uXm_f32_13			13.f
#define uXm_f32_14			14.f
#define uXm_f32_15			15.f
#define uXm_f32_16			16.f
#define uXm_f32_17			17.f
#define uXm_f32_18			18.f
#define uXm_f32_19			19.f
#define uXm_f32_20			20.f
#define uXm_f32_21			21.f
#define uXm_f32_22			22.f
#define uXm_f32_23			23.f
#define uXm_f32_24			25.f
#define uXm_f32_24_5 		24.5f
#define uXm_f32_30			30.f
#define uXm_f32_31			31.f
#define uXm_f32_32			32.f
#define uXm_f32_33			33.f
#define uXm_f32_40 			40.f
#define uXm_f32_45 			45.f
#define uXm_f32_50			50.f
#define uXm_f32_51			51.f
#define uXm_f32_52			52.f
#define uXm_f32_53			53.f
#define uXm_f32_54			54.f
#define uXm_f32_55			55.f
#define uXm_f32_56			56.f
#define uXm_f32_60			60.f
#define uXm_f32_61			61.f
#define uXm_f32_62			62.f
#define uXm_f32_63			63.f
#define uXm_f32_64			64.f
#define uXm_f32_65			65.f
#define uXm_f32_66			66.f
#define uXm_f32_70 			70.f
#define uXm_f32_80 			80.f
#define uXm_f32_90 			90.f
#define uXm_f32_126			126.f
#define uXm_f32_127			127.f
#define uXm_f32_128			128.f
#define uXm_f32_180 		180.f
#define uXm_f32_253			253.f
#define uXm_f32_254			254.f
#define uXm_f32_255			255.f
#define uXm_f32_256			256.f
#define uXm_f32_360 		360.f
#define uXm_f32_511 		511.f
#define uXm_f32_512 		512.f
#define uXm_f32_513 		513.f
#define uXm_f32_1023 		1023.f
#define uXm_f32_1024 		1024.f
#define uXm_f32_1025 		1025.f

#define uXm_f32_32767			32767.f
#define uXm_f32_32768			32768.f
#define uXm_f32_65535			65535.f
#define uXm_f32_65536			65536.f
#define uXm_f32_2147483647		2147483647.f
#define uXm_f32_2147483648		2147483648.f
#define uXm_f32_4294967295		4294967295.f
#define uXm_f32_4294967296		4294967296.f

#define uXm_f32_neg0			-0.f
#define uXm_f32_neg05			-0.5f
#define uXm_f32_neg1			-1.f
#define uXm_f32_neg2			-2.f
#define uXm_f32_neg3			-3.f
#define uXm_f32_neg4			-4.f
#define uXm_f32_neg5			-5.f
#define uXm_f32_neg6			-6.f
#define uXm_f32_neg7			-7.f
#define uXm_f32_neg8			-8.f
#define uXm_f32_neg9			-9.f
#define uXm_f32_neg10			-10.f
#define uXm_f32_neg11			-11.f
#define uXm_f32_neg12			-12.f
#define uXm_f32_neg13			-13.f
#define uXm_f32_neg14			-14.f
#define uXm_f32_neg15			-15.f
#define uXm_f32_neg16			-16.f
#define uXm_f32_neg17			-17.f
#define uXm_f32_neg18			-18.f
#define uXm_f32_neg19			-19.f
#define uXm_f32_neg20			-20.f
#define uXm_f32_neg21			-21.f
#define uXm_f32_neg22			-22.f
#define uXm_f32_neg23			-23.f
#define uXm_f32_neg24			-25.f
#define uXm_f32_neg24_5 		-24.5f
#define uXm_f32_neg30			-30.f
#define uXm_f32_neg31			-31.f
#define uXm_f32_neg32			-32.f
#define uXm_f32_neg33			-33.f
#define uXm_f32_neg40 			-40.f
#define uXm_f32_neg45 			-45.f
#define uXm_f32_neg50			-50.f
#define uXm_f32_neg51			-51.f
#define uXm_f32_neg52			-52.f
#define uXm_f32_neg53			-53.f
#define uXm_f32_neg54			-54.f
#define uXm_f32_neg55			-55.f
#define uXm_f32_neg56			-56.f
#define uXm_f32_neg60			-60.f
#define uXm_f32_neg61			-61.f
#define uXm_f32_neg62			-62.f
#define uXm_f32_neg63			-63.f
#define uXm_f32_neg64			-64.f
#define uXm_f32_neg65			-65.f
#define uXm_f32_neg66			-66.f
#define uXm_f32_neg70 			-70.f
#define uXm_f32_neg80 			-80.f
#define uXm_f32_neg90 			-90.f
#define uXm_f32_neg126			-126.f
#define uXm_f32_neg127			-127.f
#define uXm_f32_neg128			-128.f
#define uXm_f32_neg150			-150.f
#define uXm_f32_neg180 			-180.f
#define uXm_f32_neg253			-253.f
#define uXm_f32_neg254			-254.f
#define uXm_f32_neg255			-255.f
#define uXm_f32_neg256			-256.f
#define uXm_f32_neg360 			-360.f
#define uXm_f32_neg511 			-511.f
#define uXm_f32_neg512 			-512.f
#define uXm_f32_neg513 			-513.f
#define uXm_f32_neg1023 		-1023.f
#define uXm_f32_neg1024 		-1024.f
#define uXm_f32_neg1025 		-1025.f

#define uXm_f32_neg32767			-32767.f
#define uXm_f32_neg32768			-32768.f
#define uXm_f32_neg65535			-65535.f
#define uXm_f32_neg65536			-65536.f
#define uXm_f32_neg2147483647		-2147483647.f
#define uXm_f32_neg2147483648		-2147483648.f
#define uXm_f32_neg4294967295		-4294967295.f
#define uXm_f32_neg4294967296		-4294967296.f

#define uXm_f32_bin128			uXm_f32_128			/* 1124073472 */
#define uXm_f32_binneg150	    uXm_f32_neg150		/* -1021968384 */

#define uXm_f32_maxRand			32767.f

#define uXm_f32_maxI8			127.f
#define uXm_f32_minI8			-128.f
#define uXm_f32_maxU8			255.f
#define uXm_f32_minU8			0.f

#define uXm_f32_maxI16			32767.f
#define uXm_f32_minI16			-32768.f
#define uXm_f32_maxU16			65535.f
#define uXm_f32_minU16			0.f

#define uXm_f32_maxI32			2147483647.f
#define uXm_f32_minI32			-2147483648.f
#define uXm_f32_maxU32			4294967295.f
#define uXm_f32_minU32			0.f

#define uXm_f32_maxI8xU8		32768.f			/*128.f*256.f*/
#define uXm_f32_minI8xU8		-32768.f			/*-128.f*256.f*/
#define uXm_f32_maxI8xU16		8388608.f			/*128.f*65536.f*/
#define uXm_f32_minI8xU16		-8388608.f			/*-128.f*65536.f*/

#define uXm_f32_maxI16xU16		2147483648.f 		/* 2147483648.f		32768.f*65536.f*/
#define uXm_f32_minI16xU16		-2147483648.f 		/* -2147483648.f		-32768.f*65536.f*/

#define uXm_f32_fixUnsigned		2147483648.f 		/* 2147483648.f		32768.f*65536.f*/
#define uXm_f32_fixmaxI32		2147483520.f 		/* 2147483520.f		65536.f*32768.f-128.f*/
#define uXm_f32_fixmaxU32		4294967040.f 		/* 4294967040.f		65536.f*65536.f-256.f*/

#define uXm_f32_rcpI16			3.0518509475997192297128208258309e-5f	/* 1/maxI16 */
#define uXm_f32_rcpU16			0.0000152587890625f						/* 1/maxU16 */
#define uXm_f32_rcpI16xU16		4.656754985961485641041291543321e-10f	/* 1/maxI16xmaxU16 */

#define uXm_f32_fixAA8			uXm_f32_0
#define uXm_f32_fixR8			uXm_f32_0
#define uXm_f32_fixG8			uXm_f32_0
#define uXm_f32_fixB8			2147483648.f

#define uXm_f32_NormA8			257.00392156862745098039215686275f
#define uXm_f32_NormR8			1.0039215686274509803921568627451f
#define uXm_f32_NormG8			0.0039215686274509803921568627451f
#define uXm_f32_NormB8			65793.003921568627450980392156863f

#define uXm_f32_fixAA2			-512.f
#define uXm_f32_fixB10			-524288.f
#define uXm_f32_fixG10			-536870912.f
#define uXm_f32_fixR10			2147483648.f

#define uXm_f32_NormA2			0.00195694716242661448140900195695f
#define uXm_f32_NormB10			2.0039138943248532289628180039139f
#define uXm_f32_NormG10			4.0156708958681990341642380352403f
#define uXm_f32_NormR10			357913941.33333333333333333333333f

#define uXm_f32_MG					1024.f
#define uXm_f32_negMG				-1024.f
#define uXm_f32_HalfMG				512.f
#define uXm_f32_negHalfMG			-512.f
#define uXm_f32_MGdiv4				256.f
#define uXm_f32_negMGdiv4			-256.f
#define uXm_f32_HalfMGxMG			524288.f
#define uXm_f32_HalfMGxsqrMG		536870912.f
#define uXm_f32_HalfMGxcubeMG		549755813888.f
#define uXm_f32_negHalfMGxMG		-524288.f
#define uXm_f32_negHalfMGxsqrMG		-536870912.f
#define uXm_f32_negHalfMGxcubeMG	-549755813888.f
#define uXm_f32_sqrMG				1048576.f
#define uXm_f32_cubeMG				1073741824.f
#define uXm_f32_sqrtMG				32.f
#define uXm_f32_cbrtMG				10.0793683991589853181f
#define uXm_f32_rcpMG				0.0009765625f
#define uXm_f32_rcpsqrMG			0.00000095367431640625f
#define uXm_f32_rcpcubeMG			0.00000000093132257462f
#define uXm_f32_rcpsqrtMG			0.03125f
#define uXm_f32_rcpcbrtMG			0.09921256574801246717f

#define uXm_f32_2MG					2048.f
#define uXm_f32_neg2MG				-2048.f
#define uXm_f32_sqr2MG				4194304.f
#define uXm_f32_cube2MG				8589934592.f
#define uXm_f32_sqrt2MG				45.25483399593904156165403917471f
#define uXm_f32_cbrt2MG				12.699208415745595798013645114178f
#define uXm_f32_4MG					4096.f
#define uXm_f32_neg4MG				-4096.f
#define uXm_f32_sqr4MG				16777216.f
#define uXm_f32_cube4MG				68719476736.f
#define uXm_f32_sqrt4MG				64.f
#define uXm_f32_cbrt4MG				16.f
#define uXm_f32_rcp2MG				0.00048828125f
#define uXm_f32_rcp4MG				0.000244140625f


#define uXm_f32_E					2.71828182845904523536f
#define uXm_f32_exp					2.71828182845904523536f
#define uXm_f32_logE				0.434294481903251827651f
#define uXm_f32_logEHigh			0.434294481903251827651f
#define uXm_f32_log2E				1.44269504088896340736f
#define uXm_f32_log2EHigh			1.44269504088896340736f
#define uXm_f32_log10E				0.434294481903251827651f
#define uXm_f32_rcplog2E			0.693147180559945309417f
#define uXm_f32_rcplog10E			2.30258509299404568402f
#define uXm_f32_log2T				3.3219280948873622f
#define uXm_f32_log2				0.301029995663981195214f
#define uXm_f32_log2High			0.301029995663981195214f
#define uXm_f32_ln2					0.693147180559945309417f
#define uXm_f32_ln2High				0.693147180559945309417f
#define uXm_f32_1divln2				1.44269504088896340736f
#define uXm_f32_2divln2				2.88539008177792681472f
#define uXm_f32_lnT					2.3025850929940459f
#define uXm_f32_lnTHigh				2.3025850929940459e+0f
#define uXm_f32_ln10				2.302585092994045684018f
#define uXm_f32_sqrt2				1.414213562373095048802f         /* sqrt(2) */
#define uXm_f32_rcpsqrt2			0.707106781186547524401f         /* 1/sqrt(2) */
#define uXm_f32_sqrt2div2			0.707106781186547524401f
#define uXm_f32_sqrt2div2High		0.707106781186547524401f
#define uXm_f32_sqrt2div2Low		1.210161749e-08f
#define uXm_f32_sqrtHalf			0.707106781186547524401f
#define uXm_f32_sqrtHalfHigh		0.707106781186547524401f
#define uXm_f32_sqrtHalfLow			1.210161749e-08f
#define uXm_f32_powe2				7.389056098930650227230f         /* powe(2) */
#define uXm_f32_rcpowe2				0.135335283236612691893f         /* 1 / powe(2) */
#define uXm_f32_cbrt2				1.259921049894873164767f		 /* cbrt(2) */
#define uXm_f32_rcpcbrt2			0.793700525984099737375f		 /* 1 / cbrt(2) */
#define uXm_f32_1div3				0.333333333333333333333f
#define uXm_f32_1div7				0.142857142857142857f
#define uXm_f32_1div9				0.111111111111111111111f
#define uXm_f32_2div3				0.666666666666666666667f
#define uXm_f32_2div7				0.285714285714285714285f
#define uXm_f32_2div9				0.222222222222222222222f
#define uXm_f32_4div3				1.333333333333333333333f

#define uXm_f32_Pi					3.14159265358979323846f
#define uXm_f32_PiHigh				3.14159265358979323846f
#define uXm_f32_HalfPi				1.57079632679489661923f
#define uXm_f32_2Pi					6.28318530717958647692f
#define uXm_f32_negPi				-3.14159265358979323846f
#define uXm_f32_negHalfPi			-1.57079632679489661923f
#define uXm_f32_neg2Pi 				-6.28318530717958647692f
#define uXm_f32_rcpPi				0.31830988618379067154f
#define uXm_f32_invPi				0.31830988618379067154f
#define uXm_f32_rcp2Pi				0.15915494309189533577f
#define uXm_f32_inv2Pi				0.15915494309189533577f
#define uXm_f32_Pidiv2				1.57079632679489661923f
#define uXm_f32_Pidiv2High			1.57079632679489661923f
#define uXm_f32_Pidiv4				0.78539816339744830962f
#define uXm_f32_Pidiv4High			0.78539816339744830962f
#define uXm_f32_Pix3div4			2.35619449019234492884f			 /* Pi*3/4 */
#define uXm_f32_sqrtPi				1.77245385090551602729f          /* sqrt(Pi)*/
#define uXm_f32_sqrt2Pi				2.50662827463100050242f          /* sqrt(2Pi)*/
#define uXm_f32_sqrt2PiHigh			2.50662827463100050242f
#define uXm_f32_rcpsqrtPi			0.56418958354775628695f          /* 1/sqrt(Pi)*/
#define uXm_f32_rcpsqrt2Pi			0.39894228040143267794f          /* 1/sqrt(2Pi)*/
#define uXm_f32_sqrtPidiv2			0.88622692545275801365f
#define uXm_f32_sqrtPidiv2High		0.88622692545275801365f
#define uXm_f32_sqrt2Pidiv2			1.25331413731550025121f
#define uXm_f32_sqrt2Pidiv2High		1.25331413731550025121f
#define uXm_f32_2divPi				0.63661977236758134308f          /* 2/(Pi)*/
#define uXm_f32_2div2Pi				0.31830988618379067154f          /* 2/(2Pi)*/
#define uXm_f32_2divsqrtPi			1.12837916709551257389f          /* 2/sqrt(Pi)*/
#define uXm_f32_2divsqrt2Pi			0.79788456080286535588f          /* 2/sqrt(2Pi)*/
#define uXm_f32_sqrt2divPi			0.45015815807855303477f          /* sqrt2/(2Pi)*/
#define uXm_f32_logPi				0.49714987269413385435f
#define uXm_f32_log2Pi				0.79817986835811504957f
#define uXm_f32_lnPi				1.14472988584940017415f
#define uXm_f32_ln2Pi				1.83787706640934548356f
#define uXm_f32_powePi				23.1406926327792690057f
#define uXm_f32_rcpowePi			0.04321391826377224977f
#define uXm_f32_powe2Pi				535.491655524764736503f
#define uXm_f32_rcpowe2Pi			0.00186744273170798881f
#define uXm_f32_cbrtPi				1.46459188756152326302f
#define uXm_f32_rcpcbrtPi			0.68278406325529568148f
#define uXm_f32_cbrt2Pi				1.84527014864402841910f
#define uXm_f32_rcpcbrt2Pi			0.54192607013928900874f

#define uXm_f32_pow2toM126			1.175494351e-38f
#define uXm_f32_pow2to126			8.507059173e37f
#define uXm_f32_NormHuge			3.402823466e38f
#define uXm_f32_pow2to23			8388608.f
#define uXm_f32_pow2to24			16777216.f
#define uXm_f32_maxI32_pow2to23		2139095039.f
#define uXm_f32_pow2to31			2147483648.f
#define uXm_f32_pow2to32			4294967296.f

#define uXm_f32_RemQuoBits			3
#define uXm_f32_RemQuoMask			(~((~0)<<uXm_f32_RemQuoBits))

/*#if defined(uXm_GPU_VERS_SET) && (uXm_GPU_VERS_SET >= 200)*/
#define uXm_f32_TrigPLoss			105615.f
/*
#elif defined(uXm_CUDA_GPU)
#define uXm_f32_TrigPLoss			48039.f
#elif defined(uXm_OPENCL_GPU)
#define uXm_f32_TrigPLoss			24019.5f
#endif*/

#define uXm_f32_DegtoRad			0.017453292519943295769f			/* Pi/180 */
#define uXm_f32_RadtoDeg			57.29577951308232087679f			/* 180/Pi */

#define uXm_f32_DegtoGrad			1.111111111111111111111f			/* Pi/2.8274333882308139146163790449516 */
#define uXm_f32_GradtoDeg			0.9f								/* 2.8274333882308139146163790449516/Pi */

#define uXm_f32_RadtoGrad			63.66197723675813430755f			/* 200/Pi */
#define uXm_f32_GradtoRad			0.015707963267948966192f			/* Pi/200 */

// Gravity 

#define uXm_f32_SunGravity			274.13f
#define uXm_f32_JupiterGravity		25.95f
#define uXm_f32_NeptuneGravity		14.07f
#define uXm_f32_SaturnGravity		11.08f
#define uXm_f32_UranusGravity		10.67f
#define uXm_f32_EarthGravity		9.81f
#define uXm_f32_VenusGravity		8.87f
#define uXm_f32_MarsGravity			3.77f
#define uXm_f32_MercuryGravity		3.59f
#define uXm_f32_MoonGravity			1.62f
#define uXm_f32_PlutoGravity		0.42f

// Length conversion

#define uXm_f32_KmtoInch			39370.08f
#define uXm_f32_KmtoFeet			3280.84f
#define uXm_f32_KmtoYards			1093.613f
#define uXm_f32_KmtoMiles			0.621371f

#define uXm_f32_MetoInch			39.37008f
#define uXm_f32_MetoFeet			3.28084f
#define uXm_f32_MetoYards			1.093613f
#define uXm_f32_MetoMiles			0.000621371f

#define uXm_f32_CmtoInch			0.3937008f
#define uXm_f32_CmtoFeet			0.0328084f
#define uXm_f32_CmtoYards			0.01093613f
#define uXm_f32_CmtoMiles			0.00000621371f

#define uXm_f32_MilltoInch			0.03937008f
#define uXm_f32_MilltoFeet			0.00328084f
#define uXm_f32_MilltoYards			0.001093613f
#define uXm_f32_MilltoMiles			0.000000621371f

#define uXm_f32_InchtoMilli			25.4f
#define uXm_f32_InchtoCm			2.54f
#define uXm_f32_InchtoMe			0.0254f
#define uXm_f32_InchtoKm			0.0000254f
#define uXm_f32_InchtoFeet			0.083333f
#define uXm_f32_InchtoYards			0.027778f
#define uXm_f32_InchtoMiles			0.000016f

#define uXm_f32_FeettoMilli			304.8f
#define uXm_f32_FeettoCm			30.48f
#define uXm_f32_FeettoMe			0.3048f
#define uXm_f32_FeettoKm			0.0003048f
#define uXm_f32_FeettoInch			12.f
#define uXm_f32_FeettoYards			0.333333f
#define uXm_f32_FeettoMiles			0.000189f

#define uXm_f32_YardstoMilli		914.4f
#define uXm_f32_YardstoCm			91.44f
#define uXm_f32_YardstoMe			0.9144f
#define uXm_f32_YardstoKm			0.0009144f
#define uXm_f32_YardstoInch			36.f
#define uXm_f32_YardstoFeet			3.f
#define uXm_f32_YardstoMiles		0.000568f

#define uXm_f32_MilestoMilli		1609344.f
#define uXm_f32_MilestoCm			160934.4f
#define uXm_f32_MilestoMe			1609.344f
#define uXm_f32_MilestoKm			1.609344f
#define uXm_f32_MilestoInch			63360.f
#define uXm_f32_MilestoFeet			5280.f
#define uXm_f32_MilestoYards		1760.f

// Speed conversion

#define uXm_f32_KmphtoMetersps		0.27777777777778f
#define uXm_f32_KmphtoKps			0.00027777777777778f
#define uXm_f32_KmphtoMeterspm		16.666666666667f
#define uXm_f32_Kmphtomilesph		0.62137119223733f
#define uXm_f32_Kmphtomilesps		0.00017260310895481f

#define uXm_f32_KmpstoMetersps		1000.f
#define uXm_f32_KmpstoKph			3600.f
#define uXm_f32_KmpstoMeterspm		60000.f
#define uXm_f32_Kmpstomph			2236.9362920544f
#define uXm_f32_Kmpstomps			0.62137119223733f

#define uXm_f32_MeterspstoKph			3.6f
#define uXm_f32_MeterspstoKps			0.001f
#define uXm_f32_MeterspstoMeterspm		60.f
#define uXm_f32_Meterspstomph			2.2369362920544f
#define uXm_f32_Meterspstomps			0.00062137119223733f

#define uXm_f32_MeterspmtoKph			0.06f
#define uXm_f32_MeterspmtoKps			1.6666666666667e-5f
#define uXm_f32_MeterspmtoMetersps		0.016666666666667f
#define uXm_f32_Meterspmtomph			0.03728227153424f
#define uXm_f32_Meterspmtomps			1.0356186537289e-5f

#define uXm_f32_MilesphtoKph			1.609344f
#define uXm_f32_MilesphpmtoKps			0.00044704f
#define uXm_f32_MilesphtoMetersps		0.44704f
#define uXm_f32_MilesphtoMeterpm		26.8224f
#define uXm_f32_Milesphtomps			0.00027777777777778f

#define uXm_f32_MilespstoKph			5793.6384f
#define uXm_f32_MilespspmtoKps			1.609344f
#define uXm_f32_MilespstoMetersps		1609.344f
#define uXm_f32_MilespstoMeterpm		96560.64f
#define uXm_f32_Milespstomph			3600.f

// Sound Speed on Air

#define uXm_f32_SoundSpeedp50c		360.35f
#define uXm_f32_SoundSpeedp45c		357.551f
#define uXm_f32_SoundSpeedp40c		354.73f
#define uXm_f32_SoundSpeedp35c		351.887f
#define uXm_f32_SoundSpeedp30c		349.02f
#define uXm_f32_SoundSpeedp25c		346.13f
#define uXm_f32_SoundSpeedp20c		343.216f
#define uXm_f32_SoundSpeedp15c		340.276f
#define uXm_f32_SoundSpeedp10c		337.311f
#define uXm_f32_SoundSpeedp5c		334.319f
#define uXm_f32_SoundSpeed0c		331.301f
#define uXm_f32_SoundSpeedn5c		328.255f
#define uXm_f32_SoundSpeedn10c		325.18f
#define uXm_f32_SoundSpeedn15c		322.076f
#define uXm_f32_SoundSpeedn20c		318.942f
#define uXm_f32_SoundSpeedn25c		315.776f
#define uXm_f32_SoundSpeedn30c		312.579f
#define uXm_f32_SoundSpeedn35c		309.348f
#define uXm_f32_SoundSpeedn40c		306.083f
#define uXm_f32_SoundSpeedn45c		302.784f
#define uXm_f32_SoundSpeedn50c		299.447f


#define uXm_f32_SCHScale		uXm_f32_1divln2		/* 1 / ln(2)*/
#define uXm_f32_THScale			uXm_f32_2divln2		/* 2 / ln(2)*/

#define uXm_f32_magicF32		8388608.f

#define uXm_f32_expest1			-6.93147182e-1f
#define uXm_f32_expest2			+2.40226462e-1f
#define uXm_f32_expest3			-5.55036440e-2f
#define uXm_f32_expest4			+9.61597636e-3f
#define uXm_f32_expest5			-1.32823968e-3f
#define uXm_f32_expest6			+1.47491097e-4f
#define uXm_f32_expest7			-1.08635004e-5f
#define uXm_f32_logest0			+1.442693f
#define uXm_f32_logest1			-0.721242f
#define uXm_f32_logest2			+0.479384f
#define uXm_f32_logest3			-0.350295f
#define uXm_f32_logest4			+0.248590f
#define uXm_f32_logest5			-0.145700f
#define uXm_f32_logest6			+0.057148f
#define uXm_f32_logest7			-0.010578f

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/* double precision constants */
#if defined(uXm_USE_DOUBLE_PRECISION)

#if defined(uXm_DOUBLE_MASKS_AS_I64)

# ifdef uXm_VC

#define uXm_D1lshift12_msk		0x0000000000001000
#define uXm_D1lshift23_msk		0x0000000000800000
#define uXm_D1lshift24_msk		0x0000000001000000
#define uXm_D1lshift27_msk		0x0000000008000000
#define uXm_D1lshift31_msk		0x0000000080000000

#define uXm_Dneg1lshift12_msk		0xfffffffffffff000
#define uXm_Dneg1lshift23_msk		0xffffffffff800000
#define uXm_Dneg1lshift24_msk		0xffffffffff000000
#define uXm_Dneg1lshift27_msk		0xfffffffff8000000

#define uXm_DTrue_msk				0xffffffffffffffff
#define uXm_DFalse_msk			0x0000000000000000

#define uXm_DMagic_msk			0x0010000000000000			/* 4503599627370496 */
#define uXm_DSign_msk				0x8000000000000000			/* -9223372036854775808 MinI64 */
#define uXm_DinvSign_msk			0x7fffffffffffffff			/* 9223372036854775807 MaxI64 */

#define uXm_DInf_msk				0x7ff0000000000000			/* 9218868437227405312 MaxI64+1-pow2^52*/
#define uXm_DinvInf_msk			0x800fffffffffffff			/* -9218868437227405313 */
#define uXm_DnegInf_msk			0xfff0000000000000			/* -4503599627370496 -pow2^52*/
#define uXm_DNaN_msk				0x7fffffffffffffff			/* 9223372036854775807 MaxI64 */
#define uXm_DQNaN_msk				0x7ff8000000000000			/* 9221120237041090576 */
#define uXm_DnegQNaN_msk			0xfff8000000000000			/* -2251799813685248 */
#define uXm_DNaNTest_msk			0x000fffffffffffff			/* 4503599627370495 */
#define uXm_DAbs_msk				0x7fffffffffffffff			/* 9223372036854775807 MaxI64 */
#define uXm_DdblMin_msk			0x0010000000000000			/* 4503599627370496 pow2^52*/
#define uXm_DdblMax_msk			0x7fefffffffffffff			/* 9218868437227405311 MaxI64-pow2^52*/
#define uXm_DNoFraction_msk		0x0010000000000000			/* 4503599627370496 pow2^52*/
#define uXm_DMinDenorm_msk		0x0000000000000001
#define uXm_DDenormLimit_msk		0x0010000000000000			/* 4503599627370496 pow2^52*/
#define uXm_DMinNormal_msk		0x0010000000000000			/* 4503599627370496 pow2^52*/
#define uXm_DMaxNormal_msk		0x7fefffffffffffff			/* 9218868437227405311 MaxI64-pow2^52*/

//#define uXm_DExpBias_msk			0x5540000000000000			/* 6142909891733356544 exponent bias */
//#define uXm_DExpM1div3_msk		0x0005555500000000			/* 1501198444134400 exponent multiplier for 1/3 */

#define uXm_DDecDig_msk			0x000000000000000f			/* 15 */					/* # of double decimal digits of precision */
#define uXm_DnegDecDig_msk		0xfffffffffffffff1			/* -15 */					/* # neg of double decimal digits of precision */
#define uXm_DEps_msk				0x3cb0000000000000			/* 2.2204460492503131e-016 */	/* smallest such that 1.0+DBL_EPSILON != 1.0 */
#define uXm_DNormEps_msk			0x1a90991a9bfa58c8			/* 1e-180 */
#define uXm_DGuard_msk			0x0000000000000000
#define uXm_DMantPow2_msk			0x0010000000000000			/* 4503599627370496 */					/* # pow2^52 */
#define uXm_DMaxMantPow2_msk		0x7fefffffffffffff			/* 9218868437227405311 MaxI64-pow2^52*/
#define uXm_DMantDig_msk			0x0000000000000035			/* 53 */						/* # of bits in double mantissa */
#define uXm_DMant_msk				0x0000000000000034			/* 52 */						/* # stable of double bits in mantissa */
#define uXm_DnegMant_msk			0xffffffffffffffcc			/* -52 */						/* # neg stable of double bits in mantissa */
#define uXm_DMax_msk				0x7fefffffffffffff			/* 1.7976931348623158e+308 */	/* maximum possible double value 9218868437227405311 MaxI64-pow2^52 */
#define uXm_DMin_msk				0x0010000000000000			/* 2.2250738585072014e-308 4503599627370496 pow2^52*/			/* min positive double value */
#define uXm_DMaxExp_msk			0x0000000000000400			/* 1024 */				/* stable max double binary exponent */
#define uXm_DExp_msk				0x00000000000003ff			/* 1023 */				/* stable double binary exponent */
#define uXm_DnegExp_msk			0xfffffffffffffc01			/* -1023 */				/* neg stable double binary exponent */
#define uXm_DSubnormalExp_msk		0xfffffffffffffc02			/* -1022 */				/* stable subnormal min double binary exponent */
#define uXm_DMinExp_msk			0xfffffffffffffc03			/* -1021 */				/* min double binary exponent */
#define uXm_DMaxDecExp_msk		0x0000000000000134			/* 308 */						/* max double decimal exponent */
#define uXm_DnegMaxDecExp_msk		0xfffffffffffffecc			/* -308 */						/* neg max double decimal exponent */
#define uXm_DminDecExp_msk		0xfffffffffffffecd			/* -307 */						/*  min double decimal exponent */
#define uXm_DExpField_msk			0xfff0000000000000			/* -4503599627370496 */			/* double exponent field */
#define uXm_DMantField_msk		0x000fffffffffffff			/* 4503599627370495 */			/* double mantissa field */
#define uXm_DNorm_msk				0x0000000000000000
#define uXm_DRadix_msk			0x0000000000000002			/* 2 */							/* double exponent radix */
#define uXm_DRounds_msk			0x0000000000000001			/* 1 */							/* addition rounding: near */
#define uXm_DSubDec_msk			0x000000000000000a			/* 10 */						/* double rounded to decimal and back */
#define uXm_DHigh_msk				0x5f22087c1aeb65dc			/* 1.8446726e+150 */
#define uXm_DSmallNorm_msk		0x0010000000000000			/* 2.2250738585072014e-308 */         /* double smallest normal number */

#define uXm_DHalfminusEps_msk		0x3fdffffffffffffc			/* 4602678819172646908 */

//#define uXm_DmaxExp_msk			0x0000007f			/* 127 */						/* stable max float binary exponent */
//#define uXm_DminExp_msk			0xffffff82			/* -126 */						/* stable min float binary exponent */

//#define uXm_DExpSign_msk			0x00000080			/* 128 uXm_DMaxExp_msk */						/* stable sign float binary exponent */

#define uXm_DByte_msk				0x00000000000000ff				/* 255 */
#define uXm_D4Low_msk				0x0fffffffffffffff				/* 1152921504606846975 */
#define uXm_D4High_msk			0xfffffffffffffff0				/* -16 */
#define uXm_Dflip4_msk			0x0000000000000008				/* 8 */
#define uXm_D8Low_msk				0x00ffffffffffffff				/* 72057594037927935 */
#define uXm_D8High_msk			0xffffffffffffff00				/* -256 */
#define uXm_Dflip8_msk			0x0000000000000080				/* 128 */
#define uXm_D16Low_msk			0x0000ffffffffffff				/* 281474976710655 */
#define uXm_D16High_msk			0xffffffffffff0000				/* -65536 */
#define uXm_Dflip16_msk			0x0000000000008000				/* 32768 */
#define uXm_D24Low_msk			0x000000ffffffffff				/* 1099511627775 */
#define uXm_D24High_msk			0xffffffffff000000				/* -16777216 */
#define uXm_Dflip24_msk			0x0000000000800000				/* 8388608 */
#define uXm_D32Low_msk			0x00000000ffffffff				/* 4294967295 */
#define uXm_D32High_msk			0xffffffff00000000				/* -4294967296 */
#define uXm_Dflip32_msk			0x0000000080000000				/* 2147483648 */
#define uXm_D40Low_msk			0x0000000000ffffff				/* 16777215 */
#define uXm_D40High_msk			0xffffff0000000000				/* -1099511627776 */
#define uXm_Dflip40_msk			0x0000008000000000				/* 549755813888 */
#define uXm_D48Low_msk			0x000000000000ffff				/* 65535 */
#define uXm_D48High_msk			0xffff000000000000				/* -281474976710656 */
#define uXm_Dflip48_msk			0x0000800000000000				/* 140737488355328 */
#define uXm_D56Low_msk			0x00000000000000ff				/* 255 */
#define uXm_D56High_msk			0xff00000000000000				/* -72057594037927936 */
#define uXm_Dflip56_msk			0x0080000000000000				/* 36028797018963968 */
#define uXm_D60Low_msk			0x000000000000000f				/* 15 */
#define uXm_D60High_msk			0xf000000000000000				/* -1152921504606846976 */
#define uXm_Dflip60_msk			0x0800000000000000				/* 576460752303423488 */
#define uXm_D64Low_msk			0x0000000000000000				/* 0 */
#define uXm_D64High_msk			0x0000000000000000				/* 0 */
#define uXm_Dflip64_msk			0x8000000000000000				/* -9223372036854775808 */

#define uXm_D0_msk				0x0000000000000000				/* 0.0 */
#define uXm_D0d5_msk				0x3fe0000000000000				/* 0.5 */
#define uXm_D1_msk				0x3ff0000000000000				/* 1.0 */

#define uXm_D253_msk				0x00000000000000fd

#define uXm_Dneg0_msk				0x8000000000000000			/* -9223372036854775808 MinI64 */
#define uXm_Dneg1_msk				0xbff0000000000000			/* -1 */

/* RESEARCH THIS in the DirectXMath for the double types
#define uXm_Dbin128_msk			(0x43000000)		/ * 1124073472 * /
#define uXm_Dbinneg150_msk			(0xc3160000)		/ * -1021968384 * /*/

#define uXm_DmaxRand_msk				0x0000000000007fff

#define uXm_DmaxI8_msk				0x000000000000007f				/*127*/
#define uXm_DminI8_msk				0xffffffffffffff80				/*-128*/
#define uXm_DmaxU8_msk				0x00000000000000ff				/*255*/

#define uXm_DmaxI16_msk				0x0000000000007fff				/*32767*/
#define uXm_DminI16_msk				0xffffffffffff8000				/*-32768*/
#define uXm_DmaxU16_msk				0x000000000000ffff				/*65535*/

#define uXm_DmaxI32_msk				0x000000007fffffff				/*2147483647*/
#define uXm_DminI32_msk				0xffffffff80000000				/*-2147483648*/
#define uXm_DmaxU32_msk				0x00000000ffffffff				/*4294967295*/

#define uXm_DmaxI64_msk				0x7fffffffffffffff				/*9223372036854775807*/
#define uXm_DminI64_msk				0x8000000000000000				/*-9223372036854775808*/
#define uXm_DmaxU64_msk				0xffffffffffffffff				/*18446744073709551615*/

#define uXm_DmaxI8xU8_msk				0x0000000000008000				/*32768*/						/*128.0*256.0*/
#define uXm_DminI8xU8_msk				0xffffffffffff8000				/*-32768*/						/*-128.0*256.0*/
#define uXm_DmaxI8xU16_msk			0x0000000000800000				/*8388608*/						/*128.0*65536.0*/
#define uXm_DminI8xU16_msk			0xffffffffff800000				/*-8388608*/					/*-128.0*65536.0*/
#define uXm_DmaxI16xU16_msk			0x0000000080000000				/*2147483648*/					/*32768.0*65536.0*/
#define uXm_DminI16xU16_msk			0xffffffff80000000				/*-2147483648*/					/*-32768.0*65536.0*/

#define uXm_DfixUnsigned_msk			0x0000000080000000				/*2147483648*/					/*32768.0*65536.0*/
#define uXm_DfixmaxI32_msk			0x000000007fffff80				/*2147483520*/					/*65536.0*32768.0-128.0*/
#define uXm_DfixmaxU32_msk			0x00000000ffffff00				/*4294967040*/					/*65536.0*65536.0-256.0*/

#define uXm_DfixUnsigned64_msk		0x8000000000000000	// (0x0000000080000000 * 0x0000000100000000) /*9223372036854775808*/	/*2147483648.0*4294967296.0*/
#define uXm_DfixmaxI64_msk			0x7ff0bdbffffffc00	// (0x0000000100000000 * 0x0000000080000000 + 0xfffffffffffffc00)	/*9219077069558774784*/	/*4294967296.0*2147483648.0-1024.0*/
#define uXm_DfixmaxU64_msk			0xfffffffffffff800	// (0x0000000100000000 * 0x0000000100000000 + 0xfffffffffffff800)	/*18446744073709549568*/	/*4294967296.0*4294967296.0-2048.0*/
# else

#define uXm_DMagic_msk				0x0000000043300000ull			/* 1127219200 */
#define uXm_DSign_msk					0x8000000000000000ull			/* -9223372036854775808 MinI64 */
#define uXm_DinvSign_msk				0x7fffffffffffffffull			/* 9223372036854775807 MaxI64 */

#define uXm_Dneg1_msk					0xffffffffffffffffull			/* -1 */
#define uXm_Dneg0_msk					0x8000000000000000ull			/* -9223372036854775808 MinI64 */
#define uXm_D0_msk					0x0000000000000000ull

#define uXm_DByte_msk					0x00000000000000ffull				/* 255 */
#define uXm_D4Low_msk					0x0fffffffffffffffull				/* 1152921504606846975 */
#define uXm_D4High_msk				0xfffffffffffffff0ull				/* -16 */
#define uXm_Dflip4_msk				0x0000000000000008ull				/* 8 */
#define uXm_D8Low_msk					0x00ffffffffffffffull				/* 72057594037927935 */
#define uXm_D8High_msk				0xffffffffffffff00ull				/* -256 */
#define uXm_Dflip8_msk				0x0000000000000080ull				/* 128 */
#define uXm_D16Low_msk				0x0000ffffffffffffull				/* 281474976710655 */
#define uXm_D16High_msk				0xffffffffffff0000ull				/* -65536 */
#define uXm_Dflip16_msk				0x0000000000008000ull				/* 32768 */
#define uXm_D24Low_msk				0x000000ffffffffffull				/* 1099511627775 */
#define uXm_D24High_msk				0xffffffffff000000ull				/* -16777216 */
#define uXm_Dflip24_msk				0x0000000000800000ull				/* 8388608 */
#define uXm_D32Low_msk				0x00000000ffffffffull				/* 4294967295 */
#define uXm_D32High_msk				0xffffffff00000000ull				/* -4294967296 */
#define uXm_Dflip32_msk				0x0000000080000000ull				/* 2147483648 */
#define uXm_D40Low_msk				0x0000000000ffffffull				/* 16777215 */
#define uXm_D40High_msk				0xffffff0000000000ull				/* -1099511627776 */
#define uXm_Dflip40_msk				0x0000008000000000ull				/* 549755813888 */
#define uXm_D48Low_msk				0x000000000000ffffull				/* 65535 */
#define uXm_D48High_msk				0xffff000000000000ull				/* -281474976710656 */
#define uXm_Dflip48_msk				0x0000800000000000ull				/* 140737488355328 */
#define uXm_D56Low_msk				0x00000000000000ffull				/* 255 */
#define uXm_D56High_msk				0xff00000000000000ull				/* -72057594037927936 */
#define uXm_Dflip56_msk				0x0080000000000000ull				/* 36028797018963968 */
#define uXm_D60Low_msk				0x000000000000000full				/* 15 */
#define uXm_D60High_msk				0xf000000000000000ull				/* -1152921504606846976 */
#define uXm_Dflip60_msk				0x0800000000000000ull				/* 576460752303423488 */
#define uXm_D64Low_msk				0x0000000000000000ull				/* 0 */
#define uXm_D64High_msk				0x0000000000000000ull				/* 0 */
#define uXm_Dflip64_msk				0x8000000000000000ull				/* -9223372036854775808 */

#define uXm_DInf_msk					0x7ff0000000000000ull			/* 9218868437227405312 MaxI64+1-pow2^52*/
#define uXm_DinvInf_msk				0x800fffffffffffffull			/* -9218868437227405313 */
#define uXm_DnegInf_msk				0xfff0000000000000ull			/* -4503599627370496 -pow2^52*/
#define uXm_DNaN_msk					0x7fffffffffffffffull			/* 9223372036854775807 MaxI64 */
#define uXm_DQNaN_msk					0x7ff8000000000000ull			/* 9221120237041090576 */
#define uXm_DnegQNaN_msk				0xfff8000000000000ull			/* -2251799813685248 */
#define uXm_DNaNTest_msk				0x000fffffffffffffull			/* 4503599627370495 */
#define uXm_DAbs_msk					0x7fffffffffffffffull			/* 9223372036854775807 MaxI64 */
#define uXm_DDblMin_msk				0x0010000000000000ull			/* 4503599627370496 pow2^52*/
#define uXm_DDblMax_msk				0x7fefffffffffffffull			/* 9218868437227405311 MaxI64-pow2^52*/
#define uXm_DNegZero_msk				0x8000000000000000ull			/* -9223372036854775808 MinI64 */
#define uXm_DMinDenorm_msk			0x0000000000000001ull
#define uXm_DMinNormal_msk			0x0010000000000000ull			/* 4503599627370496 pow2^52*/
#define uXm_DMaxNormal_msk			0x7fefffffffffffffull			/* 9218868437227405311 MaxI64-pow2^52*/
#define uXm_DExpBias_msk				0x5540000000000000ull			/* 6142909891733356544 exponent bias */
#define uXm_DExpM1div3_msk			0x0005555500000000ull			/* 1501198444134400 exponent multiplier for 1/3 */

/* RESEARCH THIS in the DirectXMath for the double types
#define uXm_Dbin128_msk			(0x43000000)		/ * 1124073472 * /
#define uXm_Dbinneg150_msk			(0xc3160000)		/ * -1021968384 * /*/

#define uXm_DDecDig_msk				0x000000000000000full			/* 15 */						/* # of double decimal digits of precision */
#define uXm_DnegDecDig_msk			0xfffffffffffffff1ull			/* -15 */						/* # neg of double decimal digits of precision */
#define uXm_DMant_msk					0x0000000000000034ull			/* 52 */						/* # stable of double bits in mantissa */
#define uXm_DnegMant_msk				0xffffffffffffffccull			/* -52 */						/* # neg stable of double bits in mantissa */
#define uXm_DmaxDecDigExp_msk			0x0000000000000134ull			/* 308 */						/* max double decimal exponent */
#define uXm_DnegmaxDecDigExp_msk		0xfffffffffffffeccull			/* -308 */						/* max double decimal exponent */
#define uXm_DmaxExp_msk				0x00000000000003ffull			/* 1023 */						/* stable max double binary exponent */
#define uXm_DminExp_msk				0xfffffffffffffc02ull			/* -1022 */						/* stable min double binary exponent */
#define uXm_DRadix_msk				0x0000000000000002ull			/* 2 */							/* double exponent radix */

#define uXm_D253_msk					0x00000000000000fdull

#define uXm_DmaxRand_msk				0x0000000000007fffull

#define uXm_DmaxI8_msk				0x000000000000007full				/*127*/
#define uXm_DminI8_msk				0xffffffffffffff80ull				/*-128*/
#define uXm_DmaxU8_msk				0x00000000000000ffull				/*255*/

#define uXm_DmaxI16_msk				0x0000000000007fffull				/*32767*/
#define uXm_DminI16_msk				0xffffffffffff8000ull				/*-32768*/
#define uXm_DmaxU16_msk				0x000000000000ffffull				/*65535*/

#define uXm_DmaxI32_msk				0x000000007fffffffull				/*2147483647*/
#define uXm_DminI32_msk				0xffffffff80000000ull				/*-2147483648*/
#define uXm_DmaxU32_msk				0x00000000ffffffffull				/*4294967295*/

#define uXm_DmaxI64_msk				0x7fffffffffffffffull				/*9223372036854775807*/
#define uXm_DminI64_msk				0x8000000000000000ull				/*-9223372036854775808*/
#define uXm_DmaxU64_msk				0xffffffffffffffffull				/*18446744073709551615*/

#define uXm_DmaxI8xU8_msk				0x0000000000008000ull				/*32768*/						/*128.0*256.0*/
#define uXm_DminI8xU8_msk				0xffffffffffff8000ull				/*-32768*/						/*-128.0*256.0*/
#define uXm_DmaxI8xU16_msk			0x0000000000800000ull				/*8388608*/						/*128.0*65536.0*/
#define uXm_DminI8xU16_msk			0xffffffffff800000ull				/*-8388608*/					/*-128.0*65536.0*/
#define uXm_DmaxI16xU16_msk			0x0000000080000000ull				/*2147483648*/					/*32768.0*65536.0*/
#define uXm_DminI16xU16_msk			0xffffffff80000000ull				/*-2147483648*/					/*-32768.0*65536.0*/

#define uXm_DfixUnsigned_msk			0x0000000080000000ull				/*2147483648*/					/*32768.0*65536.0*/
#define uXm_DfixmaxI32_msk			0x000000007fffff80ull				/*2147483520*/					/*65536.0*32768.0-128.0*/
#define uXm_DfixmaxU32_msk			0x00000000ffffff00ull				/*4294967040*/					/*65536.0*65536.0-256.0*/

#define uXm_DfixUnsigned64_msk		0x8000000000000000ull		// (0x0000000080000000ull * 0x0000000100000000ull)							/*9223372036854775808*/			/*2147483648.0*4294967296.0*/
#define uXm_DfixmaxI64_msk			0x7ff0bdbffffffc00ull		// (0x0000000100000000ull * 0x0000000080000000ull + 0xfffffffffffffc00ull)	/*9219077069558774784*/			/*4294967296.0*2147483648.0-1024.0*/
#define uXm_DfixmaxU64_msk			0xfffffffffffff800ull		// (0x0000000100000000ull * 0x0000000100000000ull + 0xfffffffffffff800ull)	/*18446744073709549568*/		/*4294967296.0*4294967296.0-2048.0*/
#endif

#else

#define uXm_DMagic_msk				(0x00000000, 0x43300000)		/* 1127219200 */
#define uXm_DSign_msk					(0x80000000, 0x00000000)		/* -9223372036854775808 MinI64 */
#define uXm_DinvSign_msk				(0x7fffffff, 0xffffffff)		/* 9223372036854775807 MaxI64 */

#define uXm_Dneg1_msk					(0xffffffff, 0xffffffff)		/* -1 */
#define uXm_Dneg0_msk					(0x80000000, 0x00000000)		/* -9223372036854775808 MinI64 */
#define uXm_D0_msk					(0x00000000, 0x00000000)

#define uXm_DByte_msk					(0x00000000, 0x000000ff)				/* 255 */
#define uXm_D4Low_msk					(0x0fffffff, 0xffffffff)				/* 1152921504606846975 */
#define uXm_D4High_msk				(0xffffffff, 0xfffffff0)				/* -16 */
#define uXm_Dflip4_msk				(0x00000000, 0x00000008)				/* 8 */
#define uXm_D8Low_msk					(0x00ffffff, 0xffffffff)				/* 72057594037927935 */
#define uXm_D8High_msk				(0xffffffff, 0xffffff00)				/* -256 */
#define uXm_Dflip8_msk				(0x00000000, 0x00000080)				/* 128 */
#define uXm_D16Low_msk				(0x0000ffff, 0xffffffff)				/* 281474976710655 */
#define uXm_D16High_msk				(0xffffffff, 0xffff0000)				/* -65536 */
#define uXm_Dflip16_msk				(0x00000000, 0x00008000)				/* 32768 */
#define uXm_D24Low_msk				(0x000000ff, 0xffffffff)				/* 1099511627775 */
#define uXm_D24High_msk				(0xffffffff, 0xff000000)				/* -16777216 */
#define uXm_Dflip24_msk				(0x00000000, 0x00800000)				/* 8388608 */
#define uXm_D32Low_msk				(0x00000000, 0xffffffff)				/* 4294967295 */
#define uXm_D32High_msk				(0xffffffff, 0x00000000)				/* -4294967296 */
#define uXm_Dflip32_msk				(0x00000000, 0x80000000)				/* 2147483648 */
#define uXm_D40Low_msk				(0x00000000, 0x00ffffff)				/* 16777215 */
#define uXm_D40High_msk				(0xffffff00, 0x00000000)				/* -1099511627776 */
#define uXm_Dflip40_msk				(0x00000080, 0x00000000)				/* 549755813888 */
#define uXm_D48Low_msk				(0x00000000, 0x0000ffff)				/* 65535 */
#define uXm_D48High_msk				(0xffff0000, 0x00000000)				/* -281474976710656 */
#define uXm_Dflip48_msk				(0x00008000, 0x00000000)				/* 140737488355328 */
#define uXm_D56Low_msk				(0x00000000, 0x000000ff)				/* 255 */
#define uXm_D56High_msk				(0xff000000, 0x00000000)				/* -72057594037927936 */
#define uXm_Dflip56_msk				(0x00800000, 0x00000000)				/* 36028797018963968 */
#define uXm_D60Low_msk				(0x00000000, 0x0000000f)				/* 15 */
#define uXm_D60High_msk				(0xf0000000, 0x00000000)				/* -1152921504606846976 */
#define uXm_Dflip60_msk				(0x08000000, 0x00000000)				/* 576460752303423488 */
#define uXm_D64Low_msk				(0x00000000, 0x00000000)				/* 0 */
#define uXm_D64High_msk				(0x00000000, 0x00000000)				/* 0 */
#define uXm_Dflip64_msk				(0x80000000, 0x00000000)				/* -9223372036854775808 */

#define uXm_DInf_msk					(0x7ff00000, 0x00000000)		/* 9218868437227405312 MaxI64+1-pow2^52*/
#define uXm_DinvInf_msk				(0x800fffff, 0xffffffff)		/* -9218868437227405313 */
#define uXm_DnegInf_msk				(0xfff00000, 0x00000000)		/* -4503599627370496 -pow2^52*/
#define uXm_DNaN_msk					(0x7fffffff, 0xffffffff)		/* 9223372036854775807 MaxI64 */
#define uXm_DQNaN_msk					(0x7ff80000, 0x00000000)		/* 9221120237041090576 */
#define uXm_DnegQNaN_msk				(0xfff80000, 0x00000000)		/* -2251799813685248 */
#define uXm_DNaNTest_msk				(0x000fffff, 0xffffffff)		/* 4503599627370495 */
#define uXm_DAbs_msk					(0x7fffffff, 0xffffffff)		/* 9223372036854775807 MaxI64 */
#define uXm_DDblMin_msk				(0x00100000, 0x00000000)		/* 4503599627370496 pow2^52*/
#define uXm_DDblMax_msk				(0x7fefffff, 0xffffffff)		/* 9218868437227405311 MaxI64-pow2^52*/
#define uXm_DNegZero_msk				(0x80000000, 0x00000000)		/* -9223372036854775808  MinI64 */
#define uXm_DMinDenorm_msk			(0x00000000, 0x00000001)
#define uXm_DMinNormal_msk			(0x00100000, 0x00000000)		/* 4503599627370496 pow2^52*/
#define uXm_DMaxNormal_msk			(0x7fefffff, 0xffffffff)		/* 9218868437227405311 MaxI64-pow2^52*/
#define uXm_DExpBias_msk				(0x55400000, 0x00000000)		/* 6142909891733356544 exponent bias */
#define uXm_DExpM1div3_msk			(0x00055555, 0x00000000)		/* 1501198444134400 exponent multiplier for 1/3 */

/* RESEARCH THIS in the DirectXMath for the double types
#define uXm_Dbin128_msk			(0x43000000)		/ * 1124073472 * /
#define uXm_Dbinneg150_msk			(0xc3160000)		/ * -1021968384 * /*/

#define uXm_DDecDig_msk				(0x00000000, 0x0000000f)			/* 15 */						/* # of double decimal digits of precision */
#define uXm_DnegDecDig_msk			(0xffffffff, 0xfffffff1)			/* -15 */						/* # neg of double decimal digits of precision */
#define uXm_DMant_msk					(0x00000000, 0x00000034)			/* 52 */						/* # stable of double bits in mantissa */
#define uXm_DnegMant_msk				(0xffffffff, 0xffffffcc)			/* -52 */						/* # neg stable of double bits in mantissa */
#define uXm_DmaxDecDigExp_msk			(0x00000000, 0x00000134)			/* 308 */						/* max double decimal exponent */
#define uXm_DnegmaxDecDigExp_msk		(0xffffffff, 0xfffffecc)			/* -308 */						/* max double decimal exponent */
#define uXm_DmaxExp_msk				(0x00000000, 0x000003ff)			/* 1023 */						/* stable max double binary exponent */
#define uXm_DminExp_msk				(0xffffffff, 0xfffffc02)			/* -1022 */						/* stable min double binary exponent */
#define uXm_DRadix_msk				(0x00000000, 0x00000002)			/* 2 */							/* double exponent radix */

#define uXm_D253_msk					(0x00000000, 0x000000fd)

#define uXm_DmaxRand_msk				(0x00000000, 0x00007fff)

#define uXm_DmaxI8_msk				(0x00000000, 0x0000007f)				/*127*/
#define uXm_DminI8_msk				(0xffffffff, 0xffffff80)				/*-128*/
#define uXm_DmaxU8_msk				(0x00000000, 0x000000ff)				/*255*/

#define uXm_DmaxI16_msk				(0x00000000, 0x00007fff)				/*32767*/
#define uXm_DminI16_msk				(0xffffffff, 0xffff8000)				/*-32768*/
#define uXm_DmaxU16_msk				(0x00000000, 0x0000ffff)				/*65535*/

#define uXm_DmaxI32_msk				(0x00000000, 0x7fffffff)				/*2147483647*/
#define uXm_DminI32_msk				(0xffffffff, 0x80000000)				/*-2147483648*/
#define uXm_DmaxU32_msk				(0x00000000, 0xffffffff)				/*4294967295*/

#define uXm_DmaxI64_msk				(0x7fffffff, 0xffffffff)				/*9223372036854775807*/
#define uXm_DminI64_msk				(0x80000000, 0x00000000)				/*-9223372036854775808*/
#define uXm_DmaxU64_msk				(0xffffffff, 0xffffffff)				/*18446744073709551615*/

#define uXm_DmaxI8xU8_msk				(0x00000000, 0x00008000)				/*32768*/						/*128.0*256.0*/
#define uXm_DminI8xU8_msk				(0xffffffff, 0xffff8000)				/*-32768*/						/*-128.0*256.0*/
#define uXm_DmaxI8xU16_msk			(0x00000000, 0x00800000)				/*8388608*/						/*128.0*65536.0*/
#define uXm_DminI8xU16_msk			(0xffffffff, 0xff800000)				/*-8388608*/					/*-128.0*65536.0*/
#define uXm_DmaxI16xU16_msk			(0x00000000, 0x80000000)				/*2147483648*/					/*32768.0*65536.0*/
#define uXm_DminI16xU16_msk			(0xffffffff, 0x80000000)				/*-2147483648*/					/*-32768.0*65536.0*/

#define uXm_DfixUnsigned_msk			(0x00000000, 0x80000000)				/*2147483648*/					/*32768.0*65536.0*/
#define uXm_DfixmaxI32_msk			(0x00000000, 0x7fffff80)				/*2147483520*/					/*65536.0*32768.0-128.0*/
#define uXm_DfixmaxU32_msk			(0x00000000, 0xffffff00)				/*4294967040*/					/*65536.0*65536.0-256.0*/

#define uXm_DfixUnsigned64_msk		((0x00000000, 0x80000000)*(0x00000001, 0x00000000))								/*9223372036854775808*/			/*2147483648.0*4294967296.0*/
#define uXm_DfixmaxI64_msk			((0x00000001, 0x00000000)*(0x00000000, 0x80000000)+(0xffffffff, 0xfffffc00))	/*9219077069558774784*/			/*4294967296.0*2147483648.0-1024.0*/
#define uXm_DfixmaxU64_msk			((0x00000001, 0x00000000)*(0x00000001, 0x00000000)+(0xffffffff, 0xfffff800))	/*18446744073709549568*/		/*4294967296.0*4294967296.0-2048.0*/

#endif 

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// int

// to use this and the masks above you have to use one int64 or tow int32

#define uXm_DMagic_int			1127219200						/* 1127219200 */
#define uXm_DSign_int				-9223372036854775808			/* -9223372036854775808 MinI64 */
#define uXm_DinvSign_int			9223372036854775807				/* 9223372036854775807 MaxI64 */

#define uXm_Dneg1_int				-1								/* -1 */
#define uXm_Dneg0_int				-9223372036854775808			/* -9223372036854775808 MinI64 */
#define uXm_D0_int					0

#define uXm_DByte_int				255								/* 255 */
#define uXm_D4Low_int				1152921504606846975				/* 1152921504606846975 */
#define uXm_D4High_int			-16								/* -16 */
#define uXm_Dflip4_int			8								/* 8 */
#define uXm_D8Low_int				72057594037927935				/* 72057594037927935 */
#define uXm_D8High_int			-256							/* -256 */
#define uXm_Dflip8_int			128								/* 128 */
#define uXm_D16Low_int			281474976710655					/* 281474976710655 */
#define uXm_D16High_int			-65536							/* -65536 */
#define uXm_Dflip16_int			32768							/* 32768 */
#define uXm_D24Low_int			1099511627775					/* 1099511627775 */
#define uXm_D24High_int			-16777216						/* -16777216 */
#define uXm_Dflip24_int			8388608							/* 8388608 */
#define uXm_D32Low_int			4294967295						/* 4294967295 */
#define uXm_D32High_int			-4294967296						/* -4294967296 */
#define uXm_Dflip32_int			2147483648						/* 2147483648 */
#define uXm_D40Low_int			16777215						/* 16777215 */
#define uXm_D40High_int			-1099511627776					/* -1099511627776 */
#define uXm_Dflip40_int			549755813888					/* 549755813888 */
#define uXm_D48Low_int			65535							/* 65535 */
#define uXm_D48High_int			-281474976710656				/* -281474976710656 */
#define uXm_Dflip48_int			140737488355328					/* 140737488355328 */
#define uXm_D56Low_int			255								/* 255 */
#define uXm_D56High_int			-72057594037927936				/* -72057594037927936 */
#define uXm_Dflip56_int			36028797018963968				/* 36028797018963968 */
#define uXm_D60Low_int			15								/* 15 */
#define uXm_D60High_int			-1152921504606846976			/* -1152921504606846976 */
#define uXm_Dflip60_int			576460752303423488				/* 576460752303423488 */
#define uXm_D64Low_int			0								/* 0 */
#define uXm_D64High_int			0								/* 0 */
#define uXm_Dflip64_int			-9223372036854775808			/* -9223372036854775808 */


#define uXm_DInf_int				9218868437227405312				/* 9218868437227405312 MaxI64+1-pow2^52*/
#define uXm_DinvInf_int			-9218868437227405313			/* -9218868437227405313 */
#define uXm_DnegInf_int			-4503599627370496				/* -4503599627370496 -pow2^52*/
#define uXm_DNaN_int				9223372036854775807				/* 9223372036854775807 MaxI64 */
#define uXm_DQNaN_int				9221120237041090576				/* 9221120237041090576 */
#define uXm_DnegQNaN_int			-2251799813685248				/* -2251799813685248 */
#define uXm_DNaNTest_int			4503599627370495				/* 4503599627370495 */
#define uXm_DAbs_int				9223372036854775807				/* 9223372036854775807 MaxI64 */
#define uXm_DdblMin_int			4503599627370496				/* 4503599627370496 pow2^52*/
#define uXm_DdblMax_int			9218868437227405311				/* 9218868437227405311 MaxI64-pow2^52*/
#define uXm_DNegZero_int			9223372036854775808				/* -9223372036854775808  MinI64 */
#define uXm_DMinDenorm_int		1
#define uXm_DMinNormal_int		4503599627370496				/* 4503599627370496 pow2^52*/
#define uXm_DMaxNormal_int		9218868437227405311				/* 9218868437227405311 MaxI64-pow2^52*/
#define uXm_DExpBias_int			6142909891733356544				/* 6142909891733356544 exponent bias */
#define uXm_DExpM1div3_int		1501198444134400				/* 1501198444134400 exponent multiplier for 1/3 */


#define uXm_DDecDig_int				15					/* 15 */						/* # of double decimal digits of precision */
#define uXm_DnegDecDig_int			-15					/* -15 */						/* # neg of double decimal digits of precision */
#define uXm_DMant_int					52					/* 52 */						/* # stable of double bits in mantissa */
#define uXm_DnegMant_int				-52					/* -52 */						/* # neg stable of double bits in mantissa */
#define uXm_DmaxDecDigExp_int			308					/* 308 */						/* max double decimal exponent */
#define uXm_DnegmaxDecDigExp_int		-308				/* -308 */						/* neg max double decimal exponent */
#define uXm_DmaxExp_int				1023				/* 1023 */						/* stable max double binary exponent */
#define uXm_DminExp_int				-1022				/* -1022 */						/* stable min double binary exponent */
#define uXm_DRadix_int				2					/* 2 */							/* double exponent radix */

#define uXm_D253_int					253

#define uXm_DmaxRand_int				32767

#define uXm_DmaxI8_int				127
#define uXm_DminI8_int				-128
#define uXm_DmaxU8_int				255

#define uXm_DmaxI16_int				32767
#define uXm_DminI16_int				-32768
#define uXm_DmaxU16_int				65535

#define uXm_DmaxI32_int				2147483647
#define uXm_DminI32_int				-2147483648
#define uXm_DmaxU32_int				4294967295

#define uXm_DmaxI64_int				9223372036854775807
#define uXm_DminI64_int				-9223372036854775808
#define uXm_DmaxU64_int				18446744073709551615

#define uXm_DmaxI8xU8_int				32768						/*128.0*256.0*/
#define uXm_DminI8xU8_int				-32768						/*-128.0*256.0*/
#define uXm_DmaxI8xU16_int			8388608						/*128.0*65536.0*/
#define uXm_DminI8xU16_int			-8388608					/*-128.0*65536.0*/
#define uXm_DmaxI16xU16_int			2147483648					/*32768.0*65536.0*/
#define uXm_DminI16xU16_int			-2147483648					/*-32768.0*65536.0*/
#define uXm_DfixUnsigned_int			2147483648					/*32768.0*65536.0*/
#define uXm_DfixmaxI32_int			2147483520					/*65536.0*32768.0-128.0*/
#define uXm_DfixmaxU32_int			4294967040					/*65536.0*65536.0-256.0*/
#define uXm_DfixUnsigned64_int		9223372036854775808			/*2147483648.0*4294967296.0*/
#define uXm_DfixmaxI64_int			9219077069558774784			/*4294967296.0*2147483648.0-1024.0*/
#define uXm_DfixmaxU64_int			9223372036854773760			/*4294967296.0*2147483648.0-2048.0*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// double

#define uXm_DMagic				1127219200.0						/* 1127219200 */
#define uXm_DSign				-9223372036854775808.0				/* -9223372036854775808 MinI64 */
#define uXm_DinvSign				9223372036854775807.0				/* 9223372036854775807 MaxI64 */

#define uXm_Dneg1				-1.0								/* -1 */
#define uXm_Dneg0				-9223372036854775808.0				/* -9223372036854775808 MinI64 */
#define uXm_D0					0.0

#define uXm_DByte				255.0								/* 255 */
#define uXm_D4Low				1152921504606846975.0				/* 1152921504606846975 */
#define uXm_D4High				-16.0								/* -16 */
#define uXm_Dflip4				8.0									/* 8 */
#define uXm_D8Low				72057594037927935.0					/* 72057594037927935 */
#define uXm_D8High				-256.0								/* -256 */
#define uXm_Dflip8				128.0								/* 128 */
#define uXm_D16Low				281474976710655.0					/* 281474976710655 */
#define uXm_D16High				-65536.0							/* -65536 */
#define uXm_Dflip16				32768.0								/* 32768 */
#define uXm_D24Low				1099511627775.0						/* 1099511627775 */
#define uXm_D24High				-16777216.0							/* -16777216 */
#define uXm_Dflip24				8388608.0							/* 8388608 */
#define uXm_D32Low				4294967295.0						/* 4294967295 */
#define uXm_D32High				-4294967296.0						/* -4294967296 */
#define uXm_Dflip32				2147483648.0						/* 2147483648 */
#define uXm_D40Low				16777215.0							/* 16777215 */
#define uXm_D40High				-1099511627776.0					/* -1099511627776 */
#define uXm_Dflip40				549755813888.0						/* 549755813888 */
#define uXm_D48Low				65535.0								/* 65535 */
#define uXm_D48High				-281474976710656.0					/* -281474976710656 */
#define uXm_Dflip48				140737488355328.0					/* 140737488355328 */
#define uXm_D56Low				255.0								/* 255 */
#define uXm_D56High				-72057594037927936.0				/* -72057594037927936 */
#define uXm_Dflip56				36028797018963968.0					/* 36028797018963968 */
#define uXm_D60Low				15.0								/* 15 */
#define uXm_D60High				-1152921504606846976.0				/* -1152921504606846976 */
#define uXm_Dflip60				576460752303423488.0				/* 576460752303423488 */
#define uXm_D64Low				0.0									/* 0 */
#define uXm_D64High				0.0									/* 0 */
#define uXm_Dflip64				-9223372036854775808.0				/* -9223372036854775808 */

#define uXm_DInf					9218868437227405312.0				/* 9218868437227405312 MaxI64+1-pow2^52*/
#define uXm_DinvInf				-9218868437227405313.0				/* -9218868437227405313 */
#define uXm_DnegInf				-4503599627370496.0					/* -4503599627370496 -pow2^52*/
#define uXm_DNaN					9223372036854775807.0				/* 9223372036854775807 MaxI64 */
#define uXm_DQNaN				9221120237041090576.0				/* 9221120237041090576 */
#define uXm_DnegQNaN				-2251799813685248.0					/* -2251799813685248 */
#define uXm_DNaNTest				4503599627370495.0					/* 4503599627370495 */
#define uXm_DAbs					9223372036854775807.0				/* 9223372036854775807 MaxI64 */
#define uXm_DdblMin				4503599627370496.0					/* 4503599627370496 pow2^52*/
#define uXm_DdblMax				9218868437227405311.0				/* 9218868437227405311 MaxI64-pow2^52*/
#define uXm_DNegZero				9223372036854775808.0				/* -9223372036854775808  MinI64 */
#define uXm_DMinDenorm			1.0
#define uXm_DMinNormal			4503599627370496.0					/* 4503599627370496 pow2^52*/
#define uXm_DMaxNormal			9218868437227405311.0				/* 9218868437227405311 MaxI64-pow2^52*/
#define uXm_DExpBias				6142909891733356544.0				/* 6142909891733356544 exponent bias */
#define uXm_DExpM1div3			1501198444134400.0					/* 1501198444134400 exponent multiplier for 1/3 */

#define uXm_D32Max				1.7976931348623158e+308		/* 1.7976931348623158e+308	*/	/* maximum possible double value */		/* 3.4028234663852885981170418348452e+38F */
#define uXm_D32Min				2.2250738585072014e-308		/* 2.2250738585072014e-308*/	/* min positive value */
#define uXm_DDecDig				15.0						/* 15 */						/* # of double decimal digits of precision */
#define uXm_DnegDecDig			-15.0						/* -15 */						/* # neg of double decimal digits of precision */
#define uXm_DMant				52.0						/* 52 */						/* # stable of double bits in mantissa */
#define uXm_DnegMant				-52.0						/* -52 */						/* # neg stable of double bits in mantissa */
#define uXm_DmaxDecDigExp		308.0						/* 308 */						/* max double decimal exponent */
#define uXm_DnegmaxDecDigExp		-308.0						/* -308 */						/* neg max double decimal exponent */
#define uXm_DminDecDigExp		-307.0						/* -307 */						/*  min decimal exponent */
#define uXm_DmaxExp				1023.0						/* 1023 */						/* stable max double binary exponent */
#define uXm_DminExp				-1022.0						/* -1022 */						/* stable min double binary exponent */
#define uXm_DRadix				2.0							/* 2 */							/* double exponent radix */
#define uXm_D32MantPow2			4503599627370496.0			/* 4503599627370496.0 */		/* # pow2^52 */
#define uXm_D32MaxMantPow2		9218868437227405311.0		/* 9218868437227405311 */		/* # MaxI32-pow2^52 */
#define uXm_D32High				1.8446726e+150
#define uXm_D32SmallNorm			2.2250738585072014e-308     /* smallest normal number, double*/
#define uXm_D32Eps				2.2204460492503131e-016		/* 2.2204460492503131e-016 */			/* smallest such that 1.0+DBL_EPSILON != 1.0 */
#define uXm_D32NormEps			1e-180	

#define uXm_D253					253.0

#define uXm_D0				0.0
#define uXm_D05				0.5
#define uXm_D1				1.0
#define uXm_D2				2.0
#define uXm_D3				3.0
#define uXm_D4				4.0
#define uXm_D5				5.0
#define uXm_D6				6.0
#define uXm_D7				7.0
#define uXm_D8				8.0
#define uXm_D9				9.0

#define uXm_Dneg0			-0.0
#define uXm_Dneg05			-0.5
#define uXm_Dneg1			-1.0
#define uXm_Dneg2			-2.0
#define uXm_Dneg3			-3.0
#define uXm_Dneg4			-4.0
#define uXm_Dneg5			-5.0
#define uXm_Dneg6			-6.0
#define uXm_Dneg7			-7.0
#define uXm_Dneg8			-8.0
#define uXm_Dneg9			-9.0

#define uXm_D24_5 			24.5
#define uXm_D45 				45.0
#define uXm_D90 				90.0
#define uXm_D180 			180.0
#define uXm_D360 			360.0

#define uXm_D23				23.0
#define uXm_D52				52.0

#define uXm_D127				127.0
#define uXm_D128				128.0
#define uXm_D255				255.0
#define uXm_D256				256.0
#define uXm_D32767			32767.0
#define uXm_D32768			32768.0
#define uXm_D65535			65535.0
#define uXm_D65536			65536.0
#define uXm_D2147483647		2147483647.0
#define uXm_D2147483648		2147483648.0
#define uXm_D4294967295		4294967295.0
#define uXm_D4294967296		4294967296.0

#define uXm_Dneg24_5 		-24.5
#define uXm_Dneg45 			-45.0
#define uXm_Dneg90 			-90.0
#define uXm_Dneg180 			-180.0
#define uXm_Dneg360 			-360.0

#define uXm_DmaxRand			32767.0

#define uXm_DmaxI8			127.0
#define uXm_DminI8			-128.0
#define uXm_DmaxU8			255.0

#define uXm_DmaxI16			32767.0
#define uXm_DminI16			-32768.0
#define uXm_DmaxU16			65535.0

#define uXm_DmaxI32			2147483647.0
#define uXm_DminI32			-2147483648.0
#define uXm_DmaxU32			4294967295.0

#define uXm_DmaxI64			9223372036854775807.0
#define uXm_DminI64			-9223372036854775808.0
#define uXm_DmaxU64			18446744073709551615.0

#define uXm_DmaxI8xU8		32768.0						/*128.0*256.0*/
#define uXm_DminI8xU8		-32768.0					/*-128.0*256.0*/
#define uXm_DmaxI8xU16		8388608.0					/*128.0*65536.0*/
#define uXm_DminI8xU16		-8388608.0					/*-128.0*65536.0*/
#define uXm_DmaxI16xU16		2147483648.0				/*32768.0*65536.0*/
#define uXm_DminI16xU16		-2147483648.0				/*-32768.0*65536.0*/
#define uXm_DfixUnsigned		2147483648.0				/*32768.0*65536.0*/
#define uXm_DfixmaxI32		2147483520.0				/*65536.0*32768.0-128.0*/
#define uXm_DfixmaxU32		4294967040.0				/*65536.0*65536.0-256.0*/
#define uXm_DfixUnsigned64	9223372036854775808.0		/*2147483648.0*4294967296.0*/
#define uXm_DfixmaxI64		9219077069558774784.0		/*4294967296.0*2147483648.0-1024.0*/
#define uXm_DfixmaxU64		9223372036854773760.0		/*4294967296.0*2147483648.0-2048.0*/


#define uXm_DrcpI16			3.0518509475997192297128208258309e-5	/* 1/maxI16 */
#define uXm_DrcpU16			0.0000152587890625						/* 1/(maxU16+1) */
#define uXm_DrcpI16xU16		4.656754985961485641041291543321e-10	/* 1/maxI16x(maxU16+1) */

#define uXm_DMG					1024.0
#define uXm_DnegMG				-1024.0
#define uXm_DHalfMG				512.0
#define uXm_DnegHalfMG			-512.0
#define uXm_DMGdiv4				256.0
#define uXm_DnegMGdiv4			-256.0
#define uXm_DHalfMGxMG			524288.0
#define uXm_DHalfMGxsqrMG		536870912.0
#define uXm_DHalfMGxcubeMG		549755813888.0
#define uXm_DnegHalfMGxMG		-524288.0
#define uXm_DnegHalfMGxsqrMG		-536870912.0
#define uXm_DnegHalfMGxcubeMG	-549755813888.0
#define uXm_DsqrMG				1048576.0
#define uXm_DcubeMG				1073741824.0
#define uXm_DsqrtMG				32.0
#define uXm_DcbrtMG				10.079368399158985318137684858226
#define uXm_DrcpMG				0.0009765625
#define uXm_DrcpsqrMG			0.00000095367431640625
#define uXm_DrcpcubeMG			0.000000000931322574615478515625
#define uXm_DrcpsqrtMG			0.03125
#define uXm_DrcpcbrtMG			0.09921256574801246717198160245452


#define uXm_DE					2.71828182845904523536
#define uXm_Dexp					2.71828182845904523536
#define uXm_DlogE				0.43429448190325182765108299019028
#define uXm_DlogEHigh			0.43429448190325182765108299019028
#define uXm_DlogELow				1.09831965021676510e-17
#define uXm_Dlog2E				1.44269504088896340736
#define uXm_Dlog2EHigh			1.44269504088896340736
#define uXm_Dlog2ELow			2.0355273740931033e-17
#define uXm_Dlog10E				0.43429448190325182765108299019028
#define uXm_Drcplog2E			0.69314718055994530941719593421853
#define uXm_Drcplog10E			2.3025850929940456840186749696447
#define uXm_Dlog2T				3.3219280948873622
#define uXm_Dlog2				0.30102999566398119521373889472449
#define uXm_Dlog2High			0.30102999566398119521373889472449
#define uXm_Dlog2Low				-2.8037281277851704e-18
#define uXm_Dln2					0.69314718055994530941723212145818
#define uXm_Dln2High				0.69314718055994530941723212145818
#define uXm_Dln2Low				2.3190468138462996e-17
#define uXm_D1divln2				1.4426950408889634073599246810019
#define uXm_D2divln2				2.8853900817779268147198493620038
#define uXm_DlnT					2.3025850929940459
#define uXm_DlnTHigh				 2.3025850929940459e+0
#define uXm_DlnTLow				-2.1707562233822494e-16
#define uXm_Dln10				2.302585092994045684018
#define uXm_Dsqrt2				1.414213562373095048801         /* sqrt(2) */
#define uXm_Drcpsqrt2			0.707106781186547524400         /* 1/sqrt(2) */
#define uXm_Dsqrt2div2			0.707106781186547524400
#define uXm_Dsqrt2div2High		0.707106781186547524400
#define uXm_Dsqrt2div2Low		1.210161749e-08
#define uXm_DsqrtHalf			0.707106781186547524401
#define uXm_DsqrtHalfHigh		0.707106781186547524401
#define uXm_DsqrtHalfLow			-4.8336466567264567e-17
#define uXm_Dpowe2				7.389056098930650227230         /* powe(2) */
#define uXm_Drcpowe2				0.135335283236612691893         /* 1 / powe(2) */
#define uXm_Dcbrt2				1.259921049894873164767			/* cbrt(2) */
#define uXm_Drcpcbrt2			0.793700525984099737375			/* 1 / cbrt(2) */
#define uXm_D1div3				0.333333333333333333333
#define uXm_D2div3				0.666666666666666666667
#define uXm_D4div3				1.333333333333333333333

#define uXm_DPi					3.1415926535897932384626433832795
#define uXm_DPiHigh				3.1415926535897932384626433832795
#define uXm_DPiLow				1.2246467991473532e-16
#define uXm_DHalfPi				1.5707963267948966192313216916398
#define uXm_D2Pi					6.283185307179586476925286766559
#define uXm_DnegPi				-3.1415926535897932384626433832795
#define uXm_DnegHalfPi			-1.5707963267948966192313216916398
#define uXm_Dneg2Pi 				-6.283185307179586476925286766559
#define uXm_DrcpPi				0.31830988618379067153776752674503          /* 1/(Pi)*/
#define uXm_DinvPi				0.31830988618379067153776752674503
#define uXm_Drcp2Pi				0.15915494309189533576888376337251          /* 1/(2Pi)*/
#define uXm_Dinv2Pi				0.15915494309189533576888376337251
#define uXm_DPidiv2				1.5707963267948966192313216916398
#define uXm_DPidiv2High			1.5707963267948966192313216916398
#define uXm_DPidiv2Low			6.1232339957367660e-17
#define uXm_DPidiv4				0.78539816339744830961566084581988
#define uXm_DPidiv4High			0.78539816339744830961566084581988
#define uXm_DPidiv4Low			3.0616169978683830e-17
#define uXm_DPix3div4			2.3561944901923449288469825374596			/* Pi*3/4 */
#define uXm_DsqrtPi				1.7724538509055160272981674833411			/* sqrt(Pi)*/			
#define uXm_Dsqrt2Pi				2.506628274631000502415765284811			/* sqrt(2Pi)*/
#define uXm_Dsqrt2PiHigh			2.506628274631000502415765284811
#define uXm_Dsqrt2PiLow			-1.8328579980459167e-16	
#define uXm_DrcpsqrtPi			0.56418958354775628694807945156077          /* 1/sqrt(Pi)*/
#define uXm_Drcpsqrt2Pi			0.39894228040143267793994605993438          /* 1/sqrt(2Pi)*/
#define uXm_DsqrtPitodiv2		0.88622692545275801364908374167057
#define uXm_DsqrtPidiv2			1.2533141373155002512078826424055
#define uXm_DsqrtPidiv2High		1.2533141373155002512078826424055
#define uXm_DsqrtPidiv2Low		-9.1642899902295834e-17
#define uXm_D2divPi				0.63661977236758134307553505349006          /* 2/(Pi)*/
#define uXm_D2div2Pi				0.31830988618379067153776752674503          /* 2/(2Pi)*/
#define uXm_D2divsqrtPi			1.1283791670955125738961589031216			/* 2/sqrt(Pi)*/
#define uXm_D2divsqrt2Pi			0.79788456080286535587989211986878          /* 2/sqrt(2Pi)*/
#define uXm_Dsqrt2divPi			0.45015815807855303477759959550337          /* sqrt2/(2Pi)*/
#define uXm_DlogPi				0.4971498726941338543512682882909
#define uXm_Dlog2Pi				0.4971498726941338543512682882909
#define uXm_DlnPi				1.1447298858494001741434273513531
#define uXm_Dln2Pi				1.8378770664093454835606594728112
#define uXm_DpowePi				23.140692632779269005729086367949
#define uXm_DrcpowePi			0.04321391826377224977441773717173
#define uXm_Dpowe2Pi				535.49165552476473650304932958905
#define uXm_Drcpowe2Pi			0.00186744273170798881443021293483
#define uXm_DcbrtPi				1.4645918875615232630201425272638
#define uXm_DrcpcbrtPi			0.68278406325529568146702083315816
#define uXm_Dcbrt2Pi				1.845270148644028419096803879589
#define uXm_Drcpcbrt2Pi			0.54192607013928900874456136482964

#define uXm_Dln2x1024			709.78271289338399684324569237317
#define uXm_Dln2x1025			710.47586007394394215266292449463
#define uXm_Dln2x1075			745.13321910194120762352453056754
#define uXm_Dlog2x1024			308.25471555991674389886862819788
#define uXm_Dlog2x1075			323.60724533877978485476931182883

#define uXm_Dpow2toM126			1.175494351e-38
#define uXm_Dpow2to126			8.507059173e37
#define uXm_DNormHuge			3.402823466e38
#define uXm_Dpow2to23			8388608.0
#define uXm_Dpow2to24			16777216.0
#define uXm_DmaxI32_pow2to23		2139095039.0
#define uXm_Dpow2to31			2147483648.0
#define uXm_Dpow2to32			4294967296.0
#define uXm_Dpow2to52			4503599627370496.0
#define uXm_Dpow2to53			9007199254740992.0
#define uXm_Dpow2to54			18014398509481984.0
#define uXm_Dpow2toM54       	5.5511151231257827e-17
#define uXm_Dpow2to62			4611686018427387904.0
#define uXm_DmaxI64_pow2to52		9218868437227405311.0
#define uXm_Dpow2to63			9223372036854775808.0
#define uXm_Dpow2to64			18446744073709551616.0
#define uXm_Dpow2toM1022			2.22507385850720140e-308
#define uXm_DTrigPLoss			2147483648.0

#define uXm_DDegtoRad			0.017453292519943295769			/* Pi/180 */
#define uXm_DRadtoDeg			57.29577951308232087679			/* 180/Pi */

#define uXm_DDegtoGrad			1.111111111111111111111			/* Pi/2.8274333882308139146163790449516 */
#define uXm_DGradtoDeg			0.9								/* 2.8274333882308139146163790449516/Pi */

#define uXm_DRadtoGrad			63.66197723675813430755			/* 200/Pi */
#define uXm_DGradtoRad			0.015707963267948966192			/* Pi/200 */

#define uXm_DMillimeterstoInch	0.0393700787401575
#define uXm_DCentimeterstoInch	0.3937007874015748
#define uXm_DMeterstoInch		39.37007874015748
#define uXm_DKilometerstoInch	39370.07874015748

#define uXm_DInchtoMillimeters		25.4
#define uXm_DInchtoCentimeters		2.54
#define uXm_DInchtoMeters			0.0254
#define uXm_DInchtoKiloMeters		0.0000254

#define uXm_DMilestoKilometers		1.609344
#define uXm_DKilometerstoMiles		0.621371192237334

#define uXm_DGravity					9.8
#define uXm_DKmhtoMPSec				0.278
#define uXm_DSoundSpeed				343.5

#define uXm_DSCHScale				uXm_D1divln2		/* 1 / ln(2)*/
#define uXm_DTHScale					uXm_D2divln2		/* 2 / ln(2)*/

#define uXm_DmagicF32				1258291200.0
#define uXm_DmagicF64				1127219200.0

#define uXm_Dexpest1					-6.93147182e-1
#define uXm_Dexpest2					+2.40226462e-1
#define uXm_Dexpest3					-5.55036440e-2
#define uXm_Dexpest4					+9.61597636e-3
#define uXm_Dexpest5					-1.32823968e-3
#define uXm_Dexpest6					+1.47491097e-4
#define uXm_Dexpest7					-1.08635004e-5
#define uXm_Dlogest0					+1.442693
#define uXm_Dlogest1					-0.721242
#define uXm_Dlogest2					+0.479384
#define uXm_Dlogest3					-0.350295
#define uXm_Dlogest4					+0.248590
#define uXm_Dlogest5					-0.145700
#define uXm_Dlogest6					+0.057148
#define uXm_Dlogest7					-0.010578

#endif /*uXm_USE_DOUBLE_PRECISION*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

																						/* maximum value of f = 15 */					
#define uXm_I8MAX			127i8					/* 127 */							/* maximum possible si8 value, 0x7f	*/					/* ((15*15)/2)+15 = 127,5 		sign round to 127 */
#define uXm_I8MIN			(-127i8 - 1)			/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5	sign round to -128 */
#define uXm_U8MAX			0xffi8					/* 255 */							/* maximum possible ui8 value, 0xff	*/					/* 127,5 + 127,5 = 255 */
#define uXm_U8MIN			0x00i8					/* 0 */								/* minimum possible ui8 value, 0x00	*/					/* -127,5 + 127,5 = 0 */

#define uXm_I16MAX			32767i16				/* 32767 */							/* maximum possible si16 value, 0x7fff */				/* ((255*255)/2)+255= 32767,5		sign round to 32767 */
#define uXm_I16MIN			(-32767i16 - 1)			/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5	sign round to -32768 */
#define uXm_U16MAX			0xffffi16				/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uXm_U16MIN			0x0000i16				/* 0 */								/* minimum possible ui16 value, 0x0000 */				/* -32767,5 + 32767,5 = 0 */

#define uXm_I32MAX			2147483647i32				/* 2147483647 2147483648 -1124073472 = 1023410176*/					/* maximum possible si32 value, 0x7fffffff */			/* ((65535*65535)/2)+65535 = 2147483647,5		sign round to 2147483647 */
#define uXm_I32MIN			(-2147483647i32 - 1)		/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5	sign round to -2147483648 */
#define uXm_U32MAX			0xffffffffi32				/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295	*/
#define uXm_U32MIN			0x00000000i32				/* 0 */								/* minimum possible ui32 value, 0x00000000 */			/* -2147483647,5 + 2147483647,5 = 0	*/

#ifdef uXm_VC
#define uXm_I64MAX			9223372036854775807i64				/* 9223372036854775807 */ 			/* maximum possible si64 value, 0x7fffffffffffffff */	/* ((4294967295*4294967295)/2)+4294967295 = 9223372036854775807,5			sign round to 9223372036854775807 */
#define uXm_I64MIN			(-9223372036854775807i64 - 1)		/* (-9223372036854775807 - 1) */ 	/* minimum possible si64 value, 0x8000000000000000 */	/* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uXm_U64MAX			0xffffffffffffffffui64				/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */	/* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615	*/
#define uXm_U64MIN			0x0000000000000000ui64				/* 0 */								/* minimum possible ui64 value, 0x0000000000000000 */	/* -9223372036854775807,5 + 9223372036854775807,5 = 0 */
#else
#define uXm_I64MAX			9223372036854775807ll				/* 9223372036854775807 */ 			/* maximum possible si64 value, 0x7fffffffffffffff */	/* ((4294967295*4294967295)/2)+4294967295 = 9223372036854775807,5			sign round to 9223372036854775807 */
#define uXm_I64MIN			(-9223372036854775807ll - 1)		/* (-9223372036854775807 - 1) */ 	/* minimum possible si64 value, 0x8000000000000000 */	/* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uXm_U64MAX			0xffffffffffffffffull				/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */	/* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615	*/
#define uXm_U64MIN			0x0000000000000000ull				/* 0 */								/* minimum possible ui64 value, 0x0000000000000000 */	/* -9223372036854775807,5 + 9223372036854775807,5 = 0 */
#endif

#define uXm_CHARMAX			127						/* 127 */							/* maximum possible si8 value, 0x7f	*/					/* ((15*15)/2)+15 = 127,5 		sign round to 127 */
#define uXm_CHARMIN			(-127 - 1)				/* (-127 - 1) */					/* minimum possible si8 value, 0x80 */					/* -(((15*15)/2)+15) = -127,5	sign round to -128 */
#define uXm_UCHARMAX			0xff					/* 255 */							/* maximum possible ui8 value, 0xff	*/					/* 127,5 + 127,5 = 255 */
#define uXm_UCHARMIN			0x00					/* 0 */								/* minimum possible ui8 value, 0x00	*/					/* -127,5 + 127,5 = 0 */

#define uXm_SHORTMAX			32767					/* 32767 */							/* maximum possible si16 value, 0x7fff */				/* ((255*255)/2)+255= 32767,5		sign round to 32767 */
#define uXm_SHORTMIN			(-32767 - 1)			/* (-32767 - 1) */					/* minimum possible si16 value, 0x8000 */				/* -(((255*255)/2)+255) = -32767,5	sign round to -32768 */
#define uXm_USHORTMAX		0xffff					/* 65535 */							/* maximum possible ui16 value, 0xffff */				/* 32767,5 + 32767,5 = 65535 */
#define uXm_USHORTMIN		0x0000					/* 0 */								/* minimum possible ui16 value, 0x0000 */				/* -32767,5 + 32767,5 = 0 */

#define uXm_INTMAX			2147483647				/* 2147483647 */					/* maximum possible si32 value, 0x7fffffff */			/* ((65535*65535)/2)+65535 = 2147483647,5		sign round to 2147483647 */
#define uXm_INTMIN			(-2147483647 - 1)		/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5	sign round to -2147483648 */
#define uXm_UINTMAX			0xffffffff				/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295	*/
#define uXm_UINTMIN			0x00000000				/* 0 */								/* minimum possible ui32 value, 0x00000000 */			/* -2147483647,5 + 2147483647,5 = 0	*/

#ifdef uXm_VC
#define uXm_INT64MAX			9223372036854775807i64				/* 9223372036854775807 */ 			/* maximum possible si64 value, 0x7fffffffffffffff */	/* ((4294967295*4294967295)/2)+4294967295 = 9223372036854775807,5			sign round to 9223372036854775807 */
#define uXm_INT64MIN			(-9223372036854775807i64 - 1)		/* (-9223372036854775807 - 1) */ 	/* minimum possible si64 value, 0x8000000000000000 */	/* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uXm_UINT64MAX		0xffffffffffffffffui64				/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */	/* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615	*/
#define uXm_UINT64MIN		0x0000000000000000ui64				/* 0 */								/* minimum possible ui64 value, 0x0000000000000000 */	/* -9223372036854775807,5 + 9223372036854775807,5 = 0 */
#else
#define uXm_INT64MAX			9223372036854775807ll				/* 9223372036854775807 */ 			/* maximum possible si64 value, 0x7fffffffffffffff */	/* ((4294967295*4294967295)/2)+4294967295 = 9223372036854775807,5			sign round to 9223372036854775807 */
#define uXm_INT64MIN			(-9223372036854775807ll - 1)		/* (-9223372036854775807 - 1) */ 	/* minimum possible si64 value, 0x8000000000000000 */	/* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uXm_UINT64MAX		0xffffffffffffffffull				/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */	/* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615	*/
#define uXm_UINT64MIN		0x0000000000000000ull				/* 0 */								/* minimum possible ui64 value, 0x0000000000000000 */	/* -9223372036854775807,5 + 9223372036854775807,5 = 0 */
#endif

#define uXm_LONGMAX			2147483647l				/* 2147483647 */					/* maximum possible si32 value, 0x7fffffff */			/* ((65535*65535)/2)+65535 = 2147483647,5		sign round to 2147483647 */
#define uXm_LONGMIN			(-2147483647l - 1)		/* (-2147483647 - 1 ) */			/* minimum possible si32 value, 0x80000000 */			/* -(((65535*65535)/2)+65535) = -2147483647,5	sign round to -2147483648 */
#define uXm_ULONGMAX			0xfffffffful			/* 4294967295 */					/* maximum possible ui32 value, 0xffffffff */			/* 2147483647,5 + 2147483647,5 = 4294967295	*/
#define uXm_ULONGMIN			0x00000000ul			/* 0 */								/* minimum possible ui32 value, 0x00000000 */			/* -2147483647,5 + 2147483647,5 = 0	*/

#define uXm_LONGLONGMAX		9223372036854775807ll				/* 9223372036854775807 */ 			/* maximum possible si64 value, 0x7fffffffffffffff */	/* ((4294967295*4294967295)/2)+4294967295 = 9223372036854775807,5			sign round to 9223372036854775807 */
#define uXm_LONGLONGMIN		(-9223372036854775807ll - 1)		/* (-9223372036854775807 - 1) */ 	/* minimum possible si64 value, 0x8000000000000000 */	/* -(((4294967295*4294967295)/2)+4294967295) = -9223372036854775807,5		sign round to -9223372036854775808 */
#define uXm_ULONGLONGMAX		0xffffffffffffffffull				/* 18446744073709551615 */			/* maximum possible ui64 value, 0xffffffffffffffff */	/* 9223372036854775807,5 + 9223372036854775807,5 = 18446744073709551615	*/
#define uXm_ULONGLONGMIN		0x0000000000000000ull				/* 0 */								/* minimum possible ui64 value, 0x0000000000000000 */	/* -9223372036854775807,5 + 9223372036854775807,5 = 0 */

#define uXm_f32_32DECDIG			6					/* 6 */							/* # of decimal digits of precision */
#define uXm_f32_32EPS				1.192092896e-07f	/* 1.192092896e-07f */			/* smallest such that 1.0+FLT_EPSILON != 1.0 */
#define uXm_f32_32NORM_EPS			1e-20f	
#define uXm_f32_32GUARD				0
#define uXm_f32_32MANT_DIG			24					/* 24 */						/* # of bits in mantissa */
#define uXm_f32_32MANT				23					/* 23 */						/* # stable of bits in mantissa */
#define uXm_f32_32MANTPOW2			8388608				/* 8388608 */					/* # pow2^23 */
#define uXm_f32_32MAXMANTPOW2		2139095039			/* 2139095039 */				/* # MaxI32-pow2^23 */
#define uXm_f32_32MAX				3.402823466e+38f	/* 3.402823466e+38F */			/* maximum possible float value */		/* 3.4028234663852885981170418348452e+38F */
#define uXm_f32_32MAX_DEC_EXP		38					/* 38 */						/* max decimal exponent */
#define uXm_f32_32MAX_EXP			128					/* 128 */						/* max binary exponent */
#define uXm_f32_EXP				127					/* 127 */						/* stable binary exponent */
#define uXm_f32_32MIN				1.175494351e-38f	/* 1.175494351e-38F */			/* min positive value */
#define uXm_f32_32MIN_DEC_EXP		-37					/* (-37) */						/* min decimal exponent */
#define uXm_f32_32MIN_EXP			-125				/* (-125) */					/* min binary exponent */
#define uXm_f32_32NORM				0
#define uXm_f32_32RADIX				2					/* 2 */							/* exponent radix */
#define uXm_f32_32ROUNDS			1					/* 1 */							/* addition rounding: near */
#define uXm_f32_32SUBDECDIG			10
#define uXm_f32_32HIGH				1.8446726e+019f
#define uXm_f32_32SMALL_NORM		1.17549435e-38f          /* smallest normal number, float*/

#define uXm_f32_64DECDIG			15							/* 15 */						/* # of decimal digits of precision */
#define uXm_f32_64EPS				2.2204460492503131e-016		/* 2.2204460492503131e-016 */	/* smallest such that 1.0+DBL_EPSILON != 1.0 */
#define uXm_f32_64NORM_EPS			1e-180
#define uXm_f32_64GUARD				0
#define uXm_f32_64MANT_DIG			53							/* 53 */						/* # of bits in mantissa */
#define uXm_f32_64MANT				52							/* 52 */						/* # stable of bits in mantissa */
#define uXm_f32_64MANTPOW2			4503599627370496			/* 4503599627370496 */			/* # pow2^52 */
#define uXm_f32_64MAXMANTPOW2		9218868437227405311			/* 9218868437227405311 */		/* # MaxI64-pow2^52 */
#define uXm_f32_64MAX				1.7976931348623158e+308		/* 1.7976931348623158e+308 */	/* maximum possible double value */
#define uXm_f32_64MAX_DEC_EXP		308							/* 308 */						/* max decimal exponent */
#define uXm_f32_64MAX_EXP			1024						/* 1024 */						/* max binary exponent */
#define uXm_f32_64_EXP				1023						/* 1023 */						/* stable binary exponent */
#define uXm_f32_64MIN				2.2250738585072014e-308		/* 2.2250738585072014e-308 */	/* min positive value */
#define uXm_f32_64MIN_DEC_EXP		-307						/* (-307) */					/* min decimal exponent */
#define uXm_f32_64MIN_EXP			-1021						/* (-1021) */					/* min binary exponent */
#define uXm_f32_64NORM				0
#define uXm_f32_64RADIX				2							/* 2 */							/* exponent radix */
#define uXm_f32_64ROUNDS			1							/* 1 */							/* addition rounding: near */
#define uXm_f32_64SUBDECDIG			10															/* double rounded to decimal and back */
#define uXm_f32_64HIGH				1.8446726e+150
#define uXm_f32_6SMALL_NORM			2.2250738585072014e-308		/* smallest normal number, double*/

#ifndef uXm_REAL_USE_F64
# define uXm_REALMAX					uXm_f32_32MAX
# define uXm_REALMIN					uXm_f32_32MIN
# define uXm_REALEPS					uXm_f32_32EPS
# define uXm_REALNORM_EPS			uXm_f32_32NORM_EPS
# define uXm_REALHIGH				uXm_f32_32HIGH
#else
# define uXm_REALMAX					uXm_f32_64MAX
# define uXm_REALMIN					uXm_f32_64MIN
# define uXm_REALEPS					uXm_f32_64EPS
# define uXm_REALNORM_EPS			uXm_f32_64NORM_EPS
# define uXm_REALHIGH				uXm_f32_64HIGH
#endif

#define uXm_MAXI8			0x7fi8					/* maximum possible si8 value, 0x7f */
#define uXm_MINI8			0x80i8					/* minimum possible si8 value, 0xffffffffffffff80 */
#define uXm_MAXU8			0xffui8					/* maximum possible ui8 value, 0xff */
#define uXm_MINU8			0x00ui8					/* minimum possible ui8 value, 0x00 */

#define uXm_MAXI16			0x7fffi16				/* maximum possible si16 value, 0x7fff */
#define uXm_MINI16			0x8000i16				/* minimum possible si16 value, 0xffffffffffff8000 */
#define uXm_MAXU16			0xffffui16				/* maximum possible ui16 value, 0xffff */
#define uXm_MINU16			0x0000ui16				/* minimum possible ui16 value, 0x0000 */

#define uXm_MAXI32			0x7fffffffi32			/* maximum possible si32 value, 0x7fffffff */
#define uXm_MINI32			0x80000000i32			/* minimum possible si32 value, 0xffffffff80000000 */
#define uXm_MAXU32			0xffffffffui32			/* maximum possible ui32 value, 0xffffffff */
#define uXm_MINU32			0x00000000ui32			/* minimum possible ui32 value, 0x00000000 */

#define uXm_MAXRAND			0x7fffi32				/* maximum possible rand value, 0x7fff */

#define uXm_f32_MAXRAND			0x7fff					/* maximum possible rand value, 0x7fff */

#ifdef uXm_VC
#define uXm_MAXI64			0x7fffffffffffffffi64	/* maximum possible si64 value, 0x7fffffffffffffff */
#define uXm_MINI64			0x8000000000000000i64	/* minimum possible si64 value, 0x8000000000000000 */
#define uXm_MAXU64			0xffffffffffffffffui64	/* maximum possible ui64 value, 0xffffffffffffffff */
#define uXm_MINU64			0x0000000000000000ui64	/* minimum possible ui64 value, 0x0000000000000000 */
#else
#define uXm_MAXI64			0x7fffffffffffffffll	/* maximum possible si64 value, 0x7fffffffffffffff */
#define uXm_MINI64			0x8000000000000000ll	/* minimum possible si64 value, 0x8000000000000000 */
#define uXm_MAXU64			0xffffffffffffffffull	/* maximum possible ui64 value, 0xffffffffffffffff */
#define uXm_MINU64			0x0000000000000000ull	/* minimum possible ui64 value, 0x0000000000000000 */
#endif

#define uXm_MAXCHAR			0x7f					/* maximum possible schar value, 0x7f */
#define uXm_MINCHAR			0x80					/* minimum possible schar value, 0xffffffffffffff80 */
#define uXm_MAXUCHAR			0xff					/* maximum possible uchar value, 0xff */
#define uXm_MINUCHAR			0x00					/* minimum possible uchar value, 0x00 */

#define uXm_MAXSHORT			0x7fff					/* maximum possible sshort value, 0x7fff */
#define uXm_MINSHORT			0x8000					/* minimum possible sshort value, 0xffffffffffff8000 */
#define uXm_MAXUSHORT		0xffff					/* maximum possible ushort value, 0xffff */
#define uXm_MINUSHORT		0x0000					/* minimum possible ushort value, 0x0000 */

#define uXm_MAXINT			0x7fffffff				/* maximum possible sint value, 0x7fffffff */
#define uXm_MININT			0x80000000				/* minimum possible sint value, 0xffffffff80000000 */
#define uXm_MAXUINT			0xffffffff				/* maximum possible uint value, 0xffffffff */
#define uXm_MINUINT			0x00000000				/* minimum possible uint value, 0x00000000 */

#ifdef uXm_VC
#define uXm_MAXINT64			0x7fffffffffffffffi64	/* maximum possible sint64 value, 0x7fffffffffffffff */
#define uXm_MININT64			0x8000000000000000i64	/* minimum possible sint64 value, 0x8000000000000000 */
#define uXm_MAXUINT64		0xffffffffffffffffui64	/* maximum possible uint64 value, 0xffffffffffffffff */
#define uXm_MINUINT64		0x0000000000000000ui64	/* minimum possible uint64 value, 0x0000000000000000 */
#else
#define uXm_MAXINT64			0x7fffffffffffffffll	/* maximum possible sint64 value, 0x7fffffffffffffff */
#define uXm_MININT64			0x8000000000000000ll	/* minimum possible sint64 value, 0x8000000000000000 */
#define uXm_MAXUINT64		0xffffffffffffffffull	/* maximum possible uint64 value, 0xffffffffffffffff */
#define uXm_MINUINT64		0x0000000000000000ull	/* minimum possible uint64 value, 0x0000000000000000 */
#endif

#define uXm_MAXLONG			0x7fffffffl				/* maximum possible slong value, 0x7fffffff */
#define uXm_MINLONG			0x80000000l				/* minimum possible slong value, 0x80000000 */
#define uXm_MAXULONG			0xfffffffful			/* maximum possible ulong value, 0xffffffff */
#define uXm_MINULONG			0x00000000ul			/* minimum possible ulong value, 0x00000000 */

#define uXm_MAXLONGLONG		0x7fffffffffffffffll	/* maximum possible slonglong value, 0x7fffffffffffffff */
#define uXm_MINLONGLONG		0x8000000000000000ll	/* minimum possible slonglong value, 0x8000000000000000 */
#define uXm_MAXULONGLONG		0xffffffffffffffffull	/* maximum possible ulonglong value, 0xffffffffffffffff */
#define uXm_MINULONGLONG		0x0000000000000000ull	/* minimum possible ulonglong value, 0x0000000000000000 */

//
// It is common for -1 to be used as an error value
//
#define uXm_I8ERROR			(-1i8)
#define uXm_U8ERROR			0xffui8
#define uXm_I16ERROR			(-1i16)
#define uXm_U16ERROR			0xffffui16
#define uXm_I32ERROR			(-1i32)
#define uXm_U32ERROR			0xffffffffui32
#ifdef uXm_VC
#define uXm_I64ERROR			(-1i64)
#define uXm_U64ERROR			0xffffffffffffffffui64
#else
#define uXm_I64ERROR			(-1ll)
#define uXm_U64ERROR			0xffffffffffffffffull
#endif

#define uXm_f32_32ERROR			(-1)
#define uXm_f32_64ERROR			(-1)

#define uXm_BYTE_ERROR		0xff
#define uXm_SHORT_ERROR		(-1)

#define uXm_USHORT_ERROR		0xffff

#define uXm_WORD_ERROR		0xffff
#define uXm_INT_ERROR		(-1)

#define uXm_UINT_ERROR		0xffffffff

#define uXm_LONG_ERROR		(-1l)
#define uXm_ULONG_ERROR		0xfffffffful
#define uXm_DWORD_ERROR		0xfffffffful

#define uXm_LONGLONG_ERROR	(-1ll)
#define uXm_LONG64_ERROR		(-1ll)

#define uXm_ULONGLONG_ERROR	0xffffffffffffffffull
#define uXm_DWORDLONG_ERROR	0xffffffffffffffffull
#define uXm_ULONG64_ERROR	0xffffffffffffffffull


/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uXmI8i mask constants

#define uXm_I8_msk0 0x00i8
#define uXm_I8_msk1 0x01i8
#define uXm_I8_msk2 0x02i8
#define uXm_I8_msk3 0x03i8
#define uXm_I8_msk4 0x04i8
#define uXm_I8_msk5 0x05i8
#define uXm_I8_msk6 0x06i8
#define uXm_I8_msk7 0x07i8
#define uXm_I8_msk8 0x08i8
#define uXm_I8_msk9 0x09i8

#define uXm_I8_mskneg0 0x80i8
#define uXm_I8_mskneg1 0xffi8
#define uXm_I8_mskneg2 0xfei8
#define uXm_I8_mskneg3 0xfdi8
#define uXm_I8_mskneg4 0xfci8
#define uXm_I8_mskneg5 0xfbi8
#define uXm_I8_mskneg6 0xfai8
#define uXm_I8_mskneg7 0xf9i8
#define uXm_I8_mskneg8 0xf8i8
#define uXm_I8_mskneg9 0xf7i8

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uXmI16i mask constants

#define uXm_I16_msk0 0x0000i16
#define uXm_I16_msk1 0x0001i16
#define uXm_I16_msk2 0x0002i16
#define uXm_I16_msk3 0x0003i16
#define uXm_I16_msk4 0x0004i16
#define uXm_I16_msk5 0x0005i16
#define uXm_I16_msk6 0x0006i16
#define uXm_I16_msk7 0x0007i16
#define uXm_I16_msk8 0x0008i16
#define uXm_I16_msk9 0x0009i16

#define uXm_I16_mskneg0 0x8000i16
#define uXm_I16_mskneg1 0xffffi16
#define uXm_I16_mskneg2 0xfffei16
#define uXm_I16_mskneg3 0xfffdi16
#define uXm_I16_mskneg4 0xfffci16
#define uXm_I16_mskneg5 0xfffbi16
#define uXm_I16_mskneg6 0xfffai16
#define uXm_I16_mskneg7 0xfff9i16
#define uXm_I16_mskneg8 0xfff8i16
#define uXm_I16_mskneg9 0xfff7i16

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uXmI32i mask constants

#define uXm_I32_msk0 0x00000000i32
#define uXm_I32_msk1 0x00000001i32
#define uXm_I32_msk2 0x00000002i32
#define uXm_I32_msk3 0x00000003i32
#define uXm_I32_msk4 0x00000004i32
#define uXm_I32_msk5 0x00000005i32
#define uXm_I32_msk6 0x00000006i32
#define uXm_I32_msk7 0x00000007i32
#define uXm_I32_msk8 0x00000008i32
#define uXm_I32_msk9 0x00000009i32

#define uXm_I32_msk128 0x00000080i32

#define uXm_I32_msk253 0x000000fdi32

#define uXm_I32_mskneg0 0x80000000i32
#define uXm_I32_mskneg1 0xffffffffi32
#define uXm_I32_mskneg2 0xfffffffei32
#define uXm_I32_mskneg3 0xfffffffdi32
#define uXm_I32_mskneg4 0xfffffffci32
#define uXm_I32_mskneg5 0xfffffffbi32
#define uXm_I32_mskneg6 0xfffffffai32
#define uXm_I32_mskneg7 0xfffffff9i32
#define uXm_I32_mskneg8 0xfffffff8i32
#define uXm_I32_mskneg9 0xfffffff7i32

#define uXm_I32_mskneg253 0xffffff03i32

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uXmI64i mask constants

#ifdef uXm_VC
#define uXm_I64_msk0 0x0000000000000000i64
#define uXm_I64_msk1 0x0000000000000001i64
#define uXm_I64_msk2 0x0000000000000002i64
#define uXm_I64_msk3 0x0000000000000003i64
#define uXm_I64_msk4 0x0000000000000004i64
#define uXm_I64_msk5 0x0000000000000005i64
#define uXm_I64_msk6 0x0000000000000006i64
#define uXm_I64_msk7 0x0000000000000007i64
#define uXm_I64_msk8 0x0000000000000008i64
#define uXm_I64_msk9 0x0000000000000009i64

#define uXm_I64_mskneg0 0x8000000000000000i64
#define uXm_I64_mskneg1 0xffffffffffffffffi64
#define uXm_I64_mskneg2 0xfffffffffffffffei64
#define uXm_I64_mskneg3 0xfffffffffffffffdi64
#define uXm_I64_mskneg4 0xfffffffffffffffci64
#define uXm_I64_mskneg5 0xfffffffffffffffbi64
#define uXm_I64_mskneg6 0xfffffffffffffffai64
#define uXm_I64_mskneg7 0xfffffffffffffff9i64
#define uXm_I64_mskneg8 0xfffffffffffffff8i64
#define uXm_I64_mskneg9 0xfffffffffffffff7i64
#else

#define uXm_I64_msk0 0x0000000000000000ll
#define uXm_I64_msk1 0x0000000000000001ll
#define uXm_I64_msk2 0x0000000000000002ll
#define uXm_I64_msk3 0x0000000000000003ll
#define uXm_I64_msk4 0x0000000000000004ll
#define uXm_I64_msk5 0x0000000000000005ll
#define uXm_I64_msk6 0x0000000000000006ll
#define uXm_I64_msk7 0x0000000000000007ll
#define uXm_I64_msk8 0x0000000000000008ll
#define uXm_I64_msk9 0x0000000000000009ll

#define uXm_I64_mskneg0 0x8000000000000000ll
#define uXm_I64_mskneg1 0xffffffffffffffffll
#define uXm_I64_mskneg2 0xfffffffffffffffell
#define uXm_I64_mskneg3 0xfffffffffffffffdll
#define uXm_I64_mskneg4 0xfffffffffffffffcll
#define uXm_I64_mskneg5 0xfffffffffffffffbll
#define uXm_I64_mskneg6 0xfffffffffffffffall
#define uXm_I64_mskneg7 0xfffffffffffffff9ll
#define uXm_I64_mskneg8 0xfffffffffffffff8ll
#define uXm_I64_mskneg9 0xfffffffffffffff7ll
#endif

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uXm_UI8u mask constants

#define uXm_U8_msk0 0x00ui8
#define uXm_U8_msk1 0x01ui8
#define uXm_U8_msk2 0x02ui8
#define uXm_U8_msk3 0x03ui8
#define uXm_U8_msk4 0x04ui8
#define uXm_U8_msk5 0x05ui8
#define uXm_U8_msk6 0x06ui8
#define uXm_U8_msk7 0x07ui8
#define uXm_U8_msk8 0x08ui8
#define uXm_U8_msk9 0x09ui8

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uXm_UI16u mask constants

#define uXm_U16_msk0 0x0000ui16
#define uXm_U16_msk1 0x0001ui16
#define uXm_U16_msk2 0x0002ui16
#define uXm_U16_msk3 0x0003ui16
#define uXm_U16_msk4 0x0004ui16
#define uXm_U16_msk5 0x0005ui16
#define uXm_U16_msk6 0x0006ui16
#define uXm_U16_msk7 0x0007ui16
#define uXm_U16_msk8 0x0008ui16
#define uXm_U16_msk9 0x0009ui16

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uXm_UI32u mask constants

#define uXm_U32_msk0 0x00000000ui32
#define uXm_U32_msk1 0x00000001ui32
#define uXm_U32_msk2 0x00000002ui32
#define uXm_U32_msk3 0x00000003ui32
#define uXm_U32_msk4 0x00000004ui32
#define uXm_U32_msk5 0x00000005ui32
#define uXm_U32_msk6 0x00000006ui32
#define uXm_U32_msk7 0x00000007ui32
#define uXm_U32_msk8 0x00000008ui32
#define uXm_U32_msk9 0x00000009ui32

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
// uXm_UI64u mask constants

#ifdef uXm_VC
#define uXm_U64_msk0 0x0000000000000000ui64
#define uXm_U64_msk1 0x0000000000000001ui64
#define uXm_U64_msk2 0x0000000000000002ui64
#define uXm_U64_msk3 0x0000000000000003ui64
#define uXm_U64_msk4 0x0000000000000004ui64
#define uXm_U64_msk5 0x0000000000000005ui64
#define uXm_U64_msk6 0x0000000000000006ui64
#define uXm_U64_msk7 0x0000000000000007ui64
#define uXm_U64_msk8 0x0000000000000008ui64
#define uXm_U64_msk9 0x0000000000000009ui64
#else

#define uXm_U64_msk0 0x0000000000000000ull
#define uXm_U64_msk1 0x0000000000000001ull
#define uXm_U64_msk2 0x0000000000000002ull
#define uXm_U64_msk3 0x0000000000000003ull
#define uXm_U64_msk4 0x0000000000000004ull
#define uXm_U64_msk5 0x0000000000000005ull
#define uXm_U64_msk6 0x0000000000000006ull
#define uXm_U64_msk7 0x0000000000000007ull
#define uXm_U64_msk8 0x0000000000000008ull
#define uXm_U64_msk9 0x0000000000000009ull
#endif

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                   end of head macro constants                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                start of head marked macro constants                 */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*           start of single precision marked macro constants          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/*
#define uXm_f32_ERROR			    (((float)(uXm_f32_32ERROR)) 

#define uXm_f32_0			        (((float)(uXm_f32_0)) 
#define uXm_f32_05			        (((float)(uXm_f32_05))
#define uXm_f32_1			        (((float)(uXm_f32_1))
#define uXm_f32_2			        (((float)(uXm_f32_2))
#define uXm_f32_3			        (((float)(uXm_f32_3))
#define uXm_f32_4			        (((float)(uXm_f32_4))
#define uXm_f32_5			        (((float)(uXm_f32_5))
#define uXm_f32_6			        (((float)(uXm_f32_6))
#define uXm_f32_7			        (((float)(uXm_f32_7))
#define uXm_f32_8			        (((float)(uXm_f32_8))
#define uXm_f32_9			        (((float)(uXm_f32_9))

#define uXm_f32_neg0			        (((float)(uXm_f32_neg0))
#define uXm_f32_neg05			    (((float)(uXm_f32_neg05))
#define uXm_f32_neg1			        (((float)(uXm_f32_neg1))
#define uXm_f32_neg2			        (((float)(uXm_f32_neg2))
#define uXm_f32_neg3			        (((float)(uXm_f32_neg3))
#define uXm_f32_neg4			        (((float)(uXm_f32_neg4))
#define uXm_f32_neg5			        (((float)(uXm_f32_neg5))
#define uXm_f32_neg6			        (((float)(uXm_f32_neg6))
#define uXm_f32_neg7			        (((float)(uXm_f32_neg7))
#define uXm_f32_neg8			        (((float)(uXm_f32_neg8))
#define uXm_f32_neg9			        (((float)(uXm_f32_neg9))

#define uXm_f32_24_5 			    (((float)(uXm_f32_24_5))
#define uXm_f32_45 				    (((float)(uXm_f32_45))
#define uXm_f32_90 				    (((float)(uXm_f32_90))
#define uXm_f32_180 			        (((float)(uXm_f32_180))
#define uXm_f32_360 			        (((float)(uXm_f32_360))

#define uXm_f32_neg24_5 		        (((float)(uXm_f32_neg24_5))
#define uXm_f32_neg45 			    (((float)(uXm_f32_neg45))
#define uXm_f32_neg90 			    (((float)(uXm_f32_neg90))
#define uXm_f32_neg180 			    (((float)(uXm_f32_neg180))
#define uXm_f32_neg360 			    (((float)(uXm_f32_neg360))

#define uXm_f32_maxI8			    (((float)(uXm_f32_maxI8))
#define uXm_f32_minI8			    (((float)(uXm_f32_minI8))
#define uXm_f32_maxU8			    (((float)(uXm_f32_maxU8))

#define uXm_f32_maxI16			    (((float)(uXm_f32_maxI16))
#define uXm_f32_minI16			    (((float)(uXm_f32_minI16))
#define uXm_f32_maxU16			    (((float)(uXm_f32_maxU16))

#define uXm_f32_maxI32			    (((float)(uXm_f32_maxI32))
#define uXm_f32_minI32			    (((float)(uXm_f32_minI32))
#define uXm_f32_maxU32			    (((float)(uXm_f32_maxU32))

/ *
#define uXm_f32_maxI64		        (((float)(uXm_f32_maxI64))
#define uXm_f32_minI64		        (((float)(uXm_f32_minI64))
#define uXm_f32_maxU64		        (((float)(uXm_f32_maxU64))* /

#define uXm_f32_maxI8xU8		        (((float)(uXm_f32_maxI8xU8))				/ *128.f*256.f* /
#define uXm_f32_minI8xU8		        (((float)(uXm_f32_minI8xU8))				/ *-128.f*256.f* /
#define uXm_f32_maxI8xU16		    (((float)(uXm_f32_maxI8xU16))				/ *128.f*65536.f* /
#define uXm_f32_minI8xU16		    (((float)(uXm_f32_minI8xU16))				/ *-128.f*65536.f* /
#define uXm_f32_maxI16xU16		    (((float)(uXm_f32_maxI16xU16))				/ *32768.f*65536.f* /
#define uXm_f32_minI16xU16		    (((float)(uXm_f32_minI16xU16))				/ *-32768.f*65536.f* /

#define uXm_f32_rcpI16			    (((float)(uXm_f32_rcpI16))					/ * 1/maxI16 * /
#define uXm_f32_rcpU16			    (((float)(uXm_f32_rcpU16))					/ * 1/maxU16 * /
#define uXm_f32_rcpI16xU16		    (((float)(uXm_f32_rcpI16xU16))				/ * 1/maxI16xmaxU16 * /

#define uXm_f32_MG					(((float)(uXm_f32_MG))
#define uXm_f32_negMG				(((float)(uXm_f32_negMG))
#define uXm_f32_sqrMG				(((float)(uXm_f32_sqrMG))
#define uXm_f32_cubeMG				(((float)(uXm_f32_cubeMG))
#define uXm_f32_HalfMG				(((float)(uXm_f32_HalfMG))
#define uXm_f32_negHalfMG			(((float)(uXm_f32_negHalfMG))
#define uXm_f32_HalfMGxMG			(((float)(uXm_f32_HalfMGxMG))
#define uXm_f32_HalfMGxsqrMG		    (((float)(uXm_f32_HalfMGxsqrMG))
#define uXm_f32_HalfMGxcubeMG		(((float)(uXm_f32_HalfMGxcubeMG))
#define uXm_f32_negHalfMGxMG		    (((float)(uXm_f32_negHalfMGxMG))
#define uXm_f32_negHalfMGxsqrMG		(((float)(uXm_f32_negHalfMGxsqrMG))
#define uXm_f32_negHalfMGxcubeMG	    (((float)(uXm_f32_negHalfMGxcubeMG))
#define uXm_f32_rcpMG				(((float)(uXm_f32_rcpMG))
#define uXm_f32_rcpsqrMG			    (((float)(uXm_f32_rcpsqrMG))
#define uXm_f32_rcpcubeMG			(((float)(uXm_f32_rcpcubeMG))

#define uXm_f32_E					(((float)(uXm_f32_E))
#define uXm_f32_exp					(((float)(uXm_f32_exp))
#define uXm_f32_log2E				(((float)(uXm_f32_log2E))
#define uXm_f32_log10E				(((float)(uXm_f32_log10E))
#define uXm_f32_rcplog2E			    (((float)(uXm_f32_rcplog2E))
#define uXm_f32_rcplog10E			(((float)(uXm_f32_rcplog10E))

#define uXm_f32_ln2					(((float)(uXm_f32_ln2))
#define uXm_f32_ln10				    (((float)(uXm_f32_ln10))
#define uXm_f32_expest1				(((float)(uXm_f32_expest1))
#define uXm_f32_expest2				(((float)(uXm_f32_expest2))
#define uXm_f32_expest3				(((float)(uXm_f32_expest3))
#define uXm_f32_expest4				(((float)(uXm_f32_expest4))
#define uXm_f32_expest5				(((float)(uXm_f32_expest5))
#define uXm_f32_expest6				(((float)(uXm_f32_expest6))
#define uXm_f32_expest7				(((float)(uXm_f32_expest7))
#define uXm_f32_logest0				(((float)(uXm_f32_logest0))
#define uXm_f32_logest1				(((float)(uXm_f32_logest1))
#define uXm_f32_logest2				(((float)(uXm_f32_logest2))
#define uXm_f32_logest3				(((float)(uXm_f32_logest3))
#define uXm_f32_logest4				(((float)(uXm_f32_logest4))
#define uXm_f32_logest5				(((float)(uXm_f32_logest5))
#define uXm_f32_logest6				(((float)(uXm_f32_logest6))
#define uXm_f32_logest7				(((float)(uXm_f32_logest7))

#define uXm_f32_Pi					(((float)(uXm_f32_Pi))
#define uXm_f32_HalfPi				(((float)(uXm_f32_HalfPi))
#define uXm_f32_2Pi					(((float)(uXm_f32_2Pi))
#define uXm_f32_32negPi				    (((float)(uXm_f32_negPi))
#define uXm_f32_32negHalfPi			    (((float)(uXm_f32_negHalfPi))
#define uXm_f32_32neg2Pi 				(((float)(uXm_f32_neg2Pi))
#define uXm_f32_rcpPi				(((float)(uXm_f32_rcpPi))
#define uXm_f32_rcp2Pi				(((float)(uXm_f32_rcp2Pi))
#define uXm_f32_Pidiv2				(((float)(uXm_f32_Pidiv2))
#define uXm_f32_Pidiv4				(((float)(uXm_f32_Pidiv4))
#define uXm_f32_Gravity				(((float)(uXm_f32_Gravity))
#define uXm_f32_DegtoRad			    (((float)(uXm_f32_DegtoRad))				/ * 0.01745329251994329547; * /
#define uXm_f32_RadtoDeg			    (((float)(uXm_f32_RadtoDeg))				/ * 57.29577951308232286465; * /
#define uXm_f32_KmhtoMPSec			(((float)(uXm_f32_KmhtoMPSec))

#define uXm_f32_DIG					(((float)(uXm_f32_32DECDIG))				/ * 6 * /							/ * # of decimal digits of precision * /
#define uXm_f32_EPS					(((float)(uXm_f32_32EPS))				/ * 1.192092896e-07f * /			/ * smallest such that 1.0+FLT_EPSILON != 1.0 * /
#define uXm_f32_GUARD				(((float)(uXm_f32_32GUARD))
#define uXm_f32_MANT_DIG			    (((float)(uXm_f32_32MANT_DIG))		/ * 24 * /						/ * # of bits in mantissa * /
#define uXm_f32_MANT				    (((float)(uXm_f32_32MANT))			/ * 23 * /						/ * # of bits in mantissa * /
#define	uXm_f32_MAX					(((float)(uXm_f32_32MAX))				/ * 3.402823466e+38F * /			/ * maximum possible float value * /		/ * 3.4028234663852885981170418348452e+38F * /
#define uXm_f32_MAX_DEC_EXP			(((float)(uXm_f32_32MAX_DEC_EXP))		/ * 38 * /						/ * max decimal exponent * /
#define uXm_f32_MAX_EXP				(((float)(uXm_f32_32MAX_EXP))			/ * 128 * /						/ * max binary exponent * /
#define uXm_f32_MIN					(((float)(uXm_f32_32MIN))				/ * 1.175494351e-38F * /			/ * min positive value * /
#define uXm_f32_MIN_DEC_EXP			(((float)(uXm_f32_32MIN_DEC_EXP))		/ * (-37) * /						/ * min decimal exponent * /
#define uXm_f32_MIN_EXP				(((float)(uXm_f32_32MIN_EXP))			/ * (-125) * /					/ * min binary exponent * /
#define uXm_f32_NORM				    (((float)(uXm_f32_32NORM))
#define uXm_f32_RADIX				(((float)(uXm_f32_32RADIX))			/ * 2 * /							/ * exponent radix * /
#define uXm_f32_ROUNDS				(((float)(uXm_f32_32ROUNDS))			/ * 1 * /							/ * addition rounding: near * /
#define uXm_f32_DECDIG				(((float)(uXm_f32_32DECDIG))
#define uXm_f32_HIGH				    (((float)(uXm_f32_32HIGH))*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*           end of single precision marked macro constants            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*          start of double precision marked macro constants           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

#if defined(uXm_USE_DOUBLE_PRECISION)

#define uXm_f32_64_ERROR			    (((double)(uXm_f32_64ERROR))

#define uXm_f32_64_0			        (((double)(uXm_D0))
#define uXm_f32_64_05			        (((double)(uXm_D05))
#define uXm_f32_64_1			        (((double)(uXm_D1))
#define uXm_f32_64_2			        (((double)(uXm_D2))
#define uXm_f32_64_3			        (((double)(uXm_D3))
#define uXm_f32_64_4			        (((double)(uXm_D4))
#define uXm_f32_64_5			        (((double)(uXm_D5))
#define uXm_f32_64_6			        (((double)(uXm_D6))
#define uXm_f32_64_7			        (((double)(uXm_D7))
#define uXm_f32_64_8			        (((double)(uXm_D8))
#define uXm_f32_64_9			        (((double)(uXm_D9))

#define uXm_f32_64_neg0			        (((double)(uXm_Dneg0))
#define uXm_f32_64_neg05			    (((double)(uXm_Dneg05))
#define uXm_f32_64_neg1			        (((double)(uXm_Dneg1))
#define uXm_f32_64_neg2			        (((double)(uXm_Dneg2))
#define uXm_f32_64_neg3			        (((double)(uXm_Dneg3))
#define uXm_f32_64_neg4			        (((double)(uXm_Dneg4))
#define uXm_f32_64_neg5			        (((double)(uXm_Dneg5))
#define uXm_f32_64_neg6			        (((double)(uXm_Dneg6))
#define uXm_f32_64_neg7			        (((double)(uXm_Dneg7))
#define uXm_f32_64_neg8			        (((double)(uXm_Dneg8))
#define uXm_f32_64_neg9			        (((double)(uXm_Dneg9))

#define uXm_f32_64_24_5			        (((double)(uXm_D24_5))
#define uXm_f32_64_45			        (((double)(uXm_D45))
#define uXm_f32_64_90			        (((double)(uXm_D90))
#define uXm_f32_64_180			        (((double)(uXm_D180))
#define uXm_f32_64_360			        (((double)(uXm_D360))

#define uXm_f32_64_neg24_5			    (((double)(uXm_Dneg24_5))
#define uXm_f32_64_neg45			    (((double)(uXm_Dneg45))
#define uXm_f32_64_neg90			    (((double)(uXm_Dneg90))
#define uXm_f32_64_neg180			    (((double)(uXm_Dneg180))
#define uXm_f32_64_neg360			    (((double)(uXm_Dneg360))

#define uXm_f32_64_maxI8				(((double)(uXm_DmaxI8))
#define uXm_f32_64_minI8				(((double)(uXm_DminI8))
#define uXm_f32_64_maxU8				(((double)(uXm_DmaxU8))

#define uXm_f32_64_maxI16				(((double)(uXm_DmaxI16))
#define uXm_f32_64_minI16				(((double)(uXm_DminI16))
#define uXm_f32_64_maxU16				(((double)(uXm_DmaxU16))

#define uXm_f32_64_maxI32				(((double)(uXm_DmaxI32))
#define uXm_f32_64_minI32				(((double)(uXm_DminI32))
#define uXm_f32_64_maxU32				(((double)(uXm_DmaxU32))

#define uXm_f32_64_maxI64				(((double)(uXm_DmaxI64))
#define uXm_f32_64_minI64				(((double)(uXm_DminI64))
#define uXm_f32_64_maxU64				(((double)(uXm_DmaxU64))

#define uXm_f32_64_maxI8xU8				(((double)(uXm_DmaxI8xU8))				/*128.f*256.f*/
#define uXm_f32_64_minI8xU8				(((double)(uXm_DminI8xU8))				/*-128.f*256.f*/
#define uXm_f32_64_maxI8xU16			(((double)(uXm_DmaxI8xU16))				/*128.f*65536.f*/
#define uXm_f32_64_minI8xU16			(((double)(uXm_DminI8xU16))				/*-128.f*65536.f*/
#define uXm_f32_64_maxI16xU16			(((double)(uXm_DmaxI16xU16))				/*32768.f*65536.f*/
#define uXm_f32_64_minI16xU16			(((double)(uXm_DminI16xU16))				/*-32768.f*65536.f*/

#define uXm_f32_64_rcpI16				(((double)(uXm_DrcpI16))					/* 1/maxI16 */
#define uXm_f32_64_rcpU16				(((double)(uXm_DrcpU16))					/* 1/maxU16 */
#define uXm_f32_64_rcpI16xU16			(((double)(uXm_DrcpI16xU16))				/* 1/maxI16xmaxU16 */

#define uXm_f32_64_MG					(((double)(uXm_DMG))
#define uXm_f32_64_negMG				(((double)(uXm_DnegMG))
#define uXm_f32_64_sqrMG				(((double)(uXm_DsqrMG))
#define uXm_f32_64_cubeMG				(((double)(uXm_DcubeMG))
#define uXm_f32_64_HalfMG				(((double)(uXm_DHalfMG))
#define uXm_f32_64_negHalfMG			(((double)(uXm_DnegHalfMG))
#define uXm_f32_64_HalfMGxMG			(((double)(uXm_DHalfMGxMG))
#define uXm_f32_64_HalfMGxsqrMG			(((double)(uXm_DHalfMGxsqrMG))
#define uXm_f32_64_HalfMGxcubeMG		(((double)(uXm_DHalfMGxcubeMG))
#define uXm_f32_64_negHalfMGxMG			(((double)(uXm_DnegHalfMGxMG))
#define uXm_f32_64_negHalfMGxsqrMG		(((double)(uXm_DnegHalfMGxsqrMG))
#define uXm_f32_64_negHalfMGxcubeMG		(((double)(uXm_DnegHalfMGxcubeMG))
#define uXm_f32_64_rcpMG				(((double)(uXm_DrcpMG))
#define uXm_f32_64_rcpsqrMG				(((double)(uXm_DrcpsqrMG))
#define uXm_f32_64_rcpcubeMG			(((double)(uXm_DrcpcubeMG))

#define uXm_f32_64_E					(((double)(uXm_DE))
#define uXm_f32_64_exp					(((double)(uXm_Dexp))
#define uXm_f32_64_log2E				(((double)(uXm_Dlog2E))
#define uXm_f32_64_log10E				(((double)(uXm_Dlog10E))
#define uXm_f32_64_rcplog2E				(((double)(uXm_Drcplog2E))
#define uXm_f32_64_rcplog10E			(((double)(uXm_Drcplog10E))

#define uXm_f32_64_ln2					(((double)(uXm_Dln2))
#define uXm_f32_64_ln10					(((double)(uXm_Dln10))
#define uXm_f32_64_expest1				(((double)(uXm_Dexpest1))
#define uXm_f32_64_expest2				(((double)(uXm_Dexpest2))
#define uXm_f32_64_expest3				(((double)(uXm_Dexpest3))
#define uXm_f32_64_expest4				(((double)(uXm_Dexpest4))
#define uXm_f32_64_expest5				(((double)(uXm_Dexpest5))
#define uXm_f32_64_expest6				(((double)(uXm_Dexpest6))
#define uXm_f32_64_expest7				(((double)(uXm_Dexpest7))
#define uXm_f32_64_logest0				(((double)(uXm_Dlogest0))
#define uXm_f32_64_logest1				(((double)(uXm_Dlogest1))
#define uXm_f32_64_logest2				(((double)(uXm_Dlogest2))
#define uXm_f32_64_logest3				(((double)(uXm_Dlogest3))
#define uXm_f32_64_logest4				(((double)(uXm_Dlogest4))
#define uXm_f32_64_logest5				(((double)(uXm_Dlogest5))
#define uXm_f32_64_logest6				(((double)(uXm_Dlogest6))
#define uXm_f32_64_logest7				(((double)(uXm_Dlogest7))

#define uXm_f32_64_Pi					(((double)(uXm_DPi))
#define uXm_f32_64_HalfPi				(((double)(uXm_DHalfPi))
#define uXm_f32_64_2Pi					(((double)(uXm_D2Pi))
#define uXm_f32_64negPi					(((double)(uXm_DnegPi))
#define uXm_f32_64negHalfPi				(((double)(uXm_DnegHalfPi))
#define uXm_f32_64neg2Pi 				(((double)(uXm_Dneg2Pi))
#define uXm_f32_64_rcpPi				(((double)(uXm_DrcpPi))
#define uXm_f32_64_rcp2Pi				(((double)(uXm_Drcp2Pi))
#define uXm_f32_64_Pidiv2				(((double)(uXm_DPidiv2))
#define uXm_f32_64_Pidiv4				(((double)(uXm_DPidiv4))
#define uXm_f32_64_Gravity				(((double)(uXm_DGravity))
#define uXm_f32_64_DegtoRad				(((double)(uXm_DDegtoRad))				/* 0.01745329251994329547; */
#define uXm_f32_64_RadtoDeg				(((double)(uXm_DRadtoDeg))			/* 57.29577951308232286465; */
#define uXm_f32_64_KmhtoMPSec			(((double)(uXm_DKmhtoMPSec))

// #define uXm_f32_64_divDegtoRad		(((double)(uXm_f32_64_Pi / 180.f))
// #define uXm_f32_64_divRadtoDeg		(((double)(180.f / uXm_f32_64_Pi))

#define uXm_f32_64_DIG					(((double)(uXm_f32_64DECDIG))				/* 15 */						/* # of decimal digits of precision */
#define uXm_f32_64_EPS					(((double)(uXm_f32_64EPS))				/* 2.2204460492503131e-016 */	/* smallest such that 1.0+DBL_EPSILON != 1.0 */
#define uXm_f32_64_GUARD				(((double)(uXm_f32_64GUARD))
#define uXm_f32_64_MANT_DIG				(((double)(uXm_f32_64MANT_DIG))			/* 53 */						/* # of bits in mantissa */
#define	uXm_f32_64_MAX					(((double)(uXm_f32_64MAX))				/* 1.7976931348623158e+308 */	/* maximum possible double value */
#define uXm_f32_64_MAX_DEC_EXP			(((double)(uXm_f32_64MAX_DEC_EXP))		/* 308 */						/* max decimal exponent */
#define uXm_f32_64_MAX_EXP				(((double)(uXm_f32_64MAX_EXP))			/* 1024 */						/* max binary exponent */
#define uXm_f32_64_MIN					(((double)(uXm_f32_64MIN))				/* 2.2250738585072014e-308 */	/* min positive value */
#define uXm_f32_64_MIN_DEC_EXP			(((double)(uXm_f32_64MIN_DEC_EXP))		/* (-307) */					/* min decimal exponent */
#define uXm_f32_64_MIN_EXP				(((double)(uXm_f32_64MIN_EXP))			/* (-1021) */					/* min binary exponent */
#define uXm_f32_64_NORM					(((double)(uXm_f32_64NORM))
#define uXm_f32_64_RADIX				(((double)(uXm_f32_64RADIX))			/* 2 */							/* exponent radix */
#define uXm_f32_64_ROUNDS				(((double)(uXm_f32_64ROUNDS))			/* 1 */							/* addition rounding: near */
#define uXm_f32_64_DECDIG				(((double)(uXm_f32_64DECDIG))											/* double rounded to decimal and back */
#define uXm_f32_64_HIGH					(((double)(uXm_f32_64HIGH))

#endif

#ifndef uXm_REAL_USE_F64
# define uXm_REAL_MAX					(((float)(uXm_REALMAX))
# define uXm_REAL_MIN					(((float)(uXm_REALMIN))
# define uXm_REAL_EPS					(((float)(uXm_REALEPS))
# define uXm_REAL_NORMEPS				(((float)(uXm_REALNORM_EPS))
# define uXm_REAL_HIGH					(((float)(uXm_REALHIGH))
#else
# define uXm_REAL_MAX					(((double)(uXm_REALMAX))
# define uXm_REAL_MIN					(((double)(uXm_REALMIN))
# define uXm_REAL_EPS					(((double)(uXm_REALEPS))
# define uXm_REAL_NORMEPS				(((double)(uXm_REALNORM_EPS))
# define uXm_REAL_HIGH					(((double)(uXm_REALHIGH))
#endif

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*           end of double precision marked macro constants            */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        uXm_I32 macro constants                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uXm_I32_0				((__int32)(0))
#define uXm_I32_1				((__int32)(1))
#define uXm_I32_neg1			((__int32)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        uXm_I64 macro constants                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uXm_I64_0				((__int64)(0))
#define uXm_I64_1				((__int64)(1))
#define uXm_I64_neg1			((__int64)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        uXm_I16 macro constants                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uXm_I16_0				((__int16)(0))
#define uXm_I16_1				((__int16)(1))
#define uXm_I16_neg1			((__int16)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        uXm_I8 macro constants                        */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uXm_I8_0				((__int8)(0))
#define uXm_I8_1				((__int8)(1))
#define uXm_I8_neg1				((__int8)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        uXm_U32 macro constants                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uXm_U32_0					((unsigned __int32)(0))
#define uXm_U32_1					((unsigned __int32)(1))
#define uXm_U32_neg1				((unsigned __int32)(-1))

#define uXm_U32_select_0			((unsigned __int32)(0x00000000))
#define uXm_U32_select_1			((unsigned __int32)(0xffffffff))

#define uXm_U32_PERMUTE_0X			((unsigned __int32)(0))
#define uXm_U32_PERMUTE_0Y			((unsigned __int32)(1))
#define uXm_U32_PERMUTE_0Z			((unsigned __int32)(2))
#define uXm_U32_PERMUTE_0W			((unsigned __int32)(3))
#define uXm_U32_PERMUTE_1X			((unsigned __int32)(4))
#define uXm_U32_PERMUTE_1Y			((unsigned __int32)(5))
#define uXm_U32_PERMUTE_1Z			((unsigned __int32)(6))
#define uXm_U32_PERMUTE_1W			((unsigned __int32)(7))

#define uXm_U32_SWIZZLE_X			((unsigned __int32)(0))
#define uXm_U32_SWIZZLE_Y			((unsigned __int32)(1))
#define uXm_U32_SWIZZLE_Z			((unsigned __int32)(2))
#define uXm_U32_SWIZZLE_W			((unsigned __int32)(3))

#define uXm_U32_CRMASK_CR6			((unsigned __int32)(0x000000f0))
#define uXm_U32_CRMASK_CR6TRUE		((unsigned __int32)(0x00000080))
#define uXm_U32_CRMASK_CR6FALSE		((unsigned __int32)(0x00000020))
#define uXm_U32_CRMASK_CR6BOUNDS	uXm_U32_CRMASK_CR6FALSE

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        uXm_U64 macro constants                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uXm_U64_0					((unsigned __int64)(0))
#define uXm_U64_1					((unsigned __int64)(1))
#define uXm_U64_neg1				((unsigned __int64)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        uXm_U16 macro constants                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uXm_U16_0					((unsigned __int16)(0))
#define uXm_U16_1					((unsigned __int16)(1))
#define uXm_U16_neg1				((unsigned __int16)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                        uXm_U8 macro constants                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
#define uXm_U8_0					((unsigned __int8)(0))
#define uXm_U8_1					((unsigned __int8)(1))
#define uXm_U8_neg1					((unsigned __int8)(-1))

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                     UNALIGNED macro constants                       */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

// sample use uXm_f32_CONST(Name, valor)
// unaligned or aligned const gets expanded to uXmfloat_Name
#define uXm_f32_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN(float uXmfloat_##Name)  = ( Val );

#ifdef uXm_USE_DOUBLE_PRECISION
// unaligned or aligned const gets expanded to uXmdouble_Name
#define uXm_f32_64_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN(double uXmdouble_##Name)  = ( Val );
#endif

// unaligned or aligned const gets expanded to uXmint8_Name
#define uXm_I8_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN(__int8 uXmint8_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXmint16_Name
#define uXm_I16_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN(__int16 uXmint16_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXmint32_Name
#define uXm_I32_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN(__int32 uXmint32_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXmint64_Name
#define uXm_I64_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN(__int64 uXmint64_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXmuint8_Name
#define uXm_U8_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int8 uXmuint8_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXmuint16_Name
#define uXm_U16_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int16 uXmuint16_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXmuint32_Name
#define uXm_U32_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXmuint32_##Name)  = ( Val );

// unaligned or aligned const gets expanded to uXmuint64_Name
#define uXm_U64_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int64 uXmuint64_##Name)  = ( Val );

#ifndef uXm_REAL_USE_F64
// unaligned or aligned const gets expanded to uXmreal_Name
#define uXm_REAL_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN(float uXmreal_##Name)  = ( Val );
#else
// unaligned or aligned const gets expanded to uXmreal_Name
#define uXm_REAL_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN(double uXmreal_##Name)  = ( Val );
#endif

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                      ALIGNED macro constants                        */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

// Natural Alignment to the base type
// sample use uXm_f32_32NA_CONST(Name, valor)
// natural aligned const gets expanded to uXmfloatna_Name
#define uXm_f32_32NA_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN4(float uXmfloatna_##Name)  = ( Val );

#ifdef uXm_USE_DOUBLE_PRECISION
// natural aligned const gets expanded to uXmdoublena_Name
#define uXm_f32_64NA_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN8(double uXmdoublena_##Name)  = ( Val );
#endif

// natural aligned const gets expanded to uXmint8na_Name
#define uXm_I8NA_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN1(__int8 uXmint8na_##Name)  = ( Val );

// natural aligned const gets expanded to uXmint16na_Name
#define uXm_I16NA_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN2(__int16 uXmint16na_##Name)  = ( Val );

// natural aligned const gets expanded to uXmint32na_Name
#define uXm_I32NA_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN4(__int32 uXmint32na_##Name)  = ( Val );

// natural aligned const gets expanded to uXmint64na_Name
#define uXm_I64NA_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN8(__int64 uXmint64na_##Name)  = ( Val );

// natural aligned const gets expanded to uXmuint8na_Name
#define uXm_U8NA_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN1(unsigned __int8 uXmuint8na_##Name)  = ( Val );

// natural aligned const gets expanded to uXmuint16na_Name
#define uXm_U16NA_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN2(unsigned __int16 uXmuint16na_##Name)  = ( Val );

// natural aligned const gets expanded to uXmuint32na_Name
#define uXm_U32NA_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN4(unsigned __int32 uXmuint32na_##Name)  = ( Val );

// natural aligned const gets expanded to uXmuint64na_Name
#define uXm_U64NA_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN8(unsigned __int64 uXmuint64na_##Name)  = ( Val );

#ifndef uXm_REAL_USE_F64
// natural aligned const gets expanded to uXmrealna_Name
#define uXm_REALNA_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN4(float uXmrealna_##Name)  = ( Val );
#else
// natural aligned const gets expanded to uXmrealna_Name
#define uXm_REALNA_CONST(Name, Val)                                      \
  uXm_NMGLOBAL_CONST uXm_NMALIGN8(double uXmrealna_##Name)  = ( Val );
#endif

#include "uXmMisc.h"

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         uXm_f32_32 constants                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

// unaligned or aligned

uXm_f32_CONST(Magic, uXm_f32_Magic)
uXm_f32_CONST(Sign, uXm_f32_Sign)
uXm_f32_CONST(invSign, uXm_f32_invSign)

uXm_f32_CONST(Byte, uXm_f32_Byte)
uXm_f32_CONST(4Low, uXm_f32_4Low)
uXm_f32_CONST(4High, uXm_f32_4High)
uXm_f32_CONST(flip4, uXm_f32_flip4)
uXm_f32_CONST(8Low, uXm_f32_8Low)
uXm_f32_CONST(8High, uXm_f32_8High)
uXm_f32_CONST(flip8, uXm_f32_flip8)
uXm_f32_CONST(16Low, uXm_f32_16Low)
uXm_f32_CONST(16High, uXm_f32_16High)
uXm_f32_CONST(flip16, uXm_f32_flip16)
uXm_f32_CONST(24Low, uXm_f32_24Low)
uXm_f32_CONST(24High, uXm_f32_24High)
uXm_f32_CONST(flip24, uXm_f32_flip24)
uXm_f32_CONST(28Low, uXm_f32_28Low)
uXm_f32_CONST(28High, uXm_f32_28High)
uXm_f32_CONST(flip28, uXm_f32_flip28)

uXm_f32_CONST(Inf, uXm_f32_Inf)
uXm_f32_CONST(invInf, uXm_f32_invInf)
uXm_f32_CONST(negInf, uXm_f32_negInf)
uXm_f32_CONST(NaN, uXm_f32_NaN)
uXm_f32_CONST(QNaN, uXm_f32_QNaN)
uXm_f32_CONST(negQNaN, uXm_f32_negQNaN)
uXm_f32_CONST(NaNTest, uXm_f32_NaNTest)
uXm_f32_CONST(Abs, uXm_f32_Abs)
uXm_f32_CONST(fltMin, uXm_f32_Min)
uXm_f32_CONST(fltMax, uXm_f32_Max)
uXm_f32_CONST(MinDenorm, uXm_f32_MinDenorm)
uXm_f32_CONST(DenormLimit, uXm_f32_DenormLimit)
uXm_f32_CONST(MinNormal, uXm_f32_MinNormal)
uXm_f32_CONST(MaxNormal, uXm_f32_MaxNormal)

//uXm_f32_CONST(ExpBias2, uXm_f32_ExpBias)
//uXm_f32_CONST(ExpM1div3, uXm_f32_ExpM1div3)

uXm_f32_CONST(bin128, uXm_f32_bin128)
uXm_f32_CONST(binneg150, uXm_f32_binneg150)

/*
uXm_f32_CONST(Max, uXm_f32_Max)
uXm_f32_CONST(Min, uXm_f32_Min)
uXm_f32_CONST(DecDig, uXm_f32_DecDig)
uXm_f32_CONST(negDecDig, uXm_f32_negDecDig)
uXm_f32_CONST(Mant, uXm_f32_Mant)
uXm_f32_CONST(negMant, uXm_f32_negMant)
uXm_f32_CONST(maxDecDigExp, uXm_f32_maxDecDigExp)
uXm_f32_CONST(negmaxDecDigExp, uXm_f32_negmaxDecDigExp)
uXm_f32_CONST(minDecDigExp, uXm_f32_minDecDigExp)
uXm_f32_CONST(maxExp, uXm_f32_maxExp)
uXm_f32_CONST(minExp, uXm_f32_minExp)
uXm_f32_CONST(Radix, uXm_f32_Radix)
uXm_f32_CONST(MantPow2, uXm_f32_32MantPow2)
uXm_f32_CONST(MaxMantPow2, uXm_f32_32MaxMantPow2)
uXm_f32_CONST(High, uXm_f32_32High)
uXm_f32_CONST(SmallNorm, uXm_f32_32SmallNorm)
uXm_f32_CONST(Eps, uXm_f32_32Eps)
uXm_f32_CONST(Epsilon, uXm_f32_32Eps)
uXm_f32_CONST(NormEps, uXm_f32_32NormEps)*/

uXm_f32_CONST(0, uXm_f32_0)
uXm_f32_CONST(05, uXm_f32_05)
uXm_f32_CONST(1, uXm_f32_1)
uXm_f32_CONST(2, uXm_f32_2)
uXm_f32_CONST(3, uXm_f32_3)
uXm_f32_CONST(4, uXm_f32_4)
uXm_f32_CONST(5, uXm_f32_5)
uXm_f32_CONST(6, uXm_f32_6)
uXm_f32_CONST(7, uXm_f32_7)
uXm_f32_CONST(8, uXm_f32_8)
uXm_f32_CONST(9, uXm_f32_9)

uXm_f32_CONST(neg0, uXm_f32_neg0)
uXm_f32_CONST(neg05, uXm_f32_neg05)
uXm_f32_CONST(neg1, uXm_f32_neg1)
uXm_f32_CONST(neg2, uXm_f32_neg2)
uXm_f32_CONST(neg3, uXm_f32_neg3)
uXm_f32_CONST(neg4, uXm_f32_neg4)
uXm_f32_CONST(neg5, uXm_f32_neg5)
uXm_f32_CONST(neg6, uXm_f32_neg6)
uXm_f32_CONST(neg7, uXm_f32_neg7)
uXm_f32_CONST(neg8, uXm_f32_neg8)
uXm_f32_CONST(neg9, uXm_f32_neg9)

uXm_f32_CONST(24_5, uXm_f32_24_5)
uXm_f32_CONST(45, uXm_f32_45)
uXm_f32_CONST(90, uXm_f32_90)
uXm_f32_CONST(180, uXm_f32_180)
uXm_f32_CONST(360, uXm_f32_360)

uXm_f32_CONST(neg24_5, uXm_f32_neg24_5)
uXm_f32_CONST(neg45, uXm_f32_neg45)
uXm_f32_CONST(neg90, uXm_f32_neg90)
uXm_f32_CONST(neg180, uXm_f32_neg180)
uXm_f32_CONST(neg360, uXm_f32_neg360)

uXm_f32_CONST(maxRand, uXm_f32_maxRand)

uXm_f32_CONST(maxI8, uXm_f32_maxI8)
uXm_f32_CONST(minI8, uXm_f32_minI8)
uXm_f32_CONST(maxU8, uXm_f32_maxU8)
uXm_f32_CONST(maxI16, uXm_f32_maxI16)
uXm_f32_CONST(minI16, uXm_f32_minI16)
uXm_f32_CONST(maxU16, uXm_f32_maxU16)
uXm_f32_CONST(maxI32, uXm_f32_maxI32)
uXm_f32_CONST(minI32, uXm_f32_minI32)
uXm_f32_CONST(minU32, uXm_f32_maxU32)

uXm_f32_CONST(maxI8xU8, uXm_f32_maxI8xU8)
uXm_f32_CONST(minI8xU8, uXm_f32_minI8xU8)
uXm_f32_CONST(maxI8xU16, uXm_f32_maxI8xU16)
uXm_f32_CONST(minI8xU16, uXm_f32_minI8xU16)
uXm_f32_CONST(maxI16xU16, uXm_f32_maxI16xU16)
uXm_f32_CONST(minI16xU16, uXm_f32_minI16xU16)

uXm_f32_CONST(rcpI16, uXm_f32_rcpI16)
uXm_f32_CONST(rcpU16, uXm_f32_rcpU16)
uXm_f32_CONST(rcpI16xU16, uXm_f32_rcpI16xU16)

uXm_f32_CONST(MG, uXm_f32_MG)
uXm_f32_CONST(negMG, uXm_f32_negMG)
uXm_f32_CONST(sqrMG, uXm_f32_sqrMG)
uXm_f32_CONST(cubeMG, uXm_f32_cubeMG)
uXm_f32_CONST(HalfMG, uXm_f32_HalfMG)
uXm_f32_CONST(negHalfMG, uXm_f32_negHalfMG)
uXm_f32_CONST(HalfMGxMG, uXm_f32_HalfMGxMG)
uXm_f32_CONST(HalfMGxsqrMG, uXm_f32_HalfMGxsqrMG)
uXm_f32_CONST(HalfMGxcubeMG, uXm_f32_HalfMGxcubeMG)
uXm_f32_CONST(negHalfMGxMG, uXm_f32_negHalfMGxMG)
uXm_f32_CONST(negHalfMGxsqrMG, uXm_f32_negHalfMGxsqrMG)
uXm_f32_CONST(negHalfMGxcubeMG, uXm_f32_negHalfMGxcubeMG)
uXm_f32_CONST(rcpMG, uXm_f32_rcpMG)
uXm_f32_CONST(rcpsqrMG, uXm_f32_rcpsqrMG)
uXm_f32_CONST(rcpcubeMG, uXm_f32_rcpcubeMG)

uXm_f32_CONST(E, uXm_f32_E)
uXm_f32_CONST(exp, uXm_f32_exp)
uXm_f32_CONST(log2E, uXm_f32_log2E)
uXm_f32_CONST(log10E, uXm_f32_log10E)
uXm_f32_CONST(rcplog2E, uXm_f32_rcplog2E)
uXm_f32_CONST(rcplog10E, uXm_f32_rcplog10E)
uXm_f32_CONST(ln2, uXm_f32_ln2)
uXm_f32_CONST(ln10, uXm_f32_ln10)
uXm_f32_CONST(expest1, uXm_f32_expest1)
uXm_f32_CONST(expest2, uXm_f32_expest2)
uXm_f32_CONST(expest3, uXm_f32_expest3)
uXm_f32_CONST(expest4, uXm_f32_expest4)
uXm_f32_CONST(expest5, uXm_f32_expest5)
uXm_f32_CONST(expest6, uXm_f32_expest6)
uXm_f32_CONST(expest7, uXm_f32_expest7)
uXm_f32_CONST(logest0, uXm_f32_logest0)
uXm_f32_CONST(logest1, uXm_f32_logest1)
uXm_f32_CONST(logest2, uXm_f32_logest2)
uXm_f32_CONST(logest3, uXm_f32_logest3)
uXm_f32_CONST(logest4, uXm_f32_logest4)
uXm_f32_CONST(logest5, uXm_f32_logest5)
uXm_f32_CONST(logest6, uXm_f32_logest6)
uXm_f32_CONST(logest7, uXm_f32_logest7)

uXm_f32_CONST(Pi, uXm_f32_Pi)
uXm_f32_CONST(HalfPi, uXm_f32_HalfPi)
uXm_f32_CONST(2Pi, uXm_f32_2Pi)
uXm_f32_CONST(negPi, uXm_f32_negPi)
uXm_f32_CONST(negHalfPi, uXm_f32_negHalfPi)
uXm_f32_CONST(neg2Pi, uXm_f32_neg2Pi)
uXm_f32_CONST(rcpPi, uXm_f32_rcpPi)
uXm_f32_CONST(rcp2Pi, uXm_f32_rcp2Pi)
uXm_f32_CONST(Pidiv2, uXm_f32_Pidiv2)
uXm_f32_CONST(Pidiv4, uXm_f32_Pidiv4)
/*uXm_f32_CONST(Gravity, uXm_f32_Gravity)*/
uXm_f32_CONST(DegtoRad, uXm_f32_DegtoRad)
uXm_f32_CONST(RadtoDeg, uXm_f32_RadtoDeg)
/*uXm_f32_CONST(KmhtoMPSec, uXm_f32_KmhtoMPSec)*/

uXm_f32_CONST(Max, uXm_f32_32MAX)
uXm_f32_CONST(Min, uXm_f32_32MIN)
uXm_f32_CONST(Eps, uXm_f32_32EPS)
uXm_f32_CONST(Epsilon, uXm_f32_32EPS)
uXm_f32_CONST(Radix, uXm_f32_32RADIX)
uXm_f32_CONST(NormEps, uXm_f32_32NORM_EPS)
uXm_f32_CONST(High, uXm_f32_32HIGH)

#undef uXm_f32_CONST

// natural alignment to the base type

uXm_f32_32NA_CONST(0, uXm_f32_0)
uXm_f32_32NA_CONST(05, uXm_f32_05)
uXm_f32_32NA_CONST(1, uXm_f32_1)
uXm_f32_32NA_CONST(2, uXm_f32_2)
uXm_f32_32NA_CONST(3, uXm_f32_3)
uXm_f32_32NA_CONST(4, uXm_f32_4)
uXm_f32_32NA_CONST(5, uXm_f32_5)
uXm_f32_32NA_CONST(6, uXm_f32_6)
uXm_f32_32NA_CONST(7, uXm_f32_7)
uXm_f32_32NA_CONST(8, uXm_f32_8)
uXm_f32_32NA_CONST(9, uXm_f32_9)

uXm_f32_32NA_CONST(neg0, uXm_f32_neg0)
uXm_f32_32NA_CONST(neg05, uXm_f32_neg05)
uXm_f32_32NA_CONST(neg1, uXm_f32_neg1)
uXm_f32_32NA_CONST(neg2, uXm_f32_neg2)
uXm_f32_32NA_CONST(neg3, uXm_f32_neg3)
uXm_f32_32NA_CONST(neg4, uXm_f32_neg4)
uXm_f32_32NA_CONST(neg5, uXm_f32_neg5)
uXm_f32_32NA_CONST(neg6, uXm_f32_neg6)
uXm_f32_32NA_CONST(neg7, uXm_f32_neg7)
uXm_f32_32NA_CONST(neg8, uXm_f32_neg8)
uXm_f32_32NA_CONST(neg9, uXm_f32_neg9)

uXm_f32_32NA_CONST(24_5, uXm_f32_24_5)
uXm_f32_32NA_CONST(45, uXm_f32_45)
uXm_f32_32NA_CONST(90, uXm_f32_90)
uXm_f32_32NA_CONST(180, uXm_f32_180)
uXm_f32_32NA_CONST(360, uXm_f32_360)

uXm_f32_32NA_CONST(neg24_5, uXm_f32_neg24_5)
uXm_f32_32NA_CONST(neg45, uXm_f32_neg45)
uXm_f32_32NA_CONST(neg90, uXm_f32_neg90)
uXm_f32_32NA_CONST(neg180, uXm_f32_neg180)
uXm_f32_32NA_CONST(neg360, uXm_f32_neg360)

uXm_f32_32NA_CONST(RandMax, uXm_f32_maxI16)

uXm_f32_32NA_CONST(maxI8, uXm_f32_maxI8)
uXm_f32_32NA_CONST(minI8, uXm_f32_minI8)
uXm_f32_32NA_CONST(maxU8, uXm_f32_maxU8)
uXm_f32_32NA_CONST(maxI16, uXm_f32_maxI16)
uXm_f32_32NA_CONST(minI16, uXm_f32_minI16)
uXm_f32_32NA_CONST(maxU16, uXm_f32_maxU16)
uXm_f32_32NA_CONST(maxI32, uXm_f32_maxI32)
uXm_f32_32NA_CONST(minI32, uXm_f32_minI32)
uXm_f32_32NA_CONST(minU32, uXm_f32_maxU32)


uXm_f32_32NA_CONST(maxI8xU8, uXm_f32_maxI8xU8)
uXm_f32_32NA_CONST(minI8xU8, uXm_f32_minI8xU8)
uXm_f32_32NA_CONST(maxI8xU16, uXm_f32_maxI8xU16)
uXm_f32_32NA_CONST(minI8xU16, uXm_f32_minI8xU16)
uXm_f32_32NA_CONST(maxI16xU16, uXm_f32_maxI16xU16)
uXm_f32_32NA_CONST(minI16xU16, uXm_f32_minI16xU16)

uXm_f32_32NA_CONST(rcpI16, uXm_f32_rcpI16)
uXm_f32_32NA_CONST(rcpU16, uXm_f32_rcpU16)
uXm_f32_32NA_CONST(rcpI16xU16, uXm_f32_rcpI16xU16)

uXm_f32_32NA_CONST(MG, uXm_f32_MG)
uXm_f32_32NA_CONST(negMG, uXm_f32_negMG)
uXm_f32_32NA_CONST(sqrMG, uXm_f32_sqrMG)
uXm_f32_32NA_CONST(cubeMG, uXm_f32_cubeMG)
uXm_f32_32NA_CONST(HalfMG, uXm_f32_HalfMG)
uXm_f32_32NA_CONST(negHalfMG, uXm_f32_negHalfMG)
uXm_f32_32NA_CONST(HalfMGxMG, uXm_f32_HalfMGxMG)
uXm_f32_32NA_CONST(HalfMGxsqrMG, uXm_f32_HalfMGxsqrMG)
uXm_f32_32NA_CONST(HalfMGxcubeMG, uXm_f32_HalfMGxcubeMG)
uXm_f32_32NA_CONST(negHalfMGxMG, uXm_f32_negHalfMGxMG)
uXm_f32_32NA_CONST(negHalfMGxsqrMG, uXm_f32_negHalfMGxsqrMG)
uXm_f32_32NA_CONST(negHalfMGxcubeMG, uXm_f32_negHalfMGxcubeMG)
uXm_f32_32NA_CONST(rcpMG, uXm_f32_rcpMG)
uXm_f32_32NA_CONST(rcpsqrMG, uXm_f32_rcpsqrMG)
uXm_f32_32NA_CONST(rcpcubeMG, uXm_f32_rcpcubeMG)

uXm_f32_32NA_CONST(E, uXm_f32_E)
uXm_f32_32NA_CONST(exp, uXm_f32_exp)
uXm_f32_32NA_CONST(log2E, uXm_f32_log2E)
uXm_f32_32NA_CONST(log10E, uXm_f32_log10E)
uXm_f32_32NA_CONST(rcplog2E, uXm_f32_rcplog2E)
uXm_f32_32NA_CONST(rcplog10E, uXm_f32_rcplog10E)
uXm_f32_32NA_CONST(ln2, uXm_f32_ln2)
uXm_f32_32NA_CONST(ln10, uXm_f32_ln10)
uXm_f32_32NA_CONST(expest1, uXm_f32_expest1)
uXm_f32_32NA_CONST(expest2, uXm_f32_expest2)
uXm_f32_32NA_CONST(expest3, uXm_f32_expest3)
uXm_f32_32NA_CONST(expest4, uXm_f32_expest4)
uXm_f32_32NA_CONST(expest5, uXm_f32_expest5)
uXm_f32_32NA_CONST(expest6, uXm_f32_expest6)
uXm_f32_32NA_CONST(expest7, uXm_f32_expest7)
uXm_f32_32NA_CONST(logest0, uXm_f32_logest0)
uXm_f32_32NA_CONST(logest1, uXm_f32_logest1)
uXm_f32_32NA_CONST(logest2, uXm_f32_logest2)
uXm_f32_32NA_CONST(logest3, uXm_f32_logest3)
uXm_f32_32NA_CONST(logest4, uXm_f32_logest4)
uXm_f32_32NA_CONST(logest5, uXm_f32_logest5)
uXm_f32_32NA_CONST(logest6, uXm_f32_logest6)
uXm_f32_32NA_CONST(logest7, uXm_f32_logest7)

uXm_f32_32NA_CONST(Pi, uXm_f32_Pi)
uXm_f32_32NA_CONST(HalfPi, uXm_f32_HalfPi)
uXm_f32_32NA_CONST(2Pi, uXm_f32_2Pi)
uXm_f32_32NA_CONST(negPi, uXm_f32_negPi)
uXm_f32_32NA_CONST(negHalfPi, uXm_f32_negHalfPi)
uXm_f32_32NA_CONST(neg2Pi, uXm_f32_neg2Pi)
uXm_f32_32NA_CONST(rcpPi, uXm_f32_rcpPi)
uXm_f32_32NA_CONST(rcp2Pi, uXm_f32_rcp2Pi)
uXm_f32_32NA_CONST(Pidiv2, uXm_f32_Pidiv2)
uXm_f32_32NA_CONST(Pidiv4, uXm_f32_Pidiv4)
/*uXm_f32_32NA_CONST(Gravity, uXm_f32_Gravity)*/
uXm_f32_32NA_CONST(DegtoRad, uXm_f32_DegtoRad)
uXm_f32_32NA_CONST(RadtoDeg, uXm_f32_RadtoDeg)
/*uXm_f32_32NA_CONST(KmhtoMPSec, uXm_f32_KmhtoMPSec)*/

uXm_f32_32NA_CONST(Max, uXm_f32_32MAX)
uXm_f32_32NA_CONST(Min, uXm_f32_32MIN)
uXm_f32_32NA_CONST(Eps, uXm_f32_32EPS)
uXm_f32_32NA_CONST(Epsilon, uXm_f32_32EPS)
uXm_f32_32NA_CONST(Radix, uXm_f32_32RADIX)
uXm_f32_32NA_CONST(NormEps, uXm_f32_32NORM_EPS)
uXm_f32_32NA_CONST(High, uXm_f32_32HIGH)

#undef uXm_f32_32NA_CONST

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                         uXm_f32_64 constants                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

#if defined(uXm_USE_DOUBLE_PRECISION)

// sample use if needs alignment! 
// for other sizes check uXmBaseDefs header
/*double uXm_ALIGN16DECL(aof) = uXm_f32_64_0);*/

uXm_f32_64_CONST(0, uXm_D0)
uXm_f32_64_CONST(05, uXm_D05)
uXm_f32_64_CONST(1, uXm_D1)
uXm_f32_64_CONST(2, uXm_D2)
uXm_f32_64_CONST(3, uXm_D3)
uXm_f32_64_CONST(4, uXm_D4)
uXm_f32_64_CONST(5, uXm_D5)
uXm_f32_64_CONST(6, uXm_D6)
uXm_f32_64_CONST(7, uXm_D7)
uXm_f32_64_CONST(8, uXm_D8)
uXm_f32_64_CONST(9, uXm_D9)

uXm_f32_64_CONST(neg0, uXm_Dneg0)
uXm_f32_64_CONST(neg05, uXm_Dneg05)
uXm_f32_64_CONST(neg1, uXm_Dneg1)
uXm_f32_64_CONST(neg2, uXm_Dneg2)
uXm_f32_64_CONST(neg3, uXm_Dneg3)
uXm_f32_64_CONST(neg4, uXm_Dneg4)
uXm_f32_64_CONST(neg5, uXm_Dneg5)
uXm_f32_64_CONST(neg6, uXm_Dneg6)
uXm_f32_64_CONST(neg7, uXm_Dneg7)
uXm_f32_64_CONST(neg8, uXm_Dneg8)
uXm_f32_64_CONST(neg9, uXm_Dneg9)

uXm_f32_64_CONST(24_5, uXm_D24_5)
uXm_f32_64_CONST(45, uXm_D45)
uXm_f32_64_CONST(90, uXm_D90)
uXm_f32_64_CONST(180, uXm_D180)
uXm_f32_64_CONST(360, uXm_D360)

uXm_f32_64_CONST(neg24_5, uXm_Dneg24_5)
uXm_f32_64_CONST(neg45, uXm_Dneg45)
uXm_f32_64_CONST(neg90, uXm_Dneg90)
uXm_f32_64_CONST(neg180, uXm_Dneg180)
uXm_f32_64_CONST(neg360, uXm_Dneg360)

uXm_f32_64_CONST(RandMax, uXm_DmaxI16)

uXm_f32_64_CONST(maxI8, uXm_DmaxI8)
uXm_f32_64_CONST(minI8, uXm_DminI8)
uXm_f32_64_CONST(maxU8, uXm_DmaxU8)
uXm_f32_64_CONST(maxI16, uXm_DmaxI16)
uXm_f32_64_CONST(minI16, uXm_DminI16)
uXm_f32_64_CONST(maxU16, uXm_DmaxU16)
uXm_f32_64_CONST(maxI32, uXm_DmaxI32)
uXm_f32_64_CONST(minI32, uXm_DminI32)
uXm_f32_64_CONST(minU32, uXm_DmaxU32)
uXm_f32_64_CONST(maxI64, uXm_DmaxI64)
uXm_f32_64_CONST(minI64, uXm_DminI64)
uXm_f32_64_CONST(maxU64, uXm_DmaxU64)

uXm_f32_64_CONST(maxI8xU8, uXm_DmaxI8xU8)
uXm_f32_64_CONST(minI8xU8, uXm_DminI8xU8)
uXm_f32_64_CONST(maxI8xU16, uXm_DmaxI8xU16)
uXm_f32_64_CONST(minI8xU16, uXm_DminI8xU16)
uXm_f32_64_CONST(maxI16xU16, uXm_DmaxI16xU16)
uXm_f32_64_CONST(minI16xU16, uXm_DminI16xU16)

uXm_f32_64_CONST(rcpI16, uXm_DrcpI16)
uXm_f32_64_CONST(rcpU16, uXm_DrcpU16)
uXm_f32_64_CONST(rcpI16xU16, uXm_DrcpI16xU16)

uXm_f32_64_CONST(MG, uXm_DMG)
uXm_f32_64_CONST(negMG, uXm_DnegMG)
uXm_f32_64_CONST(sqrMG, uXm_DsqrMG)
uXm_f32_64_CONST(cubeMG, uXm_DcubeMG)
uXm_f32_64_CONST(HalfMG, uXm_DHalfMG)
uXm_f32_64_CONST(negHalfMG, uXm_DnegHalfMG)
uXm_f32_64_CONST(HalfMGxMG, uXm_DHalfMGxMG)
uXm_f32_64_CONST(HalfMGxsqrMG, uXm_DHalfMGxsqrMG)
uXm_f32_64_CONST(HalfMGxcubeMG, uXm_DHalfMGxcubeMG)
uXm_f32_64_CONST(negHalfMGxMG, uXm_DnegHalfMGxMG)
uXm_f32_64_CONST(negHalfMGxsqrMG, uXm_DnegHalfMGxsqrMG)
uXm_f32_64_CONST(negHalfMGxcubeMG, uXm_DnegHalfMGxcubeMG)
uXm_f32_64_CONST(rcpMG, uXm_DrcpMG)
uXm_f32_64_CONST(rcpsqrMG, uXm_DrcpsqrMG)
uXm_f32_64_CONST(rcpcubeMG, uXm_DrcpcubeMG)

uXm_f32_64_CONST(E, uXm_DE)
uXm_f32_64_CONST(exp, uXm_Dexp)
uXm_f32_64_CONST(log2E, uXm_Dlog2E)
uXm_f32_64_CONST(log10E, uXm_Dlog10E)
uXm_f32_64_CONST(rcplog2E, uXm_Drcplog2E)
uXm_f32_64_CONST(rcplog10E, uXm_Drcplog10E)
uXm_f32_64_CONST(ln2, uXm_Dln2)
uXm_f32_64_CONST(ln10, uXm_Dln10)
uXm_f32_64_CONST(expest1, uXm_Dexpest1)
uXm_f32_64_CONST(expest2, uXm_Dexpest2)
uXm_f32_64_CONST(expest3, uXm_Dexpest3)
uXm_f32_64_CONST(expest4, uXm_Dexpest4)
uXm_f32_64_CONST(expest5, uXm_Dexpest5)
uXm_f32_64_CONST(expest6, uXm_Dexpest6)
uXm_f32_64_CONST(expest7, uXm_Dexpest7)
uXm_f32_64_CONST(logest0, uXm_Dlogest0)
uXm_f32_64_CONST(logest1, uXm_Dlogest1)
uXm_f32_64_CONST(logest2, uXm_Dlogest2)
uXm_f32_64_CONST(logest3, uXm_Dlogest3)
uXm_f32_64_CONST(logest4, uXm_Dlogest4)
uXm_f32_64_CONST(logest5, uXm_Dlogest5)
uXm_f32_64_CONST(logest6, uXm_Dlogest6)
uXm_f32_64_CONST(logest7, uXm_Dlogest7)

uXm_f32_64_CONST(Pi, uXm_DPi)
uXm_f32_64_CONST(HalfPi, uXm_DHalfPi)
uXm_f32_64_CONST(2Pi, uXm_D2Pi)
uXm_f32_64_CONST(negPi, uXm_DnegPi)
uXm_f32_64_CONST(negHalfPi, uXm_DnegHalfPi)
uXm_f32_64_CONST(neg2Pi, uXm_Dneg2Pi)
uXm_f32_64_CONST(rcpPi, uXm_DrcpPi)
uXm_f32_64_CONST(rcp2Pi, uXm_Drcp2Pi)
uXm_f32_64_CONST(Pidiv2, uXm_DPidiv2)
uXm_f32_64_CONST(Pidiv4, uXm_DPidiv4)
uXm_f32_64_CONST(Gravity, uXm_DGravity)
uXm_f32_64_CONST(DegtoRad, uXm_DDegtoRad)
uXm_f32_64_CONST(RadtoDeg, uXm_DRadtoDeg)
uXm_f32_64_CONST(KmhtoMPSec, uXm_DKmhtoMPSec)

uXm_f32_64_CONST(Max, uXm_f32_64MAX)
uXm_f32_64_CONST(Min, uXm_f32_64MIN)
uXm_f32_64_CONST(Eps, uXm_f32_64EPS)
uXm_f32_64_CONST(Epsilon, uXm_f32_64EPS)
uXm_f32_64_CONST(Radix, uXm_f32_64RADIX)
uXm_f32_64_CONST(NormEps, uXm_f32_64NORM_EPS)
uXm_f32_64_CONST(High, uXm_f32_64HIGH)

#undef uXm_f32_64_CONST

// natural alignment to the base type

uXm_f32_64NA_CONST(0, uXm_D0)
uXm_f32_64NA_CONST(05, uXm_D05)
uXm_f32_64NA_CONST(1, uXm_D1)
uXm_f32_64NA_CONST(2, uXm_D2)
uXm_f32_64NA_CONST(3, uXm_D3)
uXm_f32_64NA_CONST(4, uXm_D4)
uXm_f32_64NA_CONST(5, uXm_D5)
uXm_f32_64NA_CONST(6, uXm_D6)
uXm_f32_64NA_CONST(7, uXm_D7)
uXm_f32_64NA_CONST(8, uXm_D8)
uXm_f32_64NA_CONST(9, uXm_D9)

uXm_f32_64NA_CONST(neg0, uXm_Dneg0)
uXm_f32_64NA_CONST(neg05, uXm_Dneg05)
uXm_f32_64NA_CONST(neg1, uXm_Dneg1)
uXm_f32_64NA_CONST(neg2, uXm_Dneg2)
uXm_f32_64NA_CONST(neg3, uXm_Dneg3)
uXm_f32_64NA_CONST(neg4, uXm_Dneg4)
uXm_f32_64NA_CONST(neg5, uXm_Dneg5)
uXm_f32_64NA_CONST(neg6, uXm_Dneg6)
uXm_f32_64NA_CONST(neg7, uXm_Dneg7)
uXm_f32_64NA_CONST(neg8, uXm_Dneg8)
uXm_f32_64NA_CONST(neg9, uXm_Dneg9)

uXm_f32_64NA_CONST(24_5, uXm_D24_5)
uXm_f32_64NA_CONST(45, uXm_D45)
uXm_f32_64NA_CONST(90, uXm_D90)
uXm_f32_64NA_CONST(180, uXm_D180)
uXm_f32_64NA_CONST(360, uXm_D360)

uXm_f32_64NA_CONST(neg24_5, uXm_Dneg24_5)
uXm_f32_64NA_CONST(neg45, uXm_Dneg45)
uXm_f32_64NA_CONST(neg90, uXm_Dneg90)
uXm_f32_64NA_CONST(neg180, uXm_Dneg180)
uXm_f32_64NA_CONST(neg360, uXm_Dneg360)

#undef uXm_f32_64NA_CONST

#endif

uXm_REAL_CONST(Max, uXm_REALMAX)
uXm_REAL_CONST(Min, uXm_REALMIN)
uXm_REAL_CONST(Eps, uXm_REALEPS)
uXm_REAL_CONST(Epsilon, uXm_REALEPS)
uXm_REAL_CONST(NormEps, uXm_REALNORM_EPS)
uXm_REAL_CONST(High, uXm_REALHIGH)

#undef uXm_REAL_CONST

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          uXm_I8i constants                           */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

uXm_I8_CONST(0, 0x00)
uXm_I8_CONST(1, 0x01)
uXm_I8_CONST(2, 0x02)
uXm_I8_CONST(3, 0x03)
uXm_I8_CONST(4, 0x04)
uXm_I8_CONST(5, 0x05)
uXm_I8_CONST(6, 0x06)
uXm_I8_CONST(7, 0x07)
uXm_I8_CONST(8, 0x08)
uXm_I8_CONST(9, 0x09)

uXm_I8_CONST(neg1, 0xff)
uXm_I8_CONST(neg2, 0xfe)

/*
const __int8 e = uXmint8_7;
const __int8 e = uXmint8_neg1;*/

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          uXm_I32 constants                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

uXm_I32_CONST(0, uXm_I32_msk0)
uXm_I32_CONST(1, uXm_I32_msk1)
uXm_I32_CONST(2, uXm_I32_msk2)
uXm_I32_CONST(3, uXm_I32_msk3)
uXm_I32_CONST(4, uXm_I32_msk4)
uXm_I32_CONST(5, uXm_I32_msk5)
uXm_I32_CONST(6, uXm_I32_msk6)
uXm_I32_CONST(7, uXm_I32_msk7)
uXm_I32_CONST(8, uXm_I32_msk8)
uXm_I32_CONST(9, uXm_I32_msk9)

uXm_I32_CONST(neg1, uXm_I32_mskneg1)
uXm_I32_CONST(neg2, uXm_I32_mskneg2)
uXm_I32_CONST(neg3, uXm_I32_mskneg3)
uXm_I32_CONST(neg4, uXm_I32_mskneg4)
uXm_I32_CONST(neg5, uXm_I32_mskneg5)
uXm_I32_CONST(neg6, uXm_I32_mskneg6)
uXm_I32_CONST(neg7, uXm_I32_mskneg7)
uXm_I32_CONST(neg8, uXm_I32_mskneg8)
uXm_I32_CONST(neg9, uXm_I32_mskneg9)

uXm_I32_CONST(RandMax, uXm_MAXRAND)

uXm_I32_CONST(FSign, uXm_f32_Sign_msk)

#undef uXm_I32_CONST

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          uXm_I64 constants                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

uXm_I64_CONST(0, uXm_I64_msk0)
uXm_I64_CONST(1, uXm_I64_msk1)
uXm_I64_CONST(2, uXm_I64_msk2)
uXm_I64_CONST(3, uXm_I64_msk3)
uXm_I64_CONST(4, uXm_I64_msk4)
uXm_I64_CONST(5, uXm_I64_msk5)
uXm_I64_CONST(6, uXm_I64_msk6)
uXm_I64_CONST(7, uXm_I64_msk7)
uXm_I64_CONST(8, uXm_I64_msk8)
uXm_I64_CONST(9, uXm_I64_msk9)

uXm_I64_CONST(neg0, uXm_I64_mskneg0)
uXm_I64_CONST(neg1, uXm_I64_mskneg1)
uXm_I64_CONST(neg2, uXm_I64_mskneg2)
uXm_I64_CONST(neg3, uXm_I64_mskneg3)
uXm_I64_CONST(neg4, uXm_I64_mskneg4)
uXm_I64_CONST(neg5, uXm_I64_mskneg5)
uXm_I64_CONST(neg6, uXm_I64_mskneg6)
uXm_I64_CONST(neg7, uXm_I64_mskneg7)
uXm_I64_CONST(neg8, uXm_I64_mskneg8)
uXm_I64_CONST(neg9, uXm_I64_mskneg9)

uXm_I64_CONST(DSign, uXm_DSign_msk)

#undef uXm_I64_CONST

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          uXm_U32 constants                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

uXm_U32_CONST(0, uXm_U32_msk0)
uXm_U32_CONST(1, uXm_U32_msk1)
uXm_U32_CONST(2, uXm_U32_msk2)
uXm_U32_CONST(3, uXm_U32_msk3)
uXm_U32_CONST(4, uXm_U32_msk4)
uXm_U32_CONST(5, uXm_U32_msk5)
uXm_U32_CONST(6, uXm_U32_msk6)
uXm_U32_CONST(7, uXm_U32_msk7)
uXm_U32_CONST(8, uXm_U32_msk8)
uXm_U32_CONST(9, uXm_U32_msk9)

uXm_U32_CONST(FMagic, uXm_f32_Magic_msk)
uXm_U32_CONST(FSign, uXm_f32_Sign_msk)
uXm_U32_CONST(FinvSign, uXm_f32_invSign_msk)

uXm_U32_CONST(F0, uXm_f32_0_msk)
uXm_U32_CONST(F1, uXm_f32_1_msk)

uXm_U32_CONST(Fneg1, uXm_f32_neg1_msk)
uXm_U32_CONST(Fneg0, uXm_f32_neg0_msk)

uXm_U32_CONST(FNaNTest, uXm_f32_NaNTest_msk)

uXm_U32_CONST(select_0, 0x00000000)
uXm_U32_CONST(select_1, 0xfffffffF)

uXm_U32_CONST(permute_0X, 0)
uXm_U32_CONST(permute_0Y, 1)
uXm_U32_CONST(permute_0Z, 2)
uXm_U32_CONST(permute_0W, 3)
uXm_U32_CONST(permute_1X, 4)
uXm_U32_CONST(permute_1Y, 5)
uXm_U32_CONST(permute_1Z, 6)
uXm_U32_CONST(permute_1W, 7)

uXm_U32_CONST(swizzle_X, 0)
uXm_U32_CONST(swizzle_Y, 1)
uXm_U32_CONST(swizzle_Z, 2)
uXm_U32_CONST(swizzle_W, 3)
uXm_U32_CONST(crmask_cr6, 0x000000f0)
uXm_U32_CONST(crmask_cr6true, 0x00000080)
uXm_U32_CONST(crmask_cr6false, 0x00000020)
uXm_U32_CONST(crmask_cr6bounds, uXmuint32_crmask_cr6false)


/*
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_PERMUTE_0X) = 0;
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_PERMUTE_0Y) = 1;
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_PERMUTE_0Z) = 2;
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_PERMUTE_0W) = 3;
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_PERMUTE_1X) = 4;
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_PERMUTE_1Y) = 5;
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_PERMUTE_1Z) = 6;
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_PERMUTE_1W) = 7;

uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_SWIZZLE_X) = 0;
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_SWIZZLE_Y) = 1;
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_SWIZZLE_Z) = 2;
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_SWIZZLE_W) = 3;

uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_CRMASK_CR6) = 0x000000F0;
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_CRMASK_CR6TRUE) = 0x00000080;
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_CRMASK_CR6FALSE) = 0x00000020;
uXm_NMGLOBAL_CONST uXm_NMALIGN(unsigned __int32 uXm_CRMASK_CR6BOUNDS) = uXm_CRMASK_CR6FALSE;*/


#undef uXm_U32_CONST

/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
/*                          uXm_U64 constants                          */
/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

uXm_U64_CONST(0, 0)
uXm_U64_CONST(1, 1)
uXm_U64_CONST(2, 2)
uXm_U64_CONST(3, 3)
uXm_U64_CONST(4, 4)
uXm_U64_CONST(5, 5)
uXm_U64_CONST(6, 6)
uXm_U64_CONST(7, 7)
uXm_U64_CONST(8, 8)
uXm_U64_CONST(9, 9)

uXm_U64_CONST(neg0, -0) /* 0 UINT 64 */
uXm_U64_CONST(neg1, -1) /* max UINT 64 */
uXm_U64_CONST(neg2, -2) /* max UINT 64 minus 1 */
uXm_U64_CONST(neg3, -3) /* max UINT 64 minus 2 */
uXm_U64_CONST(neg4, -4) /* max UINT 64 minus 3 */
uXm_U64_CONST(neg5, -5) /* max UINT 64 minus 4 */
uXm_U64_CONST(neg6, -6) /* max UINT 64 minus 5 */
uXm_U64_CONST(neg7, -7) /* max UINT 64 minus 6 */
uXm_U64_CONST(neg8, -8) /* max UINT 64 minus 7 */
uXm_U64_CONST(neg9, -9) /* max UINT 64 minus 8 */

uXm_U64_CONST(DSign, uXm_DSign_msk)

#undef uXm_U64_CONST

uXm_NMGLOBAL_CONST uXm_ALIGNDECLN(size_t uXmmsizet_cache_line_size) = 64;


/*
#include "uXmConstants/uXm128bitsConstants.h"
#include "uXmConstants/uXm256bitsConstants.h"
#include "uXmConstants/uXm512bitsConstants.h"*/

#endif // uXm_CONSTANTS_H
