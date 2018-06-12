
;/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
;/*                   start of head macro constants                     */
;/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */

;/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
;/* single precision constants */

;/* / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / */
;// mask or hex constants for single precision ;;32bits;;

;;f32 mask;;

uXm_f32_1lshift12_msk		equ 0x00001000
uXm_f32_1lshift23_msk		equ 0x00800000
uXm_f32_1lshift24_msk		equ 0x01000000
uXm_f32_1lshift31_msk		equ 0x80000000

uXm_f32_neg1lshift12_msk	equ 0xfffff000
uXm_f32_neg1lshift23_msk	equ 0xff800000
uXm_f32_neg1lshift24_msk	equ 0xff000000

uXm_f32_true_msk			equ 0xffffffff
uXm_f32_false_msk			equ 0x00000000

uXm_f32_Magic_msk			equ 0x4b000000		;/* 1258291200 */
uXm_f32_Sign_msk			equ 0x80000000		;/* -2147483648 MinI32 */
uXm_f32_invSign_msk			equ 0x7fffffff		;/* 2147483647 MaxI32 */

uXm_f32_Inf_msk				equ 0x7f800000		;/* 2139095040 MaxI32+1-pow2^23*/
uXm_f32_Fin_msk				equ 0xff000000		;/* 4278190080 */
uXm_f32_invInf_msk			equ 0x807fffff		;/* -2139095041 */
uXm_f32_negInf_msk			equ 0xff800000		;/* -8388608 */
uXm_f32_NaN_msk				equ 0x7fffffff		;/* 2147483647 MaxI32 */
uXm_f32_QNaN_msk			equ 0x7fc00000		;/* 2143289344 */
uXm_f32_negQNaN_msk			equ 0xffc00000		;/* -4194304 */
uXm_f32_NaNTest_msk			equ 0x007fffff		;/* 8388607 */
uXm_f32_Abs_msk				equ 0x7fffffff		;/* 2147483647 MaxI32 */
uXm_f32_NoFraction_msk		equ 0x00800000		;/* 8388608 pow2^23*/
uXm_f32_MinDenorm_msk		equ 0x00000001
uXm_f32_DenormLimit_msk		equ 0x00800000		;/* 8388608 pow2^23*/
uXm_f32_MinNormal_msk		equ 0x00800000		;/* 8388608 pow2^23*/
uXm_f32_MaxNormal_msk		equ 0x7f7fffff		;/* 2139095039 MaxI32-pow2^23*/

;uXm_f32_ExpBias_msk		equ 0x54800000		;/* 1417674752 exponent bias */
;uXm_f32_ExpM1div3_msk		equ 0x002aaaaa		;/* 2796202 exponent multiplier for 1/3 */

uXm_f32_DecDig_msk			equ 0x00000006			;/* 6 */							;/* # of float decimal digits of precision */
uXm_f32_negDecDig_msk		equ 0xfffffffa			;/* -6 */						;/* # negate of float decimal digits of precision */
uXm_f32_Eps_msk				equ 0x34000000			;/* 1.192092896e-07f */			;/* smallest such that 1.0+FLT_EPSILON != 1.0 */
uXm_f32_NormEps_msk			equ 0x1e3ce508			;/* 1e-20f */
uXm_f32_Guard_msk			equ 0x00000000
uXm_f32_MantPow2_msk		equ 0x00800000			;/* 8388608 */					;/* # pow2^23 */
uXm_f32_MaxMantPow2_msk		equ 0x7f7fffff			;/* 2139095039 */				;/* # MaxI32-pow2^23 */
uXm_f32_MantDig_msk			equ 0x00000018			;/* 24 */						;/* # of bits in float mantissa */
uXm_f32_Mant_msk			equ 0x00000017			;/* 23 */						;/* # stable of float bits in mantissa */
uXm_f32_negMant_msk			equ 0xffffffe9			;/* -23 */						;/* # negate stable of float bits in mantissa */
uXm_f32_Max_msk				equ 0x7f7fffff			;/* 3.402823466e+38F */	;/* maximum possible float value 2139095039 MaxI32-pow2^2*/		;/* .4028234663852885981170418348452e+38F */
uXm_f32_Min_msk				equ 0x00800000			;/* 1.175494351e-38F 8388608 pow2^23*/			;/* min positive value */
uXm_f32_MaxExp_msk			equ 0x00000080			;/* 128 */						;/* stable max float binary exponent */
uXm_f32_Exp_msk				equ 0x0000007f			;/* 127 */						;/* stable binary exponent */
uXm_f32_negExp_msk			equ 0xffffff81			;/* -127 */						;/* stable binary exponent */
uXm_f32_SubnormalExp_msk	equ 0xffffff82			;/* -126 */						;/* stable min float binary exponent */
uXm_f32_MinExp_msk			equ 0xffffff83			;/* -125 */						;/* min binary exponent */
uXm_f32_MaxDecExp_msk		equ 0x00000026			;/* 38 */						;/* max float decimal exponent */
uXm_f32_negMaxDecExp_msk	equ 0xffffffda			;/* -38 */						;/* neg max float decimal exponent */
uXm_f32_minDecExp_msk		equ 0xffffffd8			;/* -37 */						;/* float min decimal exponent */
uXm_f32_ExpField_msk		equ 0xff000000			;/* -16777216 */					;/* float exponent field */
uXm_f32_MantField_msk		equ 0x00ffffff			;/* 16777215 */					;/* float mantissa field */
uXm_f32_Norm_msk			equ 0x00000000
uXm_f32_Radix_msk			equ 0x00000002			;/* 2 */							;/* float exponent radix */
uXm_f32_Rounds_msk			equ 0x00000001			;/* 1 */							;/* addition rounding: near */
uXm_f32_SubDec_msk			equ 0x0000000a
uXm_f32_High_msk			equ 0x5f7ffff0			;/* 1.8446726e+019f */
uXm_f32_SmallNorm_msk		equ 0x00800000			;/* 1.175494351e-38f */         ;/* smallest normal number, float*/

uXm_f32_HalfminusEps_msk	equ 0x3efffffd		;/* 1056964605 */

uXm_f32_Byte_msk			equ 0x000000ff		;/* 255 */
uXm_f32_4Low_msk			equ 0x0fffffff		;/* 268435455 */
uXm_f32_4High_msk			equ 0xfffffff0		;/* -16 */
uXm_f32_flip4_msk			equ 0x00000008		;/* 8 */
uXm_f32_8Low_msk			equ 0x00ffffff		;/* 16777215 */
uXm_f32_8High_msk			equ 0xffffff00		;/* -256 */
uXm_f32_flip8_msk			equ 0x00000080		;/* 128 */
uXm_f32_16Low_msk			equ 0x0000ffff		;/* 65535 */
uXm_f32_16High_msk			equ 0xffff0000		;/* -65536 */
uXm_f32_flip16_msk			equ 0x00008000		;/* 32768 */
uXm_f32_24Low_msk			equ 0x000000ff		;/* 255 */
uXm_f32_24High_msk			equ 0xff000000		;/* -16777216 */
uXm_f32_flip24_msk			equ 0x00800000		;/* 8388608 */
uXm_f32_28Low_msk			equ 0x0000000f		;/* 15 */
uXm_f32_28High_msk			equ 0xf0000000		;/* -268435456 */
uXm_f32_flip28_msk			equ 0x08000000		;/* 134217728 */
uXm_f32_32Low_msk			equ 0x00000000		;/* 0 */
uXm_f32_32High_msk			equ 0x00000000		;/* 0 */
uXm_f32_flip32_msk			equ 0x80000000		;/* -2147483648 */

uXm_f32_0_msk				equ 0x00000000
uXm_f32_0d001_msk			equ 0x3a83126f      ;/* 0.001f */
uXm_f32_0d002_msk			equ 0x3b03126f      ;/* 0.002f */
uXm_f32_0d003_msk			equ 0x3b449ba6      ;/* 0.003f */
uXm_f32_0d004_msk			equ 0x3b83126f      ;/* 0.004f */
uXm_f32_0d005_msk			equ 0x3ba3d70a      ;/* 0.005f */
uXm_f32_0d006_msk			equ 0x3bc49ba6      ;/* 0.006f */
uXm_f32_0d007_msk			equ 0x3be56042      ;/* 0.007f */
uXm_f32_0d008_msk			equ 0x3c03126f      ;/* 0.008f */
uXm_f32_0d009_msk			equ 0x3c1374bc      ;/* 0.009f */
uXm_f32_0d01_msk			equ 0x3c23d70a      ;/* 0.01f */
uXm_f32_0d02_msk			equ 0x3ca3d70a      ;/* 0.02f */
uXm_f32_0d03_msk			equ 0x3cf5c28f      ;/* 0.03f */
uXm_f32_0d04_msk			equ 0x3d23d70a      ;/* 0.04f */
uXm_f32_0d05_msk			equ 0x3d4ccccd      ;/* 0.05f */
uXm_f32_0d06_msk			equ 0x3d75c28f      ;/* 0.06f */
uXm_f32_0d07_msk			equ 0x3d8f5c29      ;/* 0.07f */
uXm_f32_0d08_msk			equ 0x3da3d70a      ;/* 0.08f */
uXm_f32_0d09_msk			equ 0x3db851ec      ;/* 0.09f */
uXm_f32_0d1_msk				equ 0x3dcccccd      ;/* 0.1f */
uXm_f32_0d2_msk				equ 0x3e4ccccd      ;/* 0.2f */
uXm_f32_0d3_msk				equ 0x3e99999a      ;/* 0.3f */
uXm_f32_0d4_msk				equ 0x3ecccccd      ;/* 0.4f */
uXm_f32_0d5_msk				equ 0x3f000000      ;/* 0.5f */
uXm_f32_0d6_msk				equ 0x3f19999a      ;/* 0.6f */
uXm_f32_0d7_msk				equ 0x3f333333      ;/* 0.7f */
uXm_f32_0d8_msk				equ 0x3f4ccccd      ;/* 0.8f */
uXm_f32_0d9_msk				equ 0x3f666666      ;/* 0.9f */
uXm_f32_1_msk				equ 0x3f800000      ;/* 1.f */
uXm_f32_1d5_msk				equ 0x3fc00000      ;/* 1.5f */
uXm_f32_2_msk				equ 0x40000000      ;/* 2.f */
uXm_f32_2d5_msk				equ 0x40200000      ;/* 2.5f */
uXm_f32_3_msk				equ 0x40400000      ;/* 3.f */
uXm_f32_4_msk				equ 0x40800000      ;/* 4.f */
uXm_f32_5_msk				equ 0x40a00000      ;/* 5.f */
uXm_f32_6_msk				equ 0x40c00000      ;/* 6.f */
uXm_f32_7_msk				equ 0x40e00000      ;/* 7.f */
uXm_f32_8_msk				equ 0x41000000      ;/* 8.f */
uXm_f32_9_msk				equ 0x41100000      ;/* 9.f */
uXm_f32_10_msk				equ 0x41200000      ;/* 10.f */
uXm_f32_11_msk				equ 0x41300000      ;/* 11.f */
uXm_f32_12_msk				equ 0x41400000      ;/* 12.f */
uXm_f32_13_msk				equ 0x41500000      ;/* 13.f */
uXm_f32_14_msk				equ 0x41600000      ;/* 14.f */
uXm_f32_15_msk				equ 0x41700000      ;/* 15.f */
uXm_f32_16_msk				equ 0x41800000      ;/* 16.f */
uXm_f32_17_msk				equ 0x41880000      ;/* 17.f */
uXm_f32_18_msk				equ 0x41900000      ;/* 18.f */
uXm_f32_19_msk				equ 0x41980000      ;/* 19.f */
uXm_f32_20_msk				equ 0x41a00000      ;/* 20.f */
uXm_f32_24_msk				equ 0x41c00000      ;/* 24.f */
uXm_f32_24d5_msk			equ 0x41c40000      ;/* 24.5f */
uXm_f32_25_msk				equ 0x41c80000      ;/* 25.f */

uXm_f32_128_msk				equ 0x43000000      ;/* 128.f */

uXm_f32_253_msk				equ 0x437d0000      ;/* 253.f */

uXm_f32_neg0_msk			equ 0x80000000		;/* -0.f -2147483648 MinI32 */
uXm_f32_neg1_msk			equ 0xbf800000		;/* -1.f */

uXm_f32_neg150_msk			equ 0xc3160000		;/* -150.f */

uXm_f32_A8_msk				equ 0x00ff0000		;/* 16711680 */
uXm_f32_R8_msk				equ 0x0000ff00		;/* 65280 */
uXm_f32_G8_msk				equ 0x000000ff		;/* 255 */
uXm_f32_B8_msk				equ 0xff000000		;/* -16777216 */

uXm_f32_flipA8_msk			equ uXm_f32_0_msk
uXm_f32_flipR8_msk			equ uXm_f32_0_msk
uXm_f32_flipG8_msk			equ uXm_f32_0_msk
uXm_f32_flipB8_msk			equ uXm_f32_neg0_msk

uXm_f32_A2_msk				equ 0x000003ff		;/* 1023 */
uXm_f32_B10_msk				equ 0x000ffc00		;/* 1047552 */
uXm_f32_G10_msk				equ 0x3ff00000		;/* 1072693248 */
uXm_f32_R10_msk				equ 0xc0000000		;/* -1073741824 */

uXm_f32_flipA2_msk			equ 0x00000200		;/* 512 */
uXm_f32_flipB10_msk			equ 0x00080000		;/* 524288 */
uXm_f32_flipG10_msk			equ 0x20000000		;/* 536870912 */
uXm_f32_flipR10_msk			equ 0x80000000		;/* -2147483648 */

uXm_f32_bin128_msk			equ uXm_f32_128_msk		;/* 1124073472 */
uXm_f32_binneg150_msk		equ uXm_f32_neg150_msk	;/* -1021968384 */

uXm_f32_maxRand_msk			equ 0x00007fff

uXm_f32_maxI8_msk			equ 0x0000007f			;/*127*/
uXm_f32_minI8_msk			equ 0xffffff80			;/*-128*/
uXm_f32_maxU8_msk			equ 0x000000ff			;/*255*/

uXm_f32_maxI16_msk			equ 0x00007fff			;/*32767*/
uXm_f32_minI16_msk			equ 0xffff8000			;/*-32768*/
uXm_f32_maxU16_msk			equ 0x0000ffff			;/*65535*/

uXm_f32_maxI32_msk			equ 0x7fffffff			;/*2147483647*/
uXm_f32_minI32_msk			equ 0x80000000			;/*-2147483648*/
uXm_f32_maxU32_msk			equ 0xffffffff			;/*4294967295*/

uXm_f32_maxI8xU8_msk		equ 0x00000800			;/*32768*/				;/*128.f*256.f*/
uXm_f32_minI8xU8_msk		equ 0xffff8000			;/*-32768*/				;/*-128.f*256.f*/
uXm_f32_maxI8xU16_msk		equ 0x00800000			;/*8388608*/				;/*128.f*65536.f*/
uXm_f32_minI8xU16_msk		equ 0xff800000			;/*-8388608*/			;/*-128.f*65536.f*/

uXm_f32_maxI16xU16_msk		equ 0x80000000			;/*(equ 0x00008000 * equ 0x00010000)*/	;/*2147483648*/			;/*32768.f*65536.f*/
uXm_f32_minI16xU16_msk		equ 0x80000000			;/*-2147483648*/			;/*-32768.f*65536.f*/

uXm_f32_fixUnsigned_msk		equ 0x80000000			;/*(equ 0x00008000 * equ 0x00010000)*/					;/*2147483648*/			;/*32768.f*65536.f*/
uXm_f32_fixmaxI32_msk		equ 0x7fffff80			;/*(equ 0x00010000 * equ 0x00008000 + equ 0x7fffff80)*/		;/*2147483520*/			;/*65536.f*32768.f-128.f*/
uXm_f32_fixmaxU32_msk		equ 0xffffff00			;/*(equ 0x00010000 * equ 0x00010000 + equ 0xffffff00)*/		;/*4294967040*/			;/*65536.f*65536.f-256.f*/


;;f64 mask;;

uXm_f64_true_msk			equ 0xffffffffffffffff
uXm_f64_false_msk			equ 0x0000000000000000


;;int64 mask;;

uXm_i64_true_msk			equ 0xffffffffffffffff
uXm_i64_false_msk			equ 0x0000000000000000


;;int32 mask;;

uXm_i32_true_msk			equ 0xffffffff
uXm_i32_false_msk			equ 0x00000000


;;int16 mask;;

uXm_i16_true_msk			equ 0xffff
uXm_i16_false_msk			equ 0x0000

;;int8 mask;;

uXm_i8_true_msk				equ 0xff
uXm_i8_false_msk			equ 0x00


;;float;;

uXm_f32_0					equ 0.0
uXm_f32_1					equ 1.0

uXm_f32_neg0				equ -0.0
uXm_f32_neg1				equ -1.0


;;double;;

uXm_f64_0					equ 0.0
uXm_f64_1					equ 1.0

uXm_f64_neg0				equ -0.0
uXm_f64_neg1				equ -1.0
