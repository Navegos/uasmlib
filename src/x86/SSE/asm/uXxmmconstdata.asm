
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

    OPTION CASEMAP:NONE
    include macrolib.inc
    
ifndef __MIC__

    include uXasm.inc

    .xmm
    option arch:sse
    option evex:0

    .data?

    .data

    .const

    alignxmmfieldproc

    ;;int8 mask;;

    v16ci __m128i_i8_true,              __m128b, i8_true
    v16ci __m128i_i8_false,             __m128b, i8_false
    v16ci __m128i_i8_max,               __m128b, i8_max
    v16ci __m128i_i8_min,               __m128b, i8_min
    v16ci __m128i_ui8_max,              __m128b, ui8_max
    v16ci __m128i_ui8_min,              __m128b, ui8_min
    v16ci __m128i_si8_max,              __m128b, si8_max
    v16ci __m128i_si8_min,              __m128b, si8_min
    v16ci __m128i_i8_error,             __m128b, i8_error
    v16ci __m128i_ui8_error,            __m128b, ui8_error
    v16ci __m128i_si8_error,            __m128b, si8_error
    v16ci __m128i_i8_0,                 __m128b, i8_0
    v16ci __m128i_i8_1,                 __m128b, i8_1
    v16ci __m128i_i8_neg0,              __m128b, i8_neg0
    v16ci __m128i_i8_neg1,              __m128b, i8_neg1
    
    ;;int8 mask low;;
    
    v16ci16 __m128i_i8_0e_true,         __m128b, i8_true, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_i8_0e_false,        __m128b, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_i8_0e_max,          __m128b, i8_max, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_i8_0e_min,          __m128b, i8_min, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_ui8_0e_max,         __m128b, ui8_max, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_ui8_0e_min,         __m128b, ui8_min, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_si8_0e_max,         __m128b, si8_max, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_si8_0e_min,         __m128b, si8_min, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_i8_0e_error,        __m128b, i8_error, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_ui8_0e_error,       __m128b, ui8_error, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_si8_0e_error,       __m128b, si8_error, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_i8_0e_0,            __m128b, i8_0, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_i8_0e_1,            __m128b, i8_1, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_i8_0e_neg0,         __m128b, i8_neg0, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
    v16ci16 __m128i_i8_0e_neg1,         __m128b, i8_neg1, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false

    ;;int16 mask;;

    v8ci __m128i_i16_true,              __m128w, i16_true
    v8ci __m128i_i16_false,             __m128w, i16_false
    v8ci __m128i_i16_max,               __m128w, i16_max
    v8ci __m128i_i16_min,               __m128w, i16_min
    v8ci __m128i_ui16_max,              __m128w, ui16_max
    v8ci __m128i_ui16_min,              __m128w, ui16_min
    v8ci __m128i_si16_max,              __m128w, si16_max
    v8ci __m128i_si16_min,              __m128w, si16_min
    v8ci __m128i_i16_error,             __m128w, i16_error
    v8ci __m128i_ui16_error,            __m128w, ui16_error
    v8ci __m128i_si16_error,            __m128w, si16_error
    v8ci __m128i_i16_0,                 __m128w, i16_0
    v8ci __m128i_i16_1,                 __m128w, i16_1
    v8ci __m128i_i16_neg0,              __m128w, i16_neg0
    v8ci __m128i_i16_neg1,              __m128w, i16_neg1
    
    ;;int16 mask low;;
    
    v8ci8 __m128i_i16_0e_true,          __m128w, i16_true, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
    v8ci8 __m128i_i16_0e_false,         __m128w, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
    v8ci8 __m128i_i16_0e_max,           __m128w, i16_max, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
    v8ci8 __m128i_i16_0e_min,           __m128w, i16_min, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
    v8ci8 __m128i_ui16_0e_max,          __m128w, ui16_max, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
    v8ci8 __m128i_ui16_0e_min,          __m128w, ui16_min, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
    v8ci8 __m128i_si16_0e_max,          __m128w, si16_max, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
    v8ci8 __m128i_si16_0e_min,          __m128w, si16_min, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
    v8ci8 __m128i_i16_0e_error,         __m128w, i16_error, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
    v8ci8 __m128i_ui16_0e_error,        __m128w, ui16_error, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
    v8ci8 __m128i_si16_0e_error,        __m128w, si16_error, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false    
    v8ci8 __m128i_i16_0e_0,             __m128w, i16_0, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
    v8ci8 __m128i_i16_0e_1,             __m128w, i16_1, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
    v8ci8 __m128i_i16_0e_neg0,          __m128w, i16_neg0, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
    v8ci8 __m128i_i16_0e_neg1,          __m128w, i16_neg1, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false

    ;;int32 mask;;

    v4ci __m128i_i32_true,              __m128i, i32_true
    v4ci __m128i_i32_false,             __m128i, i32_false
    v4ci __m128i_i32_max,               __m128i, i32_max
    v4ci __m128i_i32_min,               __m128i, i32_min
    v4ci __m128i_ui32_max,              __m128i, ui32_max
    v4ci __m128i_ui32_min,              __m128i, ui32_min
    v4ci __m128i_si32_max,              __m128i, si32_max
    v4ci __m128i_si32_min,              __m128i, si32_min
    v4ci __m128i_i32_error,             __m128i, i32_error
    v4ci __m128i_ui32_error,            __m128i, ui32_error
    v4ci __m128i_si32_error,            __m128i, si32_error 
    v4ci __m128i_i32_0,                 __m128i, i32_0
    v4ci __m128i_i32_1,                 __m128i, i32_1
    v4ci __m128i_i32_2,                 __m128i, i32_2
    v4ci __m128i_i32_neg0,              __m128i, i32_neg0
    v4ci __m128i_i32_neg1,              __m128i, i32_neg1
    v4ci __m128i_i32_neg2,              __m128i, i32_neg2

    v4ci4 __m128i_i32_select0000,       __m128i, i32_false, i32_false, i32_false, i32_false
    v4ci4 __m128i_i32_select0001,       __m128i, i32_false, i32_false, i32_false, i32_true
    v4ci4 __m128i_i32_select0010,       __m128i, i32_false, i32_false, i32_true, i32_false
    v4ci4 __m128i_i32_select0100,       __m128i, i32_false, i32_true, i32_false, i32_false
    v4ci4 __m128i_i32_select1000,       __m128i, i32_true, i32_false, i32_false, i32_false
    v4ci4 __m128i_i32_select0011,       __m128i, i32_false, i32_false, i32_true, i32_true
    v4ci4 __m128i_i32_select0111,       __m128i, i32_false, i32_true, i32_true, i32_true
    v4ci4 __m128i_i32_select1111,       __m128i, i32_true, i32_true, i32_true, i32_true
    v4ci4 __m128i_i32_select1110,       __m128i, i32_true, i32_true, i32_true, i32_false
    v4ci4 __m128i_i32_select1100,       __m128i, i32_true, i32_true, i32_false, i32_false
    v4ci4 __m128i_i32_select1001,       __m128i, i32_true, i32_false, i32_false, i32_true
    v4ci4 __m128i_i32_select0110,       __m128i, i32_false, i32_true, i32_true, i32_false
    v4ci4 __m128i_i32_select1011,       __m128i, i32_true, i32_false, i32_true, i32_true
    v4ci4 __m128i_i32_select1101,       __m128i, i32_true, i32_true, i32_false, i32_true
    v4ci4 __m128i_i32_select0101,       __m128i, i32_false, i32_true, i32_false, i32_true
    v4ci4 __m128i_i32_select1010,       __m128i, i32_true, i32_false, i32_true, i32_false

    ;;int32 mask low;;
    
    v4ci4 __m128i_i32_0e_true,          __m128i, i32_true, i32_false, i32_false, i32_false
    v4ci4 __m128i_i32_0e_false,         __m128i, i32_false, i32_false, i32_false, i32_false
    v4ci4 __m128i_i32_0e_max,           __m128i, i32_max, i32_false, i32_false, i32_false
    v4ci4 __m128i_i32_0e_min,           __m128i, i32_min, i32_false, i32_false, i32_false
    v4ci4 __m128i_ui32_0e_max,          __m128i, ui32_max, i32_false, i32_false, i32_false
    v4ci4 __m128i_ui32_0e_min,          __m128i, ui32_min, i32_false, i32_false, i32_false
    v4ci4 __m128i_si32_0e_max,          __m128i, si32_max, i32_false, i32_false, i32_false
    v4ci4 __m128i_si32_0e_min,          __m128i, si32_min, i32_false, i32_false, i32_false
    v4ci4 __m128i_i32_0e_error,         __m128i, i32_error, i32_false, i32_false, i32_false
    v4ci4 __m128i_ui32_0e_error,        __m128i, ui32_error, i32_false, i32_false, i32_false
    v4ci4 __m128i_si32_0e_error,        __m128i, si32_error, i32_false, i32_false, i32_false    
    v4ci4 __m128i_i32_0e_0,             __m128i, i32_0, i32_false, i32_false, i32_false
    v4ci4 __m128i_i32_0e_1,             __m128i, i32_1, i32_false, i32_false, i32_false
    v4ci4 __m128i_i32_0e_2,             __m128i, i32_2, i32_false, i32_false, i32_false
    v4ci4 __m128i_i32_0e_neg0,          __m128i, i32_neg0, i32_false, i32_false, i32_false
    v4ci4 __m128i_i32_0e_neg1,          __m128i, i32_neg1, i32_false, i32_false, i32_false
    v4ci4 __m128i_i32_0e_neg2,          __m128i, i32_neg2, i32_false, i32_false, i32_false

    ;;int64 mask;;

    v2ci __m128i_i64_true,              __m128q, i64_true
    v2ci __m128i_i64_false,             __m128q, i64_false
    v2ci __m128i_i64_max,               __m128q, i64_max
    v2ci __m128i_i64_min,               __m128q, i64_min
    v2ci __m128i_ui64_max,              __m128q, ui64_max
    v2ci __m128i_ui64_min,              __m128q, ui64_min
    v2ci __m128i_si64_max,              __m128q, si64_max
    v2ci __m128i_si64_min,              __m128q, si64_min
    v2ci __m128i_i64_error,             __m128q, i64_error
    v2ci __m128i_ui64_error,            __m128q, ui64_error
    v2ci __m128i_si64_error,            __m128q, si64_error 
    v2ci __m128i_i64_0,                 __m128q, i64_0
    v2ci __m128i_i64_1,                 __m128q, i64_1
    v2ci __m128i_i64_neg0,              __m128q, i64_neg0
    v2ci __m128i_i64_neg1,              __m128q, i64_neg1

    v2ci2 __m128i_i64_select00,         __m128q, i64_false, i64_false
    v2ci2 __m128i_i64_select01,         __m128q, i64_false, i64_true
    v2ci2 __m128i_i64_select10,         __m128q, i64_true, i64_false
    v2ci2 __m128i_i64_select11,         __m128q, i64_true, i64_true

    ;;int64 mask low;;

    v2ci2 __m128i_i64_0e_true,          __m128q, i64_true, i64_false
    v2ci2 __m128i_i64_0e_false,         __m128q, i64_false, i64_false
    v2ci2 __m128i_i64_0e_max,           __m128q, i64_max, i64_false
    v2ci2 __m128i_i64_0e_min,           __m128q, i64_min, i64_false
    v2ci2 __m128i_ui64_0e_max,          __m128q, ui64_max, i64_false
    v2ci2 __m128i_ui64_0e_min,          __m128q, ui64_min, i64_false
    v2ci2 __m128i_si64_0e_max,          __m128q, si64_max, i64_false
    v2ci2 __m128i_si64_0e_min,          __m128q, si64_min, i64_false
    v2ci2 __m128i_i64_0e_error,         __m128q, i64_error, i64_false
    v2ci2 __m128i_ui64_0e_error,        __m128q, ui64_error, i64_false
    v2ci2 __m128i_si64_0e_error,        __m128q, si64_error, i64_false  
    v2ci2 __m128i_i64_0e_0,             __m128q, i64_0, i64_false
    v2ci2 __m128i_i64_0e_1,             __m128q, i64_1, i64_false
    v2ci2 __m128i_i64_0e_neg0,          __m128q, i64_neg0, i64_false
    v2ci2 __m128i_i64_0e_neg1,          __m128q, i64_neg1, i64_false

    ;;float mask;;

    v4ci __m128i_flt_bigoverflow,       __m128i, 0x2000000
    v4ci __m128i_flt_bytevtbl,          __m128i, 0x3f802000

    v4ci __m128i_flt_1lshl3,            __m128i, flt_1lshl3_msk
    v4ci __m128i_flt_1lshl4,            __m128i, flt_1lshl4_msk
    v4ci __m128i_flt_1lshl7,            __m128i, flt_1lshl7_msk
    v4ci __m128i_flt_1lshl8,            __m128i, flt_1lshl8_msk
    v4ci __m128i_flt_1lshl11,           __m128i, flt_1lshl11_msk
    v4ci __m128i_flt_1lshl12,           __m128i, flt_1lshl12_msk
    v4ci __m128i_flt_1lshl15,           __m128i, flt_1lshl15_msk
    v4ci __m128i_flt_1lshl16,           __m128i, flt_1lshl16_msk
    v4ci __m128i_flt_1lshl19,           __m128i, flt_1lshl19_msk
    v4ci __m128i_flt_1lshl20,           __m128i, flt_1lshl20_msk
    v4ci __m128i_flt_1lshl23,           __m128i, flt_1lshl23_msk
    v4ci __m128i_flt_1lshl24,           __m128i, flt_1lshl24_msk
    v4ci __m128i_flt_1lshl27,           __m128i, flt_1lshl27_msk
    v4ci __m128i_flt_1lshl28,           __m128i, flt_1lshl28_msk
    v4ci __m128i_flt_1lshl31,           __m128i, flt_1lshl31_msk
    
    v4ci __m128i_flt_neg1lshl3,         __m128i, flt_neg1lshl3_msk
    v4ci __m128i_flt_neg1lshl4,         __m128i, flt_neg1lshl4_msk
    v4ci __m128i_flt_neg1lshl7,         __m128i, flt_neg1lshl7_msk
    v4ci __m128i_flt_neg1lshl8,         __m128i, flt_neg1lshl8_msk
    v4ci __m128i_flt_neg1lshl11,        __m128i, flt_neg1lshl11_msk
    v4ci __m128i_flt_neg1lshl12,        __m128i, flt_neg1lshl12_msk
    v4ci __m128i_flt_neg1lshl15,        __m128i, flt_neg1lshl15_msk
    v4ci __m128i_flt_neg1lshl16,        __m128i, flt_neg1lshl16_msk
    v4ci __m128i_flt_neg1lshl19,        __m128i, flt_neg1lshl19_msk
    v4ci __m128i_flt_neg1lshl20,        __m128i, flt_neg1lshl20_msk
    v4ci __m128i_flt_neg1lshl23,        __m128i, flt_neg1lshl23_msk
    v4ci __m128i_flt_neg1lshl24,        __m128i, flt_neg1lshl24_msk
    v4ci __m128i_flt_neg1lshl27,        __m128i, flt_neg1lshl27_msk
    v4ci __m128i_flt_neg1lshl28,        __m128i, flt_neg1lshl28_msk
    v4ci __m128i_flt_neg1lshl31,        __m128i, flt_neg1lshl31_msk
    
    v4ci __m128i_flt_false,             __m128i, flt_false_msk
    v4ci __m128i_flt_true,              __m128i, flt_true_msk
    v4ci __m128i_flt_error,             __m128i, flt_error_msk
    
    v4ci __m128i_flt_magic,             __m128i, flt_magic_msk
    v4ci __m128i_flt_sign,              __m128i, flt_sign_msk
    v4ci __m128i_flt_invsign,           __m128i, flt_invsign_msk

    v4ci __m128i_flt_inf,               __m128i, flt_inf_msk
    v4ci __m128i_flt_fin,               __m128i, flt_fin_msk
    v4ci __m128i_flt_invinf,            __m128i, flt_invinf_msk
    v4ci __m128i_flt_neginf,            __m128i, flt_neginf_msk
    v4ci __m128i_flt_nan,               __m128i, flt_nan_msk
    v4ci __m128i_flt_qnan,              __m128i, flt_qnan_msk
    v4ci __m128i_flt_negqnan,           __m128i, flt_negqnan_msk
    v4ci __m128i_flt_nantest,           __m128i, flt_nantest_msk
    v4ci __m128i_flt_abs,               __m128i, flt_abs_msk
    v4ci __m128i_flt_min,               __m128i, flt_min_msk
    v4ci __m128i_flt_max,               __m128i, flt_max_msk
    v4ci __m128i_flt_nofraction,        __m128i, flt_nofraction_msk
    v4ci __m128i_flt_mindenorm,         __m128i, flt_mindenorm_msk
    v4ci __m128i_flt_denormlimit,       __m128i, flt_denormlimit_msk
    v4ci __m128i_flt_minnormal,         __m128i, flt_minnormal_msk
    v4ci __m128i_flt_maxnormal,         __m128i, flt_maxnormal_msk

    v4ci __m128i_flt_decdig,            __m128i, flt_decdig_msk
    v4ci __m128i_flt_dig,               __m128i, flt_dig_msk
    v4ci __m128i_flt_negdecdig,         __m128i, flt_negdecdig_msk
    v4ci __m128i_flt_negdig,            __m128i, flt_negdig_msk
    v4ci __m128i_flt_eps,               __m128i, flt_eps_msk
    v4ci __m128i_flt_epsilon,           __m128i, flt_epsilon_msk
    v4ci __m128i_flt_normeps,           __m128i, flt_normeps_msk
    v4ci __m128i_flt_guard,             __m128i, flt_guard_msk
    v4ci __m128i_flt_mantpow2,          __m128i, flt_mantpow2_msk
    v4ci __m128i_flt_maxmantpow2,       __m128i, flt_maxmantpow2_msk
    v4ci __m128i_flt_mantdig,           __m128i, flt_mantdig_msk
    v4ci __m128i_flt_mant,              __m128i, flt_mant_msk
    v4ci __m128i_flt_negmantdig,        __m128i, flt_negmantdig_msk
    v4ci __m128i_flt_negmant,           __m128i, flt_negmant_msk
    v4ci __m128i_flt_maxexpo,           __m128i, flt_maxexpo_msk
    v4ci __m128i_flt_exposign,          __m128i, flt_exposign_msk
    v4ci __m128i_flt_expo,              __m128i, flt_expo_msk
    v4ci __m128i_flt_negmaxexpo,        __m128i, flt_negmaxexpo_msk
    v4ci __m128i_flt_negexposign,       __m128i, flt_negexposign_msk
    v4ci __m128i_flt_negexpo,           __m128i, flt_negexpo_msk
    v4ci __m128i_flt_subnormalexpo,     __m128i, flt_subnormalexpo_msk
    v4ci __m128i_flt_minexpo,           __m128i, flt_minexpo_msk
    v4ci __m128i_flt_maxdecexpo,        __m128i, flt_maxdecexpo_msk
    v4ci __m128i_flt_negmaxdecexpo,     __m128i, flt_negmaxdecexpo_msk
    v4ci __m128i_flt_mindecexpo,        __m128i, flt_mindecexpo_msk
    v4ci __m128i_flt_expofield,         __m128i, flt_expofield_msk
    v4ci __m128i_flt_mantfield,         __m128i, flt_mantfield_msk
    v4ci __m128i_flt_norm,              __m128i, flt_norm_msk
    v4ci __m128i_flt_radix,             __m128i, flt_radix_msk
    v4ci __m128i_flt_rounds,            __m128i, flt_rounds_msk
    v4ci __m128i_flt_subdec,            __m128i, flt_subdec_msk
    v4ci __m128i_flt_sqrtmax,           __m128i, flt_sqrtmax_msk
    v4ci __m128i_flt_smallnormal,       __m128i, flt_smallnormal_msk

    v4ci __m128i_flt_halfminuseps,      __m128i, flt_halfminuseps_msk
    v4ci __m128i_flt_trueint,           __m128i, flt_trueint_msk

    v4ci __m128i_flt_byte,              __m128i, flt_byte_msk
    v4ci __m128i_flt_byte_even,         __m128i, flt_byte_even_msk
    v4ci __m128i_flt_byte_odd,          __m128i, flt_byte_odd_msk
    v4ci __m128i_flt_4low,              __m128i, flt_4low_msk
    v4ci __m128i_flt_4high,             __m128i, flt_4high_msk
    v4ci __m128i_flt_flip4,             __m128i, flt_flip4_msk
    v4ci __m128i_flt_8low,              __m128i, flt_8low_msk
    v4ci __m128i_flt_8high,             __m128i, flt_8high_msk
    v4ci __m128i_flt_flip8,             __m128i, flt_flip8_msk
    v4ci __m128i_flt_16low,             __m128i, flt_16low_msk
    v4ci __m128i_flt_16high,            __m128i, flt_16high_msk
    v4ci __m128i_flt_flip16,            __m128i, flt_flip16_msk
    v4ci __m128i_flt_24low,             __m128i, flt_24low_msk
    v4ci __m128i_flt_24high,            __m128i, flt_24high_msk
    v4ci __m128i_flt_flip24,            __m128i, flt_flip24_msk
    v4ci __m128i_flt_28low,             __m128i, flt_28low_msk
    v4ci __m128i_flt_28high,            __m128i, flt_28high_msk
    v4ci __m128i_flt_flip28,            __m128i, flt_flip28_msk
    v4ci __m128i_flt_32low,             __m128i, flt_32low_msk
    v4ci __m128i_flt_32high,            __m128i, flt_32high_msk
    v4ci __m128i_flt_flip32,            __m128i, flt_flip32_msk

    v4ci __m128i_flt_0,                 __m128i, flt_0_msk
    v4ci __m128i_flt_0d5,               __m128i, flt_0d5_msk
    v4ci __m128i_flt_1,                 __m128i, flt_1_msk
    v4ci __m128i_flt_1d5,               __m128i, flt_1d5_msk
    v4ci __m128i_flt_2,                 __m128i, flt_2_msk
    v4ci __m128i_flt_2d5,               __m128i, flt_2d5_msk
    v4ci __m128i_flt_3,                 __m128i, flt_3_msk
    v4ci __m128i_flt_4,                 __m128i, flt_4_msk
    v4ci __m128i_flt_5,                 __m128i, flt_5_msk
    v4ci __m128i_flt_6,                 __m128i, flt_6_msk
    v4ci __m128i_flt_7,                 __m128i, flt_7_msk
    v4ci __m128i_flt_8,                 __m128i, flt_8_msk
    v4ci __m128i_flt_9,                 __m128i, flt_9_msk
    v4ci __m128i_flt_10,                __m128i, flt_10_msk
    v4ci __m128i_flt_20,                __m128i, flt_20_msk
    v4ci __m128i_flt_23,                __m128i, flt_23_msk
    v4ci __m128i_flt_23d5,              __m128i, flt_23d5_msk
    v4ci __m128i_flt_24,                __m128i, flt_24_msk
    v4ci __m128i_flt_24d5,              __m128i, flt_24d5_msk
    v4ci __m128i_flt_25,                __m128i, flt_25_msk

    v4ci __m128i_flt_128,               __m128i, flt_128_msk

    v4ci __m128i_flt_253,               __m128i, flt_253_msk

    v4ci __m128i_flt_neg0,              __m128i, flt_neg0_msk
    v4ci __m128i_flt_neg1,              __m128i, flt_neg1_msk

    v4ci __m128i_flt_neg150,            __m128i, flt_neg150_msk

    v4ci __m128i_flt_bin128,            __m128i, flt_bin128_msk
    v4ci __m128i_flt_binneg150,         __m128i, flt_binneg150_msk

    v4ci __m128i_flt_maxrand,           __m128i, flt_maxrand_msk

    v4ci __m128i_flt_maxi8,             __m128i, flt_maxi8_msk
    v4ci __m128i_flt_mini8,             __m128i, flt_mini8_msk
    v4ci __m128i_flt_maxu8,             __m128i, flt_maxu8_msk

    v4ci __m128i_flt_maxi16,            __m128i, flt_maxi16_msk
    v4ci __m128i_flt_mini16,            __m128i, flt_mini16_msk
    v4ci __m128i_flt_maxu16,            __m128i, flt_maxu16_msk

    v4ci __m128i_flt_maxi32,            __m128i, flt_maxi32_msk
    v4ci __m128i_flt_mini32,            __m128i, flt_mini32_msk
    v4ci __m128i_flt_maxu32,            __m128i, flt_maxu32_msk

    v4ci __m128i_flt_maxi8xu8,          __m128i, flt_maxi8xu8_msk
    v4ci __m128i_flt_mini8xu8,          __m128i, flt_mini8xu8_msk
    v4ci __m128i_flt_maxi8xu16,         __m128i, flt_maxi8xu16_msk
    v4ci __m128i_flt_mini8xu16,         __m128i, flt_mini8xu16_msk

    v4ci __m128i_flt_maxi16xu16,        __m128i, flt_maxi16xu16_msk
    v4ci __m128i_flt_mini16xu16,        __m128i, flt_mini16xu16_msk

    v4ci __m128i_flt_fixunsigned,       __m128i, flt_fixunsigned_msk
    v4ci __m128i_flt_fixunsigned32,     __m128i, flt_fixunsigned32_msk
    v4ci __m128i_flt_fixmaxi32,         __m128i, flt_fixmaxi32_msk
    v4ci __m128i_flt_fixmaxu32,         __m128i, flt_fixmaxu32_msk
        

    ;;float mask low;;

    v4ci4 __m128i_flt_0e_bigoverflow,       __m128i, 0x2000000, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_1lshl3,            __m128i, flt_1lshl3_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl4,            __m128i, flt_1lshl4_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl7,            __m128i, flt_1lshl7_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl8,            __m128i, flt_1lshl8_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl11,           __m128i, flt_1lshl11_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl12,           __m128i, flt_1lshl12_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl15,           __m128i, flt_1lshl15_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl16,           __m128i, flt_1lshl16_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl19,           __m128i, flt_1lshl19_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl20,           __m128i, flt_1lshl20_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl23,           __m128i, flt_1lshl23_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl24,           __m128i, flt_1lshl24_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl27,           __m128i, flt_1lshl27_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl28,           __m128i, flt_1lshl28_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1lshl31,           __m128i, flt_1lshl31_msk, flt_false_msk, flt_false_msk, flt_false_msk
    
    v4ci4 __m128i_flt_0e_neg1lshl3,         __m128i, flt_neg1lshl3_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl4,         __m128i, flt_neg1lshl4_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl7,         __m128i, flt_neg1lshl7_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl8,         __m128i, flt_neg1lshl8_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl11,        __m128i, flt_neg1lshl11_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl12,        __m128i, flt_neg1lshl12_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl15,        __m128i, flt_neg1lshl15_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl16,        __m128i, flt_neg1lshl16_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl19,        __m128i, flt_neg1lshl19_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl20,        __m128i, flt_neg1lshl20_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl23,        __m128i, flt_neg1lshl23_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl24,        __m128i, flt_neg1lshl24_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl27,        __m128i, flt_neg1lshl27_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl28,        __m128i, flt_neg1lshl28_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1lshl31,        __m128i, flt_neg1lshl31_msk, flt_false_msk, flt_false_msk, flt_false_msk
    
    v4ci4 __m128i_flt_0e_false,             __m128i, flt_false_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_true,              __m128i, flt_true_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_error,             __m128i, flt_error_msk, flt_false_msk, flt_false_msk, flt_false_msk
    
    v4ci4 __m128i_flt_0e_magic,             __m128i, flt_magic_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_sign,              __m128i, flt_sign_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_invsign,           __m128i, flt_invsign_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_inf,               __m128i, flt_inf_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_fin,               __m128i, flt_fin_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_invinf,            __m128i, flt_invinf_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neginf,            __m128i, flt_neginf_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_nan,               __m128i, flt_nan_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_qnan,              __m128i, flt_qnan_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_negqnan,           __m128i, flt_negqnan_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_nantest,           __m128i, flt_nantest_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_abs,               __m128i, flt_abs_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_min,               __m128i, flt_min_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_max,               __m128i, flt_max_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_nofraction,        __m128i, flt_nofraction_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_mindenorm,         __m128i, flt_mindenorm_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_denormlimit,       __m128i, flt_denormlimit_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_minnormal,         __m128i, flt_minnormal_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_maxnormal,         __m128i, flt_maxnormal_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_decdig,            __m128i, flt_decdig_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_dig,               __m128i, flt_dig_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_negdecdig,         __m128i, flt_negdecdig_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_negdig,            __m128i, flt_negdig_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_eps,               __m128i, flt_eps_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_epsilon,           __m128i, flt_epsilon_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_normeps,           __m128i, flt_normeps_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_guard,             __m128i, flt_guard_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_mantpow2,          __m128i, flt_mantpow2_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_maxmantpow2,       __m128i, flt_maxmantpow2_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_mantdig,           __m128i, flt_mantdig_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_mant,              __m128i, flt_mant_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_negmantdig,        __m128i, flt_negmantdig_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_negmant,           __m128i, flt_negmant_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_maxexpo,           __m128i, flt_maxexpo_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_exposign,          __m128i, flt_exposign_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_expo,              __m128i, flt_expo_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_negmaxexpo,        __m128i, flt_negmaxexpo_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_negexposign,       __m128i, flt_negexposign_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_negexpo,           __m128i, flt_negexpo_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_subnormalexpo,     __m128i, flt_subnormalexpo_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_minexpo,           __m128i, flt_minexpo_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_maxdecexpo,        __m128i, flt_maxdecexpo_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_negmaxdecexpo,     __m128i, flt_negmaxdecexpo_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_mindecexpo,        __m128i, flt_mindecexpo_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_expofield,         __m128i, flt_expofield_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_mantfield,         __m128i, flt_mantfield_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_norm,              __m128i, flt_norm_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_radix,             __m128i, flt_radix_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_rounds,            __m128i, flt_rounds_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_subdec,            __m128i, flt_subdec_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_sqrtmax,           __m128i, flt_sqrtmax_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_smallnormal,       __m128i, flt_smallnormal_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_halfminuseps,      __m128i, flt_halfminuseps_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_trueint,           __m128i, flt_trueint_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_byte,              __m128i, flt_byte_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_byte_even,         __m128i, flt_byte_even_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_byte_odd,          __m128i, flt_byte_odd_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_4low,              __m128i, flt_4low_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_4high,             __m128i, flt_4high_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_flip4,             __m128i, flt_flip4_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_8low,              __m128i, flt_8low_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_8high,             __m128i, flt_8high_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_flip8,             __m128i, flt_flip8_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_16low,             __m128i, flt_16low_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_16high,            __m128i, flt_16high_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_flip16,            __m128i, flt_flip16_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_24low,             __m128i, flt_24low_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_24high,            __m128i, flt_24high_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_flip24,            __m128i, flt_flip24_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_28low,             __m128i, flt_28low_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_28high,            __m128i, flt_28high_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_flip28,            __m128i, flt_flip28_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_32low,             __m128i, flt_32low_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_32high,            __m128i, flt_32high_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_flip32,            __m128i, flt_flip32_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_0,                 __m128i, flt_0_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_0d5,               __m128i, flt_0d5_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1,                 __m128i, flt_1_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_1d5,               __m128i, flt_1d5_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_2,                 __m128i, flt_2_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_2d5,               __m128i, flt_2d5_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_3,                 __m128i, flt_3_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_4,                 __m128i, flt_4_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_5,                 __m128i, flt_5_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_6,                 __m128i, flt_6_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_7,                 __m128i, flt_7_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_8,                 __m128i, flt_8_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_9,                 __m128i, flt_9_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_10,                __m128i, flt_10_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_20,                __m128i, flt_20_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_23,                __m128i, flt_23_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_23d5,              __m128i, flt_23d5_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_24,                __m128i, flt_24_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_24d5,              __m128i, flt_24d5_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_25,                __m128i, flt_25_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_128,               __m128i, flt_128_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_253,               __m128i, flt_253_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_neg0,              __m128i, flt_neg0_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_neg1,              __m128i, flt_neg1_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_neg150,            __m128i, flt_neg150_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_bin128,            __m128i, flt_bin128_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_binneg150,         __m128i, flt_binneg150_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_maxrand,           __m128i, flt_maxrand_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_maxi8,             __m128i, flt_maxi8_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_mini8,             __m128i, flt_mini8_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_maxu8,             __m128i, flt_maxu8_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_maxi16,            __m128i, flt_maxi16_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_mini16,            __m128i, flt_mini16_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_maxu16,            __m128i, flt_maxu16_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_maxi32,            __m128i, flt_maxi32_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_mini32,            __m128i, flt_mini32_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_maxu32,            __m128i, flt_maxu32_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_maxi8xu8,          __m128i, flt_maxi8xu8_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_mini8xu8,          __m128i, flt_mini8xu8_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_maxi8xu16,         __m128i, flt_maxi8xu16_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_mini8xu16,         __m128i, flt_mini8xu16_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_maxi16xu16,        __m128i, flt_maxi16xu16_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_mini16xu16,        __m128i, flt_mini16xu16_msk, flt_false_msk, flt_false_msk, flt_false_msk

    v4ci4 __m128i_flt_0e_fixunsigned,       __m128i, flt_fixunsigned_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_fixunsigned32,     __m128i, flt_fixunsigned32_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_fixmaxi32,         __m128i, flt_fixmaxi32_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_0e_fixmaxu32,         __m128i, flt_fixmaxu32_msk, flt_false_msk, flt_false_msk, flt_false_msk

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
    v4ci4 __m128i_flt_negativezero,              __m128i, flt_neg0_msk, flt_neg0_msk, flt_neg0_msk, flt_neg0_msk
    v4ci4 __m128i_flt_negate3,                   __m128i, flt_neg0_msk, flt_neg0_msk, flt_neg0_msk, flt_false_msk
    v4ci4 __m128i_flt_maskxy,                    __m128i, flt_true_msk, flt_true_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_maskxyz,                   __m128i, flt_true_msk, flt_true_msk, flt_true_msk, flt_false_msk
    v4ci4 __m128i_flt_maskxyzw,                  __m128i, flt_true_msk, flt_true_msk, flt_true_msk, flt_true_msk
    v4ci4 __m128i_flt_mask3,                     __m128i, flt_true_msk, flt_true_msk, flt_true_msk, flt_false_msk
    v4ci4 __m128i_flt_maskx,                     __m128i, flt_true_msk, flt_false_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_masky,                     __m128i, flt_false_msk, flt_true_msk, flt_false_msk, flt_false_msk
    v4ci4 __m128i_flt_maskz,                     __m128i, flt_false_msk, flt_false_msk, flt_true_msk, flt_false_msk
    v4ci4 __m128i_flt_maskw,                     __m128i, flt_false_msk, flt_false_msk, flt_false_msk, flt_true_msk
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
    v4ci4 __m128i_flt_infinity,                  __m128i, flt_inf_msk, flt_inf_msk, flt_inf_msk, flt_inf_msk
    v4ci4 __m128i_flt_qnantest,                  __m128i, flt_nantest_msk, flt_nantest_msk, flt_nantest_msk, flt_nantest_msk
    v4ci4 __m128i_flt_absmask,                   __m128i, flt_abs_msk, flt_abs_msk, flt_abs_msk, flt_abs_msk
    v4ci4 __m128i_flt_fltmin,                    __m128i, flt_min_msk, flt_min_msk, flt_min_msk, flt_min_msk
    v4ci4 __m128i_flt_fltmax,                    __m128i, flt_max_msk, flt_max_msk, flt_max_msk, flt_max_msk
    v4ci4 __m128i_flt_negonemask,                __m128i, flt_true_msk, flt_true_msk, flt_true_msk, flt_true_msk
    v4ci4 __m128i_flt_maska8r8g8b8,              __m128i, flt_a8_msk, flt_r8_msk, flt_g8_msk, flt_b8_msk
    v4ci4 __m128i_flt_flipa8r8g8b8,              __m128i, flt_flipa8_msk, flt_flipr8_msk, flt_flipg8_msk, flt_flipb8_msk
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
    v4ci4 __m128i_flt_maska2b10g10r10,           __m128i, flt_a2_msk, flt_b10_msk, flt_g10_msk, flt_r10_msk
    v4ci4 __m128i_flt_flipa2b10g10r10,           __m128i, flt_flipa2_msk, flt_flipb10_msk, flt_flipg10_msk, flt_flipr10_msk
    v4ci4 __m128_maska2b10g10r10,                __m128i, flt_a2_msk, flt_b10_msk, flt_g10_msk, flt_r10_msk
    v4ci4 __m128_flipa2b10g10r10,                __m128i, flt_flipa2_msk, flt_flipb10_msk, flt_flipg10_msk, flt_flipr10_msk
    v4ci4 __m128_fixaa2b10g10r10,                __m128f, flt_fixaa2, flt_fixb10, flt_fixg10, flt_fixr10
    v4ci4 __m128_normalizea2b10g10r10,           __m128f, flt_norma2, flt_normb10, flt_normg10, flt_normr10
    v4ci4 __m128i_flt_maskx16y16,                __m128i, flt_16low_msk, flt_16high_msk, flt_false, flt_false
    v4ci4 __m128i_flt_flipx16y16,                __m128i, flt_flip16_msk, flt_flip16_msk, flt_false, flt_false
    v4ci4 __m128_maskx16y16,                     __m128i, flt_16low_msk, flt_16high_msk, flt_false, flt_false
    v4ci4 __m128_flipx16y16,                     __m128i, flt_flip16_msk, flt_flip16_msk, flt_false, flt_false
    v4ci4 __m128_fixx16y16,                      __m128f, flt_neg32768, flt_0, flt_0, flt_0
    v4ci4 __m128_normalizex16y16,                __m128f, (3.051850947599719e-05), (4.656754985961486e-010), flt_0, flt_0
    v4ci4 __m128i_flt_maskx16y16z16w16,          __m128i, flt_16low_msk, flt_16low_msk, flt_16high_msk, flt_16high_msk
    v4ci4 __m128i_flt_flipx16y16z16w16,          __m128i, flt_flip16_msk, flt_flip16_msk, flt_false, flt_false
    v4ci4 __m128_maskx16y16z16w16,               __m128i, flt_16low_msk, flt_16low_msk, flt_16high_msk, flt_16high_msk
    v4ci4 __m128_flipx16y16z16w16,               __m128i, flt_flip16_msk, flt_flip16_msk, flt_false, flt_false
    v4ci4 __m128_fixx16y16z16w16,                __m128f, flt_neg32768, flt_neg32768, flt_0, flt_0
    v4ci4 __m128_normalizex16y16z16w16,          __m128f, (3.051850947599719e-05), (3.051850947599719e-05), (4.656754985961486e-010), (4.656754985961486e-010)
    v4ci4 __m128i_flt_maskbyte,                  __m128i, flt_byte_msk, flt_byte_msk, flt_byte_msk, flt_byte_msk
    v4ci4 __m128_maskbyte,                       __m128i, flt_byte_msk, flt_byte_msk, flt_byte_msk, flt_byte_msk
    v4ci4 __m128_negatex,                        __m128f, flt_neg1, flt_1, flt_1, flt_1
    v4ci4 __m128_negatey,                        __m128f, flt_1, flt_neg1, flt_1, flt_1
    v4ci4 __m128_negatez,                        __m128f, flt_1, flt_1, flt_neg1, flt_1
    v4ci4 __m128_negatew,                        __m128f, flt_1, flt_1, flt_1, flt_neg1
    v4ci4 __m128i_flt_select0000,                __m128i, flt_false, flt_false, flt_false, flt_false
    v4ci4 __m128i_flt_select0001,                __m128i, flt_false, flt_false, flt_false, flt_true
    v4ci4 __m128i_flt_select0010,                __m128i, flt_false, flt_false, flt_true, flt_false
    v4ci4 __m128i_flt_select0100,                __m128i, flt_false, flt_true, flt_false, flt_false
    v4ci4 __m128i_flt_select1000,                __m128i, flt_true, flt_false, flt_false, flt_false
    v4ci4 __m128i_flt_select0011,                __m128i, flt_false, flt_false, flt_true, flt_true
    v4ci4 __m128i_flt_select0111,                __m128i, flt_false, flt_true, flt_true, flt_true
    v4ci4 __m128i_flt_select1111,                __m128i, flt_true, flt_true, flt_true, flt_true
    v4ci4 __m128i_flt_select1110,                __m128i, flt_true, flt_true, flt_true, flt_false
    v4ci4 __m128i_flt_select1100,                __m128i, flt_true, flt_true, flt_false, flt_false
    v4ci4 __m128i_flt_select1001,                __m128i, flt_true, flt_false, flt_false, flt_true
    v4ci4 __m128i_flt_select0110,                __m128i, flt_false, flt_true, flt_true, flt_false
    v4ci4 __m128i_flt_select1011,                __m128i, flt_true, flt_false, flt_true, flt_true
    v4ci4 __m128i_flt_select1101,                __m128i, flt_true, flt_true, flt_false, flt_true
    v4ci4 __m128i_flt_select0101,                __m128i, flt_false, flt_true, flt_false, flt_true
    v4ci4 __m128i_flt_select1010,                __m128i, flt_true, flt_false, flt_true, flt_false
    v4ci4 __m128i_flt_onehalfminusepsilon,       __m128i, flt_halfminuseps_msk, flt_halfminuseps_msk, flt_halfminuseps_msk, flt_halfminuseps_msk
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
    v4ci4 __m128i_flt_flipy,                     __m128i, flt_false, flt_flip32_msk, flt_false, flt_false
    v4ci4 __m128i_flt_flipz,                     __m128i, flt_false, flt_false, flt_flip32_msk, flt_false
    v4ci4 __m128i_flt_flipw,                     __m128i, flt_false, flt_false, flt_false, flt_flip32_msk
    v4ci4 __m128i_flt_flipyz,                    __m128i, flt_false, flt_flip32_msk, flt_flip32_msk, flt_false
    v4ci4 __m128i_flt_flipzw,                    __m128i, flt_false, flt_false, flt_flip32_msk, flt_flip32_msk
    v4ci4 __m128i_flt_flipyw,                    __m128i, flt_false, flt_flip32_msk, flt_false, flt_flip32_msk
    v4ci4 __m128i_flt_maskdec4,                  __m128i, 0x000003ff, 0x000ffc00, 0x3ff00000, 0xc0000000
    v4ci4 __m128i_flt_xordec4,                   __m128i, 0x00000200, 0x00080000, 0x20000000, 0x00000000
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
    v4ci4 __m128i_flt_maskbyte4,                 __m128i, 0x000000ff, 0x0000ff00, 0x00ff0000, 0xff000000
    v4ci4 __m128i_flt_xorbyte4,                  __m128i, 0x00000080, 0x00008000, 0x00800000, 0x00000000
    v4ci4 __m128_maskbyte4,                      __m128i, 0x000000ff, 0x0000ff00, 0x00ff0000, 0xff000000
    v4ci4 __m128_xorbyte4,                       __m128i, 0x00000080, 0x00008000, 0x00800000, 0x00000000
    v4ci4 __m128_addbyte4,                       __m128f, flt_neg128, flt_neg32768, flt_mini8xu16, flt_0
    v4ci4 __m128_fixmaxint,                      __m128f, flt_fixmaxi32, flt_fixmaxi32, flt_fixmaxi32, flt_fixmaxi32
    v4ci4 __m128_fixmaxuint,                     __m128f, flt_fixmaxu32, flt_fixmaxu32, flt_fixmaxu32, flt_fixmaxu32
    v4ci4 __m128_unsignedfix,                    __m128f, flt_fixunsigned, flt_fixunsigned, flt_fixunsigned, flt_fixunsigned
    v4ci4 __m128_srgbscale,                      __m128f, 12.92, 12.92, 12.92, flt_1
    v4ci4 __m128_srgba,                          __m128f, 0.055, 0.055, 0.055, flt_0
    v4ci4 __m128_srgba1,                         __m128f, 1.055, 1.055, 1.055, flt_1
    v4ci4 __m128i_flt_exponentbias,              __m128i, flt_expo_msk, flt_expo_msk, flt_expo_msk, flt_expo_msk
    v4ci4 __m128i_flt_subnormalexponent,         __m128i, flt_subnormalexpo_msk, flt_subnormalexpo_msk, flt_subnormalexpo_msk, flt_subnormalexpo_msk
    v4ci4 __m128i_flt_numtrailing,               __m128i, flt_mant_msk, flt_mant_msk, flt_mant_msk, flt_mant_msk
    v4ci4 __m128i_flt_neginfinity,               __m128i, flt_neginf_msk, flt_neginf_msk, flt_neginf_msk, flt_neginf_msk
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

    ;;double mask;;

    v2ci __m128i_dbl_1lshl3,            __m128q, dbl_1lshl3_msk
    v2ci __m128i_dbl_1lshl4,            __m128q, dbl_1lshl4_msk
    v2ci __m128i_dbl_1lshl7,            __m128q, dbl_1lshl7_msk
    v2ci __m128i_dbl_1lshl8,            __m128q, dbl_1lshl8_msk
    v2ci __m128i_dbl_1lshl11,           __m128q, dbl_1lshl11_msk
    v2ci __m128i_dbl_1lshl12,           __m128q, dbl_1lshl12_msk
    v2ci __m128i_dbl_1lshl15,           __m128q, dbl_1lshl15_msk
    v2ci __m128i_dbl_1lshl16,           __m128q, dbl_1lshl16_msk
    v2ci __m128i_dbl_1lshl19,           __m128q, dbl_1lshl19_msk
    v2ci __m128i_dbl_1lshl20,           __m128q, dbl_1lshl20_msk
    v2ci __m128i_dbl_1lshl23,           __m128q, dbl_1lshl23_msk
    v2ci __m128i_dbl_1lshl24,           __m128q, dbl_1lshl24_msk
    v2ci __m128i_dbl_1lshl27,           __m128q, dbl_1lshl27_msk
    v2ci __m128i_dbl_1lshl28,           __m128q, dbl_1lshl28_msk
    v2ci __m128i_dbl_1lshl31,           __m128q, dbl_1lshl31_msk
    v2ci __m128i_dbl_1lshl32,           __m128q, dbl_1lshl32_msk
    v2ci __m128i_dbl_1lshl35,           __m128q, dbl_1lshl35_msk
    v2ci __m128i_dbl_1lshl36,           __m128q, dbl_1lshl36_msk
    v2ci __m128i_dbl_1lshl39,           __m128q, dbl_1lshl39_msk
    v2ci __m128i_dbl_1lshl40,           __m128q, dbl_1lshl40_msk
    v2ci __m128i_dbl_1lshl43,           __m128q, dbl_1lshl43_msk
    v2ci __m128i_dbl_1lshl44,           __m128q, dbl_1lshl44_msk
    v2ci __m128i_dbl_1lshl47,           __m128q, dbl_1lshl47_msk
    v2ci __m128i_dbl_1lshl48,           __m128q, dbl_1lshl48_msk
    v2ci __m128i_dbl_1lshl51,           __m128q, dbl_1lshl51_msk
    v2ci __m128i_dbl_1lshl52,           __m128q, dbl_1lshl52_msk
    v2ci __m128i_dbl_1lshl55,           __m128q, dbl_1lshl55_msk
    v2ci __m128i_dbl_1lshl56,           __m128q, dbl_1lshl56_msk
    v2ci __m128i_dbl_1lshl59,           __m128q, dbl_1lshl59_msk
    v2ci __m128i_dbl_1lshl60,           __m128q, dbl_1lshl60_msk
    v2ci __m128i_dbl_1lshl63,           __m128q, dbl_1lshl63_msk
    
    v2ci __m128i_dbl_neg1lshl3,         __m128q, dbl_neg1lshl3_msk
    v2ci __m128i_dbl_neg1lshl4,         __m128q, dbl_neg1lshl4_msk
    v2ci __m128i_dbl_neg1lshl7,         __m128q, dbl_neg1lshl7_msk
    v2ci __m128i_dbl_neg1lshl8,         __m128q, dbl_neg1lshl8_msk
    v2ci __m128i_dbl_neg1lshl11,        __m128q, dbl_neg1lshl11_msk
    v2ci __m128i_dbl_neg1lshl12,        __m128q, dbl_neg1lshl12_msk
    v2ci __m128i_dbl_neg1lshl15,        __m128q, dbl_neg1lshl15_msk
    v2ci __m128i_dbl_neg1lshl16,        __m128q, dbl_neg1lshl16_msk
    v2ci __m128i_dbl_neg1lshl19,        __m128q, dbl_neg1lshl19_msk
    v2ci __m128i_dbl_neg1lshl20,        __m128q, dbl_neg1lshl20_msk
    v2ci __m128i_dbl_neg1lshl23,        __m128q, dbl_neg1lshl23_msk
    v2ci __m128i_dbl_neg1lshl24,        __m128q, dbl_neg1lshl24_msk
    v2ci __m128i_dbl_neg1lshl27,        __m128q, dbl_neg1lshl27_msk
    v2ci __m128i_dbl_neg1lshl28,        __m128q, dbl_neg1lshl28_msk
    v2ci __m128i_dbl_neg1lshl31,        __m128q, dbl_neg1lshl31_msk
    v2ci __m128i_dbl_neg1lshl32,        __m128q, dbl_neg1lshl32_msk
    v2ci __m128i_dbl_neg1lshl35,        __m128q, dbl_neg1lshl35_msk
    v2ci __m128i_dbl_neg1lshl36,        __m128q, dbl_neg1lshl36_msk
    v2ci __m128i_dbl_neg1lshl39,        __m128q, dbl_neg1lshl39_msk
    v2ci __m128i_dbl_neg1lshl40,        __m128q, dbl_neg1lshl40_msk
    v2ci __m128i_dbl_neg1lshl43,        __m128q, dbl_neg1lshl43_msk
    v2ci __m128i_dbl_neg1lshl44,        __m128q, dbl_neg1lshl44_msk
    v2ci __m128i_dbl_neg1lshl47,        __m128q, dbl_neg1lshl47_msk
    v2ci __m128i_dbl_neg1lshl48,        __m128q, dbl_neg1lshl48_msk
    v2ci __m128i_dbl_neg1lshl51,        __m128q, dbl_neg1lshl51_msk
    v2ci __m128i_dbl_neg1lshl52,        __m128q, dbl_neg1lshl52_msk
    v2ci __m128i_dbl_neg1lshl55,        __m128q, dbl_neg1lshl55_msk
    v2ci __m128i_dbl_neg1lshl56,        __m128q, dbl_neg1lshl56_msk
    v2ci __m128i_dbl_neg1lshl59,        __m128q, dbl_neg1lshl59_msk
    v2ci __m128i_dbl_neg1lshl60,        __m128q, dbl_neg1lshl60_msk
    v2ci __m128i_dbl_neg1lshl63,        __m128q, dbl_neg1lshl63_msk
    
    v2ci __m128i_dbl_false,             __m128q, dbl_false_msk
    v2ci __m128i_dbl_true,              __m128q, dbl_true_msk
    v2ci __m128i_dbl_error,             __m128q, dbl_error_msk
    
    v2ci __m128i_dbl_magic,             __m128q, dbl_magic_msk
    v2ci __m128i_dbl_sign,              __m128q, dbl_sign_msk
    v2ci __m128i_dbl_invsign,           __m128q, dbl_invsign_msk

    v2ci __m128i_dbl_inf,               __m128q, dbl_inf_msk
    v2ci __m128i_dbl_fin,               __m128q, dbl_fin_msk
    v2ci __m128i_dbl_invinf,            __m128q, dbl_invinf_msk
    v2ci __m128i_dbl_neginf,            __m128q, dbl_neginf_msk
    v2ci __m128i_dbl_nan,               __m128q, dbl_nan_msk
    v2ci __m128i_dbl_qnan,              __m128q, dbl_qnan_msk
    v2ci __m128i_dbl_negqnan,           __m128q, dbl_negqnan_msk
    v2ci __m128i_dbl_nantest,           __m128q, dbl_nantest_msk
    v2ci __m128i_dbl_abs,               __m128q, dbl_abs_msk
    v2ci __m128i_dbl_min,               __m128q, dbl_min_msk
    v2ci __m128i_dbl_max,               __m128q, dbl_max_msk
    v2ci __m128i_dbl_nofraction,        __m128q, dbl_nofraction_msk
    v2ci __m128i_dbl_mindenorm,         __m128q, dbl_mindenorm_msk
    v2ci __m128i_dbl_denormlimit,       __m128q, dbl_denormlimit_msk
    v2ci __m128i_dbl_minnormal,         __m128q, dbl_minnormal_msk
    v2ci __m128i_dbl_maxnormal,         __m128q, dbl_maxnormal_msk

    v2ci __m128i_dbl_decdig,            __m128q, dbl_decdig_msk
    v2ci __m128i_dbl_dig,               __m128q, dbl_dig_msk
    v2ci __m128i_dbl_negdecdig,         __m128q, dbl_negdecdig_msk
    v2ci __m128i_dbl_negdig,            __m128q, dbl_negdig_msk
    v2ci __m128i_dbl_eps,               __m128q, dbl_eps_msk
    v2ci __m128i_dbl_epsilon,           __m128q, dbl_epsilon_msk
    v2ci __m128i_dbl_normeps,           __m128q, dbl_normeps_msk
    v2ci __m128i_dbl_guard,             __m128q, dbl_guard_msk
    v2ci __m128i_dbl_mantpow2,          __m128q, dbl_mantpow2_msk
    v2ci __m128i_dbl_maxmantpow2,       __m128q, dbl_maxmantpow2_msk
    v2ci __m128i_dbl_mantdig,           __m128q, dbl_mantdig_msk
    v2ci __m128i_dbl_mant,              __m128q, dbl_mant_msk
    v2ci __m128i_dbl_negmantdig,        __m128q, dbl_negmantdig_msk
    v2ci __m128i_dbl_negmant,           __m128q, dbl_negmant_msk
    v2ci __m128i_dbl_maxexpo,           __m128q, dbl_maxexpo_msk
    v2ci __m128i_dbl_exposign,          __m128q, dbl_exposign_msk
    v2ci __m128i_dbl_expo,              __m128q, dbl_expo_msk
    v2ci __m128i_dbl_negmaxexpo,        __m128q, dbl_negmaxexpo_msk
    v2ci __m128i_dbl_negexposign,       __m128q, dbl_negexposign_msk
    v2ci __m128i_dbl_negexpo,           __m128q, dbl_negexpo_msk
    v2ci __m128i_dbl_subnormalexpo,     __m128q, dbl_subnormalexpo_msk
    v2ci __m128i_dbl_minexpo,           __m128q, dbl_minexpo_msk
    v2ci __m128i_dbl_maxdecexpo,        __m128q, dbl_maxdecexpo_msk
    v2ci __m128i_dbl_negmaxdecexpo,     __m128q, dbl_negmaxdecexpo_msk
    v2ci __m128i_dbl_mindecexpo,        __m128q, dbl_mindecexpo_msk
    v2ci __m128i_dbl_expofield,         __m128q, dbl_expofield_msk
    v2ci __m128i_dbl_mantfield,         __m128q, dbl_mantfield_msk
    v2ci __m128i_dbl_norm,              __m128q, dbl_norm_msk
    v2ci __m128i_dbl_radix,             __m128q, dbl_radix_msk
    v2ci __m128i_dbl_rounds,            __m128q, dbl_rounds_msk
    v2ci __m128i_dbl_subdec,            __m128q, dbl_subdec_msk
    v2ci __m128i_dbl_sqrtmax,           __m128q, dbl_sqrtmax_msk
    v2ci __m128i_dbl_smallnormal,       __m128q, dbl_smallnormal_msk

    v2ci __m128i_dbl_halfminuseps,      __m128q, dbl_halfminuseps_msk
    v2ci __m128i_dbl_trueint,           __m128q, dbl_trueint_msk

    v2ci __m128i_dbl_byte,              __m128q, dbl_byte_msk
    v2ci __m128i_dbl_byte_even,         __m128q, dbl_byte_even_msk
    v2ci __m128i_dbl_byte_odd,          __m128q, dbl_byte_odd_msk
    v2ci __m128i_dbl_4low,              __m128q, dbl_4low_msk
    v2ci __m128i_dbl_4high,             __m128q, dbl_4high_msk
    v2ci __m128i_dbl_flip4,             __m128q, dbl_flip4_msk
    v2ci __m128i_dbl_8low,              __m128q, dbl_8low_msk
    v2ci __m128i_dbl_8high,             __m128q, dbl_8high_msk
    v2ci __m128i_dbl_flip8,             __m128q, dbl_flip8_msk
    v2ci __m128i_dbl_16low,             __m128q, dbl_16low_msk
    v2ci __m128i_dbl_16high,            __m128q, dbl_16high_msk
    v2ci __m128i_dbl_flip16,            __m128q, dbl_flip16_msk
    v2ci __m128i_dbl_24low,             __m128q, dbl_24low_msk
    v2ci __m128i_dbl_24high,            __m128q, dbl_24high_msk
    v2ci __m128i_dbl_flip24,            __m128q, dbl_flip24_msk
    v2ci __m128i_dbl_28low,             __m128q, dbl_28low_msk
    v2ci __m128i_dbl_28high,            __m128q, dbl_28high_msk
    v2ci __m128i_dbl_flip28,            __m128q, dbl_flip28_msk
    v2ci __m128i_dbl_32low,             __m128q, dbl_32low_msk
    v2ci __m128i_dbl_32high,            __m128q, dbl_32high_msk
    v2ci __m128i_dbl_flip32,            __m128q, dbl_flip32_msk
    v2ci __m128i_dbl_40low,             __m128q, dbl_40low_msk
    v2ci __m128i_dbl_40high,            __m128q, dbl_40high_msk
    v2ci __m128i_dbl_flip40,            __m128q, dbl_flip40_msk
    v2ci __m128i_dbl_48low,             __m128q, dbl_48low_msk
    v2ci __m128i_dbl_48high,            __m128q, dbl_48high_msk
    v2ci __m128i_dbl_flip48,            __m128q, dbl_flip48_msk
    v2ci __m128i_dbl_56low,             __m128q, dbl_56low_msk
    v2ci __m128i_dbl_56high,            __m128q, dbl_56high_msk
    v2ci __m128i_dbl_flip56,            __m128q, dbl_flip56_msk
    v2ci __m128i_dbl_60low,             __m128q, dbl_60low_msk
    v2ci __m128i_dbl_60high,            __m128q, dbl_60high_msk
    v2ci __m128i_dbl_flip60,            __m128q, dbl_flip60_msk
    v2ci __m128i_dbl_64low,             __m128q, dbl_64low_msk
    v2ci __m128i_dbl_64high,            __m128q, dbl_64high_msk
    v2ci __m128i_dbl_flip64,            __m128q, dbl_flip64_msk

    v2ci __m128i_dbl_0,                 __m128q, dbl_0_msk
    v2ci __m128i_dbl_0d5,               __m128q, dbl_0d5_msk
    v2ci __m128i_dbl_1,                 __m128q, dbl_1_msk
    v2ci __m128i_dbl_1d5,               __m128q, dbl_1d5_msk
    v2ci __m128i_dbl_2,                 __m128q, dbl_2_msk
    v2ci __m128i_dbl_2d5,               __m128q, dbl_2d5_msk
    v2ci __m128i_dbl_3,                 __m128q, dbl_3_msk
    v2ci __m128i_dbl_4,                 __m128q, dbl_4_msk
    v2ci __m128i_dbl_5,                 __m128q, dbl_5_msk
    v2ci __m128i_dbl_6,                 __m128q, dbl_6_msk
    v2ci __m128i_dbl_7,                 __m128q, dbl_7_msk
    v2ci __m128i_dbl_8,                 __m128q, dbl_8_msk
    v2ci __m128i_dbl_9,                 __m128q, dbl_9_msk
    v2ci __m128i_dbl_10,                __m128q, dbl_10_msk
    v2ci __m128i_dbl_20,                __m128q, dbl_20_msk
    v2ci __m128i_dbl_23,                __m128q, dbl_23_msk
    v2ci __m128i_dbl_23d5,              __m128q, dbl_23d5_msk
    v2ci __m128i_dbl_24,                __m128q, dbl_24_msk
    v2ci __m128i_dbl_24d5,              __m128q, dbl_24d5_msk
    v2ci __m128i_dbl_25,                __m128q, dbl_25_msk

    v2ci __m128i_dbl_128,               __m128q, dbl_128_msk

    v2ci __m128i_dbl_253,               __m128q, dbl_253_msk

    v2ci __m128i_dbl_neg0,              __m128q, dbl_neg0_msk
    v2ci __m128i_dbl_neg1,              __m128q, dbl_neg1_msk

    v2ci __m128i_dbl_neg150,            __m128q, dbl_neg150_msk

    v2ci __m128i_dbl_bin128,            __m128q, dbl_bin128_msk
    v2ci __m128i_dbl_binneg150,         __m128q, dbl_binneg150_msk

    v2ci __m128i_dbl_maxrand,           __m128q, dbl_maxrand_msk

    v2ci __m128i_dbl_maxi8,             __m128q, dbl_maxi8_msk
    v2ci __m128i_dbl_mini8,             __m128q, dbl_mini8_msk
    v2ci __m128i_dbl_maxu8,             __m128q, dbl_maxu8_msk

    v2ci __m128i_dbl_maxi16,            __m128q, dbl_maxi16_msk
    v2ci __m128i_dbl_mini16,            __m128q, dbl_mini16_msk
    v2ci __m128i_dbl_maxu16,            __m128q, dbl_maxu16_msk

    v2ci __m128i_dbl_maxi32,            __m128q, dbl_maxi32_msk
    v2ci __m128i_dbl_mini32,            __m128q, dbl_mini32_msk
    v2ci __m128i_dbl_maxu32,            __m128q, dbl_maxu32_msk
    
    v2ci __m128i_dbl_maxi64,            __m128q, dbl_maxi64_msk
    v2ci __m128i_dbl_mini64,            __m128q, dbl_mini64_msk
    v2ci __m128i_dbl_maxu64,            __m128q, dbl_maxu64_msk

    v2ci __m128i_dbl_maxi8xu8,          __m128q, dbl_maxi8xu8_msk
    v2ci __m128i_dbl_mini8xu8,          __m128q, dbl_mini8xu8_msk
    v2ci __m128i_dbl_maxi8xu16,         __m128q, dbl_maxi8xu16_msk
    v2ci __m128i_dbl_mini8xu16,         __m128q, dbl_mini8xu16_msk

    v2ci __m128i_dbl_maxi16xu16,        __m128q, dbl_maxi16xu16_msk
    v2ci __m128i_dbl_mini16xu16,        __m128q, dbl_mini16xu16_msk
    v2ci __m128i_dbl_maxi16xu32,        __m128q, dbl_maxi16xu32_msk
    v2ci __m128i_dbl_mini16xu32,        __m128q, dbl_mini16xu32_msk
    
    v2ci __m128i_dbl_maxi32xu32,        __m128q, dbl_maxi32xu32_msk
    v2ci __m128i_dbl_mini32xu32,        __m128q, dbl_mini32xu32_msk

    v2ci __m128i_dbl_fixunsigned,       __m128q, dbl_fixunsigned_msk
    v2ci __m128i_dbl_fixunsigned32,     __m128q, dbl_fixunsigned32_msk
    v2ci __m128i_dbl_fixmaxi32,         __m128q, dbl_fixmaxi32_msk
    v2ci __m128i_dbl_fixmaxu32,         __m128q, dbl_fixmaxu32_msk
        
    v2ci __m128i_dbl_fixunsigned64,     __m128q, dbl_fixunsigned64_msk
    v2ci __m128i_dbl_fixmaxi64,         __m128q, dbl_fixmaxi64_msk
    v2ci __m128i_dbl_fixmaxu64,         __m128q, dbl_fixmaxu64_msk
    
    ;;double mask low;;
    
    v2ci2 __m128i_dbl_0e_1lshl3,            __m128q, dbl_1lshl3_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl4,            __m128q, dbl_1lshl4_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl7,            __m128q, dbl_1lshl7_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl8,            __m128q, dbl_1lshl8_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl11,           __m128q, dbl_1lshl11_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl12,           __m128q, dbl_1lshl12_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl15,           __m128q, dbl_1lshl15_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl16,           __m128q, dbl_1lshl16_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl19,           __m128q, dbl_1lshl19_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl20,           __m128q, dbl_1lshl20_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl23,           __m128q, dbl_1lshl23_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl24,           __m128q, dbl_1lshl24_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl27,           __m128q, dbl_1lshl27_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl28,           __m128q, dbl_1lshl28_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl31,           __m128q, dbl_1lshl31_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl32,           __m128q, dbl_1lshl32_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl35,           __m128q, dbl_1lshl35_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl36,           __m128q, dbl_1lshl36_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl39,           __m128q, dbl_1lshl39_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl40,           __m128q, dbl_1lshl40_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl43,           __m128q, dbl_1lshl43_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl44,           __m128q, dbl_1lshl44_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl47,           __m128q, dbl_1lshl47_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl48,           __m128q, dbl_1lshl48_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl51,           __m128q, dbl_1lshl51_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl52,           __m128q, dbl_1lshl52_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl55,           __m128q, dbl_1lshl55_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl56,           __m128q, dbl_1lshl56_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl59,           __m128q, dbl_1lshl59_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl60,           __m128q, dbl_1lshl60_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1lshl63,           __m128q, dbl_1lshl63_msk, dbl_false_msk
    
    v2ci2 __m128i_dbl_0e_neg1lshl3,         __m128q, dbl_neg1lshl3_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl4,         __m128q, dbl_neg1lshl4_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl7,         __m128q, dbl_neg1lshl7_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl8,         __m128q, dbl_neg1lshl8_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl11,        __m128q, dbl_neg1lshl11_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl12,        __m128q, dbl_neg1lshl12_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl15,        __m128q, dbl_neg1lshl15_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl16,        __m128q, dbl_neg1lshl16_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl19,        __m128q, dbl_neg1lshl19_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl20,        __m128q, dbl_neg1lshl20_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl23,        __m128q, dbl_neg1lshl23_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl24,        __m128q, dbl_neg1lshl24_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl27,        __m128q, dbl_neg1lshl27_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl28,        __m128q, dbl_neg1lshl28_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl31,        __m128q, dbl_neg1lshl31_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl32,        __m128q, dbl_neg1lshl32_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl35,        __m128q, dbl_neg1lshl35_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl36,        __m128q, dbl_neg1lshl36_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl39,        __m128q, dbl_neg1lshl39_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl40,        __m128q, dbl_neg1lshl40_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl43,        __m128q, dbl_neg1lshl43_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl44,        __m128q, dbl_neg1lshl44_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl47,        __m128q, dbl_neg1lshl47_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl48,        __m128q, dbl_neg1lshl48_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl51,        __m128q, dbl_neg1lshl51_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl52,        __m128q, dbl_neg1lshl52_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl55,        __m128q, dbl_neg1lshl55_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl56,        __m128q, dbl_neg1lshl56_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl59,        __m128q, dbl_neg1lshl59_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl60,        __m128q, dbl_neg1lshl60_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1lshl63,        __m128q, dbl_neg1lshl63_msk, dbl_false_msk
    
    v2ci2 __m128i_dbl_0e_false,             __m128q, dbl_false_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_true,              __m128q, dbl_true_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_error,             __m128q, dbl_error_msk, dbl_false_msk
    
    v2ci2 __m128i_dbl_0e_magic,             __m128q, dbl_magic_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_sign,              __m128q, dbl_sign_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_invsign,           __m128q, dbl_invsign_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_inf,               __m128q, dbl_inf_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_fin,               __m128q, dbl_fin_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_invinf,            __m128q, dbl_invinf_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neginf,            __m128q, dbl_neginf_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_nan,               __m128q, dbl_nan_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_qnan,              __m128q, dbl_qnan_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_negqnan,           __m128q, dbl_negqnan_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_nantest,           __m128q, dbl_nantest_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_abs,               __m128q, dbl_abs_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_min,               __m128q, dbl_min_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_max,               __m128q, dbl_max_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_nofraction,        __m128q, dbl_nofraction_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mindenorm,         __m128q, dbl_mindenorm_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_denormlimit,       __m128q, dbl_denormlimit_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_minnormal,         __m128q, dbl_minnormal_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_maxnormal,         __m128q, dbl_maxnormal_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_decdig,            __m128q, dbl_decdig_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_dig,               __m128q, dbl_dig_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_negdecdig,         __m128q, dbl_negdecdig_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_negdig,            __m128q, dbl_negdig_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_eps,               __m128q, dbl_eps_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_epsilon,           __m128q, dbl_epsilon_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_normeps,           __m128q, dbl_normeps_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_guard,             __m128q, dbl_guard_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mantpow2,          __m128q, dbl_mantpow2_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_maxmantpow2,       __m128q, dbl_maxmantpow2_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mantdig,           __m128q, dbl_mantdig_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mant,              __m128q, dbl_mant_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_negmantdig,        __m128q, dbl_negmantdig_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_negmant,           __m128q, dbl_negmant_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_maxexpo,           __m128q, dbl_maxexpo_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_exposign,          __m128q, dbl_exposign_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_expo,              __m128q, dbl_expo_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_negmaxexpo,        __m128q, dbl_negmaxexpo_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_negexposign,       __m128q, dbl_negexposign_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_negexpo,           __m128q, dbl_negexpo_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_subnormalexpo,     __m128q, dbl_subnormalexpo_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_minexpo,           __m128q, dbl_minexpo_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_maxdecexpo,        __m128q, dbl_maxdecexpo_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_negmaxdecexpo,     __m128q, dbl_negmaxdecexpo_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mindecexpo,        __m128q, dbl_mindecexpo_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_expofield,         __m128q, dbl_expofield_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mantfield,         __m128q, dbl_mantfield_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_norm,              __m128q, dbl_norm_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_radix,             __m128q, dbl_radix_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_rounds,            __m128q, dbl_rounds_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_subdec,            __m128q, dbl_subdec_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_sqrtmax,           __m128q, dbl_sqrtmax_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_smallnormal,       __m128q, dbl_smallnormal_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_halfminuseps,      __m128q, dbl_halfminuseps_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_trueint,           __m128q, dbl_trueint_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_byte,              __m128q, dbl_byte_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_byte_even,         __m128q, dbl_byte_even_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_byte_odd,          __m128q, dbl_byte_odd_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_4low,              __m128q, dbl_4low_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_4high,             __m128q, dbl_4high_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_flip4,             __m128q, dbl_flip4_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_8low,              __m128q, dbl_8low_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_8high,             __m128q, dbl_8high_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_flip8,             __m128q, dbl_flip8_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_16low,             __m128q, dbl_16low_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_16high,            __m128q, dbl_16high_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_flip16,            __m128q, dbl_flip16_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_24low,             __m128q, dbl_24low_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_24high,            __m128q, dbl_24high_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_flip24,            __m128q, dbl_flip24_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_28low,             __m128q, dbl_28low_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_28high,            __m128q, dbl_28high_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_flip28,            __m128q, dbl_flip28_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_32low,             __m128q, dbl_32low_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_32high,            __m128q, dbl_32high_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_flip32,            __m128q, dbl_flip32_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_40low,             __m128q, dbl_40low_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_40high,            __m128q, dbl_40high_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_flip40,            __m128q, dbl_flip40_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_48low,             __m128q, dbl_48low_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_48high,            __m128q, dbl_48high_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_flip48,            __m128q, dbl_flip48_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_56low,             __m128q, dbl_56low_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_56high,            __m128q, dbl_56high_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_flip56,            __m128q, dbl_flip56_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_60low,             __m128q, dbl_60low_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_60high,            __m128q, dbl_60high_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_flip60,            __m128q, dbl_flip60_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_64low,             __m128q, dbl_64low_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_64high,            __m128q, dbl_64high_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_flip64,            __m128q, dbl_flip64_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_0,                 __m128q, dbl_0_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_0d5,               __m128q, dbl_0d5_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1,                 __m128q, dbl_1_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_1d5,               __m128q, dbl_1d5_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_2,                 __m128q, dbl_2_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_2d5,               __m128q, dbl_2d5_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_3,                 __m128q, dbl_3_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_4,                 __m128q, dbl_4_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_5,                 __m128q, dbl_5_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_6,                 __m128q, dbl_6_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_7,                 __m128q, dbl_7_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_8,                 __m128q, dbl_8_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_9,                 __m128q, dbl_9_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_10,                __m128q, dbl_10_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_20,                __m128q, dbl_20_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_23,                __m128q, dbl_23_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_23d5,              __m128q, dbl_23d5_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_24,                __m128q, dbl_24_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_24d5,              __m128q, dbl_24d5_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_25,                __m128q, dbl_25_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_128,               __m128q, dbl_128_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_253,               __m128q, dbl_253_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_neg0,              __m128q, dbl_neg0_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_neg1,              __m128q, dbl_neg1_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_neg150,            __m128q, dbl_neg150_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_bin128,            __m128q, dbl_bin128_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_binneg150,         __m128q, dbl_binneg150_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_maxrand,           __m128q, dbl_maxrand_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_maxi8,             __m128q, dbl_maxi8_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mini8,             __m128q, dbl_mini8_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_maxu8,             __m128q, dbl_maxu8_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_maxi16,            __m128q, dbl_maxi16_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mini16,            __m128q, dbl_mini16_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_maxu16,            __m128q, dbl_maxu16_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_maxi32,            __m128q, dbl_maxi32_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mini32,            __m128q, dbl_mini32_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_maxu32,            __m128q, dbl_maxu32_msk, dbl_false_msk
    
    v2ci2 __m128i_dbl_0e_maxi64,            __m128q, dbl_maxi64_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mini64,            __m128q, dbl_mini64_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_maxu64,            __m128q, dbl_maxu64_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_maxi8xu8,          __m128q, dbl_maxi8xu8_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mini8xu8,          __m128q, dbl_mini8xu8_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_maxi8xu16,         __m128q, dbl_maxi8xu16_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mini8xu16,         __m128q, dbl_mini8xu16_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_maxi16xu16,        __m128q, dbl_maxi16xu16_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mini16xu16,        __m128q, dbl_mini16xu16_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_maxi16xu32,        __m128q, dbl_maxi16xu32_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mini16xu32,        __m128q, dbl_mini16xu32_msk, dbl_false_msk
    
    v2ci2 __m128i_dbl_0e_maxi32xu32,        __m128q, dbl_maxi32xu32_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_mini32xu32,        __m128q, dbl_mini32xu32_msk, dbl_false_msk

    v2ci2 __m128i_dbl_0e_fixunsigned,       __m128q, dbl_fixunsigned_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_fixunsigned32,     __m128q, dbl_fixunsigned32_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_fixmaxi32,         __m128q, dbl_fixmaxi32_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_fixmaxu32,         __m128q, dbl_fixmaxu32_msk, dbl_false_msk
        
    v2ci2 __m128i_dbl_0e_fixunsigned64,     __m128q, dbl_fixunsigned64_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_fixmaxi64,         __m128q, dbl_fixmaxi64_msk, dbl_false_msk
    v2ci2 __m128i_dbl_0e_fixmaxu64,         __m128q, dbl_fixmaxu64_msk, dbl_false_msk

    ;;double;;

;;             sincos template, double precision
    v2ci __m128d_P0sin,                 __m128d, (-1.66666666666666307295e-01)
    v2ci __m128d_P1sin,                 __m128d, (8.33333333332211858878e-03)
    v2ci __m128d_P2sin,                 __m128d, (-1.98412698295895385996e-04)
    v2ci __m128d_P3sin,                 __m128d, (2.75573136213857245213e-06)
    v2ci __m128d_P4sin,                 __m128d, (-2.50507477628578072866e-08)
    v2ci __m128d_P5sin,                 __m128d, (1.58962301576546568060e-010)

    v2ci __m128d_P0cos,                 __m128d, (4.16666666666665929218e-02)
    v2ci __m128d_P1cos,                 __m128d, (-1.38888888888730564116e-03)
    v2ci __m128d_P2cos,                 __m128d, (2.48015872888517045348e-05)
    v2ci __m128d_P3cos,                 __m128d, (-2.75573141792967388112e-07)
    v2ci __m128d_P4cos,                 __m128d, (2.08757008419747316778e-09)
    v2ci __m128d_P5cos,                 __m128d, (-1.13585365213876817300e-011)

    v2ci __m128d_DP1,                   __m128d, 1.570796310901641845703125
    v2ci __m128d_DP2,                   __m128d, 0.00000001589325471229585673428
    v2ci __m128d_DP3,                   __m128d, (6.12323399573676588614e-017)

    v2ci __m128d_1lshl3,                __m128d, dbl_1lshl3
    v2ci __m128d_1lshl4,                __m128d, dbl_1lshl4
    v2ci __m128d_1lshl7,                __m128d, dbl_1lshl7
    v2ci __m128d_1lshl8,                __m128d, dbl_1lshl8
    v2ci __m128d_1lshl11,               __m128d, dbl_1lshl11
    v2ci __m128d_1lshl12,               __m128d, dbl_1lshl12
    v2ci __m128d_1lshl15,               __m128d, dbl_1lshl15
    v2ci __m128d_1lshl16,               __m128d, dbl_1lshl16
    v2ci __m128d_1lshl19,               __m128d, dbl_1lshl19
    v2ci __m128d_1lshl20,               __m128d, dbl_1lshl20
    v2ci __m128d_1lshl23,               __m128d, dbl_1lshl23
    v2ci __m128d_1lshl24,               __m128d, dbl_1lshl24
    v2ci __m128d_1lshl27,               __m128d, dbl_1lshl27
    v2ci __m128d_1lshl28,               __m128d, dbl_1lshl28
    v2ci __m128d_1lshl31,               __m128d, dbl_1lshl31
    v2ci __m128d_1lshl32,               __m128d, dbl_1lshl32
    v2ci __m128d_1lshl35,               __m128d, dbl_1lshl35
    v2ci __m128d_1lshl36,               __m128d, dbl_1lshl36
    v2ci __m128d_1lshl39,               __m128d, dbl_1lshl39
    v2ci __m128d_1lshl40,               __m128d, dbl_1lshl40
    v2ci __m128d_1lshl43,               __m128d, dbl_1lshl43
    v2ci __m128d_1lshl44,               __m128d, dbl_1lshl44
    v2ci __m128d_1lshl47,               __m128d, dbl_1lshl47
    v2ci __m128d_1lshl48,               __m128d, dbl_1lshl48
    v2ci __m128d_1lshl51,               __m128d, dbl_1lshl51
    v2ci __m128d_1lshl52,               __m128d, dbl_1lshl52
    v2ci __m128d_1lshl55,               __m128d, dbl_1lshl55
    v2ci __m128d_1lshl56,               __m128d, dbl_1lshl56
    v2ci __m128d_1lshl59,               __m128d, dbl_1lshl59
    v2ci __m128d_1lshl60,               __m128d, dbl_1lshl60
    v2ci __m128d_1lshl63,               __m128d, dbl_1lshl63
    
    v2ci __m128d_neg1lshl3,             __m128d, dbl_neg1lshl3
    v2ci __m128d_neg1lshl4,             __m128d, dbl_neg1lshl4
    v2ci __m128d_neg1lshl7,             __m128d, dbl_neg1lshl7
    v2ci __m128d_neg1lshl8,             __m128d, dbl_neg1lshl8
    v2ci __m128d_neg1lshl11,            __m128d, dbl_neg1lshl11
    v2ci __m128d_neg1lshl12,            __m128d, dbl_neg1lshl12
    v2ci __m128d_neg1lshl15,            __m128d, dbl_neg1lshl15
    v2ci __m128d_neg1lshl16,            __m128d, dbl_neg1lshl16
    v2ci __m128d_neg1lshl19,            __m128d, dbl_neg1lshl19
    v2ci __m128d_neg1lshl20,            __m128d, dbl_neg1lshl20
    v2ci __m128d_neg1lshl23,            __m128d, dbl_neg1lshl23
    v2ci __m128d_neg1lshl24,            __m128d, dbl_neg1lshl24
    v2ci __m128d_neg1lshl27,            __m128d, dbl_neg1lshl27
    v2ci __m128d_neg1lshl28,            __m128d, dbl_neg1lshl28
    v2ci __m128d_neg1lshl31,            __m128d, dbl_neg1lshl31
    v2ci __m128d_neg1lshl32,            __m128d, dbl_neg1lshl32
    v2ci __m128d_neg1lshl35,            __m128d, dbl_neg1lshl35
    v2ci __m128d_neg1lshl36,            __m128d, dbl_neg1lshl36
    v2ci __m128d_neg1lshl39,            __m128d, dbl_neg1lshl39
    v2ci __m128d_neg1lshl40,            __m128d, dbl_neg1lshl40
    v2ci __m128d_neg1lshl43,            __m128d, dbl_neg1lshl43
    v2ci __m128d_neg1lshl44,            __m128d, dbl_neg1lshl44
    v2ci __m128d_neg1lshl47,            __m128d, dbl_neg1lshl47
    v2ci __m128d_neg1lshl48,            __m128d, dbl_neg1lshl48
    v2ci __m128d_neg1lshl51,            __m128d, dbl_neg1lshl51
    v2ci __m128d_neg1lshl52,            __m128d, dbl_neg1lshl52
    v2ci __m128d_neg1lshl55,            __m128d, dbl_neg1lshl55
    v2ci __m128d_neg1lshl56,            __m128d, dbl_neg1lshl56
    v2ci __m128d_neg1lshl59,            __m128d, dbl_neg1lshl59
    v2ci __m128d_neg1lshl60,            __m128d, dbl_neg1lshl60
    v2ci __m128d_neg1lshl63,            __m128d, dbl_neg1lshl63
    
    v2ci __m128d_false,                 __m128q, dbl_false
    v2ci __m128d_true,                  __m128q, dbl_true
    v2ci __m128d_error,                 __m128q, dbl_error
    
    v2ci __m128d_magic,                 __m128q, dbl_magic
    v2ci __m128d_sign,                  __m128q, dbl_sign
    v2ci __m128d_invsign,               __m128q, dbl_invsign
    
    v2ci __m128d_inf,                   __m128q, dbl_inf
    v2ci __m128d_fin,                   __m128q, dbl_fin
    v2ci __m128d_invinf,                __m128q, dbl_invinf
    v2ci __m128d_neginf,                __m128q, dbl_neginf
    v2ci __m128d_nan,                   __m128q, dbl_nan
    v2ci __m128d_qnan,                  __m128q, dbl_qnan
    v2ci __m128d_negqnan,               __m128q, dbl_negqnan
    v2ci __m128d_nantest,               __m128q, dbl_nantest
    v2ci __m128d_abs,                   __m128q, dbl_abs
    v2ci __m128d_min,                   __m128d, dbl_min
    v2ci __m128d_max,                   __m128d, dbl_max
    v2ci __m128d_nofraction,            __m128d, dbl_nofraction
    v2ci __m128d_mindenorm,             __m128d, dbl_mindenorm
    v2ci __m128d_denormlimit,           __m128d, dbl_denormlimit
    v2ci __m128d_minnormal,             __m128d, dbl_minnormal
    v2ci __m128d_maxnormal,             __m128d, dbl_maxnormal

    v2ci __m128d_decdig,                __m128d, dbl_decdig
    v2ci __m128d_dig,                   __m128d, dbl_dig
    v2ci __m128d_negdecdig,             __m128d, dbl_negdecdig
    v2ci __m128d_negdig,                __m128d, dbl_negdig
    v2ci __m128d_eps,                   __m128d, dbl_eps
    v2ci __m128d_epsilon,               __m128d, dbl_epsilon
    v2ci __m128d_normeps,               __m128d, dbl_normeps
    v2ci __m128d_guard,                 __m128d, dbl_guard
    v2ci __m128d_mantpow2,              __m128d, dbl_mantpow2
    v2ci __m128d_maxmantpow2,           __m128d, dbl_maxmantpow2
    v2ci __m128d_mantdig,               __m128d, dbl_mantdig
    v2ci __m128d_mant,                  __m128d, dbl_mant
    v2ci __m128d_negmantdig,            __m128d, dbl_negmantdig
    v2ci __m128d_negmant,               __m128d, dbl_negmant
    v2ci __m128d_maxexpo,               __m128d, dbl_maxexpo
    v2ci __m128d_exposign,              __m128d, dbl_exposign
    v2ci __m128d_expo,                  __m128d, dbl_expo
    v2ci __m128d_negmaxexpo,            __m128d, dbl_negmaxexpo
    v2ci __m128d_negexposign,           __m128d, dbl_negexposign
    v2ci __m128d_negexpo,               __m128d, dbl_negexpo
    v2ci __m128d_subnormalexpo,         __m128d, dbl_subnormalexpo
    v2ci __m128d_minexpo,               __m128d, dbl_minexpo
    v2ci __m128d_maxdecexpo,            __m128d, dbl_maxdecexpo
    v2ci __m128d_negmaxdecexpo,         __m128d, dbl_negmaxdecexpo
    v2ci __m128d_mindecexpo,            __m128d, dbl_mindecexpo
    v2ci __m128d_expofield,             __m128d, dbl_expofield
    v2ci __m128d_mantfield,             __m128d, dbl_mantfield
    v2ci __m128d_norm,                  __m128d, dbl_norm
    v2ci __m128d_radix,                 __m128d, dbl_radix
    v2ci __m128d_rounds,                __m128d, dbl_rounds
    v2ci __m128d_subdec,                __m128d, dbl_subdec
    v2ci __m128d_sqrtmax,               __m128d, dbl_sqrtmax
    v2ci __m128d_smallnormal,           __m128d, dbl_smallnormal

    v2ci __m128d_halfminuseps,          __m128d, dbl_halfminuseps
    v2ci __m128d_trueint,               __m128d, dbl_trueint
    
    v2ci __m128d_byte,                  __m128d, dbl_byte
    v2ci __m128d_byte_even,             __m128d, dbl_byte_even
    v2ci __m128d_byte_odd,              __m128d, dbl_byte_odd
    v2ci __m128d_4low,                  __m128d, dbl_4low
    v2ci __m128d_4high,                 __m128d, dbl_4high
    v2ci __m128d_flip4,                 __m128d, dbl_flip4
    v2ci __m128d_8low,                  __m128d, dbl_8low
    v2ci __m128d_8high,                 __m128d, dbl_8high
    v2ci __m128d_flip8,                 __m128d, dbl_flip8
    v2ci __m128d_16low,                 __m128d, dbl_16low
    v2ci __m128d_16high,                __m128d, dbl_16high
    v2ci __m128d_flip16,                __m128d, dbl_flip16
    v2ci __m128d_24low,                 __m128d, dbl_24low
    v2ci __m128d_24high,                __m128d, dbl_24high
    v2ci __m128d_flip24,                __m128d, dbl_flip24
    v2ci __m128d_28low,                 __m128d, dbl_28low
    v2ci __m128d_28high,                __m128d, dbl_28high
    v2ci __m128d_flip28,                __m128d, dbl_flip28
    v2ci __m128d_32low,                 __m128d, dbl_32low
    v2ci __m128d_32high,                __m128d, dbl_32high
    v2ci __m128d_flip32,                __m128d, dbl_flip32
    v2ci __m128d_40low,                 __m128d, dbl_40low
    v2ci __m128d_40high,                __m128d, dbl_40high
    v2ci __m128d_flip40,                __m128d, dbl_flip40
    v2ci __m128d_48low,                 __m128d, dbl_48low
    v2ci __m128d_48high,                __m128d, dbl_48high
    v2ci __m128d_flip48,                __m128d, dbl_flip48
    v2ci __m128d_56low,                 __m128d, dbl_56low
    v2ci __m128d_56high,                __m128d, dbl_56high
    v2ci __m128d_flip56,                __m128d, dbl_flip56
    v2ci __m128d_60low,                 __m128d, dbl_60low
    v2ci __m128d_60high,                __m128d, dbl_60high
    v2ci __m128d_flip60,                __m128d, dbl_flip60
    v2ci __m128d_64low,                 __m128d, dbl_64low
    v2ci __m128d_64high,                __m128d, dbl_64high
    v2ci __m128d_flip64,                __m128d, dbl_flip64

    v2ci __m128d_0,                     __m128d, dbl_0
    v2ci __m128d_0d0001,                __m128d, dbl_0d0001
    v2ci __m128d_0d0002,                __m128d, dbl_0d0002
    v2ci __m128d_0d0003,                __m128d, dbl_0d0003
    v2ci __m128d_0d0004,                __m128d, dbl_0d0004
    v2ci __m128d_0d0005,                __m128d, dbl_0d0005
    v2ci __m128d_0d0006,                __m128d, dbl_0d0006
    v2ci __m128d_0d0007,                __m128d, dbl_0d0007
    v2ci __m128d_0d0008,                __m128d, dbl_0d0008
    v2ci __m128d_0d0009,                __m128d, dbl_0d0009
    v2ci __m128d_0d001,                 __m128d, dbl_0d001
    v2ci __m128d_0d002,                 __m128d, dbl_0d002
    v2ci __m128d_0d003,                 __m128d, dbl_0d003
    v2ci __m128d_0d004,                 __m128d, dbl_0d004
    v2ci __m128d_0d005,                 __m128d, dbl_0d005
    v2ci __m128d_0d006,                 __m128d, dbl_0d006
    v2ci __m128d_0d007,                 __m128d, dbl_0d007
    v2ci __m128d_0d008,                 __m128d, dbl_0d008
    v2ci __m128d_0d009,                 __m128d, dbl_0d009
    v2ci __m128d_0d01,                  __m128d, dbl_0d01
    v2ci __m128d_0d02,                  __m128d, dbl_0d02
    v2ci __m128d_0d025,                 __m128d, dbl_0d025
    v2ci __m128d_0d03,                  __m128d, dbl_0d03
    v2ci __m128d_0d04,                  __m128d, dbl_0d04
    v2ci __m128d_0d05,                  __m128d, dbl_0d05
    v2ci __m128d_0d06,                  __m128d, dbl_0d06
    v2ci __m128d_0d07,                  __m128d, dbl_0d07
    v2ci __m128d_0d08,                  __m128d, dbl_0d08
    v2ci __m128d_0d09,                  __m128d, dbl_0d09
    v2ci __m128d_0d1,                   __m128d, dbl_0d1
    v2ci __m128d_0d2,                   __m128d, dbl_0d2
    v2ci __m128d_0d25,                  __m128d, dbl_0d25
    v2ci __m128d_0d3,                   __m128d, dbl_0d3
    v2ci __m128d_0d4,                   __m128d, dbl_0d4
    v2ci __m128d_0d5,                   __m128d, dbl_0d5
    v2ci __m128d_0d6,                   __m128d, dbl_0d6
    v2ci __m128d_0d7,                   __m128d, dbl_0d7
    v2ci __m128d_0d8,                   __m128d, dbl_0d8
    v2ci __m128d_0d9,                   __m128d, dbl_0d9
    v2ci __m128d_1,                     __m128d, dbl_1
    v2ci __m128d_1d25,                  __m128d, dbl_1d25
    v2ci __m128d_1d5,                   __m128d, dbl_1d5
    v2ci __m128d_2,                     __m128d, dbl_2
    v2ci __m128d_2d25,                  __m128d, dbl_2d25
    v2ci __m128d_2d5,                   __m128d, dbl_2d5
    v2ci __m128d_3,                     __m128d, dbl_3
    v2ci __m128d_3d25,                  __m128d, dbl_3d25
    v2ci __m128d_3d5,                   __m128d, dbl_3d5
    v2ci __m128d_4,                     __m128d, dbl_4
    v2ci __m128d_4d25,                  __m128d, dbl_4d25
    v2ci __m128d_4d5,                   __m128d, dbl_4d5
    v2ci __m128d_5,                     __m128d, dbl_5
    v2ci __m128d_5d25,                  __m128d, dbl_5d25
    v2ci __m128d_5d5,                   __m128d, dbl_5d5
    v2ci __m128d_6,                     __m128d, dbl_6
    v2ci __m128d_6d25,                  __m128d, dbl_6d25
    v2ci __m128d_6d5,                   __m128d, dbl_6d5
    v2ci __m128d_7,                     __m128d, dbl_7
    v2ci __m128d_7d25,                  __m128d, dbl_7d25
    v2ci __m128d_7d5,                   __m128d, dbl_7d5
    v2ci __m128d_8,                     __m128d, dbl_8
    v2ci __m128d_8d25,                  __m128d, dbl_8d25
    v2ci __m128d_8d5,                   __m128d, dbl_8d5
    v2ci __m128d_9,                     __m128d, dbl_9
    v2ci __m128d_9d25,                  __m128d, dbl_9d25
    v2ci __m128d_9d5,                   __m128d, dbl_9d5
    v2ci __m128d_10,                    __m128d, dbl_10
    v2ci __m128d_11,                    __m128d, dbl_11
    v2ci __m128d_12,                    __m128d, dbl_12
    v2ci __m128d_13,                    __m128d, dbl_13
    v2ci __m128d_14,                    __m128d, dbl_14
    v2ci __m128d_15,                    __m128d, dbl_15
    v2ci __m128d_16,                    __m128d, dbl_16
    v2ci __m128d_17,                    __m128d, dbl_17
    v2ci __m128d_18,                    __m128d, dbl_18
    v2ci __m128d_19,                    __m128d, dbl_19
    v2ci __m128d_20,                    __m128d, dbl_20
    v2ci __m128d_21,                    __m128d, dbl_21
    v2ci __m128d_22,                    __m128d, dbl_22
    v2ci __m128d_23,                    __m128d, dbl_23
    v2ci __m128d_24,                    __m128d, dbl_24
    v2ci __m128d_24d5,                  __m128d, dbl_24d5
    v2ci __m128d_25,                    __m128d, dbl_25
    v2ci __m128d_26,                    __m128d, dbl_26
    v2ci __m128d_27,                    __m128d, dbl_27
    v2ci __m128d_28,                    __m128d, dbl_28
    v2ci __m128d_29,                    __m128d, dbl_29
    v2ci __m128d_30,                    __m128d, dbl_30
    v2ci __m128d_31,                    __m128d, dbl_31
    v2ci __m128d_32,                    __m128d, dbl_32
    v2ci __m128d_33,                    __m128d, dbl_33
    v2ci __m128d_34,                    __m128d, dbl_34
    v2ci __m128d_35,                    __m128d, dbl_35
    v2ci __m128d_36,                    __m128d, dbl_36
    v2ci __m128d_37,                    __m128d, dbl_37
    v2ci __m128d_38,                    __m128d, dbl_38
    v2ci __m128d_39,                    __m128d, dbl_39
    v2ci __m128d_40,                    __m128d, dbl_40
    v2ci __m128d_41,                    __m128d, dbl_41
    v2ci __m128d_42,                    __m128d, dbl_42
    v2ci __m128d_43,                    __m128d, dbl_43
    v2ci __m128d_44,                    __m128d, dbl_44
    v2ci __m128d_45,                    __m128d, dbl_45
    v2ci __m128d_46,                    __m128d, dbl_46
    v2ci __m128d_47,                    __m128d, dbl_47
    v2ci __m128d_48,                    __m128d, dbl_48
    v2ci __m128d_49,                    __m128d, dbl_49
    v2ci __m128d_50,                    __m128d, dbl_50
    v2ci __m128d_51,                    __m128d, dbl_51
    v2ci __m128d_52,                    __m128d, dbl_52
    v2ci __m128d_53,                    __m128d, dbl_53
    v2ci __m128d_54,                    __m128d, dbl_54
    v2ci __m128d_55,                    __m128d, dbl_55
    v2ci __m128d_56,                    __m128d, dbl_56
    v2ci __m128d_57,                    __m128d, dbl_57
    v2ci __m128d_58,                    __m128d, dbl_58
    v2ci __m128d_59,                    __m128d, dbl_59
    v2ci __m128d_60,                    __m128d, dbl_60
    v2ci __m128d_61,                    __m128d, dbl_61
    v2ci __m128d_62,                    __m128d, dbl_62
    v2ci __m128d_63,                    __m128d, dbl_63
    v2ci __m128d_64,                    __m128d, dbl_64
    v2ci __m128d_65,                    __m128d, dbl_65
    v2ci __m128d_66,                    __m128d, dbl_66
    v2ci __m128d_67,                    __m128d, dbl_67
    v2ci __m128d_68,                    __m128d, dbl_68
    v2ci __m128d_69,                    __m128d, dbl_69
    v2ci __m128d_70,                    __m128d, dbl_70
    v2ci __m128d_71,                    __m128d, dbl_71
    v2ci __m128d_72,                    __m128d, dbl_72
    v2ci __m128d_73,                    __m128d, dbl_73
    v2ci __m128d_74,                    __m128d, dbl_74
    v2ci __m128d_75,                    __m128d, dbl_75
    v2ci __m128d_76,                    __m128d, dbl_76
    v2ci __m128d_77,                    __m128d, dbl_77
    v2ci __m128d_78,                    __m128d, dbl_78
    v2ci __m128d_79,                    __m128d, dbl_79
    v2ci __m128d_80,                    __m128d, dbl_80
    v2ci __m128d_81,                    __m128d, dbl_81
    v2ci __m128d_82,                    __m128d, dbl_82
    v2ci __m128d_83,                    __m128d, dbl_83
    v2ci __m128d_84,                    __m128d, dbl_84
    v2ci __m128d_85,                    __m128d, dbl_85
    v2ci __m128d_86,                    __m128d, dbl_86
    v2ci __m128d_87,                    __m128d, dbl_87
    v2ci __m128d_88,                    __m128d, dbl_88
    v2ci __m128d_89,                    __m128d, dbl_89
    v2ci __m128d_90,                    __m128d, dbl_90
    v2ci __m128d_91,                    __m128d, dbl_91
    v2ci __m128d_92,                    __m128d, dbl_92
    v2ci __m128d_93,                    __m128d, dbl_93
    v2ci __m128d_94,                    __m128d, dbl_94
    v2ci __m128d_95,                    __m128d, dbl_95
    v2ci __m128d_96,                    __m128d, dbl_96
    v2ci __m128d_97,                    __m128d, dbl_97
    v2ci __m128d_98,                    __m128d, dbl_98
    v2ci __m128d_99,                    __m128d, dbl_99
    v2ci __m128d_100,                   __m128d, dbl_100
    v2ci __m128d_125,                   __m128d, dbl_125
    v2ci __m128d_126,                   __m128d, dbl_126
    v2ci __m128d_127,                   __m128d, dbl_127
    v2ci __m128d_128,                   __m128d, dbl_128
    v2ci __m128d_140,                   __m128d, dbl_140
    v2ci __m128d_145,                   __m128d, dbl_145
    v2ci __m128d_150,                   __m128d, dbl_150
    v2ci __m128d_180,                   __m128d, dbl_180
    v2ci __m128d_253,                   __m128d, dbl_253
    v2ci __m128d_254,                   __m128d, dbl_254
    v2ci __m128d_255,                   __m128d, dbl_255
    v2ci __m128d_256,                   __m128d, dbl_256
    v2ci __m128d_360,                   __m128d, dbl_360
    v2ci __m128d_511,                   __m128d, dbl_511
    v2ci __m128d_512,                   __m128d, dbl_512
    v2ci __m128d_513,                   __m128d, dbl_513
    v2ci __m128d_1023,                  __m128d, dbl_1023
    v2ci __m128d_1024,                  __m128d, dbl_1024
    v2ci __m128d_1025,                  __m128d, dbl_1025

    v2ci __m128d_32767,                 __m128d, dbl_32767
    v2ci __m128d_32768,                 __m128d, dbl_32768
    v2ci __m128d_65535,                 __m128d, dbl_65535
    v2ci __m128d_65536,                 __m128d, dbl_65536
    v2ci __m128d_2147483647,            __m128d, dbl_2147483647
    v2ci __m128d_2147483648,            __m128d, dbl_2147483648
    v2ci __m128d_4294967295,            __m128d, dbl_4294967295
    v2ci __m128d_4294967296,            __m128d, dbl_4294967296
    
    v2ci __m128d_neg0,                  __m128d, dbl_neg0
    v2ci __m128d_neg0d0001,             __m128d, dbl_neg0d0001
    v2ci __m128d_neg0d0002,             __m128d, dbl_neg0d0002
    v2ci __m128d_neg0d0003,             __m128d, dbl_neg0d0003
    v2ci __m128d_neg0d0004,             __m128d, dbl_neg0d0004
    v2ci __m128d_neg0d0005,             __m128d, dbl_neg0d0005
    v2ci __m128d_neg0d0006,             __m128d, dbl_neg0d0006
    v2ci __m128d_neg0d0007,             __m128d, dbl_neg0d0007
    v2ci __m128d_neg0d0008,             __m128d, dbl_neg0d0008
    v2ci __m128d_neg0d0009,             __m128d, dbl_neg0d0009
    v2ci __m128d_neg0d001,              __m128d, dbl_neg0d001
    v2ci __m128d_neg0d002,              __m128d, dbl_neg0d002
    v2ci __m128d_neg0d003,              __m128d, dbl_neg0d003
    v2ci __m128d_neg0d004,              __m128d, dbl_neg0d004
    v2ci __m128d_neg0d005,              __m128d, dbl_neg0d005
    v2ci __m128d_neg0d006,              __m128d, dbl_neg0d006
    v2ci __m128d_neg0d007,              __m128d, dbl_neg0d007
    v2ci __m128d_neg0d008,              __m128d, dbl_neg0d008
    v2ci __m128d_neg0d009,              __m128d, dbl_neg0d009
    v2ci __m128d_neg0d01,               __m128d, dbl_neg0d01
    v2ci __m128d_neg0d02,               __m128d, dbl_neg0d02
    v2ci __m128d_neg0d025,              __m128d, dbl_neg0d025
    v2ci __m128d_neg0d03,               __m128d, dbl_neg0d03
    v2ci __m128d_neg0d04,               __m128d, dbl_neg0d04
    v2ci __m128d_neg0d05,               __m128d, dbl_neg0d05
    v2ci __m128d_neg0d06,               __m128d, dbl_neg0d06
    v2ci __m128d_neg0d07,               __m128d, dbl_neg0d07
    v2ci __m128d_neg0d08,               __m128d, dbl_neg0d08
    v2ci __m128d_neg0d09,               __m128d, dbl_neg0d09
    v2ci __m128d_neg0d1,                __m128d, dbl_neg0d1
    v2ci __m128d_neg0d2,                __m128d, dbl_neg0d2
    v2ci __m128d_neg0d25,               __m128d, dbl_neg0d25
    v2ci __m128d_neg0d3,                __m128d, dbl_neg0d3
    v2ci __m128d_neg0d4,                __m128d, dbl_neg0d4
    v2ci __m128d_neg0d5,                __m128d, dbl_neg0d5
    v2ci __m128d_neg0d6,                __m128d, dbl_neg0d6
    v2ci __m128d_neg0d7,                __m128d, dbl_neg0d7
    v2ci __m128d_neg0d8,                __m128d, dbl_neg0d8
    v2ci __m128d_neg0d9,                __m128d, dbl_neg0d9
    v2ci __m128d_neg1,                  __m128d, dbl_neg1
    v2ci __m128d_neg1d25,               __m128d, dbl_neg1d25
    v2ci __m128d_neg1d5,                __m128d, dbl_neg1d5
    v2ci __m128d_neg2,                  __m128d, dbl_neg2
    v2ci __m128d_neg2d25,               __m128d, dbl_neg2d25
    v2ci __m128d_neg2d5,                __m128d, dbl_neg2d5
    v2ci __m128d_neg3,                  __m128d, dbl_neg3
    v2ci __m128d_neg3d25,               __m128d, dbl_neg3d25
    v2ci __m128d_neg3d5,                __m128d, dbl_neg3d5
    v2ci __m128d_neg4,                  __m128d, dbl_neg4
    v2ci __m128d_neg4d25,               __m128d, dbl_neg4d25
    v2ci __m128d_neg4d5,                __m128d, dbl_neg4d5
    v2ci __m128d_neg5,                  __m128d, dbl_neg5
    v2ci __m128d_neg5d25,               __m128d, dbl_neg5d25
    v2ci __m128d_neg5d5,                __m128d, dbl_neg5d5
    v2ci __m128d_neg6,                  __m128d, dbl_neg6
    v2ci __m128d_neg6d25,               __m128d, dbl_neg6d25
    v2ci __m128d_neg6d5,                __m128d, dbl_neg6d5
    v2ci __m128d_neg7,                  __m128d, dbl_neg7
    v2ci __m128d_neg7d25,               __m128d, dbl_neg7d25
    v2ci __m128d_neg7d5,                __m128d, dbl_neg7d5
    v2ci __m128d_neg8,                  __m128d, dbl_neg8
    v2ci __m128d_neg8d25,               __m128d, dbl_neg8d25
    v2ci __m128d_neg8d5,                __m128d, dbl_neg8d5
    v2ci __m128d_neg9,                  __m128d, dbl_neg9
    v2ci __m128d_neg9d25,               __m128d, dbl_neg9d25
    v2ci __m128d_neg9d5,                __m128d, dbl_neg9d5
    v2ci __m128d_neg10,                 __m128d, dbl_neg10
    v2ci __m128d_neg11,                 __m128d, dbl_neg11
    v2ci __m128d_neg12,                 __m128d, dbl_neg12
    v2ci __m128d_neg13,                 __m128d, dbl_neg13
    v2ci __m128d_neg14,                 __m128d, dbl_neg14
    v2ci __m128d_neg15,                 __m128d, dbl_neg15
    v2ci __m128d_neg16,                 __m128d, dbl_neg16
    v2ci __m128d_neg17,                 __m128d, dbl_neg17
    v2ci __m128d_neg18,                 __m128d, dbl_neg18
    v2ci __m128d_neg19,                 __m128d, dbl_neg19
    v2ci __m128d_neg20,                 __m128d, dbl_neg20
    v2ci __m128d_neg21,                 __m128d, dbl_neg21
    v2ci __m128d_neg22,                 __m128d, dbl_neg22
    v2ci __m128d_neg23,                 __m128d, dbl_neg23
    v2ci __m128d_neg24,                 __m128d, dbl_neg24
    v2ci __m128d_neg24d5,               __m128d, dbl_neg24d5
    v2ci __m128d_neg25,                 __m128d, dbl_neg25
    v2ci __m128d_neg26,                 __m128d, dbl_neg26
    v2ci __m128d_neg27,                 __m128d, dbl_neg27
    v2ci __m128d_neg28,                 __m128d, dbl_neg28
    v2ci __m128d_neg29,                 __m128d, dbl_neg29
    v2ci __m128d_neg30,                 __m128d, dbl_neg30
    v2ci __m128d_neg31,                 __m128d, dbl_neg31
    v2ci __m128d_neg32,                 __m128d, dbl_neg32
    v2ci __m128d_neg33,                 __m128d, dbl_neg33
    v2ci __m128d_neg34,                 __m128d, dbl_neg34
    v2ci __m128d_neg35,                 __m128d, dbl_neg35
    v2ci __m128d_neg36,                 __m128d, dbl_neg36
    v2ci __m128d_neg37,                 __m128d, dbl_neg37
    v2ci __m128d_neg38,                 __m128d, dbl_neg38
    v2ci __m128d_neg39,                 __m128d, dbl_neg39
    v2ci __m128d_neg40,                 __m128d, dbl_neg40
    v2ci __m128d_neg41,                 __m128d, dbl_neg41
    v2ci __m128d_neg42,                 __m128d, dbl_neg42
    v2ci __m128d_neg43,                 __m128d, dbl_neg43
    v2ci __m128d_neg44,                 __m128d, dbl_neg44
    v2ci __m128d_neg45,                 __m128d, dbl_neg45
    v2ci __m128d_neg46,                 __m128d, dbl_neg46
    v2ci __m128d_neg47,                 __m128d, dbl_neg47
    v2ci __m128d_neg48,                 __m128d, dbl_neg48
    v2ci __m128d_neg49,                 __m128d, dbl_neg49
    v2ci __m128d_neg50,                 __m128d, dbl_neg50
    v2ci __m128d_neg51,                 __m128d, dbl_neg51
    v2ci __m128d_neg52,                 __m128d, dbl_neg52
    v2ci __m128d_neg53,                 __m128d, dbl_neg53
    v2ci __m128d_neg54,                 __m128d, dbl_neg54
    v2ci __m128d_neg55,                 __m128d, dbl_neg55
    v2ci __m128d_neg56,                 __m128d, dbl_neg56
    v2ci __m128d_neg57,                 __m128d, dbl_neg57
    v2ci __m128d_neg58,                 __m128d, dbl_neg58
    v2ci __m128d_neg59,                 __m128d, dbl_neg59
    v2ci __m128d_neg60,                 __m128d, dbl_neg60
    v2ci __m128d_neg61,                 __m128d, dbl_neg61
    v2ci __m128d_neg62,                 __m128d, dbl_neg62
    v2ci __m128d_neg63,                 __m128d, dbl_neg63
    v2ci __m128d_neg64,                 __m128d, dbl_neg64
    v2ci __m128d_neg65,                 __m128d, dbl_neg65
    v2ci __m128d_neg66,                 __m128d, dbl_neg66
    v2ci __m128d_neg67,                 __m128d, dbl_neg67
    v2ci __m128d_neg68,                 __m128d, dbl_neg68
    v2ci __m128d_neg69,                 __m128d, dbl_neg69
    v2ci __m128d_neg70,                 __m128d, dbl_neg70
    v2ci __m128d_neg71,                 __m128d, dbl_neg71
    v2ci __m128d_neg72,                 __m128d, dbl_neg72
    v2ci __m128d_neg73,                 __m128d, dbl_neg73
    v2ci __m128d_neg74,                 __m128d, dbl_neg74
    v2ci __m128d_neg75,                 __m128d, dbl_neg75
    v2ci __m128d_neg76,                 __m128d, dbl_neg76
    v2ci __m128d_neg77,                 __m128d, dbl_neg77
    v2ci __m128d_neg78,                 __m128d, dbl_neg78
    v2ci __m128d_neg79,                 __m128d, dbl_neg79
    v2ci __m128d_neg80,                 __m128d, dbl_neg80
    v2ci __m128d_neg81,                 __m128d, dbl_neg81
    v2ci __m128d_neg82,                 __m128d, dbl_neg82
    v2ci __m128d_neg83,                 __m128d, dbl_neg83
    v2ci __m128d_neg84,                 __m128d, dbl_neg84
    v2ci __m128d_neg85,                 __m128d, dbl_neg85
    v2ci __m128d_neg86,                 __m128d, dbl_neg86
    v2ci __m128d_neg87,                 __m128d, dbl_neg87
    v2ci __m128d_neg88,                 __m128d, dbl_neg88
    v2ci __m128d_neg89,                 __m128d, dbl_neg89
    v2ci __m128d_neg90,                 __m128d, dbl_neg90
    v2ci __m128d_neg91,                 __m128d, dbl_neg91
    v2ci __m128d_neg92,                 __m128d, dbl_neg92
    v2ci __m128d_neg93,                 __m128d, dbl_neg93
    v2ci __m128d_neg94,                 __m128d, dbl_neg94
    v2ci __m128d_neg95,                 __m128d, dbl_neg95
    v2ci __m128d_neg96,                 __m128d, dbl_neg96
    v2ci __m128d_neg97,                 __m128d, dbl_neg97
    v2ci __m128d_neg98,                 __m128d, dbl_neg98
    v2ci __m128d_neg99,                 __m128d, dbl_neg99
    v2ci __m128d_neg100,                __m128d, dbl_neg100
    v2ci __m128d_neg125,                __m128d, dbl_neg125
    v2ci __m128d_neg126,                __m128d, dbl_neg126
    v2ci __m128d_neg127,                __m128d, dbl_neg127
    v2ci __m128d_neg128,                __m128d, dbl_neg128
    v2ci __m128d_neg140,                __m128d, dbl_neg140
    v2ci __m128d_neg145,                __m128d, dbl_neg145
    v2ci __m128d_neg150,                __m128d, dbl_neg150
    v2ci __m128d_neg180,                __m128d, dbl_neg180
    v2ci __m128d_neg253,                __m128d, dbl_neg253
    v2ci __m128d_neg254,                __m128d, dbl_neg254
    v2ci __m128d_neg255,                __m128d, dbl_neg255
    v2ci __m128d_neg256,                __m128d, dbl_neg256
    v2ci __m128d_neg360,                __m128d, dbl_neg360
    v2ci __m128d_neg511,                __m128d, dbl_neg511
    v2ci __m128d_neg512,                __m128d, dbl_neg512
    v2ci __m128d_neg513,                __m128d, dbl_neg513
    v2ci __m128d_neg1023,               __m128d, dbl_neg1023
    v2ci __m128d_neg1024,               __m128d, dbl_neg1024
    v2ci __m128d_neg1025,               __m128d, dbl_neg1025

    v2ci __m128d_neg32767,              __m128d, dbl_neg32767
    v2ci __m128d_neg32768,              __m128d, dbl_neg32768
    v2ci __m128d_neg65535,              __m128d, dbl_neg65535
    v2ci __m128d_neg65536,              __m128d, dbl_neg65536
    v2ci __m128d_neg2147483647,         __m128d, dbl_neg2147483647
    v2ci __m128d_neg2147483648,         __m128d, dbl_neg2147483648
    v2ci __m128d_neg4294967295,         __m128d, dbl_neg4294967295
    v2ci __m128d_neg4294967296,         __m128d, dbl_neg4294967296
    
    v2ci __m128d_bin128,                __m128d, dbl_bin128
    v2ci __m128d_binneg150,             __m128d, dbl_binneg150

    v2ci __m128d_maxrand,               __m128d, dbl_maxrand

    v2ci __m128d_maxi8,                 __m128d, dbl_maxi8
    v2ci __m128d_mini8,                 __m128d, dbl_mini8
    v2ci __m128d_maxu8,                 __m128d, dbl_maxu8

    v2ci __m128d_maxi16,                __m128d, dbl_maxi16
    v2ci __m128d_mini16,                __m128d, dbl_mini16
    v2ci __m128d_maxu16,                __m128d, dbl_maxu16

    v2ci __m128d_maxi32,                __m128d, dbl_maxi32
    v2ci __m128d_mini32,                __m128d, dbl_mini32
    v2ci __m128d_maxu32,                __m128d, dbl_maxu32
    
    v2ci __m128d_maxi64,                __m128d, dbl_maxi64
    v2ci __m128d_mini64,                __m128d, dbl_mini64
    v2ci __m128d_maxu64,                __m128d, dbl_maxu64

    v2ci __m128d_maxi8xu8,              __m128d, dbl_maxi8xu8
    v2ci __m128d_mini8xu8,              __m128d, dbl_mini8xu8
    v2ci __m128d_maxi8xu16,             __m128d, dbl_maxi8xu16
    v2ci __m128d_mini8xu16,             __m128d, dbl_mini8xu16

    v2ci __m128d_maxi16xu16,            __m128d, dbl_maxi16xu16
    v2ci __m128d_mini16xu16,            __m128d, dbl_mini16xu16
    v2ci __m128d_maxi16xu32,            __m128d, dbl_maxi16xu32
    v2ci __m128d_mini16xu32,            __m128d, dbl_mini16xu32
    
    v2ci __m128d_maxi32xu32,            __m128d, dbl_maxi32xu32
    v2ci __m128d_mini32xu32,            __m128d, dbl_mini32xu32

    v2ci __m128d_fixunsigned,           __m128d, dbl_fixunsigned
    v2ci __m128d_fixunsigned32,         __m128d, dbl_fixunsigned32
    v2ci __m128d_fixmaxi32,             __m128d, dbl_fixmaxi32
    v2ci __m128d_fixmaxu32,             __m128d, dbl_fixmaxu32
    
    v2ci __m128d_fixunsigned64,         __m128d, dbl_fixunsigned64
    v2ci __m128d_fixmaxi64,             __m128d, dbl_fixmaxi64
    v2ci __m128d_fixmaxu64,             __m128d, dbl_fixmaxu64

    v2ci __m128d_rcpi16,                __m128d, dbl_rcpi16
    v2ci __m128d_rcpu16,                __m128d, dbl_rcpu16
    v2ci __m128d_rcpi16xu16,            __m128d, dbl_rcpi16xu16

    v2ci __m128d_mg,                    __m128d, dbl_mg
    v2ci __m128d_negmg,                 __m128d, dbl_negmg
    v2ci __m128d_halfmg,                __m128d, dbl_halfmg
    v2ci __m128d_neghalfmg,             __m128d, dbl_neghalfmg
    v2ci __m128d_mgdiv4,                __m128d, dbl_mgdiv4
    v2ci __m128d_negmgdiv4,             __m128d, dbl_negmgdiv4
    v2ci __m128d_halfmgxmg,             __m128d, dbl_halfmgxmg
    v2ci __m128d_halfmgxsqrmg,          __m128d, dbl_halfmgxsqrmg
    v2ci __m128d_halfmgxcubemg,         __m128d, dbl_halfmgxcubemg
    v2ci __m128d_neghalfmgxmg,          __m128d, dbl_neghalfmgxmg
    v2ci __m128d_neghalfmgxsqrmg,       __m128d, dbl_neghalfmgxsqrmg
    v2ci __m128d_neghalfmgxcubemg,      __m128d, dbl_neghalfmgxcubemg
    v2ci __m128d_sqrmg,                 __m128d, dbl_sqrmg
    v2ci __m128d_cubemg,                __m128d, dbl_cubemg
    v2ci __m128d_sqrtmg,                __m128d, dbl_sqrtmg
    v2ci __m128d_cbrtmg,                __m128d, dbl_cbrtmg
    v2ci __m128d_rcpmg,                 __m128d, dbl_rcpmg
    v2ci __m128d_rcpsqrmg,              __m128d, dbl_rcpsqrmg
    v2ci __m128d_rcpcubemg,             __m128d, dbl_rcpcubemg
    v2ci __m128d_rcpsqrtmg,             __m128d, dbl_rcpsqrtmg
    v2ci __m128d_rcpcbrtmg,             __m128d, dbl_rcpcbrtmg

    v2ci __m128d_2mg,                   __m128d, dbl_2mg
    v2ci __m128d_neg2mg,                __m128d, dbl_neg2mg
    v2ci __m128d_sqr2mg,                __m128d, dbl_sqr2mg
    v2ci __m128d_cube2mg,               __m128d, dbl_cube2mg
    v2ci __m128d_sqrt2mg,               __m128d, dbl_sqrt2mg
    v2ci __m128d_cbrt2mg,               __m128d, dbl_cbrt2mg
    v2ci __m128d_4mg,                   __m128d, dbl_4mg
    v2ci __m128d_neg4mg,                __m128d, dbl_neg4mg
    v2ci __m128d_sqr4mg,                __m128d, dbl_sqr4mg
    v2ci __m128d_cube4mg,               __m128d, dbl_cube4mg
    v2ci __m128d_sqrt4mg,               __m128d, dbl_sqrt4mg
    v2ci __m128d_cbrt4mg,               __m128d, dbl_cbrt4mg
    v2ci __m128d_rcp2mg,                __m128d, dbl_rcp2mg
    v2ci __m128d_rcp4mg,                __m128d, dbl_rcp4mg

    v2ci __m128d_e,                     __m128d, dbl_e
    v2ci __m128d_exp,                   __m128d, dbl_exp
    v2ci __m128d_loge,                  __m128d, dbl_loge
    v2ci __m128d_logehigh,              __m128d, dbl_logehigh
    v2ci __m128d_logelow,               __m128d, dbl_logelow
    v2ci __m128d_log2e,                 __m128d, dbl_log2e
    v2ci __m128d_log2ehigh,             __m128d, dbl_log2ehigh
    v2ci __m128d_log2elow,              __m128d, dbl_log2elow
    v2ci __m128d_log10e,                __m128d, dbl_log10e
    v2ci __m128d_rcplog2e,              __m128d, dbl_rcplog2e
    v2ci __m128d_rcplog10e,             __m128d, dbl_rcplog10e
    v2ci __m128d_log2t,                 __m128d, dbl_log2t
    v2ci __m128d_log2,                  __m128d, dbl_log2
    v2ci __m128d_log2high,              __m128d, dbl_log2high
    v2ci __m128d_log2low,               __m128d, dbl_log2low
    v2ci __m128d_ln2,                   __m128d, dbl_ln2
    v2ci __m128d_ln2high,               __m128d, dbl_ln2high
    v2ci __m128d_ln2low,                __m128d, dbl_ln2low
    v2ci __m128d_1divln2,               __m128d, dbl_1divln2
    v2ci __m128d_2divln2,               __m128d, dbl_2divln2
    v2ci __m128d_lnt,                   __m128d, dbl_lnt
    v2ci __m128d_lnthigh,               __m128d, dbl_lnthigh
    v2ci __m128d_lntlow,                __m128d, dbl_lntlow
    v2ci __m128d_ln10,                  __m128d, dbl_ln10
    v2ci __m128d_sqrt2,                 __m128d, dbl_sqrt2
    v2ci __m128d_rcpsqrt2,              __m128d, dbl_rcpsqrt2
    v2ci __m128d_sqrt2div2,             __m128d, dbl_sqrt2div2
    v2ci __m128d_sqrt2div2high,         __m128d, dbl_sqrt2div2high
    v2ci __m128d_sqrt2div2low,          __m128d, dbl_sqrt2div2low
    v2ci __m128d_sqrthalf,              __m128d, dbl_sqrthalf
    v2ci __m128d_sqrthalfhigh,          __m128d, dbl_sqrthalfhigh
    v2ci __m128d_sqrthalflow,           __m128d, dbl_sqrthalflow
    v2ci __m128d_pow2,                  __m128d, dbl_pow2
    v2ci __m128d_rcppow2,               __m128d, dbl_rcppow2
    v2ci __m128d_cbrt2,                 __m128d, dbl_cbrt2
    v2ci __m128d_rcpcbrt2,              __m128d, dbl_rcpcbrt2
    v2ci __m128d_1div3,                 __m128d, dbl_1div3
    v2ci __m128d_1div7,                 __m128d, dbl_1div7
    v2ci __m128d_1div9,                 __m128d, dbl_1div9
    v2ci __m128d_2div3,                 __m128d, dbl_2div3
    v2ci __m128d_2div7,                 __m128d, dbl_2div7
    v2ci __m128d_2div9,                 __m128d, dbl_2div9
    v2ci __m128d_4div3,                 __m128d, dbl_4div3
    v2ci __m128d_4div7,                 __m128d, dbl_4div7
    v2ci __m128d_4div9,                 __m128d, dbl_4div9

    v2ci __m128d_pi,                    __m128d, dbl_pi
    v2ci __m128d_pihigh,                __m128d, dbl_pihigh
    v2ci __m128d_pilow,                 __m128d, dbl_pilow
    v2ci __m128d_halfpi,                __m128d, dbl_halfpi
    v2ci __m128d_2pi,                   __m128d, dbl_2pi
    v2ci __m128d_negpi,                 __m128d, dbl_negpi
    v2ci __m128d_neghalfpi,             __m128d, dbl_neghalfpi
    v2ci __m128d_neg2pi,                __m128d, dbl_neg2pi
    v2ci __m128d_rcppi,                 __m128d, dbl_rcppi
    v2ci __m128d_invpi,                 __m128d, dbl_invpi
    v2ci __m128d_rcp2pi,                __m128d, dbl_rcp2pi
    v2ci __m128d_inv2pi,                __m128d, dbl_inv2pi
    v2ci __m128d_pidiv2,                __m128d, dbl_pidiv2
    v2ci __m128d_pidiv2high,            __m128d, dbl_pidiv2high
    v2ci __m128d_pidiv2low,             __m128d, dbl_pidiv2low
    v2ci __m128d_pidiv4,                __m128d, dbl_pidiv4
    v2ci __m128d_pidiv4high,            __m128d, dbl_pidiv4high
    v2ci __m128d_pidiv4low,             __m128d, dbl_pidiv4low
    v2ci __m128d_pix3div4,              __m128d, dbl_pix3div4
    v2ci __m128d_sqrtpi,                __m128d, dbl_sqrtpi
    v2ci __m128d_sqrt2pi,               __m128d, dbl_sqrt2pi
    v2ci __m128d_sqrt2pihigh,           __m128d, dbl_sqrt2pihigh
    v2ci __m128d_sqrt2pilow,            __m128d, dbl_sqrt2pilow
    v2ci __m128d_rcpsqrtpi,             __m128d, dbl_rcpsqrtpi
    v2ci __m128d_rcpsqrt2pi,            __m128d, dbl_rcpsqrt2pi
    v2ci __m128d_sqrtpidiv2,            __m128d, dbl_sqrtpidiv2
    v2ci __m128d_sqrtpidiv2high,        __m128d, dbl_sqrtpidiv2high
    v2ci __m128d_sqrt2pidiv2,           __m128d, dbl_sqrt2pidiv2
    v2ci __m128d_sqrt2pidiv2high,       __m128d, dbl_sqrt2pidiv2high
    v2ci __m128d_sqrt2pidiv2low,        __m128d, dbl_sqrt2pidiv2low
    v2ci __m128d_2divpi,                __m128d, dbl_2divpi
    v2ci __m128d_2div2pi,               __m128d, dbl_2div2pi
    v2ci __m128d_2divsqrtpi,            __m128d, dbl_2divsqrtpi
    v2ci __m128d_2divsqrt2pi,           __m128d, dbl_2divsqrt2pi
    v2ci __m128d_sqrt2divpi,            __m128d, dbl_sqrt2divpi
    v2ci __m128d_logpi,                 __m128d, dbl_logpi
    v2ci __m128d_log2pi,                __m128d, dbl_log2pi
    v2ci __m128d_lnpi,                  __m128d, dbl_lnpi
    v2ci __m128d_ln2pi,                 __m128d, dbl_ln2pi
    v2ci __m128d_powpi,                 __m128d, dbl_powpi
    v2ci __m128d_rcppowpi,              __m128d, dbl_rcppowpi
    v2ci __m128d_pow2pi,                __m128d, dbl_pow2pi
    v2ci __m128d_rcppow2pi,             __m128d, dbl_rcppow2pi
    v2ci __m128d_cbrtpi,                __m128d, dbl_cbrtpi
    v2ci __m128d_rcpcbrtpi,             __m128d, dbl_rcpcbrtpi
    v2ci __m128d_cbrt2pi,               __m128d, dbl_cbrt2pi
    v2ci __m128d_rcpcbrt2pi,            __m128d, dbl_rcpcbrt2pi
    
    v2ci __m128d_ln2x1024,              __m128d, dbl_ln2x1024
    v2ci __m128d_ln2x1025,              __m128d, dbl_ln2x1025
    v2ci __m128d_ln2x1075,              __m128d, dbl_ln2x1075
    v2ci __m128d_log2x1024,             __m128d, dbl_log2x1024
    v2ci __m128d_log2x1075,             __m128d, dbl_log2x1075

    v2ci __m128d_pow2tom126,            __m128d, dbl_pow2tom126
    v2ci __m128d_pow2to126,             __m128d, dbl_pow2to126
    v2ci __m128d_normhuge,              __m128d, dbl_normhuge
    v2ci __m128d_pow2to23,              __m128d, dbl_pow2to23
    v2ci __m128d_pow2to24,              __m128d, dbl_pow2to24
    v2ci __m128d_maxi32pow2to23,        __m128d, dbl_maxi32pow2to23
    v2ci __m128d_pow2to31,              __m128d, dbl_pow2to31
    v2ci __m128d_pow2to32,              __m128d, dbl_pow2to32
    v2ci __m128d_pow2to52,              __m128d, dbl_pow2to52
    v2ci __m128d_pow2to53,              __m128d, dbl_pow2to53
    v2ci __m128d_pow2to54,              __m128d, dbl_pow2to54
    v2ci __m128d_pow2tom54,             __m128d, dbl_pow2tom54
    v2ci __m128d_pow2to62,              __m128d, dbl_pow2to62
    v2ci __m128d_maxi64pow2to52,        __m128d, dbl_maxi64pow2to52
    v2ci __m128d_pow2to63,              __m128d, dbl_pow2to63
    v2ci __m128d_pow2to64,              __m128d, dbl_pow2to64
    v2ci __m128d_pow2tom1022,           __m128d, dbl_pow2tom1022
    v2ci __m128d_trigploss,             __m128d, dbl_trigploss

    v2ci __m128d_degtorad,              __m128d, dbl_degtorad
    v2ci __m128d_radtodeg,              __m128d, dbl_radtodeg

    v2ci __m128d_degtograd,             __m128d, dbl_degtograd
    v2ci __m128d_gradtodeg,             __m128d, dbl_gradtodeg
    
    v2ci __m128d_radtograd,             __m128d, dbl_radtograd
    v2ci __m128d_gradtorad,             __m128d, dbl_gradtorad

    v2ci __m128d_sungravity,            __m128d, dbl_sungravity
    v2ci __m128d_jupitergravity,        __m128d, dbl_jupitergravity
    v2ci __m128d_neptunegravity,        __m128d, dbl_neptunegravity
    v2ci __m128d_saturngravity,         __m128d, dbl_saturngravity
    v2ci __m128d_uranusgravity,         __m128d, dbl_uranusgravity
    v2ci __m128d_earthgravity,          __m128d, dbl_earthgravity
    v2ci __m128d_venusgravity,          __m128d, dbl_venusgravity
    v2ci __m128d_marsgravity,           __m128d, dbl_marsgravity
    v2ci __m128d_mercurygravity,        __m128d, dbl_mercurygravity
    v2ci __m128d_moongravity,           __m128d, dbl_moongravity
    v2ci __m128d_plutogravity,          __m128d, dbl_plutogravity

    v2ci __m128d_kmtoinch,              __m128d, dbl_kmtoinch
    v2ci __m128d_kmtofeet,              __m128d, dbl_kmtofeet 
    v2ci __m128d_kmtoyards,             __m128d, dbl_kmtoyards
    v2ci __m128d_kmtomiles,             __m128d, dbl_kmtomiles

    v2ci __m128d_metoinch,              __m128d, dbl_metoinch
    v2ci __m128d_metofeet,              __m128d, dbl_metofeet
    v2ci __m128d_metoyards,             __m128d, dbl_metoyards
    v2ci __m128d_metomiles,             __m128d, dbl_metomiles

    v2ci __m128d_cmtoinch,              __m128d, dbl_cmtoinch
    v2ci __m128d_cmtofeet,              __m128d, dbl_cmtofeet
    v2ci __m128d_cmtoyards,             __m128d, dbl_cmtoyards
    v2ci __m128d_cmtomiles,             __m128d, dbl_cmtomiles

    v2ci __m128d_milltoinch,            __m128d, dbl_milltoinch
    v2ci __m128d_milltofeet,            __m128d, dbl_milltofeet
    v2ci __m128d_milltoyards,           __m128d, dbl_milltoyards
    v2ci __m128d_milltomiles,           __m128d, dbl_milltomiles

    v2ci __m128d_inchtomill,            __m128d, dbl_inchtomill
    v2ci __m128d_inchtocm,              __m128d, dbl_inchtocm
    v2ci __m128d_inchtome,              __m128d, dbl_inchtome
    v2ci __m128d_inchtokm,              __m128d, dbl_inchtokm
    v2ci __m128d_inchtofeet,            __m128d, dbl_inchtofeet
    v2ci __m128d_inchtoyards,           __m128d, dbl_inchtoyards
    v2ci __m128d_inchtomiles,           __m128d, dbl_inchtomiles

    v2ci __m128d_feettomill,            __m128d, dbl_feettomill
    v2ci __m128d_feettocm,              __m128d, dbl_feettocm
    v2ci __m128d_feettome,              __m128d, dbl_feettome
    v2ci __m128d_feettokm,              __m128d, dbl_feettokm
    v2ci __m128d_feettoinch,            __m128d, dbl_feettoinch
    v2ci __m128d_feettoyards,           __m128d, dbl_feettoyards
    v2ci __m128d_feettomiles,           __m128d, dbl_feettomiles

    v2ci __m128d_yardstomill,           __m128d, dbl_yardstomill
    v2ci __m128d_yardstocm,             __m128d, dbl_yardstocm
    v2ci __m128d_yardstome,             __m128d, dbl_yardstome
    v2ci __m128d_yardstokm,             __m128d, dbl_yardstokm
    v2ci __m128d_yardstoinch,           __m128d, dbl_yardstoinch
    v2ci __m128d_yardstofeet,           __m128d, dbl_yardstofeet
    v2ci __m128d_yardstomiles,          __m128d, dbl_yardstomiles

    v2ci __m128d_milestomill,           __m128d, dbl_milestomill
    v2ci __m128d_milestocm,             __m128d, dbl_milestocm
    v2ci __m128d_milestome,             __m128d, dbl_milestome
    v2ci __m128d_milestokm,             __m128d, dbl_milestokm
    v2ci __m128d_milestoinch,           __m128d, dbl_milestoinch
    v2ci __m128d_milestofeet,           __m128d, dbl_milestofeet
    v2ci __m128d_milestoyards,          __m128d, dbl_milestoyards

    v2ci __m128d_kmphtomeps,            __m128d, dbl_kmphtomeps
    v2ci __m128d_kmphtokmps,            __m128d, dbl_kmphtokmps
    v2ci __m128d_kmphtomepm,            __m128d, dbl_kmphtomepm
    v2ci __m128d_kmphtomilesph,         __m128d, dbl_kmphtomilesph
    v2ci __m128d_kmphtomilesps,         __m128d, dbl_kmphtomilesps
    v2ci __m128d_kmphtofeetps,          __m128d, dbl_kmphtofeetps
    v2ci __m128d_kmphtofeetpm,          __m128d, dbl_kmphtofeetpm

    v2ci __m128d_kmpstomeps,            __m128d, dbl_kmpstomeps
    v2ci __m128d_kmpstokmph,            __m128d, dbl_kmpstokmph
    v2ci __m128d_kmpstomepm,            __m128d, dbl_kmpstomepm
    v2ci __m128d_kmpstomilesph,         __m128d, dbl_kmpstomilesph
    v2ci __m128d_kmpstomilesps,         __m128d, dbl_kmpstomilesps
    v2ci __m128d_kmpstofeetps,          __m128d, dbl_kmpstofeetps
    v2ci __m128d_kmpstofeetpm,          __m128d, dbl_kmpstofeetpm

    v2ci __m128d_mepstokmph,            __m128d, dbl_mepstokmph
    v2ci __m128d_mepstokmps,            __m128d, dbl_mepstokmps
    v2ci __m128d_mepstomepm,            __m128d, dbl_mepstomepm
    v2ci __m128d_mepstomilesph,         __m128d, dbl_mepstomilesph
    v2ci __m128d_mepstomilesps,         __m128d, dbl_mepstomilesps
    v2ci __m128d_mepstofeetps,          __m128d, dbl_mepstofeetps
    v2ci __m128d_mepstofeetpm,          __m128d, dbl_mepstofeetpm

    v2ci __m128d_mepmtokmph,            __m128d, dbl_mepmtokmph
    v2ci __m128d_mepmtokmps,            __m128d, dbl_mepmtokmps
    v2ci __m128d_mepmtomeps,            __m128d, dbl_mepmtomeps
    v2ci __m128d_mepmtomilesph,         __m128d, dbl_mepmtomilesph
    v2ci __m128d_mepmtomilesps,         __m128d, dbl_mepmtomilesps
    v2ci __m128d_mepmtofeetps,          __m128d, dbl_mepmtofeetps
    v2ci __m128d_mepmtofeetpm,          __m128d, dbl_mepmtofeetpm

    v2ci __m128d_milesphtokmph,         __m128d, dbl_milesphtokmph
    v2ci __m128d_milesphtokmps,         __m128d, dbl_milesphtokmps
    v2ci __m128d_milesphtomeps,         __m128d, dbl_milesphtomeps
    v2ci __m128d_milesphtomepm,         __m128d, dbl_milesphtomepm
    v2ci __m128d_milesphtomilesps,      __m128d, dbl_milesphtomilesps
    v2ci __m128d_milesphtofeetps,       __m128d, dbl_milesphtofeetps
    v2ci __m128d_milesphtofeetpm,       __m128d, dbl_milesphtofeetpm

    v2ci __m128d_milespstokmph,         __m128d, dbl_milespstokmph
    v2ci __m128d_milespstokmps,         __m128d, dbl_milespstokmps
    v2ci __m128d_milespstomeps,         __m128d, dbl_milespstomeps
    v2ci __m128d_milespstomepm,         __m128d, dbl_milespstomepm
    v2ci __m128d_milespstomilesph,      __m128d, dbl_milespstomilesph
    v2ci __m128d_milespstofeetps,       __m128d, dbl_milespstofeetps
    v2ci __m128d_milespstofeetpm,       __m128d, dbl_milespstofeetpm

    v2ci __m128d_feetpstokmph,          __m128d, dbl_feetpstokmph
    v2ci __m128d_feetpstokmps,          __m128d, dbl_feetpstokmps
    v2ci __m128d_feetpstomeps,          __m128d, dbl_feetpstomeps
    v2ci __m128d_feetpstomepm,          __m128d, dbl_feetpstomepm
    v2ci __m128d_feetpstomilesph,       __m128d, dbl_feetpstomilesph
    v2ci __m128d_feetpstomilesps,       __m128d, dbl_feetpstomilesps
    v2ci __m128d_feetpstofeetpm,        __m128d, dbl_feetpstofeetpm

    v2ci __m128d_feetpmtokmph,          __m128d, dbl_feetpmtokmph
    v2ci __m128d_feetpmtokmps,          __m128d, dbl_feetpmtokmps
    v2ci __m128d_feetpmtomeps,          __m128d, dbl_feetpmtomeps
    v2ci __m128d_feetpmtomepm,          __m128d, dbl_feetpmtomepm
    v2ci __m128d_feetpmtomilesph,       __m128d, dbl_feetpmtomilesph
    v2ci __m128d_feetpmtomilesps,       __m128d, dbl_feetpmtomilesps
    v2ci __m128d_feetpmtofeetps,        __m128d, dbl_feetpmtofeetps

    v2ci __m128d_soundspeedp50c,        __m128d, dbl_soundspeedp50c
    v2ci __m128d_soundspeedp45c,        __m128d, dbl_soundspeedp45c
    v2ci __m128d_soundspeedp40c,        __m128d, dbl_soundspeedp40c
    v2ci __m128d_soundspeedp35c,        __m128d, dbl_soundspeedp35c
    v2ci __m128d_soundspeedp30c,        __m128d, dbl_soundspeedp30c
    v2ci __m128d_soundspeedp25c,        __m128d, dbl_soundspeedp25c
    v2ci __m128d_soundspeedp20c,        __m128d, dbl_soundspeedp20c
    v2ci __m128d_soundspeedp15c,        __m128d, dbl_soundspeedp15c
    v2ci __m128d_soundspeedp10c,        __m128d, dbl_soundspeedp10c
    v2ci __m128d_soundspeedp5c,         __m128d, dbl_soundspeedp5c
    v2ci __m128d_soundspeed0c,          __m128d, dbl_soundspeed0c
    v2ci __m128d_soundspeedn5c,         __m128d, dbl_soundspeedn5c
    v2ci __m128d_soundspeedn10c,        __m128d, dbl_soundspeedn10c
    v2ci __m128d_soundspeedn15c,        __m128d, dbl_soundspeedn15c
    v2ci __m128d_soundspeedn20c,        __m128d, dbl_soundspeedn20c
    v2ci __m128d_soundspeedn25c,        __m128d, dbl_soundspeedn25c
    v2ci __m128d_soundspeedn30c,        __m128d, dbl_soundspeedn30c
    v2ci __m128d_soundspeedn35c,        __m128d, dbl_soundspeedn35c
    v2ci __m128d_soundspeedn40c,        __m128d, dbl_soundspeedn40c
    v2ci __m128d_soundspeedn45c,        __m128d, dbl_soundspeedn45c
    v2ci __m128d_soundspeedn50c,        __m128d, dbl_soundspeedn50c

    v2ci __m128d_schscale,              __m128d, dbl_schscale
    v2ci __m128d_thscale,               __m128d, dbl_thscale

    v2ci __m128d_expest1,               __m128d, dbl_expest1
    v2ci __m128d_expest2,               __m128d, dbl_expest2
    v2ci __m128d_expest3,               __m128d, dbl_expest3
    v2ci __m128d_expest4,               __m128d, dbl_expest4
    v2ci __m128d_expest5,               __m128d, dbl_expest5
    v2ci __m128d_expest6,               __m128d, dbl_expest6
    v2ci __m128d_expest7,               __m128d, dbl_expest7
    v2ci __m128d_logest0,               __m128d, dbl_logest0
    v2ci __m128d_logest1,               __m128d, dbl_logest1
    v2ci __m128d_logest2,               __m128d, dbl_logest2
    v2ci __m128d_logest3,               __m128d, dbl_logest3
    v2ci __m128d_logest4,               __m128d, dbl_logest4
    v2ci __m128d_logest5,               __m128d, dbl_logest5
    v2ci __m128d_logest6,               __m128d, dbl_logest6
    v2ci __m128d_logest7,               __m128d, dbl_logest7
    
    ;;double low;;

;;             sincos template, double precision
    v2ci2 __m128d_0e_P0sin,                 __m128d, (-1.66666666666666307295e-01), dbl_false
    v2ci2 __m128d_0e_P1sin,                 __m128d, (8.33333333332211858878e-03), dbl_false
    v2ci2 __m128d_0e_P2sin,                 __m128d, (-1.98412698295895385996e-04), dbl_false
    v2ci2 __m128d_0e_P3sin,                 __m128d, (2.75573136213857245213e-06), dbl_false
    v2ci2 __m128d_0e_P4sin,                 __m128d, (-2.50507477628578072866e-08), dbl_false
    v2ci2 __m128d_0e_P5sin,                 __m128d, (1.58962301576546568060e-010), dbl_false

    v2ci2 __m128d_0e_P0cos,                 __m128d, (4.16666666666665929218e-02), dbl_false
    v2ci2 __m128d_0e_P1cos,                 __m128d, (-1.38888888888730564116e-03), dbl_false
    v2ci2 __m128d_0e_P2cos,                 __m128d, (2.48015872888517045348e-05), dbl_false
    v2ci2 __m128d_0e_P3cos,                 __m128d, (-2.75573141792967388112e-07), dbl_false
    v2ci2 __m128d_0e_P4cos,                 __m128d, (2.08757008419747316778e-09), dbl_false
    v2ci2 __m128d_0e_P5cos,                 __m128d, (-1.13585365213876817300e-011), dbl_false

    v2ci2 __m128d_0e_DP1,                   __m128d, 1.570796310901641845703125, dbl_false
    v2ci2 __m128d_0e_DP2,                   __m128d, 0.00000001589325471229585673428, dbl_false
    v2ci2 __m128d_0e_DP3,                   __m128d, (6.12323399573676588614e-017), dbl_false

    v2ci2 __m128d_0e_1lshl3,                __m128d, dbl_1lshl3, dbl_false
    v2ci2 __m128d_0e_1lshl4,                __m128d, dbl_1lshl4, dbl_false
    v2ci2 __m128d_0e_1lshl7,                __m128d, dbl_1lshl7, dbl_false
    v2ci2 __m128d_0e_1lshl8,                __m128d, dbl_1lshl8, dbl_false
    v2ci2 __m128d_0e_1lshl11,               __m128d, dbl_1lshl11, dbl_false
    v2ci2 __m128d_0e_1lshl12,               __m128d, dbl_1lshl12, dbl_false
    v2ci2 __m128d_0e_1lshl15,               __m128d, dbl_1lshl15, dbl_false
    v2ci2 __m128d_0e_1lshl16,               __m128d, dbl_1lshl16, dbl_false
    v2ci2 __m128d_0e_1lshl19,               __m128d, dbl_1lshl19, dbl_false
    v2ci2 __m128d_0e_1lshl20,               __m128d, dbl_1lshl20, dbl_false
    v2ci2 __m128d_0e_1lshl23,               __m128d, dbl_1lshl23, dbl_false
    v2ci2 __m128d_0e_1lshl24,               __m128d, dbl_1lshl24, dbl_false
    v2ci2 __m128d_0e_1lshl27,               __m128d, dbl_1lshl27, dbl_false
    v2ci2 __m128d_0e_1lshl28,               __m128d, dbl_1lshl28, dbl_false
    v2ci2 __m128d_0e_1lshl31,               __m128d, dbl_1lshl31, dbl_false
    v2ci2 __m128d_0e_1lshl32,               __m128d, dbl_1lshl32, dbl_false
    v2ci2 __m128d_0e_1lshl35,               __m128d, dbl_1lshl35, dbl_false
    v2ci2 __m128d_0e_1lshl36,               __m128d, dbl_1lshl36, dbl_false
    v2ci2 __m128d_0e_1lshl39,               __m128d, dbl_1lshl39, dbl_false
    v2ci2 __m128d_0e_1lshl40,               __m128d, dbl_1lshl40, dbl_false
    v2ci2 __m128d_0e_1lshl43,               __m128d, dbl_1lshl43, dbl_false
    v2ci2 __m128d_0e_1lshl44,               __m128d, dbl_1lshl44, dbl_false
    v2ci2 __m128d_0e_1lshl47,               __m128d, dbl_1lshl47, dbl_false
    v2ci2 __m128d_0e_1lshl48,               __m128d, dbl_1lshl48, dbl_false
    v2ci2 __m128d_0e_1lshl51,               __m128d, dbl_1lshl51, dbl_false
    v2ci2 __m128d_0e_1lshl52,               __m128d, dbl_1lshl52, dbl_false
    v2ci2 __m128d_0e_1lshl55,               __m128d, dbl_1lshl55, dbl_false
    v2ci2 __m128d_0e_1lshl56,               __m128d, dbl_1lshl56, dbl_false
    v2ci2 __m128d_0e_1lshl59,               __m128d, dbl_1lshl59, dbl_false
    v2ci2 __m128d_0e_1lshl60,               __m128d, dbl_1lshl60, dbl_false
    v2ci2 __m128d_0e_1lshl63,               __m128d, dbl_1lshl63, dbl_false
    
    v2ci2 __m128d_0e_neg1lshl3,             __m128d, dbl_neg1lshl3, dbl_false
    v2ci2 __m128d_0e_neg1lshl4,             __m128d, dbl_neg1lshl4, dbl_false
    v2ci2 __m128d_0e_neg1lshl7,             __m128d, dbl_neg1lshl7, dbl_false
    v2ci2 __m128d_0e_neg1lshl8,             __m128d, dbl_neg1lshl8, dbl_false
    v2ci2 __m128d_0e_neg1lshl11,            __m128d, dbl_neg1lshl11, dbl_false
    v2ci2 __m128d_0e_neg1lshl12,            __m128d, dbl_neg1lshl12, dbl_false
    v2ci2 __m128d_0e_neg1lshl15,            __m128d, dbl_neg1lshl15, dbl_false
    v2ci2 __m128d_0e_neg1lshl16,            __m128d, dbl_neg1lshl16, dbl_false
    v2ci2 __m128d_0e_neg1lshl19,            __m128d, dbl_neg1lshl19, dbl_false
    v2ci2 __m128d_0e_neg1lshl20,            __m128d, dbl_neg1lshl20, dbl_false
    v2ci2 __m128d_0e_neg1lshl23,            __m128d, dbl_neg1lshl23, dbl_false
    v2ci2 __m128d_0e_neg1lshl24,            __m128d, dbl_neg1lshl24, dbl_false
    v2ci2 __m128d_0e_neg1lshl27,            __m128d, dbl_neg1lshl27, dbl_false
    v2ci2 __m128d_0e_neg1lshl28,            __m128d, dbl_neg1lshl28, dbl_false
    v2ci2 __m128d_0e_neg1lshl31,            __m128d, dbl_neg1lshl31, dbl_false
    v2ci2 __m128d_0e_neg1lshl32,            __m128d, dbl_neg1lshl32, dbl_false
    v2ci2 __m128d_0e_neg1lshl35,            __m128d, dbl_neg1lshl35, dbl_false
    v2ci2 __m128d_0e_neg1lshl36,            __m128d, dbl_neg1lshl36, dbl_false
    v2ci2 __m128d_0e_neg1lshl39,            __m128d, dbl_neg1lshl39, dbl_false
    v2ci2 __m128d_0e_neg1lshl40,            __m128d, dbl_neg1lshl40, dbl_false
    v2ci2 __m128d_0e_neg1lshl43,            __m128d, dbl_neg1lshl43, dbl_false
    v2ci2 __m128d_0e_neg1lshl44,            __m128d, dbl_neg1lshl44, dbl_false
    v2ci2 __m128d_0e_neg1lshl47,            __m128d, dbl_neg1lshl47, dbl_false
    v2ci2 __m128d_0e_neg1lshl48,            __m128d, dbl_neg1lshl48, dbl_false
    v2ci2 __m128d_0e_neg1lshl51,            __m128d, dbl_neg1lshl51, dbl_false
    v2ci2 __m128d_0e_neg1lshl52,            __m128d, dbl_neg1lshl52, dbl_false
    v2ci2 __m128d_0e_neg1lshl55,            __m128d, dbl_neg1lshl55, dbl_false
    v2ci2 __m128d_0e_neg1lshl56,            __m128d, dbl_neg1lshl56, dbl_false
    v2ci2 __m128d_0e_neg1lshl59,            __m128d, dbl_neg1lshl59, dbl_false
    v2ci2 __m128d_0e_neg1lshl60,            __m128d, dbl_neg1lshl60, dbl_false
    v2ci2 __m128d_0e_neg1lshl63,            __m128d, dbl_neg1lshl63, dbl_false
    
    v2ci2 __m128d_0e_false,                 __m128q, dbl_false, dbl_false
    v2ci2 __m128d_0e_true,                  __m128q, dbl_true, dbl_false
    v2ci2 __m128d_0e_error,                 __m128q, dbl_error, dbl_false
    
    v2ci2 __m128d_0e_magic,                 __m128q, dbl_magic, dbl_false
    v2ci2 __m128d_0e_sign,                  __m128q, dbl_sign, dbl_false
    v2ci2 __m128d_0e_invsign,               __m128q, dbl_invsign, dbl_false
    
    v2ci2 __m128d_0e_inf,                   __m128q, dbl_inf, dbl_false
    v2ci2 __m128d_0e_fin,                   __m128q, dbl_fin, dbl_false
    v2ci2 __m128d_0e_invinf,                __m128q, dbl_invinf, dbl_false
    v2ci2 __m128d_0e_neginf,                __m128q, dbl_neginf, dbl_false
    v2ci2 __m128d_0e_nan,                   __m128q, dbl_nan, dbl_false
    v2ci2 __m128d_0e_qnan,                  __m128q, dbl_qnan, dbl_false
    v2ci2 __m128d_0e_negqnan,               __m128q, dbl_negqnan, dbl_false
    v2ci2 __m128d_0e_nantest,               __m128q, dbl_nantest, dbl_false
    v2ci2 __m128d_0e_abs,                   __m128q, dbl_abs, dbl_false
    v2ci2 __m128d_0e_min,                   __m128d, dbl_min, dbl_false
    v2ci2 __m128d_0e_max,                   __m128d, dbl_max, dbl_false
    v2ci2 __m128d_0e_nofraction,            __m128d, dbl_nofraction, dbl_false
    v2ci2 __m128d_0e_mindenorm,             __m128d, dbl_mindenorm, dbl_false
    v2ci2 __m128d_0e_denormlimit,           __m128d, dbl_denormlimit, dbl_false
    v2ci2 __m128d_0e_minnormal,             __m128d, dbl_minnormal, dbl_false
    v2ci2 __m128d_0e_maxnormal,             __m128d, dbl_maxnormal, dbl_false

    v2ci2 __m128d_0e_decdig,                __m128d, dbl_decdig, dbl_false
    v2ci2 __m128d_0e_dig,                   __m128d, dbl_dig, dbl_false
    v2ci2 __m128d_0e_negdecdig,             __m128d, dbl_negdecdig, dbl_false
    v2ci2 __m128d_0e_negdig,                __m128d, dbl_negdig, dbl_false
    v2ci2 __m128d_0e_eps,                   __m128d, dbl_eps, dbl_false
    v2ci2 __m128d_0e_epsilon,               __m128d, dbl_epsilon, dbl_false
    v2ci2 __m128d_0e_normeps,               __m128d, dbl_normeps, dbl_false
    v2ci2 __m128d_0e_guard,                 __m128d, dbl_guard, dbl_false
    v2ci2 __m128d_0e_mantpow2,              __m128d, dbl_mantpow2, dbl_false
    v2ci2 __m128d_0e_maxmantpow2,           __m128d, dbl_maxmantpow2, dbl_false
    v2ci2 __m128d_0e_mantdig,               __m128d, dbl_mantdig, dbl_false
    v2ci2 __m128d_0e_mant,                  __m128d, dbl_mant, dbl_false
    v2ci2 __m128d_0e_negmantdig,            __m128d, dbl_negmantdig, dbl_false
    v2ci2 __m128d_0e_negmant,               __m128d, dbl_negmant, dbl_false
    v2ci2 __m128d_0e_maxexpo,               __m128d, dbl_maxexpo, dbl_false
    v2ci2 __m128d_0e_exposign,              __m128d, dbl_exposign, dbl_false
    v2ci2 __m128d_0e_expo,                  __m128d, dbl_expo, dbl_false
    v2ci2 __m128d_0e_negmaxexpo,            __m128d, dbl_negmaxexpo, dbl_false
    v2ci2 __m128d_0e_negexposign,           __m128d, dbl_negexposign, dbl_false
    v2ci2 __m128d_0e_negexpo,               __m128d, dbl_negexpo, dbl_false
    v2ci2 __m128d_0e_subnormalexpo,         __m128d, dbl_subnormalexpo, dbl_false
    v2ci2 __m128d_0e_minexpo,               __m128d, dbl_minexpo, dbl_false
    v2ci2 __m128d_0e_maxdecexpo,            __m128d, dbl_maxdecexpo, dbl_false
    v2ci2 __m128d_0e_negmaxdecexpo,         __m128d, dbl_negmaxdecexpo, dbl_false
    v2ci2 __m128d_0e_mindecexpo,            __m128d, dbl_mindecexpo, dbl_false
    v2ci2 __m128d_0e_expofield,             __m128d, dbl_expofield, dbl_false
    v2ci2 __m128d_0e_mantfield,             __m128d, dbl_mantfield, dbl_false
    v2ci2 __m128d_0e_norm,                  __m128d, dbl_norm, dbl_false
    v2ci2 __m128d_0e_radix,                 __m128d, dbl_radix, dbl_false
    v2ci2 __m128d_0e_rounds,                __m128d, dbl_rounds, dbl_false
    v2ci2 __m128d_0e_subdec,                __m128d, dbl_subdec, dbl_false
    v2ci2 __m128d_0e_sqrtmax,               __m128d, dbl_sqrtmax, dbl_false
    v2ci2 __m128d_0e_smallnormal,           __m128d, dbl_smallnormal, dbl_false

    v2ci2 __m128d_0e_halfminuseps,          __m128d, dbl_halfminuseps, dbl_false
    v2ci2 __m128d_0e_trueint,               __m128d, dbl_trueint, dbl_false
    
    v2ci2 __m128d_0e_byte,                  __m128d, dbl_byte, dbl_false
    v2ci2 __m128d_0e_byte_even,             __m128d, dbl_byte_even, dbl_false
    v2ci2 __m128d_0e_byte_odd,              __m128d, dbl_byte_odd, dbl_false
    v2ci2 __m128d_0e_4low,                  __m128d, dbl_4low, dbl_false
    v2ci2 __m128d_0e_4high,                 __m128d, dbl_4high, dbl_false
    v2ci2 __m128d_0e_flip4,                 __m128d, dbl_flip4, dbl_false
    v2ci2 __m128d_0e_8low,                  __m128d, dbl_8low, dbl_false
    v2ci2 __m128d_0e_8high,                 __m128d, dbl_8high, dbl_false
    v2ci2 __m128d_0e_flip8,                 __m128d, dbl_flip8, dbl_false
    v2ci2 __m128d_0e_16low,                 __m128d, dbl_16low, dbl_false
    v2ci2 __m128d_0e_16high,                __m128d, dbl_16high, dbl_false
    v2ci2 __m128d_0e_flip16,                __m128d, dbl_flip16, dbl_false
    v2ci2 __m128d_0e_24low,                 __m128d, dbl_24low, dbl_false
    v2ci2 __m128d_0e_24high,                __m128d, dbl_24high, dbl_false
    v2ci2 __m128d_0e_flip24,                __m128d, dbl_flip24, dbl_false
    v2ci2 __m128d_0e_28low,                 __m128d, dbl_28low, dbl_false
    v2ci2 __m128d_0e_28high,                __m128d, dbl_28high, dbl_false
    v2ci2 __m128d_0e_flip28,                __m128d, dbl_flip28, dbl_false
    v2ci2 __m128d_0e_32low,                 __m128d, dbl_32low, dbl_false
    v2ci2 __m128d_0e_32high,                __m128d, dbl_32high, dbl_false
    v2ci2 __m128d_0e_flip32,                __m128d, dbl_flip32, dbl_false
    v2ci2 __m128d_0e_40low,                 __m128d, dbl_40low, dbl_false
    v2ci2 __m128d_0e_40high,                __m128d, dbl_40high, dbl_false
    v2ci2 __m128d_0e_flip40,                __m128d, dbl_flip40, dbl_false
    v2ci2 __m128d_0e_48low,                 __m128d, dbl_48low, dbl_false
    v2ci2 __m128d_0e_48high,                __m128d, dbl_48high, dbl_false
    v2ci2 __m128d_0e_flip48,                __m128d, dbl_flip48, dbl_false
    v2ci2 __m128d_0e_56low,                 __m128d, dbl_56low, dbl_false
    v2ci2 __m128d_0e_56high,                __m128d, dbl_56high, dbl_false
    v2ci2 __m128d_0e_flip56,                __m128d, dbl_flip56, dbl_false
    v2ci2 __m128d_0e_60low,                 __m128d, dbl_60low, dbl_false
    v2ci2 __m128d_0e_60high,                __m128d, dbl_60high, dbl_false
    v2ci2 __m128d_0e_flip60,                __m128d, dbl_flip60, dbl_false
    v2ci2 __m128d_0e_64low,                 __m128d, dbl_64low, dbl_false
    v2ci2 __m128d_0e_64high,                __m128d, dbl_64high, dbl_false
    v2ci2 __m128d_0e_flip64,                __m128d, dbl_flip64, dbl_false

    v2ci2 __m128d_0e_0,                     __m128d, dbl_0, dbl_false
    v2ci2 __m128d_0e_0d0001,                __m128d, dbl_0d0001, dbl_false
    v2ci2 __m128d_0e_0d0002,                __m128d, dbl_0d0002, dbl_false
    v2ci2 __m128d_0e_0d0003,                __m128d, dbl_0d0003, dbl_false
    v2ci2 __m128d_0e_0d0004,                __m128d, dbl_0d0004, dbl_false
    v2ci2 __m128d_0e_0d0005,                __m128d, dbl_0d0005, dbl_false
    v2ci2 __m128d_0e_0d0006,                __m128d, dbl_0d0006, dbl_false
    v2ci2 __m128d_0e_0d0007,                __m128d, dbl_0d0007, dbl_false
    v2ci2 __m128d_0e_0d0008,                __m128d, dbl_0d0008, dbl_false
    v2ci2 __m128d_0e_0d0009,                __m128d, dbl_0d0009, dbl_false
    v2ci2 __m128d_0e_0d001,                 __m128d, dbl_0d001, dbl_false
    v2ci2 __m128d_0e_0d002,                 __m128d, dbl_0d002, dbl_false
    v2ci2 __m128d_0e_0d003,                 __m128d, dbl_0d003, dbl_false
    v2ci2 __m128d_0e_0d004,                 __m128d, dbl_0d004, dbl_false
    v2ci2 __m128d_0e_0d005,                 __m128d, dbl_0d005, dbl_false
    v2ci2 __m128d_0e_0d006,                 __m128d, dbl_0d006, dbl_false
    v2ci2 __m128d_0e_0d007,                 __m128d, dbl_0d007, dbl_false
    v2ci2 __m128d_0e_0d008,                 __m128d, dbl_0d008, dbl_false
    v2ci2 __m128d_0e_0d009,                 __m128d, dbl_0d009, dbl_false
    v2ci2 __m128d_0e_0d01,                  __m128d, dbl_0d01, dbl_false
    v2ci2 __m128d_0e_0d02,                  __m128d, dbl_0d02, dbl_false
    v2ci2 __m128d_0e_0d025,                 __m128d, dbl_0d025, dbl_false
    v2ci2 __m128d_0e_0d03,                  __m128d, dbl_0d03, dbl_false
    v2ci2 __m128d_0e_0d04,                  __m128d, dbl_0d04, dbl_false
    v2ci2 __m128d_0e_0d05,                  __m128d, dbl_0d05, dbl_false
    v2ci2 __m128d_0e_0d06,                  __m128d, dbl_0d06, dbl_false
    v2ci2 __m128d_0e_0d07,                  __m128d, dbl_0d07, dbl_false
    v2ci2 __m128d_0e_0d08,                  __m128d, dbl_0d08, dbl_false
    v2ci2 __m128d_0e_0d09,                  __m128d, dbl_0d09, dbl_false
    v2ci2 __m128d_0e_0d1,                   __m128d, dbl_0d1, dbl_false
    v2ci2 __m128d_0e_0d2,                   __m128d, dbl_0d2, dbl_false
    v2ci2 __m128d_0e_0d25,                  __m128d, dbl_0d25, dbl_false
    v2ci2 __m128d_0e_0d3,                   __m128d, dbl_0d3, dbl_false
    v2ci2 __m128d_0e_0d4,                   __m128d, dbl_0d4, dbl_false
    v2ci2 __m128d_0e_0d5,                   __m128d, dbl_0d5, dbl_false
    v2ci2 __m128d_0e_0d6,                   __m128d, dbl_0d6, dbl_false
    v2ci2 __m128d_0e_0d7,                   __m128d, dbl_0d7, dbl_false
    v2ci2 __m128d_0e_0d8,                   __m128d, dbl_0d8, dbl_false
    v2ci2 __m128d_0e_0d9,                   __m128d, dbl_0d9, dbl_false
    v2ci2 __m128d_0e_1,                     __m128d, dbl_1, dbl_false
    v2ci2 __m128d_0e_1d25,                  __m128d, dbl_1d25, dbl_false
    v2ci2 __m128d_0e_1d5,                   __m128d, dbl_1d5, dbl_false
    v2ci2 __m128d_0e_2,                     __m128d, dbl_2, dbl_false
    v2ci2 __m128d_0e_2d25,                  __m128d, dbl_2d25, dbl_false
    v2ci2 __m128d_0e_2d5,                   __m128d, dbl_2d5, dbl_false
    v2ci2 __m128d_0e_3,                     __m128d, dbl_3, dbl_false
    v2ci2 __m128d_0e_3d25,                  __m128d, dbl_3d25, dbl_false
    v2ci2 __m128d_0e_3d5,                   __m128d, dbl_3d5, dbl_false
    v2ci2 __m128d_0e_4,                     __m128d, dbl_4, dbl_false
    v2ci2 __m128d_0e_4d25,                  __m128d, dbl_4d25, dbl_false
    v2ci2 __m128d_0e_4d5,                   __m128d, dbl_4d5, dbl_false
    v2ci2 __m128d_0e_5,                     __m128d, dbl_5, dbl_false
    v2ci2 __m128d_0e_5d25,                  __m128d, dbl_5d25, dbl_false
    v2ci2 __m128d_0e_5d5,                   __m128d, dbl_5d5, dbl_false
    v2ci2 __m128d_0e_6,                     __m128d, dbl_6, dbl_false
    v2ci2 __m128d_0e_6d25,                  __m128d, dbl_6d25, dbl_false
    v2ci2 __m128d_0e_6d5,                   __m128d, dbl_6d5, dbl_false
    v2ci2 __m128d_0e_7,                     __m128d, dbl_7, dbl_false
    v2ci2 __m128d_0e_7d25,                  __m128d, dbl_7d25, dbl_false
    v2ci2 __m128d_0e_7d5,                   __m128d, dbl_7d5, dbl_false
    v2ci2 __m128d_0e_8,                     __m128d, dbl_8, dbl_false
    v2ci2 __m128d_0e_8d25,                  __m128d, dbl_8d25, dbl_false
    v2ci2 __m128d_0e_8d5,                   __m128d, dbl_8d5, dbl_false
    v2ci2 __m128d_0e_9,                     __m128d, dbl_9, dbl_false
    v2ci2 __m128d_0e_9d25,                  __m128d, dbl_9d25, dbl_false
    v2ci2 __m128d_0e_9d5,                   __m128d, dbl_9d5, dbl_false
    v2ci2 __m128d_0e_10,                    __m128d, dbl_10, dbl_false
    v2ci2 __m128d_0e_11,                    __m128d, dbl_11, dbl_false
    v2ci2 __m128d_0e_12,                    __m128d, dbl_12, dbl_false
    v2ci2 __m128d_0e_13,                    __m128d, dbl_13, dbl_false
    v2ci2 __m128d_0e_14,                    __m128d, dbl_14, dbl_false
    v2ci2 __m128d_0e_15,                    __m128d, dbl_15, dbl_false
    v2ci2 __m128d_0e_16,                    __m128d, dbl_16, dbl_false
    v2ci2 __m128d_0e_17,                    __m128d, dbl_17, dbl_false
    v2ci2 __m128d_0e_18,                    __m128d, dbl_18, dbl_false
    v2ci2 __m128d_0e_19,                    __m128d, dbl_19, dbl_false
    v2ci2 __m128d_0e_20,                    __m128d, dbl_20, dbl_false
    v2ci2 __m128d_0e_21,                    __m128d, dbl_21, dbl_false
    v2ci2 __m128d_0e_22,                    __m128d, dbl_22, dbl_false
    v2ci2 __m128d_0e_23,                    __m128d, dbl_23, dbl_false
    v2ci2 __m128d_0e_24,                    __m128d, dbl_24, dbl_false
    v2ci2 __m128d_0e_24d5,                  __m128d, dbl_24d5, dbl_false
    v2ci2 __m128d_0e_25,                    __m128d, dbl_25, dbl_false
    v2ci2 __m128d_0e_26,                    __m128d, dbl_26, dbl_false
    v2ci2 __m128d_0e_27,                    __m128d, dbl_27, dbl_false
    v2ci2 __m128d_0e_28,                    __m128d, dbl_28, dbl_false
    v2ci2 __m128d_0e_29,                    __m128d, dbl_29, dbl_false
    v2ci2 __m128d_0e_30,                    __m128d, dbl_30, dbl_false
    v2ci2 __m128d_0e_31,                    __m128d, dbl_31, dbl_false
    v2ci2 __m128d_0e_32,                    __m128d, dbl_32, dbl_false
    v2ci2 __m128d_0e_33,                    __m128d, dbl_33, dbl_false
    v2ci2 __m128d_0e_34,                    __m128d, dbl_34, dbl_false
    v2ci2 __m128d_0e_35,                    __m128d, dbl_35, dbl_false
    v2ci2 __m128d_0e_36,                    __m128d, dbl_36, dbl_false
    v2ci2 __m128d_0e_37,                    __m128d, dbl_37, dbl_false
    v2ci2 __m128d_0e_38,                    __m128d, dbl_38, dbl_false
    v2ci2 __m128d_0e_39,                    __m128d, dbl_39, dbl_false
    v2ci2 __m128d_0e_40,                    __m128d, dbl_40, dbl_false
    v2ci2 __m128d_0e_41,                    __m128d, dbl_41, dbl_false
    v2ci2 __m128d_0e_42,                    __m128d, dbl_42, dbl_false
    v2ci2 __m128d_0e_43,                    __m128d, dbl_43, dbl_false
    v2ci2 __m128d_0e_44,                    __m128d, dbl_44, dbl_false
    v2ci2 __m128d_0e_45,                    __m128d, dbl_45, dbl_false
    v2ci2 __m128d_0e_46,                    __m128d, dbl_46, dbl_false
    v2ci2 __m128d_0e_47,                    __m128d, dbl_47, dbl_false
    v2ci2 __m128d_0e_48,                    __m128d, dbl_48, dbl_false
    v2ci2 __m128d_0e_49,                    __m128d, dbl_49, dbl_false
    v2ci2 __m128d_0e_50,                    __m128d, dbl_50, dbl_false
    v2ci2 __m128d_0e_51,                    __m128d, dbl_51, dbl_false
    v2ci2 __m128d_0e_52,                    __m128d, dbl_52, dbl_false
    v2ci2 __m128d_0e_53,                    __m128d, dbl_53, dbl_false
    v2ci2 __m128d_0e_54,                    __m128d, dbl_54, dbl_false
    v2ci2 __m128d_0e_55,                    __m128d, dbl_55, dbl_false
    v2ci2 __m128d_0e_56,                    __m128d, dbl_56, dbl_false
    v2ci2 __m128d_0e_57,                    __m128d, dbl_57, dbl_false
    v2ci2 __m128d_0e_58,                    __m128d, dbl_58, dbl_false
    v2ci2 __m128d_0e_59,                    __m128d, dbl_59, dbl_false
    v2ci2 __m128d_0e_60,                    __m128d, dbl_60, dbl_false
    v2ci2 __m128d_0e_61,                    __m128d, dbl_61, dbl_false
    v2ci2 __m128d_0e_62,                    __m128d, dbl_62, dbl_false
    v2ci2 __m128d_0e_63,                    __m128d, dbl_63, dbl_false
    v2ci2 __m128d_0e_64,                    __m128d, dbl_64, dbl_false
    v2ci2 __m128d_0e_65,                    __m128d, dbl_65, dbl_false
    v2ci2 __m128d_0e_66,                    __m128d, dbl_66, dbl_false
    v2ci2 __m128d_0e_67,                    __m128d, dbl_67, dbl_false
    v2ci2 __m128d_0e_68,                    __m128d, dbl_68, dbl_false
    v2ci2 __m128d_0e_69,                    __m128d, dbl_69, dbl_false
    v2ci2 __m128d_0e_70,                    __m128d, dbl_70, dbl_false
    v2ci2 __m128d_0e_71,                    __m128d, dbl_71, dbl_false
    v2ci2 __m128d_0e_72,                    __m128d, dbl_72, dbl_false
    v2ci2 __m128d_0e_73,                    __m128d, dbl_73, dbl_false
    v2ci2 __m128d_0e_74,                    __m128d, dbl_74, dbl_false
    v2ci2 __m128d_0e_75,                    __m128d, dbl_75, dbl_false
    v2ci2 __m128d_0e_76,                    __m128d, dbl_76, dbl_false
    v2ci2 __m128d_0e_77,                    __m128d, dbl_77, dbl_false
    v2ci2 __m128d_0e_78,                    __m128d, dbl_78, dbl_false
    v2ci2 __m128d_0e_79,                    __m128d, dbl_79, dbl_false
    v2ci2 __m128d_0e_80,                    __m128d, dbl_80, dbl_false
    v2ci2 __m128d_0e_81,                    __m128d, dbl_81, dbl_false
    v2ci2 __m128d_0e_82,                    __m128d, dbl_82, dbl_false
    v2ci2 __m128d_0e_83,                    __m128d, dbl_83, dbl_false
    v2ci2 __m128d_0e_84,                    __m128d, dbl_84, dbl_false
    v2ci2 __m128d_0e_85,                    __m128d, dbl_85, dbl_false
    v2ci2 __m128d_0e_86,                    __m128d, dbl_86, dbl_false
    v2ci2 __m128d_0e_87,                    __m128d, dbl_87, dbl_false
    v2ci2 __m128d_0e_88,                    __m128d, dbl_88, dbl_false
    v2ci2 __m128d_0e_89,                    __m128d, dbl_89, dbl_false
    v2ci2 __m128d_0e_90,                    __m128d, dbl_90, dbl_false
    v2ci2 __m128d_0e_91,                    __m128d, dbl_91, dbl_false
    v2ci2 __m128d_0e_92,                    __m128d, dbl_92, dbl_false
    v2ci2 __m128d_0e_93,                    __m128d, dbl_93, dbl_false
    v2ci2 __m128d_0e_94,                    __m128d, dbl_94, dbl_false
    v2ci2 __m128d_0e_95,                    __m128d, dbl_95, dbl_false
    v2ci2 __m128d_0e_96,                    __m128d, dbl_96, dbl_false
    v2ci2 __m128d_0e_97,                    __m128d, dbl_97, dbl_false
    v2ci2 __m128d_0e_98,                    __m128d, dbl_98, dbl_false
    v2ci2 __m128d_0e_99,                    __m128d, dbl_99, dbl_false
    v2ci2 __m128d_0e_100,                   __m128d, dbl_100, dbl_false
    v2ci2 __m128d_0e_125,                   __m128d, dbl_125, dbl_false
    v2ci2 __m128d_0e_126,                   __m128d, dbl_126, dbl_false
    v2ci2 __m128d_0e_127,                   __m128d, dbl_127, dbl_false
    v2ci2 __m128d_0e_128,                   __m128d, dbl_128, dbl_false
    v2ci2 __m128d_0e_140,                   __m128d, dbl_140, dbl_false
    v2ci2 __m128d_0e_145,                   __m128d, dbl_145, dbl_false
    v2ci2 __m128d_0e_150,                   __m128d, dbl_150, dbl_false
    v2ci2 __m128d_0e_180,                   __m128d, dbl_180, dbl_false
    v2ci2 __m128d_0e_253,                   __m128d, dbl_253, dbl_false
    v2ci2 __m128d_0e_254,                   __m128d, dbl_254, dbl_false
    v2ci2 __m128d_0e_255,                   __m128d, dbl_255, dbl_false
    v2ci2 __m128d_0e_256,                   __m128d, dbl_256, dbl_false
    v2ci2 __m128d_0e_360,                    __m128d, dbl_360, dbl_false
    v2ci2 __m128d_0e_511,                   __m128d, dbl_511, dbl_false
    v2ci2 __m128d_0e_512,                   __m128d, dbl_512, dbl_false
    v2ci2 __m128d_0e_513,                   __m128d, dbl_513, dbl_false
    v2ci2 __m128d_0e_1023,                  __m128d, dbl_1023, dbl_false
    v2ci2 __m128d_0e_1024,                  __m128d, dbl_1024, dbl_false
    v2ci2 __m128d_0e_1025,                  __m128d, dbl_1025, dbl_false

    v2ci2 __m128d_0e_32767,                 __m128d, dbl_32767, dbl_false
    v2ci2 __m128d_0e_32768,                 __m128d, dbl_32768, dbl_false
    v2ci2 __m128d_0e_65535,                 __m128d, dbl_65535, dbl_false
    v2ci2 __m128d_0e_65536,                 __m128d, dbl_65536, dbl_false
    v2ci2 __m128d_0e_2147483647,            __m128d, dbl_2147483647, dbl_false
    v2ci2 __m128d_0e_2147483648,            __m128d, dbl_2147483648, dbl_false
    v2ci2 __m128d_0e_4294967295,            __m128d, dbl_4294967295, dbl_false
    v2ci2 __m128d_0e_4294967296,            __m128d, dbl_4294967296, dbl_false
    
    v2ci2 __m128d_0e_neg0,                  __m128d, dbl_neg0, dbl_false
    v2ci2 __m128d_0e_neg0d0001,             __m128d, dbl_neg0d0001, dbl_false
    v2ci2 __m128d_0e_neg0d0002,             __m128d, dbl_neg0d0002, dbl_false
    v2ci2 __m128d_0e_neg0d0003,             __m128d, dbl_neg0d0003, dbl_false
    v2ci2 __m128d_0e_neg0d0004,             __m128d, dbl_neg0d0004, dbl_false
    v2ci2 __m128d_0e_neg0d0005,             __m128d, dbl_neg0d0005, dbl_false
    v2ci2 __m128d_0e_neg0d0006,             __m128d, dbl_neg0d0006, dbl_false
    v2ci2 __m128d_0e_neg0d0007,             __m128d, dbl_neg0d0007, dbl_false
    v2ci2 __m128d_0e_neg0d0008,             __m128d, dbl_neg0d0008, dbl_false
    v2ci2 __m128d_0e_neg0d0009,             __m128d, dbl_neg0d0009, dbl_false
    v2ci2 __m128d_0e_neg0d001,              __m128d, dbl_neg0d001, dbl_false
    v2ci2 __m128d_0e_neg0d002,              __m128d, dbl_neg0d002, dbl_false
    v2ci2 __m128d_0e_neg0d003,              __m128d, dbl_neg0d003, dbl_false
    v2ci2 __m128d_0e_neg0d004,              __m128d, dbl_neg0d004, dbl_false
    v2ci2 __m128d_0e_neg0d005,              __m128d, dbl_neg0d005, dbl_false
    v2ci2 __m128d_0e_neg0d006,              __m128d, dbl_neg0d006, dbl_false
    v2ci2 __m128d_0e_neg0d007,              __m128d, dbl_neg0d007, dbl_false
    v2ci2 __m128d_0e_neg0d008,              __m128d, dbl_neg0d008, dbl_false
    v2ci2 __m128d_0e_neg0d009,              __m128d, dbl_neg0d009, dbl_false
    v2ci2 __m128d_0e_neg0d01,               __m128d, dbl_neg0d01, dbl_false
    v2ci2 __m128d_0e_neg0d02,               __m128d, dbl_neg0d02, dbl_false
    v2ci2 __m128d_0e_neg0d025,              __m128d, dbl_neg0d025, dbl_false
    v2ci2 __m128d_0e_neg0d03,               __m128d, dbl_neg0d03, dbl_false
    v2ci2 __m128d_0e_neg0d04,               __m128d, dbl_neg0d04, dbl_false
    v2ci2 __m128d_0e_neg0d05,               __m128d, dbl_neg0d05, dbl_false
    v2ci2 __m128d_0e_neg0d06,               __m128d, dbl_neg0d06, dbl_false
    v2ci2 __m128d_0e_neg0d07,               __m128d, dbl_neg0d07, dbl_false
    v2ci2 __m128d_0e_neg0d08,               __m128d, dbl_neg0d08, dbl_false
    v2ci2 __m128d_0e_neg0d09,               __m128d, dbl_neg0d09, dbl_false
    v2ci2 __m128d_0e_neg0d1,                __m128d, dbl_neg0d1, dbl_false
    v2ci2 __m128d_0e_neg0d2,                __m128d, dbl_neg0d2, dbl_false
    v2ci2 __m128d_0e_neg0d25,               __m128d, dbl_neg0d25, dbl_false
    v2ci2 __m128d_0e_neg0d3,                __m128d, dbl_neg0d3, dbl_false
    v2ci2 __m128d_0e_neg0d4,                __m128d, dbl_neg0d4, dbl_false
    v2ci2 __m128d_0e_neg0d5,                __m128d, dbl_neg0d5, dbl_false
    v2ci2 __m128d_0e_neg0d6,                __m128d, dbl_neg0d6, dbl_false
    v2ci2 __m128d_0e_neg0d7,                __m128d, dbl_neg0d7, dbl_false
    v2ci2 __m128d_0e_neg0d8,                __m128d, dbl_neg0d8, dbl_false
    v2ci2 __m128d_0e_neg0d9,                __m128d, dbl_neg0d9, dbl_false
    v2ci2 __m128d_0e_neg1,                  __m128d, dbl_neg1, dbl_false
    v2ci2 __m128d_0e_neg1d25,               __m128d, dbl_neg1d25, dbl_false
    v2ci2 __m128d_0e_neg1d5,                __m128d, dbl_neg1d5, dbl_false
    v2ci2 __m128d_0e_neg2,                  __m128d, dbl_neg2, dbl_false
    v2ci2 __m128d_0e_neg2d25,               __m128d, dbl_neg2d25, dbl_false
    v2ci2 __m128d_0e_neg2d5,                __m128d, dbl_neg2d5, dbl_false
    v2ci2 __m128d_0e_neg3,                  __m128d, dbl_neg3, dbl_false
    v2ci2 __m128d_0e_neg3d25,               __m128d, dbl_neg3d25, dbl_false
    v2ci2 __m128d_0e_neg3d5,                __m128d, dbl_neg3d5, dbl_false
    v2ci2 __m128d_0e_neg4,                  __m128d, dbl_neg4, dbl_false
    v2ci2 __m128d_0e_neg4d25,               __m128d, dbl_neg4d25, dbl_false
    v2ci2 __m128d_0e_neg4d5,                __m128d, dbl_neg4d5, dbl_false
    v2ci2 __m128d_0e_neg5,                  __m128d, dbl_neg5, dbl_false
    v2ci2 __m128d_0e_neg5d25,               __m128d, dbl_neg5d25, dbl_false
    v2ci2 __m128d_0e_neg5d5,                __m128d, dbl_neg5d5, dbl_false
    v2ci2 __m128d_0e_neg6,                  __m128d, dbl_neg6, dbl_false
    v2ci2 __m128d_0e_neg6d25,               __m128d, dbl_neg6d25, dbl_false
    v2ci2 __m128d_0e_neg6d5,                __m128d, dbl_neg6d5, dbl_false
    v2ci2 __m128d_0e_neg7,                  __m128d, dbl_neg7, dbl_false
    v2ci2 __m128d_0e_neg7d25,               __m128d, dbl_neg7d25, dbl_false
    v2ci2 __m128d_0e_neg7d5,                __m128d, dbl_neg7d5, dbl_false
    v2ci2 __m128d_0e_neg8,                  __m128d, dbl_neg8, dbl_false
    v2ci2 __m128d_0e_neg8d25,               __m128d, dbl_neg8d25, dbl_false
    v2ci2 __m128d_0e_neg8d5,                __m128d, dbl_neg8d5, dbl_false
    v2ci2 __m128d_0e_neg9,                  __m128d, dbl_neg9, dbl_false
    v2ci2 __m128d_0e_neg9d25,               __m128d, dbl_neg9d25, dbl_false
    v2ci2 __m128d_0e_neg9d5,                __m128d, dbl_neg9d5, dbl_false
    v2ci2 __m128d_0e_neg10,                 __m128d, dbl_neg10, dbl_false
    v2ci2 __m128d_0e_neg11,                 __m128d, dbl_neg11, dbl_false
    v2ci2 __m128d_0e_neg12,                 __m128d, dbl_neg12, dbl_false
    v2ci2 __m128d_0e_neg13,                 __m128d, dbl_neg13, dbl_false
    v2ci2 __m128d_0e_neg14,                 __m128d, dbl_neg14, dbl_false
    v2ci2 __m128d_0e_neg15,                 __m128d, dbl_neg15, dbl_false
    v2ci2 __m128d_0e_neg16,                 __m128d, dbl_neg16, dbl_false
    v2ci2 __m128d_0e_neg17,                 __m128d, dbl_neg17, dbl_false
    v2ci2 __m128d_0e_neg18,                 __m128d, dbl_neg18, dbl_false
    v2ci2 __m128d_0e_neg19,                 __m128d, dbl_neg19, dbl_false
    v2ci2 __m128d_0e_neg20,                 __m128d, dbl_neg20, dbl_false
    v2ci2 __m128d_0e_neg21,                 __m128d, dbl_neg21, dbl_false
    v2ci2 __m128d_0e_neg22,                 __m128d, dbl_neg22, dbl_false
    v2ci2 __m128d_0e_neg23,                 __m128d, dbl_neg23, dbl_false
    v2ci2 __m128d_0e_neg24,                 __m128d, dbl_neg24, dbl_false
    v2ci2 __m128d_0e_neg24d5,               __m128d, dbl_neg24d5, dbl_false
    v2ci2 __m128d_0e_neg25,                 __m128d, dbl_neg25, dbl_false
    v2ci2 __m128d_0e_neg26,                 __m128d, dbl_neg26, dbl_false
    v2ci2 __m128d_0e_neg27,                 __m128d, dbl_neg27, dbl_false
    v2ci2 __m128d_0e_neg28,                 __m128d, dbl_neg28, dbl_false
    v2ci2 __m128d_0e_neg29,                 __m128d, dbl_neg29, dbl_false
    v2ci2 __m128d_0e_neg30,                 __m128d, dbl_neg30, dbl_false
    v2ci2 __m128d_0e_neg31,                 __m128d, dbl_neg31, dbl_false
    v2ci2 __m128d_0e_neg32,                 __m128d, dbl_neg32, dbl_false
    v2ci2 __m128d_0e_neg33,                 __m128d, dbl_neg33, dbl_false
    v2ci2 __m128d_0e_neg34,                 __m128d, dbl_neg34, dbl_false
    v2ci2 __m128d_0e_neg35,                 __m128d, dbl_neg35, dbl_false
    v2ci2 __m128d_0e_neg36,                 __m128d, dbl_neg36, dbl_false
    v2ci2 __m128d_0e_neg37,                 __m128d, dbl_neg37, dbl_false
    v2ci2 __m128d_0e_neg38,                 __m128d, dbl_neg38, dbl_false
    v2ci2 __m128d_0e_neg39,                 __m128d, dbl_neg39, dbl_false
    v2ci2 __m128d_0e_neg40,                 __m128d, dbl_neg40, dbl_false
    v2ci2 __m128d_0e_neg41,                 __m128d, dbl_neg41, dbl_false
    v2ci2 __m128d_0e_neg42,                 __m128d, dbl_neg42, dbl_false
    v2ci2 __m128d_0e_neg43,                 __m128d, dbl_neg43, dbl_false
    v2ci2 __m128d_0e_neg44,                 __m128d, dbl_neg44, dbl_false
    v2ci2 __m128d_0e_neg45,                 __m128d, dbl_neg45, dbl_false
    v2ci2 __m128d_0e_neg46,                 __m128d, dbl_neg46, dbl_false
    v2ci2 __m128d_0e_neg47,                 __m128d, dbl_neg47, dbl_false
    v2ci2 __m128d_0e_neg48,                 __m128d, dbl_neg48, dbl_false
    v2ci2 __m128d_0e_neg49,                 __m128d, dbl_neg49, dbl_false
    v2ci2 __m128d_0e_neg50,                 __m128d, dbl_neg50, dbl_false
    v2ci2 __m128d_0e_neg51,                 __m128d, dbl_neg51, dbl_false
    v2ci2 __m128d_0e_neg52,                 __m128d, dbl_neg52, dbl_false
    v2ci2 __m128d_0e_neg53,                 __m128d, dbl_neg53, dbl_false
    v2ci2 __m128d_0e_neg54,                 __m128d, dbl_neg54, dbl_false
    v2ci2 __m128d_0e_neg55,                 __m128d, dbl_neg55, dbl_false
    v2ci2 __m128d_0e_neg56,                 __m128d, dbl_neg56, dbl_false
    v2ci2 __m128d_0e_neg57,                 __m128d, dbl_neg57, dbl_false
    v2ci2 __m128d_0e_neg58,                 __m128d, dbl_neg58, dbl_false
    v2ci2 __m128d_0e_neg59,                 __m128d, dbl_neg59, dbl_false
    v2ci2 __m128d_0e_neg60,                 __m128d, dbl_neg60, dbl_false
    v2ci2 __m128d_0e_neg61,                 __m128d, dbl_neg61, dbl_false
    v2ci2 __m128d_0e_neg62,                 __m128d, dbl_neg62, dbl_false
    v2ci2 __m128d_0e_neg63,                 __m128d, dbl_neg63, dbl_false
    v2ci2 __m128d_0e_neg64,                 __m128d, dbl_neg64, dbl_false
    v2ci2 __m128d_0e_neg65,                 __m128d, dbl_neg65, dbl_false
    v2ci2 __m128d_0e_neg66,                 __m128d, dbl_neg66, dbl_false
    v2ci2 __m128d_0e_neg67,                 __m128d, dbl_neg67, dbl_false
    v2ci2 __m128d_0e_neg68,                 __m128d, dbl_neg68, dbl_false
    v2ci2 __m128d_0e_neg69,                 __m128d, dbl_neg69, dbl_false
    v2ci2 __m128d_0e_neg70,                 __m128d, dbl_neg70, dbl_false
    v2ci2 __m128d_0e_neg71,                 __m128d, dbl_neg71, dbl_false
    v2ci2 __m128d_0e_neg72,                 __m128d, dbl_neg72, dbl_false
    v2ci2 __m128d_0e_neg73,                 __m128d, dbl_neg73, dbl_false
    v2ci2 __m128d_0e_neg74,                 __m128d, dbl_neg74, dbl_false
    v2ci2 __m128d_0e_neg75,                 __m128d, dbl_neg75, dbl_false
    v2ci2 __m128d_0e_neg76,                 __m128d, dbl_neg76, dbl_false
    v2ci2 __m128d_0e_neg77,                 __m128d, dbl_neg77, dbl_false
    v2ci2 __m128d_0e_neg78,                 __m128d, dbl_neg78, dbl_false
    v2ci2 __m128d_0e_neg79,                 __m128d, dbl_neg79, dbl_false
    v2ci2 __m128d_0e_neg80,                 __m128d, dbl_neg80, dbl_false
    v2ci2 __m128d_0e_neg81,                 __m128d, dbl_neg81, dbl_false
    v2ci2 __m128d_0e_neg82,                 __m128d, dbl_neg82, dbl_false
    v2ci2 __m128d_0e_neg83,                 __m128d, dbl_neg83, dbl_false
    v2ci2 __m128d_0e_neg84,                 __m128d, dbl_neg84, dbl_false
    v2ci2 __m128d_0e_neg85,                 __m128d, dbl_neg85, dbl_false
    v2ci2 __m128d_0e_neg86,                 __m128d, dbl_neg86, dbl_false
    v2ci2 __m128d_0e_neg87,                 __m128d, dbl_neg87, dbl_false
    v2ci2 __m128d_0e_neg88,                 __m128d, dbl_neg88, dbl_false
    v2ci2 __m128d_0e_neg89,                 __m128d, dbl_neg89, dbl_false
    v2ci2 __m128d_0e_neg90,                 __m128d, dbl_neg90, dbl_false
    v2ci2 __m128d_0e_neg91,                 __m128d, dbl_neg91, dbl_false
    v2ci2 __m128d_0e_neg92,                 __m128d, dbl_neg92, dbl_false
    v2ci2 __m128d_0e_neg93,                 __m128d, dbl_neg93, dbl_false
    v2ci2 __m128d_0e_neg94,                 __m128d, dbl_neg94, dbl_false
    v2ci2 __m128d_0e_neg95,                 __m128d, dbl_neg95, dbl_false
    v2ci2 __m128d_0e_neg96,                 __m128d, dbl_neg96, dbl_false
    v2ci2 __m128d_0e_neg97,                 __m128d, dbl_neg97, dbl_false
    v2ci2 __m128d_0e_neg98,                 __m128d, dbl_neg98, dbl_false
    v2ci2 __m128d_0e_neg99,                 __m128d, dbl_neg99, dbl_false
    v2ci2 __m128d_0e_neg100,                __m128d, dbl_neg100, dbl_false
    v2ci2 __m128d_0e_neg125,                __m128d, dbl_neg125, dbl_false
    v2ci2 __m128d_0e_neg126,                __m128d, dbl_neg126, dbl_false
    v2ci2 __m128d_0e_neg127,                __m128d, dbl_neg127, dbl_false
    v2ci2 __m128d_0e_neg128,                __m128d, dbl_neg128, dbl_false
    v2ci2 __m128d_0e_neg140,                __m128d, dbl_neg140, dbl_false
    v2ci2 __m128d_0e_neg145,                __m128d, dbl_neg145, dbl_false
    v2ci2 __m128d_0e_neg150,                __m128d, dbl_neg150, dbl_false
    v2ci2 __m128d_0e_neg180,                __m128d, dbl_neg180, dbl_false
    v2ci2 __m128d_0e_neg253,                __m128d, dbl_neg253, dbl_false
    v2ci2 __m128d_0e_neg254,                __m128d, dbl_neg254, dbl_false
    v2ci2 __m128d_0e_neg255,                __m128d, dbl_neg255, dbl_false
    v2ci2 __m128d_0e_neg256,                __m128d, dbl_neg256, dbl_false
    v2ci2 __m128d_0e_neg360,                 __m128d, dbl_neg360, dbl_false
    v2ci2 __m128d_0e_neg511,                __m128d, dbl_neg511, dbl_false
    v2ci2 __m128d_0e_neg512,                __m128d, dbl_neg512, dbl_false
    v2ci2 __m128d_0e_neg513,                __m128d, dbl_neg513, dbl_false
    v2ci2 __m128d_0e_neg1023,               __m128d, dbl_neg1023, dbl_false
    v2ci2 __m128d_0e_neg1024,               __m128d, dbl_neg1024, dbl_false
    v2ci2 __m128d_0e_neg1025,               __m128d, dbl_neg1025, dbl_false

    v2ci2 __m128d_0e_neg32767,              __m128d, dbl_neg32767, dbl_false
    v2ci2 __m128d_0e_neg32768,              __m128d, dbl_neg32768, dbl_false
    v2ci2 __m128d_0e_neg65535,              __m128d, dbl_neg65535, dbl_false
    v2ci2 __m128d_0e_neg65536,              __m128d, dbl_neg65536, dbl_false
    v2ci2 __m128d_0e_neg2147483647,         __m128d, dbl_neg2147483647, dbl_false
    v2ci2 __m128d_0e_neg2147483648,         __m128d, dbl_neg2147483648, dbl_false
    v2ci2 __m128d_0e_neg4294967295,         __m128d, dbl_neg4294967295, dbl_false
    v2ci2 __m128d_0e_neg4294967296,         __m128d, dbl_neg4294967296, dbl_false
    
    v2ci2 __m128d_0e_bin128,                __m128d, dbl_bin128, dbl_false
    v2ci2 __m128d_0e_binneg150,             __m128d, dbl_binneg150, dbl_false

    v2ci2 __m128d_0e_maxrand,               __m128d, dbl_maxrand, dbl_false

    v2ci2 __m128d_0e_maxi8,                 __m128d, dbl_maxi8, dbl_false
    v2ci2 __m128d_0e_mini8,                 __m128d, dbl_mini8, dbl_false
    v2ci2 __m128d_0e_maxu8,                 __m128d, dbl_maxu8, dbl_false

    v2ci2 __m128d_0e_maxi16,                __m128d, dbl_maxi16, dbl_false
    v2ci2 __m128d_0e_mini16,                __m128d, dbl_mini16, dbl_false
    v2ci2 __m128d_0e_maxu16,                __m128d, dbl_maxu16, dbl_false

    v2ci2 __m128d_0e_maxi32,                __m128d, dbl_maxi32, dbl_false
    v2ci2 __m128d_0e_mini32,                __m128d, dbl_mini32, dbl_false
    v2ci2 __m128d_0e_maxu32,                __m128d, dbl_maxu32, dbl_false
    
    v2ci2 __m128d_0e_maxi64,                __m128d, dbl_maxi64, dbl_false
    v2ci2 __m128d_0e_mini64,                __m128d, dbl_mini64, dbl_false
    v2ci2 __m128d_0e_maxu64,                __m128d, dbl_maxu64, dbl_false

    v2ci2 __m128d_0e_maxi8xu8,              __m128d, dbl_maxi8xu8, dbl_false
    v2ci2 __m128d_0e_mini8xu8,              __m128d, dbl_mini8xu8, dbl_false
    v2ci2 __m128d_0e_maxi8xu16,             __m128d, dbl_maxi8xu16, dbl_false
    v2ci2 __m128d_0e_mini8xu16,             __m128d, dbl_mini8xu16, dbl_false

    v2ci2 __m128d_0e_maxi16xu16,            __m128d, dbl_maxi16xu16, dbl_false
    v2ci2 __m128d_0e_mini16xu16,            __m128d, dbl_mini16xu16, dbl_false
    v2ci2 __m128d_0e_maxi16xu32,            __m128d, dbl_maxi16xu32, dbl_false
    v2ci2 __m128d_0e_mini16xu32,            __m128d, dbl_mini16xu32, dbl_false
    
    v2ci2 __m128d_0e_maxi32xu32,            __m128d, dbl_maxi32xu32, dbl_false
    v2ci2 __m128d_0e_mini32xu32,            __m128d, dbl_mini32xu32, dbl_false

    v2ci2 __m128d_0e_fixunsigned,           __m128d, dbl_fixunsigned, dbl_false
    v2ci2 __m128d_0e_fixunsigned32,         __m128d, dbl_fixunsigned32, dbl_false
    v2ci2 __m128d_0e_fixmaxi32,             __m128d, dbl_fixmaxi32, dbl_false
    v2ci2 __m128d_0e_fixmaxu32,             __m128d, dbl_fixmaxu32, dbl_false
    
    v2ci2 __m128d_0e_fixunsigned64,         __m128d, dbl_fixunsigned64, dbl_false
    v2ci2 __m128d_0e_fixmaxi64,             __m128d, dbl_fixmaxi64, dbl_false
    v2ci2 __m128d_0e_fixmaxu64,             __m128d, dbl_fixmaxu64, dbl_false

    v2ci2 __m128d_0e_rcpi16,                __m128d, dbl_rcpi16, dbl_false
    v2ci2 __m128d_0e_rcpu16,                __m128d, dbl_rcpu16, dbl_false
    v2ci2 __m128d_0e_rcpi16xu16,            __m128d, dbl_rcpi16xu16, dbl_false

    v2ci2 __m128d_0e_mg,                    __m128d, dbl_mg, dbl_false
    v2ci2 __m128d_0e_negmg,                 __m128d, dbl_negmg, dbl_false
    v2ci2 __m128d_0e_halfmg,                __m128d, dbl_halfmg, dbl_false
    v2ci2 __m128d_0e_neghalfmg,             __m128d, dbl_neghalfmg, dbl_false
    v2ci2 __m128d_0e_mgdiv4,                __m128d, dbl_mgdiv4, dbl_false
    v2ci2 __m128d_0e_negmgdiv4,             __m128d, dbl_negmgdiv4, dbl_false
    v2ci2 __m128d_0e_halfmgxmg,             __m128d, dbl_halfmgxmg, dbl_false
    v2ci2 __m128d_0e_halfmgxsqrmg,          __m128d, dbl_halfmgxsqrmg, dbl_false
    v2ci2 __m128d_0e_halfmgxcubemg,         __m128d, dbl_halfmgxcubemg, dbl_false
    v2ci2 __m128d_0e_neghalfmgxmg,          __m128d, dbl_neghalfmgxmg, dbl_false
    v2ci2 __m128d_0e_neghalfmgxsqrmg,       __m128d, dbl_neghalfmgxsqrmg, dbl_false
    v2ci2 __m128d_0e_neghalfmgxcubemg,      __m128d, dbl_neghalfmgxcubemg, dbl_false
    v2ci2 __m128d_0e_sqrmg,                 __m128d, dbl_sqrmg, dbl_false
    v2ci2 __m128d_0e_cubemg,                __m128d, dbl_cubemg, dbl_false
    v2ci2 __m128d_0e_sqrtmg,                __m128d, dbl_sqrtmg, dbl_false
    v2ci2 __m128d_0e_cbrtmg,                __m128d, dbl_cbrtmg, dbl_false
    v2ci2 __m128d_0e_rcpmg,                 __m128d, dbl_rcpmg, dbl_false
    v2ci2 __m128d_0e_rcpsqrmg,              __m128d, dbl_rcpsqrmg, dbl_false
    v2ci2 __m128d_0e_rcpcubemg,             __m128d, dbl_rcpcubemg, dbl_false
    v2ci2 __m128d_0e_rcpsqrtmg,             __m128d, dbl_rcpsqrtmg, dbl_false
    v2ci2 __m128d_0e_rcpcbrtmg,             __m128d, dbl_rcpcbrtmg, dbl_false

    v2ci2 __m128d_0e_2mg,                   __m128d, dbl_2mg, dbl_false
    v2ci2 __m128d_0e_neg2mg,                __m128d, dbl_neg2mg, dbl_false
    v2ci2 __m128d_0e_sqr2mg,                __m128d, dbl_sqr2mg, dbl_false
    v2ci2 __m128d_0e_cube2mg,               __m128d, dbl_cube2mg, dbl_false
    v2ci2 __m128d_0e_sqrt2mg,               __m128d, dbl_sqrt2mg, dbl_false
    v2ci2 __m128d_0e_cbrt2mg,               __m128d, dbl_cbrt2mg, dbl_false
    v2ci2 __m128d_0e_4mg,                   __m128d, dbl_4mg, dbl_false
    v2ci2 __m128d_0e_neg4mg,                __m128d, dbl_neg4mg, dbl_false
    v2ci2 __m128d_0e_sqr4mg,                __m128d, dbl_sqr4mg, dbl_false
    v2ci2 __m128d_0e_cube4mg,               __m128d, dbl_cube4mg, dbl_false
    v2ci2 __m128d_0e_sqrt4mg,               __m128d, dbl_sqrt4mg, dbl_false
    v2ci2 __m128d_0e_cbrt4mg,               __m128d, dbl_cbrt4mg, dbl_false
    v2ci2 __m128d_0e_rcp2mg,                __m128d, dbl_rcp2mg, dbl_false
    v2ci2 __m128d_0e_rcp4mg,                __m128d, dbl_rcp4mg, dbl_false

    v2ci2 __m128d_0e_e,                     __m128d, dbl_e, dbl_false
    v2ci2 __m128d_0e_exp,                   __m128d, dbl_exp, dbl_false
    v2ci2 __m128d_0e_loge,                  __m128d, dbl_loge, dbl_false
    v2ci2 __m128d_0e_logehigh,              __m128d, dbl_logehigh, dbl_false
    v2ci2 __m128d_0e_logelow,               __m128d, dbl_logelow, dbl_false
    v2ci2 __m128d_0e_log2e,                 __m128d, dbl_log2e, dbl_false
    v2ci2 __m128d_0e_log2ehigh,             __m128d, dbl_log2ehigh, dbl_false
    v2ci2 __m128d_0e_log2elow,              __m128d, dbl_log2elow, dbl_false
    v2ci2 __m128d_0e_log10e,                __m128d, dbl_log10e, dbl_false
    v2ci2 __m128d_0e_rcplog2e,              __m128d, dbl_rcplog2e, dbl_false
    v2ci2 __m128d_0e_rcplog10e,             __m128d, dbl_rcplog10e, dbl_false
    v2ci2 __m128d_0e_log2t,                 __m128d, dbl_log2t, dbl_false
    v2ci2 __m128d_0e_log2,                  __m128d, dbl_log2, dbl_false
    v2ci2 __m128d_0e_log2high,              __m128d, dbl_log2high, dbl_false
    v2ci2 __m128d_0e_log2low,               __m128d, dbl_log2low, dbl_false
    v2ci2 __m128d_0e_ln2,                   __m128d, dbl_ln2, dbl_false
    v2ci2 __m128d_0e_ln2high,               __m128d, dbl_ln2high, dbl_false
    v2ci2 __m128d_0e_ln2low,                __m128d, dbl_ln2low, dbl_false
    v2ci2 __m128d_0e_1divln2,               __m128d, dbl_1divln2, dbl_false
    v2ci2 __m128d_0e_2divln2,               __m128d, dbl_2divln2, dbl_false
    v2ci2 __m128d_0e_lnt,                   __m128d, dbl_lnt, dbl_false
    v2ci2 __m128d_0e_lnthigh,               __m128d, dbl_lnthigh, dbl_false
    v2ci2 __m128d_0e_lntlow,                __m128d, dbl_lntlow, dbl_false
    v2ci2 __m128d_0e_ln10,                  __m128d, dbl_ln10, dbl_false
    v2ci2 __m128d_0e_sqrt2,                 __m128d, dbl_sqrt2, dbl_false
    v2ci2 __m128d_0e_rcpsqrt2,              __m128d, dbl_rcpsqrt2, dbl_false
    v2ci2 __m128d_0e_sqrt2div2,             __m128d, dbl_sqrt2div2, dbl_false
    v2ci2 __m128d_0e_sqrt2div2high,         __m128d, dbl_sqrt2div2high, dbl_false
    v2ci2 __m128d_0e_sqrt2div2low,          __m128d, dbl_sqrt2div2low, dbl_false
    v2ci2 __m128d_0e_sqrthalf,              __m128d, dbl_sqrthalf, dbl_false
    v2ci2 __m128d_0e_sqrthalfhigh,          __m128d, dbl_sqrthalfhigh, dbl_false
    v2ci2 __m128d_0e_sqrthalflow,           __m128d, dbl_sqrthalflow, dbl_false
    v2ci2 __m128d_0e_pow2,                  __m128d, dbl_pow2, dbl_false
    v2ci2 __m128d_0e_rcppow2,               __m128d, dbl_rcppow2, dbl_false
    v2ci2 __m128d_0e_cbrt2,                 __m128d, dbl_cbrt2, dbl_false
    v2ci2 __m128d_0e_rcpcbrt2,              __m128d, dbl_rcpcbrt2, dbl_false
    v2ci2 __m128d_0e_1div3,                 __m128d, dbl_1div3, dbl_false
    v2ci2 __m128d_0e_1div7,                 __m128d, dbl_1div7, dbl_false
    v2ci2 __m128d_0e_1div9,                 __m128d, dbl_1div9, dbl_false
    v2ci2 __m128d_0e_2div3,                 __m128d, dbl_2div3, dbl_false
    v2ci2 __m128d_0e_2div7,                 __m128d, dbl_2div7, dbl_false
    v2ci2 __m128d_0e_2div9,                 __m128d, dbl_2div9, dbl_false
    v2ci2 __m128d_0e_4div3,                 __m128d, dbl_4div3, dbl_false
    v2ci2 __m128d_0e_4div7,                 __m128d, dbl_4div7, dbl_false
    v2ci2 __m128d_0e_4div9,                 __m128d, dbl_4div9, dbl_false

    v2ci2 __m128d_0e_pi,                    __m128d, dbl_pi, dbl_false
    v2ci2 __m128d_0e_pihigh,                __m128d, dbl_pihigh, dbl_false
    v2ci2 __m128d_0e_pilow,                 __m128d, dbl_pilow, dbl_false
    v2ci2 __m128d_0e_halfpi,                __m128d, dbl_halfpi, dbl_false
    v2ci2 __m128d_0e_2pi,                   __m128d, dbl_2pi, dbl_false
    v2ci2 __m128d_0e_negpi,                 __m128d, dbl_negpi, dbl_false
    v2ci2 __m128d_0e_neghalfpi,             __m128d, dbl_neghalfpi, dbl_false
    v2ci2 __m128d_0e_neg2pi,                __m128d, dbl_neg2pi, dbl_false
    v2ci2 __m128d_0e_rcppi,                 __m128d, dbl_rcppi, dbl_false
    v2ci2 __m128d_0e_invpi,                 __m128d, dbl_invpi, dbl_false
    v2ci2 __m128d_0e_rcp2pi,                __m128d, dbl_rcp2pi, dbl_false
    v2ci2 __m128d_0e_inv2pi,                __m128d, dbl_inv2pi, dbl_false
    v2ci2 __m128d_0e_pidiv2,                __m128d, dbl_pidiv2, dbl_false
    v2ci2 __m128d_0e_pidiv2high,            __m128d, dbl_pidiv2high, dbl_false
    v2ci2 __m128d_0e_pidiv2low,             __m128d, dbl_pidiv2low, dbl_false
    v2ci2 __m128d_0e_pidiv4,                __m128d, dbl_pidiv4, dbl_false
    v2ci2 __m128d_0e_pidiv4high,            __m128d, dbl_pidiv4high, dbl_false
    v2ci2 __m128d_0e_pidiv4low,             __m128d, dbl_pidiv4low, dbl_false
    v2ci2 __m128d_0e_pix3div4,              __m128d, dbl_pix3div4, dbl_false
    v2ci2 __m128d_0e_sqrtpi,                __m128d, dbl_sqrtpi, dbl_false
    v2ci2 __m128d_0e_sqrt2pi,               __m128d, dbl_sqrt2pi, dbl_false
    v2ci2 __m128d_0e_sqrt2pihigh,           __m128d, dbl_sqrt2pihigh, dbl_false
    v2ci2 __m128d_0e_sqrt2pilow,            __m128d, dbl_sqrt2pilow, dbl_false
    v2ci2 __m128d_0e_rcpsqrtpi,             __m128d, dbl_rcpsqrtpi, dbl_false
    v2ci2 __m128d_0e_rcpsqrt2pi,            __m128d, dbl_rcpsqrt2pi, dbl_false
    v2ci2 __m128d_0e_sqrtpidiv2,            __m128d, dbl_sqrtpidiv2, dbl_false
    v2ci2 __m128d_0e_sqrtpidiv2high,        __m128d, dbl_sqrtpidiv2high, dbl_false
    v2ci2 __m128d_0e_sqrt2pidiv2,           __m128d, dbl_sqrt2pidiv2, dbl_false
    v2ci2 __m128d_0e_sqrt2pidiv2high,       __m128d, dbl_sqrt2pidiv2high, dbl_false
    v2ci2 __m128d_0e_sqrt2pidiv2low,        __m128d, dbl_sqrt2pidiv2low, dbl_false
    v2ci2 __m128d_0e_2divpi,                __m128d, dbl_2divpi, dbl_false
    v2ci2 __m128d_0e_2div2pi,               __m128d, dbl_2div2pi, dbl_false
    v2ci2 __m128d_0e_2divsqrtpi,            __m128d, dbl_2divsqrtpi, dbl_false
    v2ci2 __m128d_0e_2divsqrt2pi,           __m128d, dbl_2divsqrt2pi, dbl_false
    v2ci2 __m128d_0e_sqrt2divpi,            __m128d, dbl_sqrt2divpi, dbl_false
    v2ci2 __m128d_0e_logpi,                 __m128d, dbl_logpi, dbl_false
    v2ci2 __m128d_0e_log2pi,                __m128d, dbl_log2pi, dbl_false
    v2ci2 __m128d_0e_lnpi,                  __m128d, dbl_lnpi, dbl_false
    v2ci2 __m128d_0e_ln2pi,                 __m128d, dbl_ln2pi, dbl_false
    v2ci2 __m128d_0e_powpi,                 __m128d, dbl_powpi, dbl_false
    v2ci2 __m128d_0e_rcppowpi,              __m128d, dbl_rcppowpi, dbl_false
    v2ci2 __m128d_0e_pow2pi,                __m128d, dbl_pow2pi, dbl_false
    v2ci2 __m128d_0e_rcppow2pi,             __m128d, dbl_rcppow2pi, dbl_false
    v2ci2 __m128d_0e_cbrtpi,                __m128d, dbl_cbrtpi, dbl_false
    v2ci2 __m128d_0e_rcpcbrtpi,             __m128d, dbl_rcpcbrtpi, dbl_false
    v2ci2 __m128d_0e_cbrt2pi,               __m128d, dbl_cbrt2pi, dbl_false
    v2ci2 __m128d_0e_rcpcbrt2pi,            __m128d, dbl_rcpcbrt2pi, dbl_false
    
    v2ci2 __m128d_0e_ln2x1024,              __m128d, dbl_ln2x1024, dbl_false
    v2ci2 __m128d_0e_ln2x1025,              __m128d, dbl_ln2x1025, dbl_false
    v2ci2 __m128d_0e_ln2x1075,              __m128d, dbl_ln2x1075, dbl_false
    v2ci2 __m128d_0e_log2x1024,             __m128d, dbl_log2x1024, dbl_false
    v2ci2 __m128d_0e_log2x1075,             __m128d, dbl_log2x1075, dbl_false

    v2ci2 __m128d_0e_pow2tom126,            __m128d, dbl_pow2tom126, dbl_false
    v2ci2 __m128d_0e_pow2to126,             __m128d, dbl_pow2to126, dbl_false
    v2ci2 __m128d_0e_normhuge,              __m128d, dbl_normhuge, dbl_false
    v2ci2 __m128d_0e_pow2to23,              __m128d, dbl_pow2to23, dbl_false
    v2ci2 __m128d_0e_pow2to24,              __m128d, dbl_pow2to24, dbl_false
    v2ci2 __m128d_0e_maxi32pow2to23,        __m128d, dbl_maxi32pow2to23, dbl_false
    v2ci2 __m128d_0e_pow2to31,              __m128d, dbl_pow2to31, dbl_false
    v2ci2 __m128d_0e_pow2to32,              __m128d, dbl_pow2to32, dbl_false
    v2ci2 __m128d_0e_pow2to52,              __m128d, dbl_pow2to52, dbl_false
    v2ci2 __m128d_0e_pow2to53,              __m128d, dbl_pow2to53, dbl_false
    v2ci2 __m128d_0e_pow2to54,              __m128d, dbl_pow2to54, dbl_false
    v2ci2 __m128d_0e_pow2tom54,             __m128d, dbl_pow2tom54, dbl_false
    v2ci2 __m128d_0e_pow2to62,              __m128d, dbl_pow2to62, dbl_false
    v2ci2 __m128d_0e_maxi64pow2to52,        __m128d, dbl_maxi64pow2to52, dbl_false
    v2ci2 __m128d_0e_pow2to63,              __m128d, dbl_pow2to63, dbl_false
    v2ci2 __m128d_0e_pow2to64,              __m128d, dbl_pow2to64, dbl_false
    v2ci2 __m128d_0e_pow2tom1022,           __m128d, dbl_pow2tom1022, dbl_false
    v2ci2 __m128d_0e_trigploss,             __m128d, dbl_trigploss, dbl_false

    v2ci2 __m128d_0e_degtorad,              __m128d, dbl_degtorad, dbl_false
    v2ci2 __m128d_0e_radtodeg,              __m128d, dbl_radtodeg, dbl_false

    v2ci2 __m128d_0e_degtograd,             __m128d, dbl_degtograd, dbl_false
    v2ci2 __m128d_0e_gradtodeg,             __m128d, dbl_gradtodeg, dbl_false
    
    v2ci2 __m128d_0e_radtograd,             __m128d, dbl_radtograd, dbl_false
    v2ci2 __m128d_0e_gradtorad,             __m128d, dbl_gradtorad, dbl_false

    v2ci2 __m128d_0e_sungravity,            __m128d, dbl_sungravity, dbl_false
    v2ci2 __m128d_0e_jupitergravity,        __m128d, dbl_jupitergravity, dbl_false
    v2ci2 __m128d_0e_neptunegravity,        __m128d, dbl_neptunegravity, dbl_false
    v2ci2 __m128d_0e_saturngravity,         __m128d, dbl_saturngravity, dbl_false
    v2ci2 __m128d_0e_uranusgravity,         __m128d, dbl_uranusgravity, dbl_false
    v2ci2 __m128d_0e_earthgravity,          __m128d, dbl_earthgravity, dbl_false
    v2ci2 __m128d_0e_venusgravity,          __m128d, dbl_venusgravity, dbl_false
    v2ci2 __m128d_0e_marsgravity,           __m128d, dbl_marsgravity, dbl_false
    v2ci2 __m128d_0e_mercurygravity,        __m128d, dbl_mercurygravity, dbl_false
    v2ci2 __m128d_0e_moongravity,           __m128d, dbl_moongravity, dbl_false
    v2ci2 __m128d_0e_plutogravity,          __m128d, dbl_plutogravity, dbl_false

    v2ci2 __m128d_0e_kmtoinch,              __m128d, dbl_kmtoinch, dbl_false
    v2ci2 __m128d_0e_kmtofeet,              __m128d, dbl_kmtofeet, dbl_false
    v2ci2 __m128d_0e_kmtoyards,             __m128d, dbl_kmtoyards, dbl_false
    v2ci2 __m128d_0e_kmtomiles,             __m128d, dbl_kmtomiles, dbl_false

    v2ci2 __m128d_0e_metoinch,              __m128d, dbl_metoinch, dbl_false
    v2ci2 __m128d_0e_metofeet,              __m128d, dbl_metofeet, dbl_false
    v2ci2 __m128d_0e_metoyards,             __m128d, dbl_metoyards, dbl_false
    v2ci2 __m128d_0e_metomiles,             __m128d, dbl_metomiles, dbl_false

    v2ci2 __m128d_0e_cmtoinch,              __m128d, dbl_cmtoinch, dbl_false
    v2ci2 __m128d_0e_cmtofeet,              __m128d, dbl_cmtofeet, dbl_false
    v2ci2 __m128d_0e_cmtoyards,             __m128d, dbl_cmtoyards, dbl_false
    v2ci2 __m128d_0e_cmtomiles,             __m128d, dbl_cmtomiles, dbl_false

    v2ci2 __m128d_0e_milltoinch,            __m128d, dbl_milltoinch, dbl_false
    v2ci2 __m128d_0e_milltofeet,            __m128d, dbl_milltofeet, dbl_false
    v2ci2 __m128d_0e_milltoyards,           __m128d, dbl_milltoyards, dbl_false
    v2ci2 __m128d_0e_milltomiles,           __m128d, dbl_milltomiles, dbl_false

    v2ci2 __m128d_0e_inchtomill,            __m128d, dbl_inchtomill, dbl_false
    v2ci2 __m128d_0e_inchtocm,              __m128d, dbl_inchtocm, dbl_false
    v2ci2 __m128d_0e_inchtome,              __m128d, dbl_inchtome, dbl_false
    v2ci2 __m128d_0e_inchtokm,              __m128d, dbl_inchtokm, dbl_false
    v2ci2 __m128d_0e_inchtofeet,            __m128d, dbl_inchtofeet, dbl_false
    v2ci2 __m128d_0e_inchtoyards,           __m128d, dbl_inchtoyards, dbl_false
    v2ci2 __m128d_0e_inchtomiles,           __m128d, dbl_inchtomiles, dbl_false

    v2ci2 __m128d_0e_feettomill,            __m128d, dbl_feettomill, dbl_false
    v2ci2 __m128d_0e_feettocm,              __m128d, dbl_feettocm, dbl_false
    v2ci2 __m128d_0e_feettome,              __m128d, dbl_feettome, dbl_false
    v2ci2 __m128d_0e_feettokm,              __m128d, dbl_feettokm, dbl_false
    v2ci2 __m128d_0e_feettoinch,            __m128d, dbl_feettoinch, dbl_false
    v2ci2 __m128d_0e_feettoyards,           __m128d, dbl_feettoyards, dbl_false
    v2ci2 __m128d_0e_feettomiles,           __m128d, dbl_feettomiles, dbl_false

    v2ci2 __m128d_0e_yardstomill,           __m128d, dbl_yardstomill, dbl_false
    v2ci2 __m128d_0e_yardstocm,             __m128d, dbl_yardstocm, dbl_false
    v2ci2 __m128d_0e_yardstome,             __m128d, dbl_yardstome, dbl_false
    v2ci2 __m128d_0e_yardstokm,             __m128d, dbl_yardstokm, dbl_false
    v2ci2 __m128d_0e_yardstoinch,           __m128d, dbl_yardstoinch, dbl_false
    v2ci2 __m128d_0e_yardstofeet,           __m128d, dbl_yardstofeet, dbl_false
    v2ci2 __m128d_0e_yardstomiles,          __m128d, dbl_yardstomiles, dbl_false

    v2ci2 __m128d_0e_milestomill,           __m128d, dbl_milestomill, dbl_false
    v2ci2 __m128d_0e_milestocm,             __m128d, dbl_milestocm, dbl_false
    v2ci2 __m128d_0e_milestome,             __m128d, dbl_milestome, dbl_false
    v2ci2 __m128d_0e_milestokm,             __m128d, dbl_milestokm, dbl_false
    v2ci2 __m128d_0e_milestoinch,           __m128d, dbl_milestoinch, dbl_false
    v2ci2 __m128d_0e_milestofeet,           __m128d, dbl_milestofeet, dbl_false
    v2ci2 __m128d_0e_milestoyards,          __m128d, dbl_milestoyards, dbl_false

    v2ci2 __m128d_0e_kmphtomeps,            __m128d, dbl_kmphtomeps, dbl_false
    v2ci2 __m128d_0e_kmphtokmps,            __m128d, dbl_kmphtokmps, dbl_false
    v2ci2 __m128d_0e_kmphtomepm,            __m128d, dbl_kmphtomepm, dbl_false
    v2ci2 __m128d_0e_kmphtomilesph,         __m128d, dbl_kmphtomilesph, dbl_false
    v2ci2 __m128d_0e_kmphtomilesps,         __m128d, dbl_kmphtomilesps, dbl_false
    v2ci2 __m128d_0e_kmphtofeetps,          __m128d, dbl_kmphtofeetps, dbl_false
    v2ci2 __m128d_0e_kmphtofeetpm,          __m128d, dbl_kmphtofeetpm, dbl_false

    v2ci2 __m128d_0e_kmpstomeps,            __m128d, dbl_kmpstomeps, dbl_false
    v2ci2 __m128d_0e_kmpstokmph,            __m128d, dbl_kmpstokmph, dbl_false
    v2ci2 __m128d_0e_kmpstomepm,            __m128d, dbl_kmpstomepm, dbl_false
    v2ci2 __m128d_0e_kmpstomilesph,         __m128d, dbl_kmpstomilesph, dbl_false
    v2ci2 __m128d_0e_kmpstomilesps,         __m128d, dbl_kmpstomilesps, dbl_false
    v2ci2 __m128d_0e_kmpstofeetps,          __m128d, dbl_kmpstofeetps, dbl_false
    v2ci2 __m128d_0e_kmpstofeetpm,          __m128d, dbl_kmpstofeetpm, dbl_false

    v2ci2 __m128d_0e_mepstokmph,            __m128d, dbl_mepstokmph, dbl_false
    v2ci2 __m128d_0e_mepstokmps,            __m128d, dbl_mepstokmps, dbl_false
    v2ci2 __m128d_0e_mepstomepm,            __m128d, dbl_mepstomepm, dbl_false
    v2ci2 __m128d_0e_mepstomilesph,         __m128d, dbl_mepstomilesph, dbl_false
    v2ci2 __m128d_0e_mepstomilesps,         __m128d, dbl_mepstomilesps, dbl_false
    v2ci2 __m128d_0e_mepstofeetps,          __m128d, dbl_mepstofeetps, dbl_false
    v2ci2 __m128d_0e_mepstofeetpm,          __m128d, dbl_mepstofeetpm, dbl_false

    v2ci2 __m128d_0e_mepmtokmph,            __m128d, dbl_mepmtokmph, dbl_false
    v2ci2 __m128d_0e_mepmtokmps,            __m128d, dbl_mepmtokmps, dbl_false
    v2ci2 __m128d_0e_mepmtomeps,            __m128d, dbl_mepmtomeps, dbl_false
    v2ci2 __m128d_0e_mepmtomilesph,         __m128d, dbl_mepmtomilesph, dbl_false
    v2ci2 __m128d_0e_mepmtomilesps,         __m128d, dbl_mepmtomilesps, dbl_false
    v2ci2 __m128d_0e_mepmtofeetps,          __m128d, dbl_mepmtofeetps, dbl_false
    v2ci2 __m128d_0e_mepmtofeetpm,          __m128d, dbl_mepmtofeetpm, dbl_false

    v2ci2 __m128d_0e_milesphtokmph,         __m128d, dbl_milesphtokmph, dbl_false
    v2ci2 __m128d_0e_milesphtokmps,         __m128d, dbl_milesphtokmps, dbl_false
    v2ci2 __m128d_0e_milesphtomeps,         __m128d, dbl_milesphtomeps, dbl_false
    v2ci2 __m128d_0e_milesphtomepm,         __m128d, dbl_milesphtomepm, dbl_false
    v2ci2 __m128d_0e_milesphtomilesps,      __m128d, dbl_milesphtomilesps, dbl_false
    v2ci2 __m128d_0e_milesphtofeetps,       __m128d, dbl_milesphtofeetps, dbl_false
    v2ci2 __m128d_0e_milesphtofeetpm,       __m128d, dbl_milesphtofeetpm, dbl_false

    v2ci2 __m128d_0e_milespstokmph,         __m128d, dbl_milespstokmph, dbl_false
    v2ci2 __m128d_0e_milespstokmps,         __m128d, dbl_milespstokmps, dbl_false
    v2ci2 __m128d_0e_milespstomeps,         __m128d, dbl_milespstomeps, dbl_false
    v2ci2 __m128d_0e_milespstomepm,         __m128d, dbl_milespstomepm, dbl_false
    v2ci2 __m128d_0e_milespstomilesph,      __m128d, dbl_milespstomilesph, dbl_false
    v2ci2 __m128d_0e_milespstofeetps,       __m128d, dbl_milespstofeetps, dbl_false
    v2ci2 __m128d_0e_milespstofeetpm,       __m128d, dbl_milespstofeetpm, dbl_false

    v2ci2 __m128d_0e_feetpstokmph,          __m128d, dbl_feetpstokmph, dbl_false
    v2ci2 __m128d_0e_feetpstokmps,          __m128d, dbl_feetpstokmps, dbl_false
    v2ci2 __m128d_0e_feetpstomeps,          __m128d, dbl_feetpstomeps, dbl_false
    v2ci2 __m128d_0e_feetpstomepm,          __m128d, dbl_feetpstomepm, dbl_false
    v2ci2 __m128d_0e_feetpstomilesph,       __m128d, dbl_feetpstomilesph, dbl_false
    v2ci2 __m128d_0e_feetpstomilesps,       __m128d, dbl_feetpstomilesps, dbl_false
    v2ci2 __m128d_0e_feetpstofeetpm,        __m128d, dbl_feetpstofeetpm, dbl_false

    v2ci2 __m128d_0e_feetpmtokmph,          __m128d, dbl_feetpmtokmph, dbl_false
    v2ci2 __m128d_0e_feetpmtokmps,          __m128d, dbl_feetpmtokmps, dbl_false
    v2ci2 __m128d_0e_feetpmtomeps,          __m128d, dbl_feetpmtomeps, dbl_false
    v2ci2 __m128d_0e_feetpmtomepm,          __m128d, dbl_feetpmtomepm, dbl_false
    v2ci2 __m128d_0e_feetpmtomilesph,       __m128d, dbl_feetpmtomilesph, dbl_false
    v2ci2 __m128d_0e_feetpmtomilesps,       __m128d, dbl_feetpmtomilesps, dbl_false
    v2ci2 __m128d_0e_feetpmtofeetps,        __m128d, dbl_feetpmtofeetps, dbl_false

    v2ci2 __m128d_0e_soundspeedp50c,        __m128d, dbl_soundspeedp50c, dbl_false
    v2ci2 __m128d_0e_soundspeedp45c,        __m128d, dbl_soundspeedp45c, dbl_false
    v2ci2 __m128d_0e_soundspeedp40c,        __m128d, dbl_soundspeedp40c, dbl_false
    v2ci2 __m128d_0e_soundspeedp35c,        __m128d, dbl_soundspeedp35c, dbl_false
    v2ci2 __m128d_0e_soundspeedp30c,        __m128d, dbl_soundspeedp30c, dbl_false
    v2ci2 __m128d_0e_soundspeedp25c,        __m128d, dbl_soundspeedp25c, dbl_false
    v2ci2 __m128d_0e_soundspeedp20c,        __m128d, dbl_soundspeedp20c, dbl_false
    v2ci2 __m128d_0e_soundspeedp15c,        __m128d, dbl_soundspeedp15c, dbl_false
    v2ci2 __m128d_0e_soundspeedp10c,        __m128d, dbl_soundspeedp10c, dbl_false
    v2ci2 __m128d_0e_soundspeedp5c,         __m128d, dbl_soundspeedp5c, dbl_false
    v2ci2 __m128d_0e_soundspeed0c,          __m128d, dbl_soundspeed0c, dbl_false
    v2ci2 __m128d_0e_soundspeedn5c,         __m128d, dbl_soundspeedn5c, dbl_false
    v2ci2 __m128d_0e_soundspeedn10c,        __m128d, dbl_soundspeedn10c, dbl_false
    v2ci2 __m128d_0e_soundspeedn15c,        __m128d, dbl_soundspeedn15c, dbl_false
    v2ci2 __m128d_0e_soundspeedn20c,        __m128d, dbl_soundspeedn20c, dbl_false
    v2ci2 __m128d_0e_soundspeedn25c,        __m128d, dbl_soundspeedn25c, dbl_false
    v2ci2 __m128d_0e_soundspeedn30c,        __m128d, dbl_soundspeedn30c, dbl_false
    v2ci2 __m128d_0e_soundspeedn35c,        __m128d, dbl_soundspeedn35c, dbl_false
    v2ci2 __m128d_0e_soundspeedn40c,        __m128d, dbl_soundspeedn40c, dbl_false
    v2ci2 __m128d_0e_soundspeedn45c,        __m128d, dbl_soundspeedn45c, dbl_false
    v2ci2 __m128d_0e_soundspeedn50c,        __m128d, dbl_soundspeedn50c, dbl_false

    v2ci2 __m128d_0e_schscale,              __m128d, dbl_schscale, dbl_false
    v2ci2 __m128d_0e_thscale,               __m128d, dbl_thscale, dbl_false

    v2ci2 __m128d_0e_expest1,               __m128d, dbl_expest1, dbl_false
    v2ci2 __m128d_0e_expest2,               __m128d, dbl_expest2, dbl_false
    v2ci2 __m128d_0e_expest3,               __m128d, dbl_expest3, dbl_false
    v2ci2 __m128d_0e_expest4,               __m128d, dbl_expest4, dbl_false
    v2ci2 __m128d_0e_expest5,               __m128d, dbl_expest5, dbl_false
    v2ci2 __m128d_0e_expest6,               __m128d, dbl_expest6, dbl_false
    v2ci2 __m128d_0e_expest7,               __m128d, dbl_expest7, dbl_false
    v2ci2 __m128d_0e_logest0,               __m128d, dbl_logest0, dbl_false
    v2ci2 __m128d_0e_logest1,               __m128d, dbl_logest1, dbl_false
    v2ci2 __m128d_0e_logest2,               __m128d, dbl_logest2, dbl_false
    v2ci2 __m128d_0e_logest3,               __m128d, dbl_logest3, dbl_false
    v2ci2 __m128d_0e_logest4,               __m128d, dbl_logest4, dbl_false
    v2ci2 __m128d_0e_logest5,               __m128d, dbl_logest5, dbl_false
    v2ci2 __m128d_0e_logest6,               __m128d, dbl_logest6, dbl_false
    v2ci2 __m128d_0e_logest7,               __m128d, dbl_logest7, dbl_false

    ;;DirectX Math constants;;

    v2ci2 __m128i_dbl_select00,                __m128q, dbl_false, dbl_false
    v2ci2 __m128i_dbl_select01,                __m128q, dbl_false, dbl_true
    v2ci2 __m128i_dbl_select10,                __m128q, dbl_true, dbl_false
    v2ci2 __m128i_dbl_select11,                __m128q, dbl_true, dbl_true

    v2ci2 __m128d_select00,                __m128q, dbl_false, dbl_false
    v2ci2 __m128d_select01,                __m128q, dbl_false, dbl_true
    v2ci2 __m128d_select10,                __m128q, dbl_true, dbl_false
    v2ci2 __m128d_select11,                __m128q, dbl_true, dbl_true

    ;removed
    ;alignymmfieldproc
    ;__m128i_flt_cutoffmask              dd flt_true, flt_true, flt_true, flt_true, flt_false, flt_false, flt_false, flt_false
    ;__m128_cutoffmask                   dd flt_true, flt_true, flt_true, flt_true, flt_false, flt_false, flt_false, flt_false

    .code

endif ;__MIC__

    end
