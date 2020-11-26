
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - UASM assembly library             / /
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

    //             sincos template, single precision
    extern const __m128 __m128_DP1F; //              __m128f; // (0.78515625 * 2.0)
    extern const __m128 __m128_DP2F; //              __m128f; // (2.4187564849853515625e-4 * 2.0)
    extern const __m128 __m128_DP3F; //              __m128f; // (3.77489497744594108e-8 * 2.0)

    extern const __m128 __m128_P0sinf; //              __m128f; // (-1.6666654611e-1)
    extern const __m128 __m128_P1sinf; //              __m128f; // (8.3321608736e-3)
    extern const __m128 __m128_P2sinf; //              __m128f; // (-1.9515295891e-4)

    extern const __m128 __m128_P0cosf; //              __m128f; // (4.166664568298827e-2)
    extern const __m128 __m128_P1cosf; //              __m128f; // (-1.388731625493765e-3)
    extern const __m128 __m128_P2cosf; //              __m128f; // (2.443315711809948e-5)
    //             sincos template, single precision

    extern const __m128 __m128_1lshl3; //                   __m128f; // flt_1lshl3
    extern const __m128 __m128_1lshl4; //                   __m128f; // flt_1lshl4
    extern const __m128 __m128_1lshl7; //                   __m128f; // flt_1lshl7
    extern const __m128 __m128_1lshl8; //                   __m128f; // flt_1lshl8
    extern const __m128 __m128_1lshl11; //              __m128f; // flt_1lshl11
    extern const __m128 __m128_1lshl12; //              __m128f; // flt_1lshl12
    extern const __m128 __m128_1lshl15; //              __m128f; // flt_1lshl15
    extern const __m128 __m128_1lshl16; //              __m128f; // flt_1lshl16
    extern const __m128 __m128_1lshl19; //              __m128f; // flt_1lshl19
    extern const __m128 __m128_1lshl20; //              __m128f; // flt_1lshl20
    extern const __m128 __m128_1lshl23; //              __m128f; // flt_1lshl23
    extern const __m128 __m128_1lshl24; //              __m128f; // flt_1lshl24
    extern const __m128 __m128_1lshl27; //              __m128f; // flt_1lshl27
    extern const __m128 __m128_1lshl28; //              __m128f; // flt_1lshl28
    extern const __m128 __m128_1lshl31; //              __m128f; // flt_1lshl31

    extern const __m128 __m128_neg1lshl3; //                __m128f; // flt_neg1lshl3
    extern const __m128 __m128_neg1lshl4; //                __m128f; // flt_neg1lshl4
    extern const __m128 __m128_neg1lshl7; //                __m128f; // flt_neg1lshl7
    extern const __m128 __m128_neg1lshl8; //                __m128f; // flt_neg1lshl8
    extern const __m128 __m128_neg1lshl11; //               __m128f; // flt_neg1lshl11
    extern const __m128 __m128_neg1lshl12; //               __m128f; // flt_neg1lshl12
    extern const __m128 __m128_neg1lshl15; //               __m128f; // flt_neg1lshl15
    extern const __m128 __m128_neg1lshl16; //               __m128f; // flt_neg1lshl16
    extern const __m128 __m128_neg1lshl19; //               __m128f; // flt_neg1lshl19
    extern const __m128 __m128_neg1lshl20; //               __m128f; // flt_neg1lshl20
    extern const __m128 __m128_neg1lshl23; //               __m128f; // flt_neg1lshl23
    extern const __m128 __m128_neg1lshl24; //               __m128f; // flt_neg1lshl24
    extern const __m128 __m128_neg1lshl27; //               __m128f; // flt_neg1lshl27
    extern const __m128 __m128_neg1lshl28; //               __m128f; // flt_neg1lshl28
    extern const __m128 __m128_neg1lshl31; //               __m128f; // flt_neg1lshl31

    extern const __m128 __m128_false; //                    __m128i; // flt_false
    extern const __m128 __m128_true; //                 __m128i; // flt_true
    extern const __m128 __m128_error; //                    __m128i; // flt_error

    extern const __m128 __m128_magic; //                    __m128i; // flt_magic
    extern const __m128 __m128_sign; //                 __m128i; // flt_sign
    extern const __m128 __m128_invsign; //              __m128i; // flt_invsign

    extern const __m128 __m128_inf; //                  __m128i; // flt_inf
    extern const __m128 __m128_fin; //                  __m128i; // flt_fin
    extern const __m128 __m128_invinf; //                   __m128i; // flt_invinf
    extern const __m128 __m128_neginf; //                   __m128i; // flt_neginf
    extern const __m128 __m128_nan; //                  __m128i; // flt_nan
    extern const __m128 __m128_qnan; //                 __m128i; // flt_qnan
    extern const __m128 __m128_negqnan; //              __m128i; // flt_negqnan
    extern const __m128 __m128_nantest; //              __m128i; // flt_nantest
    extern const __m128 __m128_abs; //                  __m128i; // flt_abs
    extern const __m128 __m128_min; //                  __m128f; // flt_min
    extern const __m128 __m128_max; //                  __m128f; // flt_max
    extern const __m128 __m128_nofraction; //               __m128f; // flt_nofraction
    extern const __m128 __m128_mindenorm; //                __m128f; // flt_mindenorm
    extern const __m128 __m128_denormlimit; //          __m128f; // flt_denormlimit
    extern const __m128 __m128_minnormal; //                __m128f; // flt_minnormal
    extern const __m128 __m128_maxnormal; //                __m128f; // flt_maxnormal

    extern const __m128 __m128_decdig; //                   __m128f; // flt_decdig
    extern const __m128 __m128_dig; //                  __m128f; // flt_dig
    extern const __m128 __m128_negdecdig; //                __m128f; // flt_negdecdig
    extern const __m128 __m128_negdig; //                   __m128f; // flt_negdig
    extern const __m128 __m128_eps; //                  __m128f; // flt_eps
    extern const __m128 __m128_epsilon; //              __m128f; // flt_epsilon
    extern const __m128 __m128_normeps; //              __m128f; // flt_normeps
    extern const __m128 __m128_guard; //                    __m128f; // flt_guard
    extern const __m128 __m128_mantpow2; //             __m128f; // flt_mantpow2
    extern const __m128 __m128_maxmantpow2; //          __m128f; // flt_maxmantpow2
    extern const __m128 __m128_mantdig; //              __m128f; // flt_mantdig
    extern const __m128 __m128_mant; //                 __m128f; // flt_mant
    extern const __m128 __m128_negmantdig; //               __m128f; // flt_negmantdig
    extern const __m128 __m128_negmant; //              __m128f; // flt_negmant
    extern const __m128 __m128_maxexp; //                   __m128f; // flt_maxexp
    extern const __m128 __m128_expsign; //              __m128f; // flt_expsign
    extern const __m128 __m128_exp; //                  __m128f; // flt_exp
    extern const __m128 __m128_negmaxexp; //                __m128f; // flt_negmaxexp
    extern const __m128 __m128_negexpsign; //               __m128f; // flt_negexpsign
    extern const __m128 __m128_negexp; //                   __m128f; // flt_negexp
    extern const __m128 __m128_subnormalexp; //         __m128f; // flt_subnormalexp
    extern const __m128 __m128_minexp; //                   __m128f; // flt_minexp
    extern const __m128 __m128_maxdecexp; //                __m128f; // flt_maxdecexp
    extern const __m128 __m128_negmaxdecexp; //         __m128f; // flt_negmaxdecexp
    extern const __m128 __m128_mindecexp; //                __m128f; // flt_mindecexp
    extern const __m128 __m128_expfield; //             __m128f; // flt_expfield
    extern const __m128 __m128_mantfield; //                __m128f; // flt_mantfield
    extern const __m128 __m128_norm; //                 __m128f; // flt_norm
    extern const __m128 __m128_radix; //                    __m128f; // flt_radix
    extern const __m128 __m128_rounds; //                   __m128f; // flt_rounds
    extern const __m128 __m128_subdec; //                   __m128f; // flt_subdec
    extern const __m128 __m128_sqrtmax; //              __m128f; // flt_sqrtmax
    extern const __m128 __m128_smallnormal; //          __m128f; // flt_smallnormal

    extern const __m128 __m128_halfminuseps; //         __m128f; // flt_halfminuseps
    extern const __m128 __m128_trueint; //              __m128f; // flt_trueint

    extern const __m128 __m128_byte; //                 __m128f; // flt_byte
    extern const __m128 __m128_byte_even; //            __m128f_even; // flt_byte
    extern const __m128 __m128_byte_odd; //             __m128f_odd; // flt_byte
    extern const __m128 __m128_4low; //                 __m128f; // flt_4low
    extern const __m128 __m128_4high; //                    __m128f; // flt_4high
    extern const __m128 __m128_flip4; //                    __m128f; // flt_flip4
    extern const __m128 __m128_8low; //                 __m128f; // flt_8low
    extern const __m128 __m128_8high; //                    __m128f; // flt_8high
    extern const __m128 __m128_flip8; //                    __m128f; // flt_flip8
    extern const __m128 __m128_16low; //                    __m128f; // flt_16low
    extern const __m128 __m128_16high; //                   __m128f; // flt_16high
    extern const __m128 __m128_flip16; //                   __m128f; // flt_flip16
    extern const __m128 __m128_24low; //                    __m128f; // flt_24low
    extern const __m128 __m128_24high; //                   __m128f; // flt_24high
    extern const __m128 __m128_flip24; //                   __m128f; // flt_flip24
    extern const __m128 __m128_28low; //                    __m128f; // flt_28low
    extern const __m128 __m128_28high; //                   __m128f; // flt_28high
    extern const __m128 __m128_flip28; //                   __m128f; // flt_flip28
    extern const __m128 __m128_32low; //                    __m128f; // flt_32low
    extern const __m128 __m128_32high; //                   __m128f; // flt_32high
    extern const __m128 __m128_flip32; //                   __m128f; // flt_flip32

    extern const __m128 __m128_0; //                        __m128f; // flt_0
    extern const __m128 __m128_0d0001; //               __m128f; // flt_0d0001
    extern const __m128 __m128_0d0002; //               __m128f; // flt_0d0002
    extern const __m128 __m128_0d0003; //               __m128f; // flt_0d0003
    extern const __m128 __m128_0d0004; //               __m128f; // flt_0d0004
    extern const __m128 __m128_0d0005; //               __m128f; // flt_0d0005
    extern const __m128 __m128_0d0006; //               __m128f; // flt_0d0006
    extern const __m128 __m128_0d0007; //               __m128f; // flt_0d0007
    extern const __m128 __m128_0d0008; //               __m128f; // flt_0d0008
    extern const __m128 __m128_0d0009; //               __m128f; // flt_0d0009
    extern const __m128 __m128_0d001; //                    __m128f; // flt_0d001
    extern const __m128 __m128_0d002; //                    __m128f; // flt_0d002
    extern const __m128 __m128_0d003; //                    __m128f; // flt_0d003
    extern const __m128 __m128_0d004; //                    __m128f; // flt_0d004
    extern const __m128 __m128_0d005; //                    __m128f; // flt_0d005
    extern const __m128 __m128_0d006; //                    __m128f; // flt_0d006
    extern const __m128 __m128_0d007; //                    __m128f; // flt_0d007
    extern const __m128 __m128_0d008; //                    __m128f; // flt_0d008
    extern const __m128 __m128_0d009; //                    __m128f; // flt_0d009
    extern const __m128 __m128_0d01; //                     __m128f; // flt_0d01
    extern const __m128 __m128_0d02; //                     __m128f; // flt_0d02
    extern const __m128 __m128_0d025; //                    __m128f; // flt_0d025
    extern const __m128 __m128_0d03; //                     __m128f; // flt_0d03
    extern const __m128 __m128_0d04; //                     __m128f; // flt_0d04
    extern const __m128 __m128_0d05; //                     __m128f; // flt_0d05
    extern const __m128 __m128_0d06; //                     __m128f; // flt_0d06
    extern const __m128 __m128_0d07; //                     __m128f; // flt_0d07
    extern const __m128 __m128_0d08; //                     __m128f; // flt_0d08
    extern const __m128 __m128_0d09; //                     __m128f; // flt_0d09
    extern const __m128 __m128_0d1; //                  __m128f; // flt_0d1
    extern const __m128 __m128_0d2; //                  __m128f; // flt_0d2
    extern const __m128 __m128_0d25; //                     __m128f; // flt_0d25
    extern const __m128 __m128_0d3; //                  __m128f; // flt_0d3
    extern const __m128 __m128_0d4; //                  __m128f; // flt_0d4
    extern const __m128 __m128_0d5; //                  __m128f; // flt_0d5
    extern const __m128 __m128_0d6; //                  __m128f; // flt_0d6
    extern const __m128 __m128_0d7; //                  __m128f; // flt_0d7
    extern const __m128 __m128_0d8; //                  __m128f; // flt_0d8
    extern const __m128 __m128_0d9; //                  __m128f; // flt_0d9
    extern const __m128 __m128_1; //                        __m128f; // flt_1
    extern const __m128 __m128_1d25; //                     __m128f; // flt_1d25
    extern const __m128 __m128_1d5; //                  __m128f; // flt_1d5
    extern const __m128 __m128_2; //                        __m128f; // flt_2
    extern const __m128 __m128_2d25; //                     __m128f; // flt_2d25
    extern const __m128 __m128_2d5; //                  __m128f; // flt_2d5
    extern const __m128 __m128_3; //                        __m128f; // flt_3
    extern const __m128 __m128_3d25; //                     __m128f; // flt_3d25
    extern const __m128 __m128_3d5; //                  __m128f; // flt_3d5
    extern const __m128 __m128_4; //                        __m128f; // flt_4
    extern const __m128 __m128_4d25; //                     __m128f; // flt_4d25
    extern const __m128 __m128_4d5; //                  __m128f; // flt_4d5
    extern const __m128 __m128_5; //                        __m128f; // flt_5
    extern const __m128 __m128_5d25; //                     __m128f; // flt_5d25
    extern const __m128 __m128_5d5; //                  __m128f; // flt_5d5
    extern const __m128 __m128_6; //                        __m128f; // flt_6
    extern const __m128 __m128_6d25; //                     __m128f; // flt_6d25
    extern const __m128 __m128_6d5; //                  __m128f; // flt_6d5
    extern const __m128 __m128_7; //                        __m128f; // flt_7
    extern const __m128 __m128_7d25; //                     __m128f; // flt_7d25
    extern const __m128 __m128_7d5; //                  __m128f; // flt_7d5
    extern const __m128 __m128_8; //                        __m128f; // flt_8
    extern const __m128 __m128_8d25; //                     __m128f; // flt_8d25
    extern const __m128 __m128_8d5; //                  __m128f; // flt_8d5
    extern const __m128 __m128_9; //                        __m128f; // flt_9
    extern const __m128 __m128_9d25; //                     __m128f; // flt_9d25
    extern const __m128 __m128_9d5; //                  __m128f; // flt_9d5
    extern const __m128 __m128_10; //                   __m128f; // flt_10
    extern const __m128 __m128_11; //                   __m128f; // flt_11
    extern const __m128 __m128_12; //                   __m128f; // flt_12
    extern const __m128 __m128_13; //                   __m128f; // flt_13
    extern const __m128 __m128_14; //                   __m128f; // flt_14
    extern const __m128 __m128_15; //                   __m128f; // flt_15
    extern const __m128 __m128_16; //                   __m128f; // flt_16
    extern const __m128 __m128_17; //                   __m128f; // flt_17
    extern const __m128 __m128_18; //                   __m128f; // flt_18
    extern const __m128 __m128_19; //                   __m128f; // flt_19
    extern const __m128 __m128_20; //                   __m128f; // flt_20
    extern const __m128 __m128_21; //                   __m128f; // flt_21
    extern const __m128 __m128_22; //                   __m128f; // flt_22
    extern const __m128 __m128_23; //                   __m128f; // flt_23
    extern const __m128 __m128_24; //                   __m128f; // flt_24
    extern const __m128 __m128_24d5; //                     __m128f; // flt_24d5
    extern const __m128 __m128_25; //                   __m128f; // flt_25
    extern const __m128 __m128_26; //                   __m128f; // flt_26
    extern const __m128 __m128_27; //                   __m128f; // flt_27
    extern const __m128 __m128_28; //                   __m128f; // flt_28
    extern const __m128 __m128_29; //                   __m128f; // flt_29
    extern const __m128 __m128_30; //                   __m128f; // flt_30
    extern const __m128 __m128_31; //                   __m128f; // flt_31
    extern const __m128 __m128_32; //                   __m128f; // flt_32
    extern const __m128 __m128_33; //                   __m128f; // flt_33
    extern const __m128 __m128_34; //                   __m128f; // flt_34
    extern const __m128 __m128_35; //                   __m128f; // flt_35
    extern const __m128 __m128_36; //                   __m128f; // flt_36
    extern const __m128 __m128_37; //                   __m128f; // flt_37
    extern const __m128 __m128_38; //                   __m128f; // flt_38
    extern const __m128 __m128_39; //                   __m128f; // flt_39
    extern const __m128 __m128_40; //                   __m128f; // flt_40
    extern const __m128 __m128_41; //                   __m128f; // flt_41
    extern const __m128 __m128_42; //                   __m128f; // flt_42
    extern const __m128 __m128_43; //                   __m128f; // flt_43
    extern const __m128 __m128_44; //                   __m128f; // flt_44
    extern const __m128 __m128_45; //                   __m128f; // flt_45
    extern const __m128 __m128_46; //                   __m128f; // flt_46
    extern const __m128 __m128_47; //                   __m128f; // flt_47
    extern const __m128 __m128_48; //                   __m128f; // flt_48
    extern const __m128 __m128_49; //                   __m128f; // flt_49
    extern const __m128 __m128_50; //                   __m128f; // flt_50
    extern const __m128 __m128_51; //                   __m128f; // flt_51
    extern const __m128 __m128_52; //                   __m128f; // flt_52
    extern const __m128 __m128_53; //                   __m128f; // flt_53
    extern const __m128 __m128_54; //                   __m128f; // flt_54
    extern const __m128 __m128_55; //                   __m128f; // flt_55
    extern const __m128 __m128_56; //                   __m128f; // flt_56
    extern const __m128 __m128_57; //                   __m128f; // flt_57
    extern const __m128 __m128_58; //                   __m128f; // flt_58
    extern const __m128 __m128_59; //                   __m128f; // flt_59
    extern const __m128 __m128_60; //                   __m128f; // flt_60
    extern const __m128 __m128_61; //                   __m128f; // flt_61
    extern const __m128 __m128_62; //                   __m128f; // flt_62
    extern const __m128 __m128_63; //                   __m128f; // flt_63
    extern const __m128 __m128_64; //                   __m128f; // flt_64
    extern const __m128 __m128_65; //                   __m128f; // flt_65
    extern const __m128 __m128_66; //                   __m128f; // flt_66
    extern const __m128 __m128_67; //                   __m128f; // flt_67
    extern const __m128 __m128_68; //                   __m128f; // flt_68
    extern const __m128 __m128_69; //                   __m128f; // flt_69
    extern const __m128 __m128_70; //                   __m128f; // flt_70
    extern const __m128 __m128_71; //                   __m128f; // flt_71
    extern const __m128 __m128_72; //                   __m128f; // flt_72
    extern const __m128 __m128_73; //                   __m128f; // flt_73
    extern const __m128 __m128_74; //                   __m128f; // flt_74
    extern const __m128 __m128_75; //                   __m128f; // flt_75
    extern const __m128 __m128_76; //                   __m128f; // flt_76
    extern const __m128 __m128_77; //                   __m128f; // flt_77
    extern const __m128 __m128_78; //                   __m128f; // flt_78
    extern const __m128 __m128_79; //                   __m128f; // flt_79
    extern const __m128 __m128_80; //                   __m128f; // flt_80
    extern const __m128 __m128_81; //                   __m128f; // flt_81
    extern const __m128 __m128_82; //                   __m128f; // flt_82
    extern const __m128 __m128_83; //                   __m128f; // flt_83
    extern const __m128 __m128_84; //                   __m128f; // flt_84
    extern const __m128 __m128_85; //                   __m128f; // flt_85
    extern const __m128 __m128_86; //                   __m128f; // flt_86
    extern const __m128 __m128_87; //                   __m128f; // flt_87
    extern const __m128 __m128_88; //                   __m128f; // flt_88
    extern const __m128 __m128_89; //                   __m128f; // flt_89
    extern const __m128 __m128_90; //                   __m128f; // flt_90
    extern const __m128 __m128_91; //                   __m128f; // flt_91
    extern const __m128 __m128_92; //                   __m128f; // flt_92
    extern const __m128 __m128_93; //                   __m128f; // flt_93
    extern const __m128 __m128_94; //                   __m128f; // flt_94
    extern const __m128 __m128_95; //                   __m128f; // flt_95
    extern const __m128 __m128_96; //                   __m128f; // flt_96
    extern const __m128 __m128_97; //                   __m128f; // flt_97
    extern const __m128 __m128_98; //                   __m128f; // flt_98
    extern const __m128 __m128_99; //                   __m128f; // flt_99
    extern const __m128 __m128_100; //                  __m128f; // flt_100
    extern const __m128 __m128_125; //                  __m128f; // flt_125
    extern const __m128 __m128_126; //                  __m128f; // flt_126
    extern const __m128 __m128_127; //                  __m128f; // flt_127
    extern const __m128 __m128_128; //                  __m128f; // flt_128
    extern const __m128 __m128_140; //                  __m128f; // flt_140
    extern const __m128 __m128_145; //                  __m128f; // flt_145
    extern const __m128 __m128_150; //                  __m128f; // flt_150
    extern const __m128 __m128_180; //                  __m128f; // flt_180
    extern const __m128 __m128_253; //                  __m128f; // flt_253
    extern const __m128 __m128_254; //                  __m128f; // flt_254
    extern const __m128 __m128_255; //                  __m128f; // flt_255
    extern const __m128 __m128_256; //                  __m128f; // flt_256
    extern const __m128 __m128_360; //                  __m128f; // flt_360
    extern const __m128 __m128_511; //                  __m128f; // flt_511
    extern const __m128 __m128_512; //                  __m128f; // flt_512
    extern const __m128 __m128_513; //                  __m128f; // flt_513
    extern const __m128 __m128_1023; //                     __m128f; // flt_1023
    extern const __m128 __m128_1024; //                     __m128f; // flt_1024
    extern const __m128 __m128_1025; //                     __m128f; // flt_1025

    extern const __m128 __m128_32767; //                    __m128f; // flt_32767
    extern const __m128 __m128_32768; //                    __m128f; // flt_32768
    extern const __m128 __m128_65535; //                    __m128f; // flt_65535
    extern const __m128 __m128_65536; //                    __m128f; // flt_65536
    extern const __m128 __m128_2147483647; //           __m128f; // flt_2147483647
    extern const __m128 __m128_2147483648; //           __m128f; // flt_2147483648
    extern const __m128 __m128_4294967295; //           __m128f; // flt_4294967295
    extern const __m128 __m128_4294967296; //           __m128f; // flt_4294967296

    extern const __m128 __m128_neg0; //                     __m128f; // flt_neg0
    extern const __m128 __m128_neg0d0001; //                __m128f; // flt_neg0d0001
    extern const __m128 __m128_neg0d0002; //                __m128f; // flt_neg0d0002
    extern const __m128 __m128_neg0d0003; //                __m128f; // flt_neg0d0003
    extern const __m128 __m128_neg0d0004; //                __m128f; // flt_neg0d0004
    extern const __m128 __m128_neg0d0005; //                __m128f; // flt_neg0d0005
    extern const __m128 __m128_neg0d0006; //                __m128f; // flt_neg0d0006
    extern const __m128 __m128_neg0d0007; //                __m128f; // flt_neg0d0007
    extern const __m128 __m128_neg0d0008; //                __m128f; // flt_neg0d0008
    extern const __m128 __m128_neg0d0009; //                __m128f; // flt_neg0d0009
    extern const __m128 __m128_neg0d001; //                 __m128f; // flt_neg0d001
    extern const __m128 __m128_neg0d002; //                 __m128f; // flt_neg0d002
    extern const __m128 __m128_neg0d003; //                 __m128f; // flt_neg0d003
    extern const __m128 __m128_neg0d004; //                 __m128f; // flt_neg0d004
    extern const __m128 __m128_neg0d005; //                 __m128f; // flt_neg0d005
    extern const __m128 __m128_neg0d006; //                 __m128f; // flt_neg0d006
    extern const __m128 __m128_neg0d007; //                 __m128f; // flt_neg0d007
    extern const __m128 __m128_neg0d008; //                 __m128f; // flt_neg0d008
    extern const __m128 __m128_neg0d009; //                 __m128f; // flt_neg0d009
    extern const __m128 __m128_neg0d01; //              __m128f; // flt_neg0d01
    extern const __m128 __m128_neg0d02; //              __m128f; // flt_neg0d02
    extern const __m128 __m128_neg0d025; //                 __m128f; // flt_neg0d025
    extern const __m128 __m128_neg0d03; //              __m128f; // flt_neg0d03
    extern const __m128 __m128_neg0d04; //              __m128f; // flt_neg0d04
    extern const __m128 __m128_neg0d05; //              __m128f; // flt_neg0d05
    extern const __m128 __m128_neg0d06; //              __m128f; // flt_neg0d06
    extern const __m128 __m128_neg0d07; //              __m128f; // flt_neg0d07
    extern const __m128 __m128_neg0d08; //              __m128f; // flt_neg0d08
    extern const __m128 __m128_neg0d09; //              __m128f; // flt_neg0d09
    extern const __m128 __m128_neg0d1; //               __m128f; // flt_neg0d1
    extern const __m128 __m128_neg0d2; //               __m128f; // flt_neg0d2
    extern const __m128 __m128_neg0d25; //              __m128f; // flt_neg0d25
    extern const __m128 __m128_neg0d3; //               __m128f; // flt_neg0d3
    extern const __m128 __m128_neg0d4; //               __m128f; // flt_neg0d4
    extern const __m128 __m128_neg0d5; //               __m128f; // flt_neg0d5
    extern const __m128 __m128_neg0d6; //               __m128f; // flt_neg0d6
    extern const __m128 __m128_neg0d7; //               __m128f; // flt_neg0d7
    extern const __m128 __m128_neg0d8; //               __m128f; // flt_neg0d8
    extern const __m128 __m128_neg0d9; //               __m128f; // flt_neg0d9
    extern const __m128 __m128_neg1; //                     __m128f; // flt_neg1
    extern const __m128 __m128_neg1d25; //              __m128f; // flt_neg1d25
    extern const __m128 __m128_neg1d5; //               __m128f; // flt_neg1d5
    extern const __m128 __m128_neg2; //                     __m128f; // flt_neg2
    extern const __m128 __m128_neg2d25; //              __m128f; // flt_neg2d25
    extern const __m128 __m128_neg2d5; //               __m128f; // flt_neg2d5
    extern const __m128 __m128_neg3; //                     __m128f; // flt_neg3
    extern const __m128 __m128_neg3d25; //              __m128f; // flt_neg3d25
    extern const __m128 __m128_neg3d5; //               __m128f; // flt_neg3d5
    extern const __m128 __m128_neg4; //                     __m128f; // flt_neg4
    extern const __m128 __m128_neg4d25; //              __m128f; // flt_neg4d25
    extern const __m128 __m128_neg4d5; //               __m128f; // flt_neg4d5
    extern const __m128 __m128_neg5; //                     __m128f; // flt_neg5
    extern const __m128 __m128_neg5d25; //              __m128f; // flt_neg5d25
    extern const __m128 __m128_neg5d5; //               __m128f; // flt_neg5d5
    extern const __m128 __m128_neg6; //                     __m128f; // flt_neg6
    extern const __m128 __m128_neg6d25; //              __m128f; // flt_neg6d25
    extern const __m128 __m128_neg6d5; //               __m128f; // flt_neg6d5
    extern const __m128 __m128_neg7; //                     __m128f; // flt_neg7
    extern const __m128 __m128_neg7d25; //              __m128f; // flt_neg7d25
    extern const __m128 __m128_neg7d5; //               __m128f; // flt_neg7d5
    extern const __m128 __m128_neg8; //                     __m128f; // flt_neg8
    extern const __m128 __m128_neg8d25; //              __m128f; // flt_neg8d25
    extern const __m128 __m128_neg8d5; //               __m128f; // flt_neg8d5
    extern const __m128 __m128_neg9; //                     __m128f; // flt_neg9
    extern const __m128 __m128_neg9d25; //              __m128f; // flt_neg9d25
    extern const __m128 __m128_neg9d5; //               __m128f; // flt_neg9d5
    extern const __m128 __m128_neg10; //                    __m128f; // flt_neg10
    extern const __m128 __m128_neg11; //                    __m128f; // flt_neg11
    extern const __m128 __m128_neg12; //                    __m128f; // flt_neg12
    extern const __m128 __m128_neg13; //                    __m128f; // flt_neg13
    extern const __m128 __m128_neg14; //                    __m128f; // flt_neg14
    extern const __m128 __m128_neg15; //                    __m128f; // flt_neg15
    extern const __m128 __m128_neg16; //                    __m128f; // flt_neg16
    extern const __m128 __m128_neg17; //                    __m128f; // flt_neg17
    extern const __m128 __m128_neg18; //                    __m128f; // flt_neg18
    extern const __m128 __m128_neg19; //                    __m128f; // flt_neg19
    extern const __m128 __m128_neg20; //                    __m128f; // flt_neg20
    extern const __m128 __m128_neg21; //                    __m128f; // flt_neg21
    extern const __m128 __m128_neg22; //                    __m128f; // flt_neg22
    extern const __m128 __m128_neg23; //                    __m128f; // flt_neg23
    extern const __m128 __m128_neg24; //                    __m128f; // flt_neg24
    extern const __m128 __m128_neg24d5; //              __m128f; // flt_neg24d5
    extern const __m128 __m128_neg25; //                    __m128f; // flt_neg25
    extern const __m128 __m128_neg26; //                    __m128f; // flt_neg26
    extern const __m128 __m128_neg27; //                    __m128f; // flt_neg27
    extern const __m128 __m128_neg28; //                    __m128f; // flt_neg28
    extern const __m128 __m128_neg29; //                    __m128f; // flt_neg29
    extern const __m128 __m128_neg30; //                    __m128f; // flt_neg30
    extern const __m128 __m128_neg31; //                    __m128f; // flt_neg31
    extern const __m128 __m128_neg32; //                    __m128f; // flt_neg32
    extern const __m128 __m128_neg33; //                    __m128f; // flt_neg33
    extern const __m128 __m128_neg34; //                    __m128f; // flt_neg34
    extern const __m128 __m128_neg35; //                    __m128f; // flt_neg35
    extern const __m128 __m128_neg36; //                    __m128f; // flt_neg36
    extern const __m128 __m128_neg37; //                    __m128f; // flt_neg37
    extern const __m128 __m128_neg38; //                    __m128f; // flt_neg38
    extern const __m128 __m128_neg39; //                    __m128f; // flt_neg39
    extern const __m128 __m128_neg40; //                    __m128f; // flt_neg40
    extern const __m128 __m128_neg41; //                    __m128f; // flt_neg41
    extern const __m128 __m128_neg42; //                    __m128f; // flt_neg42
    extern const __m128 __m128_neg43; //                    __m128f; // flt_neg43
    extern const __m128 __m128_neg44; //                    __m128f; // flt_neg44
    extern const __m128 __m128_neg45; //                    __m128f; // flt_neg45
    extern const __m128 __m128_neg46; //                    __m128f; // flt_neg46
    extern const __m128 __m128_neg47; //                    __m128f; // flt_neg47
    extern const __m128 __m128_neg48; //                    __m128f; // flt_neg48
    extern const __m128 __m128_neg49; //                    __m128f; // flt_neg49
    extern const __m128 __m128_neg50; //                    __m128f; // flt_neg50
    extern const __m128 __m128_neg51; //                    __m128f; // flt_neg51
    extern const __m128 __m128_neg52; //                    __m128f; // flt_neg52
    extern const __m128 __m128_neg53; //                    __m128f; // flt_neg53
    extern const __m128 __m128_neg54; //                    __m128f; // flt_neg54
    extern const __m128 __m128_neg55; //                    __m128f; // flt_neg55
    extern const __m128 __m128_neg56; //                    __m128f; // flt_neg56
    extern const __m128 __m128_neg57; //                    __m128f; // flt_neg57
    extern const __m128 __m128_neg58; //                    __m128f; // flt_neg58
    extern const __m128 __m128_neg59; //                    __m128f; // flt_neg59
    extern const __m128 __m128_neg60; //                    __m128f; // flt_neg60
    extern const __m128 __m128_neg61; //                    __m128f; // flt_neg61
    extern const __m128 __m128_neg62; //                    __m128f; // flt_neg62
    extern const __m128 __m128_neg63; //                    __m128f; // flt_neg63
    extern const __m128 __m128_neg64; //                    __m128f; // flt_neg64
    extern const __m128 __m128_neg65; //                    __m128f; // flt_neg65
    extern const __m128 __m128_neg66; //                    __m128f; // flt_neg66
    extern const __m128 __m128_neg67; //                    __m128f; // flt_neg67
    extern const __m128 __m128_neg68; //                    __m128f; // flt_neg68
    extern const __m128 __m128_neg69; //                    __m128f; // flt_neg69
    extern const __m128 __m128_neg70; //                    __m128f; // flt_neg70
    extern const __m128 __m128_neg71; //                    __m128f; // flt_neg71
    extern const __m128 __m128_neg72; //                    __m128f; // flt_neg72
    extern const __m128 __m128_neg73; //                    __m128f; // flt_neg73
    extern const __m128 __m128_neg74; //                    __m128f; // flt_neg74
    extern const __m128 __m128_neg75; //                    __m128f; // flt_neg75
    extern const __m128 __m128_neg76; //                    __m128f; // flt_neg76
    extern const __m128 __m128_neg77; //                    __m128f; // flt_neg77
    extern const __m128 __m128_neg78; //                    __m128f; // flt_neg78
    extern const __m128 __m128_neg79; //                    __m128f; // flt_neg79
    extern const __m128 __m128_neg80; //                    __m128f; // flt_neg80
    extern const __m128 __m128_neg81; //                    __m128f; // flt_neg81
    extern const __m128 __m128_neg82; //                    __m128f; // flt_neg82
    extern const __m128 __m128_neg83; //                    __m128f; // flt_neg83
    extern const __m128 __m128_neg84; //                    __m128f; // flt_neg84
    extern const __m128 __m128_neg85; //                    __m128f; // flt_neg85
    extern const __m128 __m128_neg86; //                    __m128f; // flt_neg86
    extern const __m128 __m128_neg87; //                    __m128f; // flt_neg87
    extern const __m128 __m128_neg88; //                    __m128f; // flt_neg88
    extern const __m128 __m128_neg89; //                    __m128f; // flt_neg89
    extern const __m128 __m128_neg90; //                    __m128f; // flt_neg90
    extern const __m128 __m128_neg91; //                    __m128f; // flt_neg91
    extern const __m128 __m128_neg92; //                    __m128f; // flt_neg92
    extern const __m128 __m128_neg93; //                    __m128f; // flt_neg93
    extern const __m128 __m128_neg94; //                    __m128f; // flt_neg94
    extern const __m128 __m128_neg95; //                    __m128f; // flt_neg95
    extern const __m128 __m128_neg96; //                    __m128f; // flt_neg96
    extern const __m128 __m128_neg97; //                    __m128f; // flt_neg97
    extern const __m128 __m128_neg98; //                    __m128f; // flt_neg98
    extern const __m128 __m128_neg99; //                    __m128f; // flt_neg99
    extern const __m128 __m128_neg100; //               __m128f; // flt_neg100
    extern const __m128 __m128_neg125; //               __m128f; // flt_neg125
    extern const __m128 __m128_neg126; //               __m128f; // flt_neg126
    extern const __m128 __m128_neg127; //               __m128f; // flt_neg127
    extern const __m128 __m128_neg128; //               __m128f; // flt_neg128
    extern const __m128 __m128_neg140; //               __m128f; // flt_neg140
    extern const __m128 __m128_neg145; //               __m128f; // flt_neg145
    extern const __m128 __m128_neg150; //               __m128f; // flt_neg150
    extern const __m128 __m128_neg180; //               __m128f; // flt_neg180
    extern const __m128 __m128_neg253; //               __m128f; // flt_neg253
    extern const __m128 __m128_neg254; //               __m128f; // flt_neg254
    extern const __m128 __m128_neg255; //               __m128f; // flt_neg255
    extern const __m128 __m128_neg256; //               __m128f; // flt_neg256
    extern const __m128 __m128_neg360; //               __m128f; // flt_neg360
    extern const __m128 __m128_neg511; //               __m128f; // flt_neg511
    extern const __m128 __m128_neg512; //               __m128f; // flt_neg512
    extern const __m128 __m128_neg513; //               __m128f; // flt_neg513
    extern const __m128 __m128_neg1023; //              __m128f; // flt_neg1023
    extern const __m128 __m128_neg1024; //              __m128f; // flt_neg1024
    extern const __m128 __m128_neg1025; //              __m128f; // flt_neg1025

    extern const __m128 __m128_neg32767; //                 __m128f; // flt_neg32767
    extern const __m128 __m128_neg32768; //                 __m128f; // flt_neg32768
    extern const __m128 __m128_neg65535; //                 __m128f; // flt_neg65535
    extern const __m128 __m128_neg65536; //                 __m128f; // flt_neg65536
    extern const __m128 __m128_neg2147483647; //            __m128f; // flt_neg2147483647
    extern const __m128 __m128_neg2147483648; //            __m128f; // flt_neg2147483648
    extern const __m128 __m128_neg4294967295; //            __m128f; // flt_neg4294967295
    extern const __m128 __m128_neg4294967296; //            __m128f; // flt_neg4294967296

    extern const __m128 __m128_bin128; //                   __m128i; // flt_bin128
    extern const __m128 __m128_binneg150; //                __m128i; // flt_binneg150

    extern const __m128 __m128_maxrand; //              __m128f; // flt_maxrand

    extern const __m128 __m128_maxi8; //                    __m128f; // flt_maxi8
    extern const __m128 __m128_mini8; //                    __m128f; // flt_mini8
    extern const __m128 __m128_maxu8; //                    __m128f; // flt_maxu8

    extern const __m128 __m128_maxi16; //                   __m128f; // flt_maxi16
    extern const __m128 __m128_mini16; //                   __m128f; // flt_mini16
    extern const __m128 __m128_maxu16; //                   __m128f; // flt_maxu16

    extern const __m128 __m128_maxi32; //                   __m128f; // flt_maxi32
    extern const __m128 __m128_mini32; //                   __m128f; // flt_mini32
    extern const __m128 __m128_maxu32; //                   __m128f; // flt_maxu32

    extern const __m128 __m128_maxi8xu8; //             __m128f; // flt_maxi8xu8
    extern const __m128 __m128_mini8xu8; //             __m128f; // flt_mini8xu8
    extern const __m128 __m128_maxi8xu16; //                __m128f; // flt_maxi8xu16
    extern const __m128 __m128_mini8xu16; //                __m128f; // flt_mini8xu16

    extern const __m128 __m128_maxi16xu16; //               __m128f; // flt_maxi16xu16
    extern const __m128 __m128_mini16xu16; //               __m128f; // flt_mini16xu16

    extern const __m128 __m128_fixunsigned; //          __m128f; // flt_fixunsigned
    extern const __m128 __m128_fixunsigned32; //            __m128f; // flt_fixunsigned32
    extern const __m128 __m128_fixmaxi32; //                __m128f; // flt_fixmaxi32
    extern const __m128 __m128_fixmaxu32; //                __m128f; // flt_fixmaxu32

    extern const __m128 __m128_rcpi16; //               __m128f; // flt_rcpi16
    extern const __m128 __m128_rcpu16; //               __m128f; // flt_rcpu16
    extern const __m128 __m128_rcpi16xu16; //           __m128f; // flt_rcpi16xu16

    extern const __m128 __m128_fixaa8; //               __m128f; // flt_fixaa8
    extern const __m128 __m128_fixr8; //                    __m128f; // flt_fixr8
    extern const __m128 __m128_fixg8; //                    __m128f; // flt_fixg8
    extern const __m128 __m128_fixb8; //                    __m128f; // flt_fixb8

    extern const __m128 __m128_norma8; //               __m128f; // flt_norma8
    extern const __m128 __m128_normr8; //               __m128f; // flt_normr8
    extern const __m128 __m128_normg8; //               __m128f; // flt_normg8
    extern const __m128 __m128_normb8; //               __m128f; // flt_normb8

    extern const __m128 __m128_fixaa2; //               __m128f; // flt_fixaa2
    extern const __m128 __m128_fixb10; //               __m128f; // flt_fixb10
    extern const __m128 __m128_fixg10; //               __m128f; // flt_fixg10
    extern const __m128 __m128_fixr10; //               __m128f; // flt_fixr10

    extern const __m128 __m128_norma2; //               __m128f; // flt_norma2
    extern const __m128 __m128_normb10; //              __m128f; // flt_normb10
    extern const __m128 __m128_normg10; //              __m128f; // flt_normg10
    extern const __m128 __m128_normr10; //              __m128f; // flt_normr10

    extern const __m128 __m128_mg; //                   __m128f; // flt_mg
    extern const __m128 __m128_negmg; //                    __m128f; // flt_negmg
    extern const __m128 __m128_halfmg; //               __m128f; // flt_halfmg
    extern const __m128 __m128_neghalfmg; //                __m128f; // flt_neghalfmg
    extern const __m128 __m128_mgdiv4; //               __m128f; // flt_mgdiv4
    extern const __m128 __m128_negmgdiv4; //                __m128f; // flt_negmgdiv4
    extern const __m128 __m128_halfmgxmg; //                __m128f; // flt_halfmgxmg
    extern const __m128 __m128_halfmgxsqrmg; //             __m128f; // flt_halfmgxsqrmg
    extern const __m128 __m128_halfmgxcubemg; //            __m128f; // flt_halfmgxcubemg
    extern const __m128 __m128_neghalfmgxmg; //             __m128f; // flt_neghalfmgxmg
    extern const __m128 __m128_neghalfmgxsqrmg; //      __m128f; // flt_neghalfmgxsqrmg
    extern const __m128 __m128_neghalfmgxcubemg; //         __m128f; // flt_neghalfmgxcubemg
    extern const __m128 __m128_sqrmg; //                    __m128f; // flt_sqrmg
    extern const __m128 __m128_cubemg; //               __m128f; // flt_cubemg
    extern const __m128 __m128_sqrtmg; //               __m128f; // flt_sqrtmg
    extern const __m128 __m128_cbrtmg; //               __m128f; // flt_cbrtmg
    extern const __m128 __m128_rcpmg; //                    __m128f; // flt_rcpmg
    extern const __m128 __m128_rcpsqrmg; //                 __m128f; // flt_rcpsqrmg
    extern const __m128 __m128_rcpcubemg; //                __m128f; // flt_rcpcubemg
    extern const __m128 __m128_rcpsqrtmg; //                __m128f; // flt_rcpsqrtmg
    extern const __m128 __m128_rcpcbrtmg; //                __m128f; // flt_rcpcbrtmg

    extern const __m128 __m128_2mg; //                  __m128f; // flt_2mg
    extern const __m128 __m128_neg2mg; //               __m128f; // flt_neg2mg
    extern const __m128 __m128_sqr2mg; //               __m128f; // flt_sqr2mg
    extern const __m128 __m128_cube2mg; //              __m128f; // flt_cube2mg
    extern const __m128 __m128_sqrt2mg; //              __m128f; // flt_sqrt2mg
    extern const __m128 __m128_cbrt2mg; //              __m128f; // flt_cbrt2mg
    extern const __m128 __m128_4mg; //                  __m128f; // flt_4mg
    extern const __m128 __m128_neg4mg; //               __m128f; // flt_neg4mg
    extern const __m128 __m128_sqr4mg; //               __m128f; // flt_sqr4mg
    extern const __m128 __m128_cube4mg; //              __m128f; // flt_cube4mg
    extern const __m128 __m128_sqrt4mg; //              __m128f; // flt_sqrt4mg
    extern const __m128 __m128_cbrt4mg; //              __m128f; // flt_cbrt4mg
    extern const __m128 __m128_rcp2mg; //               __m128f; // flt_rcp2mg
    extern const __m128 __m128_rcp4mg; //               __m128f; // flt_rcp4mg

    extern const __m128 __m128_e; //                        __m128f; // flt_e
    extern const __m128 __m128_exp; //                  __m128f; // flt_exp
    extern const __m128 __m128_loge; //                     __m128f; // flt_loge
    extern const __m128 __m128_logehigh; //                 __m128f; // flt_logehigh
    extern const __m128 __m128_log2e; //                    __m128f; // flt_log2e
    extern const __m128 __m128_log2ehigh; //                __m128f; // flt_log2ehigh
    extern const __m128 __m128_log10e; //               __m128f; // flt_log10e
    extern const __m128 __m128_rcplog2e; //                 __m128f; // flt_rcplog2e
    extern const __m128 __m128_rcplog10e; //                __m128f; // flt_rcplog10e
    extern const __m128 __m128_log2t; //                    __m128f; // flt_log2t
    extern const __m128 __m128_log2; //                     __m128f; // flt_log2
    extern const __m128 __m128_log2high; //                 __m128f; // flt_log2high
    extern const __m128 __m128_ln2; //                  __m128f; // flt_ln2
    extern const __m128 __m128_ln2high; //              __m128f; // flt_ln2high
    extern const __m128 __m128_1divln2; //              __m128f; // flt_1divln2
    extern const __m128 __m128_2divln2; //              __m128f; // flt_2divln2
    extern const __m128 __m128_lnt; //                  __m128f; // flt_lnt
    extern const __m128 __m128_lnthigh; //              __m128f; // flt_lnthigh
    extern const __m128 __m128_ln10; //                     __m128f; // flt_ln10
    extern const __m128 __m128_sqrt2; //                    __m128f; // flt_sqrt2
    extern const __m128 __m128_rcpsqrt2; //                 __m128f; // flt_rcpsqrt2
    extern const __m128 __m128_sqrt2div2; //                __m128f; // flt_sqrt2div2
    extern const __m128 __m128_sqrt2div2high; //            __m128f; // flt_sqrt2div2high
    extern const __m128 __m128_sqrt2div2low; //             __m128f; // flt_sqrt2div2low
    extern const __m128 __m128_sqrthalf; //                 __m128f; // flt_sqrthalf
    extern const __m128 __m128_sqrthalfhigh; //             __m128f; // flt_sqrthalfhigh
    extern const __m128 __m128_sqrthalflow; //          __m128f; // flt_sqrthalflow
    extern const __m128 __m128_pow2; //                     __m128f; // flt_pow2
    extern const __m128 __m128_rcppow2; //              __m128f; // flt_rcppow2
    extern const __m128 __m128_cbrt2; //                    __m128f; // flt_cbrt2
    extern const __m128 __m128_rcpcbrt2; //                 __m128f; // flt_rcpcbrt2
    extern const __m128 __m128_1div3; //                    __m128f; // flt_1div3
    extern const __m128 __m128_1div7; //                    __m128f; // flt_1div7
    extern const __m128 __m128_1div9; //                    __m128f; // flt_1div9
    extern const __m128 __m128_2div3; //                    __m128f; // flt_2div3
    extern const __m128 __m128_2div7; //                    __m128f; // flt_2div7
    extern const __m128 __m128_2div9; //                    __m128f; // flt_2div9
    extern const __m128 __m128_4div3; //                    __m128f; // flt_4div3
    extern const __m128 __m128_4div7; //                    __m128f; // flt_4div7
    extern const __m128 __m128_4div9; //                    __m128f; // flt_4div9

    extern const __m128 __m128_pi; //                   __m128f; // flt_pi
    extern const __m128 __m128_pihigh; //               __m128f; // flt_pihigh
    extern const __m128 __m128_halfpi; //               __m128f; // flt_halfpi
    extern const __m128 __m128_2pi; //                  __m128f; // flt_2pi
    extern const __m128 __m128_negpi; //                    __m128f; // flt_negpi
    extern const __m128 __m128_neghalfpi; //                __m128f; // flt_neghalfpi
    extern const __m128 __m128_neg2pi; //               __m128f; // flt_neg2pi
    extern const __m128 __m128_rcppi; //                    __m128f; // flt_rcppi
    extern const __m128 __m128_invpi; //                    __m128f; // flt_invpi
    extern const __m128 __m128_rcp2pi; //               __m128f; // flt_rcp2pi
    extern const __m128 __m128_inv2pi; //               __m128f; // flt_inv2pi
    extern const __m128 __m128_pidiv2; //               __m128f; // flt_pidiv2
    extern const __m128 __m128_pidiv2high; //           __m128f; // flt_pidiv2high
    extern const __m128 __m128_pidiv4; //               __m128f; // flt_pidiv4
    extern const __m128 __m128_pidiv4high; //           __m128f; // flt_pidiv4high
    extern const __m128 __m128_pix3div4; //                 __m128f; // flt_pix3div4
    extern const __m128 __m128_sqrtpi; //               __m128f; // flt_sqrtpi
    extern const __m128 __m128_sqrt2pi; //              __m128f; // flt_sqrt2pi
    extern const __m128 __m128_sqrt2pihigh; //          __m128f; // flt_sqrt2pihigh
    extern const __m128 __m128_rcpsqrtpi; //                __m128f; // flt_rcpsqrtpi
    extern const __m128 __m128_rcpsqrt2pi; //           __m128f; // flt_rcpsqrt2pi
    extern const __m128 __m128_sqrtpidiv2; //           __m128f; // flt_sqrtpidiv2
    extern const __m128 __m128_sqrtpidiv2high; //       __m128f; // flt_sqrtpidiv2high
    extern const __m128 __m128_sqrt2pidiv2; //          __m128f; // flt_sqrt2pidiv2
    extern const __m128 __m128_sqrt2pidiv2high; //      __m128f; // flt_sqrt2pidiv2high
    extern const __m128 __m128_2divpi; //               __m128f; // flt_2divpi
    extern const __m128 __m128_2div2pi; //              __m128f; // flt_2div2pi
    extern const __m128 __m128_2divsqrtpi; //           __m128f; // flt_2divsqrtpi
    extern const __m128 __m128_2divsqrt2pi; //          __m128f; // flt_2divsqrt2pi
    extern const __m128 __m128_sqrt2divpi; //           __m128f; // flt_sqrt2divpi
    extern const __m128 __m128_logpi; //                    __m128f; // flt_logpi
    extern const __m128 __m128_log2pi; //               __m128f; // flt_log2pi
    extern const __m128 __m128_lnpi; //                     __m128f; // flt_lnpi
    extern const __m128 __m128_ln2pi; //                    __m128f; // flt_ln2pi
    extern const __m128 __m128_powpi; //                    __m128f; // flt_powpi
    extern const __m128 __m128_rcppowpi; //                 __m128f; // flt_rcppowpi
    extern const __m128 __m128_pow2pi; //               __m128f; // flt_pow2pi
    extern const __m128 __m128_rcppow2pi; //                __m128f; // flt_rcppow2pi
    extern const __m128 __m128_cbrtpi; //               __m128f; // flt_cbrtpi
    extern const __m128 __m128_rcpcbrtpi; //                __m128f; // flt_rcpcbrtpi
    extern const __m128 __m128_cbrt2pi; //              __m128f; // flt_cbrt2pi
    extern const __m128 __m128_rcpcbrt2pi; //           __m128f; // flt_rcpcbrt2pi

    extern const __m128 __m128_pow2tom126; //           __m128f; // flt_pow2tom126
    extern const __m128 __m128_pow2to126; //                __m128f; // flt_pow2to126
    extern const __m128 __m128_normhuge; //                 __m128f; // flt_normhuge
    extern const __m128 __m128_pow2to23; //                 __m128f; // flt_pow2to23
    extern const __m128 __m128_pow2to24; //                 __m128f; // flt_pow2to24
    extern const __m128 __m128_maxi32pow2to23; //       __m128f; // flt_maxi32pow2to23
    extern const __m128 __m128_pow2to31; //                 __m128f; // flt_pow2to31
    extern const __m128 __m128_pow2to32; //                 __m128f; // flt_pow2to32

    extern const __m128 __m128_remquobits; //           __m128i; // flt_remquobits
    extern const __m128 __m128_remquomask; //           __m128i; // flt_remquomask

    extern const __m128 __m128_trigploss; //                __m128f; // flt_trigploss

    extern const __m128 __m128_degtorad; //                 __m128f; // flt_degtorad
    extern const __m128 __m128_radtodeg; //                 __m128f; // flt_radtodeg

    extern const __m128 __m128_degtograd; //                __m128f; // flt_degtograd
    extern const __m128 __m128_gradtodeg; //                __m128f; // flt_gradtodeg

    extern const __m128 __m128_radtograd; //                __m128f; // flt_radtograd
    extern const __m128 __m128_gradtorad; //                __m128f; // flt_gradtorad

    extern const __m128 __m128_sungravity; //           __m128f; // flt_sungravity
    extern const __m128 __m128_jupitergravity; //       __m128f; // flt_jupitergravity
    extern const __m128 __m128_neptunegravity; //       __m128f; // flt_neptunegravity
    extern const __m128 __m128_saturngravity; //            __m128f; // flt_saturngravity
    extern const __m128 __m128_uranusgravity; //            __m128f; // flt_uranusgravity
    extern const __m128 __m128_earthgravity; //             __m128f; // flt_earthgravity
    extern const __m128 __m128_venusgravity; //             __m128f; // flt_venusgravity
    extern const __m128 __m128_marsgravity; //          __m128f; // flt_marsgravity
    extern const __m128 __m128_mercurygravity; //       __m128f; // flt_mercurygravity
    extern const __m128 __m128_moongravity; //          __m128f; // flt_moongravity
    extern const __m128 __m128_plutogravity; //             __m128f; // flt_plutogravity

    extern const __m128 __m128_kmtoinch; //                 __m128f; // flt_kmtoinch
    extern const __m128 __m128_kmtofeet; //                 __m128f; // flt_kmtofeet 
    extern const __m128 __m128_kmtoyards; //                __m128f; // flt_kmtoyards
    extern const __m128 __m128_kmtomiles; //                __m128f; // flt_kmtomiles

    extern const __m128 __m128_metoinch; //                 __m128f; // flt_metoinch
    extern const __m128 __m128_metofeet; //                 __m128f; // flt_metofeet
    extern const __m128 __m128_metoyards; //                __m128f; // flt_metoyards
    extern const __m128 __m128_metomiles; //                __m128f; // flt_metomiles

    extern const __m128 __m128_cmtoinch; //                 __m128f; // flt_cmtoinch
    extern const __m128 __m128_cmtofeet; //                 __m128f; // flt_cmtofeet
    extern const __m128 __m128_cmtoyards; //                __m128f; // flt_cmtoyards
    extern const __m128 __m128_cmtomiles; //                __m128f; // flt_cmtomiles

    extern const __m128 __m128_milltoinch; //           __m128f; // flt_milltoinch
    extern const __m128 __m128_milltofeet; //           __m128f; // flt_milltofeet
    extern const __m128 __m128_milltoyards; //          __m128f; // flt_milltoyards
    extern const __m128 __m128_milltomiles; //          __m128f; // flt_milltomiles

    extern const __m128 __m128_inchtomill; //           __m128f; // flt_inchtomill
    extern const __m128 __m128_inchtocm; //                 __m128f; // flt_inchtocm
    extern const __m128 __m128_inchtome; //                 __m128f; // flt_inchtome
    extern const __m128 __m128_inchtokm; //                 __m128f; // flt_inchtokm
    extern const __m128 __m128_inchtofeet; //           __m128f; // flt_inchtofeet
    extern const __m128 __m128_inchtoyards; //          __m128f; // flt_inchtoyards
    extern const __m128 __m128_inchtomiles; //          __m128f; // flt_inchtomiles

    extern const __m128 __m128_feettomill; //           __m128f; // flt_feettomill
    extern const __m128 __m128_feettocm; //                 __m128f; // flt_feettocm
    extern const __m128 __m128_feettome; //                 __m128f; // flt_feettome
    extern const __m128 __m128_feettokm; //                 __m128f; // flt_feettokm
    extern const __m128 __m128_feettoinch; //           __m128f; // flt_feettoinch
    extern const __m128 __m128_feettoyards; //          __m128f; // flt_feettoyards
    extern const __m128 __m128_feettomiles; //          __m128f; // flt_feettomiles

    extern const __m128 __m128_yardstomill; //          __m128f; // flt_yardstomill
    extern const __m128 __m128_yardstocm; //                __m128f; // flt_yardstocm
    extern const __m128 __m128_yardstome; //                __m128f; // flt_yardstome
    extern const __m128 __m128_yardstokm; //                __m128f; // flt_yardstokm
    extern const __m128 __m128_yardstoinch; //          __m128f; // flt_yardstoinch
    extern const __m128 __m128_yardstofeet; //          __m128f; // flt_yardstofeet
    extern const __m128 __m128_yardstomiles; //             __m128f; // flt_yardstomiles

    extern const __m128 __m128_milestomill; //          __m128f; // flt_milestomill
    extern const __m128 __m128_milestocm; //                __m128f; // flt_milestocm
    extern const __m128 __m128_milestome; //                __m128f; // flt_milestome
    extern const __m128 __m128_milestoinch; //          __m128f; // flt_milestokm
    extern const __m128 __m128_milestoinch; //          __m128f; // flt_milestoinch
    extern const __m128 __m128_milestofeet; //          __m128f; // flt_milestofeet
    extern const __m128 __m128_milestoyards; //             __m128f; // flt_milestoyards

    extern const __m128 __m128_kmphtomeps; //           __m128f; // flt_kmphtomeps
    extern const __m128 __m128_kmphtokmps; //           __m128f; // flt_kmphtokmps
    extern const __m128 __m128_kmphtomepm; //           __m128f; // flt_kmphtomepm
    extern const __m128 __m128_kmphtomilesph; //            __m128f; // flt_kmphtomilesph
    extern const __m128 __m128_kmphtomilesps; //            __m128f; // flt_kmphtomilesps
    extern const __m128 __m128_kmphtofootps; //             __m128f; // flt_kmphtofootps
    extern const __m128 __m128_kmphtofootpm; //             __m128f; // flt_kmphtofootpm

    extern const __m128 __m128_kmpstomeps; //           __m128f; // flt_kmpstomeps
    extern const __m128 __m128_kmpstokmph; //           __m128f; // flt_kmpstokmph
    extern const __m128 __m128_kmpstomepm; //           __m128f; // flt_kmpstomepm
    extern const __m128 __m128_kmpstomilesph; //            __m128f; // flt_kmpstomilesph
    extern const __m128 __m128_kmpstomilesps; //            __m128f; // flt_kmpstomilesps
    extern const __m128 __m128_kmpstofootps; //             __m128f; // flt_kmpstofootps
    extern const __m128 __m128_kmpstofootpm; //             __m128f; // flt_kmpstofootpm

    extern const __m128 __m128_mepstokmph; //           __m128f; // flt_mepstokmph
    extern const __m128 __m128_mepstokmps; //           __m128f; // flt_mepstokmps
    extern const __m128 __m128_mepstomepm; //           __m128f; // flt_mepstomepm
    extern const __m128 __m128_mepstomilesph; //            __m128f; // flt_mepstomilesph
    extern const __m128 __m128_mepstomilesps; //            __m128f; // flt_mepstomilesps
    extern const __m128 __m128_mepstofootps; //             __m128f; // flt_mepstofootps
    extern const __m128 __m128_mepstofootpm; //             __m128f; // flt_mepstofootpm

    extern const __m128 __m128_mepmtokmph; //           __m128f; // flt_mepmtokmph
    extern const __m128 __m128_mepmtokmps; //           __m128f; // flt_mepmtokmps
    extern const __m128 __m128_mepmtomeps; //           __m128f; // flt_mepmtomeps
    extern const __m128 __m128_mepmtomilesph; //            __m128f; // flt_mepmtomilesph
    extern const __m128 __m128_mepmtomilesps; //            __m128f; // flt_mepmtomilesps
    extern const __m128 __m128_mepmtofootps; //             __m128f; // flt_mepmtofootps
    extern const __m128 __m128_mepmtofootpm; //             __m128f; // flt_mepmtofootpm

    extern const __m128 __m128_milesphtokmph; //            __m128f; // flt_milesphtokmph
    extern const __m128 __m128_milesphtokmps; //            __m128f; // flt_milesphtokmps
    extern const __m128 __m128_milesphtomeps; //            __m128f; // flt_milesphtomeps
    extern const __m128 __m128_milesphtomepm; //            __m128f; // flt_milesphtomepm
    extern const __m128 __m128_milesphtomilesps; //     __m128f; // flt_milesphtomilesps
    extern const __m128 __m128_milesphtofootps; //      __m128f; // flt_milesphtofootps
    extern const __m128 __m128_milesphtofootpm; //      __m128f; // flt_milesphtofootpm

    extern const __m128 __m128_milespstokmph; //            __m128f; // flt_milespstokmph
    extern const __m128 __m128_milespstokmps; //            __m128f; // flt_milespstokmps
    extern const __m128 __m128_milespstomeps; //            __m128f; // flt_milespstomeps
    extern const __m128 __m128_milespstomepm; //            __m128f; // flt_milespstomepm
    extern const __m128 __m128_milespstomilespm; //     __m128f; // flt_milespstomilespm
    extern const __m128 __m128_milespstofootps; //      __m128f; // flt_milespstofootps
    extern const __m128 __m128_milespstofootpm; //      __m128f; // flt_milespstofootpm

    extern const __m128 __m128_footpstokmph; //             __m128f; // flt_footpstokmph
    extern const __m128 __m128_footpstokmps; //             __m128f; // flt_footpstokmps
    extern const __m128 __m128_footpstomeps; //             __m128f; // flt_footpstomeps
    extern const __m128 __m128_footpstomepm; //             __m128f; // flt_footpstomepm
    extern const __m128 __m128_footpstomilesph; //      __m128f; // flt_footpstomilesph
    extern const __m128 __m128_footpstomilesps; //      __m128f; // flt_footpstomilesps
    extern const __m128 __m128_footpstofootpm; //       __m128f; // flt_footpstofootpm

    extern const __m128 __m128_footpmtokmph; //         __m128f; // flt_footpmtokmph
    extern const __m128 __m128_footpmtokmps; //             __m128f; // flt_footpmtokmps
    extern const __m128 __m128_footpmtomeps; //             __m128f; // flt_footpmtomeps
    extern const __m128 __m128_footpmtomepm; //             __m128f; // flt_footpmtomepm
    extern const __m128 __m128_footpmtomilesph; //      __m128f; // flt_footpmtomilesph
    extern const __m128 __m128_footpmtomilesps; //      __m128f; // flt_footpmtomilesps
    extern const __m128 __m128_footpmtofootps; //       __m128f; // flt_footpmtofootps

    extern const __m128 __m128_soundspeedp50c; //       __m128f; // flt_soundspeedp50c
    extern const __m128 __m128_soundspeedp45c; //       __m128f; // flt_soundspeedp45c
    extern const __m128 __m128_soundspeedp40c; //       __m128f; // flt_soundspeedp40c
    extern const __m128 __m128_soundspeedp35c; //       __m128f; // flt_soundspeedp35c
    extern const __m128 __m128_soundspeedp30c; //       __m128f; // flt_soundspeedp30c
    extern const __m128 __m128_soundspeedp25c; //       __m128f; // flt_soundspeedp25c
    extern const __m128 __m128_soundspeedp20c; //       __m128f; // flt_soundspeedp20c
    extern const __m128 __m128_soundspeedp15c; //       __m128f; // flt_soundspeedp15c
    extern const __m128 __m128_soundspeedp10c; //       __m128f; // flt_soundspeedp10c
    extern const __m128 __m128_soundspeedp5c; //            __m128f; // flt_soundspeedp5c
    extern const __m128 __m128_soundspeed0c; //             __m128f; // flt_soundspeed0c
    extern const __m128 __m128_soundspeedn5c; //            __m128f; // flt_soundspeedn5c
    extern const __m128 __m128_soundspeedn10c; //       __m128f; // flt_soundspeedn10c
    extern const __m128 __m128_soundspeedn15c; //       __m128f; // flt_soundspeedn15c
    extern const __m128 __m128_soundspeedn20c; //       __m128f; // flt_soundspeedn20c
    extern const __m128 __m128_soundspeedn25c; //       __m128f; // flt_soundspeedn25c
    extern const __m128 __m128_soundspeedn30c; //       __m128f; // flt_soundspeedn30c
    extern const __m128 __m128_soundspeedn35c; //       __m128f; // flt_soundspeedn35c
    extern const __m128 __m128_soundspeedn40c; //       __m128f; // flt_soundspeedn40c
    extern const __m128 __m128_soundspeedn45c; //       __m128f; // flt_soundspeedn45c
    extern const __m128 __m128_soundspeedn50c; //       __m128f; // flt_soundspeedn50c

    extern const __m128 __m128_schscale; //                 __m128f; // flt_schscale
    extern const __m128 __m128_thscale; //              __m128f; // flt_thscale

    extern const __m128 __m128_expest1; //              __m128f; // flt_expest1
    extern const __m128 __m128_expest2; //              __m128f; // flt_expest2
    extern const __m128 __m128_expest3; //              __m128f; // flt_expest3
    extern const __m128 __m128_expest4; //              __m128f; // flt_expest4
    extern const __m128 __m128_expest5; //              __m128f; // flt_expest5
    extern const __m128 __m128_expest6; //              __m128f; // flt_expest6
    extern const __m128 __m128_expest7; //              __m128f; // flt_expest7
    extern const __m128 __m128_logest0; //              __m128f; // flt_logest0
    extern const __m128 __m128_logest1; //              __m128f; // flt_logest1
    extern const __m128 __m128_logest2; //              __m128f; // flt_logest2
    extern const __m128 __m128_logest3; //              __m128f; // flt_logest3
    extern const __m128 __m128_logest4; //              __m128f; // flt_logest4
    extern const __m128 __m128_logest5; //              __m128f; // flt_logest5
    extern const __m128 __m128_logest6; //              __m128f; // flt_logest6
    extern const __m128 __m128_logest7; //              __m128f; // flt_logest7


    //;;DirectX Math constants;;

    extern const __m128 __m128_sincoefficients0; //                 __m128f; // (-0.16666667); // (+0.0083333310); // (-0.00019840874); // (+2.7525562e-06)
    extern const __m128 __m128_sincoefficients1; //                 __m128f; // (-2.3889859e-08); // (-0.16665852); // (+0.0083139502); // (-0.00018524670)
    extern const __m128 __m128_coscoefficients0; //                 __m128f; // (-0.5); // (+0.041666638); // (-0.0013888378); // (+2.4760495e-05)
    extern const __m128 __m128_coscoefficients1; //                 __m128f; // (-2.6051615e-07); // (-0.49992746); // (+0.041493919); // (-0.0012712436)
    extern const __m128 __m128_tancoefficients0; //                 __m128f; // 1.0; // 0.333333333; // 0.133333333; // (5.396825397e-2)
    extern const __m128 __m128_tancoefficients1; //                 __m128f; // (2.186948854e-2); // (8.863235530e-3); // (3.592128167e-3); // (1.455834485e-3)
    extern const __m128 __m128_tancoefficients2; //                 __m128f; // (5.900274264e-4); // (2.391290764e-4); // (9.691537707e-5); // (3.927832950e-5)
    extern const __m128 __m128_arccoefficients0; //                 __m128f; // (+1.5707963050); // (-0.2145988016); // (+0.0889789874); // (-0.0501743046)
    extern const __m128 __m128_arccoefficients1; //                 __m128f; // (+0.0308918810); // (-0.0170881256); // (+0.0066700901); // (-0.0012624911)
    extern const __m128 __m128_atancoefficients0; //                __m128f; // (-0.3333314528); // (+0.1999355085); // (-0.1420889944); // (+0.1065626393)
    extern const __m128 __m128_atancoefficients1; //                __m128f; // (-0.0752896400); // (+0.0429096138); // (-0.0161657367); // (+0.0028662257)
    extern const __m128 __m128_atanestcoefficients0; //             __m128f; // (+0.999866); // (+0.999866); // (+0.999866); // (+0.999866)
    extern const __m128 __m128_atanestcoefficients1; //             __m128f; // (-0.3302995); // (+0.180141); // (-0.085133); // (+0.0208351)
    extern const __m128 __m128_tanestcoefficients; //           __m128f; // 2.484; // (-1.954923183e-1); // 2.467401101; // flt_rcppi
    extern const __m128 __m128_arcestcoefficients; //           __m128f; // (+1.5707288); // (-0.2121144); // (+0.0742610); // (-0.0187293)
    extern const __m128 __m128_piconstants0; //                     __m128f; // flt_pi; // flt_2pi; // flt_rcppi; // flt_rcp2pi
    extern const __m128 __m128_identityr0; //                   __m128f; // flt_1; // flt_0; // flt_0; // flt_0
    extern const __m128 __m128_identityr1; //                   __m128f; // flt_0; // flt_1; // flt_0; // flt_0
    extern const __m128 __m128_identityr2; //                   __m128f; // flt_0; // flt_0; // flt_1; // flt_0
    extern const __m128 __m128_identityr3; //                   __m128f; // flt_0; // flt_0; // flt_0; // flt_1
    extern const __m128 __m128_negidentityr0; //                    __m128f; // flt_neg1; // flt_0; // flt_0; // flt_0
    extern const __m128 __m128_negidentityr1; //                    __m128f; // flt_0; // flt_neg1; // flt_0; // flt_0
    extern const __m128 __m128_negidentityr2; //                    __m128f; // flt_0; // flt_0; // flt_neg1; // flt_0
    extern const __m128 __m128_negidentityr3; //                    __m128f; // flt_0; // flt_0; // flt_0; // flt_neg1
    extern const __m128 __m128_negativezero; //                     __m128i; // flt_neg0_msk; // flt_neg0_msk; // flt_neg0_msk; // flt_neg0_msk
    extern const __m128 __m128_negate3; //                      __m128i; // flt_neg0_msk; // flt_neg0_msk; // flt_neg0_msk; // flt_false_msk
    extern const __m128 __m128_maskxy; //                       __m128i; // flt_true_msk; // flt_true_msk; // flt_false_msk; // flt_false_msk
    extern const __m128 __m128_maskxyz; //                      __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_false_msk
    extern const __m128 __m128_maskxyzw; //                         __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_true_msk
    extern const __m128 __m128_mask3; //                            __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_false_msk
    extern const __m128 __m128_maskx; //                            __m128i; // flt_true_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
    extern const __m128 __m128_masky; //                            __m128i; // flt_false_msk; // flt_true_msk; // flt_false_msk; // flt_false_msk
    extern const __m128 __m128_maskz; //                            __m128i; // flt_false_msk; // flt_false_msk; // flt_true_msk; // flt_false_msk
    extern const __m128 __m128_maskw; //                            __m128i; // flt_false_msk; // flt_false_msk; // flt_false_msk; // flt_true_msk
    extern const __m128 __m128_one; //                          __m128f; // flt_1; // flt_1; // flt_1; // flt_1
    extern const __m128 __m128_one3; //                             __m128f; // flt_1; // flt_1; // flt_1; // flt_0
    extern const __m128 __m128_zero; //                             __m128f; // flt_0; // flt_0; // flt_0; // flt_0
    extern const __m128 __m128_two; //                          __m128f; // flt_2; // flt_2; // flt_2; // flt_2
    extern const __m128 __m128_four; //                             __m128f; // flt_4; // flt_4; // flt_4; // flt_4
    extern const __m128 __m128_six; //                          __m128f; // flt_6; // flt_6; // flt_6; // flt_6
    extern const __m128 __m128_negativeone; //                  __m128f; // flt_neg1; // flt_neg1; // flt_neg1; // flt_neg1
    extern const __m128 __m128_onehalf; //                      __m128f; // flt_0d5; // flt_0d5; // flt_0d5; // flt_0d5
    extern const __m128 __m128_negativeonehalf; //              __m128f; // flt_neg0d5; // flt_neg0d5; // flt_neg0d5; // flt_neg0d5
    extern const __m128 __m128_negativetwopi; //                    __m128f; // flt_neg2pi; // flt_neg2pi; // flt_neg2pi; // flt_neg2pi
    extern const __m128 __m128_negativepi; //                   __m128f; // flt_negpi; // flt_negpi; // flt_negpi; // flt_negpi
    extern const __m128 __m128_reciprocalpi; //                     __m128f; // flt_rcppi; // flt_rcppi; // flt_rcppi; // flt_rcppi
    extern const __m128 __m128_twopi; //                            __m128f; // flt_2pi; // flt_2pi; // flt_2pi; // flt_2pi
    extern const __m128 __m128_reciprocaltwopi; //              __m128f; // flt_rcp2pi; // flt_rcp2pi; // flt_rcp2pi; // flt_rcp2pi
    extern const __m128 __m128_infinity; //                         __m128i; // flt_inf_msk; // flt_inf_msk; // flt_inf_msk; // flt_inf_msk
    extern const __m128 __m128_qnantest; //                         __m128i; // flt_nantest_msk; // flt_nantest_msk; // flt_nantest_msk; // flt_nantest_msk
    extern const __m128 __m128_absmask; //                      __m128i; // flt_abs_msk; // flt_abs_msk; // flt_abs_msk; // flt_abs_msk
    extern const __m128 __m128_fltmin; //                       __m128i; // flt_min_msk; // flt_min_msk; // flt_min_msk; // flt_min_msk
    extern const __m128 __m128_fltmax; //                       __m128i; // flt_max_msk; // flt_max_msk; // flt_max_msk; // flt_max_msk
    extern const __m128 __m128_negonemask; //                   __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_true_msk
    extern const __m128 __m128_maska8r8g8b8; //                     __m128i; // flt_a8_msk; // flt_r8_msk; // flt_g8_msk; // flt_b8_msk
    extern const __m128 __m128_flipa8r8g8b8; //                     __m128i; // flt_flipa8_msk; // flt_flipr8_msk; // flt_flipg8_msk; // flt_flipb8_msk
    extern const __m128 __m128_fixaa8r8g8b8; //                     __m128; // flt_fixaa8; // flt_fixr8; // flt_fixg8; // flt_fixb8
    extern const __m128 __m128_normalizea8r8g8b8; //                __m128; // flt_norma8; // flt_normr8; // flt_normg8; // flt_normb8
    extern const __m128 __m128_maska2b10g10r10; //              __m128i; // flt_a2_msk; // flt_b10_msk; // flt_g10_msk; // flt_r10_msk
    extern const __m128 __m128_flipa2b10g10r10; //              __m128i; // flt_flipa2_msk; // flt_flipb10_msk; // flt_flipg10_msk; // flt_flipr10_msk
    extern const __m128 __m128_fixaa2b10g10r10; //              __m128; // flt_fixaa2; // flt_fixb10; // flt_fixg10; // flt_fixr10
    extern const __m128 __m128_normalizea2b10g10r10; //             __m128; // flt_norma2; // flt_normb10; // flt_normg10; // flt_normr10
    extern const __m128 __m128_maskx16y16; //                   __m128i; // flt_16low_msk; // flt_16high_msk; // flt_false; // flt_false
    extern const __m128 __m128_flipx16y16; //                   __m128i; // flt_flip16_msk; // flt_flip16_msk; // flt_false; // flt_false
    extern const __m128 __m128_fixx16y16; //                        __m128; // flt_neg32768; // flt_0; // flt_0; // flt_0
    extern const __m128 __m128_normalizex16y16; //              __m128; // 3.051850947599719e-5; // 4.656754985961486e-10; // flt_0; // flt_0
    extern const __m128 __m128_maskx16y16z16w16; //                 __m128i; // flt_16low_msk; // flt_16low_msk; // flt_16high_msk; // flt_16high_msk
    extern const __m128 __m128_flipx16y16z16w16; //                 __m128i; // flt_flip16_msk; // flt_flip16_msk; // flt_false; // flt_false
    extern const __m128 __m128_fixx16y16z16w16; //              __m128f; // flt_neg32768; // flt_neg32768; // flt_0; // flt_0
    extern const __m128 __m128_normalizex16y16z16w16; //            __m128f; // 3.051850947599719e-5; // 3.051850947599719e-5; // 4.656754985961486e-10; // 4.656754985961486e-10
    extern const __m128 __m128_maskbyte; //                         __m128i; // flt_byte_msk; // flt_byte_msk; // flt_byte_msk; // flt_byte_msk
    extern const __m128 __m128_negatex; //                      __m128f; // flt_neg1; // flt_1; // flt_1; // flt_1
    extern const __m128 __m128_negatey; //                      __m128f; // flt_1; // flt_neg1; // flt_1; // flt_1
    extern const __m128 __m128_negatez; //                      __m128f; // flt_1; // flt_1; // flt_neg1; // flt_1
    extern const __m128 __m128_negatew; //                      __m128f; // flt_1; // flt_1; // flt_1; // flt_neg1
    extern const __m128 __m128_select0000; //                 __m128i; flt_false, flt_false, flt_false, flt_false
    extern const __m128 __m128_select0001; //                 __m128i; flt_false, flt_false, flt_false, flt_true
    extern const __m128 __m128_select0010; //                 __m128i; flt_false, flt_false, flt_true, flt_false
    extern const __m128 __m128_select0100; //                 __m128i; flt_false, flt_true, flt_false, flt_false
    extern const __m128 __m128_select1000; //                 __m128i; flt_true, flt_false, flt_false, flt_false
    extern const __m128 __m128_select0011; //                 __m128i; flt_false, flt_false, flt_true, flt_true
    extern const __m128 __m128_select0111; //                 __m128i; flt_false, flt_true, flt_true, flt_true
    extern const __m128 __m128_select1111; //                 __m128i; flt_true, flt_true, flt_true, flt_true
    extern const __m128 __m128_select1110; //                 __m128i; flt_true, flt_true, flt_true, flt_false
    extern const __m128 __m128_select1100; //                 __m128i; flt_true, flt_true, flt_false, flt_false
    extern const __m128 __m128_select1001; //                 __m128i; flt_true, flt_false, flt_false, flt_true
    extern const __m128 __m128_select0110; //                 __m128i; flt_false, flt_true, flt_true, flt_false
    extern const __m128 __m128_select1011; //                 __m128i; flt_true, flt_false, flt_true, flt_true
    extern const __m128 __m128_select1101; //                 __m128i; flt_true, flt_true, flt_false, flt_true
    extern const __m128 __m128_select0101; //                 __m128i; flt_false, flt_true, flt_false, flt_true
    extern const __m128 __m128_select1010; //                 __m128i; flt_true, flt_false, flt_true, flt_false
    extern const __m128 __m128_onehalfminusepsilon; //          __m128i; // flt_halfminuseps_msk; // flt_halfminuseps_msk; // flt_halfminuseps_msk; // flt_halfminuseps_msk
    extern const __m128 __m128_fixupy16; //                         __m128f; // flt_1; // 0.0000152587890625; // flt_0; // flt_0
    extern const __m128 __m128_fixupy16w16; //                  __m128f; // flt_1; // flt_1; // 0.0000152587890625; // 0.0000152587890625   
    extern const __m128 __m128_flipy; //                            __m128i; // flt_false; // flt_flip32_msk; // flt_false; // flt_false
    extern const __m128 __m128_flipz; //                            __m128i; // flt_false; // flt_false; // flt_flip32_msk; // flt_false
    extern const __m128 __m128_flipw; //                            __m128i; // flt_false; // flt_false; // flt_false; // flt_flip32_msk
    extern const __m128 __m128_flipyz; //                       __m128i; // flt_false; // flt_flip32_msk; // flt_flip32_msk; // flt_false
    extern const __m128 __m128_flipzw; //                       __m128i; // flt_false; // flt_false; // flt_flip32_msk; // flt_flip32_msk
    extern const __m128 __m128_flipyw; //                       __m128i; // flt_false; // flt_flip32_msk; // flt_false; // flt_flip32_msk
    extern const __m128 __m128_maskdec4; //                         __m128i; // 0x000003ff; // 0x000ffc00; // 0x3ff00000; // 0xc0000000
    extern const __m128 __m128_xordec4; //                      __m128i; // 0x00000200; // 0x00080000; // 0x20000000; // 0x00000000
    extern const __m128 __m128_addudec4; //                         __m128f; // flt_0; // flt_0; // flt_0; // flt_2147483648
    extern const __m128 __m128_addec4; //                       __m128f; // flt_neg512; // (-524288.0); // (-536870912.0); // flt_0
    extern const __m128 __m128_muldec4; //                      __m128f; // flt_1; // 0.0009765625; // 0.00000095367431640625; // 0.000000000931322574615478515625  
    extern const __m128 __m128_maskbyte4; //                        __m128i; // 0x000000ff; // 0x0000ff00; // 0x00ff0000; // 0xff000000
    extern const __m128 __m128_xorbyte4; //                         __m128i; // 0x00000080; // 0x00008000; // 0x00800000; // 0x00000000
    extern const __m128 __m128_addbyte4; //                         __m128f; // flt_neg128; // flt_neg32768; // flt_mini8xu16; // flt_0
    extern const __m128 __m128_fixmaxint; //                        __m128f; // flt_fixmaxi32; // flt_fixmaxi32; // flt_fixmaxi32; // flt_fixmaxi32
    extern const __m128 __m128_fixmaxuint; //                   __m128f; // flt_fixmaxu32; // flt_fixmaxu32; // flt_fixmaxu32; // flt_fixmaxu32
    extern const __m128 __m128_unsignedfix; //                  __m128f; // flt_fixunsigned; // flt_fixunsigned; // flt_fixunsigned; // flt_fixunsigned
    extern const __m128 __m128_srgbscale; //                        __m128f; // 12.92; // 12.92; // 12.92; // flt_1
    extern const __m128 __m128_srgba; //                            __m128f; // 0.055; // 0.055; // 0.055; // flt_0
    extern const __m128 __m128_srgba1; //                       __m128f; // 1.055; // 1.055; // 1.055; // flt_1
    extern const __m128 __m128_exponentbias; //                     __m128i; // flt_exp_msk; // flt_exp_msk; // flt_exp_msk; // flt_exp_msk
    extern const __m128 __m128_subnormalexponent; //                __m128i; // flt_subnormalexp_msk; // flt_subnormalexp_msk; // flt_subnormalexp_msk; // flt_subnormalexp_msk
    extern const __m128 __m128_numtrailing; //                  __m128i; // flt_mant_msk; // flt_mant_msk; // flt_mant_msk; // flt_mant_msk
    extern const __m128 __m128_neginfinity; //                  __m128i; // flt_neginf_msk; // flt_neginf_msk; // flt_neginf_msk; // flt_neginf_msk
    extern const __m128 __m128_lge; //                          __m128f; // flt_log2e; // flt_log2e; // flt_log2e; // flt_log2e
    extern const __m128 __m128_invlge; //                       __m128f; // flt_rcplog2e; // flt_rcplog2e; // flt_rcplog2e; // flt_rcplog2e
    extern const __m128 __m128_ubytemax; //                         __m128f; // flt_255; // flt_255; // flt_255; // flt_255
    extern const __m128 __m128_bytemin; //                      __m128f; // flt_neg127; // flt_neg127; // flt_neg127; // flt_neg127
    extern const __m128 __m128_bytemax; //                      __m128f; // flt_127; // flt_127; // flt_127; // flt_127
    extern const __m128 __m128_shortmin; //                         __m128f; // flt_neg32767; // flt_neg32767; // flt_neg32767; // flt_neg32767
    extern const __m128 __m128_shortmax; //                         __m128f; // flt_32767; // flt_32767; // flt_32767; // flt_32767
    extern const __m128 __m128_ushortmax; //                        __m128f; // flt_65535; // flt_65535; // flt_65535; // flt_65535

    //;;float low;;

    //             sincos template, single precision
    extern const __m128 __m128_0e_DP1F; //              __m128f; // (0.78515625 * 2.0)
    extern const __m128 __m128_0e_DP2F; //              __m128f; // (2.4187564849853515625e-4 * 2.0)
    extern const __m128 __m128_0e_DP3F; //              __m128f; // (3.77489497744594108e-8 * 2.0)

    extern const __m128 __m128_0e_P0sinf; //              __m128f; // (-1.6666654611e-1)
    extern const __m128 __m128_0e_P1sinf; //              __m128f; // (8.3321608736e-3)
    extern const __m128 __m128_0e_P2sinf; //              __m128f; // (-1.9515295891e-4)

    extern const __m128 __m128_0e_P0cosf; //              __m128f; // (4.166664568298827e-2)
    extern const __m128 __m128_0e_P1cosf; //              __m128f; // (-1.388731625493765e-3)
    extern const __m128 __m128_0e_P2cosf; //              __m128f; // (2.443315711809948e-5)
    //             sincos template, single precision

    extern const __m128 __m128_0e_1lshl3; //                    __m128f; // flt_1lshl3; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl4; //                    __m128f; // flt_1lshl4; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl7; //                    __m128f; // flt_1lshl7; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl8; //                    __m128f; // flt_1lshl8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl11; //                   __m128f; // flt_1lshl11; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl12; //                   __m128f; // flt_1lshl12; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl15; //                   __m128f; // flt_1lshl15; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl16; //                   __m128f; // flt_1lshl16; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl19; //                   __m128f; // flt_1lshl19; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl20; //                   __m128f; // flt_1lshl20; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl23; //                   __m128f; // flt_1lshl23; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl24; //                   __m128f; // flt_1lshl24; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl27; //                   __m128f; // flt_1lshl27; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl28; //                   __m128f; // flt_1lshl28; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1lshl31; //                   __m128f; // flt_1lshl31; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_neg1lshl3; //             __m128f; // flt_neg1lshl3; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl4; //             __m128f; // flt_neg1lshl4; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl7; //             __m128f; // flt_neg1lshl7; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl8; //             __m128f; // flt_neg1lshl8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl11; //                __m128f; // flt_neg1lshl11; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl12; //                __m128f; // flt_neg1lshl12; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl15; //                __m128f; // flt_neg1lshl15; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl16; //                __m128f; // flt_neg1lshl16; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl19; //                __m128f; // flt_neg1lshl19; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl20; //                __m128f; // flt_neg1lshl20; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl23; //                __m128f; // flt_neg1lshl23; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl24; //                __m128f; // flt_neg1lshl24; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl27; //                __m128f; // flt_neg1lshl27; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl28; //                __m128f; // flt_neg1lshl28; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1lshl31; //                __m128f; // flt_neg1lshl31; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_false; //                 __m128i; // flt_false; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_true; //                  __m128i; // flt_true; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_error; //                 __m128i; // flt_error; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_magic; //                 __m128i; // flt_magic; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sign; //                  __m128i; // flt_sign; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_invsign; //                   __m128i; // flt_invsign; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_magic; //                 __m128i; // flt_magic; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sign; //                  __m128i; // flt_sign; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_invsign; //                   __m128i; // flt_invsign; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_inf; //                       __m128i; // flt_inf; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_fin; //                       __m128i; // flt_fin; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_invinf; //                    __m128i; // flt_invinf; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neginf; //                    __m128i; // flt_neginf; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_nan; //                       __m128i; // flt_nan; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_qnan; //                  __m128i; // flt_qnan; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_negqnan; //                   __m128i; // flt_negqnan; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_nantest; //                   __m128i; // flt_nantest; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_abs; //                       __m128i; // flt_abs; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_min; //                       __m128f; // flt_min; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_max; //                       __m128f; // flt_max; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_nofraction; //                __m128f; // flt_nofraction; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mindenorm; //             __m128f; // flt_mindenorm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_denormlimit; //               __m128f; // flt_denormlimit; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_minnormal; //             __m128f; // flt_minnormal; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_maxnormal; //             __m128f; // flt_maxnormal; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_decdig; //                    __m128f; // flt_decdig; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_dig; //                       __m128f; // flt_dig; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_negdecdig; //             __m128f; // flt_negdecdig; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_negdig; //                    __m128f; // flt_negdig; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_eps; //                       __m128f; // flt_eps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_epsilon; //                   __m128f; // flt_epsilon; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_normeps; //                   __m128f; // flt_normeps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_guard; //                 __m128f; // flt_guard; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mantpow2; //              __m128f; // flt_mantpow2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_maxmantpow2; //               __m128f; // flt_maxmantpow2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mantdig; //                   __m128f; // flt_mantdig; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mant; //                  __m128f; // flt_mant; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_negmantdig; //                __m128f; // flt_negmantdig; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_negmant; //                   __m128f; // flt_negmant; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_maxexp; //                    __m128f; // flt_maxexp; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_expsign; //                   __m128f; // flt_expsign; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_exp; //                       __m128f; // flt_exp; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_negmaxexp; //             __m128f; // flt_negmaxexp; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_negexpsign; //                __m128f; // flt_negexpsign; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_negexp; //                    __m128f; // flt_negexp; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_subnormalexp; //          __m128f; // flt_subnormalexp; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_minexp; //                    __m128f; // flt_minexp; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_maxdecexp; //             __m128f; // flt_maxdecexp; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_negmaxdecexp; //          __m128f; // flt_negmaxdecexp; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mindecexp; //             __m128f; // flt_mindecexp; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_expfield; //              __m128f; // flt_expfield; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mantfield; //             __m128f; // flt_mantfield; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_norm; //                  __m128f; // flt_norm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_radix; //                 __m128f; // flt_radix; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rounds; //                    __m128f; // flt_rounds; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_subdec; //                    __m128f; // flt_subdec; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrtmax; //                   __m128f; // flt_sqrtmax; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_smallnormal; //               __m128f; // flt_smallnormal; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_halfminuseps; //          __m128f; // flt_halfminuseps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_trueint; //                   __m128f; // flt_trueint; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_byte; //                  __m128f; // flt_byte; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_byte_even; //             __m128f; // flt_byte_even; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_byte_odd; //              __m128f; // flt_byte_odd; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_4low; //                  __m128f; // flt_4low; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_4high; //                 __m128f; // flt_4high; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_flip4; //                 __m128f; // flt_flip4; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_8low; //                  __m128f; // flt_8low; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_8high; //                 __m128f; // flt_8high; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_flip8; //                 __m128f; // flt_flip8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_16low; //                 __m128f; // flt_16low; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_16high; //                    __m128f; // flt_16high; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_flip16; //                    __m128f; // flt_flip16; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_24low; //                 __m128f; // flt_24low; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_24high; //                    __m128f; // flt_24high; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_flip24; //                    __m128f; // flt_flip24; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_28low; //                 __m128f; // flt_28low; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_28high; //                    __m128f; // flt_28high; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_flip28; //                    __m128f; // flt_flip28; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_32low; //                 __m128f; // flt_32low; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_32high; //                    __m128f; // flt_32high; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_flip32; //                    __m128f; // flt_flip32; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_0; //                         __m128f; // flt_0; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d0001; //                    __m128f; // flt_0d0001; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d0002; //                    __m128f; // flt_0d0002; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d0003; //                    __m128f; // flt_0d0003; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d0004; //                    __m128f; // flt_0d0004; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d0005; //                    __m128f; // flt_0d0005; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d0006; //                    __m128f; // flt_0d0006; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d0007; //                    __m128f; // flt_0d0007; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d0008; //                    __m128f; // flt_0d0008; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d0009; //                    __m128f; // flt_0d0009; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d001; //                     __m128f; // flt_0d001; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d002; //                     __m128f; // flt_0d002; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d003; //                     __m128f; // flt_0d003; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d004; //                     __m128f; // flt_0d004; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d005; //                     __m128f; // flt_0d005; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d006; //                     __m128f; // flt_0d006; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d007; //                     __m128f; // flt_0d007; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d008; //                     __m128f; // flt_0d008; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d009; //                     __m128f; // flt_0d009; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d01; //                  __m128f; // flt_0d01; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d02; //                  __m128f; // flt_0d02; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d025; //                     __m128f; // flt_0d025; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d03; //                  __m128f; // flt_0d03; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d04; //                  __m128f; // flt_0d04; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d05; //                  __m128f; // flt_0d05; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d06; //                  __m128f; // flt_0d06; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d07; //                  __m128f; // flt_0d07; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d08; //                  __m128f; // flt_0d08; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d09; //                  __m128f; // flt_0d09; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d1; //                   __m128f; // flt_0d1; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d2; //                   __m128f; // flt_0d2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d25; //                  __m128f; // flt_0d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d3; //                   __m128f; // flt_0d3; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d4; //                   __m128f; // flt_0d4; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d5; //                   __m128f; // flt_0d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d6; //                   __m128f; // flt_0d6; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d7; //                   __m128f; // flt_0d7; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d8; //                   __m128f; // flt_0d8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_0d9; //                   __m128f; // flt_0d9; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1; //                         __m128f; // flt_1; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1d25; //                  __m128f; // flt_1d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1d5; //                   __m128f; // flt_1d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2; //                         __m128f; // flt_2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2d25; //                  __m128f; // flt_2d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2d5; //                   __m128f; // flt_2d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_3; //                         __m128f; // flt_3; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_3d25; //                  __m128f; // flt_3d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_3d5; //                   __m128f; // flt_3d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_4; //                         __m128f; // flt_4; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_4d25; //                  __m128f; // flt_4d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_4d5; //                   __m128f; // flt_4d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_5; //                         __m128f; // flt_5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_5d25; //                  __m128f; // flt_5d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_5d5; //                   __m128f; // flt_5d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_6; //                         __m128f; // flt_6; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_6d25; //                  __m128f; // flt_6d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_6d5; //                   __m128f; // flt_6d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_7; //                         __m128f; // flt_7; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_7d25; //                  __m128f; // flt_7d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_7d5; //                   __m128f; // flt_7d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_8; //                         __m128f; // flt_8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_8d25; //                  __m128f; // flt_8d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_8d5; //                   __m128f; // flt_8d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_9; //                         __m128f; // flt_9; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_9d25; //                  __m128f; // flt_9d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_9d5; //                   __m128f; // flt_9d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_10; //                        __m128f; // flt_10; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_11; //                        __m128f; // flt_11; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_12; //                        __m128f; // flt_12; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_13; //                        __m128f; // flt_13; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_14; //                        __m128f; // flt_14; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_15; //                        __m128f; // flt_15; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_16; //                        __m128f; // flt_16; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_17; //                        __m128f; // flt_17; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_18; //                        __m128f; // flt_18; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_19; //                        __m128f; // flt_19; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_20; //                        __m128f; // flt_20; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_21; //                        __m128f; // flt_21; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_22; //                        __m128f; // flt_22; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_23; //                        __m128f; // flt_23; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_24; //                        __m128f; // flt_24; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_24d5; //                  __m128f; // flt_24d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_25; //                        __m128f; // flt_25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_26; //                        __m128f; // flt_26; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_27; //                        __m128f; // flt_27; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_28; //                        __m128f; // flt_28; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_29; //                        __m128f; // flt_29; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_30; //                        __m128f; // flt_30; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_31; //                        __m128f; // flt_31; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_32; //                        __m128f; // flt_32; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_33; //                        __m128f; // flt_33; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_34; //                        __m128f; // flt_34; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_35; //                        __m128f; // flt_35; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_36; //                        __m128f; // flt_36; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_37; //                        __m128f; // flt_37; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_38; //                        __m128f; // flt_38; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_39; //                        __m128f; // flt_39; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_40; //                        __m128f; // flt_40; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_41; //                        __m128f; // flt_41; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_42; //                        __m128f; // flt_42; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_43; //                        __m128f; // flt_43; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_44; //                        __m128f; // flt_44; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_45; //                        __m128f; // flt_45; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_46; //                        __m128f; // flt_46; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_47; //                        __m128f; // flt_47; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_48; //                        __m128f; // flt_48; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_49; //                        __m128f; // flt_49; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_50; //                        __m128f; // flt_50; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_51; //                        __m128f; // flt_51; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_52; //                        __m128f; // flt_52; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_53; //                        __m128f; // flt_53; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_54; //                        __m128f; // flt_54; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_55; //                        __m128f; // flt_55; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_56; //                        __m128f; // flt_56; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_57; //                        __m128f; // flt_57; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_58; //                        __m128f; // flt_58; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_59; //                        __m128f; // flt_59; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_60; //                        __m128f; // flt_60; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_61; //                        __m128f; // flt_61; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_62; //                        __m128f; // flt_62; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_63; //                        __m128f; // flt_63; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_64; //                        __m128f; // flt_64; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_65; //                        __m128f; // flt_65; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_66; //                        __m128f; // flt_66; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_67; //                        __m128f; // flt_67; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_68; //                        __m128f; // flt_68; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_69; //                        __m128f; // flt_69; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_70; //                        __m128f; // flt_70; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_71; //                        __m128f; // flt_71; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_72; //                        __m128f; // flt_72; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_73; //                        __m128f; // flt_73; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_74; //                        __m128f; // flt_74; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_75; //                        __m128f; // flt_75; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_76; //                        __m128f; // flt_76; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_77; //                        __m128f; // flt_77; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_78; //                        __m128f; // flt_78; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_79; //                        __m128f; // flt_79; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_80; //                        __m128f; // flt_80; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_81; //                        __m128f; // flt_81; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_82; //                        __m128f; // flt_82; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_83; //                        __m128f; // flt_83; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_84; //                        __m128f; // flt_84; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_85; //                        __m128f; // flt_85; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_86; //                        __m128f; // flt_86; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_87; //                        __m128f; // flt_87; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_88; //                        __m128f; // flt_88; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_89; //                        __m128f; // flt_89; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_90; //                        __m128f; // flt_90; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_91; //                        __m128f; // flt_91; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_92; //                        __m128f; // flt_92; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_93; //                        __m128f; // flt_93; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_94; //                        __m128f; // flt_94; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_95; //                        __m128f; // flt_95; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_96; //                        __m128f; // flt_96; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_97; //                        __m128f; // flt_97; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_98; //                        __m128f; // flt_98; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_99; //                        __m128f; // flt_99; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_100; //                   __m128f; // flt_100; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_125; //                   __m128f; // flt_125; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_126; //                   __m128f; // flt_126; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_127; //                   __m128f; // flt_127; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_128; //                   __m128f; // flt_128; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_140; //                   __m128f; // flt_140; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_145; //                   __m128f; // flt_145; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_150; //                   __m128f; // flt_150; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_180; //                   __m128f; // flt_180; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_253; //                   __m128f; // flt_253; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_254; //                   __m128f; // flt_254; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_255; //                   __m128f; // flt_255; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_256; //                   __m128f; // flt_256; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_360; //                   __m128f; // flt_360; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_511; //                   __m128f; // flt_511; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_512; //                   __m128f; // flt_512; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_513; //                   __m128f; // flt_513; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1023; //                  __m128f; // flt_1023; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1024; //                  __m128f; // flt_1024; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1025; //                  __m128f; // flt_1025; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_32767; //                     __m128f; // flt_32767; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_32768; //                     __m128f; // flt_32768; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_65535; //                     __m128f; // flt_65535; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_65536; //                     __m128f; // flt_65536; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2147483647; //                __m128f; // flt_2147483647; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2147483648; //                __m128f; // flt_2147483648; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_4294967295; //                __m128f; // flt_4294967295; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_4294967296; //                __m128f; // flt_4294967296; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_neg0; //                  __m128f; // flt_neg0; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d0001; //                 __m128f; // flt_neg0d0001; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d0002; //                 __m128f; // flt_neg0d0002; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d0003; //                 __m128f; // flt_neg0d0003; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d0004; //                 __m128f; // flt_neg0d0004; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d0005; //                 __m128f; // flt_neg0d0005; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d0006; //                 __m128f; // flt_neg0d0006; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d0007; //                 __m128f; // flt_neg0d0007; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d0008; //                 __m128f; // flt_neg0d0008; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d0009; //                 __m128f; // flt_neg0d0009; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d001; //              __m128f; // flt_neg0d001; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d002; //              __m128f; // flt_neg0d002; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d003; //              __m128f; // flt_neg0d003; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d004; //              __m128f; // flt_neg0d004; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d005; //              __m128f; // flt_neg0d005; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d006; //              __m128f; // flt_neg0d006; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d007; //              __m128f; // flt_neg0d007; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d008; //              __m128f; // flt_neg0d008; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d009; //              __m128f; // flt_neg0d009; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d01; //               __m128f; // flt_neg0d01; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d02; //               __m128f; // flt_neg0d02; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d025; //              __m128f; // flt_neg0d025; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d03; //               __m128f; // flt_neg0d03; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d04; //               __m128f; // flt_neg0d04; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d05; //               __m128f; // flt_neg0d05; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d06; //               __m128f; // flt_neg0d06; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d07; //               __m128f; // flt_neg0d07; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d08; //               __m128f; // flt_neg0d08; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d09; //               __m128f; // flt_neg0d09; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d1; //                    __m128f; // flt_neg0d1; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d2; //                    __m128f; // flt_neg0d2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d25; //               __m128f; // flt_neg0d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d3; //                    __m128f; // flt_neg0d3; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d4; //                    __m128f; // flt_neg0d4; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d5; //                    __m128f; // flt_neg0d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d6; //                    __m128f; // flt_neg0d6; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d7; //                    __m128f; // flt_neg0d7; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d8; //                    __m128f; // flt_neg0d8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg0d9; //                    __m128f; // flt_neg0d9; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1; //                  __m128f; // flt_neg1; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1d25; //               __m128f; // flt_neg1d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1d5; //                    __m128f; // flt_neg1d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg2; //                  __m128f; // flt_neg2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg2d25; //               __m128f; // flt_neg2d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg2d5; //                    __m128f; // flt_neg2d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg3; //                  __m128f; // flt_neg3; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg3d25; //               __m128f; // flt_neg3d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg3d5; //                    __m128f; // flt_neg3d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg4; //                  __m128f; // flt_neg4; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg4d25; //               __m128f; // flt_neg4d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg4d5; //                    __m128f; // flt_neg4d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg5; //                  __m128f; // flt_neg5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg5d25; //               __m128f; // flt_neg5d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg5d5; //                    __m128f; // flt_neg5d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg6; //                  __m128f; // flt_neg6; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg6d25; //               __m128f; // flt_neg6d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg6d5; //                    __m128f; // flt_neg6d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg7; //                  __m128f; // flt_neg7; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg7d25; //               __m128f; // flt_neg7d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg7d5; //                    __m128f; // flt_neg7d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg8; //                  __m128f; // flt_neg8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg8d25; //               __m128f; // flt_neg8d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg8d5; //                    __m128f; // flt_neg8d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg9; //                  __m128f; // flt_neg9; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg9d25; //               __m128f; // flt_neg9d25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg9d5; //                    __m128f; // flt_neg9d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg10; //                     __m128f; // flt_neg10; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg11; //                     __m128f; // flt_neg11; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg12; //                     __m128f; // flt_neg12; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg13; //                     __m128f; // flt_neg13; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg14; //                     __m128f; // flt_neg14; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg15; //                     __m128f; // flt_neg15; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg16; //                     __m128f; // flt_neg16; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg17; //                     __m128f; // flt_neg17; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg18; //                     __m128f; // flt_neg18; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg19; //                     __m128f; // flt_neg19; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg20; //                     __m128f; // flt_neg20; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg21; //                     __m128f; // flt_neg21; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg22; //                     __m128f; // flt_neg22; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg23; //                     __m128f; // flt_neg23; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg24; //                     __m128f; // flt_neg24; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg24d5; //               __m128f; // flt_neg24d5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg25; //                     __m128f; // flt_neg25; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg26; //                     __m128f; // flt_neg26; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg27; //                     __m128f; // flt_neg27; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg28; //                     __m128f; // flt_neg28; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg29; //                     __m128f; // flt_neg29; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg30; //                     __m128f; // flt_neg30; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg31; //                     __m128f; // flt_neg31; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg32; //                     __m128f; // flt_neg32; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg33; //                     __m128f; // flt_neg33; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg34; //                     __m128f; // flt_neg34; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg35; //                     __m128f; // flt_neg35; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg36; //                     __m128f; // flt_neg36; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg37; //                     __m128f; // flt_neg37; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg38; //                     __m128f; // flt_neg38; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg39; //                     __m128f; // flt_neg39; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg40; //                     __m128f; // flt_neg40; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg41; //                     __m128f; // flt_neg41; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg42; //                     __m128f; // flt_neg42; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg43; //                     __m128f; // flt_neg43; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg44; //                     __m128f; // flt_neg44; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg45; //                     __m128f; // flt_neg45; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg46; //                     __m128f; // flt_neg46; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg47; //                     __m128f; // flt_neg47; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg48; //                     __m128f; // flt_neg48; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg49; //                     __m128f; // flt_neg49; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg50; //                     __m128f; // flt_neg50; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg51; //                     __m128f; // flt_neg51; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg52; //                     __m128f; // flt_neg52; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg53; //                     __m128f; // flt_neg53; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg54; //                     __m128f; // flt_neg54; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg55; //                     __m128f; // flt_neg55; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg56; //                     __m128f; // flt_neg56; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg57; //                     __m128f; // flt_neg57; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg58; //                     __m128f; // flt_neg58; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg59; //                     __m128f; // flt_neg59; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg60; //                     __m128f; // flt_neg60; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg61; //                     __m128f; // flt_neg61; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg62; //                     __m128f; // flt_neg62; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg63; //                     __m128f; // flt_neg63; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg64; //                     __m128f; // flt_neg64; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg65; //                     __m128f; // flt_neg65; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg66; //                     __m128f; // flt_neg66; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg67; //                     __m128f; // flt_neg67; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg68; //                     __m128f; // flt_neg68; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg69; //                     __m128f; // flt_neg69; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg70; //                     __m128f; // flt_neg70; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg71; //                     __m128f; // flt_neg71; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg72; //                     __m128f; // flt_neg72; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg73; //                     __m128f; // flt_neg73; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg74; //                     __m128f; // flt_neg74; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg75; //                     __m128f; // flt_neg75; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg76; //                     __m128f; // flt_neg76; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg77; //                     __m128f; // flt_neg77; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg78; //                     __m128f; // flt_neg78; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg79; //                     __m128f; // flt_neg79; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg80; //                     __m128f; // flt_neg80; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg81; //                     __m128f; // flt_neg81; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg82; //                     __m128f; // flt_neg82; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg83; //                     __m128f; // flt_neg83; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg84; //                     __m128f; // flt_neg84; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg85; //                     __m128f; // flt_neg85; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg86; //                     __m128f; // flt_neg86; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg87; //                     __m128f; // flt_neg87; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg88; //                     __m128f; // flt_neg88; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg89; //                     __m128f; // flt_neg89; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg90; //                     __m128f; // flt_neg90; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg91; //                     __m128f; // flt_neg91; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg92; //                     __m128f; // flt_neg92; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg93; //                     __m128f; // flt_neg93; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg94; //                     __m128f; // flt_neg94; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg95; //                     __m128f; // flt_neg95; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg96; //                     __m128f; // flt_neg96; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg97; //                     __m128f; // flt_neg97; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg98; //                     __m128f; // flt_neg98; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg99; //                     __m128f; // flt_neg99; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg100; //                    __m128f; // flt_neg100; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg125; //                    __m128f; // flt_neg125; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg126; //                    __m128f; // flt_neg126; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg127; //                    __m128f; // flt_neg127; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg128; //                    __m128f; // flt_neg128; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg140; //                    __m128f; // flt_neg140; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg145; //                    __m128f; // flt_neg145; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg150; //                    __m128f; // flt_neg150; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg180; //                    __m128f; // flt_neg180; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg253; //                    __m128f; // flt_neg253; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg254; //                    __m128f; // flt_neg254; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg255; //                    __m128f; // flt_neg255; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg256; //                    __m128f; // flt_neg256; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg360; //                    __m128f; // flt_neg360; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg511; //                    __m128f; // flt_neg511; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg512; //                    __m128f; // flt_neg512; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg513; //                    __m128f; // flt_neg513; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1023; //               __m128f; // flt_neg1023; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1024; //               __m128f; // flt_neg1024; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg1025; //               __m128f; // flt_neg1025; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_neg32767; //              __m128f; // flt_neg32767; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg32768; //              __m128f; // flt_neg32768; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg65535; //              __m128f; // flt_neg65535; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg65536; //              __m128f; // flt_neg65536; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg2147483647; //             __m128f; // flt_neg2147483647; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg2147483648; //             __m128f; // flt_neg2147483648; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg4294967295; //             __m128f; // flt_neg4294967295; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg4294967296; //             __m128f; // flt_neg4294967296; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_bin128; //                    __m128i; // flt_bin128; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_binneg150; //             __m128i; // flt_binneg150; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_maxrand; //                   __m128f; // flt_maxrand; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_maxi8; //                 __m128f; // flt_maxi8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mini8; //                 __m128f; // flt_mini8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_maxu8; //                 __m128f; // flt_maxu8; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_maxi16; //                    __m128f; // flt_maxi16; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mini16; //                    __m128f; // flt_mini16; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_maxu16; //                    __m128f; // flt_maxu16; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_maxi32; //                    __m128f; // flt_maxi32; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mini32; //                    __m128f; // flt_mini32; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_maxu32; //                    __m128f; // flt_maxu32; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_maxi8xu8; //              __m128f; // flt_maxi8xu8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mini8xu8; //              __m128f; // flt_mini8xu8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_maxi8xu16; //             __m128f; // flt_maxi8xu16; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mini8xu16; //             __m128f; // flt_mini8xu16; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_maxi16xu16; //                __m128f; // flt_maxi16xu16; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mini16xu16; //                __m128f; // flt_mini16xu16; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_fixunsigned; //               __m128f; // flt_fixunsigned; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_fixunsigned32; //         __m128f; // flt_fixunsigned32; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_fixmaxi32; //             __m128f; // flt_fixmaxi32; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_fixmaxu32; //             __m128f; // flt_fixmaxu32; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_rcpi16; //                    __m128f; // flt_rcpi16; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcpu16; //                    __m128f; // flt_rcpu16; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcpi16xu16; //                __m128f; // flt_rcpi16xu16; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_fixaa8; //                    __m128f; // flt_fixaa8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_fixr8; //                     __m128f; // flt_fixr8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_fixg8; //                     __m128f; // flt_fixg8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_fixb8; //                     __m128f; // flt_fixb8; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_norma8; //                    __m128f; // flt_norma8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_normr8; //                    __m128f; // flt_normr8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_normg8; //                    __m128f; // flt_normg8; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_normb8; //                    __m128f; // flt_normb8; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_fixaa2; //                    __m128f; // flt_fixaa2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_fixb10; //                    __m128f; // flt_fixb10; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_fixg10; //                    __m128f; // flt_fixg10; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_fixr10; //                    __m128f; // flt_fixr10; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_norma2; //                    __m128f; // flt_norma2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_normb10; //               __m128f; // flt_normb10; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_normg10; //               __m128f; // flt_normg10; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_normr10; //               __m128f; // flt_normr10; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_mg; //                        __m128f; // flt_mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_negmg; //                     __m128f; // flt_negmg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_halfmg; //                    __m128f; // flt_halfmg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neghalfmg; //                 __m128f; // flt_neghalfmg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mgdiv4; //                    __m128f; // flt_mgdiv4; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_negmgdiv4; //                 __m128f; // flt_negmgdiv4; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_halfmgxmg; //                 __m128f; // flt_halfmgxmg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_halfmgxsqrmg; //          __m128f; // flt_halfmgxsqrmg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_halfmgxcubemg; //             __m128f; // flt_halfmgxcubemg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neghalfmgxmg; //          __m128f; // flt_neghalfmgxmg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neghalfmgxsqrmg; //           __m128f; // flt_neghalfmgxsqrmg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neghalfmgxcubemg; //      __m128f; // flt_neghalfmgxcubemg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrmg; //                     __m128f; // flt_sqrmg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_cubemg; //                    __m128f; // flt_cubemg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrtmg; //                    __m128f; // flt_sqrtmg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_cbrtmg; //                    __m128f; // flt_cbrtmg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcpmg; //                     __m128f; // flt_rcpmg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcpsqrmg; //              __m128f; // flt_rcpsqrmg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcpcubemg; //                 __m128f; // flt_rcpcubemg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcpsqrtmg; //                 __m128f; // flt_rcpsqrtmg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcpcbrtmg; //                 __m128f; // flt_rcpcbrtmg; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_2mg; //                   __m128f; // flt_2mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg2mg; //                    __m128f; // flt_neg2mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqr2mg; //                    __m128f; // flt_sqr2mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_cube2mg; //               __m128f; // flt_cube2mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrt2mg; //               __m128f; // flt_sqrt2mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_cbrt2mg; //               __m128f; // flt_cbrt2mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_4mg; //                   __m128f; // flt_4mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg4mg; //                    __m128f; // flt_neg4mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqr4mg; //                    __m128f; // flt_sqr4mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_cube4mg; //               __m128f; // flt_cube4mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrt4mg; //               __m128f; // flt_sqrt4mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_cbrt4mg; //               __m128f; // flt_cbrt4mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcp2mg; //                    __m128f; // flt_rcp2mg; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcp4mg; //                    __m128f; // flt_rcp4mg; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_e; //                         __m128f; // flt_e; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_exp; //                   __m128f; // flt_exp; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_loge; //                  __m128f; // flt_loge; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_logehigh; //              __m128f; // flt_logehigh; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_log2e; //                     __m128f; // flt_log2e; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_log2ehigh; //                 __m128f; // flt_log2ehigh; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_log10e; //                    __m128f; // flt_log10e; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcplog2e; //              __m128f; // flt_rcplog2e; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcplog10e; //                 __m128f; // flt_rcplog10e; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_log2t; //                     __m128f; // flt_log2t; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_log2; //                  __m128f; // flt_log2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_log2high; //              __m128f; // flt_log2high; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_ln2; //                   __m128f; // flt_ln2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_ln2high; //               __m128f; // flt_ln2high; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1divln2; //               __m128f; // flt_1divln2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2divln2; //               __m128f; // flt_2divln2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_lnt; //                   __m128f; // flt_lnt; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_lnthigh; //               __m128f; // flt_lnthigh; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_ln10; //                  __m128f; // flt_ln10; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrt2; //                     __m128f; // flt_sqrt2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcpsqrt2; //              __m128f; // flt_rcpsqrt2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrt2div2; //                 __m128f; // flt_sqrt2div2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrt2div2high; //             __m128f; // flt_sqrt2div2high; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrt2div2low; //          __m128f; // flt_sqrt2div2low; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrthalf; //              __m128f; // flt_sqrthalf; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrthalfhigh; //          __m128f; // flt_sqrthalfhigh; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrthalflow; //           __m128f; // flt_sqrthalflow; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_pow2; //                  __m128f; // flt_pow2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcppow2; //               __m128f; // flt_rcppow2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_cbrt2; //                     __m128f; // flt_cbrt2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcpcbrt2; //              __m128f; // flt_rcpcbrt2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1div3; //                     __m128f; // flt_1div3; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1div7; //                     __m128f; // flt_1div7; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_1div9; //                     __m128f; // flt_1div9; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2div3; //                     __m128f; // flt_2div3; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2div7; //                     __m128f; // flt_2div7; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2div9; //                     __m128f; // flt_2div9; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_4div3; //                     __m128f; // flt_4div3; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_4div7; //                     __m128f; // flt_4div7; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_4div9; //                     __m128f; // flt_4div9; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_pi; //                        __m128f; // flt_pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_pihigh; //                    __m128f; // flt_pihigh; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_halfpi; //                    __m128f; // flt_halfpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2pi; //                   __m128f; // flt_2pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_negpi; //                     __m128f; // flt_negpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neghalfpi; //                 __m128f; // flt_neghalfpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neg2pi; //                    __m128f; // flt_neg2pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcppi; //                     __m128f; // flt_rcppi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_invpi; //                     __m128f; // flt_invpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcp2pi; //                    __m128f; // flt_rcp2pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_inv2pi; //                    __m128f; // flt_inv2pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_pidiv2; //                    __m128f; // flt_pidiv2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_pidiv2high; //                __m128f; // flt_pidiv2high; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_pidiv4; //                    __m128f; // flt_pidiv4; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_pidiv4high; //                __m128f; // flt_pidiv4high; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_pix3div4; //              __m128f; // flt_pix3div4; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrtpi; //                    __m128f; // flt_sqrtpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrt2pi; //               __m128f; // flt_sqrt2pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrt2pihigh; //           __m128f; // flt_sqrt2pihigh; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcpsqrtpi; //                 __m128f; // flt_rcpsqrtpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcpsqrt2pi; //                __m128f; // flt_rcpsqrt2pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrtpidiv2; //                __m128f; // flt_sqrtpidiv2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrtpidiv2high; //            __m128f; // flt_sqrtpidiv2high; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrt2pidiv2; //           __m128f; // flt_sqrt2pidiv2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrt2pidiv2high; //       __m128f; // flt_sqrt2pidiv2high; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2divpi; //                    __m128f; // flt_2divpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2div2pi; //               __m128f; // flt_2div2pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2divsqrtpi; //                __m128f; // flt_2divsqrtpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_2divsqrt2pi; //           __m128f; // flt_2divsqrt2pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_sqrt2divpi; //                __m128f; // flt_sqrt2divpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_logpi; //                     __m128f; // flt_logpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_log2pi; //                    __m128f; // flt_log2pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_lnpi; //                  __m128f; // flt_lnpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_ln2pi; //                     __m128f; // flt_ln2pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_powpi; //                     __m128f; // flt_powpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcppowpi; //              __m128f; // flt_rcppowpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_pow2pi; //                    __m128f; // flt_pow2pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcppow2pi; //                 __m128f; // flt_rcppow2pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_cbrtpi; //                    __m128f; // flt_cbrtpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcpcbrtpi; //                 __m128f; // flt_rcpcbrtpi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_cbrt2pi; //               __m128f; // flt_cbrt2pi; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_rcpcbrt2pi; //                __m128f; // flt_rcpcbrt2pi; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_pow2tom126; //                __m128f; // flt_pow2tom126; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_pow2to126; //                 __m128f; // flt_pow2to126; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_normhuge; //              __m128f; // flt_normhuge; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_pow2to23; //              __m128f; // flt_pow2to23; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_pow2to24; //              __m128f; // flt_pow2to24; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_maxi32pow2to23; //            __m128f; // flt_maxi32pow2to23; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_pow2to31; //              __m128f; // flt_pow2to31; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_pow2to32; //              __m128f; // flt_pow2to32; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_remquobits; //                __m128i; // flt_remquobits; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_remquomask; //                __m128i; // flt_remquomask; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_trigploss; //                 __m128f; // flt_trigploss; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_degtorad; //              __m128f; // flt_degtorad; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_radtodeg; //              __m128f; // flt_radtodeg; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_degtograd; //                 __m128f; // flt_degtograd; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_gradtodeg; //                 __m128f; // flt_gradtodeg; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_radtograd; //                 __m128f; // flt_radtograd; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_gradtorad; //                 __m128f; // flt_gradtorad; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_sungravity; //                __m128f; // flt_sungravity; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_jupitergravity; //            __m128f; // flt_jupitergravity; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_neptunegravity; //            __m128f; // flt_neptunegravity; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_saturngravity; //             __m128f; // flt_saturngravity; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_uranusgravity; //             __m128f; // flt_uranusgravity; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_earthgravity; //          __m128f; // flt_earthgravity; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_venusgravity; //          __m128f; // flt_venusgravity; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_marsgravity; //           __m128f; // flt_marsgravity; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mercurygravity; //            __m128f; // flt_mercurygravity; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_moongravity; //           __m128f; // flt_moongravity; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_plutogravity; //          __m128f; // flt_plutogravity; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_kmtoinch; //              __m128f; // flt_kmtoinch; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmtofeet; //              __m128f; // flt_kmtofeet; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmtoyards; //                 __m128f; // flt_kmtoyards; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmtomiles; //                 __m128f; // flt_kmtomiles; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_metoinch; //              __m128f; // flt_metoinch; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_metofeet; //              __m128f; // flt_metofeet; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_metoyards; //                 __m128f; // flt_metoyards; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_metomiles; //                 __m128f; // flt_metomiles; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_cmtoinch; //              __m128f; // flt_cmtoinch; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_cmtofeet; //              __m128f; // flt_cmtofeet; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_cmtoyards; //                 __m128f; // flt_cmtoyards; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_cmtomiles; //                 __m128f; // flt_cmtomiles; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_milltoinch; //                __m128f; // flt_milltoinch; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milltofeet; //                __m128f; // flt_milltofeet; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milltoyards; //           __m128f; // flt_milltoyards; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milltomiles; //           __m128f; // flt_milltomiles; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_inchtomill; //                __m128f; // flt_inchtomill; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_inchtocm; //              __m128f; // flt_inchtocm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_inchtome; //              __m128f; // flt_inchtome; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_inchtokm; //              __m128f; // flt_inchtokm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_inchtofeet; //                __m128f; // flt_inchtofeet; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_inchtoyards; //           __m128f; // flt_inchtoyards; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_inchtomiles; //           __m128f; // flt_inchtomiles; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_feettomill; //                __m128f; // flt_feettomill; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_feettocm; //              __m128f; // flt_feettocm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_feettome; //              __m128f; // flt_feettome; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_feettokm; //              __m128f; // flt_feettokm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_feettoinch; //                __m128f; // flt_feettoinch; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_feettoyards; //           __m128f; // flt_feettoyards; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_feettomiles; //           __m128f; // flt_feettomiles; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_yardstomill; //           __m128f; // flt_yardstomill; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_yardstocm; //                 __m128f; // flt_yardstocm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_yardstome; //                 __m128f; // flt_yardstome; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_yardstokm; //                 __m128f; // flt_yardstokm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_yardstoinch; //           __m128f; // flt_yardstoinch; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_yardstofeet; //           __m128f; // flt_yardstofeet; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_yardstomiles; //          __m128f; // flt_yardstomiles; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_milestomill; //           __m128f; // flt_milestomill; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milestocm; //                 __m128f; // flt_milestocm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milestome; //                 __m128f; // flt_milestome; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milestoinch; //           __m128f; // flt_milestokm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milestoinch; //           __m128f; // flt_milestoinch; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milestofeet; //           __m128f; // flt_milestofeet; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milestoyards; //          __m128f; // flt_milestoyards; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_kmphtomeps; //                __m128f; // flt_kmphtomeps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmphtokmps; //                __m128f; // flt_kmphtokmps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmphtomepm; //                __m128f; // flt_kmphtomepm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmphtomilesph; //             __m128f; // flt_kmphtomilesph; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmphtomilesps; //             __m128f; // flt_kmphtomilesps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmphtofootps; //          __m128f; // flt_kmphtofootps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmphtofootpm; //          __m128f; // flt_kmphtofootpm; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_kmpstomeps; //                __m128f; // flt_kmpstomeps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmpstokmph; //                __m128f; // flt_kmpstokmph; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmpstomepm; //                __m128f; // flt_kmpstomepm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmpstomilesph; //             __m128f; // flt_kmpstomilesph; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmpstomilesps; //             __m128f; // flt_kmpstomilesps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmpstofootps; //          __m128f; // flt_kmpstofootps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_kmpstofootpm; //          __m128f; // flt_kmpstofootpm; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_mepstokmph; //                __m128f; // flt_mepstokmph; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mepstokmps; //                __m128f; // flt_mepstokmps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mepstomepm; //                __m128f; // flt_mepstomepm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mepstomilesph; //             __m128f; // flt_mepstomilesph; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mepstomilesps; //             __m128f; // flt_mepstomilesps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mepstofootps; //          __m128f; // flt_mepstofootps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mepstofootpm; //          __m128f; // flt_mepstofootpm; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_mepmtokmph; //                __m128f; // flt_mepmtokmph; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mepmtokmps; //                __m128f; // flt_mepmtokmps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mepmtomeps; //                __m128f; // flt_mepmtomeps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mepmtomilesph; //             __m128f; // flt_mepmtomilesph; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mepmtomilesps; //             __m128f; // flt_mepmtomilesps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mepmtofootps; //          __m128f; // flt_mepmtofootps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_mepmtofootpm; //          __m128f; // flt_mepmtofootpm; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_milesphtokmph; //             __m128f; // flt_milesphtokmph; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milesphtokmps; //             __m128f; // flt_milesphtokmps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milesphtomeps; //             __m128f; // flt_milesphtomeps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milesphtomepm; //             __m128f; // flt_milesphtomepm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milesphtomilesps; //      __m128f; // flt_milesphtomilesps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milesphtofootps; //       __m128f; // flt_milesphtofootps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milesphtofootpm; //           __m128f; // flt_milesphtofootpm; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_milespstokmph; //             __m128f; // flt_milespstokmph; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milespstokmps; //             __m128f; // flt_milespstokmps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milespstomeps; //             __m128f; // flt_milespstomeps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milespstomepm; //             __m128f; // flt_milespstomepm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milespstomilespm; //      __m128f; // flt_milespstomilespm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milespstofootps; //       __m128f; // flt_milespstofootps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_milespstofootpm; //           __m128f; // flt_milespstofootpm; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_footpstokmph; //          __m128f; // flt_footpstokmph; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_footpstokmps; //          __m128f; // flt_footpstokmps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_footpstomeps; //          __m128f; // flt_footpstomeps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_footpstomepm; //          __m128f; // flt_footpstomepm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_footpstomilesph; //       __m128f; // flt_footpstomilesph; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_footpstomilesps; //       __m128f; // flt_footpstomilesps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_footpstofootpm; //            __m128f; // flt_footpstofootpm; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_footpmtokmph; //          __m128f; // flt_footpmtokmph; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_footpmtokmps; //          __m128f; // flt_footpmtokmps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_footpmtomeps; //          __m128f; // flt_footpmtomeps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_footpmtomepm; //          __m128f; // flt_footpmtomepm; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_footpmtomilesph; //       __m128f; // flt_footpmtomilesph; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_footpmtomilesps; //       __m128f; // flt_footpmtomilesps; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_footpmtofootps; //            __m128f; // flt_footpmtofootps; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_soundspeedp50c; //            __m128f; // flt_soundspeedp50c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedp45c; //            __m128f; // flt_soundspeedp45c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedp40c; //            __m128f; // flt_soundspeedp40c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedp35c; //            __m128f; // flt_soundspeedp35c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedp30c; //            __m128f; // flt_soundspeedp30c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedp25c; //            __m128f; // flt_soundspeedp25c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedp20c; //            __m128f; // flt_soundspeedp20c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedp15c; //            __m128f; // flt_soundspeedp15c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedp10c; //            __m128f; // flt_soundspeedp10c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedp5c; //             __m128f; // flt_soundspeedp5c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeed0c; //          __m128f; // flt_soundspeed0c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedn5c; //             __m128f; // flt_soundspeedn5c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedn10c; //            __m128f; // flt_soundspeedn10c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedn15c; //            __m128f; // flt_soundspeedn15c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedn20c; //            __m128f; // flt_soundspeedn20c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedn25c; //            __m128f; // flt_soundspeedn25c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedn30c; //            __m128f; // flt_soundspeedn30c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedn35c; //            __m128f; // flt_soundspeedn35c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedn40c; //            __m128f; // flt_soundspeedn40c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedn45c; //            __m128f; // flt_soundspeedn45c; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_soundspeedn50c; //            __m128f; // flt_soundspeedn50c; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_schscale; //              __m128f; // flt_schscale; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_thscale; //               __m128f; // flt_thscale; // flt_false; // flt_false; // flt_false

    extern const __m128 __m128_0e_expest1; //               __m128f; // flt_expest1; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_expest2; //               __m128f; // flt_expest2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_expest3; //               __m128f; // flt_expest3; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_expest4; //               __m128f; // flt_expest4; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_expest5; //               __m128f; // flt_expest5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_expest6; //               __m128f; // flt_expest6; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_expest7; //               __m128f; // flt_expest7; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_logest0; //               __m128f; // flt_logest0; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_logest1; //               __m128f; // flt_logest1; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_logest2; //               __m128f; // flt_logest2; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_logest3; //               __m128f; // flt_logest3; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_logest4; //               __m128f; // flt_logest4; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_logest5; //               __m128f; // flt_logest5; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_logest6; //               __m128f; // flt_logest6; // flt_false; // flt_false; // flt_false
    extern const __m128 __m128_0e_logest7; //               __m128f; // flt_logest7; // flt_false; // flt_false; // flt_false

uX_PACK_POP
uX_EXTERNC_END

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_DATA_H
