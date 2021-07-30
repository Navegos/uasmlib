
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

option casemap:none
include macrolib.inc
include uXasm.inc

ifndef __MIC__

.xmm
option arch:sse
option evex:0

alignstackfieldproc

.data?

.data

.const

alignxmmfieldproc

    ;;float;;

;;             sincos template, single precision
    v4ci __m128_DP1F,                   __m128f, 1.5703125
    v4ci __m128_DP2F,                   __m128f, 0.0004837512969970703125
    v4ci __m128_DP3F,                   __m128f, 0.0000000754978995489188216

    v4ci __m128_P0sinf,                 __m128f, (-1.6666654611e-01)
    v4ci __m128_P1sinf,                 __m128f, (8.3321608736e-03)
    v4ci __m128_P2sinf,                 __m128f, (-1.9515295891e-04)

    v4ci __m128_P0cosf,                 __m128f, (4.166664568298827e-02)
    v4ci __m128_P1cosf,                 __m128f, (-1.388731625493765e-03)
    v4ci __m128_P2cosf,                 __m128f, (2.443315711809948e-05)
;;             sincos template, single precision

    v4ci __m128_1lshl3,                 __m128f, flt_1lshl3
    v4ci __m128_1lshl4,                 __m128f, flt_1lshl4
    v4ci __m128_1lshl7,                 __m128f, flt_1lshl7
    v4ci __m128_1lshl8,                 __m128f, flt_1lshl8
    v4ci __m128_1lshl11,                __m128f, flt_1lshl11
    v4ci __m128_1lshl12,                __m128f, flt_1lshl12
    v4ci __m128_1lshl15,                __m128f, flt_1lshl15
    v4ci __m128_1lshl16,                __m128f, flt_1lshl16
    v4ci __m128_1lshl19,                __m128f, flt_1lshl19
    v4ci __m128_1lshl20,                __m128f, flt_1lshl20
    v4ci __m128_1lshl23,                __m128f, flt_1lshl23
    v4ci __m128_1lshl24,                __m128f, flt_1lshl24
    v4ci __m128_1lshl27,                __m128f, flt_1lshl27
    v4ci __m128_1lshl28,                __m128f, flt_1lshl28
    v4ci __m128_1lshl31,                __m128f, flt_1lshl31

    v4ci __m128_neg1lshl3,              __m128f, flt_neg1lshl3
    v4ci __m128_neg1lshl4,              __m128f, flt_neg1lshl4
    v4ci __m128_neg1lshl7,              __m128f, flt_neg1lshl7
    v4ci __m128_neg1lshl8,              __m128f, flt_neg1lshl8
    v4ci __m128_neg1lshl11,             __m128f, flt_neg1lshl11
    v4ci __m128_neg1lshl12,             __m128f, flt_neg1lshl12
    v4ci __m128_neg1lshl15,             __m128f, flt_neg1lshl15
    v4ci __m128_neg1lshl16,             __m128f, flt_neg1lshl16
    v4ci __m128_neg1lshl19,             __m128f, flt_neg1lshl19
    v4ci __m128_neg1lshl20,             __m128f, flt_neg1lshl20
    v4ci __m128_neg1lshl23,             __m128f, flt_neg1lshl23
    v4ci __m128_neg1lshl24,             __m128f, flt_neg1lshl24
    v4ci __m128_neg1lshl27,             __m128f, flt_neg1lshl27
    v4ci __m128_neg1lshl28,             __m128f, flt_neg1lshl28
    v4ci __m128_neg1lshl31,             __m128f, flt_neg1lshl31

    v4ci __m128_false,                  __m128i, flt_false
    v4ci __m128_true,                   __m128i, flt_true
    v4ci __m128_error,                  __m128i, flt_error
    
    v4ci __m128_magic,                  __m128i, flt_magic
    v4ci __m128_sign,                   __m128i, flt_sign
    v4ci __m128_invsign,                __m128i, flt_invsign

    v4ci __m128_inf,                    __m128i, flt_inf
    v4ci __m128_fin,                    __m128i, flt_fin
    v4ci __m128_invinf,                 __m128i, flt_invinf
    v4ci __m128_neginf,                 __m128i, flt_neginf
    v4ci __m128_nan,                    __m128i, flt_nan
    v4ci __m128_qnan,                   __m128i, flt_qnan
    v4ci __m128_negqnan,                __m128i, flt_negqnan
    v4ci __m128_nantest,                __m128i, flt_nantest
    v4ci __m128_abs,                    __m128i, flt_abs
    v4ci __m128_min,                    __m128f, flt_min
    v4ci __m128_max,                    __m128f, flt_max
    v4ci __m128_nofraction,             __m128f, flt_nofraction
    v4ci __m128_mindenorm,              __m128f, flt_mindenorm
    v4ci __m128_denormlimit,            __m128f, flt_denormlimit
    v4ci __m128_minnormal,              __m128f, flt_minnormal
    v4ci __m128_maxnormal,              __m128f, flt_maxnormal

    v4ci __m128_decdig,                 __m128f, flt_decdig
    v4ci __m128_dig,                    __m128f, flt_dig
    v4ci __m128_negdecdig,              __m128f, flt_negdecdig
    v4ci __m128_negdig,                 __m128f, flt_negdig
    v4ci __m128_eps,                    __m128f, flt_eps
    v4ci __m128_epsilon,                __m128f, flt_epsilon
    v4ci __m128_normeps,                __m128f, flt_normeps
    v4ci __m128_guard,                  __m128f, flt_guard
    v4ci __m128_mantpow2,               __m128f, flt_mantpow2
    v4ci __m128_maxmantpow2,            __m128f, flt_maxmantpow2
    v4ci __m128_mantdig,                __m128f, flt_mantdig
    v4ci __m128_mant,                   __m128f, flt_mant
    v4ci __m128_negmantdig,             __m128f, flt_negmantdig
    v4ci __m128_negmant,                __m128f, flt_negmant
    v4ci __m128_maxexpo,                __m128f, flt_maxexpo
    v4ci __m128_exposign,               __m128f, flt_exposign
    v4ci __m128_expo,                   __m128f, flt_expo
    v4ci __m128_negmaxexpo,             __m128f, flt_negmaxexpo
    v4ci __m128_negexposign,            __m128f, flt_negexposign
    v4ci __m128_negexpo,                __m128f, flt_negexpo
    v4ci __m128_subnormalexpo,          __m128f, flt_subnormalexpo
    v4ci __m128_minexpo,                __m128f, flt_minexpo
    v4ci __m128_maxdecexpo,             __m128f, flt_maxdecexpo
    v4ci __m128_negmaxdecexpo,          __m128f, flt_negmaxdecexpo
    v4ci __m128_mindecexpo,             __m128f, flt_mindecexpo
    v4ci __m128_expofield,              __m128f, flt_expofield
    v4ci __m128_mantfield,              __m128f, flt_mantfield
    v4ci __m128_norm,                   __m128f, flt_norm
    v4ci __m128_radix,                  __m128f, flt_radix
    v4ci __m128_rounds,                 __m128f, flt_rounds
    v4ci __m128_subdec,                 __m128f, flt_subdec
    v4ci __m128_sqrtmax,                __m128f, flt_sqrtmax
    v4ci __m128_smallnormal,            __m128f, flt_smallnormal

    v4ci __m128_halfminuseps,           __m128f, flt_halfminuseps
    v4ci __m128_trueint,                __m128f, flt_trueint

    v4ci __m128_byte,                   __m128f, flt_byte
    v4ci __m128_byte_even,              __m128f, flt_byte_even
    v4ci __m128_byte_odd,               __m128f, flt_byte_odd
    v4ci __m128_4low,                   __m128f, flt_4low
    v4ci __m128_4high,                  __m128f, flt_4high
    v4ci __m128_flip4,                  __m128f, flt_flip4
    v4ci __m128_8low,                   __m128f, flt_8low
    v4ci __m128_8high,                  __m128f, flt_8high
    v4ci __m128_flip8,                  __m128f, flt_flip8
    v4ci __m128_16low,                  __m128f, flt_16low
    v4ci __m128_16high,                 __m128f, flt_16high
    v4ci __m128_flip16,                 __m128f, flt_flip16
    v4ci __m128_24low,                  __m128f, flt_24low
    v4ci __m128_24high,                 __m128f, flt_24high
    v4ci __m128_flip24,                 __m128f, flt_flip24
    v4ci __m128_28low,                  __m128f, flt_28low
    v4ci __m128_28high,                 __m128f, flt_28high
    v4ci __m128_flip28,                 __m128f, flt_flip28
    v4ci __m128_32low,                  __m128f, flt_32low
    v4ci __m128_32high,                 __m128f, flt_32high
    v4ci __m128_flip32,                 __m128f, flt_flip32
        
    v4ci __m128_0,                      __m128f, flt_0
    v4ci __m128_0d0001,                 __m128f, flt_0d0001
    v4ci __m128_0d0002,                 __m128f, flt_0d0002
    v4ci __m128_0d0003,                 __m128f, flt_0d0003
    v4ci __m128_0d0004,                 __m128f, flt_0d0004
    v4ci __m128_0d0005,                 __m128f, flt_0d0005
    v4ci __m128_0d0006,                 __m128f, flt_0d0006
    v4ci __m128_0d0007,                 __m128f, flt_0d0007
    v4ci __m128_0d0008,                 __m128f, flt_0d0008
    v4ci __m128_0d0009,                 __m128f, flt_0d0009
    v4ci __m128_0d001,                  __m128f, flt_0d001
    v4ci __m128_0d002,                  __m128f, flt_0d002
    v4ci __m128_0d003,                  __m128f, flt_0d003
    v4ci __m128_0d004,                  __m128f, flt_0d004
    v4ci __m128_0d005,                  __m128f, flt_0d005
    v4ci __m128_0d006,                  __m128f, flt_0d006
    v4ci __m128_0d007,                  __m128f, flt_0d007
    v4ci __m128_0d008,                  __m128f, flt_0d008
    v4ci __m128_0d009,                  __m128f, flt_0d009
    v4ci __m128_0d01,                   __m128f, flt_0d01
    v4ci __m128_0d02,                   __m128f, flt_0d02
    v4ci __m128_0d025,                  __m128f, flt_0d025
    v4ci __m128_0d03,                   __m128f, flt_0d03
    v4ci __m128_0d04,                   __m128f, flt_0d04
    v4ci __m128_0d05,                   __m128f, flt_0d05
    v4ci __m128_0d06,                   __m128f, flt_0d06
    v4ci __m128_0d07,                   __m128f, flt_0d07
    v4ci __m128_0d08,                   __m128f, flt_0d08
    v4ci __m128_0d09,                   __m128f, flt_0d09
    v4ci __m128_0d1,                    __m128f, flt_0d1
    v4ci __m128_0d2,                    __m128f, flt_0d2
    v4ci __m128_0d25,                   __m128f, flt_0d25
    v4ci __m128_0d3,                    __m128f, flt_0d3
    v4ci __m128_0d4,                    __m128f, flt_0d4
    v4ci __m128_0d5,                    __m128f, flt_0d5
    v4ci __m128_0d6,                    __m128f, flt_0d6
    v4ci __m128_0d7,                    __m128f, flt_0d7
    v4ci __m128_0d8,                    __m128f, flt_0d8
    v4ci __m128_0d9,                    __m128f, flt_0d9
    v4ci __m128_1,                      __m128f, flt_1
    v4ci __m128_1d25,                   __m128f, flt_1d25
    v4ci __m128_1d5,                    __m128f, flt_1d5
    v4ci __m128_2,                      __m128f, flt_2
    v4ci __m128_2d25,                   __m128f, flt_2d25
    v4ci __m128_2d5,                    __m128f, flt_2d5
    v4ci __m128_3,                      __m128f, flt_3
    v4ci __m128_3d25,                   __m128f, flt_3d25
    v4ci __m128_3d5,                    __m128f, flt_3d5
    v4ci __m128_4,                      __m128f, flt_4
    v4ci __m128_4d25,                   __m128f, flt_4d25
    v4ci __m128_4d5,                    __m128f, flt_4d5
    v4ci __m128_5,                      __m128f, flt_5
    v4ci __m128_5d25,                   __m128f, flt_5d25
    v4ci __m128_5d5,                    __m128f, flt_5d5
    v4ci __m128_6,                      __m128f, flt_6
    v4ci __m128_6d25,                   __m128f, flt_6d25
    v4ci __m128_6d5,                    __m128f, flt_6d5
    v4ci __m128_7,                      __m128f, flt_7
    v4ci __m128_7d25,                   __m128f, flt_7d25
    v4ci __m128_7d5,                    __m128f, flt_7d5
    v4ci __m128_8,                      __m128f, flt_8
    v4ci __m128_8d25,                   __m128f, flt_8d25
    v4ci __m128_8d5,                    __m128f, flt_8d5
    v4ci __m128_9,                      __m128f, flt_9
    v4ci __m128_9d25,                   __m128f, flt_9d25
    v4ci __m128_9d5,                    __m128f, flt_9d5
    v4ci __m128_10,                     __m128f, flt_10
    v4ci __m128_11,                     __m128f, flt_11
    v4ci __m128_12,                     __m128f, flt_12
    v4ci __m128_13,                     __m128f, flt_13
    v4ci __m128_14,                     __m128f, flt_14
    v4ci __m128_15,                     __m128f, flt_15
    v4ci __m128_16,                     __m128f, flt_16
    v4ci __m128_17,                     __m128f, flt_17
    v4ci __m128_18,                     __m128f, flt_18
    v4ci __m128_19,                     __m128f, flt_19
    v4ci __m128_20,                     __m128f, flt_20
    v4ci __m128_21,                     __m128f, flt_21
    v4ci __m128_22,                     __m128f, flt_22
    v4ci __m128_23,                     __m128f, flt_23
    v4ci __m128_24,                     __m128f, flt_24
    v4ci __m128_24d5,                   __m128f, flt_24d5
    v4ci __m128_25,                     __m128f, flt_25
    v4ci __m128_26,                     __m128f, flt_26
    v4ci __m128_27,                     __m128f, flt_27
    v4ci __m128_28,                     __m128f, flt_28
    v4ci __m128_29,                     __m128f, flt_29
    v4ci __m128_30,                     __m128f, flt_30
    v4ci __m128_31,                     __m128f, flt_31
    v4ci __m128_32,                     __m128f, flt_32
    v4ci __m128_33,                     __m128f, flt_33
    v4ci __m128_34,                     __m128f, flt_34
    v4ci __m128_35,                     __m128f, flt_35
    v4ci __m128_36,                     __m128f, flt_36
    v4ci __m128_37,                     __m128f, flt_37
    v4ci __m128_38,                     __m128f, flt_38
    v4ci __m128_39,                     __m128f, flt_39
    v4ci __m128_40,                     __m128f, flt_40
    v4ci __m128_41,                     __m128f, flt_41
    v4ci __m128_42,                     __m128f, flt_42
    v4ci __m128_43,                     __m128f, flt_43
    v4ci __m128_44,                     __m128f, flt_44
    v4ci __m128_45,                     __m128f, flt_45
    v4ci __m128_46,                     __m128f, flt_46
    v4ci __m128_47,                     __m128f, flt_47
    v4ci __m128_48,                     __m128f, flt_48
    v4ci __m128_49,                     __m128f, flt_49
    v4ci __m128_50,                     __m128f, flt_50
    v4ci __m128_51,                     __m128f, flt_51
    v4ci __m128_52,                     __m128f, flt_52
    v4ci __m128_53,                     __m128f, flt_53
    v4ci __m128_54,                     __m128f, flt_54
    v4ci __m128_55,                     __m128f, flt_55
    v4ci __m128_56,                     __m128f, flt_56
    v4ci __m128_57,                     __m128f, flt_57
    v4ci __m128_58,                     __m128f, flt_58
    v4ci __m128_59,                     __m128f, flt_59
    v4ci __m128_60,                     __m128f, flt_60
    v4ci __m128_61,                     __m128f, flt_61
    v4ci __m128_62,                     __m128f, flt_62
    v4ci __m128_63,                     __m128f, flt_63
    v4ci __m128_64,                     __m128f, flt_64
    v4ci __m128_65,                     __m128f, flt_65
    v4ci __m128_66,                     __m128f, flt_66
    v4ci __m128_67,                     __m128f, flt_67
    v4ci __m128_68,                     __m128f, flt_68
    v4ci __m128_69,                     __m128f, flt_69
    v4ci __m128_70,                     __m128f, flt_70
    v4ci __m128_71,                     __m128f, flt_71
    v4ci __m128_72,                     __m128f, flt_72
    v4ci __m128_73,                     __m128f, flt_73
    v4ci __m128_74,                     __m128f, flt_74
    v4ci __m128_75,                     __m128f, flt_75
    v4ci __m128_76,                     __m128f, flt_76
    v4ci __m128_77,                     __m128f, flt_77
    v4ci __m128_78,                     __m128f, flt_78
    v4ci __m128_79,                     __m128f, flt_79
    v4ci __m128_80,                     __m128f, flt_80
    v4ci __m128_81,                     __m128f, flt_81
    v4ci __m128_82,                     __m128f, flt_82
    v4ci __m128_83,                     __m128f, flt_83
    v4ci __m128_84,                     __m128f, flt_84
    v4ci __m128_85,                     __m128f, flt_85
    v4ci __m128_86,                     __m128f, flt_86
    v4ci __m128_87,                     __m128f, flt_87
    v4ci __m128_88,                     __m128f, flt_88
    v4ci __m128_89,                     __m128f, flt_89
    v4ci __m128_90,                     __m128f, flt_90
    v4ci __m128_91,                     __m128f, flt_91
    v4ci __m128_92,                     __m128f, flt_92
    v4ci __m128_93,                     __m128f, flt_93
    v4ci __m128_94,                     __m128f, flt_94
    v4ci __m128_95,                     __m128f, flt_95
    v4ci __m128_96,                     __m128f, flt_96
    v4ci __m128_97,                     __m128f, flt_97
    v4ci __m128_98,                     __m128f, flt_98
    v4ci __m128_99,                     __m128f, flt_99
    v4ci __m128_100,                    __m128f, flt_100
    v4ci __m128_125,                    __m128f, flt_125
    v4ci __m128_126,                    __m128f, flt_126
    v4ci __m128_127,                    __m128f, flt_127
    v4ci __m128_128,                    __m128f, flt_128
    v4ci __m128_140,                    __m128f, flt_140
    v4ci __m128_145,                    __m128f, flt_145
    v4ci __m128_150,                    __m128f, flt_150
    v4ci __m128_180,                    __m128f, flt_180
    v4ci __m128_253,                    __m128f, flt_253
    v4ci __m128_254,                    __m128f, flt_254
    v4ci __m128_255,                    __m128f, flt_255
    v4ci __m128_256,                    __m128f, flt_256
    v4ci __m128_360,                    __m128f, flt_360
    v4ci __m128_511,                    __m128f, flt_511
    v4ci __m128_512,                    __m128f, flt_512
    v4ci __m128_513,                    __m128f, flt_513
    v4ci __m128_1023,                   __m128f, flt_1023
    v4ci __m128_1024,                   __m128f, flt_1024
    v4ci __m128_1025,                   __m128f, flt_1025

    v4ci __m128_32767,                  __m128f, flt_32767
    v4ci __m128_32768,                  __m128f, flt_32768
    v4ci __m128_65535,                  __m128f, flt_65535
    v4ci __m128_65536,                  __m128f, flt_65536
    v4ci __m128_2147483647,             __m128f, flt_2147483647
    v4ci __m128_2147483648,             __m128f, flt_2147483648
    v4ci __m128_4294967295,             __m128f, flt_4294967295
    v4ci __m128_4294967296,             __m128f, flt_4294967296
    
    v4ci __m128_neg0,                   __m128f, flt_neg0
    v4ci __m128_neg0d0001,              __m128f, flt_neg0d0001
    v4ci __m128_neg0d0002,              __m128f, flt_neg0d0002
    v4ci __m128_neg0d0003,              __m128f, flt_neg0d0003
    v4ci __m128_neg0d0004,              __m128f, flt_neg0d0004
    v4ci __m128_neg0d0005,              __m128f, flt_neg0d0005
    v4ci __m128_neg0d0006,              __m128f, flt_neg0d0006
    v4ci __m128_neg0d0007,              __m128f, flt_neg0d0007
    v4ci __m128_neg0d0008,              __m128f, flt_neg0d0008
    v4ci __m128_neg0d0009,              __m128f, flt_neg0d0009
    v4ci __m128_neg0d001,               __m128f, flt_neg0d001
    v4ci __m128_neg0d002,               __m128f, flt_neg0d002
    v4ci __m128_neg0d003,               __m128f, flt_neg0d003
    v4ci __m128_neg0d004,               __m128f, flt_neg0d004
    v4ci __m128_neg0d005,               __m128f, flt_neg0d005
    v4ci __m128_neg0d006,               __m128f, flt_neg0d006
    v4ci __m128_neg0d007,               __m128f, flt_neg0d007
    v4ci __m128_neg0d008,               __m128f, flt_neg0d008
    v4ci __m128_neg0d009,               __m128f, flt_neg0d009
    v4ci __m128_neg0d01,                __m128f, flt_neg0d01
    v4ci __m128_neg0d02,                __m128f, flt_neg0d02
    v4ci __m128_neg0d025,               __m128f, flt_neg0d025
    v4ci __m128_neg0d03,                __m128f, flt_neg0d03
    v4ci __m128_neg0d04,                __m128f, flt_neg0d04
    v4ci __m128_neg0d05,                __m128f, flt_neg0d05
    v4ci __m128_neg0d06,                __m128f, flt_neg0d06
    v4ci __m128_neg0d07,                __m128f, flt_neg0d07
    v4ci __m128_neg0d08,                __m128f, flt_neg0d08
    v4ci __m128_neg0d09,                __m128f, flt_neg0d09
    v4ci __m128_neg0d1,                 __m128f, flt_neg0d1
    v4ci __m128_neg0d2,                 __m128f, flt_neg0d2
    v4ci __m128_neg0d25,                __m128f, flt_neg0d25
    v4ci __m128_neg0d3,                 __m128f, flt_neg0d3
    v4ci __m128_neg0d4,                 __m128f, flt_neg0d4
    v4ci __m128_neg0d5,                 __m128f, flt_neg0d5
    v4ci __m128_neg0d6,                 __m128f, flt_neg0d6
    v4ci __m128_neg0d7,                 __m128f, flt_neg0d7
    v4ci __m128_neg0d8,                 __m128f, flt_neg0d8
    v4ci __m128_neg0d9,                 __m128f, flt_neg0d9
    v4ci __m128_neg1,                   __m128f, flt_neg1
    v4ci __m128_neg1d25,                __m128f, flt_neg1d25
    v4ci __m128_neg1d5,                 __m128f, flt_neg1d5
    v4ci __m128_neg2,                   __m128f, flt_neg2
    v4ci __m128_neg2d25,                __m128f, flt_neg2d25
    v4ci __m128_neg2d5,                 __m128f, flt_neg2d5
    v4ci __m128_neg3,                   __m128f, flt_neg3
    v4ci __m128_neg3d25,                __m128f, flt_neg3d25
    v4ci __m128_neg3d5,                 __m128f, flt_neg3d5
    v4ci __m128_neg4,                   __m128f, flt_neg4
    v4ci __m128_neg4d25,                __m128f, flt_neg4d25
    v4ci __m128_neg4d5,                 __m128f, flt_neg4d5
    v4ci __m128_neg5,                   __m128f, flt_neg5
    v4ci __m128_neg5d25,                __m128f, flt_neg5d25
    v4ci __m128_neg5d5,                 __m128f, flt_neg5d5
    v4ci __m128_neg6,                   __m128f, flt_neg6
    v4ci __m128_neg6d25,                __m128f, flt_neg6d25
    v4ci __m128_neg6d5,                 __m128f, flt_neg6d5
    v4ci __m128_neg7,                   __m128f, flt_neg7
    v4ci __m128_neg7d25,                __m128f, flt_neg7d25
    v4ci __m128_neg7d5,                 __m128f, flt_neg7d5
    v4ci __m128_neg8,                   __m128f, flt_neg8
    v4ci __m128_neg8d25,                __m128f, flt_neg8d25
    v4ci __m128_neg8d5,                 __m128f, flt_neg8d5
    v4ci __m128_neg9,                   __m128f, flt_neg9
    v4ci __m128_neg9d25,                __m128f, flt_neg9d25
    v4ci __m128_neg9d5,                 __m128f, flt_neg9d5
    v4ci __m128_neg10,                  __m128f, flt_neg10
    v4ci __m128_neg11,                  __m128f, flt_neg11
    v4ci __m128_neg12,                  __m128f, flt_neg12
    v4ci __m128_neg13,                  __m128f, flt_neg13
    v4ci __m128_neg14,                  __m128f, flt_neg14
    v4ci __m128_neg15,                  __m128f, flt_neg15
    v4ci __m128_neg16,                  __m128f, flt_neg16
    v4ci __m128_neg17,                  __m128f, flt_neg17
    v4ci __m128_neg18,                  __m128f, flt_neg18
    v4ci __m128_neg19,                  __m128f, flt_neg19
    v4ci __m128_neg20,                  __m128f, flt_neg20
    v4ci __m128_neg21,                  __m128f, flt_neg21
    v4ci __m128_neg22,                  __m128f, flt_neg22
    v4ci __m128_neg23,                  __m128f, flt_neg23
    v4ci __m128_neg24,                  __m128f, flt_neg24
    v4ci __m128_neg24d5,                __m128f, flt_neg24d5
    v4ci __m128_neg25,                  __m128f, flt_neg25
    v4ci __m128_neg26,                  __m128f, flt_neg26
    v4ci __m128_neg27,                  __m128f, flt_neg27
    v4ci __m128_neg28,                  __m128f, flt_neg28
    v4ci __m128_neg29,                  __m128f, flt_neg29
    v4ci __m128_neg30,                  __m128f, flt_neg30
    v4ci __m128_neg31,                  __m128f, flt_neg31
    v4ci __m128_neg32,                  __m128f, flt_neg32
    v4ci __m128_neg33,                  __m128f, flt_neg33
    v4ci __m128_neg34,                  __m128f, flt_neg34
    v4ci __m128_neg35,                  __m128f, flt_neg35
    v4ci __m128_neg36,                  __m128f, flt_neg36
    v4ci __m128_neg37,                  __m128f, flt_neg37
    v4ci __m128_neg38,                  __m128f, flt_neg38
    v4ci __m128_neg39,                  __m128f, flt_neg39
    v4ci __m128_neg40,                  __m128f, flt_neg40
    v4ci __m128_neg41,                  __m128f, flt_neg41
    v4ci __m128_neg42,                  __m128f, flt_neg42
    v4ci __m128_neg43,                  __m128f, flt_neg43
    v4ci __m128_neg44,                  __m128f, flt_neg44
    v4ci __m128_neg45,                  __m128f, flt_neg45
    v4ci __m128_neg46,                  __m128f, flt_neg46
    v4ci __m128_neg47,                  __m128f, flt_neg47
    v4ci __m128_neg48,                  __m128f, flt_neg48
    v4ci __m128_neg49,                  __m128f, flt_neg49
    v4ci __m128_neg50,                  __m128f, flt_neg50
    v4ci __m128_neg51,                  __m128f, flt_neg51
    v4ci __m128_neg52,                  __m128f, flt_neg52
    v4ci __m128_neg53,                  __m128f, flt_neg53
    v4ci __m128_neg54,                  __m128f, flt_neg54
    v4ci __m128_neg55,                  __m128f, flt_neg55
    v4ci __m128_neg56,                  __m128f, flt_neg56
    v4ci __m128_neg57,                  __m128f, flt_neg57
    v4ci __m128_neg58,                  __m128f, flt_neg58
    v4ci __m128_neg59,                  __m128f, flt_neg59
    v4ci __m128_neg60,                  __m128f, flt_neg60
    v4ci __m128_neg61,                  __m128f, flt_neg61
    v4ci __m128_neg62,                  __m128f, flt_neg62
    v4ci __m128_neg63,                  __m128f, flt_neg63
    v4ci __m128_neg64,                  __m128f, flt_neg64
    v4ci __m128_neg65,                  __m128f, flt_neg65
    v4ci __m128_neg66,                  __m128f, flt_neg66
    v4ci __m128_neg67,                  __m128f, flt_neg67
    v4ci __m128_neg68,                  __m128f, flt_neg68
    v4ci __m128_neg69,                  __m128f, flt_neg69
    v4ci __m128_neg70,                  __m128f, flt_neg70
    v4ci __m128_neg71,                  __m128f, flt_neg71
    v4ci __m128_neg72,                  __m128f, flt_neg72
    v4ci __m128_neg73,                  __m128f, flt_neg73
    v4ci __m128_neg74,                  __m128f, flt_neg74
    v4ci __m128_neg75,                  __m128f, flt_neg75
    v4ci __m128_neg76,                  __m128f, flt_neg76
    v4ci __m128_neg77,                  __m128f, flt_neg77
    v4ci __m128_neg78,                  __m128f, flt_neg78
    v4ci __m128_neg79,                  __m128f, flt_neg79
    v4ci __m128_neg80,                  __m128f, flt_neg80
    v4ci __m128_neg81,                  __m128f, flt_neg81
    v4ci __m128_neg82,                  __m128f, flt_neg82
    v4ci __m128_neg83,                  __m128f, flt_neg83
    v4ci __m128_neg84,                  __m128f, flt_neg84
    v4ci __m128_neg85,                  __m128f, flt_neg85
    v4ci __m128_neg86,                  __m128f, flt_neg86
    v4ci __m128_neg87,                  __m128f, flt_neg87
    v4ci __m128_neg88,                  __m128f, flt_neg88
    v4ci __m128_neg89,                  __m128f, flt_neg89
    v4ci __m128_neg90,                  __m128f, flt_neg90
    v4ci __m128_neg91,                  __m128f, flt_neg91
    v4ci __m128_neg92,                  __m128f, flt_neg92
    v4ci __m128_neg93,                  __m128f, flt_neg93
    v4ci __m128_neg94,                  __m128f, flt_neg94
    v4ci __m128_neg95,                  __m128f, flt_neg95
    v4ci __m128_neg96,                  __m128f, flt_neg96
    v4ci __m128_neg97,                  __m128f, flt_neg97
    v4ci __m128_neg98,                  __m128f, flt_neg98
    v4ci __m128_neg99,                  __m128f, flt_neg99
    v4ci __m128_neg100,                 __m128f, flt_neg100
    v4ci __m128_neg125,                 __m128f, flt_neg125
    v4ci __m128_neg126,                 __m128f, flt_neg126
    v4ci __m128_neg127,                 __m128f, flt_neg127
    v4ci __m128_neg128,                 __m128f, flt_neg128
    v4ci __m128_neg140,                 __m128f, flt_neg140
    v4ci __m128_neg145,                 __m128f, flt_neg145
    v4ci __m128_neg150,                 __m128f, flt_neg150
    v4ci __m128_neg180,                 __m128f, flt_neg180
    v4ci __m128_neg253,                 __m128f, flt_neg253
    v4ci __m128_neg254,                 __m128f, flt_neg254
    v4ci __m128_neg255,                 __m128f, flt_neg255
    v4ci __m128_neg256,                 __m128f, flt_neg256
    v4ci __m128_neg360,                 __m128f, flt_neg360
    v4ci __m128_neg511,                 __m128f, flt_neg511
    v4ci __m128_neg512,                 __m128f, flt_neg512
    v4ci __m128_neg513,                 __m128f, flt_neg513
    v4ci __m128_neg1023,                __m128f, flt_neg1023
    v4ci __m128_neg1024,                __m128f, flt_neg1024
    v4ci __m128_neg1025,                __m128f, flt_neg1025

    v4ci __m128_neg32767,               __m128f, flt_neg32767
    v4ci __m128_neg32768,               __m128f, flt_neg32768
    v4ci __m128_neg65535,               __m128f, flt_neg65535
    v4ci __m128_neg65536,               __m128f, flt_neg65536
    v4ci __m128_neg2147483647,          __m128f, flt_neg2147483647
    v4ci __m128_neg2147483648,          __m128f, flt_neg2147483648
    v4ci __m128_neg4294967295,          __m128f, flt_neg4294967295
    v4ci __m128_neg4294967296,          __m128f, flt_neg4294967296
    
    v4ci __m128_bin128,                 __m128i, flt_bin128
    v4ci __m128_binneg150,              __m128i, flt_binneg150

    v4ci __m128_maxrand,                __m128f, flt_maxrand

    v4ci __m128_maxi8,                  __m128f, flt_maxi8
    v4ci __m128_mini8,                  __m128f, flt_mini8
    v4ci __m128_maxu8,                  __m128f, flt_maxu8

    v4ci __m128_maxi16,                 __m128f, flt_maxi16
    v4ci __m128_mini16,                 __m128f, flt_mini16
    v4ci __m128_maxu16,                 __m128f, flt_maxu16

    v4ci __m128_maxi32,                 __m128f, flt_maxi32
    v4ci __m128_mini32,                 __m128f, flt_mini32
    v4ci __m128_maxu32,                 __m128f, flt_maxu32

    v4ci __m128_maxi8xu8,               __m128f, flt_maxi8xu8
    v4ci __m128_mini8xu8,               __m128f, flt_mini8xu8
    v4ci __m128_maxi8xu16,              __m128f, flt_maxi8xu16
    v4ci __m128_mini8xu16,              __m128f, flt_mini8xu16

    v4ci __m128_maxi16xu16,             __m128f, flt_maxi16xu16
    v4ci __m128_mini16xu16,             __m128f, flt_mini16xu16

    v4ci __m128_fixunsigned,            __m128f, flt_fixunsigned
    v4ci __m128_fixunsigned32,          __m128f, flt_fixunsigned32
    v4ci __m128_fixmaxi32,              __m128f, flt_fixmaxi32
    v4ci __m128_fixmaxu32,              __m128f, flt_fixmaxu32
    
    v4ci __m128_rcpi16,                 __m128f, flt_rcpi16
    v4ci __m128_rcpu16,                 __m128f, flt_rcpu16
    v4ci __m128_rcpi16xu16,             __m128f, flt_rcpi16xu16

    v4ci __m128_fixaa8,                 __m128f, flt_fixaa8
    v4ci __m128_fixr8,                  __m128f, flt_fixr8
    v4ci __m128_fixg8,                  __m128f, flt_fixg8
    v4ci __m128_fixb8,                  __m128f, flt_fixb8

    v4ci __m128_norma8,                 __m128f, flt_norma8
    v4ci __m128_normr8,                 __m128f, flt_normr8
    v4ci __m128_normg8,                 __m128f, flt_normg8
    v4ci __m128_normb8,                 __m128f, flt_normb8

    v4ci __m128_fixaa2,                 __m128f, flt_fixaa2
    v4ci __m128_fixb10,                 __m128f, flt_fixb10
    v4ci __m128_fixg10,                 __m128f, flt_fixg10
    v4ci __m128_fixr10,                 __m128f, flt_fixr10

    v4ci __m128_norma2,                 __m128f, flt_norma2
    v4ci __m128_normb10,                __m128f, flt_normb10
    v4ci __m128_normg10,                __m128f, flt_normg10
    v4ci __m128_normr10,                __m128f, flt_normr10

    v4ci __m128_mg,                     __m128f, flt_mg
    v4ci __m128_negmg,                  __m128f, flt_negmg
    v4ci __m128_halfmg,                 __m128f, flt_halfmg
    v4ci __m128_neghalfmg,              __m128f, flt_neghalfmg
    v4ci __m128_mgdiv4,                 __m128f, flt_mgdiv4
    v4ci __m128_negmgdiv4,              __m128f, flt_negmgdiv4
    v4ci __m128_halfmgxmg,              __m128f, flt_halfmgxmg
    v4ci __m128_halfmgxsqrmg,           __m128f, flt_halfmgxsqrmg
    v4ci __m128_halfmgxcubemg,          __m128f, flt_halfmgxcubemg
    v4ci __m128_neghalfmgxmg,           __m128f, flt_neghalfmgxmg
    v4ci __m128_neghalfmgxsqrmg,        __m128f, flt_neghalfmgxsqrmg
    v4ci __m128_neghalfmgxcubemg,       __m128f, flt_neghalfmgxcubemg
    v4ci __m128_sqrmg,                  __m128f, flt_sqrmg
    v4ci __m128_cubemg,                 __m128f, flt_cubemg
    v4ci __m128_sqrtmg,                 __m128f, flt_sqrtmg
    v4ci __m128_cbrtmg,                 __m128f, flt_cbrtmg
    v4ci __m128_rcpmg,                  __m128f, flt_rcpmg
    v4ci __m128_rcpsqrmg,               __m128f, flt_rcpsqrmg
    v4ci __m128_rcpcubemg,              __m128f, flt_rcpcubemg
    v4ci __m128_rcpsqrtmg,              __m128f, flt_rcpsqrtmg
    v4ci __m128_rcpcbrtmg,              __m128f, flt_rcpcbrtmg

    v4ci __m128_2mg,                    __m128f, flt_2mg
    v4ci __m128_neg2mg,                 __m128f, flt_neg2mg
    v4ci __m128_sqr2mg,                 __m128f, flt_sqr2mg
    v4ci __m128_cube2mg,                __m128f, flt_cube2mg
    v4ci __m128_sqrt2mg,                __m128f, flt_sqrt2mg
    v4ci __m128_cbrt2mg,                __m128f, flt_cbrt2mg
    v4ci __m128_4mg,                    __m128f, flt_4mg
    v4ci __m128_neg4mg,                 __m128f, flt_neg4mg
    v4ci __m128_sqr4mg,                 __m128f, flt_sqr4mg
    v4ci __m128_cube4mg,                __m128f, flt_cube4mg
    v4ci __m128_sqrt4mg,                __m128f, flt_sqrt4mg
    v4ci __m128_cbrt4mg,                __m128f, flt_cbrt4mg
    v4ci __m128_rcp2mg,                 __m128f, flt_rcp2mg
    v4ci __m128_rcp4mg,                 __m128f, flt_rcp4mg

    v4ci __m128_e,                      __m128f, flt_e
    v4ci __m128_exp,                    __m128f, flt_exp
    v4ci __m128_loge,                   __m128f, flt_loge
    v4ci __m128_logehigh,               __m128f, flt_logehigh
    v4ci __m128_log2e,                  __m128f, flt_log2e
    v4ci __m128_log2ehigh,              __m128f, flt_log2ehigh
    v4ci __m128_log10e,                 __m128f, flt_log10e
    v4ci __m128_rcplog2e,               __m128f, flt_rcplog2e
    v4ci __m128_rcplog10e,              __m128f, flt_rcplog10e
    v4ci __m128_log2t,                  __m128f, flt_log2t
    v4ci __m128_log2,                   __m128f, flt_log2
    v4ci __m128_log2high,               __m128f, flt_log2high
    v4ci __m128_ln2,                    __m128f, flt_ln2
    v4ci __m128_ln2high,                __m128f, flt_ln2high
    v4ci __m128_1divln2,                __m128f, flt_1divln2
    v4ci __m128_2divln2,                __m128f, flt_2divln2
    v4ci __m128_lnt,                    __m128f, flt_lnt
    v4ci __m128_lnthigh,                __m128f, flt_lnthigh
    v4ci __m128_ln10,                   __m128f, flt_ln10
    v4ci __m128_sqrt2,                  __m128f, flt_sqrt2
    v4ci __m128_rcpsqrt2,               __m128f, flt_rcpsqrt2
    v4ci __m128_sqrt2div2,              __m128f, flt_sqrt2div2
    v4ci __m128_sqrt2div2high,          __m128f, flt_sqrt2div2high
    v4ci __m128_sqrt2div2low,           __m128f, flt_sqrt2div2low
    v4ci __m128_sqrthalf,               __m128f, flt_sqrthalf
    v4ci __m128_sqrthalfhigh,           __m128f, flt_sqrthalfhigh
    v4ci __m128_sqrthalflow,            __m128f, flt_sqrthalflow
    v4ci __m128_pow2,                   __m128f, flt_pow2
    v4ci __m128_rcppow2,                __m128f, flt_rcppow2
    v4ci __m128_cbrt2,                  __m128f, flt_cbrt2
    v4ci __m128_rcpcbrt2,               __m128f, flt_rcpcbrt2
    v4ci __m128_1div3,                  __m128f, flt_1div3
    v4ci __m128_1div7,                  __m128f, flt_1div7
    v4ci __m128_1div9,                  __m128f, flt_1div9
    v4ci __m128_2div3,                  __m128f, flt_2div3
    v4ci __m128_2div7,                  __m128f, flt_2div7
    v4ci __m128_2div9,                  __m128f, flt_2div9
    v4ci __m128_4div3,                  __m128f, flt_4div3
    v4ci __m128_4div7,                  __m128f, flt_4div7
    v4ci __m128_4div9,                  __m128f, flt_4div9

    v4ci __m128_pi,                     __m128f, flt_pi
    v4ci __m128_pihigh,                 __m128f, flt_pihigh
    v4ci __m128_halfpi,                 __m128f, flt_halfpi
    v4ci __m128_2pi,                    __m128f, flt_2pi
    v4ci __m128_negpi,                  __m128f, flt_negpi
    v4ci __m128_neghalfpi,              __m128f, flt_neghalfpi
    v4ci __m128_neg2pi,                 __m128f, flt_neg2pi
    v4ci __m128_rcppi,                  __m128f, flt_rcppi
    v4ci __m128_invpi,                  __m128f, flt_invpi
    v4ci __m128_rcp2pi,                 __m128f, flt_rcp2pi
    v4ci __m128_inv2pi,                 __m128f, flt_inv2pi
    v4ci __m128_pidiv2,                 __m128f, flt_pidiv2
    v4ci __m128_pidiv2high,             __m128f, flt_pidiv2high
    v4ci __m128_pidiv4,                 __m128f, flt_pidiv4
    v4ci __m128_pidiv4high,             __m128f, flt_pidiv4high
    v4ci __m128_pix3div4,               __m128f, flt_pix3div4
    v4ci __m128_sqrtpi,                 __m128f, flt_sqrtpi
    v4ci __m128_sqrt2pi,                __m128f, flt_sqrt2pi
    v4ci __m128_sqrt2pihigh,            __m128f, flt_sqrt2pihigh
    v4ci __m128_rcpsqrtpi,              __m128f, flt_rcpsqrtpi
    v4ci __m128_rcpsqrt2pi,             __m128f, flt_rcpsqrt2pi
    v4ci __m128_sqrtpidiv2,             __m128f, flt_sqrtpidiv2
    v4ci __m128_sqrtpidiv2high,         __m128f, flt_sqrtpidiv2high
    v4ci __m128_sqrt2pidiv2,            __m128f, flt_sqrt2pidiv2
    v4ci __m128_sqrt2pidiv2high,        __m128f, flt_sqrt2pidiv2high
    v4ci __m128_2divpi,                 __m128f, flt_2divpi
    v4ci __m128_2div2pi,                __m128f, flt_2div2pi
    v4ci __m128_2divsqrtpi,             __m128f, flt_2divsqrtpi
    v4ci __m128_2divsqrt2pi,            __m128f, flt_2divsqrt2pi
    v4ci __m128_sqrt2divpi,             __m128f, flt_sqrt2divpi
    v4ci __m128_logpi,                  __m128f, flt_logpi
    v4ci __m128_log2pi,                 __m128f, flt_log2pi
    v4ci __m128_lnpi,                   __m128f, flt_lnpi
    v4ci __m128_ln2pi,                  __m128f, flt_ln2pi
    v4ci __m128_powpi,                  __m128f, flt_powpi
    v4ci __m128_rcppowpi,               __m128f, flt_rcppowpi
    v4ci __m128_pow2pi,                 __m128f, flt_pow2pi
    v4ci __m128_rcppow2pi,              __m128f, flt_rcppow2pi
    v4ci __m128_cbrtpi,                 __m128f, flt_cbrtpi
    v4ci __m128_rcpcbrtpi,              __m128f, flt_rcpcbrtpi
    v4ci __m128_cbrt2pi,                __m128f, flt_cbrt2pi
    v4ci __m128_rcpcbrt2pi,             __m128f, flt_rcpcbrt2pi

    v4ci __m128_pow2tom126,             __m128f, flt_pow2tom126
    v4ci __m128_pow2to126,              __m128f, flt_pow2to126
    v4ci __m128_normhuge,               __m128f, flt_normhuge
    v4ci __m128_pow2to23,               __m128f, flt_pow2to23
    v4ci __m128_pow2to24,               __m128f, flt_pow2to24
    v4ci __m128_maxi32pow2to23,         __m128f, flt_maxi32pow2to23
    v4ci __m128_pow2to31,               __m128f, flt_pow2to31
    v4ci __m128_pow2to32,               __m128f, flt_pow2to32

    v4ci __m128_remquobits,             __m128i, flt_remquobits
    v4ci __m128_remquomask,             __m128i, flt_remquomask

    v4ci __m128_trigploss,              __m128f, flt_trigploss

    v4ci __m128_degtorad,               __m128f, flt_degtorad
    v4ci __m128_radtodeg,               __m128f, flt_radtodeg

    v4ci __m128_degtograd,              __m128f, flt_degtograd
    v4ci __m128_gradtodeg,              __m128f, flt_gradtodeg
    
    v4ci __m128_radtograd,              __m128f, flt_radtograd
    v4ci __m128_gradtorad,              __m128f, flt_gradtorad

    v4ci __m128_sungravity,             __m128f, flt_sungravity
    v4ci __m128_jupitergravity,         __m128f, flt_jupitergravity
    v4ci __m128_neptunegravity,         __m128f, flt_neptunegravity
    v4ci __m128_saturngravity,          __m128f, flt_saturngravity
    v4ci __m128_uranusgravity,          __m128f, flt_uranusgravity
    v4ci __m128_earthgravity,           __m128f, flt_earthgravity
    v4ci __m128_venusgravity,           __m128f, flt_venusgravity
    v4ci __m128_marsgravity,            __m128f, flt_marsgravity
    v4ci __m128_mercurygravity,         __m128f, flt_mercurygravity
    v4ci __m128_moongravity,            __m128f, flt_moongravity
    v4ci __m128_plutogravity,           __m128f, flt_plutogravity

    v4ci __m128_kmtoinch,               __m128f, flt_kmtoinch
    v4ci __m128_kmtofeet,               __m128f, flt_kmtofeet 
    v4ci __m128_kmtoyards,              __m128f, flt_kmtoyards
    v4ci __m128_kmtomiles,              __m128f, flt_kmtomiles

    v4ci __m128_metoinch,               __m128f, flt_metoinch
    v4ci __m128_metofeet,               __m128f, flt_metofeet
    v4ci __m128_metoyards,              __m128f, flt_metoyards
    v4ci __m128_metomiles,              __m128f, flt_metomiles

    v4ci __m128_cmtoinch,               __m128f, flt_cmtoinch
    v4ci __m128_cmtofeet,               __m128f, flt_cmtofeet
    v4ci __m128_cmtoyards,              __m128f, flt_cmtoyards
    v4ci __m128_cmtomiles,              __m128f, flt_cmtomiles

    v4ci __m128_milltoinch,             __m128f, flt_milltoinch
    v4ci __m128_milltofeet,             __m128f, flt_milltofeet
    v4ci __m128_milltoyards,            __m128f, flt_milltoyards
    v4ci __m128_milltomiles,            __m128f, flt_milltomiles

    v4ci __m128_inchtomill,             __m128f, flt_inchtomill
    v4ci __m128_inchtocm,               __m128f, flt_inchtocm
    v4ci __m128_inchtome,               __m128f, flt_inchtome
    v4ci __m128_inchtokm,               __m128f, flt_inchtokm
    v4ci __m128_inchtofeet,             __m128f, flt_inchtofeet
    v4ci __m128_inchtoyards,            __m128f, flt_inchtoyards
    v4ci __m128_inchtomiles,            __m128f, flt_inchtomiles

    v4ci __m128_feettomill,             __m128f, flt_feettomill
    v4ci __m128_feettocm,               __m128f, flt_feettocm
    v4ci __m128_feettome,               __m128f, flt_feettome
    v4ci __m128_feettokm,               __m128f, flt_feettokm
    v4ci __m128_feettoinch,             __m128f, flt_feettoinch
    v4ci __m128_feettoyards,            __m128f, flt_feettoyards
    v4ci __m128_feettomiles,            __m128f, flt_feettomiles

    v4ci __m128_yardstomill,            __m128f, flt_yardstomill
    v4ci __m128_yardstocm,              __m128f, flt_yardstocm
    v4ci __m128_yardstome,              __m128f, flt_yardstome
    v4ci __m128_yardstokm,              __m128f, flt_yardstokm
    v4ci __m128_yardstoinch,            __m128f, flt_yardstoinch
    v4ci __m128_yardstofeet,            __m128f, flt_yardstofeet
    v4ci __m128_yardstomiles,           __m128f, flt_yardstomiles

    v4ci __m128_milestomill,            __m128f, flt_milestomill
    v4ci __m128_milestocm,              __m128f, flt_milestocm
    v4ci __m128_milestome,              __m128f, flt_milestome
    v4ci __m128_milestokm,              __m128f, flt_milestokm
    v4ci __m128_milestoinch,            __m128f, flt_milestoinch
    v4ci __m128_milestofeet,            __m128f, flt_milestofeet
    v4ci __m128_milestoyards,           __m128f, flt_milestoyards

    v4ci __m128_kmphtomeps,             __m128f, flt_kmphtomeps
    v4ci __m128_kmphtokmps,             __m128f, flt_kmphtokmps
    v4ci __m128_kmphtomepm,             __m128f, flt_kmphtomepm
    v4ci __m128_kmphtomilesph,          __m128f, flt_kmphtomilesph
    v4ci __m128_kmphtomilesps,          __m128f, flt_kmphtomilesps
    v4ci __m128_kmphtofeetps,           __m128f, flt_kmphtofeetps
    v4ci __m128_kmphtofeetpm,           __m128f, flt_kmphtofeetpm

    v4ci __m128_kmpstomeps,             __m128f, flt_kmpstomeps
    v4ci __m128_kmpstokmph,             __m128f, flt_kmpstokmph
    v4ci __m128_kmpstomepm,             __m128f, flt_kmpstomepm
    v4ci __m128_kmpstomilesph,          __m128f, flt_kmpstomilesph
    v4ci __m128_kmpstomilesps,          __m128f, flt_kmpstomilesps
    v4ci __m128_kmpstofeetps,           __m128f, flt_kmpstofeetps
    v4ci __m128_kmpstofeetpm,           __m128f, flt_kmpstofeetpm

    v4ci __m128_mepstokmph,             __m128f, flt_mepstokmph
    v4ci __m128_mepstokmps,             __m128f, flt_mepstokmps
    v4ci __m128_mepstomepm,             __m128f, flt_mepstomepm
    v4ci __m128_mepstomilesph,          __m128f, flt_mepstomilesph
    v4ci __m128_mepstomilesps,          __m128f, flt_mepstomilesps
    v4ci __m128_mepstofeetps,           __m128f, flt_mepstofeetps
    v4ci __m128_mepstofeetpm,           __m128f, flt_mepstofeetpm

    v4ci __m128_mepmtokmph,             __m128f, flt_mepmtokmph
    v4ci __m128_mepmtokmps,             __m128f, flt_mepmtokmps
    v4ci __m128_mepmtomeps,             __m128f, flt_mepmtomeps
    v4ci __m128_mepmtomilesph,          __m128f, flt_mepmtomilesph
    v4ci __m128_mepmtomilesps,          __m128f, flt_mepmtomilesps
    v4ci __m128_mepmtofeetps,           __m128f, flt_mepmtofeetps
    v4ci __m128_mepmtofeetpm,           __m128f, flt_mepmtofeetpm

    v4ci __m128_milesphtokmph,          __m128f, flt_milesphtokmph
    v4ci __m128_milesphtokmps,          __m128f, flt_milesphtokmps
    v4ci __m128_milesphtomeps,          __m128f, flt_milesphtomeps
    v4ci __m128_milesphtomepm,          __m128f, flt_milesphtomepm
    v4ci __m128_milesphtomilesps,       __m128f, flt_milesphtomilesps
    v4ci __m128_milesphtofeetps,        __m128f, flt_milesphtofeetps
    v4ci __m128_milesphtofeetpm,        __m128f, flt_milesphtofeetpm

    v4ci __m128_milespstokmph,          __m128f, flt_milespstokmph
    v4ci __m128_milespstokmps,          __m128f, flt_milespstokmps
    v4ci __m128_milespstomeps,          __m128f, flt_milespstomeps
    v4ci __m128_milespstomepm,          __m128f, flt_milespstomepm
    v4ci __m128_milespstomilesph,       __m128f, flt_milespstomilesph
    v4ci __m128_milespstofeetps,        __m128f, flt_milespstofeetps
    v4ci __m128_milespstofeetpm,        __m128f, flt_milespstofeetpm

    v4ci __m128_feetpstokmph,           __m128f, flt_feetpstokmph
    v4ci __m128_feetpstokmps,           __m128f, flt_feetpstokmps
    v4ci __m128_feetpstomeps,           __m128f, flt_feetpstomeps
    v4ci __m128_feetpstomepm,           __m128f, flt_feetpstomepm
    v4ci __m128_feetpstomilesph,        __m128f, flt_feetpstomilesph
    v4ci __m128_feetpstomilesps,        __m128f, flt_feetpstomilesps
    v4ci __m128_feetpstofeetpm,         __m128f, flt_feetpstofeetpm

    v4ci __m128_feetpmtokmph,           __m128f, flt_feetpmtokmph
    v4ci __m128_feetpmtokmps,           __m128f, flt_feetpmtokmps
    v4ci __m128_feetpmtomeps,           __m128f, flt_feetpmtomeps
    v4ci __m128_feetpmtomepm,           __m128f, flt_feetpmtomepm
    v4ci __m128_feetpmtomilesph,        __m128f, flt_feetpmtomilesph
    v4ci __m128_feetpmtomilesps,        __m128f, flt_feetpmtomilesps
    v4ci __m128_feetpmtofeetps,         __m128f, flt_feetpmtofeetps

    v4ci __m128_soundspeedp50c,         __m128f, flt_soundspeedp50c
    v4ci __m128_soundspeedp45c,         __m128f, flt_soundspeedp45c
    v4ci __m128_soundspeedp40c,         __m128f, flt_soundspeedp40c
    v4ci __m128_soundspeedp35c,         __m128f, flt_soundspeedp35c
    v4ci __m128_soundspeedp30c,         __m128f, flt_soundspeedp30c
    v4ci __m128_soundspeedp25c,         __m128f, flt_soundspeedp25c
    v4ci __m128_soundspeedp20c,         __m128f, flt_soundspeedp20c
    v4ci __m128_soundspeedp15c,         __m128f, flt_soundspeedp15c
    v4ci __m128_soundspeedp10c,         __m128f, flt_soundspeedp10c
    v4ci __m128_soundspeedp5c,          __m128f, flt_soundspeedp5c
    v4ci __m128_soundspeed0c,           __m128f, flt_soundspeed0c
    v4ci __m128_soundspeedn5c,          __m128f, flt_soundspeedn5c
    v4ci __m128_soundspeedn10c,         __m128f, flt_soundspeedn10c
    v4ci __m128_soundspeedn15c,         __m128f, flt_soundspeedn15c
    v4ci __m128_soundspeedn20c,         __m128f, flt_soundspeedn20c
    v4ci __m128_soundspeedn25c,         __m128f, flt_soundspeedn25c
    v4ci __m128_soundspeedn30c,         __m128f, flt_soundspeedn30c
    v4ci __m128_soundspeedn35c,         __m128f, flt_soundspeedn35c
    v4ci __m128_soundspeedn40c,         __m128f, flt_soundspeedn40c
    v4ci __m128_soundspeedn45c,         __m128f, flt_soundspeedn45c
    v4ci __m128_soundspeedn50c,         __m128f, flt_soundspeedn50c

    v4ci __m128_schscale,               __m128f, flt_schscale
    v4ci __m128_thscale,                __m128f, flt_thscale

    v4ci __m128_expest1,                __m128f, flt_expest1
    v4ci __m128_expest2,                __m128f, flt_expest2
    v4ci __m128_expest3,                __m128f, flt_expest3
    v4ci __m128_expest4,                __m128f, flt_expest4
    v4ci __m128_expest5,                __m128f, flt_expest5
    v4ci __m128_expest6,                __m128f, flt_expest6
    v4ci __m128_expest7,                __m128f, flt_expest7
    v4ci __m128_logest0,                __m128f, flt_logest0
    v4ci __m128_logest1,                __m128f, flt_logest1
    v4ci __m128_logest2,                __m128f, flt_logest2
    v4ci __m128_logest3,                __m128f, flt_logest3
    v4ci __m128_logest4,                __m128f, flt_logest4
    v4ci __m128_logest5,                __m128f, flt_logest5
    v4ci __m128_logest6,                __m128f, flt_logest6
    v4ci __m128_logest7,                __m128f, flt_logest7

    ;;DirectX Math constants;;

    v4ci4 __m128_sincoefficients0,               __m128f, (-0.16666667), (+0.0083333310), (-0.00019840874), (+2.7525562e-06)
    v4ci4 __m128_sincoefficients1,               __m128f, (-2.3889859e-08), (-0.16665852), (+0.0083139502), (-0.00018524670)
    v4ci4 __m128_coscoefficients0,               __m128f, (-0.5), (+0.041666638), (-0.0013888378), (+2.4760495e-05)
    v4ci4 __m128_coscoefficients1,               __m128f, (-2.6051615e-07), (-0.49992746), (+0.041493919), (-0.0012712436)
    v4ci4 __m128_tancoefficients0,               __m128f, 1.0, 0.333333333, 0.133333333, (5.396825397e-02)
    v4ci4 __m128_tancoefficients1,               __m128f, (2.186948854e-02), (8.863235530e-03), (3.592128167e-03), (1.455834485e-03)
    v4ci4 __m128_tancoefficients2,               __m128f, (5.900274264e-04), (2.391290764e-04), (9.691537707e-05), (3.927832950e-05)
    v4ci4 __m128_arccoefficients0,               __m128f, (+1.5707963050), (-0.2145988016), (+0.0889789874), (-0.0501743046)
    v4ci4 __m128_arccoefficients1,               __m128f, (+0.0308918810), (-0.0170881256), (+0.0066700901), (-0.0012624911)
    v4ci4 __m128_atancoefficients0,              __m128f, (-0.3333314528), (+0.1999355085), (-0.1420889944), (+0.1065626393)
    v4ci4 __m128_atancoefficients1,              __m128f, (-0.0752896400), (+0.0429096138), (-0.0161657367), (+0.0028662257)
    v4ci4 __m128_atanestcoefficients0,           __m128f, (+0.999866), (+0.999866), (+0.999866), (+0.999866)
    v4ci4 __m128_atanestcoefficients1,           __m128f, (-0.3302995), (+0.180141), (-0.085133), (+0.0208351)
    v4ci4 __m128_tanestcoefficients,             __m128f, 2.484, (-1.954923183e-01), 2.467401101, flt_rcppi
    v4ci4 __m128_arcestcoefficients,             __m128f, (+1.5707288), (-0.2121144), (+0.0742610), (-0.0187293)
    v4ci4 __m128_piconstants0,                   __m128f, flt_pi, flt_2pi, flt_rcppi, flt_rcp2pi
    v4ci4 __m128_identityr0,                     __m128f, flt_1, flt_0, flt_0, flt_0
    v4ci4 __m128_identityr1,                     __m128f, flt_0, flt_1, flt_0, flt_0
    v4ci4 __m128_identityr2,                     __m128f, flt_0, flt_0, flt_1, flt_0
    v4ci4 __m128_identityr3,                     __m128f, flt_0, flt_0, flt_0, flt_1
    v4ci4 __m128_negidentityr0,                  __m128f, flt_neg1, flt_0, flt_0, flt_0
    v4ci4 __m128_negidentityr1,                  __m128f, flt_0, flt_neg1, flt_0, flt_0
    v4ci4 __m128_negidentityr2,                  __m128f, flt_0, flt_0, flt_neg1, flt_0
    v4ci4 __m128_negidentityr3,                  __m128f, flt_0, flt_0, flt_0, flt_neg1
    v4ci4 __m128_negativezero,                   __m128i, flt_neg0_msk, flt_neg0_msk, flt_neg0_msk, flt_neg0_msk
    v4ci4 __m128_negate3,                        __m128i, flt_neg0_msk, flt_neg0_msk, flt_neg0_msk, flt_false_msk
    v4ci4 __m128_maskxy,                         __m128i, flt_true_msk, flt_true_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128_maskxyz,                        __m128i, flt_true_msk, flt_true_msk, flt_true_msk, flt_false_msk
    v4ci4 __m128_maskxyzw,                       __m128i, flt_true_msk, flt_true_msk, flt_true_msk, flt_true_msk
    v4ci4 __m128_mask3,                          __m128i, flt_true_msk, flt_true_msk, flt_true_msk, flt_false_msk
    v4ci4 __m128_maskx,                          __m128i, flt_true_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128_masky,                          __m128i, flt_false_msk, flt_true_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128_maskz,                          __m128i, flt_false_msk, flt_false_msk, flt_true_msk, flt_false_msk
    v4ci4 __m128_maskw,                          __m128i, flt_false_msk, flt_false_msk, flt_false_msk, flt_true_msk
    v4ci4 __m128_one,                            __m128f, flt_1, flt_1, flt_1, flt_1
    v4ci4 __m128_one3,                           __m128f, flt_1, flt_1, flt_1, flt_0
    v4ci4 __m128_zero,                           __m128f, flt_0, flt_0, flt_0, flt_0
    v4ci4 __m128_two,                            __m128f, flt_2, flt_2, flt_2, flt_2
    v4ci4 __m128_four,                           __m128f, flt_4, flt_4, flt_4, flt_4
    v4ci4 __m128_six,                            __m128f, flt_6, flt_6, flt_6, flt_6
    v4ci4 __m128_negativeone,                    __m128f, flt_neg1, flt_neg1, flt_neg1, flt_neg1
    v4ci4 __m128_onehalf,                        __m128f, flt_0d5, flt_0d5, flt_0d5, flt_0d5
    v4ci4 __m128_negativeonehalf,                __m128f, flt_neg0d5, flt_neg0d5, flt_neg0d5, flt_neg0d5
    v4ci4 __m128_negativetwopi,                  __m128f, flt_neg2pi, flt_neg2pi, flt_neg2pi, flt_neg2pi
    v4ci4 __m128_negativepi,                     __m128f, flt_negpi, flt_negpi, flt_negpi, flt_negpi
    v4ci4 __m128_reciprocalpi,                   __m128f, flt_rcppi, flt_rcppi, flt_rcppi, flt_rcppi
    v4ci4 __m128_twopi,                          __m128f, flt_2pi, flt_2pi, flt_2pi, flt_2pi
    v4ci4 __m128_reciprocaltwopi,                __m128f, flt_rcp2pi, flt_rcp2pi, flt_rcp2pi, flt_rcp2pi
    v4ci4 __m128_infinity,                       __m128i, flt_inf_msk, flt_inf_msk, flt_inf_msk, flt_inf_msk
    v4ci4 __m128_qnantest,                       __m128i, flt_nantest_msk, flt_nantest_msk, flt_nantest_msk, flt_nantest_msk
    v4ci4 __m128_absmask,                        __m128i, flt_abs_msk, flt_abs_msk, flt_abs_msk, flt_abs_msk
    v4ci4 __m128_fltmin,                         __m128i, flt_min_msk, flt_min_msk, flt_min_msk, flt_min_msk
    v4ci4 __m128_fltmax,                         __m128i, flt_max_msk, flt_max_msk, flt_max_msk, flt_max_msk
    v4ci4 __m128_negonemask,                     __m128i, flt_true_msk, flt_true_msk, flt_true_msk, flt_true_msk
    v4ci4 __m128_maska8r8g8b8,                   __m128i, flt_a8_msk, flt_r8_msk, flt_g8_msk, flt_b8_msk
    v4ci4 __m128_flipa8r8g8b8,                   __m128i, flt_flipa8_msk, flt_flipr8_msk, flt_flipg8_msk, flt_flipb8_msk
    v4ci4 __m128_fixaa8r8g8b8,                   __m128f, flt_fixaa8, flt_fixr8, flt_fixg8, flt_fixb8
    v4ci4 __m128_normalizea8r8g8b8,              __m128f, flt_norma8, flt_normr8, flt_normg8, flt_normb8
    v4ci4 __m128_maska2b10g10r10,                __m128i, flt_a2_msk, flt_b10_msk, flt_g10_msk, flt_r10_msk
    v4ci4 __m128_flipa2b10g10r10,                __m128i, flt_flipa2_msk, flt_flipb10_msk, flt_flipg10_msk, flt_flipr10_msk
    v4ci4 __m128_fixaa2b10g10r10,                __m128f, flt_fixaa2, flt_fixb10, flt_fixg10, flt_fixr10
    v4ci4 __m128_normalizea2b10g10r10,           __m128f, flt_norma2, flt_normb10, flt_normg10, flt_normr10
    v4ci4 __m128_maskx16y16,                     __m128i, flt_16low_msk, flt_16high_msk, flt_false, flt_false
    v4ci4 __m128_flipx16y16,                     __m128i, flt_flip16_msk, flt_flip16_msk, flt_false, flt_false
    v4ci4 __m128_fixx16y16,                      __m128f, flt_neg32768, flt_0, flt_0, flt_0
    v4ci4 __m128_normalizex16y16,                __m128f, (3.051850947599719e-05), (4.656754985961486e-010), flt_0, flt_0
    v4ci4 __m128_maskx16y16z16w16,               __m128i, flt_16low_msk, flt_16low_msk, flt_16high_msk, flt_16high_msk
    v4ci4 __m128_flipx16y16z16w16,               __m128i, flt_flip16_msk, flt_flip16_msk, flt_false, flt_false
    v4ci4 __m128_fixx16y16z16w16,                __m128f, flt_neg32768, flt_neg32768, flt_0, flt_0
    v4ci4 __m128_normalizex16y16z16w16,          __m128f, (3.051850947599719e-05), (3.051850947599719e-05), (4.656754985961486e-010), (4.656754985961486e-010)
    v4ci4 __m128_maskbyte,                       __m128i, flt_byte_msk, flt_byte_msk, flt_byte_msk, flt_byte_msk
    v4ci4 __m128_negatex,                        __m128f, flt_neg1, flt_1, flt_1, flt_1
    v4ci4 __m128_negatey,                        __m128f, flt_1, flt_neg1, flt_1, flt_1
    v4ci4 __m128_negatez,                        __m128f, flt_1, flt_1, flt_neg1, flt_1
    v4ci4 __m128_negatew,                        __m128f, flt_1, flt_1, flt_1, flt_neg1
    v4ci4 __m128_select0000,                    __m128i, flt_false, flt_false, flt_false, flt_false
    v4ci4 __m128_select0001,                    __m128i, flt_false, flt_false, flt_false, flt_true
    v4ci4 __m128_select0010,                    __m128i, flt_false, flt_false, flt_true, flt_false
    v4ci4 __m128_select0100,                    __m128i, flt_false, flt_true, flt_false, flt_false
    v4ci4 __m128_select1000,                    __m128i, flt_true, flt_false, flt_false, flt_false
    v4ci4 __m128_select0011,                    __m128i, flt_false, flt_false, flt_true, flt_true
    v4ci4 __m128_select0111,                    __m128i, flt_false, flt_true, flt_true, flt_true
    v4ci4 __m128_select1111,                    __m128i, flt_true, flt_true, flt_true, flt_true
    v4ci4 __m128_select1110,                    __m128i, flt_true, flt_true, flt_true, flt_false
    v4ci4 __m128_select1100,                    __m128i, flt_true, flt_true, flt_false, flt_false
    v4ci4 __m128_select1001,                    __m128i, flt_true, flt_false, flt_false, flt_true
    v4ci4 __m128_select0110,                    __m128i, flt_false, flt_true, flt_true, flt_false
    v4ci4 __m128_select1011,                    __m128i, flt_true, flt_false, flt_true, flt_true
    v4ci4 __m128_select1101,                    __m128i, flt_true, flt_true, flt_false, flt_true
    v4ci4 __m128_select0101,                    __m128i, flt_false, flt_true, flt_false, flt_true
    v4ci4 __m128_select1010,                    __m128i, flt_true, flt_false, flt_true, flt_false
    v4ci4 __m128_onehalfminusepsilon,            __m128i, flt_halfminuseps_msk, flt_halfminuseps_msk, flt_halfminuseps_msk, flt_halfminuseps_msk
    v4ci4 __m128_fixupy16,                       __m128f, flt_1, 0.0000152587890625, flt_0, flt_0
    v4ci4 __m128_fixupy16w16,                    __m128f, flt_1, flt_1, 0.0000152587890625, 0.0000152587890625
    v4ci4 __m128_flipy,                          __m128i, flt_false, flt_flip32_msk, flt_false, flt_false
    v4ci4 __m128_flipz,                          __m128i, flt_false, flt_false, flt_flip32_msk, flt_false
    v4ci4 __m128_flipw,                          __m128i, flt_false, flt_false, flt_false, flt_flip32_msk
    v4ci4 __m128_flipyz,                         __m128i, flt_false, flt_flip32_msk, flt_flip32_msk, flt_false
    v4ci4 __m128_flipzw,                         __m128i, flt_false, flt_false, flt_flip32_msk, flt_flip32_msk
    v4ci4 __m128_flipyw,                         __m128i, flt_false, flt_flip32_msk, flt_false, flt_flip32_msk
    v4ci4 __m128_maskdec4,                       __m128i, 0x000003ff, 0x000ffc00, 0x3ff00000, 0xc0000000
    v4ci4 __m128_xordec4,                        __m128i, 0x00000200, 0x00080000, 0x20000000, 0x00000000
    v4ci4 __m128_addudec4,                       __m128f, flt_0, flt_0, flt_0, flt_2147483648
    v4ci4 __m128_addec4,                         __m128f, flt_neg512, (-524288.0), (-536870912.0), flt_0
    v4ci4 __m128_muldec4,                        __m128f, flt_1, 0.0009765625, 0.00000095367431640625, 0.000000000931322574615478515625
    v4ci4 __m128_maskbyte4,                      __m128i, 0x000000ff, 0x0000ff00, 0x00ff0000, 0xff000000
    v4ci4 __m128_xorbyte4,                       __m128i, 0x00000080, 0x00008000, 0x00800000, 0x00000000
    v4ci4 __m128_addbyte4,                       __m128f, flt_neg128, flt_neg32768, flt_mini8xu16, flt_0
    v4ci4 __m128_fixmaxint,                      __m128f, flt_fixmaxi32, flt_fixmaxi32, flt_fixmaxi32, flt_fixmaxi32
    v4ci4 __m128_fixmaxuint,                     __m128f, flt_fixmaxu32, flt_fixmaxu32, flt_fixmaxu32, flt_fixmaxu32
    v4ci4 __m128_unsignedfix,                    __m128f, flt_fixunsigned, flt_fixunsigned, flt_fixunsigned, flt_fixunsigned
    v4ci4 __m128_srgbscale,                      __m128f, 12.92, 12.92, 12.92, flt_1
    v4ci4 __m128_srgba,                          __m128f, 0.055, 0.055, 0.055, flt_0
    v4ci4 __m128_srgba1,                         __m128f, 1.055, 1.055, 1.055, flt_1
    v4ci4 __m128_exponentbias,                   __m128i, flt_expo_msk, flt_expo_msk, flt_expo_msk, flt_expo_msk
    v4ci4 __m128_subnormalexponent,              __m128i, flt_subnormalexpo_msk, flt_subnormalexpo_msk, flt_subnormalexpo_msk, flt_subnormalexpo_msk
    v4ci4 __m128_numtrailing,                    __m128i, flt_mant_msk, flt_mant_msk, flt_mant_msk, flt_mant_msk
    v4ci4 __m128_neginfinity,                    __m128i, flt_neginf_msk, flt_neginf_msk, flt_neginf_msk, flt_neginf_msk
    v4ci4 __m128_lge,                            __m128f, flt_log2e, flt_log2e, flt_log2e, flt_log2e
    v4ci4 __m128_invlge,                         __m128f, flt_rcplog2e, flt_rcplog2e, flt_rcplog2e, flt_rcplog2e
    v4ci4 __m128_ubytemax,                       __m128f, flt_255, flt_255, flt_255, flt_255
    v4ci4 __m128_bytemin,                        __m128f, flt_neg127, flt_neg127, flt_neg127, flt_neg127
    v4ci4 __m128_bytemax,                        __m128f, flt_127, flt_127, flt_127, flt_127
    v4ci4 __m128_shortmin,                       __m128f, flt_neg32767, flt_neg32767, flt_neg32767, flt_neg32767
    v4ci4 __m128_shortmax,                       __m128f, flt_32767, flt_32767, flt_32767, flt_32767
    v4ci4 __m128_ushortmax,                      __m128f, flt_65535, flt_65535, flt_65535, flt_65535

    ;;float low;;

;;             sincos template, single precision
    v4ci4 __m128_0e_DP1F,                   __m128f, 1.5703125, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_DP2F,                   __m128f, 0.0004837512969970703125, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_DP3F,                   __m128f, 0.0000000754978995489188216, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_P0sinf,                 __m128f, (-1.6666654611e-01), flt_false, flt_false, flt_false
    v4ci4 __m128_0e_P1sinf,                 __m128f, (8.3321608736e-03), flt_false, flt_false, flt_false
    v4ci4 __m128_0e_P2sinf,                 __m128f, (-1.9515295891e-04), flt_false, flt_false, flt_false

    v4ci4 __m128_0e_P0cosf,                 __m128f, (4.166664568298827e-02), flt_false, flt_false, flt_false
    v4ci4 __m128_0e_P1cosf,                 __m128f, (-1.388731625493765e-03), flt_false, flt_false, flt_false
    v4ci4 __m128_0e_P2cosf,                 __m128f, (2.443315711809948e-05), flt_false, flt_false, flt_false
;;             sincos template, single precision

    v4ci4 __m128_0e_1lshl3,                 __m128f, flt_1lshl3, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl4,                 __m128f, flt_1lshl4, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl7,                 __m128f, flt_1lshl7, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl8,                 __m128f, flt_1lshl8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl11,                __m128f, flt_1lshl11, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl12,                __m128f, flt_1lshl12, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl15,                __m128f, flt_1lshl15, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl16,                __m128f, flt_1lshl16, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl19,                __m128f, flt_1lshl19, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl20,                __m128f, flt_1lshl20, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl23,                __m128f, flt_1lshl23, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl24,                __m128f, flt_1lshl24, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl27,                __m128f, flt_1lshl27, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl28,                __m128f, flt_1lshl28, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1lshl31,                __m128f, flt_1lshl31, flt_false, flt_false, flt_false
    
    v4ci4 __m128_0e_neg1lshl3,              __m128f, flt_neg1lshl3, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl4,              __m128f, flt_neg1lshl4, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl7,              __m128f, flt_neg1lshl7, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl8,              __m128f, flt_neg1lshl8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl11,             __m128f, flt_neg1lshl11, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl12,             __m128f, flt_neg1lshl12, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl15,             __m128f, flt_neg1lshl15, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl16,             __m128f, flt_neg1lshl16, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl19,             __m128f, flt_neg1lshl19, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl20,             __m128f, flt_neg1lshl20, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl23,             __m128f, flt_neg1lshl23, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl24,             __m128f, flt_neg1lshl24, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl27,             __m128f, flt_neg1lshl27, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl28,             __m128f, flt_neg1lshl28, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1lshl31,             __m128f, flt_neg1lshl31, flt_false, flt_false, flt_false
    
    v4ci4 __m128_0e_false,                  __m128i, flt_false, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_true,                   __m128i, flt_true, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_error,                  __m128i, flt_error, flt_false, flt_false, flt_false
    
    v4ci4 __m128_0e_magic,                  __m128i, flt_magic, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sign,                   __m128i, flt_sign, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_invsign,                __m128i, flt_invsign, flt_false, flt_false, flt_false
    
    v4ci4 __m128_0e_inf,                    __m128i, flt_inf, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_fin,                    __m128i, flt_fin, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_invinf,                 __m128i, flt_invinf, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neginf,                 __m128i, flt_neginf, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_nan,                    __m128i, flt_nan, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_qnan,                   __m128i, flt_qnan, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_negqnan,                __m128i, flt_negqnan, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_nantest,                __m128i, flt_nantest, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_abs,                    __m128i, flt_abs, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_min,                    __m128f, flt_min, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_max,                    __m128f, flt_max, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_nofraction,             __m128f, flt_nofraction, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mindenorm,              __m128f, flt_mindenorm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_denormlimit,            __m128f, flt_denormlimit, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_minnormal,              __m128f, flt_minnormal, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_maxnormal,              __m128f, flt_maxnormal, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_decdig,                 __m128f, flt_decdig, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_dig,                    __m128f, flt_dig, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_negdecdig,              __m128f, flt_negdecdig, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_negdig,                 __m128f, flt_negdig, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_eps,                    __m128f, flt_eps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_epsilon,                __m128f, flt_epsilon, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_normeps,                __m128f, flt_normeps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_guard,                  __m128f, flt_guard, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mantpow2,               __m128f, flt_mantpow2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_maxmantpow2,            __m128f, flt_maxmantpow2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mantdig,                __m128f, flt_mantdig, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mant,                   __m128f, flt_mant, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_negmantdig,             __m128f, flt_negmantdig, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_negmant,                __m128f, flt_negmant, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_maxexpo,                __m128f, flt_maxexpo, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_exposign,               __m128f, flt_exposign, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_expo,                   __m128f, flt_expo, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_negmaxexpo,             __m128f, flt_negmaxexpo, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_negexposign,            __m128f, flt_negexposign, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_negexpo,                __m128f, flt_negexpo, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_subnormalexpo,          __m128f, flt_subnormalexpo, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_minexpo,                __m128f, flt_minexpo, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_maxdecexpo,             __m128f, flt_maxdecexpo, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_negmaxdecexpo,          __m128f, flt_negmaxdecexpo, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mindecexpo,             __m128f, flt_mindecexpo, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_expofield,              __m128f, flt_expofield, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mantfield,              __m128f, flt_mantfield, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_norm,                   __m128f, flt_norm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_radix,                  __m128f, flt_radix, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rounds,                 __m128f, flt_rounds, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_subdec,                 __m128f, flt_subdec, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrtmax,                __m128f, flt_sqrtmax, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_smallnormal,            __m128f, flt_smallnormal, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_halfminuseps,           __m128f, flt_halfminuseps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_trueint,                __m128f, flt_trueint, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_byte,                   __m128f, flt_byte, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_byt_even,               __m128f, flt_byte_even, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_byte_odd,               __m128f, flt_byte_odd, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_4low,                   __m128f, flt_4low, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_4high,                  __m128f, flt_4high, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_flip4,                  __m128f, flt_flip4, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_8low,                   __m128f, flt_8low, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_8high,                  __m128f, flt_8high, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_flip8,                  __m128f, flt_flip8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_16low,                  __m128f, flt_16low, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_16high,                 __m128f, flt_16high, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_flip16,                 __m128f, flt_flip16, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_24low,                  __m128f, flt_24low, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_24high,                 __m128f, flt_24high, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_flip24,                 __m128f, flt_flip24, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_28low,                  __m128f, flt_28low, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_28high,                 __m128f, flt_28high, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_flip28,                 __m128f, flt_flip28, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_32low,                  __m128f, flt_32low, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_32high,                 __m128f, flt_32high, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_flip32,                 __m128f, flt_flip32, flt_false, flt_false, flt_false
        
    v4ci4 __m128_0e_0,                      __m128f, flt_0, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d0001,                 __m128f, flt_0d0001, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d0002,                 __m128f, flt_0d0002, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d0003,                 __m128f, flt_0d0003, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d0004,                 __m128f, flt_0d0004, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d0005,                 __m128f, flt_0d0005, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d0006,                 __m128f, flt_0d0006, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d0007,                 __m128f, flt_0d0007, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d0008,                 __m128f, flt_0d0008, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d0009,                 __m128f, flt_0d0009, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d001,                  __m128f, flt_0d001, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d002,                  __m128f, flt_0d002, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d003,                  __m128f, flt_0d003, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d004,                  __m128f, flt_0d004, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d005,                  __m128f, flt_0d005, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d006,                  __m128f, flt_0d006, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d007,                  __m128f, flt_0d007, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d008,                  __m128f, flt_0d008, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d009,                  __m128f, flt_0d009, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d01,                   __m128f, flt_0d01, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d02,                   __m128f, flt_0d02, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d025,                  __m128f, flt_0d025, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d03,                   __m128f, flt_0d03, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d04,                   __m128f, flt_0d04, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d05,                   __m128f, flt_0d05, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d06,                   __m128f, flt_0d06, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d07,                   __m128f, flt_0d07, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d08,                   __m128f, flt_0d08, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d09,                   __m128f, flt_0d09, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d1,                    __m128f, flt_0d1, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d2,                    __m128f, flt_0d2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d25,                   __m128f, flt_0d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d3,                    __m128f, flt_0d3, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d4,                    __m128f, flt_0d4, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d5,                    __m128f, flt_0d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d6,                    __m128f, flt_0d6, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d7,                    __m128f, flt_0d7, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d8,                    __m128f, flt_0d8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_0d9,                    __m128f, flt_0d9, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1,                      __m128f, flt_1, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1d25,                   __m128f, flt_1d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1d5,                    __m128f, flt_1d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2,                      __m128f, flt_2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2d25,                   __m128f, flt_2d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2d5,                    __m128f, flt_2d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_3,                      __m128f, flt_3, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_3d25,                   __m128f, flt_3d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_3d5,                    __m128f, flt_3d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_4,                      __m128f, flt_4, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_4d25,                   __m128f, flt_4d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_4d5,                    __m128f, flt_4d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_5,                      __m128f, flt_5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_5d25,                   __m128f, flt_5d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_5d5,                    __m128f, flt_5d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_6,                      __m128f, flt_6, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_6d25,                   __m128f, flt_6d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_6d5,                    __m128f, flt_6d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_7,                      __m128f, flt_7, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_7d25,                   __m128f, flt_7d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_7d5,                    __m128f, flt_7d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_8,                      __m128f, flt_8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_8d25,                   __m128f, flt_8d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_8d5,                    __m128f, flt_8d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_9,                      __m128f, flt_9, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_9d25,                   __m128f, flt_9d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_9d5,                    __m128f, flt_9d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_10,                     __m128f, flt_10, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_11,                     __m128f, flt_11, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_12,                     __m128f, flt_12, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_13,                     __m128f, flt_13, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_14,                     __m128f, flt_14, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_15,                     __m128f, flt_15, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_16,                     __m128f, flt_16, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_17,                     __m128f, flt_17, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_18,                     __m128f, flt_18, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_19,                     __m128f, flt_19, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_20,                     __m128f, flt_20, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_21,                     __m128f, flt_21, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_22,                     __m128f, flt_22, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_23,                     __m128f, flt_23, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_24,                     __m128f, flt_24, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_24d5,                   __m128f, flt_24d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_25,                     __m128f, flt_25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_26,                     __m128f, flt_26, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_27,                     __m128f, flt_27, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_28,                     __m128f, flt_28, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_29,                     __m128f, flt_29, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_30,                     __m128f, flt_30, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_31,                     __m128f, flt_31, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_32,                     __m128f, flt_32, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_33,                     __m128f, flt_33, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_34,                     __m128f, flt_34, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_35,                     __m128f, flt_35, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_36,                     __m128f, flt_36, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_37,                     __m128f, flt_37, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_38,                     __m128f, flt_38, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_39,                     __m128f, flt_39, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_40,                     __m128f, flt_40, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_41,                     __m128f, flt_41, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_42,                     __m128f, flt_42, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_43,                     __m128f, flt_43, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_44,                     __m128f, flt_44, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_45,                     __m128f, flt_45, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_46,                     __m128f, flt_46, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_47,                     __m128f, flt_47, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_48,                     __m128f, flt_48, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_49,                     __m128f, flt_49, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_50,                     __m128f, flt_50, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_51,                     __m128f, flt_51, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_52,                     __m128f, flt_52, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_53,                     __m128f, flt_53, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_54,                     __m128f, flt_54, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_55,                     __m128f, flt_55, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_56,                     __m128f, flt_56, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_57,                     __m128f, flt_57, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_58,                     __m128f, flt_58, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_59,                     __m128f, flt_59, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_60,                     __m128f, flt_60, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_61,                     __m128f, flt_61, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_62,                     __m128f, flt_62, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_63,                     __m128f, flt_63, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_64,                     __m128f, flt_64, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_65,                     __m128f, flt_65, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_66,                     __m128f, flt_66, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_67,                     __m128f, flt_67, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_68,                     __m128f, flt_68, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_69,                     __m128f, flt_69, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_70,                     __m128f, flt_70, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_71,                     __m128f, flt_71, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_72,                     __m128f, flt_72, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_73,                     __m128f, flt_73, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_74,                     __m128f, flt_74, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_75,                     __m128f, flt_75, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_76,                     __m128f, flt_76, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_77,                     __m128f, flt_77, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_78,                     __m128f, flt_78, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_79,                     __m128f, flt_79, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_80,                     __m128f, flt_80, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_81,                     __m128f, flt_81, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_82,                     __m128f, flt_82, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_83,                     __m128f, flt_83, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_84,                     __m128f, flt_84, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_85,                     __m128f, flt_85, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_86,                     __m128f, flt_86, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_87,                     __m128f, flt_87, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_88,                     __m128f, flt_88, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_89,                     __m128f, flt_89, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_90,                     __m128f, flt_90, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_91,                     __m128f, flt_91, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_92,                     __m128f, flt_92, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_93,                     __m128f, flt_93, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_94,                     __m128f, flt_94, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_95,                     __m128f, flt_95, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_96,                     __m128f, flt_96, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_97,                     __m128f, flt_97, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_98,                     __m128f, flt_98, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_99,                     __m128f, flt_99, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_100,                    __m128f, flt_100, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_125,                    __m128f, flt_125, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_126,                    __m128f, flt_126, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_127,                    __m128f, flt_127, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_128,                    __m128f, flt_128, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_140,                    __m128f, flt_140, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_145,                    __m128f, flt_145, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_150,                    __m128f, flt_150, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_180,                    __m128f, flt_180, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_253,                    __m128f, flt_253, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_254,                    __m128f, flt_254, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_255,                    __m128f, flt_255, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_256,                    __m128f, flt_256, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_360,                    __m128f, flt_360, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_511,                    __m128f, flt_511, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_512,                    __m128f, flt_512, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_513,                    __m128f, flt_513, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1023,                   __m128f, flt_1023, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1024,                   __m128f, flt_1024, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1025,                   __m128f, flt_1025, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_32767,                  __m128f, flt_32767, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_32768,                  __m128f, flt_32768, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_65535,                  __m128f, flt_65535, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_65536,                  __m128f, flt_65536, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2147483647,             __m128f, flt_2147483647, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2147483648,             __m128f, flt_2147483648, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_4294967295,             __m128f, flt_4294967295, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_4294967296,             __m128f, flt_4294967296, flt_false, flt_false, flt_false
    
    v4ci4 __m128_0e_neg0,                   __m128f, flt_neg0, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d0001,              __m128f, flt_neg0d0001, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d0002,              __m128f, flt_neg0d0002, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d0003,              __m128f, flt_neg0d0003, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d0004,              __m128f, flt_neg0d0004, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d0005,              __m128f, flt_neg0d0005, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d0006,              __m128f, flt_neg0d0006, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d0007,              __m128f, flt_neg0d0007, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d0008,              __m128f, flt_neg0d0008, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d0009,              __m128f, flt_neg0d0009, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d001,               __m128f, flt_neg0d001, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d002,               __m128f, flt_neg0d002, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d003,               __m128f, flt_neg0d003, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d004,               __m128f, flt_neg0d004, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d005,               __m128f, flt_neg0d005, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d006,               __m128f, flt_neg0d006, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d007,               __m128f, flt_neg0d007, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d008,               __m128f, flt_neg0d008, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d009,               __m128f, flt_neg0d009, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d01,                __m128f, flt_neg0d01, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d02,                __m128f, flt_neg0d02, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d025,               __m128f, flt_neg0d025, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d03,                __m128f, flt_neg0d03, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d04,                __m128f, flt_neg0d04, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d05,                __m128f, flt_neg0d05, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d06,                __m128f, flt_neg0d06, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d07,                __m128f, flt_neg0d07, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d08,                __m128f, flt_neg0d08, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d09,                __m128f, flt_neg0d09, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d1,                 __m128f, flt_neg0d1, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d2,                 __m128f, flt_neg0d2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d25,                __m128f, flt_neg0d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d3,                 __m128f, flt_neg0d3, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d4,                 __m128f, flt_neg0d4, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d5,                 __m128f, flt_neg0d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d6,                 __m128f, flt_neg0d6, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d7,                 __m128f, flt_neg0d7, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d8,                 __m128f, flt_neg0d8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg0d9,                 __m128f, flt_neg0d9, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1,                   __m128f, flt_neg1, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1d25,                __m128f, flt_neg1d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1d5,                 __m128f, flt_neg1d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg2,                   __m128f, flt_neg2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg2d25,                __m128f, flt_neg2d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg2d5,                 __m128f, flt_neg2d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg3,                   __m128f, flt_neg3, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg3d25,                __m128f, flt_neg3d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg3d5,                 __m128f, flt_neg3d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg4,                   __m128f, flt_neg4, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg4d25,                __m128f, flt_neg4d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg4d5,                 __m128f, flt_neg4d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg5,                   __m128f, flt_neg5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg5d25,                __m128f, flt_neg5d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg5d5,                 __m128f, flt_neg5d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg6,                   __m128f, flt_neg6, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg6d25,                __m128f, flt_neg6d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg6d5,                 __m128f, flt_neg6d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg7,                   __m128f, flt_neg7, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg7d25,                __m128f, flt_neg7d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg7d5,                 __m128f, flt_neg7d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg8,                   __m128f, flt_neg8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg8d25,                __m128f, flt_neg8d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg8d5,                 __m128f, flt_neg8d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg9,                   __m128f, flt_neg9, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg9d25,                __m128f, flt_neg9d25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg9d5,                 __m128f, flt_neg9d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg10,                  __m128f, flt_neg10, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg11,                  __m128f, flt_neg11, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg12,                  __m128f, flt_neg12, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg13,                  __m128f, flt_neg13, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg14,                  __m128f, flt_neg14, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg15,                  __m128f, flt_neg15, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg16,                  __m128f, flt_neg16, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg17,                  __m128f, flt_neg17, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg18,                  __m128f, flt_neg18, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg19,                  __m128f, flt_neg19, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg20,                  __m128f, flt_neg20, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg21,                  __m128f, flt_neg21, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg22,                  __m128f, flt_neg22, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg23,                  __m128f, flt_neg23, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg24,                  __m128f, flt_neg24, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg24d5,                __m128f, flt_neg24d5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg25,                  __m128f, flt_neg25, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg26,                  __m128f, flt_neg26, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg27,                  __m128f, flt_neg27, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg28,                  __m128f, flt_neg28, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg29,                  __m128f, flt_neg29, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg30,                  __m128f, flt_neg30, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg31,                  __m128f, flt_neg31, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg32,                  __m128f, flt_neg32, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg33,                  __m128f, flt_neg33, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg34,                  __m128f, flt_neg34, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg35,                  __m128f, flt_neg35, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg36,                  __m128f, flt_neg36, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg37,                  __m128f, flt_neg37, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg38,                  __m128f, flt_neg38, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg39,                  __m128f, flt_neg39, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg40,                  __m128f, flt_neg40, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg41,                  __m128f, flt_neg41, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg42,                  __m128f, flt_neg42, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg43,                  __m128f, flt_neg43, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg44,                  __m128f, flt_neg44, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg45,                  __m128f, flt_neg45, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg46,                  __m128f, flt_neg46, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg47,                  __m128f, flt_neg47, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg48,                  __m128f, flt_neg48, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg49,                  __m128f, flt_neg49, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg50,                  __m128f, flt_neg50, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg51,                  __m128f, flt_neg51, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg52,                  __m128f, flt_neg52, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg53,                  __m128f, flt_neg53, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg54,                  __m128f, flt_neg54, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg55,                  __m128f, flt_neg55, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg56,                  __m128f, flt_neg56, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg57,                  __m128f, flt_neg57, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg58,                  __m128f, flt_neg58, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg59,                  __m128f, flt_neg59, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg60,                  __m128f, flt_neg60, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg61,                  __m128f, flt_neg61, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg62,                  __m128f, flt_neg62, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg63,                  __m128f, flt_neg63, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg64,                  __m128f, flt_neg64, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg65,                  __m128f, flt_neg65, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg66,                  __m128f, flt_neg66, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg67,                  __m128f, flt_neg67, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg68,                  __m128f, flt_neg68, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg69,                  __m128f, flt_neg69, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg70,                  __m128f, flt_neg70, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg71,                  __m128f, flt_neg71, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg72,                  __m128f, flt_neg72, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg73,                  __m128f, flt_neg73, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg74,                  __m128f, flt_neg74, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg75,                  __m128f, flt_neg75, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg76,                  __m128f, flt_neg76, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg77,                  __m128f, flt_neg77, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg78,                  __m128f, flt_neg78, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg79,                  __m128f, flt_neg79, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg80,                  __m128f, flt_neg80, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg81,                  __m128f, flt_neg81, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg82,                  __m128f, flt_neg82, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg83,                  __m128f, flt_neg83, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg84,                  __m128f, flt_neg84, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg85,                  __m128f, flt_neg85, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg86,                  __m128f, flt_neg86, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg87,                  __m128f, flt_neg87, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg88,                  __m128f, flt_neg88, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg89,                  __m128f, flt_neg89, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg90,                  __m128f, flt_neg90, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg91,                  __m128f, flt_neg91, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg92,                  __m128f, flt_neg92, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg93,                  __m128f, flt_neg93, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg94,                  __m128f, flt_neg94, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg95,                  __m128f, flt_neg95, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg96,                  __m128f, flt_neg96, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg97,                  __m128f, flt_neg97, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg98,                  __m128f, flt_neg98, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg99,                  __m128f, flt_neg99, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg100,                 __m128f, flt_neg100, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg125,                 __m128f, flt_neg125, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg126,                 __m128f, flt_neg126, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg127,                 __m128f, flt_neg127, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg128,                 __m128f, flt_neg128, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg140,                 __m128f, flt_neg140, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg145,                 __m128f, flt_neg145, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg150,                 __m128f, flt_neg150, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg180,                 __m128f, flt_neg180, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg253,                 __m128f, flt_neg253, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg254,                 __m128f, flt_neg254, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg255,                 __m128f, flt_neg255, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg256,                 __m128f, flt_neg256, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg360,                 __m128f, flt_neg360, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg511,                 __m128f, flt_neg511, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg512,                 __m128f, flt_neg512, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg513,                 __m128f, flt_neg513, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1023,                __m128f, flt_neg1023, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1024,                __m128f, flt_neg1024, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg1025,                __m128f, flt_neg1025, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_neg32767,               __m128f, flt_neg32767, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg32768,               __m128f, flt_neg32768, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg65535,               __m128f, flt_neg65535, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg65536,               __m128f, flt_neg65536, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg2147483647,          __m128f, flt_neg2147483647, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg2147483648,          __m128f, flt_neg2147483648, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg4294967295,          __m128f, flt_neg4294967295, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg4294967296,          __m128f, flt_neg4294967296, flt_false, flt_false, flt_false
    
    v4ci4 __m128_0e_bin128,                 __m128i, flt_bin128, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_binneg150,              __m128i, flt_binneg150, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_maxrand,                __m128f, flt_maxrand, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_maxi8,                  __m128f, flt_maxi8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mini8,                  __m128f, flt_mini8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_maxu8,                  __m128f, flt_maxu8, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_maxi16,                 __m128f, flt_maxi16, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mini16,                 __m128f, flt_mini16, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_maxu16,                 __m128f, flt_maxu16, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_maxi32,                 __m128f, flt_maxi32, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mini32,                 __m128f, flt_mini32, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_maxu32,                 __m128f, flt_maxu32, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_maxi8xu8,               __m128f, flt_maxi8xu8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mini8xu8,               __m128f, flt_mini8xu8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_maxi8xu16,              __m128f, flt_maxi8xu16, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mini8xu16,              __m128f, flt_mini8xu16, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_maxi16xu16,             __m128f, flt_maxi16xu16, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mini16xu16,             __m128f, flt_mini16xu16, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_fixunsigned,            __m128f, flt_fixunsigned, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_fixunsigned32,          __m128f, flt_fixunsigned32, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_fixmaxi32,              __m128f, flt_fixmaxi32, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_fixmaxu32,              __m128f, flt_fixmaxu32, flt_false, flt_false, flt_false
    
    v4ci4 __m128_0e_rcpi16,                 __m128f, flt_rcpi16, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcpu16,                 __m128f, flt_rcpu16, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcpi16xu16,             __m128f, flt_rcpi16xu16, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_fixaa8,                 __m128f, flt_fixaa8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_fixr8,                  __m128f, flt_fixr8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_fixg8,                  __m128f, flt_fixg8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_fixb8,                  __m128f, flt_fixb8, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_norma8,                 __m128f, flt_norma8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_normr8,                 __m128f, flt_normr8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_normg8,                 __m128f, flt_normg8, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_normb8,                 __m128f, flt_normb8, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_fixaa2,                 __m128f, flt_fixaa2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_fixb10,                 __m128f, flt_fixb10, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_fixg10,                 __m128f, flt_fixg10, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_fixr10,                 __m128f, flt_fixr10, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_norma2,                 __m128f, flt_norma2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_normb10,                __m128f, flt_normb10, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_normg10,                __m128f, flt_normg10, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_normr10,                __m128f, flt_normr10, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_mg,                     __m128f, flt_mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_negmg,                  __m128f, flt_negmg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_halfmg,                 __m128f, flt_halfmg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neghalfmg,              __m128f, flt_neghalfmg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mgdiv4,                 __m128f, flt_mgdiv4, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_negmgdiv4,              __m128f, flt_negmgdiv4, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_halfmgxmg,              __m128f, flt_halfmgxmg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_halfmgxsqrmg,           __m128f, flt_halfmgxsqrmg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_halfmgxcubemg,          __m128f, flt_halfmgxcubemg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neghalfmgxmg,           __m128f, flt_neghalfmgxmg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neghalfmgxsqrmg,        __m128f, flt_neghalfmgxsqrmg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neghalfmgxcubemg,       __m128f, flt_neghalfmgxcubemg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrmg,                  __m128f, flt_sqrmg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_cubemg,                 __m128f, flt_cubemg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrtmg,                 __m128f, flt_sqrtmg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_cbrtmg,                 __m128f, flt_cbrtmg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcpmg,                  __m128f, flt_rcpmg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcpsqrmg,               __m128f, flt_rcpsqrmg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcpcubemg,              __m128f, flt_rcpcubemg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcpsqrtmg,              __m128f, flt_rcpsqrtmg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcpcbrtmg,              __m128f, flt_rcpcbrtmg, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_2mg,                    __m128f, flt_2mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg2mg,                 __m128f, flt_neg2mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqr2mg,                 __m128f, flt_sqr2mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_cube2mg,                __m128f, flt_cube2mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrt2mg,                __m128f, flt_sqrt2mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_cbrt2mg,                __m128f, flt_cbrt2mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_4mg,                    __m128f, flt_4mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg4mg,                 __m128f, flt_neg4mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqr4mg,                 __m128f, flt_sqr4mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_cube4mg,                __m128f, flt_cube4mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrt4mg,                __m128f, flt_sqrt4mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_cbrt4mg,                __m128f, flt_cbrt4mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcp2mg,                 __m128f, flt_rcp2mg, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcp4mg,                 __m128f, flt_rcp4mg, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_e,                      __m128f, flt_e, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_exp,                    __m128f, flt_exp, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_loge,                   __m128f, flt_loge, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_logehigh,               __m128f, flt_logehigh, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_log2e,                  __m128f, flt_log2e, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_log2ehigh,              __m128f, flt_log2ehigh, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_log10e,                 __m128f, flt_log10e, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcplog2e,               __m128f, flt_rcplog2e, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcplog10e,              __m128f, flt_rcplog10e, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_log2t,                  __m128f, flt_log2t, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_log2,                   __m128f, flt_log2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_log2high,               __m128f, flt_log2high, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_ln2,                    __m128f, flt_ln2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_ln2high,                __m128f, flt_ln2high, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1divln2,                __m128f, flt_1divln2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2divln2,                __m128f, flt_2divln2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_lnt,                    __m128f, flt_lnt, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_lnthigh,                __m128f, flt_lnthigh, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_ln10,                   __m128f, flt_ln10, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrt2,                  __m128f, flt_sqrt2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcpsqrt2,               __m128f, flt_rcpsqrt2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrt2div2,              __m128f, flt_sqrt2div2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrt2div2high,          __m128f, flt_sqrt2div2high, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrt2div2low,           __m128f, flt_sqrt2div2low, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrthalf,               __m128f, flt_sqrthalf, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrthalfhigh,           __m128f, flt_sqrthalfhigh, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrthalflow,            __m128f, flt_sqrthalflow, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_pow2,                   __m128f, flt_pow2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcppow2,                __m128f, flt_rcppow2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_cbrt2,                  __m128f, flt_cbrt2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcpcbrt2,               __m128f, flt_rcpcbrt2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1div3,                  __m128f, flt_1div3, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1div7,                  __m128f, flt_1div7, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_1div9,                  __m128f, flt_1div9, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2div3,                  __m128f, flt_2div3, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2div7,                  __m128f, flt_2div7, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2div9,                  __m128f, flt_2div9, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_4div3,                  __m128f, flt_4div3, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_4div7,                  __m128f, flt_4div7, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_4div9,                  __m128f, flt_4div9, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_pi,                     __m128f, flt_pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_pihigh,                 __m128f, flt_pihigh, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_halfpi,                 __m128f, flt_halfpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2pi,                    __m128f, flt_2pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_negpi,                  __m128f, flt_negpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neghalfpi,              __m128f, flt_neghalfpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neg2pi,                 __m128f, flt_neg2pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcppi,                  __m128f, flt_rcppi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_invpi,                  __m128f, flt_invpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcp2pi,                 __m128f, flt_rcp2pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_inv2pi,                 __m128f, flt_inv2pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_pidiv2,                 __m128f, flt_pidiv2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_pidiv2high,             __m128f, flt_pidiv2high, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_pidiv4,                 __m128f, flt_pidiv4, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_pidiv4high,             __m128f, flt_pidiv4high, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_pix3div4,               __m128f, flt_pix3div4, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrtpi,                 __m128f, flt_sqrtpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrt2pi,                __m128f, flt_sqrt2pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrt2pihigh,            __m128f, flt_sqrt2pihigh, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcpsqrtpi,              __m128f, flt_rcpsqrtpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcpsqrt2pi,             __m128f, flt_rcpsqrt2pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrtpidiv2,             __m128f, flt_sqrtpidiv2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrtpidiv2high,         __m128f, flt_sqrtpidiv2high, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrt2pidiv2,            __m128f, flt_sqrt2pidiv2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrt2pidiv2high,        __m128f, flt_sqrt2pidiv2high, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2divpi,                 __m128f, flt_2divpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2div2pi,                __m128f, flt_2div2pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2divsqrtpi,             __m128f, flt_2divsqrtpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_2divsqrt2pi,            __m128f, flt_2divsqrt2pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_sqrt2divpi,             __m128f, flt_sqrt2divpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_logpi,                  __m128f, flt_logpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_log2pi,                 __m128f, flt_log2pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_lnpi,                   __m128f, flt_lnpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_ln2pi,                  __m128f, flt_ln2pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_powpi,                  __m128f, flt_powpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcppowpi,               __m128f, flt_rcppowpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_pow2pi,                 __m128f, flt_pow2pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcppow2pi,              __m128f, flt_rcppow2pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_cbrtpi,                 __m128f, flt_cbrtpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcpcbrtpi,              __m128f, flt_rcpcbrtpi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_cbrt2pi,                __m128f, flt_cbrt2pi, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_rcpcbrt2pi,             __m128f, flt_rcpcbrt2pi, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_pow2tom126,             __m128f, flt_pow2tom126, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_pow2to126,              __m128f, flt_pow2to126, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_normhuge,               __m128f, flt_normhuge, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_pow2to23,               __m128f, flt_pow2to23, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_pow2to24,               __m128f, flt_pow2to24, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_maxi32pow2to23,         __m128f, flt_maxi32pow2to23, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_pow2to31,               __m128f, flt_pow2to31, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_pow2to32,               __m128f, flt_pow2to32, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_remquobits,             __m128i, flt_remquobits, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_remquomask,             __m128i, flt_remquomask, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_trigploss,              __m128f, flt_trigploss, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_degtorad,               __m128f, flt_degtorad, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_radtodeg,               __m128f, flt_radtodeg, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_degtograd,              __m128f, flt_degtograd, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_gradtodeg,              __m128f, flt_gradtodeg, flt_false, flt_false, flt_false
    
    v4ci4 __m128_0e_radtograd,              __m128f, flt_radtograd, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_gradtorad,              __m128f, flt_gradtorad, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_sungravity,             __m128f, flt_sungravity, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_jupitergravity,         __m128f, flt_jupitergravity, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_neptunegravity,         __m128f, flt_neptunegravity, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_saturngravity,          __m128f, flt_saturngravity, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_uranusgravity,          __m128f, flt_uranusgravity, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_earthgravity,           __m128f, flt_earthgravity, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_venusgravity,           __m128f, flt_venusgravity, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_marsgravity,            __m128f, flt_marsgravity, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mercurygravity,         __m128f, flt_mercurygravity, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_moongravity,            __m128f, flt_moongravity, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_plutogravity,           __m128f, flt_plutogravity, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_kmtoinch,               __m128f, flt_kmtoinch, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmtofeet,               __m128f, flt_kmtofeet, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmtoyards,              __m128f, flt_kmtoyards, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmtomiles,              __m128f, flt_kmtomiles, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_metoinch,               __m128f, flt_metoinch, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_metofeet,               __m128f, flt_metofeet, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_metoyards,              __m128f, flt_metoyards, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_metomiles,              __m128f, flt_metomiles, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_cmtoinch,               __m128f, flt_cmtoinch, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_cmtofeet,               __m128f, flt_cmtofeet, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_cmtoyards,              __m128f, flt_cmtoyards, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_cmtomiles,              __m128f, flt_cmtomiles, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_milltoinch,             __m128f, flt_milltoinch, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milltofeet,             __m128f, flt_milltofeet, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milltoyards,            __m128f, flt_milltoyards, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milltomiles,            __m128f, flt_milltomiles, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_inchtomill,             __m128f, flt_inchtomill, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_inchtocm,               __m128f, flt_inchtocm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_inchtome,               __m128f, flt_inchtome, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_inchtokm,               __m128f, flt_inchtokm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_inchtofeet,             __m128f, flt_inchtofeet, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_inchtoyards,            __m128f, flt_inchtoyards, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_inchtomiles,            __m128f, flt_inchtomiles, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_feettomill,             __m128f, flt_feettomill, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feettocm,               __m128f, flt_feettocm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feettome,               __m128f, flt_feettome, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feettokm,               __m128f, flt_feettokm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feettoinch,             __m128f, flt_feettoinch, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feettoyards,            __m128f, flt_feettoyards, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feettomiles,            __m128f, flt_feettomiles, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_yardstomill,            __m128f, flt_yardstomill, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_yardstocm,              __m128f, flt_yardstocm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_yardstome,              __m128f, flt_yardstome, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_yardstokm,              __m128f, flt_yardstokm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_yardstoinch,            __m128f, flt_yardstoinch, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_yardstofeet,            __m128f, flt_yardstofeet, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_yardstomiles,           __m128f, flt_yardstomiles, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_milestomill,            __m128f, flt_milestomill, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milestocm,              __m128f, flt_milestocm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milestome,              __m128f, flt_milestome, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milestokm,              __m128f, flt_milestokm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milestoinch,            __m128f, flt_milestoinch, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milestofeet,            __m128f, flt_milestofeet, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milestoyards,           __m128f, flt_milestoyards, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_kmphtomeps,             __m128f, flt_kmphtomeps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmphtokmps,             __m128f, flt_kmphtokmps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmphtomepm,             __m128f, flt_kmphtomepm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmphtomilesph,          __m128f, flt_kmphtomilesph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmphtomilesps,          __m128f, flt_kmphtomilesps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmphtofeetps,           __m128f, flt_kmphtofeetps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmphtofeetpm,           __m128f, flt_kmphtofeetpm, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_kmpstomeps,             __m128f, flt_kmpstomeps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmpstokmph,             __m128f, flt_kmpstokmph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmpstomepm,             __m128f, flt_kmpstomepm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmpstomilesph,          __m128f, flt_kmpstomilesph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmpstomilesps,          __m128f, flt_kmpstomilesps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmpstofeetps,           __m128f, flt_kmpstofeetps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_kmpstofeetpm,           __m128f, flt_kmpstofeetpm, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_mepstokmph,             __m128f, flt_mepstokmph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mepstokmps,             __m128f, flt_mepstokmps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mepstomepm,             __m128f, flt_mepstomepm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mepstomilesph,          __m128f, flt_mepstomilesph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mepstomilesps,          __m128f, flt_mepstomilesps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mepstofeetps,           __m128f, flt_mepstofeetps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mepstofeetpm,           __m128f, flt_mepstofeetpm, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_mepmtokmph,             __m128f, flt_mepmtokmph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mepmtokmps,             __m128f, flt_mepmtokmps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mepmtomeps,             __m128f, flt_mepmtomeps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mepmtomilesph,          __m128f, flt_mepmtomilesph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mepmtomilesps,          __m128f, flt_mepmtomilesps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mepmtofeetps,           __m128f, flt_mepmtofeetps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_mepmtofeetpm,           __m128f, flt_mepmtofeetpm, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_milesphtokmph,          __m128f, flt_milesphtokmph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milesphtokmps,          __m128f, flt_milesphtokmps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milesphtomeps,          __m128f, flt_milesphtomeps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milesphtomepm,          __m128f, flt_milesphtomepm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milesphtomilesps,       __m128f, flt_milesphtomilesps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milesphtofeetps,        __m128f, flt_milesphtofeetps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milesphtofeetpm,        __m128f, flt_milesphtofeetpm, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_milespstokmph,          __m128f, flt_milespstokmph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milespstokmps,          __m128f, flt_milespstokmps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milespstomeps,          __m128f, flt_milespstomeps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milespstomepm,          __m128f, flt_milespstomepm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milespstomilesph,       __m128f, flt_milespstomilesph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milespstofeetps,        __m128f, flt_milespstofeetps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_milespstofeetpm,        __m128f, flt_milespstofeetpm, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_feetpstokmph,           __m128f, flt_feetpstokmph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feetpstokmps,           __m128f, flt_feetpstokmps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feetpstomeps,           __m128f, flt_feetpstomeps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feetpstomepm,           __m128f, flt_feetpstomepm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feetpstomilesph,        __m128f, flt_feetpstomilesph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feetpstomilesps,        __m128f, flt_feetpstomilesps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feetpstofeetpm,         __m128f, flt_feetpstofeetpm, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_feetpmtokmph,           __m128f, flt_feetpmtokmph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feetpmtokmps,           __m128f, flt_feetpmtokmps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feetpmtomeps,           __m128f, flt_feetpmtomeps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feetpmtomepm,           __m128f, flt_feetpmtomepm, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feetpmtomilesph,        __m128f, flt_feetpmtomilesph, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feetpmtomilesps,        __m128f, flt_feetpmtomilesps, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_feetpmtofeetps,         __m128f, flt_feetpmtofeetps, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_soundspeedp50c,         __m128f, flt_soundspeedp50c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedp45c,         __m128f, flt_soundspeedp45c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedp40c,         __m128f, flt_soundspeedp40c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedp35c,         __m128f, flt_soundspeedp35c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedp30c,         __m128f, flt_soundspeedp30c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedp25c,         __m128f, flt_soundspeedp25c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedp20c,         __m128f, flt_soundspeedp20c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedp15c,         __m128f, flt_soundspeedp15c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedp10c,         __m128f, flt_soundspeedp10c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedp5c,          __m128f, flt_soundspeedp5c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeed0c,           __m128f, flt_soundspeed0c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedn5c,          __m128f, flt_soundspeedn5c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedn10c,         __m128f, flt_soundspeedn10c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedn15c,         __m128f, flt_soundspeedn15c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedn20c,         __m128f, flt_soundspeedn20c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedn25c,         __m128f, flt_soundspeedn25c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedn30c,         __m128f, flt_soundspeedn30c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedn35c,         __m128f, flt_soundspeedn35c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedn40c,         __m128f, flt_soundspeedn40c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedn45c,         __m128f, flt_soundspeedn45c, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_soundspeedn50c,         __m128f, flt_soundspeedn50c, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_schscale,               __m128f, flt_schscale, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_thscale,                __m128f, flt_thscale, flt_false, flt_false, flt_false

    v4ci4 __m128_0e_expest1,                __m128f, flt_expest1, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_expest2,                __m128f, flt_expest2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_expest3,                __m128f, flt_expest3, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_expest4,                __m128f, flt_expest4, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_expest5,                __m128f, flt_expest5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_expest6,                __m128f, flt_expest6, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_expest7,                __m128f, flt_expest7, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_logest0,                __m128f, flt_logest0, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_logest1,                __m128f, flt_logest1, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_logest2,                __m128f, flt_logest2, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_logest3,                __m128f, flt_logest3, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_logest4,                __m128f, flt_logest4, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_logest5,                __m128f, flt_logest5, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_logest6,                __m128f, flt_logest6, flt_false, flt_false, flt_false
    v4ci4 __m128_0e_logest7,                __m128f, flt_logest7, flt_false, flt_false, flt_false

    ;removed
    ;alignymmfieldproc
    ;__m128_cutoffmask                   dd flt_true, flt_true, flt_true, flt_true, flt_false, flt_false, flt_false, flt_false

.code

alignxmmfieldproc

;;functions;;

    ;;float;;

;;             sincos template, single precision

procstart _uX_mm_const_DP1F_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_DP1F
        ret
procend

procstart _uX_mm_const_DP2F_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_DP2F
        ret
procend

procstart _uX_mm_const_DP3F_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_DP3F
        ret
procend

procstart _uX_mm_const_P0sinf_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_P0sinf
        ret
procend

procstart _uX_mm_const_P1sinf_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_P1sinf
        ret
procend

procstart _uX_mm_const_P2sinf_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_P2sinf
        ret
procend

procstart _uX_mm_const_P0cosf_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_P0cosf
        ret
procend

procstart _uX_mm_const_P1cosf_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_P1cosf
        ret
procend

procstart _uX_mm_const_P2cosf_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_P2cosf
        ret
procend

;;             sincos template, single precision

procstart _uX_mm_const_1lshl3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,         __m128_1lshl3
        ret
procend

procstart _uX_mm_const_1lshl4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,          __m128_1lshl4
        ret
procend

procstart _uX_mm_const_1lshl7_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1lshl7
        ret
procend

procstart _uX_mm_const_1lshl8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1lshl8
        ret
procend

procstart _uX_mm_const_1lshl11_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1lshl11
        ret
procend

procstart _uX_mm_const_1lshl12_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1lshl12
        ret
procend

procstart _uX_mm_const_1lshl15_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1lshl15
        ret
procend

procstart _uX_mm_const_1lshl16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1lshl16
        ret
procend

procstart _uX_mm_const_1lshl19_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1lshl19
        ret
procend

procstart _uX_mm_const_1lshl20_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1lshl20
        ret
procend

procstart _uX_mm_const_1lshl23_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1lshl23
        ret
procend

procstart _uX_mm_const_1lshl24_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1lshl24
        ret
procend

procstart _uX_mm_const_1lshl27_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1lshl27
        ret
procend

procstart _uX_mm_const_1lshl28_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1lshl28
        ret
procend

procstart _uX_mm_const_1lshl31_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1lshl31
        ret
procend

procstart _uX_mm_const_neg1lshl3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl3
        ret
procend

procstart _uX_mm_const_neg1lshl4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl4
        ret
procend

procstart _uX_mm_const_neg1lshl7_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl7
        ret
procend

procstart _uX_mm_const_neg1lshl8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl8
        ret
procend

procstart _uX_mm_const_neg1lshl11_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl11
        ret
procend

procstart _uX_mm_const_neg1lshl12_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl12
        ret
procend

procstart _uX_mm_const_neg1lshl15_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl15
        ret
procend

procstart _uX_mm_const_neg1lshl16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl16
        ret
procend

procstart _uX_mm_const_neg1lshl19_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl19
        ret
procend

procstart _uX_mm_const_neg1lshl20_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl20
        ret
procend

procstart _uX_mm_const_neg1lshl23_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl23
        ret
procend

procstart _uX_mm_const_neg1lshl24_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl24
        ret
procend

procstart _uX_mm_const_neg1lshl27_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl27
        ret
procend

procstart _uX_mm_const_neg1lshl28_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl28
        ret
procend

procstart _uX_mm_const_neg1lshl31_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1lshl31
        ret
procend

procstart _uX_mm_const_false_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_false
        ret
procend

procstart _uX_mm_const_true_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_true
        ret
procend

procstart _uX_mm_const_error_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_error
        ret
procend

procstart _uX_mm_const_magic_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_magic
        ret
procend

procstart _uX_mm_const_sign_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sign
        ret
procend

procstart _uX_mm_const_invsign_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_invsign
        ret
procend

procstart _uX_mm_const_inf_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_inf
        ret
procend

procstart _uX_mm_const_fin_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fin
        ret
procend

procstart _uX_mm_const_invinf_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_invinf
        ret
procend

procstart _uX_mm_const_neginf_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neginf
        ret
procend

procstart _uX_mm_const_nan_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_nan
        ret
procend

procstart _uX_mm_const_qnan_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_qnan
        ret
procend

procstart _uX_mm_const_negqnan_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negqnan
        ret
procend

procstart _uX_mm_const_nantest_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_nantest
        ret
procend

procstart _uX_mm_const_abs_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_abs
        ret
procend

procstart _uX_mm_const_min_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_min
        ret
procend

procstart _uX_mm_const_max_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_max
        ret
procend

procstart _uX_mm_const_nofraction_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_nofraction
        ret
procend

procstart _uX_mm_const_mindenorm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mindenorm
        ret
procend

procstart _uX_mm_const_denormlimit_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_denormlimit
        ret
procend

procstart _uX_mm_const_minnormal_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_minnormal
        ret
procend

procstart _uX_mm_const_maxnormal_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxnormal
        ret
procend

procstart _uX_mm_const_decdig_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_decdig
        ret
procend

procstart _uX_mm_const_dig_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_dig
        ret
procend

procstart _uX_mm_const_negdecdig_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negdecdig
        ret
procend

procstart _uX_mm_const_negdig_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negdig
        ret
procend

procstart _uX_mm_const_eps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_eps
        ret
procend

procstart _uX_mm_const_epsilon_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_epsilon
        ret
procend

procstart _uX_mm_const_normeps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_normeps
        ret
procend

procstart _uX_mm_const_guard_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_guard
        ret
procend

procstart _uX_mm_const_mantpow2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mantpow2
        ret
procend

procstart _uX_mm_const_maxmantpow2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxmantpow2
        ret
procend

procstart _uX_mm_const_mantdig_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mantdig
        ret
procend

procstart _uX_mm_const_mant_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mant
        ret
procend

procstart _uX_mm_const_negmantdig_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negmantdig
        ret
procend

procstart _uX_mm_const_negmant_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negmant
        ret
procend

procstart _uX_mm_const_maxexpo_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxexpo
        ret
procend

procstart _uX_mm_const_exposign_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_exposign
        ret
procend

procstart _uX_mm_const_expo_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_expo
        ret
procend

procstart _uX_mm_const_negmaxexpo_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negmaxexpo
        ret
procend

procstart _uX_mm_const_negexposign_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negexposign
        ret
procend

procstart _uX_mm_const_negexpo_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negexpo
        ret
procend

procstart _uX_mm_const_subnormalexpo_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_subnormalexpo
        ret
procend

procstart _uX_mm_const_minexpo_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_minexpo
        ret
procend

procstart _uX_mm_const_maxdecexpo_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxdecexpo
        ret
procend

procstart _uX_mm_const_negmaxdecexpo_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negmaxdecexpo
        ret
procend

procstart _uX_mm_const_mindecexpo_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mindecexpo
        ret
procend

procstart _uX_mm_const_expofield_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_expofield
        ret
procend

procstart _uX_mm_const_mantfield_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mantfield
        ret
procend

procstart _uX_mm_const_norm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_norm
        ret
procend

procstart _uX_mm_const_radix_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_radix
        ret
procend

procstart _uX_mm_const_rounds_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rounds
        ret
procend

procstart _uX_mm_const_subdec_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_subdec
        ret
procend

procstart _uX_mm_const_sqrtmax_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrtmax
        ret
procend

procstart _uX_mm_const_smallnormal_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_smallnormal
        ret
procend

procstart _uX_mm_const_halfminuseps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_halfminuseps
        ret
procend

procstart _uX_mm_const_trueint_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_trueint
        ret
procend

procstart _uX_mm_const_byte_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_byte
        ret
procend

procstart _uX_mm_const_byte_even_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_byte_even
        ret
procend

procstart _uX_mm_const_byte_odd_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_byte_odd
        ret
procend

procstart _uX_mm_const_4low_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_4low
        ret
procend

procstart _uX_mm_const_4high_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_4high
        ret
procend

procstart _uX_mm_const_flip4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flip4
        ret
procend

procstart _uX_mm_const_8low_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_8low
        ret
procend

procstart _uX_mm_const_8high_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_8high
        ret
procend

procstart _uX_mm_const_flip8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flip8
        ret
procend

procstart _uX_mm_const_16low_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_16low
        ret
procend

procstart _uX_mm_const_16high_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_16high
        ret
procend

procstart _uX_mm_const_flip16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flip16
        ret
procend

procstart _uX_mm_const_24low_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_24low
        ret
procend

procstart _uX_mm_const_24high_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_24high
        ret
procend

procstart _uX_mm_const_flip24_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flip24
        ret
procend

procstart _uX_mm_const_28low_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_28low
        ret
procend

procstart _uX_mm_const_28high_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_28high
        ret
procend

procstart _uX_mm_const_flip28_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flip28
        ret
procend

procstart _uX_mm_const_32low_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_32low
        ret
procend

procstart _uX_mm_const_32high_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_32high
        ret
procend

procstart _uX_mm_const_flip32_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,          __m128_flip32
        ret
procend

procstart _uX_mm_const_0_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0
        ret
procend

procstart _uX_mm_const_0d0001_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d0001
        ret
procend

procstart _uX_mm_const_0d0002_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d0002
        ret
procend

procstart _uX_mm_const_0d0003_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d0003
        ret
procend

procstart _uX_mm_const_0d0004_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d0004
        ret
procend

procstart _uX_mm_const_0d0005_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d0005
        ret
procend

procstart _uX_mm_const_0d0006_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d0006
        ret
procend

procstart _uX_mm_const_0d0007_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d0007
        ret
procend

procstart _uX_mm_const_0d0008_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d0008
        ret
procend

procstart _uX_mm_const_0d0009_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d0009
        ret
procend

procstart _uX_mm_const_0d001_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d001
        ret
procend

procstart _uX_mm_const_0d002_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d002
        ret
procend

procstart _uX_mm_const_0d003_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d003
        ret
procend

procstart _uX_mm_const_0d004_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d004
        ret
procend

procstart _uX_mm_const_0d005_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d005
        ret
procend

procstart _uX_mm_const_0d006_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d006
        ret
procend

procstart _uX_mm_const_0d007_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d007
        ret
procend

procstart _uX_mm_const_0d008_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d008
        ret
procend

procstart _uX_mm_const_0d009_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d009
        ret
procend

procstart _uX_mm_const_0d01_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d01
        ret
procend

procstart _uX_mm_const_0d02_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d02
        ret
procend

procstart _uX_mm_const_0d025_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d025
        ret
procend

procstart _uX_mm_const_0d03_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d03
        ret
procend

procstart _uX_mm_const_0d04_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d04
        ret
procend

procstart _uX_mm_const_0d05_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d05
        ret
procend

procstart _uX_mm_const_0d06_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d06
        ret
procend

procstart _uX_mm_const_0d07_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d07
        ret
procend

procstart _uX_mm_const_0d08_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d08
        ret
procend

procstart _uX_mm_const_0d09_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d09
        ret
procend

procstart _uX_mm_const_0d1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d1
        ret
procend

procstart _uX_mm_const_0d2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d2
        ret
procend

procstart _uX_mm_const_0d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d25
        ret
procend

procstart _uX_mm_const_0d3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d3
        ret
procend

procstart _uX_mm_const_0d4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d4
        ret
procend

procstart _uX_mm_const_0d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d5
        ret
procend

procstart _uX_mm_const_0d6_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d6
        ret
procend

procstart _uX_mm_const_0d7_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d7
        ret
procend

procstart _uX_mm_const_0d8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d8
        ret
procend

procstart _uX_mm_const_0d9_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0d9
        ret
procend

procstart _uX_mm_const_1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1
        ret
procend

procstart _uX_mm_const_1d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1d25
        ret
procend

procstart _uX_mm_const_1d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1d5
        ret
procend

procstart _uX_mm_const_2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2
        ret
procend

procstart _uX_mm_const_2d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2d25
        ret
procend

procstart _uX_mm_const_2d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2d5
        ret
procend

procstart _uX_mm_const_3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_3
        ret
procend

procstart _uX_mm_const_3d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_3d25
        ret
procend

procstart _uX_mm_const_3d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_3d5
        ret
procend

procstart _uX_mm_const_4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_4
        ret
procend

procstart _uX_mm_const_4d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_4d25
        ret
procend

procstart _uX_mm_const_4d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_4d5
        ret
procend

procstart _uX_mm_const_5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_5
        ret
procend

procstart _uX_mm_const_5d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_5d25
        ret
procend

procstart _uX_mm_const_5d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_5d5
        ret
procend

procstart _uX_mm_const_6_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_6
        ret
procend

procstart _uX_mm_const_6d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_6d25
        ret
procend

procstart _uX_mm_const_6d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_6d5
        ret
procend

procstart _uX_mm_const_7_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_7
        ret
procend

procstart _uX_mm_const_7d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_7d25
        ret
procend

procstart _uX_mm_const_7d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_7d5
        ret
procend

procstart _uX_mm_const_8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_8
        ret
procend

procstart _uX_mm_const_8d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_8d25
        ret
procend

procstart _uX_mm_const_8d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_8d5
        ret
procend

procstart _uX_mm_const_9_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_9
        ret
procend

procstart _uX_mm_const_9d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_9d25
        ret
procend

procstart _uX_mm_const_9d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_9d5
        ret
procend

procstart _uX_mm_const_10_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_10
        ret
procend

procstart _uX_mm_const_11_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_11
        ret
procend

procstart _uX_mm_const_12_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_12
        ret
procend

procstart _uX_mm_const_13_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_13
        ret
procend

procstart _uX_mm_const_14_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_14
        ret
procend

procstart _uX_mm_const_15_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_15
        ret
procend

procstart _uX_mm_const_16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_16
        ret
procend

procstart _uX_mm_const_17_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_17
        ret
procend

procstart _uX_mm_const_18_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_18
        ret
procend

procstart _uX_mm_const_19_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_19
        ret
procend

procstart _uX_mm_const_20_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_20
        ret
procend

procstart _uX_mm_const_21_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_21
        ret
procend

procstart _uX_mm_const_22_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_22
        ret
procend

procstart _uX_mm_const_23_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_23
        ret
procend

procstart _uX_mm_const_24_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_24
        ret
procend

procstart _uX_mm_const_24d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_24d5
        ret
procend

procstart _uX_mm_const_25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_25
        ret
procend

procstart _uX_mm_const_26_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_26
        ret
procend

procstart _uX_mm_const_27_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_27
        ret
procend

procstart _uX_mm_const_28_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_28
        ret
procend

procstart _uX_mm_const_29_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_29
        ret
procend

procstart _uX_mm_const_30_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_30
        ret
procend

procstart _uX_mm_const_31_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_31
        ret
procend

procstart _uX_mm_const_32_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_32
        ret
procend

procstart _uX_mm_const_33_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_33
        ret
procend

procstart _uX_mm_const_34_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_34
        ret
procend

procstart _uX_mm_const_35_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_35
        ret
procend

procstart _uX_mm_const_36_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_36
        ret
procend

procstart _uX_mm_const_37_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_37
        ret
procend

procstart _uX_mm_const_38_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_38
        ret
procend

procstart _uX_mm_const_39_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_39
        ret
procend

procstart _uX_mm_const_40_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_40
        ret
procend

procstart _uX_mm_const_41_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_41
        ret
procend

procstart _uX_mm_const_42_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_42
        ret
procend

procstart _uX_mm_const_43_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_43
        ret
procend

procstart _uX_mm_const_44_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_44
        ret
procend

procstart _uX_mm_const_45_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_45
        ret
procend

procstart _uX_mm_const_46_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_46
        ret
procend

procstart _uX_mm_const_47_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_47
        ret
procend

procstart _uX_mm_const_48_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_48
        ret
procend

procstart _uX_mm_const_49_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_49
        ret
procend

procstart _uX_mm_const_50_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_50
        ret
procend

procstart _uX_mm_const_51_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_51
        ret
procend

procstart _uX_mm_const_52_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_52
        ret
procend

procstart _uX_mm_const_53_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_53
        ret
procend

procstart _uX_mm_const_54_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_54
        ret
procend

procstart _uX_mm_const_55_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_55
        ret
procend

procstart _uX_mm_const_56_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_56
        ret
procend

procstart _uX_mm_const_57_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_57
        ret
procend

procstart _uX_mm_const_58_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_58
        ret
procend

procstart _uX_mm_const_59_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_59
        ret
procend

procstart _uX_mm_const_60_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_60
        ret
procend

procstart _uX_mm_const_61_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_61
        ret
procend

procstart _uX_mm_const_62_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_62
        ret
procend

procstart _uX_mm_const_63_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_63
        ret
procend

procstart _uX_mm_const_64_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_64
        ret
procend

procstart _uX_mm_const_65_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_65
        ret
procend

procstart _uX_mm_const_66_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_66
        ret
procend

procstart _uX_mm_const_67_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_67
        ret
procend

procstart _uX_mm_const_68_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_68
        ret
procend

procstart _uX_mm_const_69_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_69
        ret
procend

procstart _uX_mm_const_70_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_70
        ret
procend

procstart _uX_mm_const_71_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_71
        ret
procend

procstart _uX_mm_const_72_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_72
        ret
procend

procstart _uX_mm_const_73_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_73
        ret
procend

procstart _uX_mm_const_74_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_74
        ret
procend

procstart _uX_mm_const_75_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_75
        ret
procend

procstart _uX_mm_const_76_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_76
        ret
procend

procstart _uX_mm_const_77_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_77
        ret
procend

procstart _uX_mm_const_78_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_78
        ret
procend

procstart _uX_mm_const_79_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_79
        ret
procend

procstart _uX_mm_const_80_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_80
        ret
procend

procstart _uX_mm_const_81_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_81
        ret
procend

procstart _uX_mm_const_82_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_82
        ret
procend

procstart _uX_mm_const_83_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_83
        ret
procend

procstart _uX_mm_const_84_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_84
        ret
procend

procstart _uX_mm_const_85_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_85
        ret
procend

procstart _uX_mm_const_86_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_86
        ret
procend

procstart _uX_mm_const_87_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_87
        ret
procend

procstart _uX_mm_const_88_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_88
        ret
procend

procstart _uX_mm_const_89_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_89
        ret
procend

procstart _uX_mm_const_90_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_90
        ret
procend

procstart _uX_mm_const_91_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_91
        ret
procend

procstart _uX_mm_const_92_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_92
        ret
procend

procstart _uX_mm_const_93_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_93
        ret
procend

procstart _uX_mm_const_94_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_94
        ret
procend

procstart _uX_mm_const_95_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_95
        ret
procend

procstart _uX_mm_const_96_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_96
        ret
procend

procstart _uX_mm_const_97_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_97
        ret
procend

procstart _uX_mm_const_98_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_98
        ret
procend

procstart _uX_mm_const_99_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_99
        ret
procend

procstart _uX_mm_const_100_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_100
        ret
procend

procstart _uX_mm_const_125_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_125
        ret
procend

procstart _uX_mm_const_126_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_126
        ret
procend

procstart _uX_mm_const_127_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_127
        ret
procend

procstart _uX_mm_const_128_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_128
        ret
procend

procstart _uX_mm_const_140_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_140
        ret
procend

procstart _uX_mm_const_145_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_145
        ret
procend

procstart _uX_mm_const_150_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_150
        ret
procend

procstart _uX_mm_const_180_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_180
        ret
procend

procstart _uX_mm_const_253_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_253
        ret
procend

procstart _uX_mm_const_254_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_254
        ret
procend

procstart _uX_mm_const_255_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_255
        ret
procend

procstart _uX_mm_const_256_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_256
        ret
procend

procstart _uX_mm_const_360_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_360
        ret
procend

procstart _uX_mm_const_511_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_511
        ret
procend

procstart _uX_mm_const_512_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_512
        ret
procend

procstart _uX_mm_const_513_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_513
        ret
procend

procstart _uX_mm_const_1023_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1023
        ret
procend

procstart _uX_mm_const_1024_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1024
        ret
procend

procstart _uX_mm_const_1025_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1025
        ret
procend

procstart _uX_mm_const_32767_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_32767
        ret
procend

procstart _uX_mm_const_32768_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_32768
        ret
procend

procstart _uX_mm_const_65535_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_65535
        ret
procend

procstart _uX_mm_const_65536_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_65536
        ret
procend

procstart _uX_mm_const_2147483647_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2147483647
        ret
procend

procstart _uX_mm_const_2147483648_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2147483648
        ret
procend

procstart _uX_mm_const_4294967295_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_4294967295
        ret
procend

procstart _uX_mm_const_4294967296_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_4294967296
        ret
procend

procstart _uX_mm_const_neg0_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0
        ret
procend

procstart _uX_mm_const_neg0d0001_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d0001
        ret
procend

procstart _uX_mm_const_neg0d0002_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d0002
        ret
procend

procstart _uX_mm_const_neg0d0003_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d0003
        ret
procend

procstart _uX_mm_const_neg0d0004_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d0004
        ret
procend

procstart _uX_mm_const_neg0d0005_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d0005
        ret
procend

procstart _uX_mm_const_neg0d0006_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d0006
        ret
procend

procstart _uX_mm_const_neg0d0007_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d0007
        ret
procend

procstart _uX_mm_const_neg0d0008_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d0008
        ret
procend

procstart _uX_mm_const_neg0d0009_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d0009
        ret
procend

procstart _uX_mm_const_neg0d001_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d001
        ret
procend

procstart _uX_mm_const_neg0d002_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d002
        ret
procend

procstart _uX_mm_const_neg0d003_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d003
        ret
procend

procstart _uX_mm_const_neg0d004_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d004
        ret
procend

procstart _uX_mm_const_neg0d005_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d005
        ret
procend

procstart _uX_mm_const_neg0d006_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d006
        ret
procend

procstart _uX_mm_const_neg0d007_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d007
        ret
procend

procstart _uX_mm_const_neg0d008_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d008
        ret
procend

procstart _uX_mm_const_neg0d009_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d009
        ret
procend

procstart _uX_mm_const_neg0d01_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d01
        ret
procend

procstart _uX_mm_const_neg0d02_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d02
        ret
procend

procstart _uX_mm_const_neg0d025_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d025
        ret
procend

procstart _uX_mm_const_neg0d03_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d03
        ret
procend

procstart _uX_mm_const_neg0d04_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d04
        ret
procend

procstart _uX_mm_const_neg0d05_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d05
        ret
procend

procstart _uX_mm_const_neg0d06_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d06
        ret
procend

procstart _uX_mm_const_neg0d07_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d07
        ret
procend

procstart _uX_mm_const_neg0d08_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d08
        ret
procend

procstart _uX_mm_const_neg0d09_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d09
        ret
procend

procstart _uX_mm_const_neg0d1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d1
        ret
procend

procstart _uX_mm_const_neg0d2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d2
        ret
procend

procstart _uX_mm_const_neg0d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d25
        ret
procend

procstart _uX_mm_const_neg0d3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d3
        ret
procend

procstart _uX_mm_const_neg0d4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d4
        ret
procend

procstart _uX_mm_const_neg0d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d5
        ret
procend

procstart _uX_mm_const_neg0d6_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d6
        ret
procend

procstart _uX_mm_const_neg0d7_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d7
        ret
procend

procstart _uX_mm_const_neg0d8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d8
        ret
procend

procstart _uX_mm_const_neg0d9_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg0d9
        ret
procend

procstart _uX_mm_const_neg1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1
        ret
procend

procstart _uX_mm_const_neg1d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1d25
        ret
procend

procstart _uX_mm_const_neg1d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1d5
        ret
procend

procstart _uX_mm_const_neg2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg2
        ret
procend

procstart _uX_mm_const_neg2d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg2d25
        ret
procend

procstart _uX_mm_const_neg2d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg2d5
        ret
procend

procstart _uX_mm_const_neg3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg3
        ret
procend

procstart _uX_mm_const_neg3d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg3d25
        ret
procend

procstart _uX_mm_const_neg3d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg3d5
        ret
procend

procstart _uX_mm_const_neg4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg4
        ret
procend

procstart _uX_mm_const_neg4d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg4d25
        ret
procend

procstart _uX_mm_const_neg4d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg4d5
        ret
procend

procstart _uX_mm_const_neg5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg5
        ret
procend

procstart _uX_mm_const_neg5d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg5d25
        ret
procend

procstart _uX_mm_const_neg5d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg5d5
        ret
procend

procstart _uX_mm_const_neg6_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg6
        ret
procend

procstart _uX_mm_const_neg6d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg6d25
        ret
procend

procstart _uX_mm_const_neg6d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg6d5
        ret
procend

procstart _uX_mm_const_neg7_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg7
        ret
procend

procstart _uX_mm_const_neg7d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg7d25
        ret
procend

procstart _uX_mm_const_neg7d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg7d5
        ret
procend

procstart _uX_mm_const_neg8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg8
        ret
procend

procstart _uX_mm_const_neg8d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg8d25
        ret
procend

procstart _uX_mm_const_neg8d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg8d5
        ret
procend

procstart _uX_mm_const_neg9_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg9
        ret
procend

procstart _uX_mm_const_neg9d25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg9d25
        ret
procend

procstart _uX_mm_const_neg9d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg9d5
        ret
procend

procstart _uX_mm_const_neg10_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg10
        ret
procend

procstart _uX_mm_const_neg11_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg11
        ret
procend

procstart _uX_mm_const_neg12_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg12
        ret
procend

procstart _uX_mm_const_neg13_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg13
        ret
procend

procstart _uX_mm_const_neg14_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg14
        ret
procend

procstart _uX_mm_const_neg15_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg15
        ret
procend

procstart _uX_mm_const_neg16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg16
        ret
procend

procstart _uX_mm_const_neg17_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg17
        ret
procend

procstart _uX_mm_const_neg18_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg18
        ret
procend

procstart _uX_mm_const_neg19_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg19
        ret
procend

procstart _uX_mm_const_neg20_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg20
        ret
procend

procstart _uX_mm_const_neg21_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg21
        ret
procend

procstart _uX_mm_const_neg22_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg22
        ret
procend

procstart _uX_mm_const_neg23_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg23
        ret
procend

procstart _uX_mm_const_neg24_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg24
        ret
procend

procstart _uX_mm_const_neg24d5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg24d5
        ret
procend

procstart _uX_mm_const_neg25_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg25
        ret
procend

procstart _uX_mm_const_neg26_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg26
        ret
procend

procstart _uX_mm_const_neg27_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg27
        ret
procend

procstart _uX_mm_const_neg28_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg28
        ret
procend

procstart _uX_mm_const_neg29_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg29
        ret
procend

procstart _uX_mm_const_neg30_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg30
        ret
procend

procstart _uX_mm_const_neg31_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg31
        ret
procend

procstart _uX_mm_const_neg32_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg32
        ret
procend

procstart _uX_mm_const_neg33_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg33
        ret
procend

procstart _uX_mm_const_neg34_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg34
        ret
procend

procstart _uX_mm_const_neg35_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg35
        ret
procend

procstart _uX_mm_const_neg36_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg36
        ret
procend

procstart _uX_mm_const_neg37_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg37
        ret
procend

procstart _uX_mm_const_neg38_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg38
        ret
procend

procstart _uX_mm_const_neg39_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg39
        ret
procend

procstart _uX_mm_const_neg40_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg40
        ret
procend

procstart _uX_mm_const_neg41_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg41
        ret
procend

procstart _uX_mm_const_neg42_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg42
        ret
procend

procstart _uX_mm_const_neg43_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg43
        ret
procend

procstart _uX_mm_const_neg44_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg44
        ret
procend

procstart _uX_mm_const_neg45_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg45
        ret
procend

procstart _uX_mm_const_neg46_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg46
        ret
procend

procstart _uX_mm_const_neg47_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg47
        ret
procend

procstart _uX_mm_const_neg48_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg48
        ret
procend

procstart _uX_mm_const_neg49_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg49
        ret
procend

procstart _uX_mm_const_neg50_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg50
        ret
procend

procstart _uX_mm_const_neg51_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg51
        ret
procend

procstart _uX_mm_const_neg52_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg52
        ret
procend

procstart _uX_mm_const_neg53_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg53
        ret
procend

procstart _uX_mm_const_neg54_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg54
        ret
procend

procstart _uX_mm_const_neg55_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg55
        ret
procend

procstart _uX_mm_const_neg56_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg56
        ret
procend

procstart _uX_mm_const_neg57_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg57
        ret
procend

procstart _uX_mm_const_neg58_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg58
        ret
procend

procstart _uX_mm_const_neg59_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg59
        ret
procend

procstart _uX_mm_const_neg60_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg60
        ret
procend

procstart _uX_mm_const_neg61_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg61
        ret
procend

procstart _uX_mm_const_neg62_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg62
        ret
procend

procstart _uX_mm_const_neg63_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg63
        ret
procend

procstart _uX_mm_const_neg64_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg64
        ret
procend

procstart _uX_mm_const_neg65_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg65
        ret
procend

procstart _uX_mm_const_neg66_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg66
        ret
procend

procstart _uX_mm_const_neg67_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg67
        ret
procend

procstart _uX_mm_const_neg68_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg68
        ret
procend

procstart _uX_mm_const_neg69_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg69
        ret
procend

procstart _uX_mm_const_neg70_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg70
        ret
procend

procstart _uX_mm_const_neg71_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg71
        ret
procend

procstart _uX_mm_const_neg72_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg72
        ret
procend

procstart _uX_mm_const_neg73_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg73
        ret
procend

procstart _uX_mm_const_neg74_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg74
        ret
procend

procstart _uX_mm_const_neg75_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg75
        ret
procend

procstart _uX_mm_const_neg76_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg76
        ret
procend

procstart _uX_mm_const_neg77_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg77
        ret
procend

procstart _uX_mm_const_neg78_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg78
        ret
procend

procstart _uX_mm_const_neg79_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg79
        ret
procend

procstart _uX_mm_const_neg80_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg80
        ret
procend

procstart _uX_mm_const_neg81_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg81
        ret
procend

procstart _uX_mm_const_neg82_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg82
        ret
procend

procstart _uX_mm_const_neg83_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg83
        ret
procend

procstart _uX_mm_const_neg84_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg84
        ret
procend

procstart _uX_mm_const_neg85_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg85
        ret
procend

procstart _uX_mm_const_neg86_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg86
        ret
procend

procstart _uX_mm_const_neg87_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg87
        ret
procend

procstart _uX_mm_const_neg88_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg88
        ret
procend

procstart _uX_mm_const_neg89_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg89
        ret
procend

procstart _uX_mm_const_neg90_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg90
        ret
procend

procstart _uX_mm_const_neg91_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg91
        ret
procend

procstart _uX_mm_const_neg92_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg92
        ret
procend

procstart _uX_mm_const_neg93_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg93
        ret
procend

procstart _uX_mm_const_neg94_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg94
        ret
procend

procstart _uX_mm_const_neg95_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg95
        ret
procend

procstart _uX_mm_const_neg96_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg96
        ret
procend

procstart _uX_mm_const_neg97_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg97
        ret
procend

procstart _uX_mm_const_neg98_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg98
        ret
procend

procstart _uX_mm_const_neg99_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg99
        ret
procend

procstart _uX_mm_const_neg100_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg100
        ret
procend

procstart _uX_mm_const_neg125_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg125
        ret
procend

procstart _uX_mm_const_neg126_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg126
        ret
procend

procstart _uX_mm_const_neg127_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg127
        ret
procend

procstart _uX_mm_const_neg128_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg128
        ret
procend

procstart _uX_mm_const_neg140_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg140
        ret
procend

procstart _uX_mm_const_neg145_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg145
        ret
procend

procstart _uX_mm_const_neg150_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg150
        ret
procend

procstart _uX_mm_const_neg180_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg180
        ret
procend

procstart _uX_mm_const_neg253_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg253
        ret
procend

procstart _uX_mm_const_neg254_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg254
        ret
procend

procstart _uX_mm_const_neg255_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg255
        ret
procend

procstart _uX_mm_const_neg256_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg256
        ret
procend

procstart _uX_mm_const_neg360_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg360
        ret
procend

procstart _uX_mm_const_neg511_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg511
        ret
procend

procstart _uX_mm_const_neg512_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg512
        ret
procend

procstart _uX_mm_const_neg513_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg513
        ret
procend

procstart _uX_mm_const_neg1023_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1023
        ret
procend

procstart _uX_mm_const_neg1024_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1024
        ret
procend

procstart _uX_mm_const_neg1025_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg1025
        ret
procend

procstart _uX_mm_const_neg32767_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg32767
        ret
procend

procstart _uX_mm_const_neg32768_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg32768
        ret
procend

procstart _uX_mm_const_neg65535_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg65535
        ret
procend

procstart _uX_mm_const_neg65536_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg65536
        ret
procend

procstart _uX_mm_const_neg2147483647_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg2147483647
        ret
procend

procstart _uX_mm_const_neg2147483648_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg2147483648
        ret
procend

procstart _uX_mm_const_neg4294967295_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg4294967295
        ret
procend

procstart _uX_mm_const_neg4294967296_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg4294967296
        ret
procend

procstart _uX_mm_const_bin128_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_bin128
        ret
procend

procstart _uX_mm_const_binneg150_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_binneg150
        ret
procend

procstart _uX_mm_const_maxrand_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxrand
        ret
procend

procstart _uX_mm_const_maxi8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxi8
        ret
procend

procstart _uX_mm_const_mini8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mini8
        ret
procend

procstart _uX_mm_const_maxu8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxu8
        ret
procend

procstart _uX_mm_const_maxi16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxi16
        ret
procend

procstart _uX_mm_const_mini16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mini16
        ret
procend

procstart _uX_mm_const_maxu16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxu16
        ret
procend

procstart _uX_mm_const_maxi32_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxi32
        ret
procend

procstart _uX_mm_const_mini32_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mini32
        ret
procend

procstart _uX_mm_const_maxu32_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxu32
        ret
procend

procstart _uX_mm_const_maxi8xu8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxi8xu8
        ret
procend

procstart _uX_mm_const_mini8xu8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mini8xu8
        ret
procend

procstart _uX_mm_const_maxi8xu16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxi8xu16
        ret
procend

procstart _uX_mm_const_mini8xu16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mini8xu16
        ret
procend

procstart _uX_mm_const_maxi16xu16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxi16xu16
        ret
procend

procstart _uX_mm_const_mini16xu16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mini16xu16
        ret
procend

procstart _uX_mm_const_fixunsigned_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixunsigned
        ret
procend

procstart _uX_mm_const_fixunsigned32_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixunsigned32
        ret
procend

procstart _uX_mm_const_fixmaxi32_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixmaxi32
        ret
procend

procstart _uX_mm_const_fixmaxu32_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixmaxu32
        ret
procend

procstart _uX_mm_const_rcpi16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpi16
        ret
procend

procstart _uX_mm_const_rcpu16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpu16
        ret
procend

procstart _uX_mm_const_rcpi16xu16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpi16xu16
        ret
procend

procstart _uX_mm_const_fixaa8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixaa8
        ret
procend

procstart _uX_mm_const_fixr8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixr8
        ret
procend

procstart _uX_mm_const_fixr8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixg8
        ret
procend

procstart _uX_mm_const_fixb8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixb8
        ret
procend

procstart _uX_mm_const_norma8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_norma8
        ret
procend

procstart _uX_mm_const_normr8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_normr8
        ret
procend

procstart _uX_mm_const_normg8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_normg8
        ret
procend

procstart _uX_mm_const_normb8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_normb8
        ret
procend

procstart _uX_mm_const_fixaa2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixaa2
        ret
procend

procstart _uX_mm_const_fixb10_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixb10
        ret
procend

procstart _uX_mm_const_fixg10_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixg10
        ret
procend

procstart _uX_mm_const_fixr10_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixr10
        ret
procend

procstart _uX_mm_const_norma2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_norma2
        ret
procend

procstart _uX_mm_const_normb10_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_normb10
        ret
procend

procstart _uX_mm_const_normg10_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_normg10
        ret
procend

procstart _uX_mm_const_normr10_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_normr10
        ret
procend

procstart _uX_mm_const_mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mg
        ret
procend

procstart _uX_mm_const_negmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negmg
        ret
procend

procstart _uX_mm_const_halfmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_halfmg
        ret
procend

procstart _uX_mm_const_neghalfmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neghalfmg
        ret
procend

procstart _uX_mm_const_mgdiv4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mgdiv4
        ret
procend

procstart _uX_mm_const_negmgdiv4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negmgdiv4
        ret
procend

procstart _uX_mm_const_halfmgxmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_halfmgxmg
        ret
procend

procstart _uX_mm_const_halfmgxsqrmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_halfmgxsqrmg
        ret
procend

procstart _uX_mm_const_halfmgxcubemg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_halfmgxcubemg
        ret
procend

procstart _uX_mm_const_neghalfmgxmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neghalfmgxmg
        ret
procend

procstart _uX_mm_const_neghalfmgxsqrmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neghalfmgxsqrmg
        ret
procend

procstart _uX_mm_const_neghalfmgxcubemg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neghalfmgxcubemg
        ret
procend

procstart _uX_mm_const_sqrmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrmg
        ret
procend

procstart _uX_mm_const_cubemg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_cubemg
        ret
procend

procstart _uX_mm_const_sqrtmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrtmg
        ret
procend

procstart _uX_mm_const_cbrtmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_cbrtmg
        ret
procend

procstart _uX_mm_const_rcpmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpmg
        ret
procend

procstart _uX_mm_const_rcpsqrmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpsqrmg
        ret
procend

procstart _uX_mm_const_rcpcubemg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpcubemg
        ret
procend

procstart _uX_mm_const_rcpsqrtmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpsqrtmg
        ret
procend

procstart _uX_mm_const_rcpcbrtmg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpcbrtmg
        ret
procend

procstart _uX_mm_const_2mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2mg
        ret
procend

procstart _uX_mm_const_neg2mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg2mg
        ret
procend

procstart _uX_mm_const_sqr2mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqr2mg
        ret
procend

procstart _uX_mm_const_cube2mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_cube2mg
        ret
procend

procstart _uX_mm_const_sqrt2mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrt2mg
        ret
procend

procstart _uX_mm_const_cbrt2mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_cbrt2mg
        ret
procend

procstart _uX_mm_const_4mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_4mg
        ret
procend

procstart _uX_mm_const_neg4mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg4mg
        ret
procend

procstart _uX_mm_const_sqr4mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqr4mg
        ret
procend

procstart _uX_mm_const_cube4mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_cube4mg
        ret
procend

procstart _uX_mm_const_sqrt4mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrt4mg
        ret
procend

procstart _uX_mm_const_cbrt4mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_cbrt4mg
        ret
procend

procstart _uX_mm_const_rcp2mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcp2mg
        ret
procend

procstart _uX_mm_const_rcp4mg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcp4mg
        ret
procend

procstart _uX_mm_const_e_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_e
        ret
procend

procstart _uX_mm_const_exp_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_exp
        ret
procend

procstart _uX_mm_const_loge_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_loge
        ret
procend

procstart _uX_mm_const_logehigh_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_logehigh
        ret
procend

procstart _uX_mm_const_log2e_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_log2e
        ret
procend

procstart _uX_mm_const_log2ehigh_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_log2ehigh
        ret
procend

procstart _uX_mm_const_log10e_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_log10e
        ret
procend

procstart _uX_mm_const_rcplog2e_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcplog2e
        ret
procend

procstart _uX_mm_const_rcplog10e_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcplog10e
        ret
procend

procstart _uX_mm_const_log2t_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_log2t
        ret
procend

procstart _uX_mm_const_log2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_log2
        ret
procend

procstart _uX_mm_const_log2high_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_log2high
        ret
procend

procstart _uX_mm_const_ln2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_ln2
        ret
procend

procstart _uX_mm_const_ln2high_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_ln2high
        ret
procend

procstart _uX_mm_const_1divln2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1divln2
        ret
procend

procstart _uX_mm_const_2divln2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2divln2
        ret
procend

procstart _uX_mm_const_lnt_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_lnt
        ret
procend

procstart _uX_mm_const_lnthigh_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_lnthigh
        ret
procend

procstart _uX_mm_const_ln10_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_ln10
        ret
procend

procstart _uX_mm_const_sqrt2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrt2
        ret
procend

procstart _uX_mm_const_rcpsqrt2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpsqrt2
        ret
procend

procstart _uX_mm_const_sqrt2div2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrt2div2
        ret
procend

procstart _uX_mm_const_sqrt2div2high_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrt2div2high
        ret
procend

procstart _uX_mm_const_sqrt2div2low_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrt2div2low
        ret
procend

procstart _uX_mm_const_sqrthalf_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrthalf
        ret
procend

procstart _uX_mm_const_sqrthalfhigh_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrthalfhigh
        ret
procend

procstart _uX_mm_const_sqrthalflow_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrthalflow
        ret
procend

procstart _uX_mm_const_pow2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pow2
        ret
procend

procstart _uX_mm_const_rcppow2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcppow2
        ret
procend

procstart _uX_mm_const_cbrt2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_cbrt2
        ret
procend

procstart _uX_mm_const_rcpcbrt2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpcbrt2
        ret
procend

procstart _uX_mm_const_1div3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1div3
        ret
procend

procstart _uX_mm_const_1div7_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1div7
        ret
procend

procstart _uX_mm_const_1div9_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_1div9
        ret
procend

procstart _uX_mm_const_2div3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2div3
        ret
procend

procstart _uX_mm_const_2div7_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2div7
        ret
procend

procstart _uX_mm_const_2div9_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2div9
        ret
procend

procstart _uX_mm_const_4div3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_4div3
        ret
procend

procstart _uX_mm_const_4div7_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_4div7
        ret
procend

procstart _uX_mm_const_4div9_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_4div9
        ret
procend

procstart _uX_mm_const_pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pi
        ret
procend

procstart _uX_mm_const_pihigh_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pihigh
        ret
procend

procstart _uX_mm_const_halfpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_halfpi
        ret
procend

procstart _uX_mm_const_2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2pi
        ret
procend

procstart _uX_mm_const_negpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negpi
        ret
procend

procstart _uX_mm_const_neghalfpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neghalfpi
        ret
procend

procstart _uX_mm_const_neg2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neg2pi
        ret
procend

procstart _uX_mm_const_rcppi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcppi
        ret
procend

procstart _uX_mm_const_invpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_invpi
        ret
procend

procstart _uX_mm_const_rcp2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcp2pi
        ret
procend

procstart _uX_mm_const_inv2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_inv2pi
        ret
procend

procstart _uX_mm_const_pidiv2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pidiv2
        ret
procend

procstart _uX_mm_const_pidiv2high_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pidiv2high
        ret
procend

procstart _uX_mm_const_pidiv4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pidiv4
        ret
procend

procstart _uX_mm_const_pidiv4high_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pidiv4high
        ret
procend

procstart _uX_mm_const_pix3div4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pix3div4
        ret
procend

procstart _uX_mm_const_sqrtpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrtpi
        ret
procend

procstart _uX_mm_const_sqrt2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrt2pi
        ret
procend

procstart _uX_mm_const_sqrt2pihigh_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrt2pihigh
        ret
procend

procstart _uX_mm_const_rcpsqrtpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpsqrtpi
        ret
procend

procstart _uX_mm_const_rcpsqrt2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpsqrt2pi
        ret
procend

procstart _uX_mm_const_sqrtpidiv2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrtpidiv2
        ret
procend

procstart _uX_mm_const_sqrtpidiv2high_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrtpidiv2high
        ret
procend

procstart _uX_mm_const_sqrt2pidiv2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrt2pidiv2
        ret
procend

procstart _uX_mm_const_sqrt2pidiv2high_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrt2pidiv2high
        ret
procend

procstart _uX_mm_const_2divpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2divpi
        ret
procend

procstart _uX_mm_const_2div2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2div2pi
        ret
procend

procstart _uX_mm_const_2divsqrtpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2divsqrtpi
        ret
procend

procstart _uX_mm_const_2divsqrt2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_2divsqrt2pi
        ret
procend

procstart _uX_mm_const_sqrt2divpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sqrt2divpi
        ret
procend

procstart _uX_mm_const_logpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_logpi
        ret
procend

procstart _uX_mm_const_log2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_log2pi
        ret
procend

procstart _uX_mm_const_lnpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_lnpi
        ret
procend

procstart _uX_mm_const_ln2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_ln2pi
        ret
procend

procstart _uX_mm_const_powpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_powpi
        ret
procend

procstart _uX_mm_const_rcppowpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcppowpi
        ret
procend

procstart _uX_mm_const_pow2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pow2pi
        ret
procend

procstart _uX_mm_const_rcppow2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcppow2pi
        ret
procend

procstart _uX_mm_const_cbrtpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_cbrtpi
        ret
procend

procstart _uX_mm_const_rcpcbrtpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpcbrtpi
        ret
procend

procstart _uX_mm_const_cbrt2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_cbrt2pi
        ret
procend

procstart _uX_mm_const_rcpcbrt2pi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_rcpcbrt2pi
        ret
procend

procstart _uX_mm_const_pow2tom126_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pow2tom126
        ret
procend

procstart _uX_mm_const_pow2to126_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pow2to126
        ret
procend

procstart _uX_mm_const_normhuge_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_normhuge
        ret
procend

procstart _uX_mm_const_pow2to23_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pow2to23
        ret
procend

procstart _uX_mm_const_pow2to24_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pow2to24
        ret
procend

procstart _uX_mm_const_maxi32pow2to23_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maxi32pow2to23
        ret
procend

procstart _uX_mm_const_pow2to31_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pow2to31
        ret
procend

procstart _uX_mm_const_pow2to32_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_pow2to32
        ret
procend

procstart _uX_mm_const_remquobits_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_remquobits
        ret
procend

procstart _uX_mm_const_remquomask_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_remquomask
        ret
procend

procstart _uX_mm_const_trigploss_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_trigploss
        ret
procend

procstart _uX_mm_const_degtorad_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_degtorad
        ret
procend

procstart _uX_mm_const_radtodeg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_radtodeg
        ret
procend

procstart _uX_mm_const_degtograd_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_degtograd
        ret
procend

procstart _uX_mm_const_gradtodeg_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_gradtodeg
        ret
procend

procstart _uX_mm_const_radtograd_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_radtograd
        ret
procend

procstart _uX_mm_const_gradtorad_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_gradtorad
        ret
procend

procstart _uX_mm_const_sungravity_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sungravity
        ret
procend

procstart _uX_mm_const_jupitergravity_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_jupitergravity
        ret
procend

procstart _uX_mm_const_neptunegravity_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neptunegravity
        ret
procend

procstart _uX_mm_const_saturngravity_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_saturngravity
        ret
procend

procstart _uX_mm_const_uranusgravity_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_uranusgravity
        ret
procend

procstart _uX_mm_const_earthgravity_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_earthgravity
        ret
procend

procstart _uX_mm_const_venusgravity_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_venusgravity
        ret
procend

procstart _uX_mm_const_marsgravity_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_marsgravity
        ret
procend

procstart _uX_mm_const_mercurygravity_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mercurygravity
        ret
procend

procstart _uX_mm_const_moongravity_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_moongravity
        ret
procend

procstart _uX_mm_const_plutogravity_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_plutogravity
        ret
procend

procstart _uX_mm_const_kmtoinch_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmtoinch
        ret
procend

procstart _uX_mm_const_kmtofeet_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmtofeet
        ret
procend

procstart _uX_mm_const_kmtoyards_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmtoyards
        ret
procend

procstart _uX_mm_const_kmtomiles_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmtomiles
        ret
procend

procstart _uX_mm_const_metoinch_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_metoinch
        ret
procend

procstart _uX_mm_const_metofeet_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_metofeet
        ret
procend

procstart _uX_mm_const_metoyards_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_metoyards
        ret
procend

procstart _uX_mm_const_metomiles_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_metomiles
        ret
procend

procstart _uX_mm_const_cmtoinch_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_cmtoinch
        ret
procend

procstart _uX_mm_const_cmtofeet_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_cmtofeet
        ret
procend

procstart _uX_mm_const_cmtoyards_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_cmtoyards
        ret
procend

procstart _uX_mm_const_cmtomiles_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_cmtomiles
        ret
procend

procstart _uX_mm_const_milltoinch_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milltoinch
        ret
procend

procstart _uX_mm_const_milltofeet_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milltofeet
        ret
procend

procstart _uX_mm_const_milltoyards_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milltoyards
        ret
procend

procstart _uX_mm_const_milltomiles_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milltomiles
        ret
procend

procstart _uX_mm_const_inchtomill_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_inchtomill
        ret
procend

procstart _uX_mm_const_inchtocm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_inchtocm
        ret
procend

procstart _uX_mm_const_inchtome_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_inchtome
        ret
procend

procstart _uX_mm_const_inchtokm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_inchtokm
        ret
procend

procstart _uX_mm_const_inchtofeet_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_inchtofeet
        ret
procend

procstart _uX_mm_const_inchtoyards_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_inchtoyards
        ret
procend

procstart _uX_mm_const_inchtomiles_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_inchtomiles
        ret
procend

procstart _uX_mm_const_feettomill_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feettomill
        ret
procend

procstart _uX_mm_const_feettocm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feettocm
        ret
procend

procstart _uX_mm_const_feettome_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feettome
        ret
procend

procstart _uX_mm_const_feettokm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feettokm
        ret
procend

procstart _uX_mm_const_feettoinch_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feettoinch
        ret
procend

procstart _uX_mm_const_feettoyards_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feettoyards
        ret
procend

procstart _uX_mm_const_feettomiles_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feettomiles
        ret
procend

procstart _uX_mm_const_yardstomill_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_yardstomill
        ret
procend

procstart _uX_mm_const_yardstocm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_yardstocm
        ret
procend

procstart _uX_mm_const_yardstome_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_yardstome
        ret
procend

procstart _uX_mm_const_yardstokm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_yardstokm
        ret
procend

procstart _uX_mm_const_yardstoinch_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_yardstoinch
        ret
procend

procstart _uX_mm_const_yardstofeet_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_yardstofeet
        ret
procend

procstart _uX_mm_const_yardstomiles_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_yardstomiles
        ret
procend

procstart _uX_mm_const_milestomill_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milestomill
        ret
procend

procstart _uX_mm_const_milestocm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milestocm
        ret
procend

procstart _uX_mm_const_milestome_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milestome
        ret
procend

procstart _uX_mm_const_milestokm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milestokm
        ret
procend

procstart _uX_mm_const_milestoinch_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milestoinch
        ret
procend

procstart _uX_mm_const_milestofeet_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milestofeet
        ret
procend

procstart _uX_mm_const_milestoyards_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milestoyards
        ret
procend

procstart _uX_mm_const_kmphtomeps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmphtomeps
        ret
procend

procstart _uX_mm_const_kmphtokmps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmphtokmps
        ret
procend

procstart _uX_mm_const_kmphtomepm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmphtomepm
        ret
procend

procstart _uX_mm_const_kmphtomilesph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmphtomilesph
        ret
procend

procstart _uX_mm_const_kmphtomilesps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmphtomilesps
        ret
procend

procstart _uX_mm_const_kmphtofeetps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmphtofeetps
        ret
procend

procstart _uX_mm_const_kmphtofeetpm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmphtofeetpm
        ret
procend

procstart _uX_mm_const_kmpstomeps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmpstomeps
        ret
procend

procstart _uX_mm_const_kmpstokmph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmpstokmph
        ret
procend

procstart _uX_mm_const_kmpstomepm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmpstomepm
        ret
procend

procstart _uX_mm_const_kmpstomilesph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmpstomilesph
        ret
procend

procstart _uX_mm_const_kmpstomilesps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmpstomilesps
        ret
procend

procstart _uX_mm_const_kmpstofeetps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmpstofeetps
        ret
procend

procstart _uX_mm_const_kmpstofeetpm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_kmpstofeetpm
        ret
procend

procstart _uX_mm_const_mepstokmph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepstokmph
        ret
procend

procstart _uX_mm_const_mepstokmps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepstokmps
        ret
procend

procstart _uX_mm_const_mepstomepm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepstomepm
        ret
procend

procstart _uX_mm_const_mepstomilesph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepstomilesph
        ret
procend

procstart _uX_mm_const_mepstomilesps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepstomilesps
        ret
procend

procstart _uX_mm_const_mepstofeetps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepstofeetps
        ret
procend

procstart _uX_mm_const_mepstofeetpm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepstofeetpm
        ret
procend

procstart _uX_mm_const_mepmtokmph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepmtokmph
        ret
procend

procstart _uX_mm_const_mepmtokmps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepmtokmps
        ret
procend

procstart _uX_mm_const_mepmtomeps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepmtomeps
        ret
procend

procstart _uX_mm_const_mepmtomilesph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepmtomilesph
        ret
procend

procstart _uX_mm_const_mepmtomilesps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepmtomilesps
        ret
procend

procstart _uX_mm_const_mepmtofeetps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepmtofeetps
        ret
procend

procstart _uX_mm_const_mepmtofeetpm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mepmtofeetpm
        ret
procend

procstart _uX_mm_const_milesphtokmph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milesphtokmph
        ret
procend

procstart _uX_mm_const_milesphtokmps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milesphtokmps
        ret
procend

procstart _uX_mm_const_milesphtomeps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milesphtomeps
        ret
procend

procstart _uX_mm_const_milesphtomepm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milesphtomepm
        ret
procend

procstart _uX_mm_const_milesphtomilesps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milesphtomilesps
        ret
procend

procstart _uX_mm_const_milesphtofeetps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milesphtofeetps
        ret
procend

procstart _uX_mm_const_milesphtofeetpm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milesphtofeetpm
        ret
procend

procstart _uX_mm_const_milespstokmph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milespstokmph
        ret
procend

procstart _uX_mm_const_milespstokmps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milespstokmps
        ret
procend

procstart _uX_mm_const_milespstomeps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milespstomeps
        ret
procend

procstart _uX_mm_const_milespstomepm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milespstomepm
        ret
procend

procstart _uX_mm_const_milespstomilesph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milespstomilesph
        ret
procend

procstart _uX_mm_const_milespstofeetps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milespstofeetps
        ret
procend

procstart _uX_mm_const_milespstofeetpm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_milespstofeetpm
        ret
procend

procstart _uX_mm_const_feetpstokmph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpstokmph
        ret
procend

procstart _uX_mm_const_feetpstokmps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpstokmps
        ret
procend

procstart _uX_mm_const_feetpstomeps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpstomeps
        ret
procend

procstart _uX_mm_const_feetpstomepm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpstomepm
        ret
procend

procstart _uX_mm_const_feetpstomilesph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpstomilesph
        ret
procend

procstart _uX_mm_const_feetpstomilesps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpstomilesps
        ret
procend

procstart _uX_mm_const_feetpstofeetpm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpstofeetpm
        ret
procend

procstart _uX_mm_const_feetpmtokmph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpmtokmph
        ret
procend

procstart _uX_mm_const_feetpmtokmps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpmtokmps
        ret
procend

procstart _uX_mm_const_feetpmtomeps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpmtomeps
        ret
procend

procstart _uX_mm_const_feetpmtomepm_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpmtomepm
        ret
procend

procstart _uX_mm_const_feetpmtomilesph_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpmtomilesph
        ret
procend

procstart _uX_mm_const_feetpmtomilesps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpmtomilesps
        ret
procend

procstart _uX_mm_const_feetpmtofeetps_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_feetpmtofeetps
        ret
procend

procstart _uX_mm_const_soundspeedp50c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedp50c
        ret
procend

procstart _uX_mm_const_soundspeedp45c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedp45c
        ret
procend

procstart _uX_mm_const_soundspeedp40c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedp40c
        ret
procend

procstart _uX_mm_const_soundspeedp35c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedp35c
        ret
procend

procstart _uX_mm_const_soundspeedp30c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedp30c
        ret
procend

procstart _uX_mm_const_soundspeedp25c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedp25c
        ret
procend

procstart _uX_mm_const_soundspeedp20c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedp20c
        ret
procend

procstart _uX_mm_const_soundspeedp15c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedp15c
        ret
procend

procstart _uX_mm_const_soundspeedp10c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedp10c
        ret
procend

procstart _uX_mm_const_soundspeedp5c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedp5c
        ret
procend

procstart _uX_mm_const_soundspeed0c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeed0c
        ret
procend

procstart _uX_mm_const_soundspeedn5c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedn5c
        ret
procend

procstart _uX_mm_const_soundspeedn10c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedn10c
        ret
procend

procstart _uX_mm_const_soundspeedn15c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedn15c
        ret
procend

procstart _uX_mm_const_soundspeedn20c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedn20c
        ret
procend

procstart _uX_mm_const_soundspeedn25c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedn25c
        ret
procend

procstart _uX_mm_const_soundspeedn30c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedn30c
        ret
procend

procstart _uX_mm_const_soundspeedn35c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedn35c
        ret
procend

procstart _uX_mm_const_soundspeedn40c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedn40c
        ret
procend

procstart _uX_mm_const_soundspeedn45c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedn45c
        ret
procend

procstart _uX_mm_const_soundspeedn50c_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_soundspeedn50c
        ret
procend

procstart _uX_mm_const_schscale_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_schscale
        ret
procend

procstart _uX_mm_const_thscale_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_thscale
        ret
procend

procstart _uX_mm_const__expest1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_expest1
        ret
procend

procstart _uX_mm_const_expest2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_expest2
        ret
procend

procstart _uX_mm_const_expest3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_expest3
        ret
procend

procstart _uX_mm_const_expest4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_expest4
        ret
procend

procstart _uX_mm_const_expest5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_expest5
        ret
procend

procstart _uX_mm_const_expest6_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_expest6
        ret
procend

procstart _uX_mm_const_expest7_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_expest7
        ret
procend

procstart _uX_mm_const_logest0_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_logest0
        ret
procend

procstart _uX_mm_const_logest1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_logest1
        ret
procend

procstart _uX_mm_const_logest2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_logest2
        ret
procend

procstart _uX_mm_const_logest3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_logest3
        ret
procend

procstart _uX_mm_const_logest4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_logest4
        ret
procend

procstart _uX_mm_const_logest5_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_logest5
        ret
procend

procstart _uX_mm_const_logest6_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_logest6
        ret
procend

procstart _uX_mm_const_logest7_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_logest7
        ret
procend

    ;;DirectX Math constants;;

procstart _uX_mm_const_sincoefficients0_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sincoefficients0
        ret
procend

procstart _uX_mm_const_sincoefficients1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_sincoefficients1
        ret
procend

procstart _uX_mm_const_coscoefficients0_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_coscoefficients0
        ret
procend

procstart _uX_mm_const_coscoefficients1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_coscoefficients1
        ret
procend

procstart _uX_mm_const_tancoefficients0_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_tancoefficients0
        ret
procend

procstart _uX_mm_const_tancoefficients1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_tancoefficients1
        ret
procend

procstart _uX_mm_const_tancoefficients2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_tancoefficients2
        ret
procend

procstart _uX_mm_const_arccoefficients0_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_arccoefficients0
        ret
procend

procstart _uX_mm_const_arccoefficients1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_arccoefficients1
        ret
procend

procstart _uX_mm_const_atancoefficients0_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_atancoefficients0
        ret
procend

procstart _uX_mm_const_atancoefficients1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_atancoefficients1
        ret
procend

procstart _uX_mm_const_atanestcoefficients0_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_atanestcoefficients0
        ret
procend

procstart _uX_mm_const_atanestcoefficients1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_atanestcoefficients1
        ret
procend

procstart _uX_mm_const_tanestcoefficients_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_tanestcoefficients
        ret
procend

procstart _uX_mm_const_arcestcoefficients_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_arcestcoefficients
        ret
procend

procstart _uX_mm_const_piconstants0_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_piconstants0
        ret
procend

procstart _uX_mm_const_identityr0_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_identityr0
        ret
procend

procstart _uX_mm_const_identityr1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_identityr1
        ret
procend

procstart _uX_mm_const_identityr2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_identityr2
        ret
procend

procstart _uX_mm_const_identityr3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_identityr3
        ret
procend

procstart _uX_mm_const_negidentityr0_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negidentityr0
        ret
procend

procstart _uX_mm_const_negidentityr1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negidentityr1
        ret
procend

procstart _uX_mm_const_negidentityr2_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negidentityr2
        ret
procend

procstart _uX_mm_const_negidentityr3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negidentityr3
        ret
procend

procstart _uX_mm_const_negativezero_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negativezero
        ret
procend

procstart _uX_mm_const_negate3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negate3
        ret
procend

procstart _uX_mm_const_maskxy_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maskxy
        ret
procend

procstart _uX_mm_const_maskxyz_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maskxyz
        ret
procend

procstart _uX_mm_const_maskxyzw_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maskxyzw
        ret
procend

procstart _uX_mm_const_mask3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_mask3
        ret
procend

procstart _uX_mm_const_maskx_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maskx
        ret
procend

procstart _uX_mm_const_masky_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_masky
        ret
procend

procstart _uX_mm_const_maskz_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maskz
        ret
procend

procstart _uX_mm_const_maskw_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maskw
        ret
procend

procstart _uX_mm_const_one_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_one
        ret
procend

procstart _uX_mm_const_one3_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_one3
        ret
procend

procstart _uX_mm_const_zero_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_zero
        ret
procend

procstart _uX_mm_const_two_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_two
        ret
procend

procstart _uX_mm_const_four_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_four
        ret
procend

procstart _uX_mm_const_six_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_six
        ret
procend

procstart _uX_mm_const_negativeone_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negativeone
        ret
procend

procstart _uX_mm_const_onehalf_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_onehalf
        ret
procend

procstart _uX_mm_const_negativeonehalf_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negativeonehalf
        ret
procend

procstart _uX_mm_const_negativetwopi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negativetwopi
        ret
procend

procstart _uX_mm_const_negativepi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negativepi
        ret
procend

procstart _uX_mm_const_reciprocalpi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_reciprocalpi
        ret
procend

procstart _uX_mm_const_twopi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_twopi
        ret
procend

procstart _uX_mm_const_reciprocaltwopi_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_reciprocaltwopi
        ret
procend

procstart _uX_mm_const_infinity_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_infinity
        ret
procend

procstart _uX_mm_const_qnantest_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_qnantest
        ret
procend

procstart _uX_mm_const_absmask_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_absmask
        ret
procend

procstart _uX_mm_const_fltmin_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fltmin
        ret
procend

procstart _uX_mm_const_fltmax_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fltmax
        ret
procend

procstart _uX_mm_const_negonemask_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negonemask
        ret
procend

procstart _uX_mm_const_maska8r8g8b8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maska8r8g8b8
        ret
procend

procstart _uX_mm_const_flipa8r8g8b8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flipa8r8g8b8
        ret
procend

procstart _uX_mm_const_fixaa8r8g8b8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixaa8r8g8b8
        ret
procend

procstart _uX_mm_const_normalizea8r8g8b8_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_normalizea8r8g8b8
        ret
procend

procstart _uX_mm_const_maska2b10g10r10_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maska2b10g10r10
        ret
procend

procstart _uX_mm_const_flipa2b10g10r10_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flipa2b10g10r10
        ret
procend

procstart _uX_mm_const_fixaa2b10g10r10_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixaa2b10g10r10
        ret
procend

procstart _uX_mm_const_normalizea2b10g10r10_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_normalizea2b10g10r10
        ret
procend

procstart _uX_mm_const_maskx16y16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maskx16y16
        ret
procend

procstart _uX_mm_const_flipx16y16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flipx16y16
        ret
procend

procstart _uX_mm_const_fixx16y16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixx16y16
        ret
procend

procstart _uX_mm_const_normalizex16y16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_normalizex16y16
        ret
procend

procstart _uX_mm_const_maskx16y16z16w16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maskx16y16z16w16
        ret
procend

procstart _uX_mm_const_flipx16y16z16w16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flipx16y16z16w16
        ret
procend

procstart _uX_mm_const_fixx16y16z16w16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixx16y16z16w16
        ret
procend

procstart _uX_mm_const_normalizex16y16z16w16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_normalizex16y16z16w16
        ret
procend

procstart _uX_mm_const_maskbyte_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maskbyte
        ret
procend

procstart _uX_mm_const_negatex_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negatex
        ret
procend

procstart _uX_mm_const_negatey_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negatey
        ret
procend

procstart _uX_mm_const_negatez_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negatez
        ret
procend

procstart _uX_mm_const_negatew_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_negatew
        ret
procend

procstart _uX_mm_const_select0000_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select0000
        ret
procend

procstart _uX_mm_const_select0001_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select0001
        ret
procend

procstart _uX_mm_const_select0010_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select0010
        ret
procend

procstart _uX_mm_const_select0100_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select0100
        ret
procend

procstart _uX_mm_const_select1000_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select1000
        ret
procend

procstart _uX_mm_const_select0011_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select0011
        ret
procend

procstart _uX_mm_const_select0111_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select0111
        ret
procend

procstart _uX_mm_const_select1111_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select1111
        ret
procend

procstart _uX_mm_const_select1110_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select1110
        ret
procend

procstart _uX_mm_const_select1100_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select1100
        ret
procend

procstart _uX_mm_const_select1001_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select1001
        ret
procend

procstart _uX_mm_const_select0110_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select0110
        ret
procend

procstart _uX_mm_const_select1011_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select1011
        ret
procend

procstart _uX_mm_const_select1101_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select1101
        ret
procend

procstart _uX_mm_const_select0101_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select0101
        ret
procend

procstart _uX_mm_const_select1010_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_select1010
        ret
procend

procstart _uX_mm_const_onehalfminusepsilon_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_onehalfminusepsilon
        ret
procend

procstart _uX_mm_const_fixupy16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixupy16
        ret
procend

procstart _uX_mm_const_fixupy16w16_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixupy16w16
        ret
procend

procstart _uX_mm_const_flipy_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flipy
        ret
procend

procstart _uX_mm_const_flipz_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flipz
        ret
procend

procstart _uX_mm_const_flipw_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flipw
        ret
procend

procstart _uX_mm_const_flipyz_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flipyz
        ret
procend

procstart _uX_mm_const_flipzw_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flipzw
        ret
procend

procstart _uX_mm_const_flipyw_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_flipyw
        ret
procend

procstart _uX_mm_const_maskdec4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maskdec4
        ret
procend

procstart _uX_mm_const_xordec4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_xordec4
        ret
procend

procstart _uX_mm_const_addudec4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_addudec4
        ret
procend

procstart _uX_mm_const_addec4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_addec4
        ret
procend

procstart _uX_mm_const_muldec4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_muldec4
        ret
procend

procstart _uX_mm_const_maskbyte4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_maskbyte4
        ret
procend

procstart _uX_mm_const_xorbyte4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_xorbyte4
        ret
procend

procstart _uX_mm_const_addbyte4_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_addbyte4
        ret
procend

procstart _uX_mm_const_fixmaxint_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixmaxint
        ret
procend

procstart _uX_mm_const_fixmaxuint_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_fixmaxuint
        ret
procend

procstart _uX_mm_const_unsignedfix_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_unsignedfix
        ret
procend

procstart _uX_mm_const_srgbscale_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_srgbscale
        ret
procend

procstart _uX_mm_const_srgba_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_srgba
        ret
procend

procstart _uX_mm_const_srgba1_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_srgba1
        ret
procend

procstart _uX_mm_const_exponentbias_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_exponentbias
        ret
procend

procstart _uX_mm_const_subnormalexponent_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_subnormalexponent
        ret
procend

procstart _uX_mm_const_numtrailing_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_numtrailing
        ret
procend

procstart _uX_mm_const_neginfinity_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_neginfinity
        ret
procend

procstart _uX_mm_const_lge_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_lge
        ret
procend

procstart _uX_mm_const_invlge_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_invlge
        ret
procend

procstart _uX_mm_const_ubytemax_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_ubytemax
        ret
procend

procstart _uX_mm_const_bytemin_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_bytemin
        ret
procend

procstart _uX_mm_const_bytemax_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_bytemax
        ret
procend

procstart _uX_mm_const_shortmin_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_shortmin
        ret
procend

procstart _uX_mm_const_shortmax_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_shortmax
        ret
procend

procstart _uX_mm_const_ushortmax_ps, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_ushortmax
        ret
procend

    ;;float low;;

;;             sincos template, single precision

procstart _uX_mm_const_DP1F_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_DP1F
        ret
procend

procstart _uX_mm_const_DP2F_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_DP2F
        ret
procend

procstart _uX_mm_const_DP3F_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_DP3F
        ret
procend

procstart _uX_mm_const_P0sinf_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_P0sinf
        ret
procend

procstart _uX_mm_const_P1sinf_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_P1sinf
        ret
procend

procstart _uX_mm_const_P2sinf_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_P2sinf
        ret
procend

procstart _uX_mm_const_P0cosf_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_P0cosf
        ret
procend

procstart _uX_mm_const_P1cosf_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_P1cosf
        ret
procend

procstart _uX_mm_const_P2cosf_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_P2cosf
        ret
procend

;;             sincos template, single precision

procstart _uX_mm_const_1lshl3_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,         __m128_0e_1lshl3
        ret
procend

procstart _uX_mm_const_1lshl4_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,          __m128_0e_1lshl4
        ret
procend

procstart _uX_mm_const_1lshl7_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1lshl7
        ret
procend

procstart _uX_mm_const_1lshl8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1lshl8
        ret
procend

procstart _uX_mm_const_1lshl11_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1lshl11
        ret
procend

procstart _uX_mm_const_1lshl12_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1lshl12
        ret
procend

procstart _uX_mm_const_1lshl15_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1lshl15
        ret
procend

procstart _uX_mm_const_1lshl16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1lshl16
        ret
procend

procstart _uX_mm_const_1lshl19_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1lshl19
        ret
procend

procstart _uX_mm_const_1lshl20_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1lshl20
        ret
procend

procstart _uX_mm_const_1lshl23_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1lshl23
        ret
procend

procstart _uX_mm_const_1lshl24_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1lshl24
        ret
procend

procstart _uX_mm_const_1lshl27_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1lshl27
        ret
procend

procstart _uX_mm_const_1lshl28_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1lshl28
        ret
procend

procstart _uX_mm_const_1lshl31_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1lshl31
        ret
procend

procstart _uX_mm_const_neg1lshl3_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl3
        ret
procend

procstart _uX_mm_const_neg1lshl4_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl4
        ret
procend

procstart _uX_mm_const_neg1lshl7_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl7
        ret
procend

procstart _uX_mm_const_neg1lshl8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl8
        ret
procend

procstart _uX_mm_const_neg1lshl11_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl11
        ret
procend

procstart _uX_mm_const_neg1lshl12_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl12
        ret
procend

procstart _uX_mm_const_neg1lshl15_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl15
        ret
procend

procstart _uX_mm_const_neg1lshl16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl16
        ret
procend

procstart _uX_mm_const_neg1lshl19_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl19
        ret
procend

procstart _uX_mm_const_neg1lshl20_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl20
        ret
procend

procstart _uX_mm_const_neg1lshl23_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl23
        ret
procend

procstart _uX_mm_const_neg1lshl24_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl24
        ret
procend

procstart _uX_mm_const_neg1lshl27_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl27
        ret
procend

procstart _uX_mm_const_neg1lshl28_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl28
        ret
procend

procstart _uX_mm_const_neg1lshl31_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1lshl31
        ret
procend

procstart _uX_mm_const_false_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_false
        ret
procend

procstart _uX_mm_const_true_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_true
        ret
procend

procstart _uX_mm_const_error_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_error
        ret
procend

procstart _uX_mm_const_magic_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_magic
        ret
procend

procstart _uX_mm_const_sign_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sign
        ret
procend

procstart _uX_mm_const_invsign_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_invsign
        ret
procend

procstart _uX_mm_const_inf_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_inf
        ret
procend

procstart _uX_mm_const_fin_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_fin
        ret
procend

procstart _uX_mm_const_invinf_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_invinf
        ret
procend

procstart _uX_mm_const_neginf_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neginf
        ret
procend

procstart _uX_mm_const_nan_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_nan
        ret
procend

procstart _uX_mm_const_qnan_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_qnan
        ret
procend

procstart _uX_mm_const_negqnan_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_negqnan
        ret
procend

procstart _uX_mm_const_nantest_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_nantest
        ret
procend

procstart _uX_mm_const_abs_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_abs
        ret
procend

procstart _uX_mm_const_min_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_min
        ret
procend

procstart _uX_mm_const_max_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_max
        ret
procend

procstart _uX_mm_const_nofraction_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_nofraction
        ret
procend

procstart _uX_mm_const_mindenorm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mindenorm
        ret
procend

procstart _uX_mm_const_denormlimit_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_denormlimit
        ret
procend

procstart _uX_mm_const_minnormal_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_minnormal
        ret
procend

procstart _uX_mm_const_maxnormal_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxnormal
        ret
procend

procstart _uX_mm_const_decdig_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_decdig
        ret
procend

procstart _uX_mm_const_dig_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_dig
        ret
procend

procstart _uX_mm_const_negdecdig_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_negdecdig
        ret
procend

procstart _uX_mm_const_negdig_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_negdig
        ret
procend

procstart _uX_mm_const_eps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_eps
        ret
procend

procstart _uX_mm_const_epsilon_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_epsilon
        ret
procend

procstart _uX_mm_const_normeps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_normeps
        ret
procend

procstart _uX_mm_const_guard_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_guard
        ret
procend

procstart _uX_mm_const_mantpow2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mantpow2
        ret
procend

procstart _uX_mm_const_maxmantpow2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxmantpow2
        ret
procend

procstart _uX_mm_const_mantdig_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mantdig
        ret
procend

procstart _uX_mm_const_mant_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mant
        ret
procend

procstart _uX_mm_const_negmantdig_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_negmantdig
        ret
procend

procstart _uX_mm_const_negmant_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_negmant
        ret
procend

procstart _uX_mm_const_maxexpo_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxexpo
        ret
procend

procstart _uX_mm_const_exposign_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_exposign
        ret
procend

procstart _uX_mm_const_expo_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_expo
        ret
procend

procstart _uX_mm_const_negmaxexpo_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_negmaxexpo
        ret
procend

procstart _uX_mm_const_negexposign_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_negexposign
        ret
procend

procstart _uX_mm_const_negexpo_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_negexpo
        ret
procend

procstart _uX_mm_const_subnormalexpo_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_subnormalexpo
        ret
procend

procstart _uX_mm_const_minexpo_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_minexpo
        ret
procend

procstart _uX_mm_const_maxdecexpo_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxdecexpo
        ret
procend

procstart _uX_mm_const_negmaxdecexpo_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_negmaxdecexpo
        ret
procend

procstart _uX_mm_const_mindecexpo_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mindecexpo
        ret
procend

procstart _uX_mm_const_expofield_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_expofield
        ret
procend

procstart _uX_mm_const_mantfield_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mantfield
        ret
procend

procstart _uX_mm_const_norm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_norm
        ret
procend

procstart _uX_mm_const_radix_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_radix
        ret
procend

procstart _uX_mm_const_rounds_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rounds
        ret
procend

procstart _uX_mm_const_subdec_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_subdec
        ret
procend

procstart _uX_mm_const_sqrtmax_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrtmax
        ret
procend

procstart _uX_mm_const_smallnormal_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_smallnormal
        ret
procend

procstart _uX_mm_const_halfminuseps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_halfminuseps
        ret
procend

procstart _uX_mm_const_trueint_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_trueint
        ret
procend

procstart _uX_mm_const_byte_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_byte
        ret
procend

procstart _uX_mm_const_byte_even_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_byte_even
        ret
procend

procstart _uX_mm_const_byte_odd_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_byte_odd
        ret
procend

procstart _uX_mm_const_4low_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_4low
        ret
procend

procstart _uX_mm_const_4high_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_4high
        ret
procend

procstart _uX_mm_const_flip4_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_flip4
        ret
procend

procstart _uX_mm_const_8low_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_8low
        ret
procend

procstart _uX_mm_const_8high_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_8high
        ret
procend

procstart _uX_mm_const_flip8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_flip8
        ret
procend

procstart _uX_mm_const_16low_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_16low
        ret
procend

procstart _uX_mm_const_16high_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_16high
        ret
procend

procstart _uX_mm_const_flip16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_flip16
        ret
procend

procstart _uX_mm_const_24low_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_24low
        ret
procend

procstart _uX_mm_const_24high_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_24high
        ret
procend

procstart _uX_mm_const_flip24_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_flip24
        ret
procend

procstart _uX_mm_const_28low_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_28low
        ret
procend

procstart _uX_mm_const_28high_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_28high
        ret
procend

procstart _uX_mm_const_flip28_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_flip28
        ret
procend

procstart _uX_mm_const_32low_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_32low
        ret
procend

procstart _uX_mm_const_32high_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_32high
        ret
procend

procstart _uX_mm_const_flip32_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,          __m128_0e_flip32
        ret
procend

procstart _uX_mm_const_0_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0
        ret
procend

procstart _uX_mm_const_0d0001_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d0001
        ret
procend

procstart _uX_mm_const_0d0002_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d0002
        ret
procend

procstart _uX_mm_const_0d0003_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d0003
        ret
procend

procstart _uX_mm_const_0d0004_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d0004
        ret
procend

procstart _uX_mm_const_0d0005_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d0005
        ret
procend

procstart _uX_mm_const_0d0006_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d0006
        ret
procend

procstart _uX_mm_const_0d0007_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d0007
        ret
procend

procstart _uX_mm_const_0d0008_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d0008
        ret
procend

procstart _uX_mm_const_0d0009_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d0009
        ret
procend

procstart _uX_mm_const_0d001_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d001
        ret
procend

procstart _uX_mm_const_0d002_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d002
        ret
procend

procstart _uX_mm_const_0d003_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d003
        ret
procend

procstart _uX_mm_const_0d004_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d004
        ret
procend

procstart _uX_mm_const_0d005_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d005
        ret
procend

procstart _uX_mm_const_0d006_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d006
        ret
procend

procstart _uX_mm_const_0d007_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d007
        ret
procend

procstart _uX_mm_const_0d008_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d008
        ret
procend

procstart _uX_mm_const_0d009_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d009
        ret
procend

procstart _uX_mm_const_0d01_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d01
        ret
procend

procstart _uX_mm_const_0d02_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d02
        ret
procend

procstart _uX_mm_const_0d025_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d025
        ret
procend

procstart _uX_mm_const_0d03_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d03
        ret
procend

procstart _uX_mm_const_0d04_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d04
        ret
procend

procstart _uX_mm_const_0d05_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d05
        ret
procend

procstart _uX_mm_const_0d06_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d06
        ret
procend

procstart _uX_mm_const_0d07_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d07
        ret
procend

procstart _uX_mm_const_0d08_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d08
        ret
procend

procstart _uX_mm_const_0d09_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d09
        ret
procend

procstart _uX_mm_const_0d1_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d1
        ret
procend

procstart _uX_mm_const_0d2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d2
        ret
procend

procstart _uX_mm_const_0d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d25
        ret
procend

procstart _uX_mm_const_0d3_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d3
        ret
procend

procstart _uX_mm_const_0d4_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d4
        ret
procend

procstart _uX_mm_const_0d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d5
        ret
procend

procstart _uX_mm_const_0d6_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d6
        ret
procend

procstart _uX_mm_const_0d7_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d7
        ret
procend

procstart _uX_mm_const_0d8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d8
        ret
procend

procstart _uX_mm_const_0d9_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_0d9
        ret
procend

procstart _uX_mm_const_1_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1
        ret
procend

procstart _uX_mm_const_1d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1d25
        ret
procend

procstart _uX_mm_const_1d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1d5
        ret
procend

procstart _uX_mm_const_2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2
        ret
procend

procstart _uX_mm_const_2d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2d25
        ret
procend

procstart _uX_mm_const_2d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2d5
        ret
procend

procstart _uX_mm_const_3_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_3
        ret
procend

procstart _uX_mm_const_3d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_3d25
        ret
procend

procstart _uX_mm_const_3d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_3d5
        ret
procend

procstart _uX_mm_const_4_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_4
        ret
procend

procstart _uX_mm_const_4d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_4d25
        ret
procend

procstart _uX_mm_const_4d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_4d5
        ret
procend

procstart _uX_mm_const_5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_5
        ret
procend

procstart _uX_mm_const_5d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_5d25
        ret
procend

procstart _uX_mm_const_5d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_5d5
        ret
procend

procstart _uX_mm_const_6_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_6
        ret
procend

procstart _uX_mm_const_6d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_6d25
        ret
procend

procstart _uX_mm_const_6d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_6d5
        ret
procend

procstart _uX_mm_const_7_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_7
        ret
procend

procstart _uX_mm_const_7d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_7d25
        ret
procend

procstart _uX_mm_const_7d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_7d5
        ret
procend

procstart _uX_mm_const_8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_8
        ret
procend

procstart _uX_mm_const_8d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_8d25
        ret
procend

procstart _uX_mm_const_8d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_8d5
        ret
procend

procstart _uX_mm_const_9_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_9
        ret
procend

procstart _uX_mm_const_9d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_9d25
        ret
procend

procstart _uX_mm_const_9d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_9d5
        ret
procend

procstart _uX_mm_const_10_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_10
        ret
procend

procstart _uX_mm_const_11_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_11
        ret
procend

procstart _uX_mm_const_12_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_12
        ret
procend

procstart _uX_mm_const_13_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_13
        ret
procend

procstart _uX_mm_const_14_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_14
        ret
procend

procstart _uX_mm_const_15_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_15
        ret
procend

procstart _uX_mm_const_16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_16
        ret
procend

procstart _uX_mm_const_17_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_17
        ret
procend

procstart _uX_mm_const_18_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_18
        ret
procend

procstart _uX_mm_const_19_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_19
        ret
procend

procstart _uX_mm_const_20_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_20
        ret
procend

procstart _uX_mm_const_21_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_21
        ret
procend

procstart _uX_mm_const_22_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_22
        ret
procend

procstart _uX_mm_const_23_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_23
        ret
procend

procstart _uX_mm_const_24_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_24
        ret
procend

procstart _uX_mm_const_24d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_24d5
        ret
procend

procstart _uX_mm_const_25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_25
        ret
procend

procstart _uX_mm_const_26_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_26
        ret
procend

procstart _uX_mm_const_27_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_27
        ret
procend

procstart _uX_mm_const_28_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_28
        ret
procend

procstart _uX_mm_const_29_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_29
        ret
procend

procstart _uX_mm_const_30_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_30
        ret
procend

procstart _uX_mm_const_31_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_31
        ret
procend

procstart _uX_mm_const_32_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_32
        ret
procend

procstart _uX_mm_const_33_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_33
        ret
procend

procstart _uX_mm_const_34_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_34
        ret
procend

procstart _uX_mm_const_35_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_35
        ret
procend

procstart _uX_mm_const_36_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_36
        ret
procend

procstart _uX_mm_const_37_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_37
        ret
procend

procstart _uX_mm_const_38_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_38
        ret
procend

procstart _uX_mm_const_39_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_39
        ret
procend

procstart _uX_mm_const_40_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_40
        ret
procend

procstart _uX_mm_const_41_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_41
        ret
procend

procstart _uX_mm_const_42_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_42
        ret
procend

procstart _uX_mm_const_43_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_43
        ret
procend

procstart _uX_mm_const_44_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_44
        ret
procend

procstart _uX_mm_const_45_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_45
        ret
procend

procstart _uX_mm_const_46_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_46
        ret
procend

procstart _uX_mm_const_47_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_47
        ret
procend

procstart _uX_mm_const_48_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_48
        ret
procend

procstart _uX_mm_const_49_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_49
        ret
procend

procstart _uX_mm_const_50_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_50
        ret
procend

procstart _uX_mm_const_51_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_51
        ret
procend

procstart _uX_mm_const_52_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_52
        ret
procend

procstart _uX_mm_const_53_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_53
        ret
procend

procstart _uX_mm_const_54_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_54
        ret
procend

procstart _uX_mm_const_55_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_55
        ret
procend

procstart _uX_mm_const_56_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_56
        ret
procend

procstart _uX_mm_const_57_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_57
        ret
procend

procstart _uX_mm_const_58_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_58
        ret
procend

procstart _uX_mm_const_59_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_59
        ret
procend

procstart _uX_mm_const_60_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_60
        ret
procend

procstart _uX_mm_const_61_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_61
        ret
procend

procstart _uX_mm_const_62_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_62
        ret
procend

procstart _uX_mm_const_63_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_63
        ret
procend

procstart _uX_mm_const_64_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_64
        ret
procend

procstart _uX_mm_const_65_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_65
        ret
procend

procstart _uX_mm_const_66_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_66
        ret
procend

procstart _uX_mm_const_67_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_67
        ret
procend

procstart _uX_mm_const_68_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_68
        ret
procend

procstart _uX_mm_const_69_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_69
        ret
procend

procstart _uX_mm_const_70_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_70
        ret
procend

procstart _uX_mm_const_71_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_71
        ret
procend

procstart _uX_mm_const_72_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_72
        ret
procend

procstart _uX_mm_const_73_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_73
        ret
procend

procstart _uX_mm_const_74_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_74
        ret
procend

procstart _uX_mm_const_75_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_75
        ret
procend

procstart _uX_mm_const_76_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_76
        ret
procend

procstart _uX_mm_const_77_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_77
        ret
procend

procstart _uX_mm_const_78_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_78
        ret
procend

procstart _uX_mm_const_79_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_79
        ret
procend

procstart _uX_mm_const_80_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_80
        ret
procend

procstart _uX_mm_const_81_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_81
        ret
procend

procstart _uX_mm_const_82_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_82
        ret
procend

procstart _uX_mm_const_83_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_83
        ret
procend

procstart _uX_mm_const_84_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_84
        ret
procend

procstart _uX_mm_const_85_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_85
        ret
procend

procstart _uX_mm_const_86_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_86
        ret
procend

procstart _uX_mm_const_87_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_87
        ret
procend

procstart _uX_mm_const_88_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_88
        ret
procend

procstart _uX_mm_const_89_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_89
        ret
procend

procstart _uX_mm_const_90_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_90
        ret
procend

procstart _uX_mm_const_91_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_91
        ret
procend

procstart _uX_mm_const_92_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_92
        ret
procend

procstart _uX_mm_const_93_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_93
        ret
procend

procstart _uX_mm_const_94_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_94
        ret
procend

procstart _uX_mm_const_95_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_95
        ret
procend

procstart _uX_mm_const_96_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_96
        ret
procend

procstart _uX_mm_const_97_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_97
        ret
procend

procstart _uX_mm_const_98_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_98
        ret
procend

procstart _uX_mm_const_99_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_99
        ret
procend

procstart _uX_mm_const_100_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_100
        ret
procend

procstart _uX_mm_const_125_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_125
        ret
procend

procstart _uX_mm_const_126_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_126
        ret
procend

procstart _uX_mm_const_127_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_127
        ret
procend

procstart _uX_mm_const_128_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_128
        ret
procend

procstart _uX_mm_const_140_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_140
        ret
procend

procstart _uX_mm_const_145_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_145
        ret
procend

procstart _uX_mm_const_150_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_150
        ret
procend

procstart _uX_mm_const_180_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_180
        ret
procend

procstart _uX_mm_const_253_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_253
        ret
procend

procstart _uX_mm_const_254_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_254
        ret
procend

procstart _uX_mm_const_255_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_255
        ret
procend

procstart _uX_mm_const_256_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_256
        ret
procend

procstart _uX_mm_const_360_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_360
        ret
procend

procstart _uX_mm_const_511_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_511
        ret
procend

procstart _uX_mm_const_512_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_512
        ret
procend

procstart _uX_mm_const_513_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_513
        ret
procend

procstart _uX_mm_const_1023_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1023
        ret
procend

procstart _uX_mm_const_1024_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1024
        ret
procend

procstart _uX_mm_const_1025_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1025
        ret
procend

procstart _uX_mm_const_32767_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_32767
        ret
procend

procstart _uX_mm_const_32768_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_32768
        ret
procend

procstart _uX_mm_const_65535_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_65535
        ret
procend

procstart _uX_mm_const_65536_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_65536
        ret
procend

procstart _uX_mm_const_2147483647_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2147483647
        ret
procend

procstart _uX_mm_const_2147483648_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2147483648
        ret
procend

procstart _uX_mm_const_4294967295_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_4294967295
        ret
procend

procstart _uX_mm_const_4294967296_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_4294967296
        ret
procend

procstart _uX_mm_const_neg0_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0
        ret
procend

procstart _uX_mm_const_neg0d0001_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d0001
        ret
procend

procstart _uX_mm_const_neg0d0002_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d0002
        ret
procend

procstart _uX_mm_const_neg0d0003_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d0003
        ret
procend

procstart _uX_mm_const_neg0d0004_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d0004
        ret
procend

procstart _uX_mm_const_neg0d0005_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d0005
        ret
procend

procstart _uX_mm_const_neg0d0006_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d0006
        ret
procend

procstart _uX_mm_const_neg0d0007_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d0007
        ret
procend

procstart _uX_mm_const_neg0d0008_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d0008
        ret
procend

procstart _uX_mm_const_neg0d0009_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d0009
        ret
procend

procstart _uX_mm_const_neg0d001_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d001
        ret
procend

procstart _uX_mm_const_neg0d002_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d002
        ret
procend

procstart _uX_mm_const_neg0d003_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d003
        ret
procend

procstart _uX_mm_const_neg0d004_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d004
        ret
procend

procstart _uX_mm_const_neg0d005_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d005
        ret
procend

procstart _uX_mm_const_neg0d006_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d006
        ret
procend

procstart _uX_mm_const_neg0d007_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d007
        ret
procend

procstart _uX_mm_const_neg0d008_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d008
        ret
procend

procstart _uX_mm_const_neg0d009_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d009
        ret
procend

procstart _uX_mm_const_neg0d01_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d01
        ret
procend

procstart _uX_mm_const_neg0d02_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d02
        ret
procend

procstart _uX_mm_const_neg0d025_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d025
        ret
procend

procstart _uX_mm_const_neg0d03_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d03
        ret
procend

procstart _uX_mm_const_neg0d04_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d04
        ret
procend

procstart _uX_mm_const_neg0d05_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d05
        ret
procend

procstart _uX_mm_const_neg0d06_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d06
        ret
procend

procstart _uX_mm_const_neg0d07_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d07
        ret
procend

procstart _uX_mm_const_neg0d08_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d08
        ret
procend

procstart _uX_mm_const_neg0d09_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d09
        ret
procend

procstart _uX_mm_const_neg0d1_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d1
        ret
procend

procstart _uX_mm_const_neg0d2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d2
        ret
procend

procstart _uX_mm_const_neg0d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d25
        ret
procend

procstart _uX_mm_const_neg0d3_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d3
        ret
procend

procstart _uX_mm_const_neg0d4_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d4
        ret
procend

procstart _uX_mm_const_neg0d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d5
        ret
procend

procstart _uX_mm_const_neg0d6_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d6
        ret
procend

procstart _uX_mm_const_neg0d7_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d7
        ret
procend

procstart _uX_mm_const_neg0d8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d8
        ret
procend

procstart _uX_mm_const_neg0d9_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg0d9
        ret
procend

procstart _uX_mm_const_neg1_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1
        ret
procend

procstart _uX_mm_const_neg1d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1d25
        ret
procend

procstart _uX_mm_const_neg1d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1d5
        ret
procend

procstart _uX_mm_const_neg2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg2
        ret
procend

procstart _uX_mm_const_neg2d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg2d25
        ret
procend

procstart _uX_mm_const_neg2d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg2d5
        ret
procend

procstart _uX_mm_const_neg3_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg3
        ret
procend

procstart _uX_mm_const_neg3d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg3d25
        ret
procend

procstart _uX_mm_const_neg3d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg3d5
        ret
procend

procstart _uX_mm_const_neg4_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg4
        ret
procend

procstart _uX_mm_const_neg4d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg4d25
        ret
procend

procstart _uX_mm_const_neg4d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg4d5
        ret
procend

procstart _uX_mm_const_neg5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg5
        ret
procend

procstart _uX_mm_const_neg5d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg5d25
        ret
procend

procstart _uX_mm_const_neg5d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg5d5
        ret
procend

procstart _uX_mm_const_neg6_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg6
        ret
procend

procstart _uX_mm_const_neg6d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg6d25
        ret
procend

procstart _uX_mm_const_neg6d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg6d5
        ret
procend

procstart _uX_mm_const_neg7_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg7
        ret
procend

procstart _uX_mm_const_neg7d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg7d25
        ret
procend

procstart _uX_mm_const_neg7d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg7d5
        ret
procend

procstart _uX_mm_const_neg8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg8
        ret
procend

procstart _uX_mm_const_neg8d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg8d25
        ret
procend

procstart _uX_mm_const_neg8d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg8d5
        ret
procend

procstart _uX_mm_const_neg9_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg9
        ret
procend

procstart _uX_mm_const_neg9d25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg9d25
        ret
procend

procstart _uX_mm_const_neg9d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg9d5
        ret
procend

procstart _uX_mm_const_neg10_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg10
        ret
procend

procstart _uX_mm_const_neg11_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg11
        ret
procend

procstart _uX_mm_const_neg12_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg12
        ret
procend

procstart _uX_mm_const_neg13_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg13
        ret
procend

procstart _uX_mm_const_neg14_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg14
        ret
procend

procstart _uX_mm_const_neg15_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg15
        ret
procend

procstart _uX_mm_const_neg16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg16
        ret
procend

procstart _uX_mm_const_neg17_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg17
        ret
procend

procstart _uX_mm_const_neg18_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg18
        ret
procend

procstart _uX_mm_const_neg19_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg19
        ret
procend

procstart _uX_mm_const_neg20_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg20
        ret
procend

procstart _uX_mm_const_neg21_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg21
        ret
procend

procstart _uX_mm_const_neg22_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg22
        ret
procend

procstart _uX_mm_const_neg23_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg23
        ret
procend

procstart _uX_mm_const_neg24_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg24
        ret
procend

procstart _uX_mm_const_neg24d5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg24d5
        ret
procend

procstart _uX_mm_const_neg25_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg25
        ret
procend

procstart _uX_mm_const_neg26_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg26
        ret
procend

procstart _uX_mm_const_neg27_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg27
        ret
procend

procstart _uX_mm_const_neg28_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg28
        ret
procend

procstart _uX_mm_const_neg29_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg29
        ret
procend

procstart _uX_mm_const_neg30_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg30
        ret
procend

procstart _uX_mm_const_neg31_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg31
        ret
procend

procstart _uX_mm_const_neg32_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg32
        ret
procend

procstart _uX_mm_const_neg33_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg33
        ret
procend

procstart _uX_mm_const_neg34_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg34
        ret
procend

procstart _uX_mm_const_neg35_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg35
        ret
procend

procstart _uX_mm_const_neg36_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg36
        ret
procend

procstart _uX_mm_const_neg37_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg37
        ret
procend

procstart _uX_mm_const_neg38_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg38
        ret
procend

procstart _uX_mm_const_neg39_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg39
        ret
procend

procstart _uX_mm_const_neg40_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg40
        ret
procend

procstart _uX_mm_const_neg41_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg41
        ret
procend

procstart _uX_mm_const_neg42_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg42
        ret
procend

procstart _uX_mm_const_neg43_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg43
        ret
procend

procstart _uX_mm_const_neg44_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg44
        ret
procend

procstart _uX_mm_const_neg45_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg45
        ret
procend

procstart _uX_mm_const_neg46_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg46
        ret
procend

procstart _uX_mm_const_neg47_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg47
        ret
procend

procstart _uX_mm_const_neg48_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg48
        ret
procend

procstart _uX_mm_const_neg49_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg49
        ret
procend

procstart _uX_mm_const_neg50_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg50
        ret
procend

procstart _uX_mm_const_neg51_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg51
        ret
procend

procstart _uX_mm_const_neg52_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg52
        ret
procend

procstart _uX_mm_const_neg53_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg53
        ret
procend

procstart _uX_mm_const_neg54_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg54
        ret
procend

procstart _uX_mm_const_neg55_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg55
        ret
procend

procstart _uX_mm_const_neg56_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg56
        ret
procend

procstart _uX_mm_const_neg57_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg57
        ret
procend

procstart _uX_mm_const_neg58_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg58
        ret
procend

procstart _uX_mm_const_neg59_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg59
        ret
procend

procstart _uX_mm_const_neg60_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg60
        ret
procend

procstart _uX_mm_const_neg61_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg61
        ret
procend

procstart _uX_mm_const_neg62_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg62
        ret
procend

procstart _uX_mm_const_neg63_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg63
        ret
procend

procstart _uX_mm_const_neg64_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg64
        ret
procend

procstart _uX_mm_const_neg65_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg65
        ret
procend

procstart _uX_mm_const_neg66_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg66
        ret
procend

procstart _uX_mm_const_neg67_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg67
        ret
procend

procstart _uX_mm_const_neg68_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg68
        ret
procend

procstart _uX_mm_const_neg69_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg69
        ret
procend

procstart _uX_mm_const_neg70_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg70
        ret
procend

procstart _uX_mm_const_neg71_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg71
        ret
procend

procstart _uX_mm_const_neg72_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg72
        ret
procend

procstart _uX_mm_const_neg73_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg73
        ret
procend

procstart _uX_mm_const_neg74_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg74
        ret
procend

procstart _uX_mm_const_neg75_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg75
        ret
procend

procstart _uX_mm_const_neg76_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg76
        ret
procend

procstart _uX_mm_const_neg77_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg77
        ret
procend

procstart _uX_mm_const_neg78_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg78
        ret
procend

procstart _uX_mm_const_neg79_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg79
        ret
procend

procstart _uX_mm_const_neg80_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg80
        ret
procend

procstart _uX_mm_const_neg81_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg81
        ret
procend

procstart _uX_mm_const_neg82_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg82
        ret
procend

procstart _uX_mm_const_neg83_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg83
        ret
procend

procstart _uX_mm_const_neg84_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg84
        ret
procend

procstart _uX_mm_const_neg85_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg85
        ret
procend

procstart _uX_mm_const_neg86_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg86
        ret
procend

procstart _uX_mm_const_neg87_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg87
        ret
procend

procstart _uX_mm_const_neg88_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg88
        ret
procend

procstart _uX_mm_const_neg89_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg89
        ret
procend

procstart _uX_mm_const_neg90_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg90
        ret
procend

procstart _uX_mm_const_neg91_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg91
        ret
procend

procstart _uX_mm_const_neg92_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg92
        ret
procend

procstart _uX_mm_const_neg93_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg93
        ret
procend

procstart _uX_mm_const_neg94_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg94
        ret
procend

procstart _uX_mm_const_neg95_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg95
        ret
procend

procstart _uX_mm_const_neg96_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg96
        ret
procend

procstart _uX_mm_const_neg97_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg97
        ret
procend

procstart _uX_mm_const_neg98_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg98
        ret
procend

procstart _uX_mm_const_neg99_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg99
        ret
procend

procstart _uX_mm_const_neg100_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg100
        ret
procend

procstart _uX_mm_const_neg125_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg125
        ret
procend

procstart _uX_mm_const_neg126_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg126
        ret
procend

procstart _uX_mm_const_neg127_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg127
        ret
procend

procstart _uX_mm_const_neg128_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg128
        ret
procend

procstart _uX_mm_const_neg140_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg140
        ret
procend

procstart _uX_mm_const_neg145_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg145
        ret
procend

procstart _uX_mm_const_neg150_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg150
        ret
procend

procstart _uX_mm_const_neg180_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg180
        ret
procend

procstart _uX_mm_const_neg253_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg253
        ret
procend

procstart _uX_mm_const_neg254_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg254
        ret
procend

procstart _uX_mm_const_neg255_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg255
        ret
procend

procstart _uX_mm_const_neg256_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg256
        ret
procend

procstart _uX_mm_const_neg360_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg360
        ret
procend

procstart _uX_mm_const_neg511_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg511
        ret
procend

procstart _uX_mm_const_neg512_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg512
        ret
procend

procstart _uX_mm_const_neg513_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg513
        ret
procend

procstart _uX_mm_const_neg1023_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1023
        ret
procend

procstart _uX_mm_const_neg1024_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1024
        ret
procend

procstart _uX_mm_const_neg1025_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg1025
        ret
procend

procstart _uX_mm_const_neg32767_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg32767
        ret
procend

procstart _uX_mm_const_neg32768_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg32768
        ret
procend

procstart _uX_mm_const_neg65535_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg65535
        ret
procend

procstart _uX_mm_const_neg65536_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg65536
        ret
procend

procstart _uX_mm_const_neg2147483647_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg2147483647
        ret
procend

procstart _uX_mm_const_neg2147483648_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg2147483648
        ret
procend

procstart _uX_mm_const_neg4294967295_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg4294967295
        ret
procend

procstart _uX_mm_const_neg4294967296_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg4294967296
        ret
procend

procstart _uX_mm_const_bin128_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_bin128
        ret
procend

procstart _uX_mm_const_binneg150_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_binneg150
        ret
procend

procstart _uX_mm_const_maxrand_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxrand
        ret
procend

procstart _uX_mm_const_maxi8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxi8
        ret
procend

procstart _uX_mm_const_mini8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mini8
        ret
procend

procstart _uX_mm_const_maxu8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxu8
        ret
procend

procstart _uX_mm_const_maxi16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxi16
        ret
procend

procstart _uX_mm_const_mini16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mini16
        ret
procend

procstart _uX_mm_const_maxu16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxu16
        ret
procend

procstart _uX_mm_const_maxi32_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxi32
        ret
procend

procstart _uX_mm_const_mini32_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mini32
        ret
procend

procstart _uX_mm_const_maxu32_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxu32
        ret
procend

procstart _uX_mm_const_maxi8xu8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxi8xu8
        ret
procend

procstart _uX_mm_const_mini8xu8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mini8xu8
        ret
procend

procstart _uX_mm_const_maxi8xu16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxi8xu16
        ret
procend

procstart _uX_mm_const_mini8xu16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mini8xu16
        ret
procend

procstart _uX_mm_const_maxi16xu16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxi16xu16
        ret
procend

procstart _uX_mm_const_mini16xu16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mini16xu16
        ret
procend

procstart _uX_mm_const_fixunsigned_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_fixunsigned
        ret
procend

procstart _uX_mm_const_fixunsigned32_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_fixunsigned32
        ret
procend

procstart _uX_mm_const_fixmaxi32_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_fixmaxi32
        ret
procend

procstart _uX_mm_const_fixmaxu32_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_fixmaxu32
        ret
procend

procstart _uX_mm_const_rcpi16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpi16
        ret
procend

procstart _uX_mm_const_rcpu16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpu16
        ret
procend

procstart _uX_mm_const_rcpi16xu16_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpi16xu16
        ret
procend

procstart _uX_mm_const_fixaa8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_fixaa8
        ret
procend

procstart _uX_mm_const_fixr8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_fixr8
        ret
procend

procstart _uX_mm_const_fixr8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_fixg8
        ret
procend

procstart _uX_mm_const_fixb8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_fixb8
        ret
procend

procstart _uX_mm_const_norma8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_norma8
        ret
procend

procstart _uX_mm_const_normr8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_normr8
        ret
procend

procstart _uX_mm_const_normg8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_normg8
        ret
procend

procstart _uX_mm_const_normb8_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_normb8
        ret
procend

procstart _uX_mm_const_fixaa2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_fixaa2
        ret
procend

procstart _uX_mm_const_fixb10_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_fixb10
        ret
procend

procstart _uX_mm_const_fixg10_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_fixg10
        ret
procend

procstart _uX_mm_const_fixr10_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_fixr10
        ret
procend

procstart _uX_mm_const_norma2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_norma2
        ret
procend

procstart _uX_mm_const_normb10_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_normb10
        ret
procend

procstart _uX_mm_const_normg10_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_normg10
        ret
procend

procstart _uX_mm_const_normr10_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_normr10
        ret
procend

procstart _uX_mm_const_mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mg
        ret
procend

procstart _uX_mm_const_negmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_negmg
        ret
procend

procstart _uX_mm_const_halfmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_halfmg
        ret
procend

procstart _uX_mm_const_neghalfmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neghalfmg
        ret
procend

procstart _uX_mm_const_mgdiv4_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mgdiv4
        ret
procend

procstart _uX_mm_const_negmgdiv4_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_negmgdiv4
        ret
procend

procstart _uX_mm_const_halfmgxmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_halfmgxmg
        ret
procend

procstart _uX_mm_const_halfmgxsqrmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_halfmgxsqrmg
        ret
procend

procstart _uX_mm_const_halfmgxcubemg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_halfmgxcubemg
        ret
procend

procstart _uX_mm_const_neghalfmgxmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neghalfmgxmg
        ret
procend

procstart _uX_mm_const_neghalfmgxsqrmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neghalfmgxsqrmg
        ret
procend

procstart _uX_mm_const_neghalfmgxcubemg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neghalfmgxcubemg
        ret
procend

procstart _uX_mm_const_sqrmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrmg
        ret
procend

procstart _uX_mm_const_cubemg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_cubemg
        ret
procend

procstart _uX_mm_const_sqrtmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrtmg
        ret
procend

procstart _uX_mm_const_cbrtmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_cbrtmg
        ret
procend

procstart _uX_mm_const_rcpmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpmg
        ret
procend

procstart _uX_mm_const_rcpsqrmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpsqrmg
        ret
procend

procstart _uX_mm_const_rcpcubemg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpcubemg
        ret
procend

procstart _uX_mm_const_rcpsqrtmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpsqrtmg
        ret
procend

procstart _uX_mm_const_rcpcbrtmg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpcbrtmg
        ret
procend

procstart _uX_mm_const_2mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2mg
        ret
procend

procstart _uX_mm_const_neg2mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg2mg
        ret
procend

procstart _uX_mm_const_sqr2mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqr2mg
        ret
procend

procstart _uX_mm_const_cube2mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_cube2mg
        ret
procend

procstart _uX_mm_const_sqrt2mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrt2mg
        ret
procend

procstart _uX_mm_const_cbrt2mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_cbrt2mg
        ret
procend

procstart _uX_mm_const_4mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_4mg
        ret
procend

procstart _uX_mm_const_neg4mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg4mg
        ret
procend

procstart _uX_mm_const_sqr4mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqr4mg
        ret
procend

procstart _uX_mm_const_cube4mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_cube4mg
        ret
procend

procstart _uX_mm_const_sqrt4mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrt4mg
        ret
procend

procstart _uX_mm_const_cbrt4mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_cbrt4mg
        ret
procend

procstart _uX_mm_const_rcp2mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcp2mg
        ret
procend

procstart _uX_mm_const_rcp4mg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcp4mg
        ret
procend

procstart _uX_mm_const_e_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_e
        ret
procend

procstart _uX_mm_const_exp_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_exp
        ret
procend

procstart _uX_mm_const_loge_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_loge
        ret
procend

procstart _uX_mm_const_logehigh_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_logehigh
        ret
procend

procstart _uX_mm_const_log2e_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_log2e
        ret
procend

procstart _uX_mm_const_log2ehigh_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_log2ehigh
        ret
procend

procstart _uX_mm_const_log10e_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_log10e
        ret
procend

procstart _uX_mm_const_rcplog2e_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcplog2e
        ret
procend

procstart _uX_mm_const_rcplog10e_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcplog10e
        ret
procend

procstart _uX_mm_const_log2t_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_log2t
        ret
procend

procstart _uX_mm_const_log2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_log2
        ret
procend

procstart _uX_mm_const_log2high_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_log2high
        ret
procend

procstart _uX_mm_const_ln2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_ln2
        ret
procend

procstart _uX_mm_const_ln2high_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_ln2high
        ret
procend

procstart _uX_mm_const_1divln2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1divln2
        ret
procend

procstart _uX_mm_const_2divln2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2divln2
        ret
procend

procstart _uX_mm_const_lnt_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_lnt
        ret
procend

procstart _uX_mm_const_lnthigh_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_lnthigh
        ret
procend

procstart _uX_mm_const_ln10_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_ln10
        ret
procend

procstart _uX_mm_const_sqrt2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrt2
        ret
procend

procstart _uX_mm_const_rcpsqrt2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpsqrt2
        ret
procend

procstart _uX_mm_const_sqrt2div2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrt2div2
        ret
procend

procstart _uX_mm_const_sqrt2div2high_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrt2div2high
        ret
procend

procstart _uX_mm_const_sqrt2div2low_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrt2div2low
        ret
procend

procstart _uX_mm_const_sqrthalf_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrthalf
        ret
procend

procstart _uX_mm_const_sqrthalfhigh_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrthalfhigh
        ret
procend

procstart _uX_mm_const_sqrthalflow_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrthalflow
        ret
procend

procstart _uX_mm_const_pow2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pow2
        ret
procend

procstart _uX_mm_const_rcppow2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcppow2
        ret
procend

procstart _uX_mm_const_cbrt2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_cbrt2
        ret
procend

procstart _uX_mm_const_rcpcbrt2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpcbrt2
        ret
procend

procstart _uX_mm_const_1div3_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1div3
        ret
procend

procstart _uX_mm_const_1div7_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1div7
        ret
procend

procstart _uX_mm_const_1div9_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_1div9
        ret
procend

procstart _uX_mm_const_2div3_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2div3
        ret
procend

procstart _uX_mm_const_2div7_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2div7
        ret
procend

procstart _uX_mm_const_2div9_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2div9
        ret
procend

procstart _uX_mm_const_4div3_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_4div3
        ret
procend

procstart _uX_mm_const_4div7_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_4div7
        ret
procend

procstart _uX_mm_const_4div9_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_4div9
        ret
procend

procstart _uX_mm_const_pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pi
        ret
procend

procstart _uX_mm_const_pihigh_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pihigh
        ret
procend

procstart _uX_mm_const_halfpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_halfpi
        ret
procend

procstart _uX_mm_const_2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2pi
        ret
procend

procstart _uX_mm_const_negpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_negpi
        ret
procend

procstart _uX_mm_const_neghalfpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neghalfpi
        ret
procend

procstart _uX_mm_const_neg2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neg2pi
        ret
procend

procstart _uX_mm_const_rcppi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcppi
        ret
procend

procstart _uX_mm_const_invpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_invpi
        ret
procend

procstart _uX_mm_const_rcp2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcp2pi
        ret
procend

procstart _uX_mm_const_inv2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_inv2pi
        ret
procend

procstart _uX_mm_const_pidiv2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pidiv2
        ret
procend

procstart _uX_mm_const_pidiv2high_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pidiv2high
        ret
procend

procstart _uX_mm_const_pidiv4_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pidiv4
        ret
procend

procstart _uX_mm_const_pidiv4high_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pidiv4high
        ret
procend

procstart _uX_mm_const_pix3div4_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pix3div4
        ret
procend

procstart _uX_mm_const_sqrtpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrtpi
        ret
procend

procstart _uX_mm_const_sqrt2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrt2pi
        ret
procend

procstart _uX_mm_const_sqrt2pihigh_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrt2pihigh
        ret
procend

procstart _uX_mm_const_rcpsqrtpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpsqrtpi
        ret
procend

procstart _uX_mm_const_rcpsqrt2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpsqrt2pi
        ret
procend

procstart _uX_mm_const_sqrtpidiv2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrtpidiv2
        ret
procend

procstart _uX_mm_const_sqrtpidiv2high_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrtpidiv2high
        ret
procend

procstart _uX_mm_const_sqrt2pidiv2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrt2pidiv2
        ret
procend

procstart _uX_mm_const_sqrt2pidiv2high_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrt2pidiv2high
        ret
procend

procstart _uX_mm_const_2divpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2divpi
        ret
procend

procstart _uX_mm_const_2div2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2div2pi
        ret
procend

procstart _uX_mm_const_2divsqrtpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2divsqrtpi
        ret
procend

procstart _uX_mm_const_2divsqrt2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_2divsqrt2pi
        ret
procend

procstart _uX_mm_const_sqrt2divpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sqrt2divpi
        ret
procend

procstart _uX_mm_const_logpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_logpi
        ret
procend

procstart _uX_mm_const_log2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_log2pi
        ret
procend

procstart _uX_mm_const_lnpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_lnpi
        ret
procend

procstart _uX_mm_const_ln2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_ln2pi
        ret
procend

procstart _uX_mm_const_powpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_powpi
        ret
procend

procstart _uX_mm_const_rcppowpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcppowpi
        ret
procend

procstart _uX_mm_const_pow2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pow2pi
        ret
procend

procstart _uX_mm_const_rcppow2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcppow2pi
        ret
procend

procstart _uX_mm_const_cbrtpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_cbrtpi
        ret
procend

procstart _uX_mm_const_rcpcbrtpi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpcbrtpi
        ret
procend

procstart _uX_mm_const_cbrt2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_cbrt2pi
        ret
procend

procstart _uX_mm_const_rcpcbrt2pi_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_rcpcbrt2pi
        ret
procend

procstart _uX_mm_const_pow2tom126_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pow2tom126
        ret
procend

procstart _uX_mm_const_pow2to126_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pow2to126
        ret
procend

procstart _uX_mm_const_normhuge_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_normhuge
        ret
procend

procstart _uX_mm_const_pow2to23_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pow2to23
        ret
procend

procstart _uX_mm_const_pow2to24_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pow2to24
        ret
procend

procstart _uX_mm_const_maxi32pow2to23_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_maxi32pow2to23
        ret
procend

procstart _uX_mm_const_pow2to31_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pow2to31
        ret
procend

procstart _uX_mm_const_pow2to32_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_pow2to32
        ret
procend

procstart _uX_mm_const_remquobits_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_remquobits
        ret
procend

procstart _uX_mm_const_remquomask_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_remquomask
        ret
procend

procstart _uX_mm_const_trigploss_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_trigploss
        ret
procend

procstart _uX_mm_const_degtorad_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_degtorad
        ret
procend

procstart _uX_mm_const_radtodeg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_radtodeg
        ret
procend

procstart _uX_mm_const_degtograd_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_degtograd
        ret
procend

procstart _uX_mm_const_gradtodeg_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_gradtodeg
        ret
procend

procstart _uX_mm_const_radtograd_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_radtograd
        ret
procend

procstart _uX_mm_const_gradtorad_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_gradtorad
        ret
procend

procstart _uX_mm_const_sungravity_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_sungravity
        ret
procend

procstart _uX_mm_const_jupitergravity_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_jupitergravity
        ret
procend

procstart _uX_mm_const_neptunegravity_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_neptunegravity
        ret
procend

procstart _uX_mm_const_saturngravity_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_saturngravity
        ret
procend

procstart _uX_mm_const_uranusgravity_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_uranusgravity
        ret
procend

procstart _uX_mm_const_earthgravity_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_earthgravity
        ret
procend

procstart _uX_mm_const_venusgravity_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_venusgravity
        ret
procend

procstart _uX_mm_const_marsgravity_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_marsgravity
        ret
procend

procstart _uX_mm_const_mercurygravity_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mercurygravity
        ret
procend

procstart _uX_mm_const_moongravity_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_moongravity
        ret
procend

procstart _uX_mm_const_plutogravity_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_plutogravity
        ret
procend

procstart _uX_mm_const_kmtoinch_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmtoinch
        ret
procend

procstart _uX_mm_const_kmtofeet_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmtofeet
        ret
procend

procstart _uX_mm_const_kmtoyards_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmtoyards
        ret
procend

procstart _uX_mm_const_kmtomiles_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmtomiles
        ret
procend

procstart _uX_mm_const_metoinch_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_metoinch
        ret
procend

procstart _uX_mm_const_metofeet_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_metofeet
        ret
procend

procstart _uX_mm_const_metoyards_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_metoyards
        ret
procend

procstart _uX_mm_const_metomiles_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_metomiles
        ret
procend

procstart _uX_mm_const_cmtoinch_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_cmtoinch
        ret
procend

procstart _uX_mm_const_cmtofeet_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_cmtofeet
        ret
procend

procstart _uX_mm_const_cmtoyards_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_cmtoyards
        ret
procend

procstart _uX_mm_const_cmtomiles_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_cmtomiles
        ret
procend

procstart _uX_mm_const_milltoinch_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milltoinch
        ret
procend

procstart _uX_mm_const_milltofeet_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milltofeet
        ret
procend

procstart _uX_mm_const_milltoyards_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milltoyards
        ret
procend

procstart _uX_mm_const_milltomiles_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milltomiles
        ret
procend

procstart _uX_mm_const_inchtomill_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_inchtomill
        ret
procend

procstart _uX_mm_const_inchtocm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_inchtocm
        ret
procend

procstart _uX_mm_const_inchtome_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_inchtome
        ret
procend

procstart _uX_mm_const_inchtokm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_inchtokm
        ret
procend

procstart _uX_mm_const_inchtofeet_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_inchtofeet
        ret
procend

procstart _uX_mm_const_inchtoyards_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_inchtoyards
        ret
procend

procstart _uX_mm_const_inchtomiles_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_inchtomiles
        ret
procend

procstart _uX_mm_const_feettomill_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feettomill
        ret
procend

procstart _uX_mm_const_feettocm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feettocm
        ret
procend

procstart _uX_mm_const_feettome_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feettome
        ret
procend

procstart _uX_mm_const_feettokm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feettokm
        ret
procend

procstart _uX_mm_const_feettoinch_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feettoinch
        ret
procend

procstart _uX_mm_const_feettoyards_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feettoyards
        ret
procend

procstart _uX_mm_const_feettomiles_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feettomiles
        ret
procend

procstart _uX_mm_const_yardstomill_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_yardstomill
        ret
procend

procstart _uX_mm_const_yardstocm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_yardstocm
        ret
procend

procstart _uX_mm_const_yardstome_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_yardstome
        ret
procend

procstart _uX_mm_const_yardstokm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_yardstokm
        ret
procend

procstart _uX_mm_const_yardstoinch_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_yardstoinch
        ret
procend

procstart _uX_mm_const_yardstofeet_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_yardstofeet
        ret
procend

procstart _uX_mm_const_yardstomiles_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_yardstomiles
        ret
procend

procstart _uX_mm_const_milestomill_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milestomill
        ret
procend

procstart _uX_mm_const_milestocm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milestocm
        ret
procend

procstart _uX_mm_const_milestome_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milestome
        ret
procend

procstart _uX_mm_const_milestokm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milestokm
        ret
procend

procstart _uX_mm_const_milestoinch_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milestoinch
        ret
procend

procstart _uX_mm_const_milestofeet_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milestofeet
        ret
procend

procstart _uX_mm_const_milestoyards_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milestoyards
        ret
procend

procstart _uX_mm_const_kmphtomeps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmphtomeps
        ret
procend

procstart _uX_mm_const_kmphtokmps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmphtokmps
        ret
procend

procstart _uX_mm_const_kmphtomepm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmphtomepm
        ret
procend

procstart _uX_mm_const_kmphtomilesph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmphtomilesph
        ret
procend

procstart _uX_mm_const_kmphtomilesps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmphtomilesps
        ret
procend

procstart _uX_mm_const_kmphtofeetps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmphtofeetps
        ret
procend

procstart _uX_mm_const_kmphtofeetpm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmphtofeetpm
        ret
procend

procstart _uX_mm_const_kmpstomeps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmpstomeps
        ret
procend

procstart _uX_mm_const_kmpstokmph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmpstokmph
        ret
procend

procstart _uX_mm_const_kmpstomepm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmpstomepm
        ret
procend

procstart _uX_mm_const_kmpstomilesph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmpstomilesph
        ret
procend

procstart _uX_mm_const_kmpstomilesps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmpstomilesps
        ret
procend

procstart _uX_mm_const_kmpstofeetps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmpstofeetps
        ret
procend

procstart _uX_mm_const_kmpstofeetpm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_kmpstofeetpm
        ret
procend

procstart _uX_mm_const_mepstokmph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepstokmph
        ret
procend

procstart _uX_mm_const_mepstokmps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepstokmps
        ret
procend

procstart _uX_mm_const_mepstomepm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepstomepm
        ret
procend

procstart _uX_mm_const_mepstomilesph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepstomilesph
        ret
procend

procstart _uX_mm_const_mepstomilesps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepstomilesps
        ret
procend

procstart _uX_mm_const_mepstofeetps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepstofeetps
        ret
procend

procstart _uX_mm_const_mepstofeetpm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepstofeetpm
        ret
procend

procstart _uX_mm_const_mepmtokmph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepmtokmph
        ret
procend

procstart _uX_mm_const_mepmtokmps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepmtokmps
        ret
procend

procstart _uX_mm_const_mepmtomeps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepmtomeps
        ret
procend

procstart _uX_mm_const_mepmtomilesph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepmtomilesph
        ret
procend

procstart _uX_mm_const_mepmtomilesps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepmtomilesps
        ret
procend

procstart _uX_mm_const_mepmtofeetps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepmtofeetps
        ret
procend

procstart _uX_mm_const_mepmtofeetpm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_mepmtofeetpm
        ret
procend

procstart _uX_mm_const_milesphtokmph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milesphtokmph
        ret
procend

procstart _uX_mm_const_milesphtokmps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milesphtokmps
        ret
procend

procstart _uX_mm_const_milesphtomeps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milesphtomeps
        ret
procend

procstart _uX_mm_const_milesphtomepm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milesphtomepm
        ret
procend

procstart _uX_mm_const_milesphtomilesps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milesphtomilesps
        ret
procend

procstart _uX_mm_const_milesphtofeetps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milesphtofeetps
        ret
procend

procstart _uX_mm_const_milesphtofeetpm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milesphtofeetpm
        ret
procend

procstart _uX_mm_const_milespstokmph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milespstokmph
        ret
procend

procstart _uX_mm_const_milespstokmps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milespstokmps
        ret
procend

procstart _uX_mm_const_milespstomeps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milespstomeps
        ret
procend

procstart _uX_mm_const_milespstomepm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milespstomepm
        ret
procend

procstart _uX_mm_const_milespstomilesph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milespstomilesph
        ret
procend

procstart _uX_mm_const_milespstofeetps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milespstofeetps
        ret
procend

procstart _uX_mm_const_milespstofeetpm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_milespstofeetpm
        ret
procend

procstart _uX_mm_const_feetpstokmph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpstokmph
        ret
procend

procstart _uX_mm_const_feetpstokmps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpstokmps
        ret
procend

procstart _uX_mm_const_feetpstomeps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpstomeps
        ret
procend

procstart _uX_mm_const_feetpstomepm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpstomepm
        ret
procend

procstart _uX_mm_const_feetpstomilesph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpstomilesph
        ret
procend

procstart _uX_mm_const_feetpstomilesps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpstomilesps
        ret
procend

procstart _uX_mm_const_feetpstofeetpm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpstofeetpm
        ret
procend

procstart _uX_mm_const_feetpmtokmph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpmtokmph
        ret
procend

procstart _uX_mm_const_feetpmtokmps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpmtokmps
        ret
procend

procstart _uX_mm_const_feetpmtomeps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpmtomeps
        ret
procend

procstart _uX_mm_const_feetpmtomepm_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpmtomepm
        ret
procend

procstart _uX_mm_const_feetpmtomilesph_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpmtomilesph
        ret
procend

procstart _uX_mm_const_feetpmtomilesps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpmtomilesps
        ret
procend

procstart _uX_mm_const_feetpmtofeetps_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_feetpmtofeetps
        ret
procend

procstart _uX_mm_const_soundspeedp50c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedp50c
        ret
procend

procstart _uX_mm_const_soundspeedp45c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedp45c
        ret
procend

procstart _uX_mm_const_soundspeedp40c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedp40c
        ret
procend

procstart _uX_mm_const_soundspeedp35c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedp35c
        ret
procend

procstart _uX_mm_const_soundspeedp30c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedp30c
        ret
procend

procstart _uX_mm_const_soundspeedp25c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedp25c
        ret
procend

procstart _uX_mm_const_soundspeedp20c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedp20c
        ret
procend

procstart _uX_mm_const_soundspeedp15c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedp15c
        ret
procend

procstart _uX_mm_const_soundspeedp10c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedp10c
        ret
procend

procstart _uX_mm_const_soundspeedp5c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedp5c
        ret
procend

procstart _uX_mm_const_soundspeed0c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeed0c
        ret
procend

procstart _uX_mm_const_soundspeedn5c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedn5c
        ret
procend

procstart _uX_mm_const_soundspeedn10c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedn10c
        ret
procend

procstart _uX_mm_const_soundspeedn15c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedn15c
        ret
procend

procstart _uX_mm_const_soundspeedn20c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedn20c
        ret
procend

procstart _uX_mm_const_soundspeedn25c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedn25c
        ret
procend

procstart _uX_mm_const_soundspeedn30c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedn30c
        ret
procend

procstart _uX_mm_const_soundspeedn35c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedn35c
        ret
procend

procstart _uX_mm_const_soundspeedn40c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedn40c
        ret
procend

procstart _uX_mm_const_soundspeedn45c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedn45c
        ret
procend

procstart _uX_mm_const_soundspeedn50c_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_soundspeedn50c
        ret
procend

procstart _uX_mm_const_schscale_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_schscale
        ret
procend

procstart _uX_mm_const_thscale_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_thscale
        ret
procend

procstart _uX_mm_const__expest1_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_expest1
        ret
procend

procstart _uX_mm_const_expest2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_expest2
        ret
procend

procstart _uX_mm_const_expest3_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_expest3
        ret
procend

procstart _uX_mm_const_expest4_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_expest4
        ret
procend

procstart _uX_mm_const_expest5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_expest5
        ret
procend

procstart _uX_mm_const_expest6_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_expest6
        ret
procend

procstart _uX_mm_const_expest7_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_expest7
        ret
procend

procstart _uX_mm_const_logest0_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_logest0
        ret
procend

procstart _uX_mm_const_logest1_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_logest1
        ret
procend

procstart _uX_mm_const_logest2_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_logest2
        ret
procend

procstart _uX_mm_const_logest3_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_logest3
        ret
procend

procstart _uX_mm_const_logest4_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_logest4
        ret
procend

procstart _uX_mm_const_logest5_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_logest5
        ret
procend

procstart _uX_mm_const_logest6_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_logest6
        ret
procend

procstart _uX_mm_const_logest7_ss, callconv, xmmword, < >, < >, < >
        movaps          xmm0,           __m128_0e_logest7
        ret
procend

endif ;__MIC__

end
