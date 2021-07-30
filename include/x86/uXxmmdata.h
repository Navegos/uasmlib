
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2021 (c) Navegos QA - optimized library                 / /
; / /                                                                               / /
; / /    Licensed under the Apache License, Version 2.0 (the "License");            / /
; / /    you may not use this file except in compliance with the License.           / /
; / /    You may obtain a copy of the License at                                    / /
; / /                                                                               / /
; / /        http://www.apache.org/licenses/LICENSE-2.0                             / /
; / /                                                                               / /
; / /    Unless required by applicable law or agreed to in writing, software        / /
; / /    distributed under the License is distributed on an "AS IS" BASIS,          / /
; / /    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   / /
; / /    See the License for the specific language governing permissions and        / /
; / /    limitations under the License.                                             / /
; / /                                                                               / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#pragma once

#ifndef uX_XMM_DATA_H
#define uX_XMM_DATA_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

uX_EXTERNC_BEGIN
uX_PACK_PUSH_XMM

/*
 * Data; Constants
 */

	//;;float;;

	//;             sincos template, single precision
extern __m128 const __m128_DP1F; //              __m128f; // (0.78515625 * 2.0)
extern __m128 const __m128_DP2F; //              __m128f; // (2.4187564849853515625e-4 * 2.0)
extern __m128 const __m128_DP3F; //              __m128f; // (3.77489497744594108e-8 * 2.0)

extern __m128 const __m128_P0sinf; //              __m128f; // (-1.6666654611e-1)
extern __m128 const __m128_P1sinf; //              __m128f; // (8.3321608736e-3)
extern __m128 const __m128_P2sinf; //              __m128f; // (-1.9515295891e-4)

extern __m128 const __m128_P0cosf; //              __m128f; // (4.166664568298827e-2)
extern __m128 const __m128_P1cosf; //              __m128f; // (-1.388731625493765e-3)
extern __m128 const __m128_P2cosf; //              __m128f; // (2.443315711809948e-5)
	//;             sincos template, single precision

extern __m128 const __m128_1lshl3; //                   __m128f; // flt_1lshl3
extern __m128 const __m128_1lshl4; //                   __m128f; // flt_1lshl4
extern __m128 const __m128_1lshl7; //                   __m128f; // flt_1lshl7
extern __m128 const __m128_1lshl8; //                   __m128f; // flt_1lshl8
extern __m128 const __m128_1lshl11; //              __m128f; // flt_1lshl11
extern __m128 const __m128_1lshl12; //              __m128f; // flt_1lshl12
extern __m128 const __m128_1lshl15; //              __m128f; // flt_1lshl15
extern __m128 const __m128_1lshl16; //              __m128f; // flt_1lshl16
extern __m128 const __m128_1lshl19; //              __m128f; // flt_1lshl19
extern __m128 const __m128_1lshl20; //              __m128f; // flt_1lshl20
extern __m128 const __m128_1lshl23; //              __m128f; // flt_1lshl23
extern __m128 const __m128_1lshl24; //              __m128f; // flt_1lshl24
extern __m128 const __m128_1lshl27; //              __m128f; // flt_1lshl27
extern __m128 const __m128_1lshl28; //              __m128f; // flt_1lshl28
extern __m128 const __m128_1lshl31; //              __m128f; // flt_1lshl31

extern __m128 const __m128_neg1lshl3; //                __m128f; // flt_neg1lshl3
extern __m128 const __m128_neg1lshl4; //                __m128f; // flt_neg1lshl4
extern __m128 const __m128_neg1lshl7; //                __m128f; // flt_neg1lshl7
extern __m128 const __m128_neg1lshl8; //                __m128f; // flt_neg1lshl8
extern __m128 const __m128_neg1lshl11; //               __m128f; // flt_neg1lshl11
extern __m128 const __m128_neg1lshl12; //               __m128f; // flt_neg1lshl12
extern __m128 const __m128_neg1lshl15; //               __m128f; // flt_neg1lshl15
extern __m128 const __m128_neg1lshl16; //               __m128f; // flt_neg1lshl16
extern __m128 const __m128_neg1lshl19; //               __m128f; // flt_neg1lshl19
extern __m128 const __m128_neg1lshl20; //               __m128f; // flt_neg1lshl20
extern __m128 const __m128_neg1lshl23; //               __m128f; // flt_neg1lshl23
extern __m128 const __m128_neg1lshl24; //               __m128f; // flt_neg1lshl24
extern __m128 const __m128_neg1lshl27; //               __m128f; // flt_neg1lshl27
extern __m128 const __m128_neg1lshl28; //               __m128f; // flt_neg1lshl28
extern __m128 const __m128_neg1lshl31; //               __m128f; // flt_neg1lshl31

extern __m128 const __m128_false; //                    __m128i; // flt_false
extern __m128 const __m128_true; //                 __m128i; // flt_true
extern __m128 const __m128_error; //                    __m128i; // flt_error

extern __m128 const __m128_magic; //                    __m128i; // flt_magic
extern __m128 const __m128_sign; //                 __m128i; // flt_sign
extern __m128 const __m128_invsign; //              __m128i; // flt_invsign

extern __m128 const __m128_inf; //                  __m128i; // flt_inf
extern __m128 const __m128_fin; //                  __m128i; // flt_fin
extern __m128 const __m128_invinf; //                   __m128i; // flt_invinf
extern __m128 const __m128_neginf; //                   __m128i; // flt_neginf
extern __m128 const __m128_nan; //                  __m128i; // flt_nan
extern __m128 const __m128_qnan; //                 __m128i; // flt_qnan
extern __m128 const __m128_negqnan; //              __m128i; // flt_negqnan
extern __m128 const __m128_nantest; //              __m128i; // flt_nantest
extern __m128 const __m128_abs; //                  __m128i; // flt_abs
extern __m128 const __m128_min; //                  __m128f; // flt_min
extern __m128 const __m128_max; //                  __m128f; // flt_max
extern __m128 const __m128_nofraction; //               __m128f; // flt_nofraction
extern __m128 const __m128_mindenorm; //                __m128f; // flt_mindenorm
extern __m128 const __m128_denormlimit; //          __m128f; // flt_denormlimit
extern __m128 const __m128_minnormal; //                __m128f; // flt_minnormal
extern __m128 const __m128_maxnormal; //                __m128f; // flt_maxnormal

extern __m128 const __m128_decdig; //                   __m128f; // flt_decdig
extern __m128 const __m128_dig; //                  __m128f; // flt_dig
extern __m128 const __m128_negdecdig; //                __m128f; // flt_negdecdig
extern __m128 const __m128_negdig; //                   __m128f; // flt_negdig
extern __m128 const __m128_eps; //                  __m128f; // flt_eps
extern __m128 const __m128_epsilon; //              __m128f; // flt_epsilon
extern __m128 const __m128_normeps; //              __m128f; // flt_normeps
extern __m128 const __m128_guard; //                    __m128f; // flt_guard
extern __m128 const __m128_mantpow2; //             __m128f; // flt_mantpow2
extern __m128 const __m128_maxmantpow2; //          __m128f; // flt_maxmantpow2
extern __m128 const __m128_mantdig; //              __m128f; // flt_mantdig
extern __m128 const __m128_mant; //                 __m128f; // flt_mant
extern __m128 const __m128_negmantdig; //               __m128f; // flt_negmantdig
extern __m128 const __m128_negmant; //              __m128f; // flt_negmant
extern __m128 const __m128_maxexp; //                   __m128f; // flt_maxexp
extern __m128 const __m128_expsign; //              __m128f; // flt_expsign
extern __m128 const __m128_exp; //                  __m128f; // flt_exp
extern __m128 const __m128_negmaxexp; //                __m128f; // flt_negmaxexp
extern __m128 const __m128_negexpsign; //               __m128f; // flt_negexpsign
extern __m128 const __m128_negexp; //                   __m128f; // flt_negexp
extern __m128 const __m128_subnormalexp; //         __m128f; // flt_subnormalexp
extern __m128 const __m128_minexp; //                   __m128f; // flt_minexp
extern __m128 const __m128_maxdecexp; //                __m128f; // flt_maxdecexp
extern __m128 const __m128_negmaxdecexp; //         __m128f; // flt_negmaxdecexp
extern __m128 const __m128_mindecexp; //                __m128f; // flt_mindecexp
extern __m128 const __m128_expfield; //             __m128f; // flt_expfield
extern __m128 const __m128_mantfield; //                __m128f; // flt_mantfield
extern __m128 const __m128_norm; //                 __m128f; // flt_norm
extern __m128 const __m128_radix; //                    __m128f; // flt_radix
extern __m128 const __m128_rounds; //                   __m128f; // flt_rounds
extern __m128 const __m128_subdec; //                   __m128f; // flt_subdec
extern __m128 const __m128_sqrtmax; //              __m128f; // flt_sqrtmax
extern __m128 const __m128_smallnormal; //          __m128f; // flt_smallnormal

extern __m128 const __m128_halfminuseps; //         __m128f; // flt_halfminuseps
extern __m128 const __m128_trueint; //              __m128f; // flt_trueint

extern __m128 const __m128_byte; //                 __m128f; // flt_byte
extern __m128 const __m128_byte_even; //            __m128f_even; // flt_byte
extern __m128 const __m128_byte_odd; //             __m128f_odd; // flt_byte
extern __m128 const __m128_4low; //                 __m128f; // flt_4low
extern __m128 const __m128_4high; //                    __m128f; // flt_4high
extern __m128 const __m128_flip4; //                    __m128f; // flt_flip4
extern __m128 const __m128_8low; //                 __m128f; // flt_8low
extern __m128 const __m128_8high; //                    __m128f; // flt_8high
extern __m128 const __m128_flip8; //                    __m128f; // flt_flip8
extern __m128 const __m128_16low; //                    __m128f; // flt_16low
extern __m128 const __m128_16high; //                   __m128f; // flt_16high
extern __m128 const __m128_flip16; //                   __m128f; // flt_flip16
extern __m128 const __m128_24low; //                    __m128f; // flt_24low
extern __m128 const __m128_24high; //                   __m128f; // flt_24high
extern __m128 const __m128_flip24; //                   __m128f; // flt_flip24
extern __m128 const __m128_28low; //                    __m128f; // flt_28low
extern __m128 const __m128_28high; //                   __m128f; // flt_28high
extern __m128 const __m128_flip28; //                   __m128f; // flt_flip28
extern __m128 const __m128_32low; //                    __m128f; // flt_32low
extern __m128 const __m128_32high; //                   __m128f; // flt_32high
extern __m128 const __m128_flip32; //                   __m128f; // flt_flip32

extern __m128 const __m128_0; //                        __m128f; // flt_0
extern __m128 const __m128_0d0001; //               __m128f; // flt_0d0001
extern __m128 const __m128_0d0002; //               __m128f; // flt_0d0002
extern __m128 const __m128_0d0003; //               __m128f; // flt_0d0003
extern __m128 const __m128_0d0004; //               __m128f; // flt_0d0004
extern __m128 const __m128_0d0005; //               __m128f; // flt_0d0005
extern __m128 const __m128_0d0006; //               __m128f; // flt_0d0006
extern __m128 const __m128_0d0007; //               __m128f; // flt_0d0007
extern __m128 const __m128_0d0008; //               __m128f; // flt_0d0008
extern __m128 const __m128_0d0009; //               __m128f; // flt_0d0009
extern __m128 const __m128_0d001; //                    __m128f; // flt_0d001
extern __m128 const __m128_0d002; //                    __m128f; // flt_0d002
extern __m128 const __m128_0d003; //                    __m128f; // flt_0d003
extern __m128 const __m128_0d004; //                    __m128f; // flt_0d004
extern __m128 const __m128_0d005; //                    __m128f; // flt_0d005
extern __m128 const __m128_0d006; //                    __m128f; // flt_0d006
extern __m128 const __m128_0d007; //                    __m128f; // flt_0d007
extern __m128 const __m128_0d008; //                    __m128f; // flt_0d008
extern __m128 const __m128_0d009; //                    __m128f; // flt_0d009
extern __m128 const __m128_0d01; //                     __m128f; // flt_0d01
extern __m128 const __m128_0d02; //                     __m128f; // flt_0d02
extern __m128 const __m128_0d025; //                    __m128f; // flt_0d025
extern __m128 const __m128_0d03; //                     __m128f; // flt_0d03
extern __m128 const __m128_0d04; //                     __m128f; // flt_0d04
extern __m128 const __m128_0d05; //                     __m128f; // flt_0d05
extern __m128 const __m128_0d06; //                     __m128f; // flt_0d06
extern __m128 const __m128_0d07; //                     __m128f; // flt_0d07
extern __m128 const __m128_0d08; //                     __m128f; // flt_0d08
extern __m128 const __m128_0d09; //                     __m128f; // flt_0d09
extern __m128 const __m128_0d1; //                  __m128f; // flt_0d1
extern __m128 const __m128_0d2; //                  __m128f; // flt_0d2
extern __m128 const __m128_0d25; //                     __m128f; // flt_0d25
extern __m128 const __m128_0d3; //                  __m128f; // flt_0d3
extern __m128 const __m128_0d4; //                  __m128f; // flt_0d4
extern __m128 const __m128_0d5; //                  __m128f; // flt_0d5
extern __m128 const __m128_0d6; //                  __m128f; // flt_0d6
extern __m128 const __m128_0d7; //                  __m128f; // flt_0d7
extern __m128 const __m128_0d8; //                  __m128f; // flt_0d8
extern __m128 const __m128_0d9; //                  __m128f; // flt_0d9
extern __m128 const __m128_1; //                        __m128f; // flt_1
extern __m128 const __m128_1d25; //                     __m128f; // flt_1d25
extern __m128 const __m128_1d5; //                  __m128f; // flt_1d5
extern __m128 const __m128_2; //                        __m128f; // flt_2
extern __m128 const __m128_2d25; //                     __m128f; // flt_2d25
extern __m128 const __m128_2d5; //                  __m128f; // flt_2d5
extern __m128 const __m128_3; //                        __m128f; // flt_3
extern __m128 const __m128_3d25; //                     __m128f; // flt_3d25
extern __m128 const __m128_3d5; //                  __m128f; // flt_3d5
extern __m128 const __m128_4; //                        __m128f; // flt_4
extern __m128 const __m128_4d25; //                     __m128f; // flt_4d25
extern __m128 const __m128_4d5; //                  __m128f; // flt_4d5
extern __m128 const __m128_5; //                        __m128f; // flt_5
extern __m128 const __m128_5d25; //                     __m128f; // flt_5d25
extern __m128 const __m128_5d5; //                  __m128f; // flt_5d5
extern __m128 const __m128_6; //                        __m128f; // flt_6
extern __m128 const __m128_6d25; //                     __m128f; // flt_6d25
extern __m128 const __m128_6d5; //                  __m128f; // flt_6d5
extern __m128 const __m128_7; //                        __m128f; // flt_7
extern __m128 const __m128_7d25; //                     __m128f; // flt_7d25
extern __m128 const __m128_7d5; //                  __m128f; // flt_7d5
extern __m128 const __m128_8; //                        __m128f; // flt_8
extern __m128 const __m128_8d25; //                     __m128f; // flt_8d25
extern __m128 const __m128_8d5; //                  __m128f; // flt_8d5
extern __m128 const __m128_9; //                        __m128f; // flt_9
extern __m128 const __m128_9d25; //                     __m128f; // flt_9d25
extern __m128 const __m128_9d5; //                  __m128f; // flt_9d5
extern __m128 const __m128_10; //                   __m128f; // flt_10
extern __m128 const __m128_11; //                   __m128f; // flt_11
extern __m128 const __m128_12; //                   __m128f; // flt_12
extern __m128 const __m128_13; //                   __m128f; // flt_13
extern __m128 const __m128_14; //                   __m128f; // flt_14
extern __m128 const __m128_15; //                   __m128f; // flt_15
extern __m128 const __m128_16; //                   __m128f; // flt_16
extern __m128 const __m128_17; //                   __m128f; // flt_17
extern __m128 const __m128_18; //                   __m128f; // flt_18
extern __m128 const __m128_19; //                   __m128f; // flt_19
extern __m128 const __m128_20; //                   __m128f; // flt_20
extern __m128 const __m128_21; //                   __m128f; // flt_21
extern __m128 const __m128_22; //                   __m128f; // flt_22
extern __m128 const __m128_23; //                   __m128f; // flt_23
extern __m128 const __m128_24; //                   __m128f; // flt_24
extern __m128 const __m128_24d5; //                     __m128f; // flt_24d5
extern __m128 const __m128_25; //                   __m128f; // flt_25
extern __m128 const __m128_26; //                   __m128f; // flt_26
extern __m128 const __m128_27; //                   __m128f; // flt_27
extern __m128 const __m128_28; //                   __m128f; // flt_28
extern __m128 const __m128_29; //                   __m128f; // flt_29
extern __m128 const __m128_30; //                   __m128f; // flt_30
extern __m128 const __m128_31; //                   __m128f; // flt_31
extern __m128 const __m128_32; //                   __m128f; // flt_32
extern __m128 const __m128_33; //                   __m128f; // flt_33
extern __m128 const __m128_34; //                   __m128f; // flt_34
extern __m128 const __m128_35; //                   __m128f; // flt_35
extern __m128 const __m128_36; //                   __m128f; // flt_36
extern __m128 const __m128_37; //                   __m128f; // flt_37
extern __m128 const __m128_38; //                   __m128f; // flt_38
extern __m128 const __m128_39; //                   __m128f; // flt_39
extern __m128 const __m128_40; //                   __m128f; // flt_40
extern __m128 const __m128_41; //                   __m128f; // flt_41
extern __m128 const __m128_42; //                   __m128f; // flt_42
extern __m128 const __m128_43; //                   __m128f; // flt_43
extern __m128 const __m128_44; //                   __m128f; // flt_44
extern __m128 const __m128_45; //                   __m128f; // flt_45
extern __m128 const __m128_46; //                   __m128f; // flt_46
extern __m128 const __m128_47; //                   __m128f; // flt_47
extern __m128 const __m128_48; //                   __m128f; // flt_48
extern __m128 const __m128_49; //                   __m128f; // flt_49
extern __m128 const __m128_50; //                   __m128f; // flt_50
extern __m128 const __m128_51; //                   __m128f; // flt_51
extern __m128 const __m128_52; //                   __m128f; // flt_52
extern __m128 const __m128_53; //                   __m128f; // flt_53
extern __m128 const __m128_54; //                   __m128f; // flt_54
extern __m128 const __m128_55; //                   __m128f; // flt_55
extern __m128 const __m128_56; //                   __m128f; // flt_56
extern __m128 const __m128_57; //                   __m128f; // flt_57
extern __m128 const __m128_58; //                   __m128f; // flt_58
extern __m128 const __m128_59; //                   __m128f; // flt_59
extern __m128 const __m128_60; //                   __m128f; // flt_60
extern __m128 const __m128_61; //                   __m128f; // flt_61
extern __m128 const __m128_62; //                   __m128f; // flt_62
extern __m128 const __m128_63; //                   __m128f; // flt_63
extern __m128 const __m128_64; //                   __m128f; // flt_64
extern __m128 const __m128_65; //                   __m128f; // flt_65
extern __m128 const __m128_66; //                   __m128f; // flt_66
extern __m128 const __m128_67; //                   __m128f; // flt_67
extern __m128 const __m128_68; //                   __m128f; // flt_68
extern __m128 const __m128_69; //                   __m128f; // flt_69
extern __m128 const __m128_70; //                   __m128f; // flt_70
extern __m128 const __m128_71; //                   __m128f; // flt_71
extern __m128 const __m128_72; //                   __m128f; // flt_72
extern __m128 const __m128_73; //                   __m128f; // flt_73
extern __m128 const __m128_74; //                   __m128f; // flt_74
extern __m128 const __m128_75; //                   __m128f; // flt_75
extern __m128 const __m128_76; //                   __m128f; // flt_76
extern __m128 const __m128_77; //                   __m128f; // flt_77
extern __m128 const __m128_78; //                   __m128f; // flt_78
extern __m128 const __m128_79; //                   __m128f; // flt_79
extern __m128 const __m128_80; //                   __m128f; // flt_80
extern __m128 const __m128_81; //                   __m128f; // flt_81
extern __m128 const __m128_82; //                   __m128f; // flt_82
extern __m128 const __m128_83; //                   __m128f; // flt_83
extern __m128 const __m128_84; //                   __m128f; // flt_84
extern __m128 const __m128_85; //                   __m128f; // flt_85
extern __m128 const __m128_86; //                   __m128f; // flt_86
extern __m128 const __m128_87; //                   __m128f; // flt_87
extern __m128 const __m128_88; //                   __m128f; // flt_88
extern __m128 const __m128_89; //                   __m128f; // flt_89
extern __m128 const __m128_90; //                   __m128f; // flt_90
extern __m128 const __m128_91; //                   __m128f; // flt_91
extern __m128 const __m128_92; //                   __m128f; // flt_92
extern __m128 const __m128_93; //                   __m128f; // flt_93
extern __m128 const __m128_94; //                   __m128f; // flt_94
extern __m128 const __m128_95; //                   __m128f; // flt_95
extern __m128 const __m128_96; //                   __m128f; // flt_96
extern __m128 const __m128_97; //                   __m128f; // flt_97
extern __m128 const __m128_98; //                   __m128f; // flt_98
extern __m128 const __m128_99; //                   __m128f; // flt_99
extern __m128 const __m128_100; //                  __m128f; // flt_100
extern __m128 const __m128_125; //                  __m128f; // flt_125
extern __m128 const __m128_126; //                  __m128f; // flt_126
extern __m128 const __m128_127; //                  __m128f; // flt_127
extern __m128 const __m128_128; //                  __m128f; // flt_128
extern __m128 const __m128_140; //                  __m128f; // flt_140
extern __m128 const __m128_145; //                  __m128f; // flt_145
extern __m128 const __m128_150; //                  __m128f; // flt_150
extern __m128 const __m128_180; //                  __m128f; // flt_180
extern __m128 const __m128_253; //                  __m128f; // flt_253
extern __m128 const __m128_254; //                  __m128f; // flt_254
extern __m128 const __m128_255; //                  __m128f; // flt_255
extern __m128 const __m128_256; //                  __m128f; // flt_256
extern __m128 const __m128_360; //                  __m128f; // flt_360
extern __m128 const __m128_511; //                  __m128f; // flt_511
extern __m128 const __m128_512; //                  __m128f; // flt_512
extern __m128 const __m128_513; //                  __m128f; // flt_513
extern __m128 const __m128_1023; //                     __m128f; // flt_1023
extern __m128 const __m128_1024; //                     __m128f; // flt_1024
extern __m128 const __m128_1025; //                     __m128f; // flt_1025

extern __m128 const __m128_32767; //                    __m128f; // flt_32767
extern __m128 const __m128_32768; //                    __m128f; // flt_32768
extern __m128 const __m128_65535; //                    __m128f; // flt_65535
extern __m128 const __m128_65536; //                    __m128f; // flt_65536
extern __m128 const __m128_2147483647; //           __m128f; // flt_2147483647
extern __m128 const __m128_2147483648; //           __m128f; // flt_2147483648
extern __m128 const __m128_4294967295; //           __m128f; // flt_4294967295
extern __m128 const __m128_4294967296; //           __m128f; // flt_4294967296

extern __m128 const __m128_neg0; //                     __m128f; // flt_neg0
extern __m128 const __m128_neg0d0001; //                __m128f; // flt_neg0d0001
extern __m128 const __m128_neg0d0002; //                __m128f; // flt_neg0d0002
extern __m128 const __m128_neg0d0003; //                __m128f; // flt_neg0d0003
extern __m128 const __m128_neg0d0004; //                __m128f; // flt_neg0d0004
extern __m128 const __m128_neg0d0005; //                __m128f; // flt_neg0d0005
extern __m128 const __m128_neg0d0006; //                __m128f; // flt_neg0d0006
extern __m128 const __m128_neg0d0007; //                __m128f; // flt_neg0d0007
extern __m128 const __m128_neg0d0008; //                __m128f; // flt_neg0d0008
extern __m128 const __m128_neg0d0009; //                __m128f; // flt_neg0d0009
extern __m128 const __m128_neg0d001; //                 __m128f; // flt_neg0d001
extern __m128 const __m128_neg0d002; //                 __m128f; // flt_neg0d002
extern __m128 const __m128_neg0d003; //                 __m128f; // flt_neg0d003
extern __m128 const __m128_neg0d004; //                 __m128f; // flt_neg0d004
extern __m128 const __m128_neg0d005; //                 __m128f; // flt_neg0d005
extern __m128 const __m128_neg0d006; //                 __m128f; // flt_neg0d006
extern __m128 const __m128_neg0d007; //                 __m128f; // flt_neg0d007
extern __m128 const __m128_neg0d008; //                 __m128f; // flt_neg0d008
extern __m128 const __m128_neg0d009; //                 __m128f; // flt_neg0d009
extern __m128 const __m128_neg0d01; //              __m128f; // flt_neg0d01
extern __m128 const __m128_neg0d02; //              __m128f; // flt_neg0d02
extern __m128 const __m128_neg0d025; //                 __m128f; // flt_neg0d025
extern __m128 const __m128_neg0d03; //              __m128f; // flt_neg0d03
extern __m128 const __m128_neg0d04; //              __m128f; // flt_neg0d04
extern __m128 const __m128_neg0d05; //              __m128f; // flt_neg0d05
extern __m128 const __m128_neg0d06; //              __m128f; // flt_neg0d06
extern __m128 const __m128_neg0d07; //              __m128f; // flt_neg0d07
extern __m128 const __m128_neg0d08; //              __m128f; // flt_neg0d08
extern __m128 const __m128_neg0d09; //              __m128f; // flt_neg0d09
extern __m128 const __m128_neg0d1; //               __m128f; // flt_neg0d1
extern __m128 const __m128_neg0d2; //               __m128f; // flt_neg0d2
extern __m128 const __m128_neg0d25; //              __m128f; // flt_neg0d25
extern __m128 const __m128_neg0d3; //               __m128f; // flt_neg0d3
extern __m128 const __m128_neg0d4; //               __m128f; // flt_neg0d4
extern __m128 const __m128_neg0d5; //               __m128f; // flt_neg0d5
extern __m128 const __m128_neg0d6; //               __m128f; // flt_neg0d6
extern __m128 const __m128_neg0d7; //               __m128f; // flt_neg0d7
extern __m128 const __m128_neg0d8; //               __m128f; // flt_neg0d8
extern __m128 const __m128_neg0d9; //               __m128f; // flt_neg0d9
extern __m128 const __m128_neg1; //                     __m128f; // flt_neg1
extern __m128 const __m128_neg1d25; //              __m128f; // flt_neg1d25
extern __m128 const __m128_neg1d5; //               __m128f; // flt_neg1d5
extern __m128 const __m128_neg2; //                     __m128f; // flt_neg2
extern __m128 const __m128_neg2d25; //              __m128f; // flt_neg2d25
extern __m128 const __m128_neg2d5; //               __m128f; // flt_neg2d5
extern __m128 const __m128_neg3; //                     __m128f; // flt_neg3
extern __m128 const __m128_neg3d25; //              __m128f; // flt_neg3d25
extern __m128 const __m128_neg3d5; //               __m128f; // flt_neg3d5
extern __m128 const __m128_neg4; //                     __m128f; // flt_neg4
extern __m128 const __m128_neg4d25; //              __m128f; // flt_neg4d25
extern __m128 const __m128_neg4d5; //               __m128f; // flt_neg4d5
extern __m128 const __m128_neg5; //                     __m128f; // flt_neg5
extern __m128 const __m128_neg5d25; //              __m128f; // flt_neg5d25
extern __m128 const __m128_neg5d5; //               __m128f; // flt_neg5d5
extern __m128 const __m128_neg6; //                     __m128f; // flt_neg6
extern __m128 const __m128_neg6d25; //              __m128f; // flt_neg6d25
extern __m128 const __m128_neg6d5; //               __m128f; // flt_neg6d5
extern __m128 const __m128_neg7; //                     __m128f; // flt_neg7
extern __m128 const __m128_neg7d25; //              __m128f; // flt_neg7d25
extern __m128 const __m128_neg7d5; //               __m128f; // flt_neg7d5
extern __m128 const __m128_neg8; //                     __m128f; // flt_neg8
extern __m128 const __m128_neg8d25; //              __m128f; // flt_neg8d25
extern __m128 const __m128_neg8d5; //               __m128f; // flt_neg8d5
extern __m128 const __m128_neg9; //                     __m128f; // flt_neg9
extern __m128 const __m128_neg9d25; //              __m128f; // flt_neg9d25
extern __m128 const __m128_neg9d5; //               __m128f; // flt_neg9d5
extern __m128 const __m128_neg10; //                    __m128f; // flt_neg10
extern __m128 const __m128_neg11; //                    __m128f; // flt_neg11
extern __m128 const __m128_neg12; //                    __m128f; // flt_neg12
extern __m128 const __m128_neg13; //                    __m128f; // flt_neg13
extern __m128 const __m128_neg14; //                    __m128f; // flt_neg14
extern __m128 const __m128_neg15; //                    __m128f; // flt_neg15
extern __m128 const __m128_neg16; //                    __m128f; // flt_neg16
extern __m128 const __m128_neg17; //                    __m128f; // flt_neg17
extern __m128 const __m128_neg18; //                    __m128f; // flt_neg18
extern __m128 const __m128_neg19; //                    __m128f; // flt_neg19
extern __m128 const __m128_neg20; //                    __m128f; // flt_neg20
extern __m128 const __m128_neg21; //                    __m128f; // flt_neg21
extern __m128 const __m128_neg22; //                    __m128f; // flt_neg22
extern __m128 const __m128_neg23; //                    __m128f; // flt_neg23
extern __m128 const __m128_neg24; //                    __m128f; // flt_neg24
extern __m128 const __m128_neg24d5; //              __m128f; // flt_neg24d5
extern __m128 const __m128_neg25; //                    __m128f; // flt_neg25
extern __m128 const __m128_neg26; //                    __m128f; // flt_neg26
extern __m128 const __m128_neg27; //                    __m128f; // flt_neg27
extern __m128 const __m128_neg28; //                    __m128f; // flt_neg28
extern __m128 const __m128_neg29; //                    __m128f; // flt_neg29
extern __m128 const __m128_neg30; //                    __m128f; // flt_neg30
extern __m128 const __m128_neg31; //                    __m128f; // flt_neg31
extern __m128 const __m128_neg32; //                    __m128f; // flt_neg32
extern __m128 const __m128_neg33; //                    __m128f; // flt_neg33
extern __m128 const __m128_neg34; //                    __m128f; // flt_neg34
extern __m128 const __m128_neg35; //                    __m128f; // flt_neg35
extern __m128 const __m128_neg36; //                    __m128f; // flt_neg36
extern __m128 const __m128_neg37; //                    __m128f; // flt_neg37
extern __m128 const __m128_neg38; //                    __m128f; // flt_neg38
extern __m128 const __m128_neg39; //                    __m128f; // flt_neg39
extern __m128 const __m128_neg40; //                    __m128f; // flt_neg40
extern __m128 const __m128_neg41; //                    __m128f; // flt_neg41
extern __m128 const __m128_neg42; //                    __m128f; // flt_neg42
extern __m128 const __m128_neg43; //                    __m128f; // flt_neg43
extern __m128 const __m128_neg44; //                    __m128f; // flt_neg44
extern __m128 const __m128_neg45; //                    __m128f; // flt_neg45
extern __m128 const __m128_neg46; //                    __m128f; // flt_neg46
extern __m128 const __m128_neg47; //                    __m128f; // flt_neg47
extern __m128 const __m128_neg48; //                    __m128f; // flt_neg48
extern __m128 const __m128_neg49; //                    __m128f; // flt_neg49
extern __m128 const __m128_neg50; //                    __m128f; // flt_neg50
extern __m128 const __m128_neg51; //                    __m128f; // flt_neg51
extern __m128 const __m128_neg52; //                    __m128f; // flt_neg52
extern __m128 const __m128_neg53; //                    __m128f; // flt_neg53
extern __m128 const __m128_neg54; //                    __m128f; // flt_neg54
extern __m128 const __m128_neg55; //                    __m128f; // flt_neg55
extern __m128 const __m128_neg56; //                    __m128f; // flt_neg56
extern __m128 const __m128_neg57; //                    __m128f; // flt_neg57
extern __m128 const __m128_neg58; //                    __m128f; // flt_neg58
extern __m128 const __m128_neg59; //                    __m128f; // flt_neg59
extern __m128 const __m128_neg60; //                    __m128f; // flt_neg60
extern __m128 const __m128_neg61; //                    __m128f; // flt_neg61
extern __m128 const __m128_neg62; //                    __m128f; // flt_neg62
extern __m128 const __m128_neg63; //                    __m128f; // flt_neg63
extern __m128 const __m128_neg64; //                    __m128f; // flt_neg64
extern __m128 const __m128_neg65; //                    __m128f; // flt_neg65
extern __m128 const __m128_neg66; //                    __m128f; // flt_neg66
extern __m128 const __m128_neg67; //                    __m128f; // flt_neg67
extern __m128 const __m128_neg68; //                    __m128f; // flt_neg68
extern __m128 const __m128_neg69; //                    __m128f; // flt_neg69
extern __m128 const __m128_neg70; //                    __m128f; // flt_neg70
extern __m128 const __m128_neg71; //                    __m128f; // flt_neg71
extern __m128 const __m128_neg72; //                    __m128f; // flt_neg72
extern __m128 const __m128_neg73; //                    __m128f; // flt_neg73
extern __m128 const __m128_neg74; //                    __m128f; // flt_neg74
extern __m128 const __m128_neg75; //                    __m128f; // flt_neg75
extern __m128 const __m128_neg76; //                    __m128f; // flt_neg76
extern __m128 const __m128_neg77; //                    __m128f; // flt_neg77
extern __m128 const __m128_neg78; //                    __m128f; // flt_neg78
extern __m128 const __m128_neg79; //                    __m128f; // flt_neg79
extern __m128 const __m128_neg80; //                    __m128f; // flt_neg80
extern __m128 const __m128_neg81; //                    __m128f; // flt_neg81
extern __m128 const __m128_neg82; //                    __m128f; // flt_neg82
extern __m128 const __m128_neg83; //                    __m128f; // flt_neg83
extern __m128 const __m128_neg84; //                    __m128f; // flt_neg84
extern __m128 const __m128_neg85; //                    __m128f; // flt_neg85
extern __m128 const __m128_neg86; //                    __m128f; // flt_neg86
extern __m128 const __m128_neg87; //                    __m128f; // flt_neg87
extern __m128 const __m128_neg88; //                    __m128f; // flt_neg88
extern __m128 const __m128_neg89; //                    __m128f; // flt_neg89
extern __m128 const __m128_neg90; //                    __m128f; // flt_neg90
extern __m128 const __m128_neg91; //                    __m128f; // flt_neg91
extern __m128 const __m128_neg92; //                    __m128f; // flt_neg92
extern __m128 const __m128_neg93; //                    __m128f; // flt_neg93
extern __m128 const __m128_neg94; //                    __m128f; // flt_neg94
extern __m128 const __m128_neg95; //                    __m128f; // flt_neg95
extern __m128 const __m128_neg96; //                    __m128f; // flt_neg96
extern __m128 const __m128_neg97; //                    __m128f; // flt_neg97
extern __m128 const __m128_neg98; //                    __m128f; // flt_neg98
extern __m128 const __m128_neg99; //                    __m128f; // flt_neg99
extern __m128 const __m128_neg100; //               __m128f; // flt_neg100
extern __m128 const __m128_neg125; //               __m128f; // flt_neg125
extern __m128 const __m128_neg126; //               __m128f; // flt_neg126
extern __m128 const __m128_neg127; //               __m128f; // flt_neg127
extern __m128 const __m128_neg128; //               __m128f; // flt_neg128
extern __m128 const __m128_neg140; //               __m128f; // flt_neg140
extern __m128 const __m128_neg145; //               __m128f; // flt_neg145
extern __m128 const __m128_neg150; //               __m128f; // flt_neg150
extern __m128 const __m128_neg180; //               __m128f; // flt_neg180
extern __m128 const __m128_neg253; //               __m128f; // flt_neg253
extern __m128 const __m128_neg254; //               __m128f; // flt_neg254
extern __m128 const __m128_neg255; //               __m128f; // flt_neg255
extern __m128 const __m128_neg256; //               __m128f; // flt_neg256
extern __m128 const __m128_neg360; //               __m128f; // flt_neg360
extern __m128 const __m128_neg511; //               __m128f; // flt_neg511
extern __m128 const __m128_neg512; //               __m128f; // flt_neg512
extern __m128 const __m128_neg513; //               __m128f; // flt_neg513
extern __m128 const __m128_neg1023; //              __m128f; // flt_neg1023
extern __m128 const __m128_neg1024; //              __m128f; // flt_neg1024
extern __m128 const __m128_neg1025; //              __m128f; // flt_neg1025

extern __m128 const __m128_neg32767; //                 __m128f; // flt_neg32767
extern __m128 const __m128_neg32768; //                 __m128f; // flt_neg32768
extern __m128 const __m128_neg65535; //                 __m128f; // flt_neg65535
extern __m128 const __m128_neg65536; //                 __m128f; // flt_neg65536
extern __m128 const __m128_neg2147483647; //            __m128f; // flt_neg2147483647
extern __m128 const __m128_neg2147483648; //            __m128f; // flt_neg2147483648
extern __m128 const __m128_neg4294967295; //            __m128f; // flt_neg4294967295
extern __m128 const __m128_neg4294967296; //            __m128f; // flt_neg4294967296

extern __m128 const __m128_bin128; //                   __m128i; // flt_bin128
extern __m128 const __m128_binneg150; //                __m128i; // flt_binneg150

extern __m128 const __m128_maxrand; //              __m128f; // flt_maxrand

extern __m128 const __m128_maxi8; //                    __m128f; // flt_maxi8
extern __m128 const __m128_mini8; //                    __m128f; // flt_mini8
extern __m128 const __m128_maxu8; //                    __m128f; // flt_maxu8

extern __m128 const __m128_maxi16; //                   __m128f; // flt_maxi16
extern __m128 const __m128_mini16; //                   __m128f; // flt_mini16
extern __m128 const __m128_maxu16; //                   __m128f; // flt_maxu16

extern __m128 const __m128_maxi32; //                   __m128f; // flt_maxi32
extern __m128 const __m128_mini32; //                   __m128f; // flt_mini32
extern __m128 const __m128_maxu32; //                   __m128f; // flt_maxu32

extern __m128 const __m128_maxi8xu8; //             __m128f; // flt_maxi8xu8
extern __m128 const __m128_mini8xu8; //             __m128f; // flt_mini8xu8
extern __m128 const __m128_maxi8xu16; //                __m128f; // flt_maxi8xu16
extern __m128 const __m128_mini8xu16; //                __m128f; // flt_mini8xu16

extern __m128 const __m128_maxi16xu16; //               __m128f; // flt_maxi16xu16
extern __m128 const __m128_mini16xu16; //               __m128f; // flt_mini16xu16

extern __m128 const __m128_fixunsigned; //          __m128f; // flt_fixunsigned
extern __m128 const __m128_fixunsigned32; //            __m128f; // flt_fixunsigned32
extern __m128 const __m128_fixmaxi32; //                __m128f; // flt_fixmaxi32
extern __m128 const __m128_fixmaxu32; //                __m128f; // flt_fixmaxu32

extern __m128 const __m128_rcpi16; //               __m128f; // flt_rcpi16
extern __m128 const __m128_rcpu16; //               __m128f; // flt_rcpu16
extern __m128 const __m128_rcpi16xu16; //           __m128f; // flt_rcpi16xu16

extern __m128 const __m128_fixaa8; //               __m128f; // flt_fixaa8
extern __m128 const __m128_fixr8; //                    __m128f; // flt_fixr8
extern __m128 const __m128_fixg8; //                    __m128f; // flt_fixg8
extern __m128 const __m128_fixb8; //                    __m128f; // flt_fixb8

extern __m128 const __m128_norma8; //               __m128f; // flt_norma8
extern __m128 const __m128_normr8; //               __m128f; // flt_normr8
extern __m128 const __m128_normg8; //               __m128f; // flt_normg8
extern __m128 const __m128_normb8; //               __m128f; // flt_normb8

extern __m128 const __m128_fixaa2; //               __m128f; // flt_fixaa2
extern __m128 const __m128_fixb10; //               __m128f; // flt_fixb10
extern __m128 const __m128_fixg10; //               __m128f; // flt_fixg10
extern __m128 const __m128_fixr10; //               __m128f; // flt_fixr10

extern __m128 const __m128_norma2; //               __m128f; // flt_norma2
extern __m128 const __m128_normb10; //              __m128f; // flt_normb10
extern __m128 const __m128_normg10; //              __m128f; // flt_normg10
extern __m128 const __m128_normr10; //              __m128f; // flt_normr10

extern __m128 const __m128_mg; //                   __m128f; // flt_mg
extern __m128 const __m128_negmg; //                    __m128f; // flt_negmg
extern __m128 const __m128_halfmg; //               __m128f; // flt_halfmg
extern __m128 const __m128_neghalfmg; //                __m128f; // flt_neghalfmg
extern __m128 const __m128_mgdiv4; //               __m128f; // flt_mgdiv4
extern __m128 const __m128_negmgdiv4; //                __m128f; // flt_negmgdiv4
extern __m128 const __m128_halfmgxmg; //                __m128f; // flt_halfmgxmg
extern __m128 const __m128_halfmgxsqrmg; //             __m128f; // flt_halfmgxsqrmg
extern __m128 const __m128_halfmgxcubemg; //            __m128f; // flt_halfmgxcubemg
extern __m128 const __m128_neghalfmgxmg; //             __m128f; // flt_neghalfmgxmg
extern __m128 const __m128_neghalfmgxsqrmg; //      __m128f; // flt_neghalfmgxsqrmg
extern __m128 const __m128_neghalfmgxcubemg; //         __m128f; // flt_neghalfmgxcubemg
extern __m128 const __m128_sqrmg; //                    __m128f; // flt_sqrmg
extern __m128 const __m128_cubemg; //               __m128f; // flt_cubemg
extern __m128 const __m128_sqrtmg; //               __m128f; // flt_sqrtmg
extern __m128 const __m128_cbrtmg; //               __m128f; // flt_cbrtmg
extern __m128 const __m128_rcpmg; //                    __m128f; // flt_rcpmg
extern __m128 const __m128_rcpsqrmg; //                 __m128f; // flt_rcpsqrmg
extern __m128 const __m128_rcpcubemg; //                __m128f; // flt_rcpcubemg
extern __m128 const __m128_rcpsqrtmg; //                __m128f; // flt_rcpsqrtmg
extern __m128 const __m128_rcpcbrtmg; //                __m128f; // flt_rcpcbrtmg

extern __m128 const __m128_2mg; //                  __m128f; // flt_2mg
extern __m128 const __m128_neg2mg; //               __m128f; // flt_neg2mg
extern __m128 const __m128_sqr2mg; //               __m128f; // flt_sqr2mg
extern __m128 const __m128_cube2mg; //              __m128f; // flt_cube2mg
extern __m128 const __m128_sqrt2mg; //              __m128f; // flt_sqrt2mg
extern __m128 const __m128_cbrt2mg; //              __m128f; // flt_cbrt2mg
extern __m128 const __m128_4mg; //                  __m128f; // flt_4mg
extern __m128 const __m128_neg4mg; //               __m128f; // flt_neg4mg
extern __m128 const __m128_sqr4mg; //               __m128f; // flt_sqr4mg
extern __m128 const __m128_cube4mg; //              __m128f; // flt_cube4mg
extern __m128 const __m128_sqrt4mg; //              __m128f; // flt_sqrt4mg
extern __m128 const __m128_cbrt4mg; //              __m128f; // flt_cbrt4mg
extern __m128 const __m128_rcp2mg; //               __m128f; // flt_rcp2mg
extern __m128 const __m128_rcp4mg; //               __m128f; // flt_rcp4mg

extern __m128 const __m128_e; //                        __m128f; // flt_e
extern __m128 const __m128_exp; //                  __m128f; // flt_exp
extern __m128 const __m128_loge; //                     __m128f; // flt_loge
extern __m128 const __m128_logehigh; //                 __m128f; // flt_logehigh
extern __m128 const __m128_log2e; //                    __m128f; // flt_log2e
extern __m128 const __m128_log2ehigh; //                __m128f; // flt_log2ehigh
extern __m128 const __m128_log10e; //               __m128f; // flt_log10e
extern __m128 const __m128_rcplog2e; //                 __m128f; // flt_rcplog2e
extern __m128 const __m128_rcplog10e; //                __m128f; // flt_rcplog10e
extern __m128 const __m128_log2t; //                    __m128f; // flt_log2t
extern __m128 const __m128_log2; //                     __m128f; // flt_log2
extern __m128 const __m128_log2high; //                 __m128f; // flt_log2high
extern __m128 const __m128_ln2; //                  __m128f; // flt_ln2
extern __m128 const __m128_ln2high; //              __m128f; // flt_ln2high
extern __m128 const __m128_1divln2; //              __m128f; // flt_1divln2
extern __m128 const __m128_2divln2; //              __m128f; // flt_2divln2
extern __m128 const __m128_lnt; //                  __m128f; // flt_lnt
extern __m128 const __m128_lnthigh; //              __m128f; // flt_lnthigh
extern __m128 const __m128_ln10; //                     __m128f; // flt_ln10
extern __m128 const __m128_sqrt2; //                    __m128f; // flt_sqrt2
extern __m128 const __m128_rcpsqrt2; //                 __m128f; // flt_rcpsqrt2
extern __m128 const __m128_sqrt2div2; //                __m128f; // flt_sqrt2div2
extern __m128 const __m128_sqrt2div2high; //            __m128f; // flt_sqrt2div2high
extern __m128 const __m128_sqrt2div2low; //             __m128f; // flt_sqrt2div2low
extern __m128 const __m128_sqrthalf; //                 __m128f; // flt_sqrthalf
extern __m128 const __m128_sqrthalfhigh; //             __m128f; // flt_sqrthalfhigh
extern __m128 const __m128_sqrthalflow; //          __m128f; // flt_sqrthalflow
extern __m128 const __m128_pow2; //                     __m128f; // flt_pow2
extern __m128 const __m128_rcppow2; //              __m128f; // flt_rcppow2
extern __m128 const __m128_cbrt2; //                    __m128f; // flt_cbrt2
extern __m128 const __m128_rcpcbrt2; //                 __m128f; // flt_rcpcbrt2
extern __m128 const __m128_1div3; //                    __m128f; // flt_1div3
extern __m128 const __m128_1div7; //                    __m128f; // flt_1div7
extern __m128 const __m128_1div9; //                    __m128f; // flt_1div9
extern __m128 const __m128_2div3; //                    __m128f; // flt_2div3
extern __m128 const __m128_2div7; //                    __m128f; // flt_2div7
extern __m128 const __m128_2div9; //                    __m128f; // flt_2div9
extern __m128 const __m128_4div3; //                    __m128f; // flt_4div3
extern __m128 const __m128_4div7; //                    __m128f; // flt_4div7
extern __m128 const __m128_4div9; //                    __m128f; // flt_4div9

extern __m128 const __m128_pi; //                   __m128f; // flt_pi
extern __m128 const __m128_pihigh; //               __m128f; // flt_pihigh
extern __m128 const __m128_halfpi; //               __m128f; // flt_halfpi
extern __m128 const __m128_2pi; //                  __m128f; // flt_2pi
extern __m128 const __m128_negpi; //                    __m128f; // flt_negpi
extern __m128 const __m128_neghalfpi; //                __m128f; // flt_neghalfpi
extern __m128 const __m128_neg2pi; //               __m128f; // flt_neg2pi
extern __m128 const __m128_rcppi; //                    __m128f; // flt_rcppi
extern __m128 const __m128_invpi; //                    __m128f; // flt_invpi
extern __m128 const __m128_rcp2pi; //               __m128f; // flt_rcp2pi
extern __m128 const __m128_inv2pi; //               __m128f; // flt_inv2pi
extern __m128 const __m128_pidiv2; //               __m128f; // flt_pidiv2
extern __m128 const __m128_pidiv2high; //           __m128f; // flt_pidiv2high
extern __m128 const __m128_pidiv4; //               __m128f; // flt_pidiv4
extern __m128 const __m128_pidiv4high; //           __m128f; // flt_pidiv4high
extern __m128 const __m128_pix3div4; //                 __m128f; // flt_pix3div4
extern __m128 const __m128_sqrtpi; //               __m128f; // flt_sqrtpi
extern __m128 const __m128_sqrt2pi; //              __m128f; // flt_sqrt2pi
extern __m128 const __m128_sqrt2pihigh; //          __m128f; // flt_sqrt2pihigh
extern __m128 const __m128_rcpsqrtpi; //                __m128f; // flt_rcpsqrtpi
extern __m128 const __m128_rcpsqrt2pi; //           __m128f; // flt_rcpsqrt2pi
extern __m128 const __m128_sqrtpidiv2; //           __m128f; // flt_sqrtpidiv2
extern __m128 const __m128_sqrtpidiv2high; //       __m128f; // flt_sqrtpidiv2high
extern __m128 const __m128_sqrt2pidiv2; //          __m128f; // flt_sqrt2pidiv2
extern __m128 const __m128_sqrt2pidiv2high; //      __m128f; // flt_sqrt2pidiv2high
extern __m128 const __m128_2divpi; //               __m128f; // flt_2divpi
extern __m128 const __m128_2div2pi; //              __m128f; // flt_2div2pi
extern __m128 const __m128_2divsqrtpi; //           __m128f; // flt_2divsqrtpi
extern __m128 const __m128_2divsqrt2pi; //          __m128f; // flt_2divsqrt2pi
extern __m128 const __m128_sqrt2divpi; //           __m128f; // flt_sqrt2divpi
extern __m128 const __m128_logpi; //                    __m128f; // flt_logpi
extern __m128 const __m128_log2pi; //               __m128f; // flt_log2pi
extern __m128 const __m128_lnpi; //                     __m128f; // flt_lnpi
extern __m128 const __m128_ln2pi; //                    __m128f; // flt_ln2pi
extern __m128 const __m128_powpi; //                    __m128f; // flt_powpi
extern __m128 const __m128_rcppowpi; //                 __m128f; // flt_rcppowpi
extern __m128 const __m128_pow2pi; //               __m128f; // flt_pow2pi
extern __m128 const __m128_rcppow2pi; //                __m128f; // flt_rcppow2pi
extern __m128 const __m128_cbrtpi; //               __m128f; // flt_cbrtpi
extern __m128 const __m128_rcpcbrtpi; //                __m128f; // flt_rcpcbrtpi
extern __m128 const __m128_cbrt2pi; //              __m128f; // flt_cbrt2pi
extern __m128 const __m128_rcpcbrt2pi; //           __m128f; // flt_rcpcbrt2pi

extern __m128 const __m128_pow2tom126; //           __m128f; // flt_pow2tom126
extern __m128 const __m128_pow2to126; //                __m128f; // flt_pow2to126
extern __m128 const __m128_normhuge; //                 __m128f; // flt_normhuge
extern __m128 const __m128_pow2to23; //                 __m128f; // flt_pow2to23
extern __m128 const __m128_pow2to24; //                 __m128f; // flt_pow2to24
extern __m128 const __m128_maxi32pow2to23; //       __m128f; // flt_maxi32pow2to23
extern __m128 const __m128_pow2to31; //                 __m128f; // flt_pow2to31
extern __m128 const __m128_pow2to32; //                 __m128f; // flt_pow2to32

extern __m128 const __m128_remquobits; //           __m128i; // flt_remquobits
extern __m128 const __m128_remquomask; //           __m128i; // flt_remquomask

extern __m128 const __m128_trigploss; //                __m128f; // flt_trigploss

extern __m128 const __m128_degtorad; //                 __m128f; // flt_degtorad
extern __m128 const __m128_radtodeg; //                 __m128f; // flt_radtodeg

extern __m128 const __m128_degtograd; //                __m128f; // flt_degtograd
extern __m128 const __m128_gradtodeg; //                __m128f; // flt_gradtodeg

extern __m128 const __m128_radtograd; //                __m128f; // flt_radtograd
extern __m128 const __m128_gradtorad; //                __m128f; // flt_gradtorad

extern __m128 const __m128_sungravity; //           __m128f; // flt_sungravity
extern __m128 const __m128_jupitergravity; //       __m128f; // flt_jupitergravity
extern __m128 const __m128_neptunegravity; //       __m128f; // flt_neptunegravity
extern __m128 const __m128_saturngravity; //            __m128f; // flt_saturngravity
extern __m128 const __m128_uranusgravity; //            __m128f; // flt_uranusgravity
extern __m128 const __m128_earthgravity; //             __m128f; // flt_earthgravity
extern __m128 const __m128_venusgravity; //             __m128f; // flt_venusgravity
extern __m128 const __m128_marsgravity; //          __m128f; // flt_marsgravity
extern __m128 const __m128_mercurygravity; //       __m128f; // flt_mercurygravity
extern __m128 const __m128_moongravity; //          __m128f; // flt_moongravity
extern __m128 const __m128_plutogravity; //             __m128f; // flt_plutogravity

extern __m128 const __m128_kmtoinch; //                 __m128f; // flt_kmtoinch
extern __m128 const __m128_kmtofeet; //                 __m128f; // flt_kmtofeet 
extern __m128 const __m128_kmtoyards; //                __m128f; // flt_kmtoyards
extern __m128 const __m128_kmtomiles; //                __m128f; // flt_kmtomiles

extern __m128 const __m128_metoinch; //                 __m128f; // flt_metoinch
extern __m128 const __m128_metofeet; //                 __m128f; // flt_metofeet
extern __m128 const __m128_metoyards; //                __m128f; // flt_metoyards
extern __m128 const __m128_metomiles; //                __m128f; // flt_metomiles

extern __m128 const __m128_cmtoinch; //                 __m128f; // flt_cmtoinch
extern __m128 const __m128_cmtofeet; //                 __m128f; // flt_cmtofeet
extern __m128 const __m128_cmtoyards; //                __m128f; // flt_cmtoyards
extern __m128 const __m128_cmtomiles; //                __m128f; // flt_cmtomiles

extern __m128 const __m128_milltoinch; //           __m128f; // flt_milltoinch
extern __m128 const __m128_milltofeet; //           __m128f; // flt_milltofeet
extern __m128 const __m128_milltoyards; //          __m128f; // flt_milltoyards
extern __m128 const __m128_milltomiles; //          __m128f; // flt_milltomiles

extern __m128 const __m128_inchtomill; //           __m128f; // flt_inchtomill
extern __m128 const __m128_inchtocm; //                 __m128f; // flt_inchtocm
extern __m128 const __m128_inchtome; //                 __m128f; // flt_inchtome
extern __m128 const __m128_inchtokm; //                 __m128f; // flt_inchtokm
extern __m128 const __m128_inchtofeet; //           __m128f; // flt_inchtofeet
extern __m128 const __m128_inchtoyards; //          __m128f; // flt_inchtoyards
extern __m128 const __m128_inchtomiles; //          __m128f; // flt_inchtomiles

extern __m128 const __m128_feettomill; //           __m128f; // flt_feettomill
extern __m128 const __m128_feettocm; //                 __m128f; // flt_feettocm
extern __m128 const __m128_feettome; //                 __m128f; // flt_feettome
extern __m128 const __m128_feettokm; //                 __m128f; // flt_feettokm
extern __m128 const __m128_feettoinch; //           __m128f; // flt_feettoinch
extern __m128 const __m128_feettoyards; //          __m128f; // flt_feettoyards
extern __m128 const __m128_feettomiles; //          __m128f; // flt_feettomiles

extern __m128 const __m128_yardstomill; //          __m128f; // flt_yardstomill
extern __m128 const __m128_yardstocm; //                __m128f; // flt_yardstocm
extern __m128 const __m128_yardstome; //                __m128f; // flt_yardstome
extern __m128 const __m128_yardstokm; //                __m128f; // flt_yardstokm
extern __m128 const __m128_yardstoinch; //          __m128f; // flt_yardstoinch
extern __m128 const __m128_yardstofeet; //          __m128f; // flt_yardstofeet
extern __m128 const __m128_yardstomiles; //             __m128f; // flt_yardstomiles

extern __m128 const __m128_milestomill; //          __m128f; // flt_milestomill
extern __m128 const __m128_milestocm; //                __m128f; // flt_milestocm
extern __m128 const __m128_milestome; //                __m128f; // flt_milestome
extern __m128 const __m128_milestoinch; //          __m128f; // flt_milestokm
extern __m128 const __m128_milestoinch; //          __m128f; // flt_milestoinch
extern __m128 const __m128_milestofeet; //          __m128f; // flt_milestofeet
extern __m128 const __m128_milestoyards; //             __m128f; // flt_milestoyards

extern __m128 const __m128_kmphtomeps; //           __m128f; // flt_kmphtomeps
extern __m128 const __m128_kmphtokmps; //           __m128f; // flt_kmphtokmps
extern __m128 const __m128_kmphtomepm; //           __m128f; // flt_kmphtomepm
extern __m128 const __m128_kmphtomilesph; //            __m128f; // flt_kmphtomilesph
extern __m128 const __m128_kmphtomilesps; //            __m128f; // flt_kmphtomilesps
extern __m128 const __m128_kmphtofeetps; //             __m128f; // flt_kmphtofeetps
extern __m128 const __m128_kmphtofeetpm; //             __m128f; // flt_kmphtofeetpm

extern __m128 const __m128_kmpstomeps; //           __m128f; // flt_kmpstomeps
extern __m128 const __m128_kmpstokmph; //           __m128f; // flt_kmpstokmph
extern __m128 const __m128_kmpstomepm; //           __m128f; // flt_kmpstomepm
extern __m128 const __m128_kmpstomilesph; //            __m128f; // flt_kmpstomilesph
extern __m128 const __m128_kmpstomilesps; //            __m128f; // flt_kmpstomilesps
extern __m128 const __m128_kmpstofeetps; //             __m128f; // flt_kmpstofeetps
extern __m128 const __m128_kmpstofeetpm; //             __m128f; // flt_kmpstofeetpm

extern __m128 const __m128_mepstokmph; //           __m128f; // flt_mepstokmph
extern __m128 const __m128_mepstokmps; //           __m128f; // flt_mepstokmps
extern __m128 const __m128_mepstomepm; //           __m128f; // flt_mepstomepm
extern __m128 const __m128_mepstomilesph; //            __m128f; // flt_mepstomilesph
extern __m128 const __m128_mepstomilesps; //            __m128f; // flt_mepstomilesps
extern __m128 const __m128_mepstofeetps; //             __m128f; // flt_mepstofeetps
extern __m128 const __m128_mepstofeetpm; //             __m128f; // flt_mepstofeetpm

extern __m128 const __m128_mepmtokmph; //           __m128f; // flt_mepmtokmph
extern __m128 const __m128_mepmtokmps; //           __m128f; // flt_mepmtokmps
extern __m128 const __m128_mepmtomeps; //           __m128f; // flt_mepmtomeps
extern __m128 const __m128_mepmtomilesph; //            __m128f; // flt_mepmtomilesph
extern __m128 const __m128_mepmtomilesps; //            __m128f; // flt_mepmtomilesps
extern __m128 const __m128_mepmtofeetps; //             __m128f; // flt_mepmtofeetps
extern __m128 const __m128_mepmtofeetpm; //             __m128f; // flt_mepmtofeetpm

extern __m128 const __m128_milesphtokmph; //            __m128f; // flt_milesphtokmph
extern __m128 const __m128_milesphtokmps; //            __m128f; // flt_milesphtokmps
extern __m128 const __m128_milesphtomeps; //            __m128f; // flt_milesphtomeps
extern __m128 const __m128_milesphtomepm; //            __m128f; // flt_milesphtomepm
extern __m128 const __m128_milesphtomilesps; //     __m128f; // flt_milesphtomilesps
extern __m128 const __m128_milesphtofeetps; //      __m128f; // flt_milesphtofeetps
extern __m128 const __m128_milesphtofeetpm; //      __m128f; // flt_milesphtofeetpm

extern __m128 const __m128_milespstokmph; //            __m128f; // flt_milespstokmph
extern __m128 const __m128_milespstokmps; //            __m128f; // flt_milespstokmps
extern __m128 const __m128_milespstomeps; //            __m128f; // flt_milespstomeps
extern __m128 const __m128_milespstomepm; //            __m128f; // flt_milespstomepm
extern __m128 const __m128_milespstomilespm; //     __m128f; // flt_milespstomilespm
extern __m128 const __m128_milespstofeetps; //      __m128f; // flt_milespstofeetps
extern __m128 const __m128_milespstofeetpm; //      __m128f; // flt_milespstofeetpm

extern __m128 const __m128_feetpstokmph; //             __m128f; // flt_feetpstokmph
extern __m128 const __m128_feetpstokmps; //             __m128f; // flt_feetpstokmps
extern __m128 const __m128_feetpstomeps; //             __m128f; // flt_feetpstomeps
extern __m128 const __m128_feetpstomepm; //             __m128f; // flt_feetpstomepm
extern __m128 const __m128_feetpstomilesph; //      __m128f; // flt_feetpstomilesph
extern __m128 const __m128_feetpstomilesps; //      __m128f; // flt_feetpstomilesps
extern __m128 const __m128_feetpstofeetpm; //       __m128f; // flt_feetpstofeetpm

extern __m128 const __m128_feetpmtokmph; //         __m128f; // flt_feetpmtokmph
extern __m128 const __m128_feetpmtokmps; //             __m128f; // flt_feetpmtokmps
extern __m128 const __m128_feetpmtomeps; //             __m128f; // flt_feetpmtomeps
extern __m128 const __m128_feetpmtomepm; //             __m128f; // flt_feetpmtomepm
extern __m128 const __m128_feetpmtomilesph; //      __m128f; // flt_feetpmtomilesph
extern __m128 const __m128_feetpmtomilesps; //      __m128f; // flt_feetpmtomilesps
extern __m128 const __m128_feetpmtofeetps; //       __m128f; // flt_feetpmtofeetps

extern __m128 const __m128_soundspeedp50c; //       __m128f; // flt_soundspeedp50c
extern __m128 const __m128_soundspeedp45c; //       __m128f; // flt_soundspeedp45c
extern __m128 const __m128_soundspeedp40c; //       __m128f; // flt_soundspeedp40c
extern __m128 const __m128_soundspeedp35c; //       __m128f; // flt_soundspeedp35c
extern __m128 const __m128_soundspeedp30c; //       __m128f; // flt_soundspeedp30c
extern __m128 const __m128_soundspeedp25c; //       __m128f; // flt_soundspeedp25c
extern __m128 const __m128_soundspeedp20c; //       __m128f; // flt_soundspeedp20c
extern __m128 const __m128_soundspeedp15c; //       __m128f; // flt_soundspeedp15c
extern __m128 const __m128_soundspeedp10c; //       __m128f; // flt_soundspeedp10c
extern __m128 const __m128_soundspeedp5c; //            __m128f; // flt_soundspeedp5c
extern __m128 const __m128_soundspeed0c; //             __m128f; // flt_soundspeed0c
extern __m128 const __m128_soundspeedn5c; //            __m128f; // flt_soundspeedn5c
extern __m128 const __m128_soundspeedn10c; //       __m128f; // flt_soundspeedn10c
extern __m128 const __m128_soundspeedn15c; //       __m128f; // flt_soundspeedn15c
extern __m128 const __m128_soundspeedn20c; //       __m128f; // flt_soundspeedn20c
extern __m128 const __m128_soundspeedn25c; //       __m128f; // flt_soundspeedn25c
extern __m128 const __m128_soundspeedn30c; //       __m128f; // flt_soundspeedn30c
extern __m128 const __m128_soundspeedn35c; //       __m128f; // flt_soundspeedn35c
extern __m128 const __m128_soundspeedn40c; //       __m128f; // flt_soundspeedn40c
extern __m128 const __m128_soundspeedn45c; //       __m128f; // flt_soundspeedn45c
extern __m128 const __m128_soundspeedn50c; //       __m128f; // flt_soundspeedn50c

extern __m128 const __m128_schscale; //                 __m128f; // flt_schscale
extern __m128 const __m128_thscale; //              __m128f; // flt_thscale

extern __m128 const __m128_expest1; //              __m128f; // flt_expest1
extern __m128 const __m128_expest2; //              __m128f; // flt_expest2
extern __m128 const __m128_expest3; //              __m128f; // flt_expest3
extern __m128 const __m128_expest4; //              __m128f; // flt_expest4
extern __m128 const __m128_expest5; //              __m128f; // flt_expest5
extern __m128 const __m128_expest6; //              __m128f; // flt_expest6
extern __m128 const __m128_expest7; //              __m128f; // flt_expest7
extern __m128 const __m128_logest0; //              __m128f; // flt_logest0
extern __m128 const __m128_logest1; //              __m128f; // flt_logest1
extern __m128 const __m128_logest2; //              __m128f; // flt_logest2
extern __m128 const __m128_logest3; //              __m128f; // flt_logest3
extern __m128 const __m128_logest4; //              __m128f; // flt_logest4
extern __m128 const __m128_logest5; //              __m128f; // flt_logest5
extern __m128 const __m128_logest6; //              __m128f; // flt_logest6
extern __m128 const __m128_logest7; //              __m128f; // flt_logest7


	//;;DirectX Math constants;;

extern __m128 const __m128_sincoefficients0; //                 __m128f; // (-0.16666667); // (+0.0083333310); // (-0.00019840874); // (+2.7525562e-06)
extern __m128 const __m128_sincoefficients1; //                 __m128f; // (-2.3889859e-08); // (-0.16665852); // (+0.0083139502); // (-0.00018524670)
extern __m128 const __m128_coscoefficients0; //                 __m128f; // (-0.5); // (+0.041666638); // (-0.0013888378); // (+2.4760495e-05)
extern __m128 const __m128_coscoefficients1; //                 __m128f; // (-2.6051615e-07); // (-0.49992746); // (+0.041493919); // (-0.0012712436)
extern __m128 const __m128_tancoefficients0; //                 __m128f; // 1.0; // 0.333333333; // 0.133333333; // (5.396825397e-2)
extern __m128 const __m128_tancoefficients1; //                 __m128f; // (2.186948854e-2); // (8.863235530e-3); // (3.592128167e-3); // (1.455834485e-3)
extern __m128 const __m128_tancoefficients2; //                 __m128f; // (5.900274264e-4); // (2.391290764e-4); // (9.691537707e-5); // (3.927832950e-5)
extern __m128 const __m128_arccoefficients0; //                 __m128f; // (+1.5707963050); // (-0.2145988016); // (+0.0889789874); // (-0.0501743046)
extern __m128 const __m128_arccoefficients1; //                 __m128f; // (+0.0308918810); // (-0.0170881256); // (+0.0066700901); // (-0.0012624911)
extern __m128 const __m128_atancoefficients0; //                __m128f; // (-0.3333314528); // (+0.1999355085); // (-0.1420889944); // (+0.1065626393)
extern __m128 const __m128_atancoefficients1; //                __m128f; // (-0.0752896400); // (+0.0429096138); // (-0.0161657367); // (+0.0028662257)
extern __m128 const __m128_atanestcoefficients0; //             __m128f; // (+0.999866); // (+0.999866); // (+0.999866); // (+0.999866)
extern __m128 const __m128_atanestcoefficients1; //             __m128f; // (-0.3302995); // (+0.180141); // (-0.085133); // (+0.0208351)
extern __m128 const __m128_tanestcoefficients; //           __m128f; // 2.484; // (-1.954923183e-1); // 2.467401101; // flt_rcppi
extern __m128 const __m128_arcestcoefficients; //           __m128f; // (+1.5707288); // (-0.2121144); // (+0.0742610); // (-0.0187293)
extern __m128 const __m128_piconstants0; //                     __m128f; // flt_pi; // flt_2pi; // flt_rcppi; // flt_rcp2pi
extern __m128 const __m128_identityr0; //                   __m128f; // flt_1; // flt_0; // flt_0; // flt_0
extern __m128 const __m128_identityr1; //                   __m128f; // flt_0; // flt_1; // flt_0; // flt_0
extern __m128 const __m128_identityr2; //                   __m128f; // flt_0; // flt_0; // flt_1; // flt_0
extern __m128 const __m128_identityr3; //                   __m128f; // flt_0; // flt_0; // flt_0; // flt_1
extern __m128 const __m128_negidentityr0; //                    __m128f; // flt_neg1; // flt_0; // flt_0; // flt_0
extern __m128 const __m128_negidentityr1; //                    __m128f; // flt_0; // flt_neg1; // flt_0; // flt_0
extern __m128 const __m128_negidentityr2; //                    __m128f; // flt_0; // flt_0; // flt_neg1; // flt_0
extern __m128 const __m128_negidentityr3; //                    __m128f; // flt_0; // flt_0; // flt_0; // flt_neg1
extern __m128 const __m128_negativezero; //                     __m128i; // flt_neg0_msk; // flt_neg0_msk; // flt_neg0_msk; // flt_neg0_msk
extern __m128 const __m128_negate3; //                      __m128i; // flt_neg0_msk; // flt_neg0_msk; // flt_neg0_msk; // flt_false_msk
extern __m128 const __m128_maskxy; //                       __m128i; // flt_true_msk; // flt_true_msk; // flt_false_msk; // flt_false_msk
extern __m128 const __m128_maskxyz; //                      __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_false_msk
extern __m128 const __m128_maskxyzw; //                         __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_true_msk
extern __m128 const __m128_mask3; //                            __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_false_msk
extern __m128 const __m128_maskx; //                            __m128i; // flt_true_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128 const __m128_masky; //                            __m128i; // flt_false_msk; // flt_true_msk; // flt_false_msk; // flt_false_msk
extern __m128 const __m128_maskz; //                            __m128i; // flt_false_msk; // flt_false_msk; // flt_true_msk; // flt_false_msk
extern __m128 const __m128_maskw; //                            __m128i; // flt_false_msk; // flt_false_msk; // flt_false_msk; // flt_true_msk
extern __m128 const __m128_one; //                          __m128f; // flt_1; // flt_1; // flt_1; // flt_1
extern __m128 const __m128_one3; //                             __m128f; // flt_1; // flt_1; // flt_1; // flt_0
extern __m128 const __m128_zero; //                             __m128f; // flt_0; // flt_0; // flt_0; // flt_0
extern __m128 const __m128_two; //                          __m128f; // flt_2; // flt_2; // flt_2; // flt_2
extern __m128 const __m128_four; //                             __m128f; // flt_4; // flt_4; // flt_4; // flt_4
extern __m128 const __m128_six; //                          __m128f; // flt_6; // flt_6; // flt_6; // flt_6
extern __m128 const __m128_negativeone; //                  __m128f; // flt_neg1; // flt_neg1; // flt_neg1; // flt_neg1
extern __m128 const __m128_onehalf; //                      __m128f; // flt_0d5; // flt_0d5; // flt_0d5; // flt_0d5
extern __m128 const __m128_negativeonehalf; //              __m128f; // flt_neg0d5; // flt_neg0d5; // flt_neg0d5; // flt_neg0d5
extern __m128 const __m128_negativetwopi; //                    __m128f; // flt_neg2pi; // flt_neg2pi; // flt_neg2pi; // flt_neg2pi
extern __m128 const __m128_negativepi; //                   __m128f; // flt_negpi; // flt_negpi; // flt_negpi; // flt_negpi
extern __m128 const __m128_reciprocalpi; //                     __m128f; // flt_rcppi; // flt_rcppi; // flt_rcppi; // flt_rcppi
extern __m128 const __m128_twopi; //                            __m128f; // flt_2pi; // flt_2pi; // flt_2pi; // flt_2pi
extern __m128 const __m128_reciprocaltwopi; //              __m128f; // flt_rcp2pi; // flt_rcp2pi; // flt_rcp2pi; // flt_rcp2pi
extern __m128 const __m128_infinity; //                         __m128i; // flt_inf_msk; // flt_inf_msk; // flt_inf_msk; // flt_inf_msk
extern __m128 const __m128_qnantest; //                         __m128i; // flt_nantest_msk; // flt_nantest_msk; // flt_nantest_msk; // flt_nantest_msk
extern __m128 const __m128_absmask; //                      __m128i; // flt_abs_msk; // flt_abs_msk; // flt_abs_msk; // flt_abs_msk
extern __m128 const __m128_fltmin; //                       __m128i; // flt_min_msk; // flt_min_msk; // flt_min_msk; // flt_min_msk
extern __m128 const __m128_fltmax; //                       __m128i; // flt_max_msk; // flt_max_msk; // flt_max_msk; // flt_max_msk
extern __m128 const __m128_negonemask; //                   __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_true_msk
extern __m128 const __m128_maska8r8g8b8; //                     __m128i; // flt_a8_msk; // flt_r8_msk; // flt_g8_msk; // flt_b8_msk
extern __m128 const __m128_flipa8r8g8b8; //                     __m128i; // flt_flipa8_msk; // flt_flipr8_msk; // flt_flipg8_msk; // flt_flipb8_msk
extern __m128 const __m128_fixaa8r8g8b8; //                     __m128; // flt_fixaa8; // flt_fixr8; // flt_fixg8; // flt_fixb8
extern __m128 const __m128_normalizea8r8g8b8; //                __m128; // flt_norma8; // flt_normr8; // flt_normg8; // flt_normb8
extern __m128 const __m128_maska2b10g10r10; //              __m128i; // flt_a2_msk; // flt_b10_msk; // flt_g10_msk; // flt_r10_msk
extern __m128 const __m128_flipa2b10g10r10; //              __m128i; // flt_flipa2_msk; // flt_flipb10_msk; // flt_flipg10_msk; // flt_flipr10_msk
extern __m128 const __m128_fixaa2b10g10r10; //              __m128; // flt_fixaa2; // flt_fixb10; // flt_fixg10; // flt_fixr10
extern __m128 const __m128_normalizea2b10g10r10; //             __m128; // flt_norma2; // flt_normb10; // flt_normg10; // flt_normr10
extern __m128 const __m128_maskx16y16; //                   __m128i; // flt_16low_msk; // flt_16high_msk; // flt_false; // flt_false
extern __m128 const __m128_flipx16y16; //                   __m128i; // flt_flip16_msk; // flt_flip16_msk; // flt_false; // flt_false
extern __m128 const __m128_fixx16y16; //                        __m128; // flt_neg32768; // flt_0; // flt_0; // flt_0
extern __m128 const __m128_normalizex16y16; //              __m128; // 3.051850947599719e-5; // 4.656754985961486e-10; // flt_0; // flt_0
extern __m128 const __m128_maskx16y16z16w16; //                 __m128i; // flt_16low_msk; // flt_16low_msk; // flt_16high_msk; // flt_16high_msk
extern __m128 const __m128_flipx16y16z16w16; //                 __m128i; // flt_flip16_msk; // flt_flip16_msk; // flt_false; // flt_false
extern __m128 const __m128_fixx16y16z16w16; //              __m128f; // flt_neg32768; // flt_neg32768; // flt_0; // flt_0
extern __m128 const __m128_normalizex16y16z16w16; //            __m128f; // 3.051850947599719e-5; // 3.051850947599719e-5; // 4.656754985961486e-10; // 4.656754985961486e-10
extern __m128 const __m128_maskbyte; //                         __m128i; // flt_byte_msk; // flt_byte_msk; // flt_byte_msk; // flt_byte_msk
extern __m128 const __m128_negatex; //                      __m128f; // flt_neg1; // flt_1; // flt_1; // flt_1
extern __m128 const __m128_negatey; //                      __m128f; // flt_1; // flt_neg1; // flt_1; // flt_1
extern __m128 const __m128_negatez; //                      __m128f; // flt_1; // flt_1; // flt_neg1; // flt_1
extern __m128 const __m128_negatew; //                      __m128f; // flt_1; // flt_1; // flt_1; // flt_neg1
extern __m128 const __m128_select0000; //                 __m128i; flt_false, flt_false, flt_false, flt_false
extern __m128 const __m128_select0001; //                 __m128i; flt_false, flt_false, flt_false, flt_true
extern __m128 const __m128_select0010; //                 __m128i; flt_false, flt_false, flt_true, flt_false
extern __m128 const __m128_select0100; //                 __m128i; flt_false, flt_true, flt_false, flt_false
extern __m128 const __m128_select1000; //                 __m128i; flt_true, flt_false, flt_false, flt_false
extern __m128 const __m128_select0011; //                 __m128i; flt_false, flt_false, flt_true, flt_true
extern __m128 const __m128_select0111; //                 __m128i; flt_false, flt_true, flt_true, flt_true
extern __m128 const __m128_select1111; //                 __m128i; flt_true, flt_true, flt_true, flt_true
extern __m128 const __m128_select1110; //                 __m128i; flt_true, flt_true, flt_true, flt_false
extern __m128 const __m128_select1100; //                 __m128i; flt_true, flt_true, flt_false, flt_false
extern __m128 const __m128_select1001; //                 __m128i; flt_true, flt_false, flt_false, flt_true
extern __m128 const __m128_select0110; //                 __m128i; flt_false, flt_true, flt_true, flt_false
extern __m128 const __m128_select1011; //                 __m128i; flt_true, flt_false, flt_true, flt_true
extern __m128 const __m128_select1101; //                 __m128i; flt_true, flt_true, flt_false, flt_true
extern __m128 const __m128_select0101; //                 __m128i; flt_false, flt_true, flt_false, flt_true
extern __m128 const __m128_select1010; //                 __m128i; flt_true, flt_false, flt_true, flt_false
extern __m128 const __m128_onehalfminusepsilon; //          __m128i; // flt_halfminuseps_msk; // flt_halfminuseps_msk; // flt_halfminuseps_msk; // flt_halfminuseps_msk
extern __m128 const __m128_fixupy16; //                         __m128f; // flt_1; // 0.0000152587890625; // flt_0; // flt_0
extern __m128 const __m128_fixupy16w16; //                  __m128f; // flt_1; // flt_1; // 0.0000152587890625; // 0.0000152587890625   
extern __m128 const __m128_flipy; //                            __m128i; // flt_false; // flt_flip32_msk; // flt_false; // flt_false
extern __m128 const __m128_flipz; //                            __m128i; // flt_false; // flt_false; // flt_flip32_msk; // flt_false
extern __m128 const __m128_flipw; //                            __m128i; // flt_false; // flt_false; // flt_false; // flt_flip32_msk
extern __m128 const __m128_flipyz; //                       __m128i; // flt_false; // flt_flip32_msk; // flt_flip32_msk; // flt_false
extern __m128 const __m128_flipzw; //                       __m128i; // flt_false; // flt_false; // flt_flip32_msk; // flt_flip32_msk
extern __m128 const __m128_flipyw; //                       __m128i; // flt_false; // flt_flip32_msk; // flt_false; // flt_flip32_msk
extern __m128 const __m128_maskdec4; //                         __m128i; // 0x000003ff; // 0x000ffc00; // 0x3ff00000; // 0xc0000000
extern __m128 const __m128_xordec4; //                      __m128i; // 0x00000200; // 0x00080000; // 0x20000000; // 0x00000000
extern __m128 const __m128_addudec4; //                         __m128f; // flt_0; // flt_0; // flt_0; // flt_2147483648
extern __m128 const __m128_addec4; //                       __m128f; // flt_neg512; // (-524288.0); // (-536870912.0); // flt_0
extern __m128 const __m128_muldec4; //                      __m128f; // flt_1; // 0.0009765625; // 0.00000095367431640625; // 0.000000000931322574615478515625  
extern __m128 const __m128_maskbyte4; //                        __m128i; // 0x000000ff; // 0x0000ff00; // 0x00ff0000; // 0xff000000
extern __m128 const __m128_xorbyte4; //                         __m128i; // 0x00000080; // 0x00008000; // 0x00800000; // 0x00000000
extern __m128 const __m128_addbyte4; //                         __m128f; // flt_neg128; // flt_neg32768; // flt_mini8xu16; // flt_0
extern __m128 const __m128_fixmaxint; //                        __m128f; // flt_fixmaxi32; // flt_fixmaxi32; // flt_fixmaxi32; // flt_fixmaxi32
extern __m128 const __m128_fixmaxuint; //                   __m128f; // flt_fixmaxu32; // flt_fixmaxu32; // flt_fixmaxu32; // flt_fixmaxu32
extern __m128 const __m128_unsignedfix; //                  __m128f; // flt_fixunsigned; // flt_fixunsigned; // flt_fixunsigned; // flt_fixunsigned
extern __m128 const __m128_srgbscale; //                        __m128f; // 12.92; // 12.92; // 12.92; // flt_1
extern __m128 const __m128_srgba; //                            __m128f; // 0.055; // 0.055; // 0.055; // flt_0
extern __m128 const __m128_srgba1; //                       __m128f; // 1.055; // 1.055; // 1.055; // flt_1
extern __m128 const __m128_exponentbias; //                     __m128i; // flt_exp_msk; // flt_exp_msk; // flt_exp_msk; // flt_exp_msk
extern __m128 const __m128_subnormalexponent; //                __m128i; // flt_subnormalexp_msk; // flt_subnormalexp_msk; // flt_subnormalexp_msk; // flt_subnormalexp_msk
extern __m128 const __m128_numtrailing; //                  __m128i; // flt_mant_msk; // flt_mant_msk; // flt_mant_msk; // flt_mant_msk
extern __m128 const __m128_neginfinity; //                  __m128i; // flt_neginf_msk; // flt_neginf_msk; // flt_neginf_msk; // flt_neginf_msk
extern __m128 const __m128_lge; //                          __m128f; // flt_log2e; // flt_log2e; // flt_log2e; // flt_log2e
extern __m128 const __m128_invlge; //                       __m128f; // flt_rcplog2e; // flt_rcplog2e; // flt_rcplog2e; // flt_rcplog2e
extern __m128 const __m128_ubytemax; //                         __m128f; // flt_255; // flt_255; // flt_255; // flt_255
extern __m128 const __m128_bytemin; //                      __m128f; // flt_neg127; // flt_neg127; // flt_neg127; // flt_neg127
extern __m128 const __m128_bytemax; //                      __m128f; // flt_127; // flt_127; // flt_127; // flt_127
extern __m128 const __m128_shortmin; //                         __m128f; // flt_neg32767; // flt_neg32767; // flt_neg32767; // flt_neg32767
extern __m128 const __m128_shortmax; //                         __m128f; // flt_32767; // flt_32767; // flt_32767; // flt_32767
extern __m128 const __m128_ushortmax; //                        __m128f; // flt_65535; // flt_65535; // flt_65535; // flt_65535

	//;;float low;;

	//             sincos template, single precision
extern __m128 const __m128_0e_DP1F; //              __m128f; // (0.78515625 * 2.0)
extern __m128 const __m128_0e_DP2F; //              __m128f; // (2.4187564849853515625e-4 * 2.0)
extern __m128 const __m128_0e_DP3F; //              __m128f; // (3.77489497744594108e-8 * 2.0)

extern __m128 const __m128_0e_P0sinf; //              __m128f; // (-1.6666654611e-1)
extern __m128 const __m128_0e_P1sinf; //              __m128f; // (8.3321608736e-3)
extern __m128 const __m128_0e_P2sinf; //              __m128f; // (-1.9515295891e-4)

extern __m128 const __m128_0e_P0cosf; //              __m128f; // (4.166664568298827e-2)
extern __m128 const __m128_0e_P1cosf; //              __m128f; // (-1.388731625493765e-3)
extern __m128 const __m128_0e_P2cosf; //              __m128f; // (2.443315711809948e-5)
	//             sincos template, single precision

extern __m128 const __m128_0e_1lshl3; //                    __m128f; // flt_1lshl3; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl4; //                    __m128f; // flt_1lshl4; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl7; //                    __m128f; // flt_1lshl7; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl8; //                    __m128f; // flt_1lshl8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl11; //                   __m128f; // flt_1lshl11; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl12; //                   __m128f; // flt_1lshl12; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl15; //                   __m128f; // flt_1lshl15; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl16; //                   __m128f; // flt_1lshl16; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl19; //                   __m128f; // flt_1lshl19; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl20; //                   __m128f; // flt_1lshl20; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl23; //                   __m128f; // flt_1lshl23; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl24; //                   __m128f; // flt_1lshl24; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl27; //                   __m128f; // flt_1lshl27; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl28; //                   __m128f; // flt_1lshl28; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1lshl31; //                   __m128f; // flt_1lshl31; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_neg1lshl3; //             __m128f; // flt_neg1lshl3; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl4; //             __m128f; // flt_neg1lshl4; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl7; //             __m128f; // flt_neg1lshl7; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl8; //             __m128f; // flt_neg1lshl8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl11; //                __m128f; // flt_neg1lshl11; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl12; //                __m128f; // flt_neg1lshl12; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl15; //                __m128f; // flt_neg1lshl15; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl16; //                __m128f; // flt_neg1lshl16; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl19; //                __m128f; // flt_neg1lshl19; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl20; //                __m128f; // flt_neg1lshl20; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl23; //                __m128f; // flt_neg1lshl23; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl24; //                __m128f; // flt_neg1lshl24; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl27; //                __m128f; // flt_neg1lshl27; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl28; //                __m128f; // flt_neg1lshl28; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1lshl31; //                __m128f; // flt_neg1lshl31; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_false; //                 __m128i; // flt_false; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_true; //                  __m128i; // flt_true; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_error; //                 __m128i; // flt_error; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_magic; //                 __m128i; // flt_magic; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sign; //                  __m128i; // flt_sign; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_invsign; //                   __m128i; // flt_invsign; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_magic; //                 __m128i; // flt_magic; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sign; //                  __m128i; // flt_sign; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_invsign; //                   __m128i; // flt_invsign; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_inf; //                       __m128i; // flt_inf; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_fin; //                       __m128i; // flt_fin; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_invinf; //                    __m128i; // flt_invinf; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neginf; //                    __m128i; // flt_neginf; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_nan; //                       __m128i; // flt_nan; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_qnan; //                  __m128i; // flt_qnan; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_negqnan; //                   __m128i; // flt_negqnan; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_nantest; //                   __m128i; // flt_nantest; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_abs; //                       __m128i; // flt_abs; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_min; //                       __m128f; // flt_min; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_max; //                       __m128f; // flt_max; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_nofraction; //                __m128f; // flt_nofraction; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mindenorm; //             __m128f; // flt_mindenorm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_denormlimit; //               __m128f; // flt_denormlimit; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_minnormal; //             __m128f; // flt_minnormal; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_maxnormal; //             __m128f; // flt_maxnormal; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_decdig; //                    __m128f; // flt_decdig; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_dig; //                       __m128f; // flt_dig; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_negdecdig; //             __m128f; // flt_negdecdig; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_negdig; //                    __m128f; // flt_negdig; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_eps; //                       __m128f; // flt_eps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_epsilon; //                   __m128f; // flt_epsilon; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_normeps; //                   __m128f; // flt_normeps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_guard; //                 __m128f; // flt_guard; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mantpow2; //              __m128f; // flt_mantpow2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_maxmantpow2; //               __m128f; // flt_maxmantpow2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mantdig; //                   __m128f; // flt_mantdig; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mant; //                  __m128f; // flt_mant; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_negmantdig; //                __m128f; // flt_negmantdig; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_negmant; //                   __m128f; // flt_negmant; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_maxexp; //                    __m128f; // flt_maxexp; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_expsign; //                   __m128f; // flt_expsign; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_exp; //                       __m128f; // flt_exp; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_negmaxexp; //             __m128f; // flt_negmaxexp; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_negexpsign; //                __m128f; // flt_negexpsign; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_negexp; //                    __m128f; // flt_negexp; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_subnormalexp; //          __m128f; // flt_subnormalexp; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_minexp; //                    __m128f; // flt_minexp; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_maxdecexp; //             __m128f; // flt_maxdecexp; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_negmaxdecexp; //          __m128f; // flt_negmaxdecexp; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mindecexp; //             __m128f; // flt_mindecexp; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_expfield; //              __m128f; // flt_expfield; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mantfield; //             __m128f; // flt_mantfield; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_norm; //                  __m128f; // flt_norm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_radix; //                 __m128f; // flt_radix; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rounds; //                    __m128f; // flt_rounds; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_subdec; //                    __m128f; // flt_subdec; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrtmax; //                   __m128f; // flt_sqrtmax; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_smallnormal; //               __m128f; // flt_smallnormal; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_halfminuseps; //          __m128f; // flt_halfminuseps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_trueint; //                   __m128f; // flt_trueint; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_byte; //                  __m128f; // flt_byte; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_byte_even; //             __m128f; // flt_byte_even; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_byte_odd; //              __m128f; // flt_byte_odd; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_4low; //                  __m128f; // flt_4low; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_4high; //                 __m128f; // flt_4high; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_flip4; //                 __m128f; // flt_flip4; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_8low; //                  __m128f; // flt_8low; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_8high; //                 __m128f; // flt_8high; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_flip8; //                 __m128f; // flt_flip8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_16low; //                 __m128f; // flt_16low; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_16high; //                    __m128f; // flt_16high; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_flip16; //                    __m128f; // flt_flip16; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_24low; //                 __m128f; // flt_24low; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_24high; //                    __m128f; // flt_24high; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_flip24; //                    __m128f; // flt_flip24; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_28low; //                 __m128f; // flt_28low; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_28high; //                    __m128f; // flt_28high; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_flip28; //                    __m128f; // flt_flip28; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_32low; //                 __m128f; // flt_32low; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_32high; //                    __m128f; // flt_32high; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_flip32; //                    __m128f; // flt_flip32; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_0; //                         __m128f; // flt_0; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d0001; //                    __m128f; // flt_0d0001; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d0002; //                    __m128f; // flt_0d0002; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d0003; //                    __m128f; // flt_0d0003; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d0004; //                    __m128f; // flt_0d0004; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d0005; //                    __m128f; // flt_0d0005; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d0006; //                    __m128f; // flt_0d0006; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d0007; //                    __m128f; // flt_0d0007; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d0008; //                    __m128f; // flt_0d0008; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d0009; //                    __m128f; // flt_0d0009; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d001; //                     __m128f; // flt_0d001; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d002; //                     __m128f; // flt_0d002; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d003; //                     __m128f; // flt_0d003; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d004; //                     __m128f; // flt_0d004; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d005; //                     __m128f; // flt_0d005; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d006; //                     __m128f; // flt_0d006; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d007; //                     __m128f; // flt_0d007; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d008; //                     __m128f; // flt_0d008; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d009; //                     __m128f; // flt_0d009; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d01; //                  __m128f; // flt_0d01; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d02; //                  __m128f; // flt_0d02; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d025; //                     __m128f; // flt_0d025; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d03; //                  __m128f; // flt_0d03; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d04; //                  __m128f; // flt_0d04; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d05; //                  __m128f; // flt_0d05; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d06; //                  __m128f; // flt_0d06; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d07; //                  __m128f; // flt_0d07; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d08; //                  __m128f; // flt_0d08; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d09; //                  __m128f; // flt_0d09; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d1; //                   __m128f; // flt_0d1; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d2; //                   __m128f; // flt_0d2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d25; //                  __m128f; // flt_0d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d3; //                   __m128f; // flt_0d3; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d4; //                   __m128f; // flt_0d4; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d5; //                   __m128f; // flt_0d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d6; //                   __m128f; // flt_0d6; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d7; //                   __m128f; // flt_0d7; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d8; //                   __m128f; // flt_0d8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_0d9; //                   __m128f; // flt_0d9; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1; //                         __m128f; // flt_1; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1d25; //                  __m128f; // flt_1d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1d5; //                   __m128f; // flt_1d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2; //                         __m128f; // flt_2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2d25; //                  __m128f; // flt_2d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2d5; //                   __m128f; // flt_2d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_3; //                         __m128f; // flt_3; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_3d25; //                  __m128f; // flt_3d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_3d5; //                   __m128f; // flt_3d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_4; //                         __m128f; // flt_4; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_4d25; //                  __m128f; // flt_4d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_4d5; //                   __m128f; // flt_4d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_5; //                         __m128f; // flt_5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_5d25; //                  __m128f; // flt_5d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_5d5; //                   __m128f; // flt_5d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_6; //                         __m128f; // flt_6; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_6d25; //                  __m128f; // flt_6d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_6d5; //                   __m128f; // flt_6d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_7; //                         __m128f; // flt_7; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_7d25; //                  __m128f; // flt_7d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_7d5; //                   __m128f; // flt_7d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_8; //                         __m128f; // flt_8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_8d25; //                  __m128f; // flt_8d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_8d5; //                   __m128f; // flt_8d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_9; //                         __m128f; // flt_9; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_9d25; //                  __m128f; // flt_9d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_9d5; //                   __m128f; // flt_9d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_10; //                        __m128f; // flt_10; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_11; //                        __m128f; // flt_11; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_12; //                        __m128f; // flt_12; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_13; //                        __m128f; // flt_13; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_14; //                        __m128f; // flt_14; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_15; //                        __m128f; // flt_15; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_16; //                        __m128f; // flt_16; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_17; //                        __m128f; // flt_17; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_18; //                        __m128f; // flt_18; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_19; //                        __m128f; // flt_19; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_20; //                        __m128f; // flt_20; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_21; //                        __m128f; // flt_21; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_22; //                        __m128f; // flt_22; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_23; //                        __m128f; // flt_23; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_24; //                        __m128f; // flt_24; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_24d5; //                  __m128f; // flt_24d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_25; //                        __m128f; // flt_25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_26; //                        __m128f; // flt_26; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_27; //                        __m128f; // flt_27; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_28; //                        __m128f; // flt_28; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_29; //                        __m128f; // flt_29; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_30; //                        __m128f; // flt_30; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_31; //                        __m128f; // flt_31; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_32; //                        __m128f; // flt_32; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_33; //                        __m128f; // flt_33; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_34; //                        __m128f; // flt_34; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_35; //                        __m128f; // flt_35; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_36; //                        __m128f; // flt_36; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_37; //                        __m128f; // flt_37; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_38; //                        __m128f; // flt_38; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_39; //                        __m128f; // flt_39; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_40; //                        __m128f; // flt_40; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_41; //                        __m128f; // flt_41; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_42; //                        __m128f; // flt_42; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_43; //                        __m128f; // flt_43; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_44; //                        __m128f; // flt_44; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_45; //                        __m128f; // flt_45; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_46; //                        __m128f; // flt_46; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_47; //                        __m128f; // flt_47; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_48; //                        __m128f; // flt_48; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_49; //                        __m128f; // flt_49; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_50; //                        __m128f; // flt_50; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_51; //                        __m128f; // flt_51; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_52; //                        __m128f; // flt_52; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_53; //                        __m128f; // flt_53; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_54; //                        __m128f; // flt_54; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_55; //                        __m128f; // flt_55; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_56; //                        __m128f; // flt_56; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_57; //                        __m128f; // flt_57; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_58; //                        __m128f; // flt_58; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_59; //                        __m128f; // flt_59; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_60; //                        __m128f; // flt_60; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_61; //                        __m128f; // flt_61; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_62; //                        __m128f; // flt_62; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_63; //                        __m128f; // flt_63; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_64; //                        __m128f; // flt_64; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_65; //                        __m128f; // flt_65; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_66; //                        __m128f; // flt_66; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_67; //                        __m128f; // flt_67; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_68; //                        __m128f; // flt_68; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_69; //                        __m128f; // flt_69; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_70; //                        __m128f; // flt_70; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_71; //                        __m128f; // flt_71; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_72; //                        __m128f; // flt_72; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_73; //                        __m128f; // flt_73; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_74; //                        __m128f; // flt_74; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_75; //                        __m128f; // flt_75; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_76; //                        __m128f; // flt_76; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_77; //                        __m128f; // flt_77; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_78; //                        __m128f; // flt_78; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_79; //                        __m128f; // flt_79; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_80; //                        __m128f; // flt_80; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_81; //                        __m128f; // flt_81; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_82; //                        __m128f; // flt_82; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_83; //                        __m128f; // flt_83; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_84; //                        __m128f; // flt_84; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_85; //                        __m128f; // flt_85; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_86; //                        __m128f; // flt_86; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_87; //                        __m128f; // flt_87; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_88; //                        __m128f; // flt_88; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_89; //                        __m128f; // flt_89; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_90; //                        __m128f; // flt_90; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_91; //                        __m128f; // flt_91; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_92; //                        __m128f; // flt_92; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_93; //                        __m128f; // flt_93; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_94; //                        __m128f; // flt_94; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_95; //                        __m128f; // flt_95; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_96; //                        __m128f; // flt_96; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_97; //                        __m128f; // flt_97; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_98; //                        __m128f; // flt_98; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_99; //                        __m128f; // flt_99; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_100; //                   __m128f; // flt_100; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_125; //                   __m128f; // flt_125; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_126; //                   __m128f; // flt_126; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_127; //                   __m128f; // flt_127; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_128; //                   __m128f; // flt_128; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_140; //                   __m128f; // flt_140; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_145; //                   __m128f; // flt_145; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_150; //                   __m128f; // flt_150; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_180; //                   __m128f; // flt_180; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_253; //                   __m128f; // flt_253; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_254; //                   __m128f; // flt_254; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_255; //                   __m128f; // flt_255; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_256; //                   __m128f; // flt_256; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_360; //                   __m128f; // flt_360; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_511; //                   __m128f; // flt_511; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_512; //                   __m128f; // flt_512; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_513; //                   __m128f; // flt_513; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1023; //                  __m128f; // flt_1023; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1024; //                  __m128f; // flt_1024; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1025; //                  __m128f; // flt_1025; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_32767; //                     __m128f; // flt_32767; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_32768; //                     __m128f; // flt_32768; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_65535; //                     __m128f; // flt_65535; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_65536; //                     __m128f; // flt_65536; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2147483647; //                __m128f; // flt_2147483647; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2147483648; //                __m128f; // flt_2147483648; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_4294967295; //                __m128f; // flt_4294967295; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_4294967296; //                __m128f; // flt_4294967296; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_neg0; //                  __m128f; // flt_neg0; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d0001; //                 __m128f; // flt_neg0d0001; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d0002; //                 __m128f; // flt_neg0d0002; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d0003; //                 __m128f; // flt_neg0d0003; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d0004; //                 __m128f; // flt_neg0d0004; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d0005; //                 __m128f; // flt_neg0d0005; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d0006; //                 __m128f; // flt_neg0d0006; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d0007; //                 __m128f; // flt_neg0d0007; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d0008; //                 __m128f; // flt_neg0d0008; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d0009; //                 __m128f; // flt_neg0d0009; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d001; //              __m128f; // flt_neg0d001; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d002; //              __m128f; // flt_neg0d002; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d003; //              __m128f; // flt_neg0d003; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d004; //              __m128f; // flt_neg0d004; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d005; //              __m128f; // flt_neg0d005; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d006; //              __m128f; // flt_neg0d006; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d007; //              __m128f; // flt_neg0d007; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d008; //              __m128f; // flt_neg0d008; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d009; //              __m128f; // flt_neg0d009; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d01; //               __m128f; // flt_neg0d01; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d02; //               __m128f; // flt_neg0d02; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d025; //              __m128f; // flt_neg0d025; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d03; //               __m128f; // flt_neg0d03; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d04; //               __m128f; // flt_neg0d04; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d05; //               __m128f; // flt_neg0d05; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d06; //               __m128f; // flt_neg0d06; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d07; //               __m128f; // flt_neg0d07; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d08; //               __m128f; // flt_neg0d08; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d09; //               __m128f; // flt_neg0d09; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d1; //                    __m128f; // flt_neg0d1; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d2; //                    __m128f; // flt_neg0d2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d25; //               __m128f; // flt_neg0d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d3; //                    __m128f; // flt_neg0d3; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d4; //                    __m128f; // flt_neg0d4; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d5; //                    __m128f; // flt_neg0d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d6; //                    __m128f; // flt_neg0d6; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d7; //                    __m128f; // flt_neg0d7; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d8; //                    __m128f; // flt_neg0d8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg0d9; //                    __m128f; // flt_neg0d9; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1; //                  __m128f; // flt_neg1; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1d25; //               __m128f; // flt_neg1d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1d5; //                    __m128f; // flt_neg1d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg2; //                  __m128f; // flt_neg2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg2d25; //               __m128f; // flt_neg2d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg2d5; //                    __m128f; // flt_neg2d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg3; //                  __m128f; // flt_neg3; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg3d25; //               __m128f; // flt_neg3d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg3d5; //                    __m128f; // flt_neg3d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg4; //                  __m128f; // flt_neg4; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg4d25; //               __m128f; // flt_neg4d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg4d5; //                    __m128f; // flt_neg4d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg5; //                  __m128f; // flt_neg5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg5d25; //               __m128f; // flt_neg5d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg5d5; //                    __m128f; // flt_neg5d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg6; //                  __m128f; // flt_neg6; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg6d25; //               __m128f; // flt_neg6d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg6d5; //                    __m128f; // flt_neg6d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg7; //                  __m128f; // flt_neg7; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg7d25; //               __m128f; // flt_neg7d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg7d5; //                    __m128f; // flt_neg7d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg8; //                  __m128f; // flt_neg8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg8d25; //               __m128f; // flt_neg8d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg8d5; //                    __m128f; // flt_neg8d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg9; //                  __m128f; // flt_neg9; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg9d25; //               __m128f; // flt_neg9d25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg9d5; //                    __m128f; // flt_neg9d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg10; //                     __m128f; // flt_neg10; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg11; //                     __m128f; // flt_neg11; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg12; //                     __m128f; // flt_neg12; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg13; //                     __m128f; // flt_neg13; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg14; //                     __m128f; // flt_neg14; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg15; //                     __m128f; // flt_neg15; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg16; //                     __m128f; // flt_neg16; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg17; //                     __m128f; // flt_neg17; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg18; //                     __m128f; // flt_neg18; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg19; //                     __m128f; // flt_neg19; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg20; //                     __m128f; // flt_neg20; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg21; //                     __m128f; // flt_neg21; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg22; //                     __m128f; // flt_neg22; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg23; //                     __m128f; // flt_neg23; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg24; //                     __m128f; // flt_neg24; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg24d5; //               __m128f; // flt_neg24d5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg25; //                     __m128f; // flt_neg25; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg26; //                     __m128f; // flt_neg26; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg27; //                     __m128f; // flt_neg27; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg28; //                     __m128f; // flt_neg28; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg29; //                     __m128f; // flt_neg29; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg30; //                     __m128f; // flt_neg30; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg31; //                     __m128f; // flt_neg31; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg32; //                     __m128f; // flt_neg32; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg33; //                     __m128f; // flt_neg33; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg34; //                     __m128f; // flt_neg34; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg35; //                     __m128f; // flt_neg35; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg36; //                     __m128f; // flt_neg36; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg37; //                     __m128f; // flt_neg37; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg38; //                     __m128f; // flt_neg38; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg39; //                     __m128f; // flt_neg39; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg40; //                     __m128f; // flt_neg40; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg41; //                     __m128f; // flt_neg41; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg42; //                     __m128f; // flt_neg42; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg43; //                     __m128f; // flt_neg43; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg44; //                     __m128f; // flt_neg44; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg45; //                     __m128f; // flt_neg45; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg46; //                     __m128f; // flt_neg46; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg47; //                     __m128f; // flt_neg47; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg48; //                     __m128f; // flt_neg48; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg49; //                     __m128f; // flt_neg49; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg50; //                     __m128f; // flt_neg50; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg51; //                     __m128f; // flt_neg51; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg52; //                     __m128f; // flt_neg52; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg53; //                     __m128f; // flt_neg53; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg54; //                     __m128f; // flt_neg54; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg55; //                     __m128f; // flt_neg55; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg56; //                     __m128f; // flt_neg56; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg57; //                     __m128f; // flt_neg57; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg58; //                     __m128f; // flt_neg58; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg59; //                     __m128f; // flt_neg59; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg60; //                     __m128f; // flt_neg60; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg61; //                     __m128f; // flt_neg61; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg62; //                     __m128f; // flt_neg62; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg63; //                     __m128f; // flt_neg63; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg64; //                     __m128f; // flt_neg64; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg65; //                     __m128f; // flt_neg65; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg66; //                     __m128f; // flt_neg66; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg67; //                     __m128f; // flt_neg67; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg68; //                     __m128f; // flt_neg68; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg69; //                     __m128f; // flt_neg69; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg70; //                     __m128f; // flt_neg70; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg71; //                     __m128f; // flt_neg71; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg72; //                     __m128f; // flt_neg72; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg73; //                     __m128f; // flt_neg73; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg74; //                     __m128f; // flt_neg74; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg75; //                     __m128f; // flt_neg75; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg76; //                     __m128f; // flt_neg76; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg77; //                     __m128f; // flt_neg77; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg78; //                     __m128f; // flt_neg78; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg79; //                     __m128f; // flt_neg79; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg80; //                     __m128f; // flt_neg80; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg81; //                     __m128f; // flt_neg81; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg82; //                     __m128f; // flt_neg82; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg83; //                     __m128f; // flt_neg83; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg84; //                     __m128f; // flt_neg84; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg85; //                     __m128f; // flt_neg85; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg86; //                     __m128f; // flt_neg86; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg87; //                     __m128f; // flt_neg87; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg88; //                     __m128f; // flt_neg88; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg89; //                     __m128f; // flt_neg89; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg90; //                     __m128f; // flt_neg90; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg91; //                     __m128f; // flt_neg91; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg92; //                     __m128f; // flt_neg92; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg93; //                     __m128f; // flt_neg93; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg94; //                     __m128f; // flt_neg94; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg95; //                     __m128f; // flt_neg95; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg96; //                     __m128f; // flt_neg96; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg97; //                     __m128f; // flt_neg97; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg98; //                     __m128f; // flt_neg98; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg99; //                     __m128f; // flt_neg99; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg100; //                    __m128f; // flt_neg100; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg125; //                    __m128f; // flt_neg125; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg126; //                    __m128f; // flt_neg126; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg127; //                    __m128f; // flt_neg127; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg128; //                    __m128f; // flt_neg128; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg140; //                    __m128f; // flt_neg140; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg145; //                    __m128f; // flt_neg145; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg150; //                    __m128f; // flt_neg150; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg180; //                    __m128f; // flt_neg180; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg253; //                    __m128f; // flt_neg253; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg254; //                    __m128f; // flt_neg254; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg255; //                    __m128f; // flt_neg255; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg256; //                    __m128f; // flt_neg256; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg360; //                    __m128f; // flt_neg360; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg511; //                    __m128f; // flt_neg511; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg512; //                    __m128f; // flt_neg512; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg513; //                    __m128f; // flt_neg513; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1023; //               __m128f; // flt_neg1023; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1024; //               __m128f; // flt_neg1024; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg1025; //               __m128f; // flt_neg1025; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_neg32767; //              __m128f; // flt_neg32767; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg32768; //              __m128f; // flt_neg32768; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg65535; //              __m128f; // flt_neg65535; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg65536; //              __m128f; // flt_neg65536; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg2147483647; //             __m128f; // flt_neg2147483647; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg2147483648; //             __m128f; // flt_neg2147483648; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg4294967295; //             __m128f; // flt_neg4294967295; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg4294967296; //             __m128f; // flt_neg4294967296; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_bin128; //                    __m128i; // flt_bin128; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_binneg150; //             __m128i; // flt_binneg150; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_maxrand; //                   __m128f; // flt_maxrand; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_maxi8; //                 __m128f; // flt_maxi8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mini8; //                 __m128f; // flt_mini8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_maxu8; //                 __m128f; // flt_maxu8; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_maxi16; //                    __m128f; // flt_maxi16; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mini16; //                    __m128f; // flt_mini16; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_maxu16; //                    __m128f; // flt_maxu16; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_maxi32; //                    __m128f; // flt_maxi32; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mini32; //                    __m128f; // flt_mini32; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_maxu32; //                    __m128f; // flt_maxu32; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_maxi8xu8; //              __m128f; // flt_maxi8xu8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mini8xu8; //              __m128f; // flt_mini8xu8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_maxi8xu16; //             __m128f; // flt_maxi8xu16; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mini8xu16; //             __m128f; // flt_mini8xu16; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_maxi16xu16; //                __m128f; // flt_maxi16xu16; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mini16xu16; //                __m128f; // flt_mini16xu16; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_fixunsigned; //               __m128f; // flt_fixunsigned; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_fixunsigned32; //         __m128f; // flt_fixunsigned32; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_fixmaxi32; //             __m128f; // flt_fixmaxi32; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_fixmaxu32; //             __m128f; // flt_fixmaxu32; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_rcpi16; //                    __m128f; // flt_rcpi16; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcpu16; //                    __m128f; // flt_rcpu16; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcpi16xu16; //                __m128f; // flt_rcpi16xu16; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_fixaa8; //                    __m128f; // flt_fixaa8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_fixr8; //                     __m128f; // flt_fixr8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_fixg8; //                     __m128f; // flt_fixg8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_fixb8; //                     __m128f; // flt_fixb8; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_norma8; //                    __m128f; // flt_norma8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_normr8; //                    __m128f; // flt_normr8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_normg8; //                    __m128f; // flt_normg8; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_normb8; //                    __m128f; // flt_normb8; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_fixaa2; //                    __m128f; // flt_fixaa2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_fixb10; //                    __m128f; // flt_fixb10; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_fixg10; //                    __m128f; // flt_fixg10; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_fixr10; //                    __m128f; // flt_fixr10; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_norma2; //                    __m128f; // flt_norma2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_normb10; //               __m128f; // flt_normb10; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_normg10; //               __m128f; // flt_normg10; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_normr10; //               __m128f; // flt_normr10; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_mg; //                        __m128f; // flt_mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_negmg; //                     __m128f; // flt_negmg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_halfmg; //                    __m128f; // flt_halfmg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neghalfmg; //                 __m128f; // flt_neghalfmg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mgdiv4; //                    __m128f; // flt_mgdiv4; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_negmgdiv4; //                 __m128f; // flt_negmgdiv4; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_halfmgxmg; //                 __m128f; // flt_halfmgxmg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_halfmgxsqrmg; //          __m128f; // flt_halfmgxsqrmg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_halfmgxcubemg; //             __m128f; // flt_halfmgxcubemg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neghalfmgxmg; //          __m128f; // flt_neghalfmgxmg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neghalfmgxsqrmg; //           __m128f; // flt_neghalfmgxsqrmg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neghalfmgxcubemg; //      __m128f; // flt_neghalfmgxcubemg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrmg; //                     __m128f; // flt_sqrmg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_cubemg; //                    __m128f; // flt_cubemg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrtmg; //                    __m128f; // flt_sqrtmg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_cbrtmg; //                    __m128f; // flt_cbrtmg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcpmg; //                     __m128f; // flt_rcpmg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcpsqrmg; //              __m128f; // flt_rcpsqrmg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcpcubemg; //                 __m128f; // flt_rcpcubemg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcpsqrtmg; //                 __m128f; // flt_rcpsqrtmg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcpcbrtmg; //                 __m128f; // flt_rcpcbrtmg; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_2mg; //                   __m128f; // flt_2mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg2mg; //                    __m128f; // flt_neg2mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqr2mg; //                    __m128f; // flt_sqr2mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_cube2mg; //               __m128f; // flt_cube2mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrt2mg; //               __m128f; // flt_sqrt2mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_cbrt2mg; //               __m128f; // flt_cbrt2mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_4mg; //                   __m128f; // flt_4mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg4mg; //                    __m128f; // flt_neg4mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqr4mg; //                    __m128f; // flt_sqr4mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_cube4mg; //               __m128f; // flt_cube4mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrt4mg; //               __m128f; // flt_sqrt4mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_cbrt4mg; //               __m128f; // flt_cbrt4mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcp2mg; //                    __m128f; // flt_rcp2mg; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcp4mg; //                    __m128f; // flt_rcp4mg; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_e; //                         __m128f; // flt_e; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_exp; //                   __m128f; // flt_exp; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_loge; //                  __m128f; // flt_loge; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_logehigh; //              __m128f; // flt_logehigh; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_log2e; //                     __m128f; // flt_log2e; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_log2ehigh; //                 __m128f; // flt_log2ehigh; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_log10e; //                    __m128f; // flt_log10e; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcplog2e; //              __m128f; // flt_rcplog2e; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcplog10e; //                 __m128f; // flt_rcplog10e; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_log2t; //                     __m128f; // flt_log2t; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_log2; //                  __m128f; // flt_log2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_log2high; //              __m128f; // flt_log2high; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_ln2; //                   __m128f; // flt_ln2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_ln2high; //               __m128f; // flt_ln2high; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1divln2; //               __m128f; // flt_1divln2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2divln2; //               __m128f; // flt_2divln2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_lnt; //                   __m128f; // flt_lnt; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_lnthigh; //               __m128f; // flt_lnthigh; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_ln10; //                  __m128f; // flt_ln10; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrt2; //                     __m128f; // flt_sqrt2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcpsqrt2; //              __m128f; // flt_rcpsqrt2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrt2div2; //                 __m128f; // flt_sqrt2div2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrt2div2high; //             __m128f; // flt_sqrt2div2high; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrt2div2low; //          __m128f; // flt_sqrt2div2low; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrthalf; //              __m128f; // flt_sqrthalf; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrthalfhigh; //          __m128f; // flt_sqrthalfhigh; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrthalflow; //           __m128f; // flt_sqrthalflow; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_pow2; //                  __m128f; // flt_pow2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcppow2; //               __m128f; // flt_rcppow2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_cbrt2; //                     __m128f; // flt_cbrt2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcpcbrt2; //              __m128f; // flt_rcpcbrt2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1div3; //                     __m128f; // flt_1div3; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1div7; //                     __m128f; // flt_1div7; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_1div9; //                     __m128f; // flt_1div9; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2div3; //                     __m128f; // flt_2div3; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2div7; //                     __m128f; // flt_2div7; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2div9; //                     __m128f; // flt_2div9; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_4div3; //                     __m128f; // flt_4div3; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_4div7; //                     __m128f; // flt_4div7; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_4div9; //                     __m128f; // flt_4div9; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_pi; //                        __m128f; // flt_pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_pihigh; //                    __m128f; // flt_pihigh; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_halfpi; //                    __m128f; // flt_halfpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2pi; //                   __m128f; // flt_2pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_negpi; //                     __m128f; // flt_negpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neghalfpi; //                 __m128f; // flt_neghalfpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neg2pi; //                    __m128f; // flt_neg2pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcppi; //                     __m128f; // flt_rcppi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_invpi; //                     __m128f; // flt_invpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcp2pi; //                    __m128f; // flt_rcp2pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_inv2pi; //                    __m128f; // flt_inv2pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_pidiv2; //                    __m128f; // flt_pidiv2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_pidiv2high; //                __m128f; // flt_pidiv2high; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_pidiv4; //                    __m128f; // flt_pidiv4; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_pidiv4high; //                __m128f; // flt_pidiv4high; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_pix3div4; //              __m128f; // flt_pix3div4; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrtpi; //                    __m128f; // flt_sqrtpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrt2pi; //               __m128f; // flt_sqrt2pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrt2pihigh; //           __m128f; // flt_sqrt2pihigh; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcpsqrtpi; //                 __m128f; // flt_rcpsqrtpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcpsqrt2pi; //                __m128f; // flt_rcpsqrt2pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrtpidiv2; //                __m128f; // flt_sqrtpidiv2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrtpidiv2high; //            __m128f; // flt_sqrtpidiv2high; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrt2pidiv2; //           __m128f; // flt_sqrt2pidiv2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrt2pidiv2high; //       __m128f; // flt_sqrt2pidiv2high; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2divpi; //                    __m128f; // flt_2divpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2div2pi; //               __m128f; // flt_2div2pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2divsqrtpi; //                __m128f; // flt_2divsqrtpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_2divsqrt2pi; //           __m128f; // flt_2divsqrt2pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_sqrt2divpi; //                __m128f; // flt_sqrt2divpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_logpi; //                     __m128f; // flt_logpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_log2pi; //                    __m128f; // flt_log2pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_lnpi; //                  __m128f; // flt_lnpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_ln2pi; //                     __m128f; // flt_ln2pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_powpi; //                     __m128f; // flt_powpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcppowpi; //              __m128f; // flt_rcppowpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_pow2pi; //                    __m128f; // flt_pow2pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcppow2pi; //                 __m128f; // flt_rcppow2pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_cbrtpi; //                    __m128f; // flt_cbrtpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcpcbrtpi; //                 __m128f; // flt_rcpcbrtpi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_cbrt2pi; //               __m128f; // flt_cbrt2pi; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_rcpcbrt2pi; //                __m128f; // flt_rcpcbrt2pi; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_pow2tom126; //                __m128f; // flt_pow2tom126; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_pow2to126; //                 __m128f; // flt_pow2to126; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_normhuge; //              __m128f; // flt_normhuge; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_pow2to23; //              __m128f; // flt_pow2to23; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_pow2to24; //              __m128f; // flt_pow2to24; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_maxi32pow2to23; //            __m128f; // flt_maxi32pow2to23; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_pow2to31; //              __m128f; // flt_pow2to31; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_pow2to32; //              __m128f; // flt_pow2to32; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_remquobits; //                __m128i; // flt_remquobits; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_remquomask; //                __m128i; // flt_remquomask; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_trigploss; //                 __m128f; // flt_trigploss; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_degtorad; //              __m128f; // flt_degtorad; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_radtodeg; //              __m128f; // flt_radtodeg; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_degtograd; //                 __m128f; // flt_degtograd; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_gradtodeg; //                 __m128f; // flt_gradtodeg; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_radtograd; //                 __m128f; // flt_radtograd; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_gradtorad; //                 __m128f; // flt_gradtorad; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_sungravity; //                __m128f; // flt_sungravity; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_jupitergravity; //            __m128f; // flt_jupitergravity; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_neptunegravity; //            __m128f; // flt_neptunegravity; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_saturngravity; //             __m128f; // flt_saturngravity; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_uranusgravity; //             __m128f; // flt_uranusgravity; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_earthgravity; //          __m128f; // flt_earthgravity; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_venusgravity; //          __m128f; // flt_venusgravity; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_marsgravity; //           __m128f; // flt_marsgravity; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mercurygravity; //            __m128f; // flt_mercurygravity; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_moongravity; //           __m128f; // flt_moongravity; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_plutogravity; //          __m128f; // flt_plutogravity; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_kmtoinch; //              __m128f; // flt_kmtoinch; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmtofeet; //              __m128f; // flt_kmtofeet; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmtoyards; //                 __m128f; // flt_kmtoyards; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmtomiles; //                 __m128f; // flt_kmtomiles; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_metoinch; //              __m128f; // flt_metoinch; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_metofeet; //              __m128f; // flt_metofeet; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_metoyards; //                 __m128f; // flt_metoyards; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_metomiles; //                 __m128f; // flt_metomiles; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_cmtoinch; //              __m128f; // flt_cmtoinch; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_cmtofeet; //              __m128f; // flt_cmtofeet; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_cmtoyards; //                 __m128f; // flt_cmtoyards; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_cmtomiles; //                 __m128f; // flt_cmtomiles; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_milltoinch; //                __m128f; // flt_milltoinch; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milltofeet; //                __m128f; // flt_milltofeet; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milltoyards; //           __m128f; // flt_milltoyards; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milltomiles; //           __m128f; // flt_milltomiles; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_inchtomill; //                __m128f; // flt_inchtomill; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_inchtocm; //              __m128f; // flt_inchtocm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_inchtome; //              __m128f; // flt_inchtome; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_inchtokm; //              __m128f; // flt_inchtokm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_inchtofeet; //                __m128f; // flt_inchtofeet; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_inchtoyards; //           __m128f; // flt_inchtoyards; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_inchtomiles; //           __m128f; // flt_inchtomiles; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_feettomill; //                __m128f; // flt_feettomill; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feettocm; //              __m128f; // flt_feettocm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feettome; //              __m128f; // flt_feettome; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feettokm; //              __m128f; // flt_feettokm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feettoinch; //                __m128f; // flt_feettoinch; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feettoyards; //           __m128f; // flt_feettoyards; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feettomiles; //           __m128f; // flt_feettomiles; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_yardstomill; //           __m128f; // flt_yardstomill; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_yardstocm; //                 __m128f; // flt_yardstocm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_yardstome; //                 __m128f; // flt_yardstome; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_yardstokm; //                 __m128f; // flt_yardstokm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_yardstoinch; //           __m128f; // flt_yardstoinch; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_yardstofeet; //           __m128f; // flt_yardstofeet; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_yardstomiles; //          __m128f; // flt_yardstomiles; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_milestomill; //           __m128f; // flt_milestomill; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milestocm; //                 __m128f; // flt_milestocm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milestome; //                 __m128f; // flt_milestome; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milestoinch; //           __m128f; // flt_milestokm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milestoinch; //           __m128f; // flt_milestoinch; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milestofeet; //           __m128f; // flt_milestofeet; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milestoyards; //          __m128f; // flt_milestoyards; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_kmphtomeps; //                __m128f; // flt_kmphtomeps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmphtokmps; //                __m128f; // flt_kmphtokmps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmphtomepm; //                __m128f; // flt_kmphtomepm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmphtomilesph; //             __m128f; // flt_kmphtomilesph; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmphtomilesps; //             __m128f; // flt_kmphtomilesps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmphtofeetps; //          __m128f; // flt_kmphtofeetps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmphtofeetpm; //          __m128f; // flt_kmphtofeetpm; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_kmpstomeps; //                __m128f; // flt_kmpstomeps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmpstokmph; //                __m128f; // flt_kmpstokmph; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmpstomepm; //                __m128f; // flt_kmpstomepm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmpstomilesph; //             __m128f; // flt_kmpstomilesph; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmpstomilesps; //             __m128f; // flt_kmpstomilesps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmpstofeetps; //          __m128f; // flt_kmpstofeetps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_kmpstofeetpm; //          __m128f; // flt_kmpstofeetpm; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_mepstokmph; //                __m128f; // flt_mepstokmph; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mepstokmps; //                __m128f; // flt_mepstokmps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mepstomepm; //                __m128f; // flt_mepstomepm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mepstomilesph; //             __m128f; // flt_mepstomilesph; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mepstomilesps; //             __m128f; // flt_mepstomilesps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mepstofeetps; //          __m128f; // flt_mepstofeetps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mepstofeetpm; //          __m128f; // flt_mepstofeetpm; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_mepmtokmph; //                __m128f; // flt_mepmtokmph; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mepmtokmps; //                __m128f; // flt_mepmtokmps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mepmtomeps; //                __m128f; // flt_mepmtomeps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mepmtomilesph; //             __m128f; // flt_mepmtomilesph; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mepmtomilesps; //             __m128f; // flt_mepmtomilesps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mepmtofeetps; //          __m128f; // flt_mepmtofeetps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_mepmtofeetpm; //          __m128f; // flt_mepmtofeetpm; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_milesphtokmph; //             __m128f; // flt_milesphtokmph; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milesphtokmps; //             __m128f; // flt_milesphtokmps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milesphtomeps; //             __m128f; // flt_milesphtomeps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milesphtomepm; //             __m128f; // flt_milesphtomepm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milesphtomilesps; //      __m128f; // flt_milesphtomilesps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milesphtofeetps; //       __m128f; // flt_milesphtofeetps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milesphtofeetpm; //           __m128f; // flt_milesphtofeetpm; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_milespstokmph; //             __m128f; // flt_milespstokmph; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milespstokmps; //             __m128f; // flt_milespstokmps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milespstomeps; //             __m128f; // flt_milespstomeps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milespstomepm; //             __m128f; // flt_milespstomepm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milespstomilespm; //      __m128f; // flt_milespstomilespm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milespstofeetps; //       __m128f; // flt_milespstofeetps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_milespstofeetpm; //           __m128f; // flt_milespstofeetpm; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_feetpstokmph; //          __m128f; // flt_feetpstokmph; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feetpstokmps; //          __m128f; // flt_feetpstokmps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feetpstomeps; //          __m128f; // flt_feetpstomeps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feetpstomepm; //          __m128f; // flt_feetpstomepm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feetpstomilesph; //       __m128f; // flt_feetpstomilesph; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feetpstomilesps; //       __m128f; // flt_feetpstomilesps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feetpstofeetpm; //            __m128f; // flt_feetpstofeetpm; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_feetpmtokmph; //          __m128f; // flt_feetpmtokmph; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feetpmtokmps; //          __m128f; // flt_feetpmtokmps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feetpmtomeps; //          __m128f; // flt_feetpmtomeps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feetpmtomepm; //          __m128f; // flt_feetpmtomepm; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feetpmtomilesph; //       __m128f; // flt_feetpmtomilesph; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feetpmtomilesps; //       __m128f; // flt_feetpmtomilesps; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_feetpmtofeetps; //            __m128f; // flt_feetpmtofeetps; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_soundspeedp50c; //            __m128f; // flt_soundspeedp50c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedp45c; //            __m128f; // flt_soundspeedp45c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedp40c; //            __m128f; // flt_soundspeedp40c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedp35c; //            __m128f; // flt_soundspeedp35c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedp30c; //            __m128f; // flt_soundspeedp30c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedp25c; //            __m128f; // flt_soundspeedp25c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedp20c; //            __m128f; // flt_soundspeedp20c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedp15c; //            __m128f; // flt_soundspeedp15c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedp10c; //            __m128f; // flt_soundspeedp10c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedp5c; //             __m128f; // flt_soundspeedp5c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeed0c; //          __m128f; // flt_soundspeed0c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedn5c; //             __m128f; // flt_soundspeedn5c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedn10c; //            __m128f; // flt_soundspeedn10c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedn15c; //            __m128f; // flt_soundspeedn15c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedn20c; //            __m128f; // flt_soundspeedn20c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedn25c; //            __m128f; // flt_soundspeedn25c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedn30c; //            __m128f; // flt_soundspeedn30c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedn35c; //            __m128f; // flt_soundspeedn35c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedn40c; //            __m128f; // flt_soundspeedn40c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedn45c; //            __m128f; // flt_soundspeedn45c; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_soundspeedn50c; //            __m128f; // flt_soundspeedn50c; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_schscale; //              __m128f; // flt_schscale; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_thscale; //               __m128f; // flt_thscale; // flt_false; // flt_false; // flt_false

extern __m128 const __m128_0e_expest1; //               __m128f; // flt_expest1; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_expest2; //               __m128f; // flt_expest2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_expest3; //               __m128f; // flt_expest3; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_expest4; //               __m128f; // flt_expest4; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_expest5; //               __m128f; // flt_expest5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_expest6; //               __m128f; // flt_expest6; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_expest7; //               __m128f; // flt_expest7; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_logest0; //               __m128f; // flt_logest0; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_logest1; //               __m128f; // flt_logest1; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_logest2; //               __m128f; // flt_logest2; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_logest3; //               __m128f; // flt_logest3; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_logest4; //               __m128f; // flt_logest4; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_logest5; //               __m128f; // flt_logest5; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_logest6; //               __m128f; // flt_logest6; // flt_false; // flt_false; // flt_false
extern __m128 const __m128_0e_logest7; //               __m128f; // flt_logest7; // flt_false; // flt_false; // flt_false

/*
 * Function data, Constants
 */

	//;; float;;

	//;             sincos template, single precision
extern __m128 uX_ABI _uX_mm_const_DP1F_ps(void); //              __m128f_ps(void); // (0.78515625 * 2.0)
extern __m128 uX_ABI _uX_mm_const_DP2F_ps(void); //              __m128f_ps(void); // (2.4187564849853515625e-4 * 2.0)
extern __m128 uX_ABI _uX_mm_const_DP3F_ps(void); //              __m128f_ps(void); // (3.77489497744594108e-8 * 2.0)

extern __m128 uX_ABI _uX_mm_const_P0sinf_ps(void); //              __m128f_ps(void); // (-1.6666654611e-1)
extern __m128 uX_ABI _uX_mm_const_P1sinf_ps(void); //              __m128f_ps(void); // (8.3321608736e-3)
extern __m128 uX_ABI _uX_mm_const_P2sinf_ps(void); //              __m128f_ps(void); // (-1.9515295891e-4)

extern __m128 uX_ABI _uX_mm_const_P0cosf_ps(void); //              __m128f_ps(void); // (4.166664568298827e-2)
extern __m128 uX_ABI _uX_mm_const_P1cosf_ps(void); //              __m128f_ps(void); // (-1.388731625493765e-3)
extern __m128 uX_ABI _uX_mm_const_P2cosf_ps(void); //              __m128f_ps(void); // (2.443315711809948e-5)
	//;             sincos template, single precision

extern __m128 uX_ABI _uX_mm_const_1lshl3_ps(void); //                   __m128f_ps(void); // flt_1lshl3
extern __m128 uX_ABI _uX_mm_const_1lshl4_ps(void); //                   __m128f_ps(void); // flt_1lshl4
extern __m128 uX_ABI _uX_mm_const_1lshl7_ps(void); //                   __m128f_ps(void); // flt_1lshl7
extern __m128 uX_ABI _uX_mm_const_1lshl8_ps(void); //                   __m128f_ps(void); // flt_1lshl8
extern __m128 uX_ABI _uX_mm_const_1lshl11_ps(void); //              __m128f_ps(void); // flt_1lshl11
extern __m128 uX_ABI _uX_mm_const_1lshl12_ps(void); //              __m128f_ps(void); // flt_1lshl12
extern __m128 uX_ABI _uX_mm_const_1lshl15_ps(void); //              __m128f_ps(void); // flt_1lshl15
extern __m128 uX_ABI _uX_mm_const_1lshl16_ps(void); //              __m128f_ps(void); // flt_1lshl16
extern __m128 uX_ABI _uX_mm_const_1lshl19_ps(void); //              __m128f_ps(void); // flt_1lshl19
extern __m128 uX_ABI _uX_mm_const_1lshl20_ps(void); //              __m128f_ps(void); // flt_1lshl20
extern __m128 uX_ABI _uX_mm_const_1lshl23_ps(void); //              __m128f_ps(void); // flt_1lshl23
extern __m128 uX_ABI _uX_mm_const_1lshl24_ps(void); //              __m128f_ps(void); // flt_1lshl24
extern __m128 uX_ABI _uX_mm_const_1lshl27_ps(void); //              __m128f_ps(void); // flt_1lshl27
extern __m128 uX_ABI _uX_mm_const_1lshl28_ps(void); //              __m128f_ps(void); // flt_1lshl28
extern __m128 uX_ABI _uX_mm_const_1lshl31_ps(void); //              __m128f_ps(void); // flt_1lshl31

extern __m128 uX_ABI _uX_mm_const_neg1lshl3_ps(void); //                __m128f_ps(void); // flt_neg1lshl3
extern __m128 uX_ABI _uX_mm_const_neg1lshl4_ps(void); //                __m128f_ps(void); // flt_neg1lshl4
extern __m128 uX_ABI _uX_mm_const_neg1lshl7_ps(void); //                __m128f_ps(void); // flt_neg1lshl7
extern __m128 uX_ABI _uX_mm_const_neg1lshl8_ps(void); //                __m128f_ps(void); // flt_neg1lshl8
extern __m128 uX_ABI _uX_mm_const_neg1lshl11_ps(void); //               __m128f_ps(void); // flt_neg1lshl11
extern __m128 uX_ABI _uX_mm_const_neg1lshl12_ps(void); //               __m128f_ps(void); // flt_neg1lshl12
extern __m128 uX_ABI _uX_mm_const_neg1lshl15_ps(void); //               __m128f_ps(void); // flt_neg1lshl15
extern __m128 uX_ABI _uX_mm_const_neg1lshl16_ps(void); //               __m128f_ps(void); // flt_neg1lshl16
extern __m128 uX_ABI _uX_mm_const_neg1lshl19_ps(void); //               __m128f_ps(void); // flt_neg1lshl19
extern __m128 uX_ABI _uX_mm_const_neg1lshl20_ps(void); //               __m128f_ps(void); // flt_neg1lshl20
extern __m128 uX_ABI _uX_mm_const_neg1lshl23_ps(void); //               __m128f_ps(void); // flt_neg1lshl23
extern __m128 uX_ABI _uX_mm_const_neg1lshl24_ps(void); //               __m128f_ps(void); // flt_neg1lshl24
extern __m128 uX_ABI _uX_mm_const_neg1lshl27_ps(void); //               __m128f_ps(void); // flt_neg1lshl27
extern __m128 uX_ABI _uX_mm_const_neg1lshl28_ps(void); //               __m128f_ps(void); // flt_neg1lshl28
extern __m128 uX_ABI _uX_mm_const_neg1lshl31_ps(void); //               __m128f_ps(void); // flt_neg1lshl31

extern __m128 uX_ABI _uX_mm_const_false_ps(void); //                    __m128i_ps(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_true_ps(void); //                 __m128i_ps(void); // flt_true
extern __m128 uX_ABI _uX_mm_const_error_ps(void); //                    __m128i_ps(void); // flt_error

extern __m128 uX_ABI _uX_mm_const_magic_ps(void); //                    __m128i_ps(void); // flt_magic
extern __m128 uX_ABI _uX_mm_const_sign_ps(void); //                 __m128i_ps(void); // flt_sign
extern __m128 uX_ABI _uX_mm_const_invsign_ps(void); //              __m128i_ps(void); // flt_invsign

extern __m128 uX_ABI _uX_mm_const_inf_ps(void); //                  __m128i_ps(void); // flt_inf
extern __m128 uX_ABI _uX_mm_const_fin_ps(void); //                  __m128i_ps(void); // flt_fin
extern __m128 uX_ABI _uX_mm_const_invinf_ps(void); //                   __m128i_ps(void); // flt_invinf
extern __m128 uX_ABI _uX_mm_const_neginf_ps(void); //                   __m128i_ps(void); // flt_neginf
extern __m128 uX_ABI _uX_mm_const_nan_ps(void); //                  __m128i_ps(void); // flt_nan
extern __m128 uX_ABI _uX_mm_const_qnan_ps(void); //                 __m128i_ps(void); // flt_qnan
extern __m128 uX_ABI _uX_mm_const_negqnan_ps(void); //              __m128i_ps(void); // flt_negqnan
extern __m128 uX_ABI _uX_mm_const_nantest_ps(void); //              __m128i_ps(void); // flt_nantest
extern __m128 uX_ABI _uX_mm_const_abs_ps(void); //                  __m128i_ps(void); // flt_abs
extern __m128 uX_ABI _uX_mm_const_min_ps(void); //                  __m128f_ps(void); // flt_min
extern __m128 uX_ABI _uX_mm_const_max_ps(void); //                  __m128f_ps(void); // flt_max
extern __m128 uX_ABI _uX_mm_const_nofraction_ps(void); //               __m128f_ps(void); // flt_nofraction
extern __m128 uX_ABI _uX_mm_const_mindenorm_ps(void); //                __m128f_ps(void); // flt_mindenorm
extern __m128 uX_ABI _uX_mm_const_denormlimit_ps(void); //          __m128f_ps(void); // flt_denormlimit
extern __m128 uX_ABI _uX_mm_const_minnormal_ps(void); //                __m128f_ps(void); // flt_minnormal
extern __m128 uX_ABI _uX_mm_const_maxnormal_ps(void); //                __m128f_ps(void); // flt_maxnormal

extern __m128 uX_ABI _uX_mm_const_decdig_ps(void); //                   __m128f_ps(void); // flt_decdig
extern __m128 uX_ABI _uX_mm_const_dig_ps(void); //                  __m128f_ps(void); // flt_dig
extern __m128 uX_ABI _uX_mm_const_negdecdig_ps(void); //                __m128f_ps(void); // flt_negdecdig
extern __m128 uX_ABI _uX_mm_const_negdig_ps(void); //                   __m128f_ps(void); // flt_negdig
extern __m128 uX_ABI _uX_mm_const_eps_ps(void); //                  __m128f_ps(void); // flt_eps
extern __m128 uX_ABI _uX_mm_const_epsilon_ps(void); //              __m128f_ps(void); // flt_epsilon
extern __m128 uX_ABI _uX_mm_const_normeps_ps(void); //              __m128f_ps(void); // flt_normeps
extern __m128 uX_ABI _uX_mm_const_guard_ps(void); //                    __m128f_ps(void); // flt_guard
extern __m128 uX_ABI _uX_mm_const_mantpow2_ps(void); //             __m128f_ps(void); // flt_mantpow2
extern __m128 uX_ABI _uX_mm_const_maxmantpow2_ps(void); //          __m128f_ps(void); // flt_maxmantpow2
extern __m128 uX_ABI _uX_mm_const_mantdig_ps(void); //              __m128f_ps(void); // flt_mantdig
extern __m128 uX_ABI _uX_mm_const_mant_ps(void); //                 __m128f_ps(void); // flt_mant
extern __m128 uX_ABI _uX_mm_const_negmantdig_ps(void); //               __m128f_ps(void); // flt_negmantdig
extern __m128 uX_ABI _uX_mm_const_negmant_ps(void); //              __m128f_ps(void); // flt_negmant
extern __m128 uX_ABI _uX_mm_const_maxexp_ps(void); //                   __m128f_ps(void); // flt_maxexp
extern __m128 uX_ABI _uX_mm_const_expsign_ps(void); //              __m128f_ps(void); // flt_expsign
extern __m128 uX_ABI _uX_mm_const_exp_ps(void); //                  __m128f_ps(void); // flt_exp
extern __m128 uX_ABI _uX_mm_const_negmaxexp_ps(void); //                __m128f_ps(void); // flt_negmaxexp
extern __m128 uX_ABI _uX_mm_const_negexpsign_ps(void); //               __m128f_ps(void); // flt_negexpsign
extern __m128 uX_ABI _uX_mm_const_negexp_ps(void); //                   __m128f_ps(void); // flt_negexp
extern __m128 uX_ABI _uX_mm_const_subnormalexp_ps(void); //         __m128f_ps(void); // flt_subnormalexp
extern __m128 uX_ABI _uX_mm_const_minexp_ps(void); //                   __m128f_ps(void); // flt_minexp
extern __m128 uX_ABI _uX_mm_const_maxdecexp_ps(void); //                __m128f_ps(void); // flt_maxdecexp
extern __m128 uX_ABI _uX_mm_const_negmaxdecexp_ps(void); //         __m128f_ps(void); // flt_negmaxdecexp
extern __m128 uX_ABI _uX_mm_const_mindecexp_ps(void); //                __m128f_ps(void); // flt_mindecexp
extern __m128 uX_ABI _uX_mm_const_expfield_ps(void); //             __m128f_ps(void); // flt_expfield
extern __m128 uX_ABI _uX_mm_const_mantfield_ps(void); //                __m128f_ps(void); // flt_mantfield
extern __m128 uX_ABI _uX_mm_const_norm_ps(void); //                 __m128f_ps(void); // flt_norm
extern __m128 uX_ABI _uX_mm_const_radix_ps(void); //                    __m128f_ps(void); // flt_radix
extern __m128 uX_ABI _uX_mm_const_rounds_ps(void); //                   __m128f_ps(void); // flt_rounds
extern __m128 uX_ABI _uX_mm_const_subdec_ps(void); //                   __m128f_ps(void); // flt_subdec
extern __m128 uX_ABI _uX_mm_const_sqrtmax_ps(void); //              __m128f_ps(void); // flt_sqrtmax
extern __m128 uX_ABI _uX_mm_const_smallnormal_ps(void); //          __m128f_ps(void); // flt_smallnormal

extern __m128 uX_ABI _uX_mm_const_halfminuseps_ps(void); //         __m128f_ps(void); // flt_halfminuseps
extern __m128 uX_ABI _uX_mm_const_trueint_ps(void); //              __m128f_ps(void); // flt_trueint

extern __m128 uX_ABI _uX_mm_const_byte_ps(void); //                 __m128f_ps(void); // flt_byte
extern __m128 uX_ABI _uX_mm_const_byte_even_ps(void); //            __m128f_even_ps(void); // flt_byte
extern __m128 uX_ABI _uX_mm_const_byte_odd_ps(void); //             __m128f_odd_ps(void); // flt_byte
extern __m128 uX_ABI _uX_mm_const_4low_ps(void); //                 __m128f_ps(void); // flt_4low
extern __m128 uX_ABI _uX_mm_const_4high_ps(void); //                    __m128f_ps(void); // flt_4high
extern __m128 uX_ABI _uX_mm_const_flip4_ps(void); //                    __m128f_ps(void); // flt_flip4
extern __m128 uX_ABI _uX_mm_const_8low_ps(void); //                 __m128f_ps(void); // flt_8low
extern __m128 uX_ABI _uX_mm_const_8high_ps(void); //                    __m128f_ps(void); // flt_8high
extern __m128 uX_ABI _uX_mm_const_flip8_ps(void); //                    __m128f_ps(void); // flt_flip8
extern __m128 uX_ABI _uX_mm_const_16low_ps(void); //                    __m128f_ps(void); // flt_16low
extern __m128 uX_ABI _uX_mm_const_16high_ps(void); //                   __m128f_ps(void); // flt_16high
extern __m128 uX_ABI _uX_mm_const_flip16_ps(void); //                   __m128f_ps(void); // flt_flip16
extern __m128 uX_ABI _uX_mm_const_24low_ps(void); //                    __m128f_ps(void); // flt_24low
extern __m128 uX_ABI _uX_mm_const_24high_ps(void); //                   __m128f_ps(void); // flt_24high
extern __m128 uX_ABI _uX_mm_const_flip24_ps(void); //                   __m128f_ps(void); // flt_flip24
extern __m128 uX_ABI _uX_mm_const_28low_ps(void); //                    __m128f_ps(void); // flt_28low
extern __m128 uX_ABI _uX_mm_const_28high_ps(void); //                   __m128f_ps(void); // flt_28high
extern __m128 uX_ABI _uX_mm_const_flip28_ps(void); //                   __m128f_ps(void); // flt_flip28
extern __m128 uX_ABI _uX_mm_const_32low_ps(void); //                    __m128f_ps(void); // flt_32low
extern __m128 uX_ABI _uX_mm_const_32high_ps(void); //                   __m128f_ps(void); // flt_32high
extern __m128 uX_ABI _uX_mm_const_flip32_ps(void); //                   __m128f_ps(void); // flt_flip32

extern __m128 uX_ABI _uX_mm_const_0_ps(void); //                        __m128f_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_0d0001_ps(void); //               __m128f_ps(void); // flt_0d0001
extern __m128 uX_ABI _uX_mm_const_0d0002_ps(void); //               __m128f_ps(void); // flt_0d0002
extern __m128 uX_ABI _uX_mm_const_0d0003_ps(void); //               __m128f_ps(void); // flt_0d0003
extern __m128 uX_ABI _uX_mm_const_0d0004_ps(void); //               __m128f_ps(void); // flt_0d0004
extern __m128 uX_ABI _uX_mm_const_0d0005_ps(void); //               __m128f_ps(void); // flt_0d0005
extern __m128 uX_ABI _uX_mm_const_0d0006_ps(void); //               __m128f_ps(void); // flt_0d0006
extern __m128 uX_ABI _uX_mm_const_0d0007_ps(void); //               __m128f_ps(void); // flt_0d0007
extern __m128 uX_ABI _uX_mm_const_0d0008_ps(void); //               __m128f_ps(void); // flt_0d0008
extern __m128 uX_ABI _uX_mm_const_0d0009_ps(void); //               __m128f_ps(void); // flt_0d0009
extern __m128 uX_ABI _uX_mm_const_0d001_ps(void); //                    __m128f_ps(void); // flt_0d001
extern __m128 uX_ABI _uX_mm_const_0d002_ps(void); //                    __m128f_ps(void); // flt_0d002
extern __m128 uX_ABI _uX_mm_const_0d003_ps(void); //                    __m128f_ps(void); // flt_0d003
extern __m128 uX_ABI _uX_mm_const_0d004_ps(void); //                    __m128f_ps(void); // flt_0d004
extern __m128 uX_ABI _uX_mm_const_0d005_ps(void); //                    __m128f_ps(void); // flt_0d005
extern __m128 uX_ABI _uX_mm_const_0d006_ps(void); //                    __m128f_ps(void); // flt_0d006
extern __m128 uX_ABI _uX_mm_const_0d007_ps(void); //                    __m128f_ps(void); // flt_0d007
extern __m128 uX_ABI _uX_mm_const_0d008_ps(void); //                    __m128f_ps(void); // flt_0d008
extern __m128 uX_ABI _uX_mm_const_0d009_ps(void); //                    __m128f_ps(void); // flt_0d009
extern __m128 uX_ABI _uX_mm_const_0d01_ps(void); //                     __m128f_ps(void); // flt_0d01
extern __m128 uX_ABI _uX_mm_const_0d02_ps(void); //                     __m128f_ps(void); // flt_0d02
extern __m128 uX_ABI _uX_mm_const_0d025_ps(void); //                    __m128f_ps(void); // flt_0d025
extern __m128 uX_ABI _uX_mm_const_0d03_ps(void); //                     __m128f_ps(void); // flt_0d03
extern __m128 uX_ABI _uX_mm_const_0d04_ps(void); //                     __m128f_ps(void); // flt_0d04
extern __m128 uX_ABI _uX_mm_const_0d05_ps(void); //                     __m128f_ps(void); // flt_0d05
extern __m128 uX_ABI _uX_mm_const_0d06_ps(void); //                     __m128f_ps(void); // flt_0d06
extern __m128 uX_ABI _uX_mm_const_0d07_ps(void); //                     __m128f_ps(void); // flt_0d07
extern __m128 uX_ABI _uX_mm_const_0d08_ps(void); //                     __m128f_ps(void); // flt_0d08
extern __m128 uX_ABI _uX_mm_const_0d09_ps(void); //                     __m128f_ps(void); // flt_0d09
extern __m128 uX_ABI _uX_mm_const_0d1_ps(void); //                  __m128f_ps(void); // flt_0d1
extern __m128 uX_ABI _uX_mm_const_0d2_ps(void); //                  __m128f_ps(void); // flt_0d2
extern __m128 uX_ABI _uX_mm_const_0d25_ps(void); //                     __m128f_ps(void); // flt_0d25
extern __m128 uX_ABI _uX_mm_const_0d3_ps(void); //                  __m128f_ps(void); // flt_0d3
extern __m128 uX_ABI _uX_mm_const_0d4_ps(void); //                  __m128f_ps(void); // flt_0d4
extern __m128 uX_ABI _uX_mm_const_0d5_ps(void); //                  __m128f_ps(void); // flt_0d5
extern __m128 uX_ABI _uX_mm_const_0d6_ps(void); //                  __m128f_ps(void); // flt_0d6
extern __m128 uX_ABI _uX_mm_const_0d7_ps(void); //                  __m128f_ps(void); // flt_0d7
extern __m128 uX_ABI _uX_mm_const_0d8_ps(void); //                  __m128f_ps(void); // flt_0d8
extern __m128 uX_ABI _uX_mm_const_0d9_ps(void); //                  __m128f_ps(void); // flt_0d9
extern __m128 uX_ABI _uX_mm_const_1_ps(void); //                        __m128f_ps(void); // flt_1
extern __m128 uX_ABI _uX_mm_const_1d25_ps(void); //                     __m128f_ps(void); // flt_1d25
extern __m128 uX_ABI _uX_mm_const_1d5_ps(void); //                  __m128f_ps(void); // flt_1d5
extern __m128 uX_ABI _uX_mm_const_2_ps(void); //                        __m128f_ps(void); // flt_2
extern __m128 uX_ABI _uX_mm_const_2d25_ps(void); //                     __m128f_ps(void); // flt_2d25
extern __m128 uX_ABI _uX_mm_const_2d5_ps(void); //                  __m128f_ps(void); // flt_2d5
extern __m128 uX_ABI _uX_mm_const_3_ps(void); //                        __m128f_ps(void); // flt_3
extern __m128 uX_ABI _uX_mm_const_3d25_ps(void); //                     __m128f_ps(void); // flt_3d25
extern __m128 uX_ABI _uX_mm_const_3d5_ps(void); //                  __m128f_ps(void); // flt_3d5
extern __m128 uX_ABI _uX_mm_const_4_ps(void); //                        __m128f_ps(void); // flt_4
extern __m128 uX_ABI _uX_mm_const_4d25_ps(void); //                     __m128f_ps(void); // flt_4d25
extern __m128 uX_ABI _uX_mm_const_4d5_ps(void); //                  __m128f_ps(void); // flt_4d5
extern __m128 uX_ABI _uX_mm_const_5_ps(void); //                        __m128f_ps(void); // flt_5
extern __m128 uX_ABI _uX_mm_const_5d25_ps(void); //                     __m128f_ps(void); // flt_5d25
extern __m128 uX_ABI _uX_mm_const_5d5_ps(void); //                  __m128f_ps(void); // flt_5d5
extern __m128 uX_ABI _uX_mm_const_6_ps(void); //                        __m128f_ps(void); // flt_6
extern __m128 uX_ABI _uX_mm_const_6d25_ps(void); //                     __m128f_ps(void); // flt_6d25
extern __m128 uX_ABI _uX_mm_const_6d5_ps(void); //                  __m128f_ps(void); // flt_6d5
extern __m128 uX_ABI _uX_mm_const_7_ps(void); //                        __m128f_ps(void); // flt_7
extern __m128 uX_ABI _uX_mm_const_7d25_ps(void); //                     __m128f_ps(void); // flt_7d25
extern __m128 uX_ABI _uX_mm_const_7d5_ps(void); //                  __m128f_ps(void); // flt_7d5
extern __m128 uX_ABI _uX_mm_const_8_ps(void); //                        __m128f_ps(void); // flt_8
extern __m128 uX_ABI _uX_mm_const_8d25_ps(void); //                     __m128f_ps(void); // flt_8d25
extern __m128 uX_ABI _uX_mm_const_8d5_ps(void); //                  __m128f_ps(void); // flt_8d5
extern __m128 uX_ABI _uX_mm_const_9_ps(void); //                        __m128f_ps(void); // flt_9
extern __m128 uX_ABI _uX_mm_const_9d25_ps(void); //                     __m128f_ps(void); // flt_9d25
extern __m128 uX_ABI _uX_mm_const_9d5_ps(void); //                  __m128f_ps(void); // flt_9d5
extern __m128 uX_ABI _uX_mm_const_10_ps(void); //                   __m128f_ps(void); // flt_10
extern __m128 uX_ABI _uX_mm_const_11_ps(void); //                   __m128f_ps(void); // flt_11
extern __m128 uX_ABI _uX_mm_const_12_ps(void); //                   __m128f_ps(void); // flt_12
extern __m128 uX_ABI _uX_mm_const_13_ps(void); //                   __m128f_ps(void); // flt_13
extern __m128 uX_ABI _uX_mm_const_14_ps(void); //                   __m128f_ps(void); // flt_14
extern __m128 uX_ABI _uX_mm_const_15_ps(void); //                   __m128f_ps(void); // flt_15
extern __m128 uX_ABI _uX_mm_const_16_ps(void); //                   __m128f_ps(void); // flt_16
extern __m128 uX_ABI _uX_mm_const_17_ps(void); //                   __m128f_ps(void); // flt_17
extern __m128 uX_ABI _uX_mm_const_18_ps(void); //                   __m128f_ps(void); // flt_18
extern __m128 uX_ABI _uX_mm_const_19_ps(void); //                   __m128f_ps(void); // flt_19
extern __m128 uX_ABI _uX_mm_const_20_ps(void); //                   __m128f_ps(void); // flt_20
extern __m128 uX_ABI _uX_mm_const_21_ps(void); //                   __m128f_ps(void); // flt_21
extern __m128 uX_ABI _uX_mm_const_22_ps(void); //                   __m128f_ps(void); // flt_22
extern __m128 uX_ABI _uX_mm_const_23_ps(void); //                   __m128f_ps(void); // flt_23
extern __m128 uX_ABI _uX_mm_const_24_ps(void); //                   __m128f_ps(void); // flt_24
extern __m128 uX_ABI _uX_mm_const_24d5_ps(void); //                     __m128f_ps(void); // flt_24d5
extern __m128 uX_ABI _uX_mm_const_25_ps(void); //                   __m128f_ps(void); // flt_25
extern __m128 uX_ABI _uX_mm_const_26_ps(void); //                   __m128f_ps(void); // flt_26
extern __m128 uX_ABI _uX_mm_const_27_ps(void); //                   __m128f_ps(void); // flt_27
extern __m128 uX_ABI _uX_mm_const_28_ps(void); //                   __m128f_ps(void); // flt_28
extern __m128 uX_ABI _uX_mm_const_29_ps(void); //                   __m128f_ps(void); // flt_29
extern __m128 uX_ABI _uX_mm_const_30_ps(void); //                   __m128f_ps(void); // flt_30
extern __m128 uX_ABI _uX_mm_const_31_ps(void); //                   __m128f_ps(void); // flt_31
extern __m128 uX_ABI _uX_mm_const_32_ps(void); //                   __m128f_ps(void); // flt_32
extern __m128 uX_ABI _uX_mm_const_33_ps(void); //                   __m128f_ps(void); // flt_33
extern __m128 uX_ABI _uX_mm_const_34_ps(void); //                   __m128f_ps(void); // flt_34
extern __m128 uX_ABI _uX_mm_const_35_ps(void); //                   __m128f_ps(void); // flt_35
extern __m128 uX_ABI _uX_mm_const_36_ps(void); //                   __m128f_ps(void); // flt_36
extern __m128 uX_ABI _uX_mm_const_37_ps(void); //                   __m128f_ps(void); // flt_37
extern __m128 uX_ABI _uX_mm_const_38_ps(void); //                   __m128f_ps(void); // flt_38
extern __m128 uX_ABI _uX_mm_const_39_ps(void); //                   __m128f_ps(void); // flt_39
extern __m128 uX_ABI _uX_mm_const_40_ps(void); //                   __m128f_ps(void); // flt_40
extern __m128 uX_ABI _uX_mm_const_41_ps(void); //                   __m128f_ps(void); // flt_41
extern __m128 uX_ABI _uX_mm_const_42_ps(void); //                   __m128f_ps(void); // flt_42
extern __m128 uX_ABI _uX_mm_const_43_ps(void); //                   __m128f_ps(void); // flt_43
extern __m128 uX_ABI _uX_mm_const_44_ps(void); //                   __m128f_ps(void); // flt_44
extern __m128 uX_ABI _uX_mm_const_45_ps(void); //                   __m128f_ps(void); // flt_45
extern __m128 uX_ABI _uX_mm_const_46_ps(void); //                   __m128f_ps(void); // flt_46
extern __m128 uX_ABI _uX_mm_const_47_ps(void); //                   __m128f_ps(void); // flt_47
extern __m128 uX_ABI _uX_mm_const_48_ps(void); //                   __m128f_ps(void); // flt_48
extern __m128 uX_ABI _uX_mm_const_49_ps(void); //                   __m128f_ps(void); // flt_49
extern __m128 uX_ABI _uX_mm_const_50_ps(void); //                   __m128f_ps(void); // flt_50
extern __m128 uX_ABI _uX_mm_const_51_ps(void); //                   __m128f_ps(void); // flt_51
extern __m128 uX_ABI _uX_mm_const_52_ps(void); //                   __m128f_ps(void); // flt_52
extern __m128 uX_ABI _uX_mm_const_53_ps(void); //                   __m128f_ps(void); // flt_53
extern __m128 uX_ABI _uX_mm_const_54_ps(void); //                   __m128f_ps(void); // flt_54
extern __m128 uX_ABI _uX_mm_const_55_ps(void); //                   __m128f_ps(void); // flt_55
extern __m128 uX_ABI _uX_mm_const_56_ps(void); //                   __m128f_ps(void); // flt_56
extern __m128 uX_ABI _uX_mm_const_57_ps(void); //                   __m128f_ps(void); // flt_57
extern __m128 uX_ABI _uX_mm_const_58_ps(void); //                   __m128f_ps(void); // flt_58
extern __m128 uX_ABI _uX_mm_const_59_ps(void); //                   __m128f_ps(void); // flt_59
extern __m128 uX_ABI _uX_mm_const_60_ps(void); //                   __m128f_ps(void); // flt_60
extern __m128 uX_ABI _uX_mm_const_61_ps(void); //                   __m128f_ps(void); // flt_61
extern __m128 uX_ABI _uX_mm_const_62_ps(void); //                   __m128f_ps(void); // flt_62
extern __m128 uX_ABI _uX_mm_const_63_ps(void); //                   __m128f_ps(void); // flt_63
extern __m128 uX_ABI _uX_mm_const_64_ps(void); //                   __m128f_ps(void); // flt_64
extern __m128 uX_ABI _uX_mm_const_65_ps(void); //                   __m128f_ps(void); // flt_65
extern __m128 uX_ABI _uX_mm_const_66_ps(void); //                   __m128f_ps(void); // flt_66
extern __m128 uX_ABI _uX_mm_const_67_ps(void); //                   __m128f_ps(void); // flt_67
extern __m128 uX_ABI _uX_mm_const_68_ps(void); //                   __m128f_ps(void); // flt_68
extern __m128 uX_ABI _uX_mm_const_69_ps(void); //                   __m128f_ps(void); // flt_69
extern __m128 uX_ABI _uX_mm_const_70_ps(void); //                   __m128f_ps(void); // flt_70
extern __m128 uX_ABI _uX_mm_const_71_ps(void); //                   __m128f_ps(void); // flt_71
extern __m128 uX_ABI _uX_mm_const_72_ps(void); //                   __m128f_ps(void); // flt_72
extern __m128 uX_ABI _uX_mm_const_73_ps(void); //                   __m128f_ps(void); // flt_73
extern __m128 uX_ABI _uX_mm_const_74_ps(void); //                   __m128f_ps(void); // flt_74
extern __m128 uX_ABI _uX_mm_const_75_ps(void); //                   __m128f_ps(void); // flt_75
extern __m128 uX_ABI _uX_mm_const_76_ps(void); //                   __m128f_ps(void); // flt_76
extern __m128 uX_ABI _uX_mm_const_77_ps(void); //                   __m128f_ps(void); // flt_77
extern __m128 uX_ABI _uX_mm_const_78_ps(void); //                   __m128f_ps(void); // flt_78
extern __m128 uX_ABI _uX_mm_const_79_ps(void); //                   __m128f_ps(void); // flt_79
extern __m128 uX_ABI _uX_mm_const_80_ps(void); //                   __m128f_ps(void); // flt_80
extern __m128 uX_ABI _uX_mm_const_81_ps(void); //                   __m128f_ps(void); // flt_81
extern __m128 uX_ABI _uX_mm_const_82_ps(void); //                   __m128f_ps(void); // flt_82
extern __m128 uX_ABI _uX_mm_const_83_ps(void); //                   __m128f_ps(void); // flt_83
extern __m128 uX_ABI _uX_mm_const_84_ps(void); //                   __m128f_ps(void); // flt_84
extern __m128 uX_ABI _uX_mm_const_85_ps(void); //                   __m128f_ps(void); // flt_85
extern __m128 uX_ABI _uX_mm_const_86_ps(void); //                   __m128f_ps(void); // flt_86
extern __m128 uX_ABI _uX_mm_const_87_ps(void); //                   __m128f_ps(void); // flt_87
extern __m128 uX_ABI _uX_mm_const_88_ps(void); //                   __m128f_ps(void); // flt_88
extern __m128 uX_ABI _uX_mm_const_89_ps(void); //                   __m128f_ps(void); // flt_89
extern __m128 uX_ABI _uX_mm_const_90_ps(void); //                   __m128f_ps(void); // flt_90
extern __m128 uX_ABI _uX_mm_const_91_ps(void); //                   __m128f_ps(void); // flt_91
extern __m128 uX_ABI _uX_mm_const_92_ps(void); //                   __m128f_ps(void); // flt_92
extern __m128 uX_ABI _uX_mm_const_93_ps(void); //                   __m128f_ps(void); // flt_93
extern __m128 uX_ABI _uX_mm_const_94_ps(void); //                   __m128f_ps(void); // flt_94
extern __m128 uX_ABI _uX_mm_const_95_ps(void); //                   __m128f_ps(void); // flt_95
extern __m128 uX_ABI _uX_mm_const_96_ps(void); //                   __m128f_ps(void); // flt_96
extern __m128 uX_ABI _uX_mm_const_97_ps(void); //                   __m128f_ps(void); // flt_97
extern __m128 uX_ABI _uX_mm_const_98_ps(void); //                   __m128f_ps(void); // flt_98
extern __m128 uX_ABI _uX_mm_const_99_ps(void); //                   __m128f_ps(void); // flt_99
extern __m128 uX_ABI _uX_mm_const_100_ps(void); //                  __m128f_ps(void); // flt_100
extern __m128 uX_ABI _uX_mm_const_125_ps(void); //                  __m128f_ps(void); // flt_125
extern __m128 uX_ABI _uX_mm_const_126_ps(void); //                  __m128f_ps(void); // flt_126
extern __m128 uX_ABI _uX_mm_const_127_ps(void); //                  __m128f_ps(void); // flt_127
extern __m128 uX_ABI _uX_mm_const_128_ps(void); //                  __m128f_ps(void); // flt_128
extern __m128 uX_ABI _uX_mm_const_140_ps(void); //                  __m128f_ps(void); // flt_140
extern __m128 uX_ABI _uX_mm_const_145_ps(void); //                  __m128f_ps(void); // flt_145
extern __m128 uX_ABI _uX_mm_const_150_ps(void); //                  __m128f_ps(void); // flt_150
extern __m128 uX_ABI _uX_mm_const_180_ps(void); //                  __m128f_ps(void); // flt_180
extern __m128 uX_ABI _uX_mm_const_253_ps(void); //                  __m128f_ps(void); // flt_253
extern __m128 uX_ABI _uX_mm_const_254_ps(void); //                  __m128f_ps(void); // flt_254
extern __m128 uX_ABI _uX_mm_const_255_ps(void); //                  __m128f_ps(void); // flt_255
extern __m128 uX_ABI _uX_mm_const_256_ps(void); //                  __m128f_ps(void); // flt_256
extern __m128 uX_ABI _uX_mm_const_360_ps(void); //                  __m128f_ps(void); // flt_360
extern __m128 uX_ABI _uX_mm_const_511_ps(void); //                  __m128f_ps(void); // flt_511
extern __m128 uX_ABI _uX_mm_const_512_ps(void); //                  __m128f_ps(void); // flt_512
extern __m128 uX_ABI _uX_mm_const_513_ps(void); //                  __m128f_ps(void); // flt_513
extern __m128 uX_ABI _uX_mm_const_1023_ps(void); //                     __m128f_ps(void); // flt_1023
extern __m128 uX_ABI _uX_mm_const_1024_ps(void); //                     __m128f_ps(void); // flt_1024
extern __m128 uX_ABI _uX_mm_const_1025_ps(void); //                     __m128f_ps(void); // flt_1025

extern __m128 uX_ABI _uX_mm_const_32767_ps(void); //                    __m128f_ps(void); // flt_32767
extern __m128 uX_ABI _uX_mm_const_32768_ps(void); //                    __m128f_ps(void); // flt_32768
extern __m128 uX_ABI _uX_mm_const_65535_ps(void); //                    __m128f_ps(void); // flt_65535
extern __m128 uX_ABI _uX_mm_const_65536_ps(void); //                    __m128f_ps(void); // flt_65536
extern __m128 uX_ABI _uX_mm_const_2147483647_ps(void); //           __m128f_ps(void); // flt_2147483647
extern __m128 uX_ABI _uX_mm_const_2147483648_ps(void); //           __m128f_ps(void); // flt_2147483648
extern __m128 uX_ABI _uX_mm_const_4294967295_ps(void); //           __m128f_ps(void); // flt_4294967295
extern __m128 uX_ABI _uX_mm_const_4294967296_ps(void); //           __m128f_ps(void); // flt_4294967296

extern __m128 uX_ABI _uX_mm_const_neg0_ps(void); //                     __m128f_ps(void); // flt_neg0
extern __m128 uX_ABI _uX_mm_const_neg0d0001_ps(void); //                __m128f_ps(void); // flt_neg0d0001
extern __m128 uX_ABI _uX_mm_const_neg0d0002_ps(void); //                __m128f_ps(void); // flt_neg0d0002
extern __m128 uX_ABI _uX_mm_const_neg0d0003_ps(void); //                __m128f_ps(void); // flt_neg0d0003
extern __m128 uX_ABI _uX_mm_const_neg0d0004_ps(void); //                __m128f_ps(void); // flt_neg0d0004
extern __m128 uX_ABI _uX_mm_const_neg0d0005_ps(void); //                __m128f_ps(void); // flt_neg0d0005
extern __m128 uX_ABI _uX_mm_const_neg0d0006_ps(void); //                __m128f_ps(void); // flt_neg0d0006
extern __m128 uX_ABI _uX_mm_const_neg0d0007_ps(void); //                __m128f_ps(void); // flt_neg0d0007
extern __m128 uX_ABI _uX_mm_const_neg0d0008_ps(void); //                __m128f_ps(void); // flt_neg0d0008
extern __m128 uX_ABI _uX_mm_const_neg0d0009_ps(void); //                __m128f_ps(void); // flt_neg0d0009
extern __m128 uX_ABI _uX_mm_const_neg0d001_ps(void); //                 __m128f_ps(void); // flt_neg0d001
extern __m128 uX_ABI _uX_mm_const_neg0d002_ps(void); //                 __m128f_ps(void); // flt_neg0d002
extern __m128 uX_ABI _uX_mm_const_neg0d003_ps(void); //                 __m128f_ps(void); // flt_neg0d003
extern __m128 uX_ABI _uX_mm_const_neg0d004_ps(void); //                 __m128f_ps(void); // flt_neg0d004
extern __m128 uX_ABI _uX_mm_const_neg0d005_ps(void); //                 __m128f_ps(void); // flt_neg0d005
extern __m128 uX_ABI _uX_mm_const_neg0d006_ps(void); //                 __m128f_ps(void); // flt_neg0d006
extern __m128 uX_ABI _uX_mm_const_neg0d007_ps(void); //                 __m128f_ps(void); // flt_neg0d007
extern __m128 uX_ABI _uX_mm_const_neg0d008_ps(void); //                 __m128f_ps(void); // flt_neg0d008
extern __m128 uX_ABI _uX_mm_const_neg0d009_ps(void); //                 __m128f_ps(void); // flt_neg0d009
extern __m128 uX_ABI _uX_mm_const_neg0d01_ps(void); //              __m128f_ps(void); // flt_neg0d01
extern __m128 uX_ABI _uX_mm_const_neg0d02_ps(void); //              __m128f_ps(void); // flt_neg0d02
extern __m128 uX_ABI _uX_mm_const_neg0d025_ps(void); //                 __m128f_ps(void); // flt_neg0d025
extern __m128 uX_ABI _uX_mm_const_neg0d03_ps(void); //              __m128f_ps(void); // flt_neg0d03
extern __m128 uX_ABI _uX_mm_const_neg0d04_ps(void); //              __m128f_ps(void); // flt_neg0d04
extern __m128 uX_ABI _uX_mm_const_neg0d05_ps(void); //              __m128f_ps(void); // flt_neg0d05
extern __m128 uX_ABI _uX_mm_const_neg0d06_ps(void); //              __m128f_ps(void); // flt_neg0d06
extern __m128 uX_ABI _uX_mm_const_neg0d07_ps(void); //              __m128f_ps(void); // flt_neg0d07
extern __m128 uX_ABI _uX_mm_const_neg0d08_ps(void); //              __m128f_ps(void); // flt_neg0d08
extern __m128 uX_ABI _uX_mm_const_neg0d09_ps(void); //              __m128f_ps(void); // flt_neg0d09
extern __m128 uX_ABI _uX_mm_const_neg0d1_ps(void); //               __m128f_ps(void); // flt_neg0d1
extern __m128 uX_ABI _uX_mm_const_neg0d2_ps(void); //               __m128f_ps(void); // flt_neg0d2
extern __m128 uX_ABI _uX_mm_const_neg0d25_ps(void); //              __m128f_ps(void); // flt_neg0d25
extern __m128 uX_ABI _uX_mm_const_neg0d3_ps(void); //               __m128f_ps(void); // flt_neg0d3
extern __m128 uX_ABI _uX_mm_const_neg0d4_ps(void); //               __m128f_ps(void); // flt_neg0d4
extern __m128 uX_ABI _uX_mm_const_neg0d5_ps(void); //               __m128f_ps(void); // flt_neg0d5
extern __m128 uX_ABI _uX_mm_const_neg0d6_ps(void); //               __m128f_ps(void); // flt_neg0d6
extern __m128 uX_ABI _uX_mm_const_neg0d7_ps(void); //               __m128f_ps(void); // flt_neg0d7
extern __m128 uX_ABI _uX_mm_const_neg0d8_ps(void); //               __m128f_ps(void); // flt_neg0d8
extern __m128 uX_ABI _uX_mm_const_neg0d9_ps(void); //               __m128f_ps(void); // flt_neg0d9
extern __m128 uX_ABI _uX_mm_const_neg1_ps(void); //                     __m128f_ps(void); // flt_neg1
extern __m128 uX_ABI _uX_mm_const_neg1d25_ps(void); //              __m128f_ps(void); // flt_neg1d25
extern __m128 uX_ABI _uX_mm_const_neg1d5_ps(void); //               __m128f_ps(void); // flt_neg1d5
extern __m128 uX_ABI _uX_mm_const_neg2_ps(void); //                     __m128f_ps(void); // flt_neg2
extern __m128 uX_ABI _uX_mm_const_neg2d25_ps(void); //              __m128f_ps(void); // flt_neg2d25
extern __m128 uX_ABI _uX_mm_const_neg2d5_ps(void); //               __m128f_ps(void); // flt_neg2d5
extern __m128 uX_ABI _uX_mm_const_neg3_ps(void); //                     __m128f_ps(void); // flt_neg3
extern __m128 uX_ABI _uX_mm_const_neg3d25_ps(void); //              __m128f_ps(void); // flt_neg3d25
extern __m128 uX_ABI _uX_mm_const_neg3d5_ps(void); //               __m128f_ps(void); // flt_neg3d5
extern __m128 uX_ABI _uX_mm_const_neg4_ps(void); //                     __m128f_ps(void); // flt_neg4
extern __m128 uX_ABI _uX_mm_const_neg4d25_ps(void); //              __m128f_ps(void); // flt_neg4d25
extern __m128 uX_ABI _uX_mm_const_neg4d5_ps(void); //               __m128f_ps(void); // flt_neg4d5
extern __m128 uX_ABI _uX_mm_const_neg5_ps(void); //                     __m128f_ps(void); // flt_neg5
extern __m128 uX_ABI _uX_mm_const_neg5d25_ps(void); //              __m128f_ps(void); // flt_neg5d25
extern __m128 uX_ABI _uX_mm_const_neg5d5_ps(void); //               __m128f_ps(void); // flt_neg5d5
extern __m128 uX_ABI _uX_mm_const_neg6_ps(void); //                     __m128f_ps(void); // flt_neg6
extern __m128 uX_ABI _uX_mm_const_neg6d25_ps(void); //              __m128f_ps(void); // flt_neg6d25
extern __m128 uX_ABI _uX_mm_const_neg6d5_ps(void); //               __m128f_ps(void); // flt_neg6d5
extern __m128 uX_ABI _uX_mm_const_neg7_ps(void); //                     __m128f_ps(void); // flt_neg7
extern __m128 uX_ABI _uX_mm_const_neg7d25_ps(void); //              __m128f_ps(void); // flt_neg7d25
extern __m128 uX_ABI _uX_mm_const_neg7d5_ps(void); //               __m128f_ps(void); // flt_neg7d5
extern __m128 uX_ABI _uX_mm_const_neg8_ps(void); //                     __m128f_ps(void); // flt_neg8
extern __m128 uX_ABI _uX_mm_const_neg8d25_ps(void); //              __m128f_ps(void); // flt_neg8d25
extern __m128 uX_ABI _uX_mm_const_neg8d5_ps(void); //               __m128f_ps(void); // flt_neg8d5
extern __m128 uX_ABI _uX_mm_const_neg9_ps(void); //                     __m128f_ps(void); // flt_neg9
extern __m128 uX_ABI _uX_mm_const_neg9d25_ps(void); //              __m128f_ps(void); // flt_neg9d25
extern __m128 uX_ABI _uX_mm_const_neg9d5_ps(void); //               __m128f_ps(void); // flt_neg9d5
extern __m128 uX_ABI _uX_mm_const_neg10_ps(void); //                    __m128f_ps(void); // flt_neg10
extern __m128 uX_ABI _uX_mm_const_neg11_ps(void); //                    __m128f_ps(void); // flt_neg11
extern __m128 uX_ABI _uX_mm_const_neg12_ps(void); //                    __m128f_ps(void); // flt_neg12
extern __m128 uX_ABI _uX_mm_const_neg13_ps(void); //                    __m128f_ps(void); // flt_neg13
extern __m128 uX_ABI _uX_mm_const_neg14_ps(void); //                    __m128f_ps(void); // flt_neg14
extern __m128 uX_ABI _uX_mm_const_neg15_ps(void); //                    __m128f_ps(void); // flt_neg15
extern __m128 uX_ABI _uX_mm_const_neg16_ps(void); //                    __m128f_ps(void); // flt_neg16
extern __m128 uX_ABI _uX_mm_const_neg17_ps(void); //                    __m128f_ps(void); // flt_neg17
extern __m128 uX_ABI _uX_mm_const_neg18_ps(void); //                    __m128f_ps(void); // flt_neg18
extern __m128 uX_ABI _uX_mm_const_neg19_ps(void); //                    __m128f_ps(void); // flt_neg19
extern __m128 uX_ABI _uX_mm_const_neg20_ps(void); //                    __m128f_ps(void); // flt_neg20
extern __m128 uX_ABI _uX_mm_const_neg21_ps(void); //                    __m128f_ps(void); // flt_neg21
extern __m128 uX_ABI _uX_mm_const_neg22_ps(void); //                    __m128f_ps(void); // flt_neg22
extern __m128 uX_ABI _uX_mm_const_neg23_ps(void); //                    __m128f_ps(void); // flt_neg23
extern __m128 uX_ABI _uX_mm_const_neg24_ps(void); //                    __m128f_ps(void); // flt_neg24
extern __m128 uX_ABI _uX_mm_const_neg24d5_ps(void); //              __m128f_ps(void); // flt_neg24d5
extern __m128 uX_ABI _uX_mm_const_neg25_ps(void); //                    __m128f_ps(void); // flt_neg25
extern __m128 uX_ABI _uX_mm_const_neg26_ps(void); //                    __m128f_ps(void); // flt_neg26
extern __m128 uX_ABI _uX_mm_const_neg27_ps(void); //                    __m128f_ps(void); // flt_neg27
extern __m128 uX_ABI _uX_mm_const_neg28_ps(void); //                    __m128f_ps(void); // flt_neg28
extern __m128 uX_ABI _uX_mm_const_neg29_ps(void); //                    __m128f_ps(void); // flt_neg29
extern __m128 uX_ABI _uX_mm_const_neg30_ps(void); //                    __m128f_ps(void); // flt_neg30
extern __m128 uX_ABI _uX_mm_const_neg31_ps(void); //                    __m128f_ps(void); // flt_neg31
extern __m128 uX_ABI _uX_mm_const_neg32_ps(void); //                    __m128f_ps(void); // flt_neg32
extern __m128 uX_ABI _uX_mm_const_neg33_ps(void); //                    __m128f_ps(void); // flt_neg33
extern __m128 uX_ABI _uX_mm_const_neg34_ps(void); //                    __m128f_ps(void); // flt_neg34
extern __m128 uX_ABI _uX_mm_const_neg35_ps(void); //                    __m128f_ps(void); // flt_neg35
extern __m128 uX_ABI _uX_mm_const_neg36_ps(void); //                    __m128f_ps(void); // flt_neg36
extern __m128 uX_ABI _uX_mm_const_neg37_ps(void); //                    __m128f_ps(void); // flt_neg37
extern __m128 uX_ABI _uX_mm_const_neg38_ps(void); //                    __m128f_ps(void); // flt_neg38
extern __m128 uX_ABI _uX_mm_const_neg39_ps(void); //                    __m128f_ps(void); // flt_neg39
extern __m128 uX_ABI _uX_mm_const_neg40_ps(void); //                    __m128f_ps(void); // flt_neg40
extern __m128 uX_ABI _uX_mm_const_neg41_ps(void); //                    __m128f_ps(void); // flt_neg41
extern __m128 uX_ABI _uX_mm_const_neg42_ps(void); //                    __m128f_ps(void); // flt_neg42
extern __m128 uX_ABI _uX_mm_const_neg43_ps(void); //                    __m128f_ps(void); // flt_neg43
extern __m128 uX_ABI _uX_mm_const_neg44_ps(void); //                    __m128f_ps(void); // flt_neg44
extern __m128 uX_ABI _uX_mm_const_neg45_ps(void); //                    __m128f_ps(void); // flt_neg45
extern __m128 uX_ABI _uX_mm_const_neg46_ps(void); //                    __m128f_ps(void); // flt_neg46
extern __m128 uX_ABI _uX_mm_const_neg47_ps(void); //                    __m128f_ps(void); // flt_neg47
extern __m128 uX_ABI _uX_mm_const_neg48_ps(void); //                    __m128f_ps(void); // flt_neg48
extern __m128 uX_ABI _uX_mm_const_neg49_ps(void); //                    __m128f_ps(void); // flt_neg49
extern __m128 uX_ABI _uX_mm_const_neg50_ps(void); //                    __m128f_ps(void); // flt_neg50
extern __m128 uX_ABI _uX_mm_const_neg51_ps(void); //                    __m128f_ps(void); // flt_neg51
extern __m128 uX_ABI _uX_mm_const_neg52_ps(void); //                    __m128f_ps(void); // flt_neg52
extern __m128 uX_ABI _uX_mm_const_neg53_ps(void); //                    __m128f_ps(void); // flt_neg53
extern __m128 uX_ABI _uX_mm_const_neg54_ps(void); //                    __m128f_ps(void); // flt_neg54
extern __m128 uX_ABI _uX_mm_const_neg55_ps(void); //                    __m128f_ps(void); // flt_neg55
extern __m128 uX_ABI _uX_mm_const_neg56_ps(void); //                    __m128f_ps(void); // flt_neg56
extern __m128 uX_ABI _uX_mm_const_neg57_ps(void); //                    __m128f_ps(void); // flt_neg57
extern __m128 uX_ABI _uX_mm_const_neg58_ps(void); //                    __m128f_ps(void); // flt_neg58
extern __m128 uX_ABI _uX_mm_const_neg59_ps(void); //                    __m128f_ps(void); // flt_neg59
extern __m128 uX_ABI _uX_mm_const_neg60_ps(void); //                    __m128f_ps(void); // flt_neg60
extern __m128 uX_ABI _uX_mm_const_neg61_ps(void); //                    __m128f_ps(void); // flt_neg61
extern __m128 uX_ABI _uX_mm_const_neg62_ps(void); //                    __m128f_ps(void); // flt_neg62
extern __m128 uX_ABI _uX_mm_const_neg63_ps(void); //                    __m128f_ps(void); // flt_neg63
extern __m128 uX_ABI _uX_mm_const_neg64_ps(void); //                    __m128f_ps(void); // flt_neg64
extern __m128 uX_ABI _uX_mm_const_neg65_ps(void); //                    __m128f_ps(void); // flt_neg65
extern __m128 uX_ABI _uX_mm_const_neg66_ps(void); //                    __m128f_ps(void); // flt_neg66
extern __m128 uX_ABI _uX_mm_const_neg67_ps(void); //                    __m128f_ps(void); // flt_neg67
extern __m128 uX_ABI _uX_mm_const_neg68_ps(void); //                    __m128f_ps(void); // flt_neg68
extern __m128 uX_ABI _uX_mm_const_neg69_ps(void); //                    __m128f_ps(void); // flt_neg69
extern __m128 uX_ABI _uX_mm_const_neg70_ps(void); //                    __m128f_ps(void); // flt_neg70
extern __m128 uX_ABI _uX_mm_const_neg71_ps(void); //                    __m128f_ps(void); // flt_neg71
extern __m128 uX_ABI _uX_mm_const_neg72_ps(void); //                    __m128f_ps(void); // flt_neg72
extern __m128 uX_ABI _uX_mm_const_neg73_ps(void); //                    __m128f_ps(void); // flt_neg73
extern __m128 uX_ABI _uX_mm_const_neg74_ps(void); //                    __m128f_ps(void); // flt_neg74
extern __m128 uX_ABI _uX_mm_const_neg75_ps(void); //                    __m128f_ps(void); // flt_neg75
extern __m128 uX_ABI _uX_mm_const_neg76_ps(void); //                    __m128f_ps(void); // flt_neg76
extern __m128 uX_ABI _uX_mm_const_neg77_ps(void); //                    __m128f_ps(void); // flt_neg77
extern __m128 uX_ABI _uX_mm_const_neg78_ps(void); //                    __m128f_ps(void); // flt_neg78
extern __m128 uX_ABI _uX_mm_const_neg79_ps(void); //                    __m128f_ps(void); // flt_neg79
extern __m128 uX_ABI _uX_mm_const_neg80_ps(void); //                    __m128f_ps(void); // flt_neg80
extern __m128 uX_ABI _uX_mm_const_neg81_ps(void); //                    __m128f_ps(void); // flt_neg81
extern __m128 uX_ABI _uX_mm_const_neg82_ps(void); //                    __m128f_ps(void); // flt_neg82
extern __m128 uX_ABI _uX_mm_const_neg83_ps(void); //                    __m128f_ps(void); // flt_neg83
extern __m128 uX_ABI _uX_mm_const_neg84_ps(void); //                    __m128f_ps(void); // flt_neg84
extern __m128 uX_ABI _uX_mm_const_neg85_ps(void); //                    __m128f_ps(void); // flt_neg85
extern __m128 uX_ABI _uX_mm_const_neg86_ps(void); //                    __m128f_ps(void); // flt_neg86
extern __m128 uX_ABI _uX_mm_const_neg87_ps(void); //                    __m128f_ps(void); // flt_neg87
extern __m128 uX_ABI _uX_mm_const_neg88_ps(void); //                    __m128f_ps(void); // flt_neg88
extern __m128 uX_ABI _uX_mm_const_neg89_ps(void); //                    __m128f_ps(void); // flt_neg89
extern __m128 uX_ABI _uX_mm_const_neg90_ps(void); //                    __m128f_ps(void); // flt_neg90
extern __m128 uX_ABI _uX_mm_const_neg91_ps(void); //                    __m128f_ps(void); // flt_neg91
extern __m128 uX_ABI _uX_mm_const_neg92_ps(void); //                    __m128f_ps(void); // flt_neg92
extern __m128 uX_ABI _uX_mm_const_neg93_ps(void); //                    __m128f_ps(void); // flt_neg93
extern __m128 uX_ABI _uX_mm_const_neg94_ps(void); //                    __m128f_ps(void); // flt_neg94
extern __m128 uX_ABI _uX_mm_const_neg95_ps(void); //                    __m128f_ps(void); // flt_neg95
extern __m128 uX_ABI _uX_mm_const_neg96_ps(void); //                    __m128f_ps(void); // flt_neg96
extern __m128 uX_ABI _uX_mm_const_neg97_ps(void); //                    __m128f_ps(void); // flt_neg97
extern __m128 uX_ABI _uX_mm_const_neg98_ps(void); //                    __m128f_ps(void); // flt_neg98
extern __m128 uX_ABI _uX_mm_const_neg99_ps(void); //                    __m128f_ps(void); // flt_neg99
extern __m128 uX_ABI _uX_mm_const_neg100_ps(void); //               __m128f_ps(void); // flt_neg100
extern __m128 uX_ABI _uX_mm_const_neg125_ps(void); //               __m128f_ps(void); // flt_neg125
extern __m128 uX_ABI _uX_mm_const_neg126_ps(void); //               __m128f_ps(void); // flt_neg126
extern __m128 uX_ABI _uX_mm_const_neg127_ps(void); //               __m128f_ps(void); // flt_neg127
extern __m128 uX_ABI _uX_mm_const_neg128_ps(void); //               __m128f_ps(void); // flt_neg128
extern __m128 uX_ABI _uX_mm_const_neg140_ps(void); //               __m128f_ps(void); // flt_neg140
extern __m128 uX_ABI _uX_mm_const_neg145_ps(void); //               __m128f_ps(void); // flt_neg145
extern __m128 uX_ABI _uX_mm_const_neg150_ps(void); //               __m128f_ps(void); // flt_neg150
extern __m128 uX_ABI _uX_mm_const_neg180_ps(void); //               __m128f_ps(void); // flt_neg180
extern __m128 uX_ABI _uX_mm_const_neg253_ps(void); //               __m128f_ps(void); // flt_neg253
extern __m128 uX_ABI _uX_mm_const_neg254_ps(void); //               __m128f_ps(void); // flt_neg254
extern __m128 uX_ABI _uX_mm_const_neg255_ps(void); //               __m128f_ps(void); // flt_neg255
extern __m128 uX_ABI _uX_mm_const_neg256_ps(void); //               __m128f_ps(void); // flt_neg256
extern __m128 uX_ABI _uX_mm_const_neg360_ps(void); //               __m128f_ps(void); // flt_neg360
extern __m128 uX_ABI _uX_mm_const_neg511_ps(void); //               __m128f_ps(void); // flt_neg511
extern __m128 uX_ABI _uX_mm_const_neg512_ps(void); //               __m128f_ps(void); // flt_neg512
extern __m128 uX_ABI _uX_mm_const_neg513_ps(void); //               __m128f_ps(void); // flt_neg513
extern __m128 uX_ABI _uX_mm_const_neg1023_ps(void); //              __m128f_ps(void); // flt_neg1023
extern __m128 uX_ABI _uX_mm_const_neg1024_ps(void); //              __m128f_ps(void); // flt_neg1024
extern __m128 uX_ABI _uX_mm_const_neg1025_ps(void); //              __m128f_ps(void); // flt_neg1025

extern __m128 uX_ABI _uX_mm_const_neg32767_ps(void); //                 __m128f_ps(void); // flt_neg32767
extern __m128 uX_ABI _uX_mm_const_neg32768_ps(void); //                 __m128f_ps(void); // flt_neg32768
extern __m128 uX_ABI _uX_mm_const_neg65535_ps(void); //                 __m128f_ps(void); // flt_neg65535
extern __m128 uX_ABI _uX_mm_const_neg65536_ps(void); //                 __m128f_ps(void); // flt_neg65536
extern __m128 uX_ABI _uX_mm_const_neg2147483647_ps(void); //            __m128f_ps(void); // flt_neg2147483647
extern __m128 uX_ABI _uX_mm_const_neg2147483648_ps(void); //            __m128f_ps(void); // flt_neg2147483648
extern __m128 uX_ABI _uX_mm_const_neg4294967295_ps(void); //            __m128f_ps(void); // flt_neg4294967295
extern __m128 uX_ABI _uX_mm_const_neg4294967296_ps(void); //            __m128f_ps(void); // flt_neg4294967296

extern __m128 uX_ABI _uX_mm_const_bin128_ps(void); //                   __m128i_ps(void); // flt_bin128
extern __m128 uX_ABI _uX_mm_const_binneg150_ps(void); //                __m128i_ps(void); // flt_binneg150

extern __m128 uX_ABI _uX_mm_const_maxrand_ps(void); //              __m128f_ps(void); // flt_maxrand

extern __m128 uX_ABI _uX_mm_const_maxi8_ps(void); //                    __m128f_ps(void); // flt_maxi8
extern __m128 uX_ABI _uX_mm_const_mini8_ps(void); //                    __m128f_ps(void); // flt_mini8
extern __m128 uX_ABI _uX_mm_const_maxu8_ps(void); //                    __m128f_ps(void); // flt_maxu8

extern __m128 uX_ABI _uX_mm_const_maxi16_ps(void); //                   __m128f_ps(void); // flt_maxi16
extern __m128 uX_ABI _uX_mm_const_mini16_ps(void); //                   __m128f_ps(void); // flt_mini16
extern __m128 uX_ABI _uX_mm_const_maxu16_ps(void); //                   __m128f_ps(void); // flt_maxu16

extern __m128 uX_ABI _uX_mm_const_maxi32_ps(void); //                   __m128f_ps(void); // flt_maxi32
extern __m128 uX_ABI _uX_mm_const_mini32_ps(void); //                   __m128f_ps(void); // flt_mini32
extern __m128 uX_ABI _uX_mm_const_maxu32_ps(void); //                   __m128f_ps(void); // flt_maxu32

extern __m128 uX_ABI _uX_mm_const_maxi8xu8_ps(void); //             __m128f_ps(void); // flt_maxi8xu8
extern __m128 uX_ABI _uX_mm_const_mini8xu8_ps(void); //             __m128f_ps(void); // flt_mini8xu8
extern __m128 uX_ABI _uX_mm_const_maxi8xu16_ps(void); //                __m128f_ps(void); // flt_maxi8xu16
extern __m128 uX_ABI _uX_mm_const_mini8xu16_ps(void); //                __m128f_ps(void); // flt_mini8xu16

extern __m128 uX_ABI _uX_mm_const_maxi16xu16_ps(void); //               __m128f_ps(void); // flt_maxi16xu16
extern __m128 uX_ABI _uX_mm_const_mini16xu16_ps(void); //               __m128f_ps(void); // flt_mini16xu16

extern __m128 uX_ABI _uX_mm_const_fixunsigned_ps(void); //          __m128f_ps(void); // flt_fixunsigned
extern __m128 uX_ABI _uX_mm_const_fixunsigned32_ps(void); //            __m128f_ps(void); // flt_fixunsigned32
extern __m128 uX_ABI _uX_mm_const_fixmaxi32_ps(void); //                __m128f_ps(void); // flt_fixmaxi32
extern __m128 uX_ABI _uX_mm_const_fixmaxu32_ps(void); //                __m128f_ps(void); // flt_fixmaxu32

extern __m128 uX_ABI _uX_mm_const_rcpi16_ps(void); //               __m128f_ps(void); // flt_rcpi16
extern __m128 uX_ABI _uX_mm_const_rcpu16_ps(void); //               __m128f_ps(void); // flt_rcpu16
extern __m128 uX_ABI _uX_mm_const_rcpi16xu16_ps(void); //           __m128f_ps(void); // flt_rcpi16xu16

extern __m128 uX_ABI _uX_mm_const_fixaa8_ps(void); //               __m128f_ps(void); // flt_fixaa8
extern __m128 uX_ABI _uX_mm_const_fixr8_ps(void); //                    __m128f_ps(void); // flt_fixr8
extern __m128 uX_ABI _uX_mm_const_fixg8_ps(void); //                    __m128f_ps(void); // flt_fixg8
extern __m128 uX_ABI _uX_mm_const_fixb8_ps(void); //                    __m128f_ps(void); // flt_fixb8

extern __m128 uX_ABI _uX_mm_const_norma8_ps(void); //               __m128f_ps(void); // flt_norma8
extern __m128 uX_ABI _uX_mm_const_normr8_ps(void); //               __m128f_ps(void); // flt_normr8
extern __m128 uX_ABI _uX_mm_const_normg8_ps(void); //               __m128f_ps(void); // flt_normg8
extern __m128 uX_ABI _uX_mm_const_normb8_ps(void); //               __m128f_ps(void); // flt_normb8

extern __m128 uX_ABI _uX_mm_const_fixaa2_ps(void); //               __m128f_ps(void); // flt_fixaa2
extern __m128 uX_ABI _uX_mm_const_fixb10_ps(void); //               __m128f_ps(void); // flt_fixb10
extern __m128 uX_ABI _uX_mm_const_fixg10_ps(void); //               __m128f_ps(void); // flt_fixg10
extern __m128 uX_ABI _uX_mm_const_fixr10_ps(void); //               __m128f_ps(void); // flt_fixr10

extern __m128 uX_ABI _uX_mm_const_norma2_ps(void); //               __m128f_ps(void); // flt_norma2
extern __m128 uX_ABI _uX_mm_const_normb10_ps(void); //              __m128f_ps(void); // flt_normb10
extern __m128 uX_ABI _uX_mm_const_normg10_ps(void); //              __m128f_ps(void); // flt_normg10
extern __m128 uX_ABI _uX_mm_const_normr10_ps(void); //              __m128f_ps(void); // flt_normr10

extern __m128 uX_ABI _uX_mm_const_mg_ps(void); //                   __m128f_ps(void); // flt_mg
extern __m128 uX_ABI _uX_mm_const_negmg_ps(void); //                    __m128f_ps(void); // flt_negmg
extern __m128 uX_ABI _uX_mm_const_halfmg_ps(void); //               __m128f_ps(void); // flt_halfmg
extern __m128 uX_ABI _uX_mm_const_neghalfmg_ps(void); //                __m128f_ps(void); // flt_neghalfmg
extern __m128 uX_ABI _uX_mm_const_mgdiv4_ps(void); //               __m128f_ps(void); // flt_mgdiv4
extern __m128 uX_ABI _uX_mm_const_negmgdiv4_ps(void); //                __m128f_ps(void); // flt_negmgdiv4
extern __m128 uX_ABI _uX_mm_const_halfmgxmg_ps(void); //                __m128f_ps(void); // flt_halfmgxmg
extern __m128 uX_ABI _uX_mm_const_halfmgxsqrmg_ps(void); //             __m128f_ps(void); // flt_halfmgxsqrmg
extern __m128 uX_ABI _uX_mm_const_halfmgxcubemg_ps(void); //            __m128f_ps(void); // flt_halfmgxcubemg
extern __m128 uX_ABI _uX_mm_const_neghalfmgxmg_ps(void); //             __m128f_ps(void); // flt_neghalfmgxmg
extern __m128 uX_ABI _uX_mm_const_neghalfmgxsqrmg_ps(void); //      __m128f_ps(void); // flt_neghalfmgxsqrmg
extern __m128 uX_ABI _uX_mm_const_neghalfmgxcubemg_ps(void); //         __m128f_ps(void); // flt_neghalfmgxcubemg
extern __m128 uX_ABI _uX_mm_const_sqrmg_ps(void); //                    __m128f_ps(void); // flt_sqrmg
extern __m128 uX_ABI _uX_mm_const_cubemg_ps(void); //               __m128f_ps(void); // flt_cubemg
extern __m128 uX_ABI _uX_mm_const_sqrtmg_ps(void); //               __m128f_ps(void); // flt_sqrtmg
extern __m128 uX_ABI _uX_mm_const_cbrtmg_ps(void); //               __m128f_ps(void); // flt_cbrtmg
extern __m128 uX_ABI _uX_mm_const_rcpmg_ps(void); //                    __m128f_ps(void); // flt_rcpmg
extern __m128 uX_ABI _uX_mm_const_rcpsqrmg_ps(void); //                 __m128f_ps(void); // flt_rcpsqrmg
extern __m128 uX_ABI _uX_mm_const_rcpcubemg_ps(void); //                __m128f_ps(void); // flt_rcpcubemg
extern __m128 uX_ABI _uX_mm_const_rcpsqrtmg_ps(void); //                __m128f_ps(void); // flt_rcpsqrtmg
extern __m128 uX_ABI _uX_mm_const_rcpcbrtmg_ps(void); //                __m128f_ps(void); // flt_rcpcbrtmg

extern __m128 uX_ABI _uX_mm_const_2mg_ps(void); //                  __m128f_ps(void); // flt_2mg
extern __m128 uX_ABI _uX_mm_const_neg2mg_ps(void); //               __m128f_ps(void); // flt_neg2mg
extern __m128 uX_ABI _uX_mm_const_sqr2mg_ps(void); //               __m128f_ps(void); // flt_sqr2mg
extern __m128 uX_ABI _uX_mm_const_cube2mg_ps(void); //              __m128f_ps(void); // flt_cube2mg
extern __m128 uX_ABI _uX_mm_const_sqrt2mg_ps(void); //              __m128f_ps(void); // flt_sqrt2mg
extern __m128 uX_ABI _uX_mm_const_cbrt2mg_ps(void); //              __m128f_ps(void); // flt_cbrt2mg
extern __m128 uX_ABI _uX_mm_const_4mg_ps(void); //                  __m128f_ps(void); // flt_4mg
extern __m128 uX_ABI _uX_mm_const_neg4mg_ps(void); //               __m128f_ps(void); // flt_neg4mg
extern __m128 uX_ABI _uX_mm_const_sqr4mg_ps(void); //               __m128f_ps(void); // flt_sqr4mg
extern __m128 uX_ABI _uX_mm_const_cube4mg_ps(void); //              __m128f_ps(void); // flt_cube4mg
extern __m128 uX_ABI _uX_mm_const_sqrt4mg_ps(void); //              __m128f_ps(void); // flt_sqrt4mg
extern __m128 uX_ABI _uX_mm_const_cbrt4mg_ps(void); //              __m128f_ps(void); // flt_cbrt4mg
extern __m128 uX_ABI _uX_mm_const_rcp2mg_ps(void); //               __m128f_ps(void); // flt_rcp2mg
extern __m128 uX_ABI _uX_mm_const_rcp4mg_ps(void); //               __m128f_ps(void); // flt_rcp4mg

extern __m128 uX_ABI _uX_mm_const_e_ps(void); //                        __m128f_ps(void); // flt_e
extern __m128 uX_ABI _uX_mm_const_exp_ps(void); //                  __m128f_ps(void); // flt_exp
extern __m128 uX_ABI _uX_mm_const_loge_ps(void); //                     __m128f_ps(void); // flt_loge
extern __m128 uX_ABI _uX_mm_const_logehigh_ps(void); //                 __m128f_ps(void); // flt_logehigh
extern __m128 uX_ABI _uX_mm_const_log2e_ps(void); //                    __m128f_ps(void); // flt_log2e
extern __m128 uX_ABI _uX_mm_const_log2ehigh_ps(void); //                __m128f_ps(void); // flt_log2ehigh
extern __m128 uX_ABI _uX_mm_const_log10e_ps(void); //               __m128f_ps(void); // flt_log10e
extern __m128 uX_ABI _uX_mm_const_rcplog2e_ps(void); //                 __m128f_ps(void); // flt_rcplog2e
extern __m128 uX_ABI _uX_mm_const_rcplog10e_ps(void); //                __m128f_ps(void); // flt_rcplog10e
extern __m128 uX_ABI _uX_mm_const_log2t_ps(void); //                    __m128f_ps(void); // flt_log2t
extern __m128 uX_ABI _uX_mm_const_log2_ps(void); //                     __m128f_ps(void); // flt_log2
extern __m128 uX_ABI _uX_mm_const_log2high_ps(void); //                 __m128f_ps(void); // flt_log2high
extern __m128 uX_ABI _uX_mm_const_ln2_ps(void); //                  __m128f_ps(void); // flt_ln2
extern __m128 uX_ABI _uX_mm_const_ln2high_ps(void); //              __m128f_ps(void); // flt_ln2high
extern __m128 uX_ABI _uX_mm_const_1divln2_ps(void); //              __m128f_ps(void); // flt_1divln2
extern __m128 uX_ABI _uX_mm_const_2divln2_ps(void); //              __m128f_ps(void); // flt_2divln2
extern __m128 uX_ABI _uX_mm_const_lnt_ps(void); //                  __m128f_ps(void); // flt_lnt
extern __m128 uX_ABI _uX_mm_const_lnthigh_ps(void); //              __m128f_ps(void); // flt_lnthigh
extern __m128 uX_ABI _uX_mm_const_ln10_ps(void); //                     __m128f_ps(void); // flt_ln10
extern __m128 uX_ABI _uX_mm_const_sqrt2_ps(void); //                    __m128f_ps(void); // flt_sqrt2
extern __m128 uX_ABI _uX_mm_const_rcpsqrt2_ps(void); //                 __m128f_ps(void); // flt_rcpsqrt2
extern __m128 uX_ABI _uX_mm_const_sqrt2div2_ps(void); //                __m128f_ps(void); // flt_sqrt2div2
extern __m128 uX_ABI _uX_mm_const_sqrt2div2high_ps(void); //            __m128f_ps(void); // flt_sqrt2div2high
extern __m128 uX_ABI _uX_mm_const_sqrt2div2low_ps(void); //             __m128f_ps(void); // flt_sqrt2div2low
extern __m128 uX_ABI _uX_mm_const_sqrthalf_ps(void); //                 __m128f_ps(void); // flt_sqrthalf
extern __m128 uX_ABI _uX_mm_const_sqrthalfhigh_ps(void); //             __m128f_ps(void); // flt_sqrthalfhigh
extern __m128 uX_ABI _uX_mm_const_sqrthalflow_ps(void); //          __m128f_ps(void); // flt_sqrthalflow
extern __m128 uX_ABI _uX_mm_const_pow2_ps(void); //                     __m128f_ps(void); // flt_pow2
extern __m128 uX_ABI _uX_mm_const_rcppow2_ps(void); //              __m128f_ps(void); // flt_rcppow2
extern __m128 uX_ABI _uX_mm_const_cbrt2_ps(void); //                    __m128f_ps(void); // flt_cbrt2
extern __m128 uX_ABI _uX_mm_const_rcpcbrt2_ps(void); //                 __m128f_ps(void); // flt_rcpcbrt2
extern __m128 uX_ABI _uX_mm_const_1div3_ps(void); //                    __m128f_ps(void); // flt_1div3
extern __m128 uX_ABI _uX_mm_const_1div7_ps(void); //                    __m128f_ps(void); // flt_1div7
extern __m128 uX_ABI _uX_mm_const_1div9_ps(void); //                    __m128f_ps(void); // flt_1div9
extern __m128 uX_ABI _uX_mm_const_2div3_ps(void); //                    __m128f_ps(void); // flt_2div3
extern __m128 uX_ABI _uX_mm_const_2div7_ps(void); //                    __m128f_ps(void); // flt_2div7
extern __m128 uX_ABI _uX_mm_const_2div9_ps(void); //                    __m128f_ps(void); // flt_2div9
extern __m128 uX_ABI _uX_mm_const_4div3_ps(void); //                    __m128f_ps(void); // flt_4div3
extern __m128 uX_ABI _uX_mm_const_4div7_ps(void); //                    __m128f_ps(void); // flt_4div7
extern __m128 uX_ABI _uX_mm_const_4div9_ps(void); //                    __m128f_ps(void); // flt_4div9

extern __m128 uX_ABI _uX_mm_const_pi_ps(void); //                   __m128f_ps(void); // flt_pi
extern __m128 uX_ABI _uX_mm_const_pihigh_ps(void); //               __m128f_ps(void); // flt_pihigh
extern __m128 uX_ABI _uX_mm_const_halfpi_ps(void); //               __m128f_ps(void); // flt_halfpi
extern __m128 uX_ABI _uX_mm_const_2pi_ps(void); //                  __m128f_ps(void); // flt_2pi
extern __m128 uX_ABI _uX_mm_const_negpi_ps(void); //                    __m128f_ps(void); // flt_negpi
extern __m128 uX_ABI _uX_mm_const_neghalfpi_ps(void); //                __m128f_ps(void); // flt_neghalfpi
extern __m128 uX_ABI _uX_mm_const_neg2pi_ps(void); //               __m128f_ps(void); // flt_neg2pi
extern __m128 uX_ABI _uX_mm_const_rcppi_ps(void); //                    __m128f_ps(void); // flt_rcppi
extern __m128 uX_ABI _uX_mm_const_invpi_ps(void); //                    __m128f_ps(void); // flt_invpi
extern __m128 uX_ABI _uX_mm_const_rcp2pi_ps(void); //               __m128f_ps(void); // flt_rcp2pi
extern __m128 uX_ABI _uX_mm_const_inv2pi_ps(void); //               __m128f_ps(void); // flt_inv2pi
extern __m128 uX_ABI _uX_mm_const_pidiv2_ps(void); //               __m128f_ps(void); // flt_pidiv2
extern __m128 uX_ABI _uX_mm_const_pidiv2high_ps(void); //           __m128f_ps(void); // flt_pidiv2high
extern __m128 uX_ABI _uX_mm_const_pidiv4_ps(void); //               __m128f_ps(void); // flt_pidiv4
extern __m128 uX_ABI _uX_mm_const_pidiv4high_ps(void); //           __m128f_ps(void); // flt_pidiv4high
extern __m128 uX_ABI _uX_mm_const_pix3div4_ps(void); //                 __m128f_ps(void); // flt_pix3div4
extern __m128 uX_ABI _uX_mm_const_sqrtpi_ps(void); //               __m128f_ps(void); // flt_sqrtpi
extern __m128 uX_ABI _uX_mm_const_sqrt2pi_ps(void); //              __m128f_ps(void); // flt_sqrt2pi
extern __m128 uX_ABI _uX_mm_const_sqrt2pihigh_ps(void); //          __m128f_ps(void); // flt_sqrt2pihigh
extern __m128 uX_ABI _uX_mm_const_rcpsqrtpi_ps(void); //                __m128f_ps(void); // flt_rcpsqrtpi
extern __m128 uX_ABI _uX_mm_const_rcpsqrt2pi_ps(void); //           __m128f_ps(void); // flt_rcpsqrt2pi
extern __m128 uX_ABI _uX_mm_const_sqrtpidiv2_ps(void); //           __m128f_ps(void); // flt_sqrtpidiv2
extern __m128 uX_ABI _uX_mm_const_sqrtpidiv2high_ps(void); //       __m128f_ps(void); // flt_sqrtpidiv2high
extern __m128 uX_ABI _uX_mm_const_sqrt2pidiv2_ps(void); //          __m128f_ps(void); // flt_sqrt2pidiv2
extern __m128 uX_ABI _uX_mm_const_sqrt2pidiv2high_ps(void); //      __m128f_ps(void); // flt_sqrt2pidiv2high
extern __m128 uX_ABI _uX_mm_const_2divpi_ps(void); //               __m128f_ps(void); // flt_2divpi
extern __m128 uX_ABI _uX_mm_const_2div2pi_ps(void); //              __m128f_ps(void); // flt_2div2pi
extern __m128 uX_ABI _uX_mm_const_2divsqrtpi_ps(void); //           __m128f_ps(void); // flt_2divsqrtpi
extern __m128 uX_ABI _uX_mm_const_2divsqrt2pi_ps(void); //          __m128f_ps(void); // flt_2divsqrt2pi
extern __m128 uX_ABI _uX_mm_const_sqrt2divpi_ps(void); //           __m128f_ps(void); // flt_sqrt2divpi
extern __m128 uX_ABI _uX_mm_const_logpi_ps(void); //                    __m128f_ps(void); // flt_logpi
extern __m128 uX_ABI _uX_mm_const_log2pi_ps(void); //               __m128f_ps(void); // flt_log2pi
extern __m128 uX_ABI _uX_mm_const_lnpi_ps(void); //                     __m128f_ps(void); // flt_lnpi
extern __m128 uX_ABI _uX_mm_const_ln2pi_ps(void); //                    __m128f_ps(void); // flt_ln2pi
extern __m128 uX_ABI _uX_mm_const_powpi_ps(void); //                    __m128f_ps(void); // flt_powpi
extern __m128 uX_ABI _uX_mm_const_rcppowpi_ps(void); //                 __m128f_ps(void); // flt_rcppowpi
extern __m128 uX_ABI _uX_mm_const_pow2pi_ps(void); //               __m128f_ps(void); // flt_pow2pi
extern __m128 uX_ABI _uX_mm_const_rcppow2pi_ps(void); //                __m128f_ps(void); // flt_rcppow2pi
extern __m128 uX_ABI _uX_mm_const_cbrtpi_ps(void); //               __m128f_ps(void); // flt_cbrtpi
extern __m128 uX_ABI _uX_mm_const_rcpcbrtpi_ps(void); //                __m128f_ps(void); // flt_rcpcbrtpi
extern __m128 uX_ABI _uX_mm_const_cbrt2pi_ps(void); //              __m128f_ps(void); // flt_cbrt2pi
extern __m128 uX_ABI _uX_mm_const_rcpcbrt2pi_ps(void); //           __m128f_ps(void); // flt_rcpcbrt2pi

extern __m128 uX_ABI _uX_mm_const_pow2tom126_ps(void); //           __m128f_ps(void); // flt_pow2tom126
extern __m128 uX_ABI _uX_mm_const_pow2to126_ps(void); //                __m128f_ps(void); // flt_pow2to126
extern __m128 uX_ABI _uX_mm_const_normhuge_ps(void); //                 __m128f_ps(void); // flt_normhuge
extern __m128 uX_ABI _uX_mm_const_pow2to23_ps(void); //                 __m128f_ps(void); // flt_pow2to23
extern __m128 uX_ABI _uX_mm_const_pow2to24_ps(void); //                 __m128f_ps(void); // flt_pow2to24
extern __m128 uX_ABI _uX_mm_const_maxi32pow2to23_ps(void); //       __m128f_ps(void); // flt_maxi32pow2to23
extern __m128 uX_ABI _uX_mm_const_pow2to31_ps(void); //                 __m128f_ps(void); // flt_pow2to31
extern __m128 uX_ABI _uX_mm_const_pow2to32_ps(void); //                 __m128f_ps(void); // flt_pow2to32

extern __m128 uX_ABI _uX_mm_const_remquobits_ps(void); //           __m128i_ps(void); // flt_remquobits
extern __m128 uX_ABI _uX_mm_const_remquomask_ps(void); //           __m128i_ps(void); // flt_remquomask

extern __m128 uX_ABI _uX_mm_const_trigploss_ps(void); //                __m128f_ps(void); // flt_trigploss

extern __m128 uX_ABI _uX_mm_const_degtorad_ps(void); //                 __m128f_ps(void); // flt_degtorad
extern __m128 uX_ABI _uX_mm_const_radtodeg_ps(void); //                 __m128f_ps(void); // flt_radtodeg

extern __m128 uX_ABI _uX_mm_const_degtograd_ps(void); //                __m128f_ps(void); // flt_degtograd
extern __m128 uX_ABI _uX_mm_const_gradtodeg_ps(void); //                __m128f_ps(void); // flt_gradtodeg

extern __m128 uX_ABI _uX_mm_const_radtograd_ps(void); //                __m128f_ps(void); // flt_radtograd
extern __m128 uX_ABI _uX_mm_const_gradtorad_ps(void); //                __m128f_ps(void); // flt_gradtorad

extern __m128 uX_ABI _uX_mm_const_sungravity_ps(void); //           __m128f_ps(void); // flt_sungravity
extern __m128 uX_ABI _uX_mm_const_jupitergravity_ps(void); //       __m128f_ps(void); // flt_jupitergravity
extern __m128 uX_ABI _uX_mm_const_neptunegravity_ps(void); //       __m128f_ps(void); // flt_neptunegravity
extern __m128 uX_ABI _uX_mm_const_saturngravity_ps(void); //            __m128f_ps(void); // flt_saturngravity
extern __m128 uX_ABI _uX_mm_const_uranusgravity_ps(void); //            __m128f_ps(void); // flt_uranusgravity
extern __m128 uX_ABI _uX_mm_const_earthgravity_ps(void); //             __m128f_ps(void); // flt_earthgravity
extern __m128 uX_ABI _uX_mm_const_venusgravity_ps(void); //             __m128f_ps(void); // flt_venusgravity
extern __m128 uX_ABI _uX_mm_const_marsgravity_ps(void); //          __m128f_ps(void); // flt_marsgravity
extern __m128 uX_ABI _uX_mm_const_mercurygravity_ps(void); //       __m128f_ps(void); // flt_mercurygravity
extern __m128 uX_ABI _uX_mm_const_moongravity_ps(void); //          __m128f_ps(void); // flt_moongravity
extern __m128 uX_ABI _uX_mm_const_plutogravity_ps(void); //             __m128f_ps(void); // flt_plutogravity

extern __m128 uX_ABI _uX_mm_const_kmtoinch_ps(void); //                 __m128f_ps(void); // flt_kmtoinch
extern __m128 uX_ABI _uX_mm_const_kmtofeet_ps(void); //                 __m128f_ps(void); // flt_kmtofeet 
extern __m128 uX_ABI _uX_mm_const_kmtoyards_ps(void); //                __m128f_ps(void); // flt_kmtoyards
extern __m128 uX_ABI _uX_mm_const_kmtomiles_ps(void); //                __m128f_ps(void); // flt_kmtomiles

extern __m128 uX_ABI _uX_mm_const_metoinch_ps(void); //                 __m128f_ps(void); // flt_metoinch
extern __m128 uX_ABI _uX_mm_const_metofeet_ps(void); //                 __m128f_ps(void); // flt_metofeet
extern __m128 uX_ABI _uX_mm_const_metoyards_ps(void); //                __m128f_ps(void); // flt_metoyards
extern __m128 uX_ABI _uX_mm_const_metomiles_ps(void); //                __m128f_ps(void); // flt_metomiles

extern __m128 uX_ABI _uX_mm_const_cmtoinch_ps(void); //                 __m128f_ps(void); // flt_cmtoinch
extern __m128 uX_ABI _uX_mm_const_cmtofeet_ps(void); //                 __m128f_ps(void); // flt_cmtofeet
extern __m128 uX_ABI _uX_mm_const_cmtoyards_ps(void); //                __m128f_ps(void); // flt_cmtoyards
extern __m128 uX_ABI _uX_mm_const_cmtomiles_ps(void); //                __m128f_ps(void); // flt_cmtomiles

extern __m128 uX_ABI _uX_mm_const_milltoinch_ps(void); //           __m128f_ps(void); // flt_milltoinch
extern __m128 uX_ABI _uX_mm_const_milltofeet_ps(void); //           __m128f_ps(void); // flt_milltofeet
extern __m128 uX_ABI _uX_mm_const_milltoyards_ps(void); //          __m128f_ps(void); // flt_milltoyards
extern __m128 uX_ABI _uX_mm_const_milltomiles_ps(void); //          __m128f_ps(void); // flt_milltomiles

extern __m128 uX_ABI _uX_mm_const_inchtomill_ps(void); //           __m128f_ps(void); // flt_inchtomill
extern __m128 uX_ABI _uX_mm_const_inchtocm_ps(void); //                 __m128f_ps(void); // flt_inchtocm
extern __m128 uX_ABI _uX_mm_const_inchtome_ps(void); //                 __m128f_ps(void); // flt_inchtome
extern __m128 uX_ABI _uX_mm_const_inchtokm_ps(void); //                 __m128f_ps(void); // flt_inchtokm
extern __m128 uX_ABI _uX_mm_const_inchtofeet_ps(void); //           __m128f_ps(void); // flt_inchtofeet
extern __m128 uX_ABI _uX_mm_const_inchtoyards_ps(void); //          __m128f_ps(void); // flt_inchtoyards
extern __m128 uX_ABI _uX_mm_const_inchtomiles_ps(void); //          __m128f_ps(void); // flt_inchtomiles

extern __m128 uX_ABI _uX_mm_const_feettomill_ps(void); //           __m128f_ps(void); // flt_feettomill
extern __m128 uX_ABI _uX_mm_const_feettocm_ps(void); //                 __m128f_ps(void); // flt_feettocm
extern __m128 uX_ABI _uX_mm_const_feettome_ps(void); //                 __m128f_ps(void); // flt_feettome
extern __m128 uX_ABI _uX_mm_const_feettokm_ps(void); //                 __m128f_ps(void); // flt_feettokm
extern __m128 uX_ABI _uX_mm_const_feettoinch_ps(void); //           __m128f_ps(void); // flt_feettoinch
extern __m128 uX_ABI _uX_mm_const_feettoyards_ps(void); //          __m128f_ps(void); // flt_feettoyards
extern __m128 uX_ABI _uX_mm_const_feettomiles_ps(void); //          __m128f_ps(void); // flt_feettomiles

extern __m128 uX_ABI _uX_mm_const_yardstomill_ps(void); //          __m128f_ps(void); // flt_yardstomill
extern __m128 uX_ABI _uX_mm_const_yardstocm_ps(void); //                __m128f_ps(void); // flt_yardstocm
extern __m128 uX_ABI _uX_mm_const_yardstome_ps(void); //                __m128f_ps(void); // flt_yardstome
extern __m128 uX_ABI _uX_mm_const_yardstokm_ps(void); //                __m128f_ps(void); // flt_yardstokm
extern __m128 uX_ABI _uX_mm_const_yardstoinch_ps(void); //          __m128f_ps(void); // flt_yardstoinch
extern __m128 uX_ABI _uX_mm_const_yardstofeet_ps(void); //          __m128f_ps(void); // flt_yardstofeet
extern __m128 uX_ABI _uX_mm_const_yardstomiles_ps(void); //             __m128f_ps(void); // flt_yardstomiles

extern __m128 uX_ABI _uX_mm_const_milestomill_ps(void); //          __m128f_ps(void); // flt_milestomill
extern __m128 uX_ABI _uX_mm_const_milestocm_ps(void); //                __m128f_ps(void); // flt_milestocm
extern __m128 uX_ABI _uX_mm_const_milestome_ps(void); //                __m128f_ps(void); // flt_milestome
extern __m128 uX_ABI _uX_mm_const_milestoinch_ps(void); //          __m128f_ps(void); // flt_milestokm
extern __m128 uX_ABI _uX_mm_const_milestoinch_ps(void); //          __m128f_ps(void); // flt_milestoinch
extern __m128 uX_ABI _uX_mm_const_milestofeet_ps(void); //          __m128f_ps(void); // flt_milestofeet
extern __m128 uX_ABI _uX_mm_const_milestoyards_ps(void); //             __m128f_ps(void); // flt_milestoyards

extern __m128 uX_ABI _uX_mm_const_kmphtomeps_ps(void); //           __m128f_ps(void); // flt_kmphtomeps
extern __m128 uX_ABI _uX_mm_const_kmphtokmps_ps(void); //           __m128f_ps(void); // flt_kmphtokmps
extern __m128 uX_ABI _uX_mm_const_kmphtomepm_ps(void); //           __m128f_ps(void); // flt_kmphtomepm
extern __m128 uX_ABI _uX_mm_const_kmphtomilesph_ps(void); //            __m128f_ps(void); // flt_kmphtomilesph
extern __m128 uX_ABI _uX_mm_const_kmphtomilesps_ps(void); //            __m128f_ps(void); // flt_kmphtomilesps
extern __m128 uX_ABI _uX_mm_const_kmphtofeetps_ps(void); //             __m128f_ps(void); // flt_kmphtofeetps
extern __m128 uX_ABI _uX_mm_const_kmphtofeetpm_ps(void); //             __m128f_ps(void); // flt_kmphtofeetpm

extern __m128 uX_ABI _uX_mm_const_kmpstomeps_ps(void); //           __m128f_ps(void); // flt_kmpstomeps
extern __m128 uX_ABI _uX_mm_const_kmpstokmph_ps(void); //           __m128f_ps(void); // flt_kmpstokmph
extern __m128 uX_ABI _uX_mm_const_kmpstomepm_ps(void); //           __m128f_ps(void); // flt_kmpstomepm
extern __m128 uX_ABI _uX_mm_const_kmpstomilesph_ps(void); //            __m128f_ps(void); // flt_kmpstomilesph
extern __m128 uX_ABI _uX_mm_const_kmpstomilesps_ps(void); //            __m128f_ps(void); // flt_kmpstomilesps
extern __m128 uX_ABI _uX_mm_const_kmpstofeetps_ps(void); //             __m128f_ps(void); // flt_kmpstofeetps
extern __m128 uX_ABI _uX_mm_const_kmpstofeetpm_ps(void); //             __m128f_ps(void); // flt_kmpstofeetpm

extern __m128 uX_ABI _uX_mm_const_mepstokmph_ps(void); //           __m128f_ps(void); // flt_mepstokmph
extern __m128 uX_ABI _uX_mm_const_mepstokmps_ps(void); //           __m128f_ps(void); // flt_mepstokmps
extern __m128 uX_ABI _uX_mm_const_mepstomepm_ps(void); //           __m128f_ps(void); // flt_mepstomepm
extern __m128 uX_ABI _uX_mm_const_mepstomilesph_ps(void); //            __m128f_ps(void); // flt_mepstomilesph
extern __m128 uX_ABI _uX_mm_const_mepstomilesps_ps(void); //            __m128f_ps(void); // flt_mepstomilesps
extern __m128 uX_ABI _uX_mm_const_mepstofeetps_ps(void); //             __m128f_ps(void); // flt_mepstofeetps
extern __m128 uX_ABI _uX_mm_const_mepstofeetpm_ps(void); //             __m128f_ps(void); // flt_mepstofeetpm

extern __m128 uX_ABI _uX_mm_const_mepmtokmph_ps(void); //           __m128f_ps(void); // flt_mepmtokmph
extern __m128 uX_ABI _uX_mm_const_mepmtokmps_ps(void); //           __m128f_ps(void); // flt_mepmtokmps
extern __m128 uX_ABI _uX_mm_const_mepmtomeps_ps(void); //           __m128f_ps(void); // flt_mepmtomeps
extern __m128 uX_ABI _uX_mm_const_mepmtomilesph_ps(void); //            __m128f_ps(void); // flt_mepmtomilesph
extern __m128 uX_ABI _uX_mm_const_mepmtomilesps_ps(void); //            __m128f_ps(void); // flt_mepmtomilesps
extern __m128 uX_ABI _uX_mm_const_mepmtofeetps_ps(void); //             __m128f_ps(void); // flt_mepmtofeetps
extern __m128 uX_ABI _uX_mm_const_mepmtofeetpm_ps(void); //             __m128f_ps(void); // flt_mepmtofeetpm

extern __m128 uX_ABI _uX_mm_const_milesphtokmph_ps(void); //            __m128f_ps(void); // flt_milesphtokmph
extern __m128 uX_ABI _uX_mm_const_milesphtokmps_ps(void); //            __m128f_ps(void); // flt_milesphtokmps
extern __m128 uX_ABI _uX_mm_const_milesphtomeps_ps(void); //            __m128f_ps(void); // flt_milesphtomeps
extern __m128 uX_ABI _uX_mm_const_milesphtomepm_ps(void); //            __m128f_ps(void); // flt_milesphtomepm
extern __m128 uX_ABI _uX_mm_const_milesphtomilesps_ps(void); //     __m128f_ps(void); // flt_milesphtomilesps
extern __m128 uX_ABI _uX_mm_const_milesphtofeetps_ps(void); //      __m128f_ps(void); // flt_milesphtofeetps
extern __m128 uX_ABI _uX_mm_const_milesphtofeetpm_ps(void); //      __m128f_ps(void); // flt_milesphtofeetpm

extern __m128 uX_ABI _uX_mm_const_milespstokmph_ps(void); //            __m128f_ps(void); // flt_milespstokmph
extern __m128 uX_ABI _uX_mm_const_milespstokmps_ps(void); //            __m128f_ps(void); // flt_milespstokmps
extern __m128 uX_ABI _uX_mm_const_milespstomeps_ps(void); //            __m128f_ps(void); // flt_milespstomeps
extern __m128 uX_ABI _uX_mm_const_milespstomepm_ps(void); //            __m128f_ps(void); // flt_milespstomepm
extern __m128 uX_ABI _uX_mm_const_milespstomilespm_ps(void); //     __m128f_ps(void); // flt_milespstomilespm
extern __m128 uX_ABI _uX_mm_const_milespstofeetps_ps(void); //      __m128f_ps(void); // flt_milespstofeetps
extern __m128 uX_ABI _uX_mm_const_milespstofeetpm_ps(void); //      __m128f_ps(void); // flt_milespstofeetpm

extern __m128 uX_ABI _uX_mm_const_feetpstokmph_ps(void); //             __m128f_ps(void); // flt_feetpstokmph
extern __m128 uX_ABI _uX_mm_const_feetpstokmps_ps(void); //             __m128f_ps(void); // flt_feetpstokmps
extern __m128 uX_ABI _uX_mm_const_feetpstomeps_ps(void); //             __m128f_ps(void); // flt_feetpstomeps
extern __m128 uX_ABI _uX_mm_const_feetpstomepm_ps(void); //             __m128f_ps(void); // flt_feetpstomepm
extern __m128 uX_ABI _uX_mm_const_feetpstomilesph_ps(void); //      __m128f_ps(void); // flt_feetpstomilesph
extern __m128 uX_ABI _uX_mm_const_feetpstomilesps_ps(void); //      __m128f_ps(void); // flt_feetpstomilesps
extern __m128 uX_ABI _uX_mm_const_feetpstofeetpm_ps(void); //       __m128f_ps(void); // flt_feetpstofeetpm

extern __m128 uX_ABI _uX_mm_const_feetpmtokmph_ps(void); //         __m128f_ps(void); // flt_feetpmtokmph
extern __m128 uX_ABI _uX_mm_const_feetpmtokmps_ps(void); //             __m128f_ps(void); // flt_feetpmtokmps
extern __m128 uX_ABI _uX_mm_const_feetpmtomeps_ps(void); //             __m128f_ps(void); // flt_feetpmtomeps
extern __m128 uX_ABI _uX_mm_const_feetpmtomepm_ps(void); //             __m128f_ps(void); // flt_feetpmtomepm
extern __m128 uX_ABI _uX_mm_const_feetpmtomilesph_ps(void); //      __m128f_ps(void); // flt_feetpmtomilesph
extern __m128 uX_ABI _uX_mm_const_feetpmtomilesps_ps(void); //      __m128f_ps(void); // flt_feetpmtomilesps
extern __m128 uX_ABI _uX_mm_const_feetpmtofeetps_ps(void); //       __m128f_ps(void); // flt_feetpmtofeetps

extern __m128 uX_ABI _uX_mm_const_soundspeedp50c_ps(void); //       __m128f_ps(void); // flt_soundspeedp50c
extern __m128 uX_ABI _uX_mm_const_soundspeedp45c_ps(void); //       __m128f_ps(void); // flt_soundspeedp45c
extern __m128 uX_ABI _uX_mm_const_soundspeedp40c_ps(void); //       __m128f_ps(void); // flt_soundspeedp40c
extern __m128 uX_ABI _uX_mm_const_soundspeedp35c_ps(void); //       __m128f_ps(void); // flt_soundspeedp35c
extern __m128 uX_ABI _uX_mm_const_soundspeedp30c_ps(void); //       __m128f_ps(void); // flt_soundspeedp30c
extern __m128 uX_ABI _uX_mm_const_soundspeedp25c_ps(void); //       __m128f_ps(void); // flt_soundspeedp25c
extern __m128 uX_ABI _uX_mm_const_soundspeedp20c_ps(void); //       __m128f_ps(void); // flt_soundspeedp20c
extern __m128 uX_ABI _uX_mm_const_soundspeedp15c_ps(void); //       __m128f_ps(void); // flt_soundspeedp15c
extern __m128 uX_ABI _uX_mm_const_soundspeedp10c_ps(void); //       __m128f_ps(void); // flt_soundspeedp10c
extern __m128 uX_ABI _uX_mm_const_soundspeedp5c_ps(void); //            __m128f_ps(void); // flt_soundspeedp5c
extern __m128 uX_ABI _uX_mm_const_soundspeed0c_ps(void); //             __m128f_ps(void); // flt_soundspeed0c
extern __m128 uX_ABI _uX_mm_const_soundspeedn5c_ps(void); //            __m128f_ps(void); // flt_soundspeedn5c
extern __m128 uX_ABI _uX_mm_const_soundspeedn10c_ps(void); //       __m128f_ps(void); // flt_soundspeedn10c
extern __m128 uX_ABI _uX_mm_const_soundspeedn15c_ps(void); //       __m128f_ps(void); // flt_soundspeedn15c
extern __m128 uX_ABI _uX_mm_const_soundspeedn20c_ps(void); //       __m128f_ps(void); // flt_soundspeedn20c
extern __m128 uX_ABI _uX_mm_const_soundspeedn25c_ps(void); //       __m128f_ps(void); // flt_soundspeedn25c
extern __m128 uX_ABI _uX_mm_const_soundspeedn30c_ps(void); //       __m128f_ps(void); // flt_soundspeedn30c
extern __m128 uX_ABI _uX_mm_const_soundspeedn35c_ps(void); //       __m128f_ps(void); // flt_soundspeedn35c
extern __m128 uX_ABI _uX_mm_const_soundspeedn40c_ps(void); //       __m128f_ps(void); // flt_soundspeedn40c
extern __m128 uX_ABI _uX_mm_const_soundspeedn45c_ps(void); //       __m128f_ps(void); // flt_soundspeedn45c
extern __m128 uX_ABI _uX_mm_const_soundspeedn50c_ps(void); //       __m128f_ps(void); // flt_soundspeedn50c

extern __m128 uX_ABI _uX_mm_const_schscale_ps(void); //                 __m128f_ps(void); // flt_schscale
extern __m128 uX_ABI _uX_mm_const_thscale_ps(void); //              __m128f_ps(void); // flt_thscale

extern __m128 uX_ABI _uX_mm_const_expest1_ps(void); //              __m128f_ps(void); // flt_expest1
extern __m128 uX_ABI _uX_mm_const_expest2_ps(void); //              __m128f_ps(void); // flt_expest2
extern __m128 uX_ABI _uX_mm_const_expest3_ps(void); //              __m128f_ps(void); // flt_expest3
extern __m128 uX_ABI _uX_mm_const_expest4_ps(void); //              __m128f_ps(void); // flt_expest4
extern __m128 uX_ABI _uX_mm_const_expest5_ps(void); //              __m128f_ps(void); // flt_expest5
extern __m128 uX_ABI _uX_mm_const_expest6_ps(void); //              __m128f_ps(void); // flt_expest6
extern __m128 uX_ABI _uX_mm_const_expest7_ps(void); //              __m128f_ps(void); // flt_expest7
extern __m128 uX_ABI _uX_mm_const_logest0_ps(void); //              __m128f_ps(void); // flt_logest0
extern __m128 uX_ABI _uX_mm_const_logest1_ps(void); //              __m128f_ps(void); // flt_logest1
extern __m128 uX_ABI _uX_mm_const_logest2_ps(void); //              __m128f_ps(void); // flt_logest2
extern __m128 uX_ABI _uX_mm_const_logest3_ps(void); //              __m128f_ps(void); // flt_logest3
extern __m128 uX_ABI _uX_mm_const_logest4_ps(void); //              __m128f_ps(void); // flt_logest4
extern __m128 uX_ABI _uX_mm_const_logest5_ps(void); //              __m128f_ps(void); // flt_logest5
extern __m128 uX_ABI _uX_mm_const_logest6_ps(void); //              __m128f_ps(void); // flt_logest6
extern __m128 uX_ABI _uX_mm_const_logest7_ps(void); //              __m128f_ps(void); // flt_logest7


	//;;DirectX Math constants;;

extern __m128 uX_ABI _uX_mm_const_sincoefficients0_ps(void); //                 __m128f_ps(void); // (-0.16666667)_ps(void); // (+0.0083333310)_ps(void); // (-0.00019840874)_ps(void); // (+2.7525562e-06)
extern __m128 uX_ABI _uX_mm_const_sincoefficients1_ps(void); //                 __m128f_ps(void); // (-2.3889859e-08)_ps(void); // (-0.16665852)_ps(void); // (+0.0083139502)_ps(void); // (-0.00018524670)
extern __m128 uX_ABI _uX_mm_const_coscoefficients0_ps(void); //                 __m128f_ps(void); // (-0.5)_ps(void); // (+0.041666638)_ps(void); // (-0.0013888378)_ps(void); // (+2.4760495e-05)
extern __m128 uX_ABI _uX_mm_const_coscoefficients1_ps(void); //                 __m128f_ps(void); // (-2.6051615e-07)_ps(void); // (-0.49992746)_ps(void); // (+0.041493919)_ps(void); // (-0.0012712436)
extern __m128 uX_ABI _uX_mm_const_tancoefficients0_ps(void); //                 __m128f_ps(void); // 1.0_ps(void); // 0.333333333_ps(void); // 0.133333333_ps(void); // (5.396825397e-2)
extern __m128 uX_ABI _uX_mm_const_tancoefficients1_ps(void); //                 __m128f_ps(void); // (2.186948854e-2)_ps(void); // (8.863235530e-3)_ps(void); // (3.592128167e-3)_ps(void); // (1.455834485e-3)
extern __m128 uX_ABI _uX_mm_const_tancoefficients2_ps(void); //                 __m128f_ps(void); // (5.900274264e-4)_ps(void); // (2.391290764e-4)_ps(void); // (9.691537707e-5)_ps(void); // (3.927832950e-5)
extern __m128 uX_ABI _uX_mm_const_arccoefficients0_ps(void); //                 __m128f_ps(void); // (+1.5707963050)_ps(void); // (-0.2145988016)_ps(void); // (+0.0889789874)_ps(void); // (-0.0501743046)
extern __m128 uX_ABI _uX_mm_const_arccoefficients1_ps(void); //                 __m128f_ps(void); // (+0.0308918810)_ps(void); // (-0.0170881256)_ps(void); // (+0.0066700901)_ps(void); // (-0.0012624911)
extern __m128 uX_ABI _uX_mm_const_atancoefficients0_ps(void); //                __m128f_ps(void); // (-0.3333314528)_ps(void); // (+0.1999355085)_ps(void); // (-0.1420889944)_ps(void); // (+0.1065626393)
extern __m128 uX_ABI _uX_mm_const_atancoefficients1_ps(void); //                __m128f_ps(void); // (-0.0752896400)_ps(void); // (+0.0429096138)_ps(void); // (-0.0161657367)_ps(void); // (+0.0028662257)
extern __m128 uX_ABI _uX_mm_const_atanestcoefficients0_ps(void); //             __m128f_ps(void); // (+0.999866)_ps(void); // (+0.999866)_ps(void); // (+0.999866)_ps(void); // (+0.999866)
extern __m128 uX_ABI _uX_mm_const_atanestcoefficients1_ps(void); //             __m128f_ps(void); // (-0.3302995)_ps(void); // (+0.180141)_ps(void); // (-0.085133)_ps(void); // (+0.0208351)
extern __m128 uX_ABI _uX_mm_const_tanestcoefficients_ps(void); //           __m128f_ps(void); // 2.484_ps(void); // (-1.954923183e-1)_ps(void); // 2.467401101_ps(void); // flt_rcppi
extern __m128 uX_ABI _uX_mm_const_arcestcoefficients_ps(void); //           __m128f_ps(void); // (+1.5707288)_ps(void); // (-0.2121144)_ps(void); // (+0.0742610)_ps(void); // (-0.0187293)
extern __m128 uX_ABI _uX_mm_const_piconstants0_ps(void); //                     __m128f_ps(void); // flt_pi_ps(void); // flt_2pi_ps(void); // flt_rcppi_ps(void); // flt_rcp2pi
extern __m128 uX_ABI _uX_mm_const_identityr0_ps(void); //                   __m128f_ps(void); // flt_1_ps(void); // flt_0_ps(void); // flt_0_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_identityr1_ps(void); //                   __m128f_ps(void); // flt_0_ps(void); // flt_1_ps(void); // flt_0_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_identityr2_ps(void); //                   __m128f_ps(void); // flt_0_ps(void); // flt_0_ps(void); // flt_1_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_identityr3_ps(void); //                   __m128f_ps(void); // flt_0_ps(void); // flt_0_ps(void); // flt_0_ps(void); // flt_1
extern __m128 uX_ABI _uX_mm_const_negidentityr0_ps(void); //                    __m128f_ps(void); // flt_neg1_ps(void); // flt_0_ps(void); // flt_0_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_negidentityr1_ps(void); //                    __m128f_ps(void); // flt_0_ps(void); // flt_neg1_ps(void); // flt_0_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_negidentityr2_ps(void); //                    __m128f_ps(void); // flt_0_ps(void); // flt_0_ps(void); // flt_neg1_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_negidentityr3_ps(void); //                    __m128f_ps(void); // flt_0_ps(void); // flt_0_ps(void); // flt_0_ps(void); // flt_neg1
extern __m128 uX_ABI _uX_mm_const_negativezero_ps(void); //                     __m128i_ps(void); // flt_neg0_msk_ps(void); // flt_neg0_msk_ps(void); // flt_neg0_msk_ps(void); // flt_neg0_msk
extern __m128 uX_ABI _uX_mm_const_negate3_ps(void); //                      __m128i_ps(void); // flt_neg0_msk_ps(void); // flt_neg0_msk_ps(void); // flt_neg0_msk_ps(void); // flt_false_msk
extern __m128 uX_ABI _uX_mm_const_maskxy_ps(void); //                       __m128i_ps(void); // flt_true_msk_ps(void); // flt_true_msk_ps(void); // flt_false_msk_ps(void); // flt_false_msk
extern __m128 uX_ABI _uX_mm_const_maskxyz_ps(void); //                      __m128i_ps(void); // flt_true_msk_ps(void); // flt_true_msk_ps(void); // flt_true_msk_ps(void); // flt_false_msk
extern __m128 uX_ABI _uX_mm_const_maskxyzw_ps(void); //                         __m128i_ps(void); // flt_true_msk_ps(void); // flt_true_msk_ps(void); // flt_true_msk_ps(void); // flt_true_msk
extern __m128 uX_ABI _uX_mm_const_mask3_ps(void); //                            __m128i_ps(void); // flt_true_msk_ps(void); // flt_true_msk_ps(void); // flt_true_msk_ps(void); // flt_false_msk
extern __m128 uX_ABI _uX_mm_const_maskx_ps(void); //                            __m128i_ps(void); // flt_true_msk_ps(void); // flt_false_msk_ps(void); // flt_false_msk_ps(void); // flt_false_msk
extern __m128 uX_ABI _uX_mm_const_masky_ps(void); //                            __m128i_ps(void); // flt_false_msk_ps(void); // flt_true_msk_ps(void); // flt_false_msk_ps(void); // flt_false_msk
extern __m128 uX_ABI _uX_mm_const_maskz_ps(void); //                            __m128i_ps(void); // flt_false_msk_ps(void); // flt_false_msk_ps(void); // flt_true_msk_ps(void); // flt_false_msk
extern __m128 uX_ABI _uX_mm_const_maskw_ps(void); //                            __m128i_ps(void); // flt_false_msk_ps(void); // flt_false_msk_ps(void); // flt_false_msk_ps(void); // flt_true_msk
extern __m128 uX_ABI _uX_mm_const_one_ps(void); //                          __m128f_ps(void); // flt_1_ps(void); // flt_1_ps(void); // flt_1_ps(void); // flt_1
extern __m128 uX_ABI _uX_mm_const_one3_ps(void); //                             __m128f_ps(void); // flt_1_ps(void); // flt_1_ps(void); // flt_1_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_zero_ps(void); //                             __m128f_ps(void); // flt_0_ps(void); // flt_0_ps(void); // flt_0_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_two_ps(void); //                          __m128f_ps(void); // flt_2_ps(void); // flt_2_ps(void); // flt_2_ps(void); // flt_2
extern __m128 uX_ABI _uX_mm_const_four_ps(void); //                             __m128f_ps(void); // flt_4_ps(void); // flt_4_ps(void); // flt_4_ps(void); // flt_4
extern __m128 uX_ABI _uX_mm_const_six_ps(void); //                          __m128f_ps(void); // flt_6_ps(void); // flt_6_ps(void); // flt_6_ps(void); // flt_6
extern __m128 uX_ABI _uX_mm_const_negativeone_ps(void); //                  __m128f_ps(void); // flt_neg1_ps(void); // flt_neg1_ps(void); // flt_neg1_ps(void); // flt_neg1
extern __m128 uX_ABI _uX_mm_const_onehalf_ps(void); //                      __m128f_ps(void); // flt_0d5_ps(void); // flt_0d5_ps(void); // flt_0d5_ps(void); // flt_0d5
extern __m128 uX_ABI _uX_mm_const_negativeonehalf_ps(void); //              __m128f_ps(void); // flt_neg0d5_ps(void); // flt_neg0d5_ps(void); // flt_neg0d5_ps(void); // flt_neg0d5
extern __m128 uX_ABI _uX_mm_const_negativetwopi_ps(void); //                    __m128f_ps(void); // flt_neg2pi_ps(void); // flt_neg2pi_ps(void); // flt_neg2pi_ps(void); // flt_neg2pi
extern __m128 uX_ABI _uX_mm_const_negativepi_ps(void); //                   __m128f_ps(void); // flt_negpi_ps(void); // flt_negpi_ps(void); // flt_negpi_ps(void); // flt_negpi
extern __m128 uX_ABI _uX_mm_const_reciprocalpi_ps(void); //                     __m128f_ps(void); // flt_rcppi_ps(void); // flt_rcppi_ps(void); // flt_rcppi_ps(void); // flt_rcppi
extern __m128 uX_ABI _uX_mm_const_twopi_ps(void); //                            __m128f_ps(void); // flt_2pi_ps(void); // flt_2pi_ps(void); // flt_2pi_ps(void); // flt_2pi
extern __m128 uX_ABI _uX_mm_const_reciprocaltwopi_ps(void); //              __m128f_ps(void); // flt_rcp2pi_ps(void); // flt_rcp2pi_ps(void); // flt_rcp2pi_ps(void); // flt_rcp2pi
extern __m128 uX_ABI _uX_mm_const_infinity_ps(void); //                         __m128i_ps(void); // flt_inf_msk_ps(void); // flt_inf_msk_ps(void); // flt_inf_msk_ps(void); // flt_inf_msk
extern __m128 uX_ABI _uX_mm_const_qnantest_ps(void); //                         __m128i_ps(void); // flt_nantest_msk_ps(void); // flt_nantest_msk_ps(void); // flt_nantest_msk_ps(void); // flt_nantest_msk
extern __m128 uX_ABI _uX_mm_const_absmask_ps(void); //                      __m128i_ps(void); // flt_abs_msk_ps(void); // flt_abs_msk_ps(void); // flt_abs_msk_ps(void); // flt_abs_msk
extern __m128 uX_ABI _uX_mm_const_fltmin_ps(void); //                       __m128i_ps(void); // flt_min_msk_ps(void); // flt_min_msk_ps(void); // flt_min_msk_ps(void); // flt_min_msk
extern __m128 uX_ABI _uX_mm_const_fltmax_ps(void); //                       __m128i_ps(void); // flt_max_msk_ps(void); // flt_max_msk_ps(void); // flt_max_msk_ps(void); // flt_max_msk
extern __m128 uX_ABI _uX_mm_const_negonemask_ps(void); //                   __m128i_ps(void); // flt_true_msk_ps(void); // flt_true_msk_ps(void); // flt_true_msk_ps(void); // flt_true_msk
extern __m128 uX_ABI _uX_mm_const_maska8r8g8b8_ps(void); //                     __m128i_ps(void); // flt_a8_msk_ps(void); // flt_r8_msk_ps(void); // flt_g8_msk_ps(void); // flt_b8_msk
extern __m128 uX_ABI _uX_mm_const_flipa8r8g8b8_ps(void); //                     __m128i_ps(void); // flt_flipa8_msk_ps(void); // flt_flipr8_msk_ps(void); // flt_flipg8_msk_ps(void); // flt_flipb8_msk
extern __m128 uX_ABI _uX_mm_const_fixaa8r8g8b8_ps(void); //                     __m128_ps(void); // flt_fixaa8_ps(void); // flt_fixr8_ps(void); // flt_fixg8_ps(void); // flt_fixb8
extern __m128 uX_ABI _uX_mm_const_normalizea8r8g8b8_ps(void); //                __m128_ps(void); // flt_norma8_ps(void); // flt_normr8_ps(void); // flt_normg8_ps(void); // flt_normb8
extern __m128 uX_ABI _uX_mm_const_maska2b10g10r10_ps(void); //              __m128i_ps(void); // flt_a2_msk_ps(void); // flt_b10_msk_ps(void); // flt_g10_msk_ps(void); // flt_r10_msk
extern __m128 uX_ABI _uX_mm_const_flipa2b10g10r10_ps(void); //              __m128i_ps(void); // flt_flipa2_msk_ps(void); // flt_flipb10_msk_ps(void); // flt_flipg10_msk_ps(void); // flt_flipr10_msk
extern __m128 uX_ABI _uX_mm_const_fixaa2b10g10r10_ps(void); //              __m128_ps(void); // flt_fixaa2_ps(void); // flt_fixb10_ps(void); // flt_fixg10_ps(void); // flt_fixr10
extern __m128 uX_ABI _uX_mm_const_normalizea2b10g10r10_ps(void); //             __m128_ps(void); // flt_norma2_ps(void); // flt_normb10_ps(void); // flt_normg10_ps(void); // flt_normr10
extern __m128 uX_ABI _uX_mm_const_maskx16y16_ps(void); //                   __m128i_ps(void); // flt_16low_msk_ps(void); // flt_16high_msk_ps(void); // flt_false_ps(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_flipx16y16_ps(void); //                   __m128i_ps(void); // flt_flip16_msk_ps(void); // flt_flip16_msk_ps(void); // flt_false_ps(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_fixx16y16_ps(void); //                        __m128_ps(void); // flt_neg32768_ps(void); // flt_0_ps(void); // flt_0_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_normalizex16y16_ps(void); //              __m128_ps(void); // 3.051850947599719e-5_ps(void); // 4.656754985961486e-10_ps(void); // flt_0_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_maskx16y16z16w16_ps(void); //                 __m128i_ps(void); // flt_16low_msk_ps(void); // flt_16low_msk_ps(void); // flt_16high_msk_ps(void); // flt_16high_msk
extern __m128 uX_ABI _uX_mm_const_flipx16y16z16w16_ps(void); //                 __m128i_ps(void); // flt_flip16_msk_ps(void); // flt_flip16_msk_ps(void); // flt_false_ps(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_fixx16y16z16w16_ps(void); //              __m128f_ps(void); // flt_neg32768_ps(void); // flt_neg32768_ps(void); // flt_0_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_normalizex16y16z16w16_ps(void); //            __m128f_ps(void); // 3.051850947599719e-5_ps(void); // 3.051850947599719e-5_ps(void); // 4.656754985961486e-10_ps(void); // 4.656754985961486e-10
extern __m128 uX_ABI _uX_mm_const_maskbyte_ps(void); //                         __m128i_ps(void); // flt_byte_msk_ps(void); // flt_byte_msk_ps(void); // flt_byte_msk_ps(void); // flt_byte_msk
extern __m128 uX_ABI _uX_mm_const_negatex_ps(void); //                      __m128f_ps(void); // flt_neg1_ps(void); // flt_1_ps(void); // flt_1_ps(void); // flt_1
extern __m128 uX_ABI _uX_mm_const_negatey_ps(void); //                      __m128f_ps(void); // flt_1_ps(void); // flt_neg1_ps(void); // flt_1_ps(void); // flt_1
extern __m128 uX_ABI _uX_mm_const_negatez_ps(void); //                      __m128f_ps(void); // flt_1_ps(void); // flt_1_ps(void); // flt_neg1_ps(void); // flt_1
extern __m128 uX_ABI _uX_mm_const_negatew_ps(void); //                      __m128f_ps(void); // flt_1_ps(void); // flt_1_ps(void); // flt_1_ps(void); // flt_neg1
extern __m128 uX_ABI _uX_mm_const_select0000_ps(void); //                 __m128i; flt_false, flt_false, flt_false, flt_false
extern __m128 uX_ABI _uX_mm_const_select0001_ps(void); //                 __m128i; flt_false, flt_false, flt_false, flt_true
extern __m128 uX_ABI _uX_mm_const_select0010_ps(void); //                 __m128i; flt_false, flt_false, flt_true, flt_false
extern __m128 uX_ABI _uX_mm_const_select0100_ps(void); //                 __m128i; flt_false, flt_true, flt_false, flt_false
extern __m128 uX_ABI _uX_mm_const_select1000_ps(void); //                 __m128i; flt_true, flt_false, flt_false, flt_false
extern __m128 uX_ABI _uX_mm_const_select0011_ps(void); //                 __m128i; flt_false, flt_false, flt_true, flt_true
extern __m128 uX_ABI _uX_mm_const_select0111_ps(void); //                 __m128i; flt_false, flt_true, flt_true, flt_true
extern __m128 uX_ABI _uX_mm_const_select1111_ps(void); //                 __m128i; flt_true, flt_true, flt_true, flt_true
extern __m128 uX_ABI _uX_mm_const_select1110_ps(void); //                 __m128i; flt_true, flt_true, flt_true, flt_false
extern __m128 uX_ABI _uX_mm_const_select1100_ps(void); //                 __m128i; flt_true, flt_true, flt_false, flt_false
extern __m128 uX_ABI _uX_mm_const_select1001_ps(void); //                 __m128i; flt_true, flt_false, flt_false, flt_true
extern __m128 uX_ABI _uX_mm_const_select0110_ps(void); //                 __m128i; flt_false, flt_true, flt_true, flt_false
extern __m128 uX_ABI _uX_mm_const_select1011_ps(void); //                 __m128i; flt_true, flt_false, flt_true, flt_true
extern __m128 uX_ABI _uX_mm_const_select1101_ps(void); //                 __m128i; flt_true, flt_true, flt_false, flt_true
extern __m128 uX_ABI _uX_mm_const_select0101_ps(void); //                 __m128i; flt_false, flt_true, flt_false, flt_true
extern __m128 uX_ABI _uX_mm_const_select1010_ps(void); //                 __m128i; flt_true, flt_false, flt_true, flt_false
extern __m128 uX_ABI _uX_mm_const_onehalfminusepsilon_ps(void); //          __m128i_ps(void); // flt_halfminuseps_msk_ps(void); // flt_halfminuseps_msk_ps(void); // flt_halfminuseps_msk_ps(void); // flt_halfminuseps_msk
extern __m128 uX_ABI _uX_mm_const_fixupy16_ps(void); //                         __m128f_ps(void); // flt_1_ps(void); // 0.0000152587890625_ps(void); // flt_0_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_fixupy16w16_ps(void); //                  __m128f_ps(void); // flt_1_ps(void); // flt_1_ps(void); // 0.0000152587890625_ps(void); // 0.0000152587890625   
extern __m128 uX_ABI _uX_mm_const_flipy_ps(void); //                            __m128i_ps(void); // flt_false_ps(void); // flt_flip32_msk_ps(void); // flt_false_ps(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_flipz_ps(void); //                            __m128i_ps(void); // flt_false_ps(void); // flt_false_ps(void); // flt_flip32_msk_ps(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_flipw_ps(void); //                            __m128i_ps(void); // flt_false_ps(void); // flt_false_ps(void); // flt_false_ps(void); // flt_flip32_msk
extern __m128 uX_ABI _uX_mm_const_flipyz_ps(void); //                       __m128i_ps(void); // flt_false_ps(void); // flt_flip32_msk_ps(void); // flt_flip32_msk_ps(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_flipzw_ps(void); //                       __m128i_ps(void); // flt_false_ps(void); // flt_false_ps(void); // flt_flip32_msk_ps(void); // flt_flip32_msk
extern __m128 uX_ABI _uX_mm_const_flipyw_ps(void); //                       __m128i_ps(void); // flt_false_ps(void); // flt_flip32_msk_ps(void); // flt_false_ps(void); // flt_flip32_msk
extern __m128 uX_ABI _uX_mm_const_maskdec4_ps(void); //                         __m128i_ps(void); // 0x000003ff_ps(void); // 0x000ffc00_ps(void); // 0x3ff00000_ps(void); // 0xc0000000
extern __m128 uX_ABI _uX_mm_const_xordec4_ps(void); //                      __m128i_ps(void); // 0x00000200_ps(void); // 0x00080000_ps(void); // 0x20000000_ps(void); // 0x00000000
extern __m128 uX_ABI _uX_mm_const_addudec4_ps(void); //                         __m128f_ps(void); // flt_0_ps(void); // flt_0_ps(void); // flt_0_ps(void); // flt_2147483648
extern __m128 uX_ABI _uX_mm_const_addec4_ps(void); //                       __m128f_ps(void); // flt_neg512_ps(void); // (-524288.0)_ps(void); // (-536870912.0)_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_muldec4_ps(void); //                      __m128f_ps(void); // flt_1_ps(void); // 0.0009765625_ps(void); // 0.00000095367431640625_ps(void); // 0.000000000931322574615478515625  
extern __m128 uX_ABI _uX_mm_const_maskbyte4_ps(void); //                        __m128i_ps(void); // 0x000000ff_ps(void); // 0x0000ff00_ps(void); // 0x00ff0000_ps(void); // 0xff000000
extern __m128 uX_ABI _uX_mm_const_xorbyte4_ps(void); //                         __m128i_ps(void); // 0x00000080_ps(void); // 0x00008000_ps(void); // 0x00800000_ps(void); // 0x00000000
extern __m128 uX_ABI _uX_mm_const_addbyte4_ps(void); //                         __m128f_ps(void); // flt_neg128_ps(void); // flt_neg32768_ps(void); // flt_mini8xu16_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_fixmaxint_ps(void); //                        __m128f_ps(void); // flt_fixmaxi32_ps(void); // flt_fixmaxi32_ps(void); // flt_fixmaxi32_ps(void); // flt_fixmaxi32
extern __m128 uX_ABI _uX_mm_const_fixmaxuint_ps(void); //                   __m128f_ps(void); // flt_fixmaxu32_ps(void); // flt_fixmaxu32_ps(void); // flt_fixmaxu32_ps(void); // flt_fixmaxu32
extern __m128 uX_ABI _uX_mm_const_unsignedfix_ps(void); //                  __m128f_ps(void); // flt_fixunsigned_ps(void); // flt_fixunsigned_ps(void); // flt_fixunsigned_ps(void); // flt_fixunsigned
extern __m128 uX_ABI _uX_mm_const_srgbscale_ps(void); //                        __m128f_ps(void); // 12.92_ps(void); // 12.92_ps(void); // 12.92_ps(void); // flt_1
extern __m128 uX_ABI _uX_mm_const_srgba_ps(void); //                            __m128f_ps(void); // 0.055_ps(void); // 0.055_ps(void); // 0.055_ps(void); // flt_0
extern __m128 uX_ABI _uX_mm_const_srgba1_ps(void); //                       __m128f_ps(void); // 1.055_ps(void); // 1.055_ps(void); // 1.055_ps(void); // flt_1
extern __m128 uX_ABI _uX_mm_const_exponentbias_ps(void); //                     __m128i_ps(void); // flt_exp_msk_ps(void); // flt_exp_msk_ps(void); // flt_exp_msk_ps(void); // flt_exp_msk
extern __m128 uX_ABI _uX_mm_const_subnormalexponent_ps(void); //                __m128i_ps(void); // flt_subnormalexp_msk_ps(void); // flt_subnormalexp_msk_ps(void); // flt_subnormalexp_msk_ps(void); // flt_subnormalexp_msk
extern __m128 uX_ABI _uX_mm_const_numtrailing_ps(void); //                  __m128i_ps(void); // flt_mant_msk_ps(void); // flt_mant_msk_ps(void); // flt_mant_msk_ps(void); // flt_mant_msk
extern __m128 uX_ABI _uX_mm_const_neginfinity_ps(void); //                  __m128i_ps(void); // flt_neginf_msk_ps(void); // flt_neginf_msk_ps(void); // flt_neginf_msk_ps(void); // flt_neginf_msk
extern __m128 uX_ABI _uX_mm_const_lge_ps(void); //                          __m128f_ps(void); // flt_log2e_ps(void); // flt_log2e_ps(void); // flt_log2e_ps(void); // flt_log2e
extern __m128 uX_ABI _uX_mm_const_invlge_ps(void); //                       __m128f_ps(void); // flt_rcplog2e_ps(void); // flt_rcplog2e_ps(void); // flt_rcplog2e_ps(void); // flt_rcplog2e
extern __m128 uX_ABI _uX_mm_const_ubytemax_ps(void); //                         __m128f_ps(void); // flt_255_ps(void); // flt_255_ps(void); // flt_255_ps(void); // flt_255
extern __m128 uX_ABI _uX_mm_const_bytemin_ps(void); //                      __m128f_ps(void); // flt_neg127_ps(void); // flt_neg127_ps(void); // flt_neg127_ps(void); // flt_neg127
extern __m128 uX_ABI _uX_mm_const_bytemax_ps(void); //                      __m128f_ps(void); // flt_127_ps(void); // flt_127_ps(void); // flt_127_ps(void); // flt_127
extern __m128 uX_ABI _uX_mm_const_shortmin_ps(void); //                         __m128f_ps(void); // flt_neg32767_ps(void); // flt_neg32767_ps(void); // flt_neg32767_ps(void); // flt_neg32767
extern __m128 uX_ABI _uX_mm_const_shortmax_ps(void); //                         __m128f_ps(void); // flt_32767_ps(void); // flt_32767_ps(void); // flt_32767_ps(void); // flt_32767
extern __m128 uX_ABI _uX_mm_const_ushortmax_ps(void); //                        __m128f_ps(void); // flt_65535_ps(void); // flt_65535_ps(void); // flt_65535_ps(void); // flt_65535

	//;; float low;;

	//             sincos template, single precision
extern __m128 uX_ABI _uX_mm_const_0e_DP1F_ss(void); //              __m128f_ss(void); // (0.78515625 * 2.0)
extern __m128 uX_ABI _uX_mm_const_0e_DP2F_ss(void); //              __m128f_ss(void); // (2.4187564849853515625e-4 * 2.0)
extern __m128 uX_ABI _uX_mm_const_0e_DP3F_ss(void); //              __m128f_ss(void); // (3.77489497744594108e-8 * 2.0)

extern __m128 uX_ABI _uX_mm_const_0e_P0sinf_ss(void); //              __m128f_ss(void); // (-1.6666654611e-1)
extern __m128 uX_ABI _uX_mm_const_0e_P1sinf_ss(void); //              __m128f_ss(void); // (8.3321608736e-3)
extern __m128 uX_ABI _uX_mm_const_0e_P2sinf_ss(void); //              __m128f_ss(void); // (-1.9515295891e-4)

extern __m128 uX_ABI _uX_mm_const_0e_P0cosf_ss(void); //              __m128f_ss(void); // (4.166664568298827e-2)
extern __m128 uX_ABI _uX_mm_const_0e_P1cosf_ss(void); //              __m128f_ss(void); // (-1.388731625493765e-3)
extern __m128 uX_ABI _uX_mm_const_0e_P2cosf_ss(void); //              __m128f_ss(void); // (2.443315711809948e-5)
	//             sincos template, single precision

extern __m128 uX_ABI _uX_mm_const_0e_1lshl3_ss(void); //                    __m128f_ss(void); // flt_1lshl3_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl4_ss(void); //                    __m128f_ss(void); // flt_1lshl4_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl7_ss(void); //                    __m128f_ss(void); // flt_1lshl7_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl8_ss(void); //                    __m128f_ss(void); // flt_1lshl8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl11_ss(void); //                   __m128f_ss(void); // flt_1lshl11_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl12_ss(void); //                   __m128f_ss(void); // flt_1lshl12_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl15_ss(void); //                   __m128f_ss(void); // flt_1lshl15_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl16_ss(void); //                   __m128f_ss(void); // flt_1lshl16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl19_ss(void); //                   __m128f_ss(void); // flt_1lshl19_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl20_ss(void); //                   __m128f_ss(void); // flt_1lshl20_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl23_ss(void); //                   __m128f_ss(void); // flt_1lshl23_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl24_ss(void); //                   __m128f_ss(void); // flt_1lshl24_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl27_ss(void); //                   __m128f_ss(void); // flt_1lshl27_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl28_ss(void); //                   __m128f_ss(void); // flt_1lshl28_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1lshl31_ss(void); //                   __m128f_ss(void); // flt_1lshl31_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl3_ss(void); //             __m128f_ss(void); // flt_neg1lshl3_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl4_ss(void); //             __m128f_ss(void); // flt_neg1lshl4_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl7_ss(void); //             __m128f_ss(void); // flt_neg1lshl7_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl8_ss(void); //             __m128f_ss(void); // flt_neg1lshl8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl11_ss(void); //                __m128f_ss(void); // flt_neg1lshl11_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl12_ss(void); //                __m128f_ss(void); // flt_neg1lshl12_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl15_ss(void); //                __m128f_ss(void); // flt_neg1lshl15_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl16_ss(void); //                __m128f_ss(void); // flt_neg1lshl16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl19_ss(void); //                __m128f_ss(void); // flt_neg1lshl19_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl20_ss(void); //                __m128f_ss(void); // flt_neg1lshl20_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl23_ss(void); //                __m128f_ss(void); // flt_neg1lshl23_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl24_ss(void); //                __m128f_ss(void); // flt_neg1lshl24_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl27_ss(void); //                __m128f_ss(void); // flt_neg1lshl27_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl28_ss(void); //                __m128f_ss(void); // flt_neg1lshl28_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1lshl31_ss(void); //                __m128f_ss(void); // flt_neg1lshl31_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_false_ss(void); //                 __m128i_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_true_ss(void); //                  __m128i_ss(void); // flt_true_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_error_ss(void); //                 __m128i_ss(void); // flt_error_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_magic_ss(void); //                 __m128i_ss(void); // flt_magic_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sign_ss(void); //                  __m128i_ss(void); // flt_sign_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_invsign_ss(void); //                   __m128i_ss(void); // flt_invsign_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_magic_ss(void); //                 __m128i_ss(void); // flt_magic_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sign_ss(void); //                  __m128i_ss(void); // flt_sign_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_invsign_ss(void); //                   __m128i_ss(void); // flt_invsign_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_inf_ss(void); //                       __m128i_ss(void); // flt_inf_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_fin_ss(void); //                       __m128i_ss(void); // flt_fin_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_invinf_ss(void); //                    __m128i_ss(void); // flt_invinf_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neginf_ss(void); //                    __m128i_ss(void); // flt_neginf_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_nan_ss(void); //                       __m128i_ss(void); // flt_nan_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_qnan_ss(void); //                  __m128i_ss(void); // flt_qnan_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_negqnan_ss(void); //                   __m128i_ss(void); // flt_negqnan_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_nantest_ss(void); //                   __m128i_ss(void); // flt_nantest_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_abs_ss(void); //                       __m128i_ss(void); // flt_abs_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_min_ss(void); //                       __m128f_ss(void); // flt_min_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_max_ss(void); //                       __m128f_ss(void); // flt_max_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_nofraction_ss(void); //                __m128f_ss(void); // flt_nofraction_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mindenorm_ss(void); //             __m128f_ss(void); // flt_mindenorm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_denormlimit_ss(void); //               __m128f_ss(void); // flt_denormlimit_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_minnormal_ss(void); //             __m128f_ss(void); // flt_minnormal_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_maxnormal_ss(void); //             __m128f_ss(void); // flt_maxnormal_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_decdig_ss(void); //                    __m128f_ss(void); // flt_decdig_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_dig_ss(void); //                       __m128f_ss(void); // flt_dig_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_negdecdig_ss(void); //             __m128f_ss(void); // flt_negdecdig_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_negdig_ss(void); //                    __m128f_ss(void); // flt_negdig_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_eps_ss(void); //                       __m128f_ss(void); // flt_eps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_epsilon_ss(void); //                   __m128f_ss(void); // flt_epsilon_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_normeps_ss(void); //                   __m128f_ss(void); // flt_normeps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_guard_ss(void); //                 __m128f_ss(void); // flt_guard_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mantpow2_ss(void); //              __m128f_ss(void); // flt_mantpow2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_maxmantpow2_ss(void); //               __m128f_ss(void); // flt_maxmantpow2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mantdig_ss(void); //                   __m128f_ss(void); // flt_mantdig_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mant_ss(void); //                  __m128f_ss(void); // flt_mant_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_negmantdig_ss(void); //                __m128f_ss(void); // flt_negmantdig_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_negmant_ss(void); //                   __m128f_ss(void); // flt_negmant_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_maxexp_ss(void); //                    __m128f_ss(void); // flt_maxexp_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_expsign_ss(void); //                   __m128f_ss(void); // flt_expsign_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_exp_ss(void); //                       __m128f_ss(void); // flt_exp_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_negmaxexp_ss(void); //             __m128f_ss(void); // flt_negmaxexp_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_negexpsign_ss(void); //                __m128f_ss(void); // flt_negexpsign_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_negexp_ss(void); //                    __m128f_ss(void); // flt_negexp_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_subnormalexp_ss(void); //          __m128f_ss(void); // flt_subnormalexp_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_minexp_ss(void); //                    __m128f_ss(void); // flt_minexp_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_maxdecexp_ss(void); //             __m128f_ss(void); // flt_maxdecexp_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_negmaxdecexp_ss(void); //          __m128f_ss(void); // flt_negmaxdecexp_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mindecexp_ss(void); //             __m128f_ss(void); // flt_mindecexp_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_expfield_ss(void); //              __m128f_ss(void); // flt_expfield_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mantfield_ss(void); //             __m128f_ss(void); // flt_mantfield_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_norm_ss(void); //                  __m128f_ss(void); // flt_norm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_radix_ss(void); //                 __m128f_ss(void); // flt_radix_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rounds_ss(void); //                    __m128f_ss(void); // flt_rounds_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_subdec_ss(void); //                    __m128f_ss(void); // flt_subdec_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrtmax_ss(void); //                   __m128f_ss(void); // flt_sqrtmax_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_smallnormal_ss(void); //               __m128f_ss(void); // flt_smallnormal_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_halfminuseps_ss(void); //          __m128f_ss(void); // flt_halfminuseps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_trueint_ss(void); //                   __m128f_ss(void); // flt_trueint_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_byte_ss(void); //                  __m128f_ss(void); // flt_byte_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_byte_even_ss(void); //             __m128f_ss(void); // flt_byte_even_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_byte_odd_ss(void); //              __m128f_ss(void); // flt_byte_odd_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_4low_ss(void); //                  __m128f_ss(void); // flt_4low_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_4high_ss(void); //                 __m128f_ss(void); // flt_4high_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_flip4_ss(void); //                 __m128f_ss(void); // flt_flip4_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_8low_ss(void); //                  __m128f_ss(void); // flt_8low_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_8high_ss(void); //                 __m128f_ss(void); // flt_8high_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_flip8_ss(void); //                 __m128f_ss(void); // flt_flip8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_16low_ss(void); //                 __m128f_ss(void); // flt_16low_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_16high_ss(void); //                    __m128f_ss(void); // flt_16high_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_flip16_ss(void); //                    __m128f_ss(void); // flt_flip16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_24low_ss(void); //                 __m128f_ss(void); // flt_24low_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_24high_ss(void); //                    __m128f_ss(void); // flt_24high_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_flip24_ss(void); //                    __m128f_ss(void); // flt_flip24_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_28low_ss(void); //                 __m128f_ss(void); // flt_28low_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_28high_ss(void); //                    __m128f_ss(void); // flt_28high_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_flip28_ss(void); //                    __m128f_ss(void); // flt_flip28_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_32low_ss(void); //                 __m128f_ss(void); // flt_32low_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_32high_ss(void); //                    __m128f_ss(void); // flt_32high_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_flip32_ss(void); //                    __m128f_ss(void); // flt_flip32_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_0_ss(void); //                         __m128f_ss(void); // flt_0_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d0001_ss(void); //                    __m128f_ss(void); // flt_0d0001_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d0002_ss(void); //                    __m128f_ss(void); // flt_0d0002_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d0003_ss(void); //                    __m128f_ss(void); // flt_0d0003_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d0004_ss(void); //                    __m128f_ss(void); // flt_0d0004_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d0005_ss(void); //                    __m128f_ss(void); // flt_0d0005_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d0006_ss(void); //                    __m128f_ss(void); // flt_0d0006_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d0007_ss(void); //                    __m128f_ss(void); // flt_0d0007_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d0008_ss(void); //                    __m128f_ss(void); // flt_0d0008_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d0009_ss(void); //                    __m128f_ss(void); // flt_0d0009_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d001_ss(void); //                     __m128f_ss(void); // flt_0d001_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d002_ss(void); //                     __m128f_ss(void); // flt_0d002_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d003_ss(void); //                     __m128f_ss(void); // flt_0d003_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d004_ss(void); //                     __m128f_ss(void); // flt_0d004_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d005_ss(void); //                     __m128f_ss(void); // flt_0d005_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d006_ss(void); //                     __m128f_ss(void); // flt_0d006_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d007_ss(void); //                     __m128f_ss(void); // flt_0d007_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d008_ss(void); //                     __m128f_ss(void); // flt_0d008_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d009_ss(void); //                     __m128f_ss(void); // flt_0d009_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d01_ss(void); //                  __m128f_ss(void); // flt_0d01_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d02_ss(void); //                  __m128f_ss(void); // flt_0d02_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d025_ss(void); //                     __m128f_ss(void); // flt_0d025_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d03_ss(void); //                  __m128f_ss(void); // flt_0d03_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d04_ss(void); //                  __m128f_ss(void); // flt_0d04_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d05_ss(void); //                  __m128f_ss(void); // flt_0d05_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d06_ss(void); //                  __m128f_ss(void); // flt_0d06_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d07_ss(void); //                  __m128f_ss(void); // flt_0d07_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d08_ss(void); //                  __m128f_ss(void); // flt_0d08_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d09_ss(void); //                  __m128f_ss(void); // flt_0d09_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d1_ss(void); //                   __m128f_ss(void); // flt_0d1_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d2_ss(void); //                   __m128f_ss(void); // flt_0d2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d25_ss(void); //                  __m128f_ss(void); // flt_0d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d3_ss(void); //                   __m128f_ss(void); // flt_0d3_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d4_ss(void); //                   __m128f_ss(void); // flt_0d4_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d5_ss(void); //                   __m128f_ss(void); // flt_0d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d6_ss(void); //                   __m128f_ss(void); // flt_0d6_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d7_ss(void); //                   __m128f_ss(void); // flt_0d7_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d8_ss(void); //                   __m128f_ss(void); // flt_0d8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_0d9_ss(void); //                   __m128f_ss(void); // flt_0d9_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1_ss(void); //                         __m128f_ss(void); // flt_1_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1d25_ss(void); //                  __m128f_ss(void); // flt_1d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1d5_ss(void); //                   __m128f_ss(void); // flt_1d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2_ss(void); //                         __m128f_ss(void); // flt_2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2d25_ss(void); //                  __m128f_ss(void); // flt_2d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2d5_ss(void); //                   __m128f_ss(void); // flt_2d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_3_ss(void); //                         __m128f_ss(void); // flt_3_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_3d25_ss(void); //                  __m128f_ss(void); // flt_3d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_3d5_ss(void); //                   __m128f_ss(void); // flt_3d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_4_ss(void); //                         __m128f_ss(void); // flt_4_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_4d25_ss(void); //                  __m128f_ss(void); // flt_4d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_4d5_ss(void); //                   __m128f_ss(void); // flt_4d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_5_ss(void); //                         __m128f_ss(void); // flt_5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_5d25_ss(void); //                  __m128f_ss(void); // flt_5d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_5d5_ss(void); //                   __m128f_ss(void); // flt_5d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_6_ss(void); //                         __m128f_ss(void); // flt_6_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_6d25_ss(void); //                  __m128f_ss(void); // flt_6d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_6d5_ss(void); //                   __m128f_ss(void); // flt_6d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_7_ss(void); //                         __m128f_ss(void); // flt_7_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_7d25_ss(void); //                  __m128f_ss(void); // flt_7d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_7d5_ss(void); //                   __m128f_ss(void); // flt_7d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_8_ss(void); //                         __m128f_ss(void); // flt_8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_8d25_ss(void); //                  __m128f_ss(void); // flt_8d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_8d5_ss(void); //                   __m128f_ss(void); // flt_8d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_9_ss(void); //                         __m128f_ss(void); // flt_9_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_9d25_ss(void); //                  __m128f_ss(void); // flt_9d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_9d5_ss(void); //                   __m128f_ss(void); // flt_9d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_10_ss(void); //                        __m128f_ss(void); // flt_10_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_11_ss(void); //                        __m128f_ss(void); // flt_11_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_12_ss(void); //                        __m128f_ss(void); // flt_12_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_13_ss(void); //                        __m128f_ss(void); // flt_13_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_14_ss(void); //                        __m128f_ss(void); // flt_14_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_15_ss(void); //                        __m128f_ss(void); // flt_15_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_16_ss(void); //                        __m128f_ss(void); // flt_16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_17_ss(void); //                        __m128f_ss(void); // flt_17_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_18_ss(void); //                        __m128f_ss(void); // flt_18_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_19_ss(void); //                        __m128f_ss(void); // flt_19_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_20_ss(void); //                        __m128f_ss(void); // flt_20_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_21_ss(void); //                        __m128f_ss(void); // flt_21_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_22_ss(void); //                        __m128f_ss(void); // flt_22_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_23_ss(void); //                        __m128f_ss(void); // flt_23_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_24_ss(void); //                        __m128f_ss(void); // flt_24_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_24d5_ss(void); //                  __m128f_ss(void); // flt_24d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_25_ss(void); //                        __m128f_ss(void); // flt_25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_26_ss(void); //                        __m128f_ss(void); // flt_26_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_27_ss(void); //                        __m128f_ss(void); // flt_27_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_28_ss(void); //                        __m128f_ss(void); // flt_28_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_29_ss(void); //                        __m128f_ss(void); // flt_29_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_30_ss(void); //                        __m128f_ss(void); // flt_30_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_31_ss(void); //                        __m128f_ss(void); // flt_31_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_32_ss(void); //                        __m128f_ss(void); // flt_32_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_33_ss(void); //                        __m128f_ss(void); // flt_33_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_34_ss(void); //                        __m128f_ss(void); // flt_34_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_35_ss(void); //                        __m128f_ss(void); // flt_35_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_36_ss(void); //                        __m128f_ss(void); // flt_36_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_37_ss(void); //                        __m128f_ss(void); // flt_37_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_38_ss(void); //                        __m128f_ss(void); // flt_38_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_39_ss(void); //                        __m128f_ss(void); // flt_39_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_40_ss(void); //                        __m128f_ss(void); // flt_40_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_41_ss(void); //                        __m128f_ss(void); // flt_41_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_42_ss(void); //                        __m128f_ss(void); // flt_42_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_43_ss(void); //                        __m128f_ss(void); // flt_43_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_44_ss(void); //                        __m128f_ss(void); // flt_44_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_45_ss(void); //                        __m128f_ss(void); // flt_45_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_46_ss(void); //                        __m128f_ss(void); // flt_46_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_47_ss(void); //                        __m128f_ss(void); // flt_47_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_48_ss(void); //                        __m128f_ss(void); // flt_48_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_49_ss(void); //                        __m128f_ss(void); // flt_49_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_50_ss(void); //                        __m128f_ss(void); // flt_50_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_51_ss(void); //                        __m128f_ss(void); // flt_51_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_52_ss(void); //                        __m128f_ss(void); // flt_52_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_53_ss(void); //                        __m128f_ss(void); // flt_53_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_54_ss(void); //                        __m128f_ss(void); // flt_54_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_55_ss(void); //                        __m128f_ss(void); // flt_55_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_56_ss(void); //                        __m128f_ss(void); // flt_56_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_57_ss(void); //                        __m128f_ss(void); // flt_57_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_58_ss(void); //                        __m128f_ss(void); // flt_58_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_59_ss(void); //                        __m128f_ss(void); // flt_59_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_60_ss(void); //                        __m128f_ss(void); // flt_60_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_61_ss(void); //                        __m128f_ss(void); // flt_61_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_62_ss(void); //                        __m128f_ss(void); // flt_62_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_63_ss(void); //                        __m128f_ss(void); // flt_63_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_64_ss(void); //                        __m128f_ss(void); // flt_64_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_65_ss(void); //                        __m128f_ss(void); // flt_65_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_66_ss(void); //                        __m128f_ss(void); // flt_66_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_67_ss(void); //                        __m128f_ss(void); // flt_67_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_68_ss(void); //                        __m128f_ss(void); // flt_68_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_69_ss(void); //                        __m128f_ss(void); // flt_69_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_70_ss(void); //                        __m128f_ss(void); // flt_70_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_71_ss(void); //                        __m128f_ss(void); // flt_71_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_72_ss(void); //                        __m128f_ss(void); // flt_72_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_73_ss(void); //                        __m128f_ss(void); // flt_73_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_74_ss(void); //                        __m128f_ss(void); // flt_74_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_75_ss(void); //                        __m128f_ss(void); // flt_75_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_76_ss(void); //                        __m128f_ss(void); // flt_76_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_77_ss(void); //                        __m128f_ss(void); // flt_77_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_78_ss(void); //                        __m128f_ss(void); // flt_78_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_79_ss(void); //                        __m128f_ss(void); // flt_79_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_80_ss(void); //                        __m128f_ss(void); // flt_80_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_81_ss(void); //                        __m128f_ss(void); // flt_81_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_82_ss(void); //                        __m128f_ss(void); // flt_82_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_83_ss(void); //                        __m128f_ss(void); // flt_83_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_84_ss(void); //                        __m128f_ss(void); // flt_84_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_85_ss(void); //                        __m128f_ss(void); // flt_85_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_86_ss(void); //                        __m128f_ss(void); // flt_86_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_87_ss(void); //                        __m128f_ss(void); // flt_87_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_88_ss(void); //                        __m128f_ss(void); // flt_88_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_89_ss(void); //                        __m128f_ss(void); // flt_89_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_90_ss(void); //                        __m128f_ss(void); // flt_90_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_91_ss(void); //                        __m128f_ss(void); // flt_91_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_92_ss(void); //                        __m128f_ss(void); // flt_92_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_93_ss(void); //                        __m128f_ss(void); // flt_93_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_94_ss(void); //                        __m128f_ss(void); // flt_94_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_95_ss(void); //                        __m128f_ss(void); // flt_95_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_96_ss(void); //                        __m128f_ss(void); // flt_96_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_97_ss(void); //                        __m128f_ss(void); // flt_97_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_98_ss(void); //                        __m128f_ss(void); // flt_98_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_99_ss(void); //                        __m128f_ss(void); // flt_99_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_100_ss(void); //                   __m128f_ss(void); // flt_100_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_125_ss(void); //                   __m128f_ss(void); // flt_125_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_126_ss(void); //                   __m128f_ss(void); // flt_126_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_127_ss(void); //                   __m128f_ss(void); // flt_127_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_128_ss(void); //                   __m128f_ss(void); // flt_128_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_140_ss(void); //                   __m128f_ss(void); // flt_140_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_145_ss(void); //                   __m128f_ss(void); // flt_145_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_150_ss(void); //                   __m128f_ss(void); // flt_150_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_180_ss(void); //                   __m128f_ss(void); // flt_180_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_253_ss(void); //                   __m128f_ss(void); // flt_253_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_254_ss(void); //                   __m128f_ss(void); // flt_254_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_255_ss(void); //                   __m128f_ss(void); // flt_255_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_256_ss(void); //                   __m128f_ss(void); // flt_256_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_360_ss(void); //                   __m128f_ss(void); // flt_360_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_511_ss(void); //                   __m128f_ss(void); // flt_511_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_512_ss(void); //                   __m128f_ss(void); // flt_512_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_513_ss(void); //                   __m128f_ss(void); // flt_513_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1023_ss(void); //                  __m128f_ss(void); // flt_1023_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1024_ss(void); //                  __m128f_ss(void); // flt_1024_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1025_ss(void); //                  __m128f_ss(void); // flt_1025_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_32767_ss(void); //                     __m128f_ss(void); // flt_32767_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_32768_ss(void); //                     __m128f_ss(void); // flt_32768_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_65535_ss(void); //                     __m128f_ss(void); // flt_65535_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_65536_ss(void); //                     __m128f_ss(void); // flt_65536_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2147483647_ss(void); //                __m128f_ss(void); // flt_2147483647_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2147483648_ss(void); //                __m128f_ss(void); // flt_2147483648_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_4294967295_ss(void); //                __m128f_ss(void); // flt_4294967295_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_4294967296_ss(void); //                __m128f_ss(void); // flt_4294967296_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_neg0_ss(void); //                  __m128f_ss(void); // flt_neg0_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d0001_ss(void); //                 __m128f_ss(void); // flt_neg0d0001_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d0002_ss(void); //                 __m128f_ss(void); // flt_neg0d0002_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d0003_ss(void); //                 __m128f_ss(void); // flt_neg0d0003_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d0004_ss(void); //                 __m128f_ss(void); // flt_neg0d0004_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d0005_ss(void); //                 __m128f_ss(void); // flt_neg0d0005_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d0006_ss(void); //                 __m128f_ss(void); // flt_neg0d0006_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d0007_ss(void); //                 __m128f_ss(void); // flt_neg0d0007_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d0008_ss(void); //                 __m128f_ss(void); // flt_neg0d0008_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d0009_ss(void); //                 __m128f_ss(void); // flt_neg0d0009_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d001_ss(void); //              __m128f_ss(void); // flt_neg0d001_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d002_ss(void); //              __m128f_ss(void); // flt_neg0d002_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d003_ss(void); //              __m128f_ss(void); // flt_neg0d003_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d004_ss(void); //              __m128f_ss(void); // flt_neg0d004_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d005_ss(void); //              __m128f_ss(void); // flt_neg0d005_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d006_ss(void); //              __m128f_ss(void); // flt_neg0d006_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d007_ss(void); //              __m128f_ss(void); // flt_neg0d007_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d008_ss(void); //              __m128f_ss(void); // flt_neg0d008_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d009_ss(void); //              __m128f_ss(void); // flt_neg0d009_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d01_ss(void); //               __m128f_ss(void); // flt_neg0d01_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d02_ss(void); //               __m128f_ss(void); // flt_neg0d02_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d025_ss(void); //              __m128f_ss(void); // flt_neg0d025_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d03_ss(void); //               __m128f_ss(void); // flt_neg0d03_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d04_ss(void); //               __m128f_ss(void); // flt_neg0d04_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d05_ss(void); //               __m128f_ss(void); // flt_neg0d05_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d06_ss(void); //               __m128f_ss(void); // flt_neg0d06_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d07_ss(void); //               __m128f_ss(void); // flt_neg0d07_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d08_ss(void); //               __m128f_ss(void); // flt_neg0d08_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d09_ss(void); //               __m128f_ss(void); // flt_neg0d09_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d1_ss(void); //                    __m128f_ss(void); // flt_neg0d1_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d2_ss(void); //                    __m128f_ss(void); // flt_neg0d2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d25_ss(void); //               __m128f_ss(void); // flt_neg0d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d3_ss(void); //                    __m128f_ss(void); // flt_neg0d3_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d4_ss(void); //                    __m128f_ss(void); // flt_neg0d4_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d5_ss(void); //                    __m128f_ss(void); // flt_neg0d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d6_ss(void); //                    __m128f_ss(void); // flt_neg0d6_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d7_ss(void); //                    __m128f_ss(void); // flt_neg0d7_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d8_ss(void); //                    __m128f_ss(void); // flt_neg0d8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg0d9_ss(void); //                    __m128f_ss(void); // flt_neg0d9_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1_ss(void); //                  __m128f_ss(void); // flt_neg1_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1d25_ss(void); //               __m128f_ss(void); // flt_neg1d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1d5_ss(void); //                    __m128f_ss(void); // flt_neg1d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg2_ss(void); //                  __m128f_ss(void); // flt_neg2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg2d25_ss(void); //               __m128f_ss(void); // flt_neg2d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg2d5_ss(void); //                    __m128f_ss(void); // flt_neg2d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg3_ss(void); //                  __m128f_ss(void); // flt_neg3_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg3d25_ss(void); //               __m128f_ss(void); // flt_neg3d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg3d5_ss(void); //                    __m128f_ss(void); // flt_neg3d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg4_ss(void); //                  __m128f_ss(void); // flt_neg4_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg4d25_ss(void); //               __m128f_ss(void); // flt_neg4d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg4d5_ss(void); //                    __m128f_ss(void); // flt_neg4d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg5_ss(void); //                  __m128f_ss(void); // flt_neg5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg5d25_ss(void); //               __m128f_ss(void); // flt_neg5d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg5d5_ss(void); //                    __m128f_ss(void); // flt_neg5d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg6_ss(void); //                  __m128f_ss(void); // flt_neg6_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg6d25_ss(void); //               __m128f_ss(void); // flt_neg6d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg6d5_ss(void); //                    __m128f_ss(void); // flt_neg6d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg7_ss(void); //                  __m128f_ss(void); // flt_neg7_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg7d25_ss(void); //               __m128f_ss(void); // flt_neg7d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg7d5_ss(void); //                    __m128f_ss(void); // flt_neg7d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg8_ss(void); //                  __m128f_ss(void); // flt_neg8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg8d25_ss(void); //               __m128f_ss(void); // flt_neg8d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg8d5_ss(void); //                    __m128f_ss(void); // flt_neg8d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg9_ss(void); //                  __m128f_ss(void); // flt_neg9_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg9d25_ss(void); //               __m128f_ss(void); // flt_neg9d25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg9d5_ss(void); //                    __m128f_ss(void); // flt_neg9d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg10_ss(void); //                     __m128f_ss(void); // flt_neg10_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg11_ss(void); //                     __m128f_ss(void); // flt_neg11_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg12_ss(void); //                     __m128f_ss(void); // flt_neg12_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg13_ss(void); //                     __m128f_ss(void); // flt_neg13_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg14_ss(void); //                     __m128f_ss(void); // flt_neg14_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg15_ss(void); //                     __m128f_ss(void); // flt_neg15_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg16_ss(void); //                     __m128f_ss(void); // flt_neg16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg17_ss(void); //                     __m128f_ss(void); // flt_neg17_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg18_ss(void); //                     __m128f_ss(void); // flt_neg18_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg19_ss(void); //                     __m128f_ss(void); // flt_neg19_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg20_ss(void); //                     __m128f_ss(void); // flt_neg20_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg21_ss(void); //                     __m128f_ss(void); // flt_neg21_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg22_ss(void); //                     __m128f_ss(void); // flt_neg22_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg23_ss(void); //                     __m128f_ss(void); // flt_neg23_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg24_ss(void); //                     __m128f_ss(void); // flt_neg24_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg24d5_ss(void); //               __m128f_ss(void); // flt_neg24d5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg25_ss(void); //                     __m128f_ss(void); // flt_neg25_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg26_ss(void); //                     __m128f_ss(void); // flt_neg26_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg27_ss(void); //                     __m128f_ss(void); // flt_neg27_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg28_ss(void); //                     __m128f_ss(void); // flt_neg28_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg29_ss(void); //                     __m128f_ss(void); // flt_neg29_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg30_ss(void); //                     __m128f_ss(void); // flt_neg30_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg31_ss(void); //                     __m128f_ss(void); // flt_neg31_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg32_ss(void); //                     __m128f_ss(void); // flt_neg32_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg33_ss(void); //                     __m128f_ss(void); // flt_neg33_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg34_ss(void); //                     __m128f_ss(void); // flt_neg34_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg35_ss(void); //                     __m128f_ss(void); // flt_neg35_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg36_ss(void); //                     __m128f_ss(void); // flt_neg36_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg37_ss(void); //                     __m128f_ss(void); // flt_neg37_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg38_ss(void); //                     __m128f_ss(void); // flt_neg38_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg39_ss(void); //                     __m128f_ss(void); // flt_neg39_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg40_ss(void); //                     __m128f_ss(void); // flt_neg40_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg41_ss(void); //                     __m128f_ss(void); // flt_neg41_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg42_ss(void); //                     __m128f_ss(void); // flt_neg42_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg43_ss(void); //                     __m128f_ss(void); // flt_neg43_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg44_ss(void); //                     __m128f_ss(void); // flt_neg44_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg45_ss(void); //                     __m128f_ss(void); // flt_neg45_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg46_ss(void); //                     __m128f_ss(void); // flt_neg46_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg47_ss(void); //                     __m128f_ss(void); // flt_neg47_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg48_ss(void); //                     __m128f_ss(void); // flt_neg48_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg49_ss(void); //                     __m128f_ss(void); // flt_neg49_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg50_ss(void); //                     __m128f_ss(void); // flt_neg50_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg51_ss(void); //                     __m128f_ss(void); // flt_neg51_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg52_ss(void); //                     __m128f_ss(void); // flt_neg52_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg53_ss(void); //                     __m128f_ss(void); // flt_neg53_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg54_ss(void); //                     __m128f_ss(void); // flt_neg54_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg55_ss(void); //                     __m128f_ss(void); // flt_neg55_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg56_ss(void); //                     __m128f_ss(void); // flt_neg56_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg57_ss(void); //                     __m128f_ss(void); // flt_neg57_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg58_ss(void); //                     __m128f_ss(void); // flt_neg58_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg59_ss(void); //                     __m128f_ss(void); // flt_neg59_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg60_ss(void); //                     __m128f_ss(void); // flt_neg60_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg61_ss(void); //                     __m128f_ss(void); // flt_neg61_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg62_ss(void); //                     __m128f_ss(void); // flt_neg62_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg63_ss(void); //                     __m128f_ss(void); // flt_neg63_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg64_ss(void); //                     __m128f_ss(void); // flt_neg64_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg65_ss(void); //                     __m128f_ss(void); // flt_neg65_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg66_ss(void); //                     __m128f_ss(void); // flt_neg66_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg67_ss(void); //                     __m128f_ss(void); // flt_neg67_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg68_ss(void); //                     __m128f_ss(void); // flt_neg68_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg69_ss(void); //                     __m128f_ss(void); // flt_neg69_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg70_ss(void); //                     __m128f_ss(void); // flt_neg70_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg71_ss(void); //                     __m128f_ss(void); // flt_neg71_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg72_ss(void); //                     __m128f_ss(void); // flt_neg72_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg73_ss(void); //                     __m128f_ss(void); // flt_neg73_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg74_ss(void); //                     __m128f_ss(void); // flt_neg74_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg75_ss(void); //                     __m128f_ss(void); // flt_neg75_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg76_ss(void); //                     __m128f_ss(void); // flt_neg76_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg77_ss(void); //                     __m128f_ss(void); // flt_neg77_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg78_ss(void); //                     __m128f_ss(void); // flt_neg78_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg79_ss(void); //                     __m128f_ss(void); // flt_neg79_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg80_ss(void); //                     __m128f_ss(void); // flt_neg80_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg81_ss(void); //                     __m128f_ss(void); // flt_neg81_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg82_ss(void); //                     __m128f_ss(void); // flt_neg82_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg83_ss(void); //                     __m128f_ss(void); // flt_neg83_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg84_ss(void); //                     __m128f_ss(void); // flt_neg84_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg85_ss(void); //                     __m128f_ss(void); // flt_neg85_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg86_ss(void); //                     __m128f_ss(void); // flt_neg86_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg87_ss(void); //                     __m128f_ss(void); // flt_neg87_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg88_ss(void); //                     __m128f_ss(void); // flt_neg88_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg89_ss(void); //                     __m128f_ss(void); // flt_neg89_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg90_ss(void); //                     __m128f_ss(void); // flt_neg90_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg91_ss(void); //                     __m128f_ss(void); // flt_neg91_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg92_ss(void); //                     __m128f_ss(void); // flt_neg92_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg93_ss(void); //                     __m128f_ss(void); // flt_neg93_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg94_ss(void); //                     __m128f_ss(void); // flt_neg94_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg95_ss(void); //                     __m128f_ss(void); // flt_neg95_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg96_ss(void); //                     __m128f_ss(void); // flt_neg96_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg97_ss(void); //                     __m128f_ss(void); // flt_neg97_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg98_ss(void); //                     __m128f_ss(void); // flt_neg98_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg99_ss(void); //                     __m128f_ss(void); // flt_neg99_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg100_ss(void); //                    __m128f_ss(void); // flt_neg100_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg125_ss(void); //                    __m128f_ss(void); // flt_neg125_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg126_ss(void); //                    __m128f_ss(void); // flt_neg126_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg127_ss(void); //                    __m128f_ss(void); // flt_neg127_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg128_ss(void); //                    __m128f_ss(void); // flt_neg128_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg140_ss(void); //                    __m128f_ss(void); // flt_neg140_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg145_ss(void); //                    __m128f_ss(void); // flt_neg145_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg150_ss(void); //                    __m128f_ss(void); // flt_neg150_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg180_ss(void); //                    __m128f_ss(void); // flt_neg180_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg253_ss(void); //                    __m128f_ss(void); // flt_neg253_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg254_ss(void); //                    __m128f_ss(void); // flt_neg254_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg255_ss(void); //                    __m128f_ss(void); // flt_neg255_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg256_ss(void); //                    __m128f_ss(void); // flt_neg256_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg360_ss(void); //                    __m128f_ss(void); // flt_neg360_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg511_ss(void); //                    __m128f_ss(void); // flt_neg511_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg512_ss(void); //                    __m128f_ss(void); // flt_neg512_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg513_ss(void); //                    __m128f_ss(void); // flt_neg513_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1023_ss(void); //               __m128f_ss(void); // flt_neg1023_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1024_ss(void); //               __m128f_ss(void); // flt_neg1024_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg1025_ss(void); //               __m128f_ss(void); // flt_neg1025_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_neg32767_ss(void); //              __m128f_ss(void); // flt_neg32767_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg32768_ss(void); //              __m128f_ss(void); // flt_neg32768_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg65535_ss(void); //              __m128f_ss(void); // flt_neg65535_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg65536_ss(void); //              __m128f_ss(void); // flt_neg65536_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg2147483647_ss(void); //             __m128f_ss(void); // flt_neg2147483647_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg2147483648_ss(void); //             __m128f_ss(void); // flt_neg2147483648_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg4294967295_ss(void); //             __m128f_ss(void); // flt_neg4294967295_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg4294967296_ss(void); //             __m128f_ss(void); // flt_neg4294967296_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_bin128_ss(void); //                    __m128i_ss(void); // flt_bin128_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_binneg150_ss(void); //             __m128i_ss(void); // flt_binneg150_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_maxrand_ss(void); //                   __m128f_ss(void); // flt_maxrand_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_maxi8_ss(void); //                 __m128f_ss(void); // flt_maxi8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mini8_ss(void); //                 __m128f_ss(void); // flt_mini8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_maxu8_ss(void); //                 __m128f_ss(void); // flt_maxu8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_maxi16_ss(void); //                    __m128f_ss(void); // flt_maxi16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mini16_ss(void); //                    __m128f_ss(void); // flt_mini16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_maxu16_ss(void); //                    __m128f_ss(void); // flt_maxu16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_maxi32_ss(void); //                    __m128f_ss(void); // flt_maxi32_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mini32_ss(void); //                    __m128f_ss(void); // flt_mini32_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_maxu32_ss(void); //                    __m128f_ss(void); // flt_maxu32_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_maxi8xu8_ss(void); //              __m128f_ss(void); // flt_maxi8xu8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mini8xu8_ss(void); //              __m128f_ss(void); // flt_mini8xu8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_maxi8xu16_ss(void); //             __m128f_ss(void); // flt_maxi8xu16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mini8xu16_ss(void); //             __m128f_ss(void); // flt_mini8xu16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_maxi16xu16_ss(void); //                __m128f_ss(void); // flt_maxi16xu16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mini16xu16_ss(void); //                __m128f_ss(void); // flt_mini16xu16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_fixunsigned_ss(void); //               __m128f_ss(void); // flt_fixunsigned_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_fixunsigned32_ss(void); //         __m128f_ss(void); // flt_fixunsigned32_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_fixmaxi32_ss(void); //             __m128f_ss(void); // flt_fixmaxi32_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_fixmaxu32_ss(void); //             __m128f_ss(void); // flt_fixmaxu32_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_rcpi16_ss(void); //                    __m128f_ss(void); // flt_rcpi16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcpu16_ss(void); //                    __m128f_ss(void); // flt_rcpu16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcpi16xu16_ss(void); //                __m128f_ss(void); // flt_rcpi16xu16_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_fixaa8_ss(void); //                    __m128f_ss(void); // flt_fixaa8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_fixr8_ss(void); //                     __m128f_ss(void); // flt_fixr8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_fixg8_ss(void); //                     __m128f_ss(void); // flt_fixg8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_fixb8_ss(void); //                     __m128f_ss(void); // flt_fixb8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_norma8_ss(void); //                    __m128f_ss(void); // flt_norma8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_normr8_ss(void); //                    __m128f_ss(void); // flt_normr8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_normg8_ss(void); //                    __m128f_ss(void); // flt_normg8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_normb8_ss(void); //                    __m128f_ss(void); // flt_normb8_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_fixaa2_ss(void); //                    __m128f_ss(void); // flt_fixaa2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_fixb10_ss(void); //                    __m128f_ss(void); // flt_fixb10_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_fixg10_ss(void); //                    __m128f_ss(void); // flt_fixg10_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_fixr10_ss(void); //                    __m128f_ss(void); // flt_fixr10_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_norma2_ss(void); //                    __m128f_ss(void); // flt_norma2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_normb10_ss(void); //               __m128f_ss(void); // flt_normb10_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_normg10_ss(void); //               __m128f_ss(void); // flt_normg10_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_normr10_ss(void); //               __m128f_ss(void); // flt_normr10_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_mg_ss(void); //                        __m128f_ss(void); // flt_mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_negmg_ss(void); //                     __m128f_ss(void); // flt_negmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_halfmg_ss(void); //                    __m128f_ss(void); // flt_halfmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neghalfmg_ss(void); //                 __m128f_ss(void); // flt_neghalfmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mgdiv4_ss(void); //                    __m128f_ss(void); // flt_mgdiv4_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_negmgdiv4_ss(void); //                 __m128f_ss(void); // flt_negmgdiv4_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_halfmgxmg_ss(void); //                 __m128f_ss(void); // flt_halfmgxmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_halfmgxsqrmg_ss(void); //          __m128f_ss(void); // flt_halfmgxsqrmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_halfmgxcubemg_ss(void); //             __m128f_ss(void); // flt_halfmgxcubemg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neghalfmgxmg_ss(void); //          __m128f_ss(void); // flt_neghalfmgxmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neghalfmgxsqrmg_ss(void); //           __m128f_ss(void); // flt_neghalfmgxsqrmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neghalfmgxcubemg_ss(void); //      __m128f_ss(void); // flt_neghalfmgxcubemg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrmg_ss(void); //                     __m128f_ss(void); // flt_sqrmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_cubemg_ss(void); //                    __m128f_ss(void); // flt_cubemg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrtmg_ss(void); //                    __m128f_ss(void); // flt_sqrtmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_cbrtmg_ss(void); //                    __m128f_ss(void); // flt_cbrtmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcpmg_ss(void); //                     __m128f_ss(void); // flt_rcpmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcpsqrmg_ss(void); //              __m128f_ss(void); // flt_rcpsqrmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcpcubemg_ss(void); //                 __m128f_ss(void); // flt_rcpcubemg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcpsqrtmg_ss(void); //                 __m128f_ss(void); // flt_rcpsqrtmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcpcbrtmg_ss(void); //                 __m128f_ss(void); // flt_rcpcbrtmg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_2mg_ss(void); //                   __m128f_ss(void); // flt_2mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg2mg_ss(void); //                    __m128f_ss(void); // flt_neg2mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqr2mg_ss(void); //                    __m128f_ss(void); // flt_sqr2mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_cube2mg_ss(void); //               __m128f_ss(void); // flt_cube2mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrt2mg_ss(void); //               __m128f_ss(void); // flt_sqrt2mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_cbrt2mg_ss(void); //               __m128f_ss(void); // flt_cbrt2mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_4mg_ss(void); //                   __m128f_ss(void); // flt_4mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg4mg_ss(void); //                    __m128f_ss(void); // flt_neg4mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqr4mg_ss(void); //                    __m128f_ss(void); // flt_sqr4mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_cube4mg_ss(void); //               __m128f_ss(void); // flt_cube4mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrt4mg_ss(void); //               __m128f_ss(void); // flt_sqrt4mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_cbrt4mg_ss(void); //               __m128f_ss(void); // flt_cbrt4mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcp2mg_ss(void); //                    __m128f_ss(void); // flt_rcp2mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcp4mg_ss(void); //                    __m128f_ss(void); // flt_rcp4mg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_e_ss(void); //                         __m128f_ss(void); // flt_e_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_exp_ss(void); //                   __m128f_ss(void); // flt_exp_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_loge_ss(void); //                  __m128f_ss(void); // flt_loge_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_logehigh_ss(void); //              __m128f_ss(void); // flt_logehigh_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_log2e_ss(void); //                     __m128f_ss(void); // flt_log2e_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_log2ehigh_ss(void); //                 __m128f_ss(void); // flt_log2ehigh_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_log10e_ss(void); //                    __m128f_ss(void); // flt_log10e_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcplog2e_ss(void); //              __m128f_ss(void); // flt_rcplog2e_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcplog10e_ss(void); //                 __m128f_ss(void); // flt_rcplog10e_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_log2t_ss(void); //                     __m128f_ss(void); // flt_log2t_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_log2_ss(void); //                  __m128f_ss(void); // flt_log2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_log2high_ss(void); //              __m128f_ss(void); // flt_log2high_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_ln2_ss(void); //                   __m128f_ss(void); // flt_ln2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_ln2high_ss(void); //               __m128f_ss(void); // flt_ln2high_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1divln2_ss(void); //               __m128f_ss(void); // flt_1divln2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2divln2_ss(void); //               __m128f_ss(void); // flt_2divln2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_lnt_ss(void); //                   __m128f_ss(void); // flt_lnt_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_lnthigh_ss(void); //               __m128f_ss(void); // flt_lnthigh_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_ln10_ss(void); //                  __m128f_ss(void); // flt_ln10_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrt2_ss(void); //                     __m128f_ss(void); // flt_sqrt2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcpsqrt2_ss(void); //              __m128f_ss(void); // flt_rcpsqrt2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrt2div2_ss(void); //                 __m128f_ss(void); // flt_sqrt2div2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrt2div2high_ss(void); //             __m128f_ss(void); // flt_sqrt2div2high_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrt2div2low_ss(void); //          __m128f_ss(void); // flt_sqrt2div2low_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrthalf_ss(void); //              __m128f_ss(void); // flt_sqrthalf_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrthalfhigh_ss(void); //          __m128f_ss(void); // flt_sqrthalfhigh_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrthalflow_ss(void); //           __m128f_ss(void); // flt_sqrthalflow_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_pow2_ss(void); //                  __m128f_ss(void); // flt_pow2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcppow2_ss(void); //               __m128f_ss(void); // flt_rcppow2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_cbrt2_ss(void); //                     __m128f_ss(void); // flt_cbrt2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcpcbrt2_ss(void); //              __m128f_ss(void); // flt_rcpcbrt2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1div3_ss(void); //                     __m128f_ss(void); // flt_1div3_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1div7_ss(void); //                     __m128f_ss(void); // flt_1div7_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_1div9_ss(void); //                     __m128f_ss(void); // flt_1div9_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2div3_ss(void); //                     __m128f_ss(void); // flt_2div3_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2div7_ss(void); //                     __m128f_ss(void); // flt_2div7_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2div9_ss(void); //                     __m128f_ss(void); // flt_2div9_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_4div3_ss(void); //                     __m128f_ss(void); // flt_4div3_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_4div7_ss(void); //                     __m128f_ss(void); // flt_4div7_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_4div9_ss(void); //                     __m128f_ss(void); // flt_4div9_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_pi_ss(void); //                        __m128f_ss(void); // flt_pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_pihigh_ss(void); //                    __m128f_ss(void); // flt_pihigh_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_halfpi_ss(void); //                    __m128f_ss(void); // flt_halfpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2pi_ss(void); //                   __m128f_ss(void); // flt_2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_negpi_ss(void); //                     __m128f_ss(void); // flt_negpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neghalfpi_ss(void); //                 __m128f_ss(void); // flt_neghalfpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neg2pi_ss(void); //                    __m128f_ss(void); // flt_neg2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcppi_ss(void); //                     __m128f_ss(void); // flt_rcppi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_invpi_ss(void); //                     __m128f_ss(void); // flt_invpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcp2pi_ss(void); //                    __m128f_ss(void); // flt_rcp2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_inv2pi_ss(void); //                    __m128f_ss(void); // flt_inv2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_pidiv2_ss(void); //                    __m128f_ss(void); // flt_pidiv2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_pidiv2high_ss(void); //                __m128f_ss(void); // flt_pidiv2high_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_pidiv4_ss(void); //                    __m128f_ss(void); // flt_pidiv4_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_pidiv4high_ss(void); //                __m128f_ss(void); // flt_pidiv4high_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_pix3div4_ss(void); //              __m128f_ss(void); // flt_pix3div4_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrtpi_ss(void); //                    __m128f_ss(void); // flt_sqrtpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrt2pi_ss(void); //               __m128f_ss(void); // flt_sqrt2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrt2pihigh_ss(void); //           __m128f_ss(void); // flt_sqrt2pihigh_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcpsqrtpi_ss(void); //                 __m128f_ss(void); // flt_rcpsqrtpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcpsqrt2pi_ss(void); //                __m128f_ss(void); // flt_rcpsqrt2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrtpidiv2_ss(void); //                __m128f_ss(void); // flt_sqrtpidiv2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrtpidiv2high_ss(void); //            __m128f_ss(void); // flt_sqrtpidiv2high_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrt2pidiv2_ss(void); //           __m128f_ss(void); // flt_sqrt2pidiv2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrt2pidiv2high_ss(void); //       __m128f_ss(void); // flt_sqrt2pidiv2high_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2divpi_ss(void); //                    __m128f_ss(void); // flt_2divpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2div2pi_ss(void); //               __m128f_ss(void); // flt_2div2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2divsqrtpi_ss(void); //                __m128f_ss(void); // flt_2divsqrtpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_2divsqrt2pi_ss(void); //           __m128f_ss(void); // flt_2divsqrt2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_sqrt2divpi_ss(void); //                __m128f_ss(void); // flt_sqrt2divpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_logpi_ss(void); //                     __m128f_ss(void); // flt_logpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_log2pi_ss(void); //                    __m128f_ss(void); // flt_log2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_lnpi_ss(void); //                  __m128f_ss(void); // flt_lnpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_ln2pi_ss(void); //                     __m128f_ss(void); // flt_ln2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_powpi_ss(void); //                     __m128f_ss(void); // flt_powpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcppowpi_ss(void); //              __m128f_ss(void); // flt_rcppowpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_pow2pi_ss(void); //                    __m128f_ss(void); // flt_pow2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcppow2pi_ss(void); //                 __m128f_ss(void); // flt_rcppow2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_cbrtpi_ss(void); //                    __m128f_ss(void); // flt_cbrtpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcpcbrtpi_ss(void); //                 __m128f_ss(void); // flt_rcpcbrtpi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_cbrt2pi_ss(void); //               __m128f_ss(void); // flt_cbrt2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_rcpcbrt2pi_ss(void); //                __m128f_ss(void); // flt_rcpcbrt2pi_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_pow2tom126_ss(void); //                __m128f_ss(void); // flt_pow2tom126_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_pow2to126_ss(void); //                 __m128f_ss(void); // flt_pow2to126_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_normhuge_ss(void); //              __m128f_ss(void); // flt_normhuge_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_pow2to23_ss(void); //              __m128f_ss(void); // flt_pow2to23_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_pow2to24_ss(void); //              __m128f_ss(void); // flt_pow2to24_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_maxi32pow2to23_ss(void); //            __m128f_ss(void); // flt_maxi32pow2to23_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_pow2to31_ss(void); //              __m128f_ss(void); // flt_pow2to31_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_pow2to32_ss(void); //              __m128f_ss(void); // flt_pow2to32_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_remquobits_ss(void); //                __m128i_ss(void); // flt_remquobits_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_remquomask_ss(void); //                __m128i_ss(void); // flt_remquomask_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_trigploss_ss(void); //                 __m128f_ss(void); // flt_trigploss_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_degtorad_ss(void); //              __m128f_ss(void); // flt_degtorad_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_radtodeg_ss(void); //              __m128f_ss(void); // flt_radtodeg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_degtograd_ss(void); //                 __m128f_ss(void); // flt_degtograd_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_gradtodeg_ss(void); //                 __m128f_ss(void); // flt_gradtodeg_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_radtograd_ss(void); //                 __m128f_ss(void); // flt_radtograd_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_gradtorad_ss(void); //                 __m128f_ss(void); // flt_gradtorad_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_sungravity_ss(void); //                __m128f_ss(void); // flt_sungravity_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_jupitergravity_ss(void); //            __m128f_ss(void); // flt_jupitergravity_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_neptunegravity_ss(void); //            __m128f_ss(void); // flt_neptunegravity_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_saturngravity_ss(void); //             __m128f_ss(void); // flt_saturngravity_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_uranusgravity_ss(void); //             __m128f_ss(void); // flt_uranusgravity_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_earthgravity_ss(void); //          __m128f_ss(void); // flt_earthgravity_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_venusgravity_ss(void); //          __m128f_ss(void); // flt_venusgravity_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_marsgravity_ss(void); //           __m128f_ss(void); // flt_marsgravity_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mercurygravity_ss(void); //            __m128f_ss(void); // flt_mercurygravity_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_moongravity_ss(void); //           __m128f_ss(void); // flt_moongravity_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_plutogravity_ss(void); //          __m128f_ss(void); // flt_plutogravity_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_kmtoinch_ss(void); //              __m128f_ss(void); // flt_kmtoinch_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmtofeet_ss(void); //              __m128f_ss(void); // flt_kmtofeet_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmtoyards_ss(void); //                 __m128f_ss(void); // flt_kmtoyards_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmtomiles_ss(void); //                 __m128f_ss(void); // flt_kmtomiles_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_metoinch_ss(void); //              __m128f_ss(void); // flt_metoinch_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_metofeet_ss(void); //              __m128f_ss(void); // flt_metofeet_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_metoyards_ss(void); //                 __m128f_ss(void); // flt_metoyards_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_metomiles_ss(void); //                 __m128f_ss(void); // flt_metomiles_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_cmtoinch_ss(void); //              __m128f_ss(void); // flt_cmtoinch_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_cmtofeet_ss(void); //              __m128f_ss(void); // flt_cmtofeet_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_cmtoyards_ss(void); //                 __m128f_ss(void); // flt_cmtoyards_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_cmtomiles_ss(void); //                 __m128f_ss(void); // flt_cmtomiles_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_milltoinch_ss(void); //                __m128f_ss(void); // flt_milltoinch_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milltofeet_ss(void); //                __m128f_ss(void); // flt_milltofeet_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milltoyards_ss(void); //           __m128f_ss(void); // flt_milltoyards_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milltomiles_ss(void); //           __m128f_ss(void); // flt_milltomiles_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_inchtomill_ss(void); //                __m128f_ss(void); // flt_inchtomill_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_inchtocm_ss(void); //              __m128f_ss(void); // flt_inchtocm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_inchtome_ss(void); //              __m128f_ss(void); // flt_inchtome_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_inchtokm_ss(void); //              __m128f_ss(void); // flt_inchtokm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_inchtofeet_ss(void); //                __m128f_ss(void); // flt_inchtofeet_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_inchtoyards_ss(void); //           __m128f_ss(void); // flt_inchtoyards_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_inchtomiles_ss(void); //           __m128f_ss(void); // flt_inchtomiles_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_feettomill_ss(void); //                __m128f_ss(void); // flt_feettomill_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feettocm_ss(void); //              __m128f_ss(void); // flt_feettocm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feettome_ss(void); //              __m128f_ss(void); // flt_feettome_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feettokm_ss(void); //              __m128f_ss(void); // flt_feettokm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feettoinch_ss(void); //                __m128f_ss(void); // flt_feettoinch_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feettoyards_ss(void); //           __m128f_ss(void); // flt_feettoyards_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feettomiles_ss(void); //           __m128f_ss(void); // flt_feettomiles_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_yardstomill_ss(void); //           __m128f_ss(void); // flt_yardstomill_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_yardstocm_ss(void); //                 __m128f_ss(void); // flt_yardstocm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_yardstome_ss(void); //                 __m128f_ss(void); // flt_yardstome_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_yardstokm_ss(void); //                 __m128f_ss(void); // flt_yardstokm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_yardstoinch_ss(void); //           __m128f_ss(void); // flt_yardstoinch_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_yardstofeet_ss(void); //           __m128f_ss(void); // flt_yardstofeet_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_yardstomiles_ss(void); //          __m128f_ss(void); // flt_yardstomiles_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_milestomill_ss(void); //           __m128f_ss(void); // flt_milestomill_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milestocm_ss(void); //                 __m128f_ss(void); // flt_milestocm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milestome_ss(void); //                 __m128f_ss(void); // flt_milestome_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milestoinch_ss(void); //           __m128f_ss(void); // flt_milestokm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milestoinch_ss(void); //           __m128f_ss(void); // flt_milestoinch_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milestofeet_ss(void); //           __m128f_ss(void); // flt_milestofeet_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milestoyards_ss(void); //          __m128f_ss(void); // flt_milestoyards_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_kmphtomeps_ss(void); //                __m128f_ss(void); // flt_kmphtomeps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmphtokmps_ss(void); //                __m128f_ss(void); // flt_kmphtokmps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmphtomepm_ss(void); //                __m128f_ss(void); // flt_kmphtomepm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmphtomilesph_ss(void); //             __m128f_ss(void); // flt_kmphtomilesph_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmphtomilesps_ss(void); //             __m128f_ss(void); // flt_kmphtomilesps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmphtofeetps_ss(void); //          __m128f_ss(void); // flt_kmphtofeetps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmphtofeetpm_ss(void); //          __m128f_ss(void); // flt_kmphtofeetpm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_kmpstomeps_ss(void); //                __m128f_ss(void); // flt_kmpstomeps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmpstokmph_ss(void); //                __m128f_ss(void); // flt_kmpstokmph_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmpstomepm_ss(void); //                __m128f_ss(void); // flt_kmpstomepm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmpstomilesph_ss(void); //             __m128f_ss(void); // flt_kmpstomilesph_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmpstomilesps_ss(void); //             __m128f_ss(void); // flt_kmpstomilesps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmpstofeetps_ss(void); //          __m128f_ss(void); // flt_kmpstofeetps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_kmpstofeetpm_ss(void); //          __m128f_ss(void); // flt_kmpstofeetpm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_mepstokmph_ss(void); //                __m128f_ss(void); // flt_mepstokmph_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mepstokmps_ss(void); //                __m128f_ss(void); // flt_mepstokmps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mepstomepm_ss(void); //                __m128f_ss(void); // flt_mepstomepm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mepstomilesph_ss(void); //             __m128f_ss(void); // flt_mepstomilesph_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mepstomilesps_ss(void); //             __m128f_ss(void); // flt_mepstomilesps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mepstofeetps_ss(void); //          __m128f_ss(void); // flt_mepstofeetps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mepstofeetpm_ss(void); //          __m128f_ss(void); // flt_mepstofeetpm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_mepmtokmph_ss(void); //                __m128f_ss(void); // flt_mepmtokmph_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mepmtokmps_ss(void); //                __m128f_ss(void); // flt_mepmtokmps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mepmtomeps_ss(void); //                __m128f_ss(void); // flt_mepmtomeps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mepmtomilesph_ss(void); //             __m128f_ss(void); // flt_mepmtomilesph_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mepmtomilesps_ss(void); //             __m128f_ss(void); // flt_mepmtomilesps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mepmtofeetps_ss(void); //          __m128f_ss(void); // flt_mepmtofeetps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_mepmtofeetpm_ss(void); //          __m128f_ss(void); // flt_mepmtofeetpm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_milesphtokmph_ss(void); //             __m128f_ss(void); // flt_milesphtokmph_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milesphtokmps_ss(void); //             __m128f_ss(void); // flt_milesphtokmps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milesphtomeps_ss(void); //             __m128f_ss(void); // flt_milesphtomeps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milesphtomepm_ss(void); //             __m128f_ss(void); // flt_milesphtomepm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milesphtomilesps_ss(void); //      __m128f_ss(void); // flt_milesphtomilesps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milesphtofeetps_ss(void); //       __m128f_ss(void); // flt_milesphtofeetps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milesphtofeetpm_ss(void); //           __m128f_ss(void); // flt_milesphtofeetpm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_milespstokmph_ss(void); //             __m128f_ss(void); // flt_milespstokmph_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milespstokmps_ss(void); //             __m128f_ss(void); // flt_milespstokmps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milespstomeps_ss(void); //             __m128f_ss(void); // flt_milespstomeps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milespstomepm_ss(void); //             __m128f_ss(void); // flt_milespstomepm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milespstomilespm_ss(void); //      __m128f_ss(void); // flt_milespstomilespm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milespstofeetps_ss(void); //       __m128f_ss(void); // flt_milespstofeetps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_milespstofeetpm_ss(void); //           __m128f_ss(void); // flt_milespstofeetpm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_feetpstokmph_ss(void); //          __m128f_ss(void); // flt_feetpstokmph_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feetpstokmps_ss(void); //          __m128f_ss(void); // flt_feetpstokmps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feetpstomeps_ss(void); //          __m128f_ss(void); // flt_feetpstomeps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feetpstomepm_ss(void); //          __m128f_ss(void); // flt_feetpstomepm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feetpstomilesph_ss(void); //       __m128f_ss(void); // flt_feetpstomilesph_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feetpstomilesps_ss(void); //       __m128f_ss(void); // flt_feetpstomilesps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feetpstofeetpm_ss(void); //            __m128f_ss(void); // flt_feetpstofeetpm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_feetpmtokmph_ss(void); //          __m128f_ss(void); // flt_feetpmtokmph_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feetpmtokmps_ss(void); //          __m128f_ss(void); // flt_feetpmtokmps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feetpmtomeps_ss(void); //          __m128f_ss(void); // flt_feetpmtomeps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feetpmtomepm_ss(void); //          __m128f_ss(void); // flt_feetpmtomepm_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feetpmtomilesph_ss(void); //       __m128f_ss(void); // flt_feetpmtomilesph_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feetpmtomilesps_ss(void); //       __m128f_ss(void); // flt_feetpmtomilesps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_feetpmtofeetps_ss(void); //            __m128f_ss(void); // flt_feetpmtofeetps_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_soundspeedp50c_ss(void); //            __m128f_ss(void); // flt_soundspeedp50c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedp45c_ss(void); //            __m128f_ss(void); // flt_soundspeedp45c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedp40c_ss(void); //            __m128f_ss(void); // flt_soundspeedp40c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedp35c_ss(void); //            __m128f_ss(void); // flt_soundspeedp35c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedp30c_ss(void); //            __m128f_ss(void); // flt_soundspeedp30c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedp25c_ss(void); //            __m128f_ss(void); // flt_soundspeedp25c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedp20c_ss(void); //            __m128f_ss(void); // flt_soundspeedp20c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedp15c_ss(void); //            __m128f_ss(void); // flt_soundspeedp15c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedp10c_ss(void); //            __m128f_ss(void); // flt_soundspeedp10c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedp5c_ss(void); //             __m128f_ss(void); // flt_soundspeedp5c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeed0c_ss(void); //          __m128f_ss(void); // flt_soundspeed0c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedn5c_ss(void); //             __m128f_ss(void); // flt_soundspeedn5c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedn10c_ss(void); //            __m128f_ss(void); // flt_soundspeedn10c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedn15c_ss(void); //            __m128f_ss(void); // flt_soundspeedn15c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedn20c_ss(void); //            __m128f_ss(void); // flt_soundspeedn20c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedn25c_ss(void); //            __m128f_ss(void); // flt_soundspeedn25c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedn30c_ss(void); //            __m128f_ss(void); // flt_soundspeedn30c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedn35c_ss(void); //            __m128f_ss(void); // flt_soundspeedn35c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedn40c_ss(void); //            __m128f_ss(void); // flt_soundspeedn40c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedn45c_ss(void); //            __m128f_ss(void); // flt_soundspeedn45c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_soundspeedn50c_ss(void); //            __m128f_ss(void); // flt_soundspeedn50c_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_schscale_ss(void); //              __m128f_ss(void); // flt_schscale_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_thscale_ss(void); //               __m128f_ss(void); // flt_thscale_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

extern __m128 uX_ABI _uX_mm_const_0e_expest1_ss(void); //               __m128f_ss(void); // flt_expest1_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_expest2_ss(void); //               __m128f_ss(void); // flt_expest2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_expest3_ss(void); //               __m128f_ss(void); // flt_expest3_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_expest4_ss(void); //               __m128f_ss(void); // flt_expest4_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_expest5_ss(void); //               __m128f_ss(void); // flt_expest5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_expest6_ss(void); //               __m128f_ss(void); // flt_expest6_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_expest7_ss(void); //               __m128f_ss(void); // flt_expest7_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_logest0_ss(void); //               __m128f_ss(void); // flt_logest0_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_logest1_ss(void); //               __m128f_ss(void); // flt_logest1_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_logest2_ss(void); //               __m128f_ss(void); // flt_logest2_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_logest3_ss(void); //               __m128f_ss(void); // flt_logest3_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_logest4_ss(void); //               __m128f_ss(void); // flt_logest4_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_logest5_ss(void); //               __m128f_ss(void); // flt_logest5_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_logest6_ss(void); //               __m128f_ss(void); // flt_logest6_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false
extern __m128 uX_ABI _uX_mm_const_0e_logest7_ss(void); //               __m128f_ss(void); // flt_logest7_ss(void); // flt_false_ss(void); // flt_false_ss(void); // flt_false

uX_PACK_POP
uX_EXTERNC_END

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_DATA_H
