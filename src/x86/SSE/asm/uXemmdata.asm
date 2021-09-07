
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
    v2ci __m128i_i64_rolmax,            __m128q, 0x3f

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
    v2ci2 __m128i_i64_0e_rolmax,        __m128q, 0x3f, i64_false

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
    v4ci4 __m128i_flt_0e_bytevtbl,          __m128i, 0x3f802000, flt_false_msk, flt_false_msk, flt_false_msk

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

    ;;DirectX Math constants;;

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
    v4ci4 __m128i_flt_infinity,                  __m128i, flt_inf_msk, flt_inf_msk, flt_inf_msk, flt_inf_msk
    v4ci4 __m128i_flt_qnantest,                  __m128i, flt_nantest_msk, flt_nantest_msk, flt_nantest_msk, flt_nantest_msk
    v4ci4 __m128i_flt_absmask,                   __m128i, flt_abs_msk, flt_abs_msk, flt_abs_msk, flt_abs_msk
    v4ci4 __m128i_flt_fltmin,                    __m128i, flt_min_msk, flt_min_msk, flt_min_msk, flt_min_msk
    v4ci4 __m128i_flt_fltmax,                    __m128i, flt_max_msk, flt_max_msk, flt_max_msk, flt_max_msk
    v4ci4 __m128i_flt_negonemask,                __m128i, flt_true_msk, flt_true_msk, flt_true_msk, flt_true_msk
    v4ci4 __m128i_flt_maska8r8g8b8,              __m128i, flt_a8_msk, flt_r8_msk, flt_g8_msk, flt_b8_msk
    v4ci4 __m128i_flt_flipa8r8g8b8,              __m128i, flt_flipa8_msk, flt_flipr8_msk, flt_flipg8_msk, flt_flipb8_msk
    v4ci4 __m128i_flt_maska2b10g10r10,           __m128i, flt_a2_msk, flt_b10_msk, flt_g10_msk, flt_r10_msk
    v4ci4 __m128i_flt_flipa2b10g10r10,           __m128i, flt_flipa2_msk, flt_flipb10_msk, flt_flipg10_msk, flt_flipr10_msk
    v4ci4 __m128i_flt_maskx16y16,                __m128i, flt_16low_msk, flt_16high_msk, flt_false, flt_false
    v4ci4 __m128i_flt_flipx16y16,                __m128i, flt_flip16_msk, flt_flip16_msk, flt_false, flt_false
    v4ci4 __m128i_flt_maskx16y16z16w16,          __m128i, flt_16low_msk, flt_16low_msk, flt_16high_msk, flt_16high_msk
    v4ci4 __m128i_flt_flipx16y16z16w16,          __m128i, flt_flip16_msk, flt_flip16_msk, flt_false, flt_false
    v4ci4 __m128i_flt_maskbyte,                  __m128i, flt_byte_msk, flt_byte_msk, flt_byte_msk, flt_byte_msk
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
    v4ci4 __m128i_flt_flipy,                     __m128i, flt_false, flt_flip32_msk, flt_false, flt_false
    v4ci4 __m128i_flt_flipz,                     __m128i, flt_false, flt_false, flt_flip32_msk, flt_false
    v4ci4 __m128i_flt_flipw,                     __m128i, flt_false, flt_false, flt_false, flt_flip32_msk
    v4ci4 __m128i_flt_flipyz,                    __m128i, flt_false, flt_flip32_msk, flt_flip32_msk, flt_false
    v4ci4 __m128i_flt_flipzw,                    __m128i, flt_false, flt_false, flt_flip32_msk, flt_flip32_msk
    v4ci4 __m128i_flt_flipyw,                    __m128i, flt_false, flt_flip32_msk, flt_false, flt_flip32_msk
    v4ci4 __m128i_flt_maskdec4,                  __m128i, 0x000003ff, 0x000ffc00, 0x3ff00000, 0xc0000000
    v4ci4 __m128i_flt_xordec4,                   __m128i, 0x00000200, 0x00080000, 0x20000000, 0x00000000
    v4ci4 __m128i_flt_maskbyte4,                 __m128i, 0x000000ff, 0x0000ff00, 0x00ff0000, 0xff000000
    v4ci4 __m128i_flt_xorbyte4,                  __m128i, 0x00000080, 0x00008000, 0x00800000, 0x00000000
    v4ci4 __m128i_flt_exponentbias,              __m128i, flt_expo_msk, flt_expo_msk, flt_expo_msk, flt_expo_msk
    v4ci4 __m128i_flt_subnormalexponent,         __m128i, flt_subnormalexpo_msk, flt_subnormalexpo_msk, flt_subnormalexpo_msk, flt_subnormalexpo_msk
    v4ci4 __m128i_flt_numtrailing,               __m128i, flt_mant_msk, flt_mant_msk, flt_mant_msk, flt_mant_msk
    v4ci4 __m128i_flt_neginfinity,               __m128i, flt_neginf_msk, flt_neginf_msk, flt_neginf_msk, flt_neginf_msk

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
;;             sincos template, double precision

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
;;             sincos template, double precision

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

    v2ci2 __m128i_dbl_select00,            __m128q, dbl_false, dbl_false
    v2ci2 __m128i_dbl_select01,            __m128q, dbl_false, dbl_true
    v2ci2 __m128i_dbl_select10,            __m128q, dbl_true, dbl_false
    v2ci2 __m128i_dbl_select11,            __m128q, dbl_true, dbl_true

    v2ci2 __m128d_select00,                __m128q, dbl_false, dbl_false
    v2ci2 __m128d_select01,                __m128q, dbl_false, dbl_true
    v2ci2 __m128d_select10,                __m128q, dbl_true, dbl_false
    v2ci2 __m128d_select11,                __m128q, dbl_true, dbl_true
    
    ;removed
    ;alignymmfieldproc
    ;__m128i_flt_cutoffmask              dd flt_true, flt_true, flt_true, flt_true, flt_false, flt_false, flt_false, flt_false

.code

alignxmmfieldproc

;;functions;;

    ;;int8 mask;;
    
procstart _uX_mm_const_i8_true_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_true
        ret
procend

procstart _uX_mm_const_i8_false_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_false
        ret
procend

procstart _uX_mm_const_i8_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_max
        ret
procend

procstart _uX_mm_const_i8_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_min
        ret
procend

procstart _uX_mm_const_ui8_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui8_max
        ret
procend

procstart _uX_mm_const_ui8_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui8_min
        ret
procend

procstart _uX_mm_const_si8_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si8_max
        ret
procend

procstart _uX_mm_const_si8_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si8_min
        ret
procend

procstart _uX_mm_const_i8_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_error
        ret
procend

procstart _uX_mm_const_ui8_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui8_error
        ret
procend

procstart _uX_mm_const_si8_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si8_error
        ret
procend

procstart _uX_mm_const_i8_0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_0
        ret
procend

procstart _uX_mm_const_i8_1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_1
        ret
procend

procstart _uX_mm_const_i8_neg0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_neg0
        ret
procend

procstart _uX_mm_const_i8_neg1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_neg1
        ret
procend

    ;;int8 mask low;;

procstart _uX_mm_const_i8_0e_true_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_0e_true
        ret
procend

procstart _uX_mm_const_i8_0e_false_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_0e_false
        ret
procend

procstart _uX_mm_const_i8_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_0e_max
        ret
procend

procstart _uX_mm_const_i8_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_0e_min
        ret
procend

procstart _uX_mm_const_ui8_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui8_0e_max
        ret
procend

procstart _uX_mm_const_ui8_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui8_0e_min
        ret
procend

procstart _uX_mm_const_si8_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si8_0e_max
        ret
procend

procstart _uX_mm_const_si8_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si8_0e_min
        ret
procend

procstart _uX_mm_const_i8_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_0e_error
        ret
procend

procstart _uX_mm_const_ui8_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui8_0e_error
        ret
procend

procstart _uX_mm_const_si8_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si8_0e_error
        ret
procend

procstart _uX_mm_const_i8_0e_0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_0e_0
        ret
procend

procstart _uX_mm_const_i8_0e_1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_0e_1
        ret
procend

procstart _uX_mm_const_i8_0e_neg0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_0e_neg0
        ret
procend

procstart _uX_mm_const_i8_0e_neg1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i8_0e_neg1
        ret
procend

    ;;int16 mask;;

procstart _uX_mm_const_i16_true_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_true
        ret
procend

procstart _uX_mm_const_i16_false_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_false
        ret
procend

procstart _uX_mm_const_i16_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_max
        ret
procend

procstart _uX_mm_const_i16_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_min
        ret
procend

procstart _uX_mm_const_ui16_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui16_max
        ret
procend

procstart _uX_mm_const_ui16_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui16_min
        ret
procend

procstart _uX_mm_const_si16_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si16_max
        ret
procend

procstart _uX_mm_const_si16_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si16_min
        ret
procend

procstart _uX_mm_const_i16_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_error
        ret
procend

procstart _uX_mm_const_ui16_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui16_error
        ret
procend

procstart _uX_mm_const_si16_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si16_error
        ret
procend

procstart _uX_mm_const_i16_0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_0
        ret
procend

procstart _uX_mm_const_i16_1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_1
        ret
procend

procstart _uX_mm_const_i16_neg0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_neg0
        ret
procend

procstart _uX_mm_const_i16_neg1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_neg1
        ret
procend

    ;;int16 mask low;;

procstart _uX_mm_const_i16_0e_true_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_0e_true
        ret
procend

procstart _uX_mm_const_i16_0e_false_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_0e_false
        ret
procend

procstart _uX_mm_const_i16_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_0e_max
        ret
procend

procstart _uX_mm_const_i16_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_0e_min
        ret
procend

procstart _uX_mm_const_ui16_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui16_0e_max
        ret
procend

procstart _uX_mm_const_ui16_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui16_0e_min
        ret
procend

procstart _uX_mm_const_si16_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si16_0e_max
        ret
procend

procstart _uX_mm_const_si16_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si16_0e_min
        ret
procend

procstart _uX_mm_const_i16_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_0e_error
        ret
procend

procstart _uX_mm_const_ui16_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui16_0e_error
        ret
procend

procstart _uX_mm_const_si16_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si16_0e_error
        ret
procend

procstart _uX_mm_const_i16_0e_0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_0e_0
        ret
procend

procstart _uX_mm_const_i16_0e_1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_0e_1
        ret
procend

procstart _uX_mm_const_i16_0e_neg0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_0e_neg0
        ret
procend

procstart _uX_mm_const_i16_0e_neg1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i16_0e_neg1
        ret
procend

    ;;int32 mask;;

procstart _uX_mm_const_i32_true_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_true
        ret
procend

procstart _uX_mm_const_i32_false_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_false
        ret
procend

procstart _uX_mm_const_i32_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_max
        ret
procend

procstart _uX_mm_const_i32_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_min
        ret
procend

procstart _uX_mm_const_ui32_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui32_max
        ret
procend

procstart _uX_mm_const_ui32_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui32_min
        ret
procend

procstart _uX_mm_const_si32_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si32_max
        ret
procend

procstart _uX_mm_const_si32_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si32_min
        ret
procend

procstart _uX_mm_const_i32_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_error
        ret
procend

procstart _uX_mm_const_ui32_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui32_error
        ret
procend

procstart _uX_mm_const_si32_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si32_error
        ret
procend

procstart _uX_mm_const_i32_0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_0
        ret
procend

procstart _uX_mm_const_i32_1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_1
        ret
procend

procstart _uX_mm_const_i32_2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_2
        ret
procend

procstart _uX_mm_const_i32_neg0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_neg0
        ret
procend

procstart _uX_mm_const_i32_neg1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_neg1
        ret
procend

procstart _uX_mm_const_i32_neg2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_neg2
        ret
procend

procstart _uX_mm_const_i32_select0000_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select0000
        ret
procend

procstart _uX_mm_const_i32_select0001_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select0001
        ret
procend

procstart _uX_mm_const_i32_select0010_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select0010
        ret
procend

procstart _uX_mm_const_i32_select0100_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select0100
        ret
procend

procstart _uX_mm_const_i32_select1000_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select1000
        ret
procend

procstart _uX_mm_const_i32_select0011_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select0011
        ret
procend

procstart _uX_mm_const_i32_select0111_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select0111
        ret
procend

procstart _uX_mm_const_i32_select1111_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select1111
        ret
procend

procstart _uX_mm_const_i32_select1110_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select1110
        ret
procend

procstart _uX_mm_const_i32_select1100_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select1100
        ret
procend

procstart _uX_mm_const_i32_select1001_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select1001
        ret
procend

procstart _uX_mm_const_i32_select0110_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select0110
        ret
procend

procstart _uX_mm_const_i32_select1011_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select1011
        ret
procend

procstart _uX_mm_const_i32_select1101_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select1101
        ret
procend

procstart _uX_mm_const_i32_select0101_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select0101
        ret
procend

procstart _uX_mm_const_i32_select1010_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_select1010
        ret
procend

    ;;int32 mask low;;
    
procstart _uX_mm_const_i32_0e_true_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_0e_true
        ret
procend

procstart _uX_mm_const_i32_0e_false_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_0e_false
        ret
procend

procstart _uX_mm_const_i32_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_0e_max
        ret
procend

procstart _uX_mm_const_i32_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_0e_min
        ret
procend

procstart _uX_mm_const_ui32_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui32_0e_max
        ret
procend

procstart _uX_mm_const_ui32_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui32_0e_min
        ret
procend

procstart _uX_mm_const_si32_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si32_0e_max
        ret
procend

procstart _uX_mm_const_si32_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si32_0e_min
        ret
procend

procstart _uX_mm_const_i32_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_0e_error
        ret
procend

procstart _uX_mm_const_ui32_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui32_0e_error
        ret
procend

procstart _uX_mm_const_si32_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si32_0e_error
        ret
procend

procstart _uX_mm_const_i32_0e_0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_0e_0
        ret
procend

procstart _uX_mm_const_i32_0e_1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_0e_1
        ret
procend

procstart _uX_mm_const_i32_0e_2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_0e_2
        ret
procend

procstart _uX_mm_const_i32_0e_neg0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_0e_neg0
        ret
procend

procstart _uX_mm_const_i32_0e_neg1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_0e_neg1
        ret
procend

procstart _uX_mm_const_i32_0e_neg2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i32_0e_neg2
        ret
procend

    ;;int64 mask;;

procstart _uX_mm_const_i64_true_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_true
        ret
procend

procstart _uX_mm_const_i64_false_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_false
        ret
procend

procstart _uX_mm_const_i64_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_max
        ret
procend

procstart _uX_mm_const_i64_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_min
        ret
procend

procstart _uX_mm_const_ui64_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui64_max
        ret
procend

procstart _uX_mm_const_ui64_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui64_min
        ret
procend

procstart _uX_mm_const_si64_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si64_max
        ret
procend

procstart _uX_mm_const_si64_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si64_min
        ret
procend

procstart _uX_mm_const_i64_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_error
        ret
procend

procstart _uX_mm_const_ui64_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui64_error
        ret
procend

procstart _uX_mm_const_si64_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si64_error
        ret
procend

procstart _uX_mm_const_i64_0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_0
        ret
procend

procstart _uX_mm_const_i64_1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_1
        ret
procend

procstart _uX_mm_const_i64_neg0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_neg0
        ret
procend

procstart _uX_mm_const_i64_neg1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_neg1
        ret
procend

procstart _uX_mm_const_i64_rolmax_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_rolmax
        ret
procend

procstart _uX_mm_const_i64_select00_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_select00
        ret
procend

procstart _uX_mm_const_i64_select01_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_select01
        ret
procend

procstart _uX_mm_const_i64_select10_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_select10
        ret
procend

procstart _uX_mm_const_i64_select11_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_select11
        ret
procend

    ;;int64 mask low;;

procstart _uX_mm_const_i64_0e_true_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_0e_true
        ret
procend

procstart _uX_mm_const_i64_0e_false_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_0e_false
        ret
procend

procstart _uX_mm_const_i64_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_0e_max
        ret
procend

procstart _uX_mm_const_i64_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_0e_min
        ret
procend

procstart _uX_mm_const_ui64_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui64_0e_max
        ret
procend

procstart _uX_mm_const_ui64_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui64_0e_min
        ret
procend

procstart _uX_mm_const_si64_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si64_0e_max
        ret
procend

procstart _uX_mm_const_si64_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si64_0e_min
        ret
procend

procstart _uX_mm_const_i64_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_0e_error
        ret
procend

procstart _uX_mm_const_ui64_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_ui64_0e_error
        ret
procend

procstart _uX_mm_const_si64_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_si64_0e_error
        ret
procend

procstart _uX_mm_const_i64_0e_0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_0e_0
        ret
procend

procstart _uX_mm_const_i64_0e_1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_0e_1
        ret
procend

procstart _uX_mm_const_i64_0e_neg0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_0e_neg0
        ret
procend

procstart _uX_mm_const_i64_0e_neg1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_0e_neg1
        ret
procend

procstart _uX_mm_const_i64_0e_rolmax_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_i64_0e_rolmax
        ret
procend

    ;;float mask;;

procstart _uX_mm_const_flt_bigoverflow_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_bigoverflow
        ret
procend

procstart _uX_mm_const_flt_bytevtbl_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_bytevtbl
        ret
procend

procstart _uX_mm_const_flt_1lshl3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl3
        ret
procend

procstart _uX_mm_const_flt_1lshl4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl4
        ret
procend

procstart _uX_mm_const_flt_1lshl7_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl7
        ret
procend

procstart _uX_mm_const_flt_1lshl8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl8
        ret
procend

procstart _uX_mm_const_flt_1lshl11_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl11
        ret
procend

procstart _uX_mm_const_flt_1lshl12_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl12
        ret
procend

procstart _uX_mm_const_flt_1lshl15_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl15
        ret
procend

procstart _uX_mm_const_flt_1lshl16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl16
        ret
procend

procstart _uX_mm_const_flt_1lshl19_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl19
        ret
procend

procstart _uX_mm_const_flt_1lshl20_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl20
        ret
procend

procstart _uX_mm_const_flt_1lshl23_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl23
        ret
procend

procstart _uX_mm_const_flt_1lshl24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl24
        ret
procend

procstart _uX_mm_const_flt_1lshl27_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl27
        ret
procend

procstart _uX_mm_const_flt_1lshl28_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl28
        ret
procend

procstart _uX_mm_const_flt_1lshl31_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1lshl31
        ret
procend
    
procstart _uX_mm_const_flt_neg1lshl3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl3
        ret
procend

procstart _uX_mm_const_flt_neg1lshl4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl4
        ret
procend

procstart _uX_mm_const_flt_neg1lshl7_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl7
        ret
procend

procstart _uX_mm_const_flt_neg1lshl8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl8
        ret
procend

procstart _uX_mm_const_flt_neg1lshl11_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl11
        ret
procend

procstart _uX_mm_const_flt_neg1lshl12_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl12
        ret
procend

procstart _uX_mm_const_flt_neg1lshl15_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl15
        ret
procend

procstart _uX_mm_const_flt_neg1lshl16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl16
        ret
procend

procstart _uX_mm_const_flt_neg1lshl19_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl19
        ret
procend

procstart _uX_mm_const_flt_neg1lshl20_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl20
        ret
procend

procstart _uX_mm_const_flt_neg1lshl23_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl23
        ret
procend

procstart _uX_mm_const_flt_neg1lshl24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl24
        ret
procend

procstart _uX_mm_const_flt_neg1lshl27_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl27
        ret
procend

procstart _uX_mm_const_flt_neg1lshl28_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl28
        ret
procend

procstart _uX_mm_const_flt_neg1lshl31_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1lshl31
        ret
procend
    
procstart _uX_mm_const_flt_false_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_false
        ret
procend

procstart _uX_mm_const_flt_true_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_true
        ret
procend

procstart _uX_mm_const_flt_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_error
        ret
procend
    
procstart _uX_mm_const_flt_magic_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_magic
        ret
procend

procstart _uX_mm_const_flt_sign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_sign
        ret
procend

procstart _uX_mm_const_flt_invsign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_invsign
        ret
procend

procstart _uX_mm_const_flt_inf_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_inf
        ret
procend

procstart _uX_mm_const_flt_fin_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_fin
        ret
procend

procstart _uX_mm_const_flt_invinf_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_invinf
        ret
procend

procstart _uX_mm_const_flt_neginf_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neginf
        ret
procend

procstart _uX_mm_const_flt_nan_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_nan
        ret
procend

procstart _uX_mm_const_flt_qnan_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_qnan
        ret
procend

procstart _uX_mm_const_flt_negqnan_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_negqnan
        ret
procend

procstart _uX_mm_const_flt_nantest_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_nantest
        ret
procend

procstart _uX_mm_const_flt_abs_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_abs
        ret
procend

procstart _uX_mm_const_flt_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_min
        ret
procend

procstart _uX_mm_const_flt_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_max
        ret
procend

procstart _uX_mm_const_flt_nofraction_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_nofraction
        ret
procend

procstart _uX_mm_const_flt_mindenorm_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_mindenorm
        ret
procend

procstart _uX_mm_const_flt_denormlimit_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_denormlimit
        ret
procend

procstart _uX_mm_const_flt_minnormal_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_minnormal
        ret
procend

procstart _uX_mm_const_flt_maxnormal_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxnormal
        ret
procend

procstart _uX_mm_const_flt_decdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_decdig
        ret
procend

procstart _uX_mm_const_flt_dig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_dig
        ret
procend

procstart _uX_mm_const_flt_negdecdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_negdecdig
        ret
procend

procstart _uX_mm_const_flt_negdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_negdig
        ret
procend

procstart _uX_mm_const_flt_eps_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_eps
        ret
procend

procstart _uX_mm_const_flt_epsilon_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_epsilon
        ret
procend

procstart _uX_mm_const_flt_normeps_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_normeps
        ret
procend

procstart _uX_mm_const_flt_guard_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_guard
        ret
procend

procstart _uX_mm_const_flt_mantpow2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_mantpow2
        ret
procend

procstart _uX_mm_const_flt_maxmantpow2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxmantpow2
        ret
procend

procstart _uX_mm_const_flt_mantdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_mantdig
        ret
procend

procstart _uX_mm_const_flt_mant_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_mant
        ret
procend

procstart _uX_mm_const_flt_negmantdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_negmantdig
        ret
procend

procstart _uX_mm_const_flt_negmant_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_negmant
        ret
procend

procstart _uX_mm_const_flt_maxexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxexpo
        ret
procend

procstart _uX_mm_const_flt_exposign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_exposign
        ret
procend

procstart _uX_mm_const_flt_expo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_expo
        ret
procend

procstart _uX_mm_const_flt_negmaxexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_negmaxexpo
        ret
procend

procstart _uX_mm_const_flt_negexposign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_negexposign
        ret
procend

procstart _uX_mm_const_flt_negexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_negexpo
        ret
procend

procstart _uX_mm_const_flt_subnormalexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_subnormalexpo
        ret
procend

procstart _uX_mm_const_flt_minexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_minexpo
        ret
procend

procstart _uX_mm_const_flt_maxdecexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxdecexpo
        ret
procend

procstart _uX_mm_const_flt_negmaxdecexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_negmaxdecexpo
        ret
procend

procstart _uX_mm_const_flt_mindecexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_mindecexpo
        ret
procend

procstart _uX_mm_const_flt_expofield_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_expofield
        ret
procend

procstart _uX_mm_const_flt_mantfield_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_mantfield
        ret
procend

procstart _uX_mm_const_flt_norm_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_norm
        ret
procend

procstart _uX_mm_const_flt_radix_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_radix
        ret
procend

procstart _uX_mm_const_flt_rounds_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_rounds
        ret
procend

procstart _uX_mm_const_flt_subdec_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_subdec
        ret
procend

procstart _uX_mm_const_flt_sqrtmax_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_sqrtmax
        ret
procend

procstart _uX_mm_const_flt_smallnormal_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_smallnormal
        ret
procend

procstart _uX_mm_const_flt_halfminuseps_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_halfminuseps
        ret
procend

procstart _uX_mm_const_flt_trueint_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_trueint
        ret
procend

procstart _uX_mm_const_flt_byte_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_byte
        ret
procend

procstart _uX_mm_const_flt_byte_even_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_byte_even
        ret
procend

procstart _uX_mm_const_flt_byte_odd_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_byte_odd
        ret
procend

procstart _uX_mm_const_flt_4low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_4low
        ret
procend

procstart _uX_mm_const_flt_4high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_4high
        ret
procend

procstart _uX_mm_const_flt_flip4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flip4
        ret
procend

procstart _uX_mm_const_flt_8low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_8low
        ret
procend

procstart _uX_mm_const_flt_8high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_8high
        ret
procend

procstart _uX_mm_const_flt_flip8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flip8
        ret
procend

procstart _uX_mm_const_flt_16low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_16low
        ret
procend

procstart _uX_mm_const_flt_16high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_16high
        ret
procend

procstart _uX_mm_const_flt_flip16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flip16
        ret
procend

procstart _uX_mm_const_flt_24low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_24low
        ret
procend

procstart _uX_mm_const_flt_24high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_24high
        ret
procend

procstart _uX_mm_const_flt_flip24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flip24
        ret
procend

procstart _uX_mm_const_flt_28low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_28low
        ret
procend

procstart _uX_mm_const_flt_28high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_28high
        ret
procend

procstart _uX_mm_const_flt_flip28_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flip28
        ret
procend

procstart _uX_mm_const_flt_32low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_32low
        ret
procend

procstart _uX_mm_const_flt_32high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_32high
        ret
procend

procstart _uX_mm_const_flt_flip32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flip32
        ret
procend

procstart _uX_mm_const_flt_0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0
        ret
procend

procstart _uX_mm_const_flt_0d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0d5
        ret
procend

procstart _uX_mm_const_flt_1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1
        ret
procend

procstart _uX_mm_const_flt_1d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_1d5
        ret
procend

procstart _uX_mm_const_flt_2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_2
        ret
procend

procstart _uX_mm_const_flt_2d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_2d5
        ret
procend

procstart _uX_mm_const_flt_3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_3
        ret
procend

procstart _uX_mm_const_flt_4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_4
        ret
procend

procstart _uX_mm_const_flt_5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_5
        ret
procend

procstart _uX_mm_const_flt_6_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_6
        ret
procend

procstart _uX_mm_const_flt_7_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_7
        ret
procend

procstart _uX_mm_const_flt_8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_8
        ret
procend

procstart _uX_mm_const_flt_9_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_9
        ret
procend

procstart _uX_mm_const_flt_10_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_10
        ret
procend

procstart _uX_mm_const_flt_20_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_20
        ret
procend

procstart _uX_mm_const_flt_23_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_23
        ret
procend

procstart _uX_mm_const_flt_23d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_23d5
        ret
procend

procstart _uX_mm_const_flt_24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_24
        ret
procend

procstart _uX_mm_const_flt_24d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_24d5
        ret
procend

procstart _uX_mm_const_flt_25_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_25
        ret
procend

procstart _uX_mm_const_flt_128_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_128
        ret
procend

procstart _uX_mm_const_flt_253_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_253
        ret
procend

procstart _uX_mm_const_flt_neg0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg0
        ret
procend

procstart _uX_mm_const_flt_neg1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg1
        ret
procend

procstart _uX_mm_const_flt_neg150_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neg150
        ret
procend

procstart _uX_mm_const_flt_bin128_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_bin128
        ret
procend

procstart _uX_mm_const_flt_binneg150_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_binneg150
        ret
procend

procstart _uX_mm_const_flt_maxrand_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxrand
        ret
procend

procstart _uX_mm_const_flt_maxi8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxi8
        ret
procend

procstart _uX_mm_const_flt_mini8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_mini8
        ret
procend

procstart _uX_mm_const_flt_maxu8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxu8
        ret
procend

procstart _uX_mm_const_flt_maxi16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxi16
        ret
procend

procstart _uX_mm_const_flt_mini16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_mini16
        ret
procend

procstart _uX_mm_const_flt_maxu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxu16
        ret
procend

procstart _uX_mm_const_flt_maxi32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxi32
        ret
procend

procstart _uX_mm_const_flt_mini32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_mini32
        ret
procend

procstart _uX_mm_const_flt_maxu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxu32
        ret
procend

procstart _uX_mm_const_flt_maxi8xu8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxi8xu8
        ret
procend

procstart _uX_mm_const_flt_mini8xu8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_mini8xu8
        ret
procend

procstart _uX_mm_const_flt_maxi8xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxi8xu16
        ret
procend

procstart _uX_mm_const_flt_mini8xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_mini8xu16
        ret
procend

procstart _uX_mm_const_flt_maxi16xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maxi16xu16
        ret
procend

procstart _uX_mm_const_flt_mini16xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_mini16xu16
        ret
procend

procstart _uX_mm_const_flt_fixunsigned_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_fixunsigned
        ret
procend

procstart _uX_mm_const_flt_fixunsigned32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_fixunsigned32
        ret
procend

procstart _uX_mm_const_flt_fixmaxi32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_fixmaxi32
        ret
procend

procstart _uX_mm_const_flt_fixmaxu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_fixmaxu32
        ret
procend

    ;;float mask low;;

procstart _uX_mm_const_flt_0e_bigoverflow_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_bigoverflow
        ret
procend

procstart _uX_mm_const_flt_0e_bytevtbl_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_bytevtbl
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl3
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl4
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl7_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl7
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl8
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl11_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl11
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl12_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl12
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl15_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl15
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl16
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl19_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl19
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl20_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl20
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl23_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl23
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl24
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl27_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl27
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl28_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl28
        ret
procend

procstart _uX_mm_const_flt_0e_1lshl31_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1lshl31
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl3
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl4
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl7_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl7
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl8
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl11_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl11
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl12_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl12
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl15_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl15
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl16
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl19_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl19
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl20_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl20
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl23_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl23
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl24
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl27_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl27
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl28_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl28
        ret
procend

procstart _uX_mm_const_flt_0e_neg1lshl31_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1lshl31
        ret
procend

procstart _uX_mm_const_flt_0e_false_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_false
        ret
procend

procstart _uX_mm_const_flt_0e_true_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_true
        ret
procend

procstart _uX_mm_const_flt_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_error
        ret
procend

procstart _uX_mm_const_flt_0e_magic_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_magic
        ret
procend

procstart _uX_mm_const_flt_0e_sign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_sign
        ret
procend

procstart _uX_mm_const_flt_0e_invsign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_invsign
        ret
procend

procstart _uX_mm_const_flt_0e_inf_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_inf
        ret
procend

procstart _uX_mm_const_flt_0e_fin_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_fin
        ret
procend

procstart _uX_mm_const_flt_0e_invinf_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_invinf
        ret
procend

procstart _uX_mm_const_flt_0e_neginf_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neginf
        ret
procend

procstart _uX_mm_const_flt_0e_nan_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_nan
        ret
procend

procstart _uX_mm_const_flt_0e_qnan_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_qnan
        ret
procend

procstart _uX_mm_const_flt_0e_negqnan_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_negqnan
        ret
procend

procstart _uX_mm_const_flt_0e_nantest_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_nantest
        ret
procend

procstart _uX_mm_const_flt_0e_abs_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_abs
        ret
procend

procstart _uX_mm_const_flt_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_min
        ret
procend

procstart _uX_mm_const_flt_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_max
        ret
procend

procstart _uX_mm_const_flt_0e_nofraction_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_nofraction
        ret
procend

procstart _uX_mm_const_flt_0e_mindenorm_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_mindenorm
        ret
procend

procstart _uX_mm_const_flt_0e_denormlimit_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_denormlimit
        ret
procend

procstart _uX_mm_const_flt_0e_minnormal_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_minnormal
        ret
procend

procstart _uX_mm_const_flt_0e_maxnormal_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxnormal
        ret
procend

procstart _uX_mm_const_flt_0e_decdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_decdig
        ret
procend

procstart _uX_mm_const_flt_0e_dig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_dig
        ret
procend

procstart _uX_mm_const_flt_0e_negdecdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_negdecdig
        ret
procend

procstart _uX_mm_const_flt_0e_negdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_negdig
        ret
procend

procstart _uX_mm_const_flt_0e_eps_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_eps
        ret
procend

procstart _uX_mm_const_flt_0e_epsilon_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_epsilon
        ret
procend

procstart _uX_mm_const_flt_0e_normeps_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_normeps
        ret
procend

procstart _uX_mm_const_flt_0e_guard_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_guard
        ret
procend

procstart _uX_mm_const_flt_0e_mantpow2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_mantpow2
        ret
procend

procstart _uX_mm_const_flt_0e_maxmantpow2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxmantpow2
        ret
procend

procstart _uX_mm_const_flt_0e_mantdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_mantdig
        ret
procend

procstart _uX_mm_const_flt_0e_mant_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_mant
        ret
procend

procstart _uX_mm_const_flt_0e_negmantdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_negmantdig
        ret
procend

procstart _uX_mm_const_flt_0e_negmant_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_negmant
        ret
procend

procstart _uX_mm_const_flt_0e_maxexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxexpo
        ret
procend

procstart _uX_mm_const_flt_0e_exposign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_exposign
        ret
procend

procstart _uX_mm_const_flt_0e_expo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,          __m128i_flt_0e_expo 
        ret
procend

procstart _uX_mm_const_flt_0e_negmaxexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_negmaxexpo
        ret
procend

procstart _uX_mm_const_flt_0e_negexposign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_negexposign
        ret
procend

procstart _uX_mm_const_flt_0e_negexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_negexpo
        ret
procend

procstart _uX_mm_const_flt_0e_subnormalexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_subnormalexpo
        ret
procend

procstart _uX_mm_const_flt_0e_minexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_minexpo
        ret
procend

procstart _uX_mm_const_flt_0e_maxdecexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxdecexpo
        ret
procend

procstart _uX_mm_const_flt_0e_negmaxdecexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_negmaxdecexpo
        ret
procend

procstart _uX_mm_const_flt_0e_mindecexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_mindecexpo
        ret
procend

procstart _uX_mm_const_flt_0e_expofield_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_expofield
        ret
procend

procstart _uX_mm_const_flt_0e_mantfield_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_mantfield
        ret
procend

procstart _uX_mm_const_flt_0e_norm_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_norm
        ret
procend

procstart _uX_mm_const_flt_0e_radix_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_radix
        ret
procend

procstart _uX_mm_const_flt_0e_rounds_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_rounds
        ret
procend

procstart _uX_mm_const_flt_0e_subdec_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_subdec
        ret
procend

procstart _uX_mm_const_flt_0e_sqrtmax_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_sqrtmax
        ret
procend

procstart _uX_mm_const_flt_0e_smallnormal_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_smallnormal
        ret
procend

procstart _uX_mm_const_flt_0e_halfminuseps_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_halfminuseps
        ret
procend

procstart _uX_mm_const_flt_0e_trueint_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_trueint
        ret
procend

procstart _uX_mm_const_flt_0e_byte_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_byte
        ret
procend

procstart _uX_mm_const_flt_0e_byte_even_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_byte_even
        ret
procend

procstart _uX_mm_const_flt_0e_byte_odd_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_byte_odd
        ret
procend

procstart _uX_mm_const_flt_0e_4low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_4low
        ret
procend

procstart _uX_mm_const_flt_0e_4high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_4high
        ret
procend

procstart _uX_mm_const_flt_0e_flip4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_flip4
        ret
procend

procstart _uX_mm_const_flt_0e_8low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_8low
        ret
procend

procstart _uX_mm_const_flt_0e_8high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_8high
        ret
procend

procstart _uX_mm_const_flt_0e_flip8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_flip8
        ret
procend

procstart _uX_mm_const_flt_0e_16low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_16low
        ret
procend

procstart _uX_mm_const_flt_0e_16high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_16high
        ret
procend

procstart _uX_mm_const_flt_0e_flip16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_flip16
        ret
procend

procstart _uX_mm_const_flt_0e_24low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_24low
        ret
procend

procstart _uX_mm_const_flt_0e_24high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_24high
        ret
procend

procstart _uX_mm_const_flt_0e_flip24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_flip24
        ret
procend

procstart _uX_mm_const_flt_0e_28low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_28low
        ret
procend

procstart _uX_mm_const_flt_0e_28high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_28high
        ret
procend

procstart _uX_mm_const_flt_0e_flip28_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_flip28
        ret
procend

procstart _uX_mm_const_flt_0e_32low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_32low
        ret
procend

procstart _uX_mm_const_flt_0e_32high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_32high
        ret
procend

procstart _uX_mm_const_flt_0e_flip32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_flip32
        ret
procend

procstart _uX_mm_const_flt_0e_0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_0
        ret
procend

procstart _uX_mm_const_flt_0e_0d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_0d5
        ret
procend

procstart _uX_mm_const_flt_0e_1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1
        ret
procend

procstart _uX_mm_const_flt_0e_1d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_1d5
        ret
procend

procstart _uX_mm_const_flt_0e_2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,          __m128i_flt_0e_2 
        ret
procend

procstart _uX_mm_const_flt_0e_2d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_2d5
        ret
procend

procstart _uX_mm_const_flt_0e_3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_3
        ret
procend

procstart _uX_mm_const_flt_0e_4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_4
        ret
procend

procstart _uX_mm_const_flt_0e_5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_5
        ret
procend

procstart _uX_mm_const_flt_0e_6_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_6
        ret
procend

procstart _uX_mm_const_flt_0e_7_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_7
        ret
procend

procstart _uX_mm_const_flt_0e_8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_8
        ret
procend

procstart _uX_mm_const_flt_0e_9_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_9
        ret
procend

procstart _uX_mm_const_flt_0e_10_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_10
        ret
procend

procstart _uX_mm_const_flt_0e_20_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_20
        ret
procend

procstart _uX_mm_const_flt_0e_23_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_23
        ret
procend

procstart _uX_mm_const_flt_0e_23d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_23d5
        ret
procend

procstart _uX_mm_const_flt_0e_24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_24
        ret
procend

procstart _uX_mm_const_flt_0e_24d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_24d5
        ret
procend

procstart _uX_mm_const_flt_0e_25_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_25
        ret
procend

procstart _uX_mm_const_flt_0e_128_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_128
        ret
procend

procstart _uX_mm_const_flt_0e_253_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_253
        ret
procend

procstart _uX_mm_const_flt_0e_neg0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg0
        ret
procend

procstart _uX_mm_const_flt_0e_neg1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg1
        ret
procend

procstart _uX_mm_const_flt_0e_neg150_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_neg150
        ret
procend

procstart _uX_mm_const_flt_0e_bin128_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_bin128
        ret
procend

procstart _uX_mm_const_flt_0e_binneg150_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_binneg150
        ret
procend

procstart _uX_mm_const_flt_0e_maxrand_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxrand
        ret
procend

procstart _uX_mm_const_flt_0e_maxi8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxi8
        ret
procend

procstart _uX_mm_const_flt_0e_mini8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_mini8
        ret
procend

procstart _uX_mm_const_flt_0e_maxu8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxu8
        ret
procend

procstart _uX_mm_const_flt_0e_maxi16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxi16
        ret
procend

procstart _uX_mm_const_flt_0e_mini16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_mini16
        ret
procend

procstart _uX_mm_const_flt_0e_maxu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxu16
        ret
procend

procstart _uX_mm_const_flt_0e_maxi32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxi32
        ret
procend

procstart _uX_mm_const_flt_0e_mini32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_mini32
        ret
procend

procstart _uX_mm_const_flt_0e_maxu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxu32
        ret
procend

procstart _uX_mm_const_flt_0e_maxi8xu8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxi8xu8
        ret
procend

procstart _uX_mm_const_flt_0e_mini8xu8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_mini8xu8
        ret
procend

procstart _uX_mm_const_flt_0e_maxi8xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxi8xu16
        ret
procend

procstart _uX_mm_const_flt_0e_mini8xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_mini8xu16
        ret
procend

procstart _uX_mm_const_flt_0e_maxi16xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_maxi16xu16
        ret
procend

procstart _uX_mm_const_flt_0e_mini16xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_mini16xu16
        ret
procend

procstart _uX_mm_const_flt_0e_fixunsigned_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_fixunsigned
        ret
procend

procstart _uX_mm_const_flt_0e_fixunsigned32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_fixunsigned32
        ret
procend

procstart _uX_mm_const_flt_0e_fixmaxi32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_fixmaxi32
        ret
procend

procstart _uX_mm_const_flt_0e_fixmaxu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_0e_fixmaxu32
        ret
procend

    ;;DirectX Math constants;;

procstart _uX_mm_const_flt_negativezero_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_negativezero
        ret
procend

procstart _uX_mm_const_flt_negate3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_negate3
        ret
procend

procstart _uX_mm_const_flt_maskxy_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maskxy
        ret
procend

procstart _uX_mm_const_flt_maskxyz_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maskxyz
        ret
procend

procstart _uX_mm_const_flt_maskxyzw_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maskxyzw
        ret
procend

procstart _uX_mm_const_flt_mask3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_mask3
        ret
procend

procstart _uX_mm_const_flt_maskx_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maskx
        ret
procend

procstart _uX_mm_const_flt_masky_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_masky
        ret
procend

procstart _uX_mm_const_flt_maskz_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maskz
        ret
procend

procstart _uX_mm_const_flt_maskw_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maskw
        ret
procend

procstart _uX_mm_const_flt_infinity_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_infinity
        ret
procend

procstart _uX_mm_const_flt_qnantest_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_qnantest
        ret
procend

procstart _uX_mm_const_flt_absmask_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_absmask
        ret
procend

procstart _uX_mm_const_flt_fltmin_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_fltmin
        ret
procend

procstart _uX_mm_const_flt_fltmax_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_fltmax
        ret
procend

procstart _uX_mm_const_flt_negonemask_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_negonemask
        ret
procend

procstart _uX_mm_const_flt_maska8r8g8b8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maska8r8g8b8
        ret
procend

procstart _uX_mm_const_flt_flipa8r8g8b8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flipa8r8g8b8
        ret
procend

procstart _uX_mm_const_flt_maska2b10g10r10_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maska2b10g10r10
        ret
procend

procstart _uX_mm_const_flt_flipa2b10g10r10_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flipa2b10g10r10
        ret
procend

procstart _uX_mm_const_flt_maskx16y16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maskx16y16
        ret
procend

procstart _uX_mm_const_flt_flipx16y16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flipx16y16
        ret
procend

procstart _uX_mm_const_flt_maskx16y16z16w16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maskx16y16z16w16
        ret
procend

procstart _uX_mm_const_flt_flipx16y16z16w16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flipx16y16z16w16
        ret
procend

procstart _uX_mm_const_flt_maskbyte_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maskbyte
        ret
procend

procstart _uX_mm_const_flt_select0000_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select0000
        ret
procend

procstart _uX_mm_const_flt_select0001_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select0001
        ret
procend

procstart _uX_mm_const_flt_select0010_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select0010
        ret
procend

procstart _uX_mm_const_flt_select0100_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select0100
        ret
procend

procstart _uX_mm_const_flt_select1000_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select1000
        ret
procend

procstart _uX_mm_const_flt_select0011_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select0011
        ret
procend

procstart _uX_mm_const_flt_select0111_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select0111
        ret
procend

procstart _uX_mm_const_flt_select1111_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select1111
        ret
procend

procstart _uX_mm_const_flt_select1110_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select1110
        ret
procend

procstart _uX_mm_const_flt_select1100_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select1100
        ret
procend

procstart _uX_mm_const_flt_select1001_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select1001
        ret
procend

procstart _uX_mm_const_flt_select0110_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select0110
        ret
procend

procstart _uX_mm_const_flt_select1011_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select1011
        ret
procend

procstart _uX_mm_const_flt_select1101_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select1101
        ret
procend

procstart _uX_mm_const_flt_select0101_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select0101
        ret
procend

procstart _uX_mm_const_flt_select1010_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_select1010
        ret
procend

procstart _uX_mm_const_flt_onehalfminusepsilon_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_onehalfminusepsilon
        ret
procend

procstart _uX_mm_const_flt_flipy_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flipy
        ret
procend

procstart _uX_mm_const_flt_flipz_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flipz
        ret
procend

procstart _uX_mm_const_flt_flipw_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flipw
        ret
procend

procstart _uX_mm_const_flt_flipyz_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flipyz
        ret
procend

procstart _uX_mm_const_flt_flipzw_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flipzw
        ret
procend

procstart _uX_mm_const_flt_flipyw_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_flipyw
        ret
procend

procstart _uX_mm_const_flt_maskdec4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maskdec4
        ret
procend

procstart _uX_mm_const_flt_xordec4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_xordec4
        ret
procend

procstart _uX_mm_const_flt_maskbyte4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_maskbyte4
        ret
procend

procstart _uX_mm_const_flt_xorbyte4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_xorbyte4
        ret
procend

procstart _uX_mm_const_flt_exponentbias_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_exponentbias
        ret
procend

procstart _uX_mm_const_flt_subnormalexponent_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_subnormalexponent
        ret
procend

procstart _uX_mm_const_flt_numtrailing_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_numtrailing
        ret
procend

procstart _uX_mm_const_flt_neginfinity_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_flt_neginfinity
        ret
procend

    ;;double mask;;

procstart _uX_mm_const_dbl_1lshl3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl3
        ret
procend

procstart _uX_mm_const_dbl_1lshl4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl4
        ret
procend

procstart _uX_mm_const_dbl_1lshl7_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl7
        ret
procend

procstart _uX_mm_const_dbl_1lshl8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl8
        ret
procend

procstart _uX_mm_const_dbl_1lshl11_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl11
        ret
procend

procstart _uX_mm_const_dbl_1lshl12_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl12
        ret
procend

procstart _uX_mm_const_dbl_1lshl15_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl15
        ret
procend

procstart _uX_mm_const_dbl_1lshl16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl16
        ret
procend

procstart _uX_mm_const_dbl_1lshl19_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl19
        ret
procend

procstart _uX_mm_const_dbl_1lshl20_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl20
        ret
procend

procstart _uX_mm_const_dbl_1lshl23_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl23
        ret
procend

procstart _uX_mm_const_dbl_1lshl24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl24
        ret
procend

procstart _uX_mm_const_dbl_1lshl27_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl27
        ret
procend

procstart _uX_mm_const_dbl_1lshl28_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl28
        ret
procend

procstart _uX_mm_const_dbl_1lshl31_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl31
        ret
procend

procstart _uX_mm_const_dbl_1lshl32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl32
        ret
procend

procstart _uX_mm_const_dbl_1lshl35_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl35
        ret
procend

procstart _uX_mm_const_dbl_1lshl36_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl36
        ret
procend

procstart _uX_mm_const_dbl_1lshl39_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl39
        ret
procend

procstart _uX_mm_const_dbl_1lshl40_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl40
        ret
procend

procstart _uX_mm_const_dbl_1lshl43_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl43
        ret
procend

procstart _uX_mm_const_dbl_1lshl44_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl44
        ret
procend

procstart _uX_mm_const_dbl_1lshl47_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl47
        ret
procend

procstart _uX_mm_const_dbl_1lshl48_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl48
        ret
procend

procstart _uX_mm_const_dbl_1lshl51_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl51
        ret
procend

procstart _uX_mm_const_dbl_1lshl52_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl52
        ret
procend

procstart _uX_mm_const_dbl_1lshl55_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl55
        ret
procend

procstart _uX_mm_const_dbl_1lshl56_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl56
        ret
procend

procstart _uX_mm_const_dbl_1lshl59_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl59
        ret
procend

procstart _uX_mm_const_dbl_1lshl60_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl60
        ret
procend

procstart _uX_mm_const_dbl_1lshl63_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1lshl63
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl3
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl4
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl7_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl7
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl8
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl11_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl11
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl12_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl12
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl15_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl15
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl16
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl19_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl19
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl20_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl20
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl23_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl23
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl24
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl27_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl27
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl28_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl28
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl31_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl31
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl32
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl35_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl35
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl36_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl36
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl39_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl39
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl40_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl40
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl43_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl43
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl44_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl44
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl47_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl47
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl48_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl48
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl51_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl51
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl52_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl52
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl55_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl55
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl56_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl56
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl59_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl59
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl60_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl60
        ret
procend

procstart _uX_mm_const_dbl_neg1lshl63_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1lshl63
        ret
procend

procstart _uX_mm_const_dbl_false_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_false
        ret
procend

procstart _uX_mm_const_dbl_true_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_true
        ret
procend

procstart _uX_mm_const_dbl_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_error
        ret
procend

procstart _uX_mm_const_dbl_magic_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_magic
        ret
procend

procstart _uX_mm_const_dbl_sign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_sign
        ret
procend

procstart _uX_mm_const_dbl_invsign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_invsign
        ret
procend

procstart _uX_mm_const_dbl_inf_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_inf
        ret
procend

procstart _uX_mm_const_dbl_fin_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_fin
        ret
procend

procstart _uX_mm_const_dbl_invinf_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_invinf
        ret
procend

procstart _uX_mm_const_dbl_neginf_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neginf
        ret
procend

procstart _uX_mm_const_dbl_nan_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_nan
        ret
procend

procstart _uX_mm_const_dbl_qnan_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_qnan
        ret
procend

procstart _uX_mm_const_dbl_negqnan_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_negqnan
        ret
procend

procstart _uX_mm_const_dbl_nantest_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_nantest
        ret
procend

procstart _uX_mm_const_dbl_abs_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_abs
        ret
procend

procstart _uX_mm_const_dbl_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_min
        ret
procend

procstart _uX_mm_const_dbl_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_max
        ret
procend

procstart _uX_mm_const_dbl_nofraction_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_nofraction
        ret
procend

procstart _uX_mm_const_dbl_mindenorm_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mindenorm
        ret
procend

procstart _uX_mm_const_dbl_denormlimit_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_denormlimit
        ret
procend

procstart _uX_mm_const_dbl_minnormal_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_minnormal
        ret
procend

procstart _uX_mm_const_dbl_maxnormal_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxnormal
        ret
procend

procstart _uX_mm_const_dbl_decdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_decdig
        ret
procend

procstart _uX_mm_const_dbl_dig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_dig
        ret
procend

procstart _uX_mm_const_dbl_negdecdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_negdecdig
        ret
procend

procstart _uX_mm_const_dbl_negdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_negdig
        ret
procend

procstart _uX_mm_const_dbl_eps_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_eps
        ret
procend

procstart _uX_mm_const_dbl_epsilon_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_epsilon
        ret
procend

procstart _uX_mm_const_dbl_normeps_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_normeps
        ret
procend

procstart _uX_mm_const_dbl_guard_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_guard
        ret
procend

procstart _uX_mm_const_dbl_mantpow2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mantpow2
        ret
procend

procstart _uX_mm_const_dbl_maxmantpow2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxmantpow2
        ret
procend

procstart _uX_mm_const_dbl_mantdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mantdig
        ret
procend

procstart _uX_mm_const_dbl_mant_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mant
        ret
procend

procstart _uX_mm_const_dbl_negmantdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_negmantdig
        ret
procend

procstart _uX_mm_const_dbl_negmant_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_negmant
        ret
procend

procstart _uX_mm_const_dbl_maxexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxexpo
        ret
procend

procstart _uX_mm_const_dbl_exposign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_exposign
        ret
procend

procstart _uX_mm_const_dbl_expo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_expo
        ret
procend

procstart _uX_mm_const_dbl_negmaxexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_negmaxexpo
        ret
procend

procstart _uX_mm_const_dbl_negexposign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_negexposign
        ret
procend

procstart _uX_mm_const_dbl_negexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_negexpo
        ret
procend

procstart _uX_mm_const_dbl_subnormalexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_subnormalexpo
        ret
procend

procstart _uX_mm_const_dbl_minexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_minexpo
        ret
procend

procstart _uX_mm_const_dbl_maxdecexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxdecexpo
        ret
procend

procstart _uX_mm_const_dbl_negmaxdecexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_negmaxdecexpo
        ret
procend

procstart _uX_mm_const_dbl_mindecexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mindecexpo
        ret
procend

procstart _uX_mm_const_dbl_expofield_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_expofield
        ret
procend

procstart _uX_mm_const_dbl_mantfield_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mantfield
        ret
procend

procstart _uX_mm_const_dbl_norm_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_norm
        ret
procend

procstart _uX_mm_const_dbl_radix_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_radix
        ret
procend

procstart _uX_mm_const_dbl_rounds_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_rounds
        ret
procend

procstart _uX_mm_const_dbl_subdec_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_subdec
        ret
procend

procstart _uX_mm_const_dbl_sqrtmax_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_sqrtmax
        ret
procend

procstart _uX_mm_const_dbl_smallnormal_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_smallnormal
        ret
procend

procstart _uX_mm_const_dbl_halfminuseps_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_halfminuseps
        ret
procend

procstart _uX_mm_const_dbl_trueint_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_trueint
        ret
procend

procstart _uX_mm_const_dbl_byte_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_byte
        ret
procend

procstart _uX_mm_const_dbl_byte_even_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_byte_even
        ret
procend

procstart _uX_mm_const_dbl_byte_odd_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_byte_odd
        ret
procend

procstart _uX_mm_const_dbl_4low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_4low
        ret
procend

procstart _uX_mm_const_dbl_4high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_4high
        ret
procend

procstart _uX_mm_const_dbl_flip4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_flip4
        ret
procend

procstart _uX_mm_const_dbl_8low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_8low
        ret
procend

procstart _uX_mm_const_dbl_8high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_8high
        ret
procend

procstart _uX_mm_const_dbl_flip8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_flip8
        ret
procend

procstart _uX_mm_const_dbl_16low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_16low
        ret
procend

procstart _uX_mm_const_dbl_16high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_16high
        ret
procend

procstart _uX_mm_const_dbl_flip16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_flip16
        ret
procend

procstart _uX_mm_const_dbl_24low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_24low
        ret
procend

procstart _uX_mm_const_dbl_24high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_24high
        ret
procend

procstart _uX_mm_const_dbl_flip24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_flip24
        ret
procend

procstart _uX_mm_const_dbl_28low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_28low
        ret
procend

procstart _uX_mm_const_dbl_28high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_28high
        ret
procend

procstart _uX_mm_const_dbl_flip28_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_flip28
        ret
procend

procstart _uX_mm_const_dbl_32low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_32low
        ret
procend

procstart _uX_mm_const_dbl_32high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_32high
        ret
procend

procstart _uX_mm_const_dbl_flip32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_flip32
        ret
procend

procstart _uX_mm_const_dbl_40low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_40low
        ret
procend

procstart _uX_mm_const_dbl_40high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_40high
        ret
procend

procstart _uX_mm_const_dbl_flip40_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_flip40
        ret
procend

procstart _uX_mm_const_dbl_48low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_48low
        ret
procend

procstart _uX_mm_const_dbl_48high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_48high
        ret
procend

procstart _uX_mm_const_dbl_flip48_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_flip48
        ret
procend

procstart _uX_mm_const_dbl_56low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_56low
        ret
procend

procstart _uX_mm_const_dbl_56high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_56high
        ret
procend

procstart _uX_mm_const_dbl_flip56_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_flip56
        ret
procend

procstart _uX_mm_const_dbl_60low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_60low
        ret
procend

procstart _uX_mm_const_dbl_60high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_60high
        ret
procend

procstart _uX_mm_const_dbl_flip60_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_flip60
        ret
procend

procstart _uX_mm_const_dbl_64low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_64low
        ret
procend

procstart _uX_mm_const_dbl_64high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_64high
        ret
procend

procstart _uX_mm_const_dbl_flip64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_flip64
        ret
procend

procstart _uX_mm_const_dbl_0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0
        ret
procend

procstart _uX_mm_const_dbl_0d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0d5
        ret
procend

procstart _uX_mm_const_dbl_1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1
        ret
procend

procstart _uX_mm_const_dbl_1d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_1d5
        ret
procend

procstart _uX_mm_const_dbl_2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_2
        ret
procend

procstart _uX_mm_const_dbl_2d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_2d5
        ret
procend

procstart _uX_mm_const_dbl_3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_3
        ret
procend

procstart _uX_mm_const_dbl_4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_4
        ret
procend

procstart _uX_mm_const_dbl_5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_5
        ret
procend

procstart _uX_mm_const_dbl_6_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_6
        ret
procend

procstart _uX_mm_const_dbl_7_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_7
        ret
procend

procstart _uX_mm_const_dbl_8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_8
        ret
procend

procstart _uX_mm_const_dbl_9_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_9
        ret
procend

procstart _uX_mm_const_dbl_10_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_10
        ret
procend

procstart _uX_mm_const_dbl_20_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_20
        ret
procend

procstart _uX_mm_const_dbl_23_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_23
        ret
procend

procstart _uX_mm_const_dbl_23d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_23d5
        ret
procend

procstart _uX_mm_const_dbl_24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_24
        ret
procend

procstart _uX_mm_const_dbl_24d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_24d5
        ret
procend

procstart _uX_mm_const_dbl_25_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_25
        ret
procend

procstart _uX_mm_const_dbl_128_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_128
        ret
procend

procstart _uX_mm_const_dbl_253_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_253
        ret
procend

procstart _uX_mm_const_dbl_neg0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg0
        ret
procend

procstart _uX_mm_const_dbl_neg1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg1
        ret
procend

procstart _uX_mm_const_dbl_neg150_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_neg150
        ret
procend

procstart _uX_mm_const_dbl_bin128_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_bin128
        ret
procend

procstart _uX_mm_const_dbl_binneg150_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_binneg150
        ret
procend

procstart _uX_mm_const_dbl_maxrand_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxrand
        ret
procend

procstart _uX_mm_const_dbl_maxi8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxi8
        ret
procend

procstart _uX_mm_const_dbl_mini8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mini8
        ret
procend

procstart _uX_mm_const_dbl_maxu8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxu8
        ret
procend

procstart _uX_mm_const_dbl_maxi16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxi16
        ret
procend

procstart _uX_mm_const_dbl_mini16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mini16
        ret
procend

procstart _uX_mm_const_dbl_maxu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxu16
        ret
procend

procstart _uX_mm_const_dbl_maxi32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxi32
        ret
procend

procstart _uX_mm_const_dbl_mini32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mini32
        ret
procend

procstart _uX_mm_const_dbl_maxu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxu32
        ret
procend

procstart _uX_mm_const_dbl_maxi64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxi64
        ret
procend

procstart _uX_mm_const_dbl_mini64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mini64
        ret
procend

procstart _uX_mm_const_dbl_maxu64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxu64
        ret
procend

procstart _uX_mm_const_dbl_maxi8xu8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxi8xu8
        ret
procend

procstart _uX_mm_const_dbl_mini8xu8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mini8xu8
        ret
procend

procstart _uX_mm_const_dbl_maxi8xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxi8xu16
        ret
procend

procstart _uX_mm_const_dbl_mini8xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mini8xu16
        ret
procend

procstart _uX_mm_const_dbl_maxi16xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxi16xu16
        ret
procend

procstart _uX_mm_const_dbl_mini16xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mini16xu16
        ret
procend

procstart _uX_mm_const_dbl_maxi16xu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxi16xu32
        ret
procend

procstart _uX_mm_const_dbl_mini16xu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mini16xu32
        ret
procend

procstart _uX_mm_const_dbl_maxi32xu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_maxi32xu32
        ret
procend

procstart _uX_mm_const_dbl_mini32xu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_mini32xu32
        ret
procend

procstart _uX_mm_const_dbl_fixunsigned_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_fixunsigned
        ret
procend

procstart _uX_mm_const_dbl_fixunsigned32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_fixunsigned32
        ret
procend

procstart _uX_mm_const_dbl_fixmaxi32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_fixmaxi32
        ret
procend

procstart _uX_mm_const_dbl_fixmaxu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_fixmaxu32
        ret
procend
        
procstart _uX_mm_const_dbl_fixunsigned64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_fixunsigned64
        ret
procend

procstart _uX_mm_const_dbl_fixmaxi64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_fixmaxi64
        ret
procend

procstart _uX_mm_const_dbl_fixmaxu64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_fixmaxu64
        ret
procend
    
    ;;double mask low;;
    
procstart _uX_mm_const_dbl_0e_1lshl3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl3
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl4
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl7_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl7
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl8
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl11_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl11
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl12_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl12
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl15_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl15
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl16
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl19_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl19
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl20_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl20
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl23_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl23
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl24
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl27_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl27
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl28_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl28
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl31_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl31
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl32
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl35_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl35
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl36_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl36
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl39_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl39
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl40_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl40
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl43_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl43
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl44_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl44
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl47_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl47
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl48_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl48
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl51_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl51
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl52_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl52
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl55_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl55
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl56_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl56
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl59_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl59
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl60_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl60
        ret
procend

procstart _uX_mm_const_dbl_0e_1lshl63_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1lshl63
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl3
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl4
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl7_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl7
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl8
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl11_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl11
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl12_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl12
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl15_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl15
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl16
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl19_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl19
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl20_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl20
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl23_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl23
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl24
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl27_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl27
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl28_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl28
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl31_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl31
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl32
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl35_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl35
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl36_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl36
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl39_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl39
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl40_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl40
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl43_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl43
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl44_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl44
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl47_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl47
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl48_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl48
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl51_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl51
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl52_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl52
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl55_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl55
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl56_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl56
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl59_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl59
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl60_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl60
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1lshl63_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1lshl63
        ret
procend

procstart _uX_mm_const_dbl_0e_false_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_false
        ret
procend

procstart _uX_mm_const_dbl_0e_true_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_true
        ret
procend

procstart _uX_mm_const_dbl_0e_error_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_error
        ret
procend

procstart _uX_mm_const_dbl_0e_magic_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_magic
        ret
procend

procstart _uX_mm_const_dbl_0e_sign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_sign
        ret
procend

procstart _uX_mm_const_dbl_0e_invsign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_invsign
        ret
procend

procstart _uX_mm_const_dbl_0e_inf_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_inf
        ret
procend

procstart _uX_mm_const_dbl_0e_fin_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_fin
        ret
procend

procstart _uX_mm_const_dbl_0e_invinf_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_invinf
        ret
procend

procstart _uX_mm_const_dbl_0e_neginf_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neginf
        ret
procend

procstart _uX_mm_const_dbl_0e_nan_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_nan
        ret
procend

procstart _uX_mm_const_dbl_0e_qnan_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_qnan
        ret
procend

procstart _uX_mm_const_dbl_0e_negqnan_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_negqnan
        ret
procend

procstart _uX_mm_const_dbl_0e_nantest_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_nantest
        ret
procend

procstart _uX_mm_const_dbl_0e_abs_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_abs
        ret
procend

procstart _uX_mm_const_dbl_0e_min_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_min
        ret
procend

procstart _uX_mm_const_dbl_0e_max_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_max
        ret
procend

procstart _uX_mm_const_dbl_0e_nofraction_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_nofraction
        ret
procend

procstart _uX_mm_const_dbl_0e_mindenorm_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mindenorm
        ret
procend

procstart _uX_mm_const_dbl_0e_denormlimit_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_denormlimit
        ret
procend

procstart _uX_mm_const_dbl_0e_minnormal_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_minnormal
        ret
procend

procstart _uX_mm_const_dbl_0e_maxnormal_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxnormal
        ret
procend

procstart _uX_mm_const_dbl_0e_decdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_decdig
        ret
procend

procstart _uX_mm_const_dbl_0e_dig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_dig
        ret
procend

procstart _uX_mm_const_dbl_0e_negdecdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_negdecdig
        ret
procend

procstart _uX_mm_const_dbl_0e_negdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_negdig
        ret
procend

procstart _uX_mm_const_dbl_0e_eps_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_eps
        ret
procend

procstart _uX_mm_const_dbl_0e_epsilon_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_epsilon
        ret
procend

procstart _uX_mm_const_dbl_0e_normeps_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_normeps
        ret
procend

procstart _uX_mm_const_dbl_0e_guard_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_guard
        ret
procend

procstart _uX_mm_const_dbl_0e_mantpow2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mantpow2
        ret
procend

procstart _uX_mm_const_dbl_0e_maxmantpow2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxmantpow2
        ret
procend

procstart _uX_mm_const_dbl_0e_mantdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mantdig
        ret
procend

procstart _uX_mm_const_dbl_0e_mant_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mant
        ret
procend

procstart _uX_mm_const_dbl_0e_negmantdig_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_negmantdig
        ret
procend

procstart _uX_mm_const_dbl_0e_negmant_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_negmant
        ret
procend

procstart _uX_mm_const_dbl_0e_maxexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxexpo
        ret
procend

procstart _uX_mm_const_dbl_0e_exposign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_exposign
        ret
procend

procstart _uX_mm_const_dbl_0e_expo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_expo
        ret
procend

procstart _uX_mm_const_dbl_0e_negmaxexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_negmaxexpo
        ret
procend

procstart _uX_mm_const_dbl_0e_negexposign_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_negexposign
        ret
procend

procstart _uX_mm_const_dbl_0e_negexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_negexpo
        ret
procend

procstart _uX_mm_const_dbl_0e_subnormalexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_subnormalexpo
        ret
procend

procstart _uX_mm_const_dbl_0e_minexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_minexpo
        ret
procend

procstart _uX_mm_const_dbl_0e_maxdecexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxdecexpo
        ret
procend

procstart _uX_mm_const_dbl_0e_negmaxdecexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_negmaxdecexpo
        ret
procend

procstart _uX_mm_const_dbl_0e_mindecexpo_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mindecexpo
        ret
procend

procstart _uX_mm_const_dbl_0e_expofield_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_expofield
        ret
procend

procstart _uX_mm_const_dbl_0e_mantfield_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mantfield
        ret
procend

procstart _uX_mm_const_dbl_0e_norm_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_norm
        ret
procend

procstart _uX_mm_const_dbl_0e_radix_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_radix
        ret
procend

procstart _uX_mm_const_dbl_0e_rounds_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_rounds
        ret
procend

procstart _uX_mm_const_dbl_0e_subdec_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_subdec
        ret
procend

procstart _uX_mm_const_dbl_0e_sqrtmax_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_sqrtmax
        ret
procend

procstart _uX_mm_const_dbl_0e_smallnormal_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_smallnormal
        ret
procend

procstart _uX_mm_const_dbl_0e_halfminuseps_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_halfminuseps
        ret
procend

procstart _uX_mm_const_dbl_0e_trueint_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_trueint
        ret
procend

procstart _uX_mm_const_dbl_0e_byte_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_byte
        ret
procend

procstart _uX_mm_const_dbl_0e_byte_even_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_byte_even
        ret
procend

procstart _uX_mm_const_dbl_0e_byte_odd_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_byte_odd
        ret
procend

procstart _uX_mm_const_dbl_0e_4low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_4low
        ret
procend

procstart _uX_mm_const_dbl_0e_4high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_4high
        ret
procend

procstart _uX_mm_const_dbl_0e_flip4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_flip4
        ret
procend

procstart _uX_mm_const_dbl_0e_8low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_8low
        ret
procend

procstart _uX_mm_const_dbl_0e_8high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_8high
        ret
procend

procstart _uX_mm_const_dbl_0e_flip8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_flip8
        ret
procend

procstart _uX_mm_const_dbl_0e_16low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_16low
        ret
procend

procstart _uX_mm_const_dbl_0e_16high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_16high
        ret
procend

procstart _uX_mm_const_dbl_0e_flip16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_flip16
        ret
procend

procstart _uX_mm_const_dbl_0e_24low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_24low
        ret
procend

procstart _uX_mm_const_dbl_0e_24high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_24high
        ret
procend

procstart _uX_mm_const_dbl_0e_flip24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_flip24
        ret
procend

procstart _uX_mm_const_dbl_0e_28low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_28low
        ret
procend

procstart _uX_mm_const_dbl_0e_28high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_28high
        ret
procend

procstart _uX_mm_const_dbl_0e_flip28_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_flip28
        ret
procend

procstart _uX_mm_const_dbl_0e_32low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_32low
        ret
procend

procstart _uX_mm_const_dbl_0e_32high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_32high
        ret
procend

procstart _uX_mm_const_dbl_0e_flip32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_flip32
        ret
procend

procstart _uX_mm_const_dbl_0e_40low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_40low
        ret
procend

procstart _uX_mm_const_dbl_0e_40high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_40high
        ret
procend

procstart _uX_mm_const_dbl_0e_flip40_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_flip40
        ret
procend

procstart _uX_mm_const_dbl_0e_48low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_48low
        ret
procend

procstart _uX_mm_const_dbl_0e_48high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_48high
        ret
procend

procstart _uX_mm_const_dbl_0e_flip48_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_flip48
        ret
procend

procstart _uX_mm_const_dbl_0e_56low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_56low
        ret
procend

procstart _uX_mm_const_dbl_0e_56high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_56high
        ret
procend

procstart _uX_mm_const_dbl_0e_flip56_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_flip56
        ret
procend

procstart _uX_mm_const_dbl_0e_60low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_60low
        ret
procend

procstart _uX_mm_const_dbl_0e_60high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_60high
        ret
procend

procstart _uX_mm_const_dbl_0e_flip60_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_flip60
        ret
procend

procstart _uX_mm_const_dbl_0e_64low_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_64low
        ret
procend

procstart _uX_mm_const_dbl_0e_64high_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_64high
        ret
procend

procstart _uX_mm_const_dbl_0e_flip64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_flip64
        ret
procend

procstart _uX_mm_const_dbl_0e_0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_0
        ret
procend

procstart _uX_mm_const_dbl_0e_0d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_0d5
        ret
procend

procstart _uX_mm_const_dbl_0e_1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1
        ret
procend

procstart _uX_mm_const_dbl_0e_1d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_1d5
        ret
procend

procstart _uX_mm_const_dbl_0e_2_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_2
        ret
procend

procstart _uX_mm_const_dbl_0e_2d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_2d5
        ret
procend

procstart _uX_mm_const_dbl_0e_3_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_3
        ret
procend

procstart _uX_mm_const_dbl_0e_4_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_4
        ret
procend

procstart _uX_mm_const_dbl_0e_5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_5
        ret
procend

procstart _uX_mm_const_dbl_0e_6_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_6
        ret
procend

procstart _uX_mm_const_dbl_0e_7_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_7
        ret
procend

procstart _uX_mm_const_dbl_0e_8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_8
        ret
procend

procstart _uX_mm_const_dbl_0e_9_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_9
        ret
procend

procstart _uX_mm_const_dbl_0e_10_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_10
        ret
procend

procstart _uX_mm_const_dbl_0e_20_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_20
        ret
procend

procstart _uX_mm_const_dbl_0e_23_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_23
        ret
procend

procstart _uX_mm_const_dbl_0e_23d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_23d5
        ret
procend

procstart _uX_mm_const_dbl_0e_24_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_24
        ret
procend

procstart _uX_mm_const_dbl_0e_24d5_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_24d5
        ret
procend

procstart _uX_mm_const_dbl_0e_25_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_25
        ret
procend

procstart _uX_mm_const_dbl_0e_128_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_128
        ret
procend

procstart _uX_mm_const_dbl_0e_253_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_253
        ret
procend

procstart _uX_mm_const_dbl_0e_neg0_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg0
        ret
procend

procstart _uX_mm_const_dbl_0e_neg1_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg1
        ret
procend

procstart _uX_mm_const_dbl_0e_neg150_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_neg150
        ret
procend

procstart _uX_mm_const_dbl_0e_bin128_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_bin128
        ret
procend

procstart _uX_mm_const_dbl_0e_binneg150_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_binneg150
        ret
procend

procstart _uX_mm_const_dbl_0e_maxrand_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxrand
        ret
procend

procstart _uX_mm_const_dbl_0e_maxi8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxi8
        ret
procend

procstart _uX_mm_const_dbl_0e_mini8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mini8
        ret
procend

procstart _uX_mm_const_dbl_0e_maxu8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxu8
        ret
procend

procstart _uX_mm_const_dbl_0e_maxi16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxi16
        ret
procend

procstart _uX_mm_const_dbl_0e_mini16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mini16
        ret
procend

procstart _uX_mm_const_dbl_0e_maxu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxu16
        ret
procend

procstart _uX_mm_const_dbl_0e_maxi32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxi32
        ret
procend

procstart _uX_mm_const_dbl_0e_mini32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mini32
        ret
procend

procstart _uX_mm_const_dbl_0e_maxu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxu32
        ret
procend

procstart _uX_mm_const_dbl_0e_maxi64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxi64
        ret
procend

procstart _uX_mm_const_dbl_0e_mini64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mini64
        ret
procend

procstart _uX_mm_const_dbl_0e_maxu64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxu64
        ret
procend

procstart _uX_mm_const_dbl_0e_maxi8xu8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxi8xu8
        ret
procend

procstart _uX_mm_const_dbl_0e_mini8xu8_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mini8xu8
        ret
procend

procstart _uX_mm_const_dbl_0e_maxi8xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxi8xu16
        ret
procend

procstart _uX_mm_const_dbl_0e_mini8xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mini8xu16
        ret
procend

procstart _uX_mm_const_dbl_0e_maxi16xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxi16xu16
        ret
procend

procstart _uX_mm_const_dbl_0e_mini16xu16_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mini16xu16
        ret
procend

procstart _uX_mm_const_dbl_0e_maxi16xu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxi16xu32
        ret
procend

procstart _uX_mm_const_dbl_0e_mini16xu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mini16xu32
        ret
procend

procstart _uX_mm_const_dbl_0e_maxi32xu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_maxi32xu32
        ret
procend

procstart _uX_mm_const_dbl_0e_mini32xu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_mini32xu32
        ret
procend

procstart _uX_mm_const_dbl_0e_fixunsigned_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_fixunsigned
        ret
procend

procstart _uX_mm_const_dbl_0e_fixunsigned32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_fixunsigned32
        ret
procend

procstart _uX_mm_const_dbl_0e_fixmaxi32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_fixmaxi32
        ret
procend

procstart _uX_mm_const_dbl_0e_fixmaxu32_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_fixmaxu32
        ret
procend

procstart _uX_mm_const_dbl_0e_fixunsigned64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_fixunsigned64
        ret
procend

procstart _uX_mm_const_dbl_0e_fixmaxi64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_fixmaxi64
        ret
procend

procstart _uX_mm_const_dbl_0e_fixmaxu64_si128, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_0e_fixmaxu64
        ret
procend

    ;;double;;
    
;;             sincos template, double precision
procstart _uX_mm_const_P0sin_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_P0sin
        ret
procend

procstart _uX_mm_const_P1sin_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_P1sin
        ret
procend

procstart _uX_mm_const_P2sin_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_P2sin
        ret
procend

procstart _uX_mm_const_P3sin_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_P3sin
        ret
procend

procstart _uX_mm_const_P4sin_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_P4sin
        ret
procend

procstart _uX_mm_const_P5sin_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_P5sin
        ret
procend

procstart _uX_mm_const_P0cos_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_P0cos
        ret
procend

procstart _uX_mm_const_P1cos_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_P1cos
        ret
procend

procstart _uX_mm_const_P2cos_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_P2cos
        ret
procend

procstart _uX_mm_const_P3cos_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_P3cos
        ret
procend

procstart _uX_mm_const_P4cos_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_P4cos
        ret
procend

procstart _uX_mm_const_P5cos_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_P5cos
        ret
procend

procstart _uX_mm_const_DP1_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_DP1
        ret
procend

procstart _uX_mm_const_DP2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_DP2
        ret
procend

procstart _uX_mm_const_DP3_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_DP3
        ret
procend

;;             sincos template, double precision

procstart _uX_mm_const_1lshl3_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl3
        ret
procend

procstart _uX_mm_const_1lshl4_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl4
        ret
procend

procstart _uX_mm_const_1lshl7_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl7
        ret
procend

procstart _uX_mm_const_1lshl8_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl8
        ret
procend

procstart _uX_mm_const_1lshl11_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl11
        ret
procend

procstart _uX_mm_const_1lshl12_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl12
        ret
procend

procstart _uX_mm_const_1lshl15_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl15
        ret
procend

procstart _uX_mm_const_1lshl16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl16
        ret
procend

procstart _uX_mm_const_1lshl19_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl19
        ret
procend

procstart _uX_mm_const_1lshl20_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl20
        ret
procend

procstart _uX_mm_const_1lshl23_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl23
        ret
procend

procstart _uX_mm_const_1lshl24_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl24
        ret
procend

procstart _uX_mm_const_1lshl27_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl27
        ret
procend

procstart _uX_mm_const_1lshl28_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl28
        ret
procend

procstart _uX_mm_const_1lshl31_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl31
        ret
procend

procstart _uX_mm_const_1lshl32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl32
        ret
procend

procstart _uX_mm_const_1lshl35_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl35
        ret
procend

procstart _uX_mm_const_1lshl36_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl36
        ret
procend

procstart _uX_mm_const_1lshl39_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl39
        ret
procend

procstart _uX_mm_const_1lshl40_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl40
        ret
procend

procstart _uX_mm_const_1lshl43_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl43
        ret
procend

procstart _uX_mm_const_1lshl44_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl44
        ret
procend

procstart _uX_mm_const_1lshl47_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl47
        ret
procend

procstart _uX_mm_const_1lshl48_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl48
        ret
procend

procstart _uX_mm_const_1lshl51_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl51
        ret
procend

procstart _uX_mm_const_1lshl52_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl52
        ret
procend

procstart _uX_mm_const_1lshl55_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl55
        ret
procend

procstart _uX_mm_const_1lshl56_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl56
        ret
procend

procstart _uX_mm_const_1lshl59_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl59
        ret
procend

procstart _uX_mm_const_1lshl60_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl60
        ret
procend

procstart _uX_mm_const_1lshl63_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1lshl63
        ret
procend

procstart _uX_mm_const_neg1lshl3_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl3
        ret
procend

procstart _uX_mm_const_neg1lshl4_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl4
        ret
procend

procstart _uX_mm_const_neg1lshl7_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl7
        ret
procend

procstart _uX_mm_const_neg1lshl8_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl8
        ret
procend

procstart _uX_mm_const_neg1lshl11_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl11
        ret
procend

procstart _uX_mm_const_neg1lshl12_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl12
        ret
procend

procstart _uX_mm_const_neg1lshl15_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl15
        ret
procend

procstart _uX_mm_const_neg1lshl16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl16
        ret
procend

procstart _uX_mm_const_neg1lshl19_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl19
        ret
procend

procstart _uX_mm_const_neg1lshl20_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl20
        ret
procend

procstart _uX_mm_const_neg1lshl23_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl23
        ret
procend

procstart _uX_mm_const_neg1lshl24_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl24
        ret
procend

procstart _uX_mm_const_neg1lshl27_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl27
        ret
procend

procstart _uX_mm_const_neg1lshl28_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl28
        ret
procend

procstart _uX_mm_const_neg1lshl31_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl31
        ret
procend

procstart _uX_mm_const_neg1lshl32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl32
        ret
procend

procstart _uX_mm_const_neg1lshl35_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl35
        ret
procend

procstart _uX_mm_const_neg1lshl36_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl36
        ret
procend

procstart _uX_mm_const_neg1lshl39_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl39
        ret
procend

procstart _uX_mm_const_neg1lshl40_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl40
        ret
procend

procstart _uX_mm_const_neg1lshl43_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl43
        ret
procend

procstart _uX_mm_const_neg1lshl44_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl44
        ret
procend

procstart _uX_mm_const_neg1lshl47_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl47
        ret
procend

procstart _uX_mm_const_neg1lshl48_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl48
        ret
procend

procstart _uX_mm_const_neg1lshl51_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl51
        ret
procend

procstart _uX_mm_const_neg1lshl52_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl52
        ret
procend

procstart _uX_mm_const_neg1lshl55_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl55
        ret
procend

procstart _uX_mm_const_neg1lshl56_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl56
        ret
procend

procstart _uX_mm_const_neg1lshl59_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl59
        ret
procend

procstart _uX_mm_const_neg1lshl60_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl60
        ret
procend

procstart _uX_mm_const_neg1lshl63_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1lshl63
        ret
procend

procstart _uX_mm_const_false_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_false
        ret
procend

procstart _uX_mm_const_true_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_true
        ret
procend

procstart _uX_mm_const_error_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_error
        ret
procend

procstart _uX_mm_const_magic_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_magic
        ret
procend

procstart _uX_mm_const_sign_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sign
        ret
procend

procstart _uX_mm_const_invsign_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_invsign
        ret
procend

procstart _uX_mm_const_inf_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_inf
        ret
procend

procstart _uX_mm_const_fin_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_fin
        ret
procend

procstart _uX_mm_const_invinf_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_invinf
        ret
procend

procstart _uX_mm_const_neginf_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neginf
        ret
procend

procstart _uX_mm_const_nan_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_nan
        ret
procend

procstart _uX_mm_const_qnan_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_qnan
        ret
procend

procstart _uX_mm_const_negqnan_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_negqnan
        ret
procend

procstart _uX_mm_const_nantest_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_nantest
        ret
procend

procstart _uX_mm_const_abs_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_abs
        ret
procend

procstart _uX_mm_const_min_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_min
        ret
procend

procstart _uX_mm_const_max_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_max
        ret
procend

procstart _uX_mm_const_nofraction_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_nofraction
        ret
procend

procstart _uX_mm_const_mindenorm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mindenorm
        ret
procend

procstart _uX_mm_const_denormlimit_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_denormlimit
        ret
procend

procstart _uX_mm_const_minnormal_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_minnormal
        ret
procend

procstart _uX_mm_const_maxnormal_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxnormal
        ret
procend

procstart _uX_mm_const_decdig_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_decdig
        ret
procend

procstart _uX_mm_const_dig_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_dig
        ret
procend

procstart _uX_mm_const_negdecdig_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_negdecdig
        ret
procend

procstart _uX_mm_const_negdig_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_negdig
        ret
procend

procstart _uX_mm_const_eps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_eps
        ret
procend

procstart _uX_mm_const_epsilon_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_epsilon
        ret
procend

procstart _uX_mm_const_normeps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_normeps
        ret
procend

procstart _uX_mm_const_guard_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_guard
        ret
procend

procstart _uX_mm_const_mantpow2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mantpow2
        ret
procend

procstart _uX_mm_const_maxmantpow2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxmantpow2
        ret
procend

procstart _uX_mm_const_mantdig_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mantdig
        ret
procend

procstart _uX_mm_const_mant_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mant
        ret
procend

procstart _uX_mm_const_negmantdig_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_negmantdig
        ret
procend

procstart _uX_mm_const_negmant_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_negmant
        ret
procend

procstart _uX_mm_const_maxexpo_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxexpo
        ret
procend

procstart _uX_mm_const_exposign_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_exposign
        ret
procend

procstart _uX_mm_const_expo_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_expo
        ret
procend

procstart _uX_mm_const_negmaxexpo_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_negmaxexpo
        ret
procend

procstart _uX_mm_const_negexposign_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_negexposign
        ret
procend

procstart _uX_mm_const_negexpo_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_negexpo
        ret
procend

procstart _uX_mm_const_subnormalexpo_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_subnormalexpo
        ret
procend

procstart _uX_mm_const_minexpo_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_minexpo
        ret
procend

procstart _uX_mm_const_maxdecexpo_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxdecexpo
        ret
procend

procstart _uX_mm_const_negmaxdecexpo_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_negmaxdecexpo
        ret
procend

procstart _uX_mm_const_mindecexpo_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mindecexpo
        ret
procend

procstart _uX_mm_const_expofield_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_expofield
        ret
procend

procstart _uX_mm_const_mantfield_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mantfield
        ret
procend

procstart _uX_mm_const_norm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_norm
        ret
procend

procstart _uX_mm_const_radix_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_radix
        ret
procend

procstart _uX_mm_const_rounds_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rounds
        ret
procend

procstart _uX_mm_const_subdec_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_subdec
        ret
procend

procstart _uX_mm_const_sqrtmax_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrtmax
        ret
procend

procstart _uX_mm_const_smallnormal_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_smallnormal
        ret
procend

procstart _uX_mm_const_halfminuseps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_halfminuseps
        ret
procend

procstart _uX_mm_const_trueint_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_trueint
        ret
procend

procstart _uX_mm_const_byte_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_byte
        ret
procend

procstart _uX_mm_const_byte_even_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_byte_even
        ret
procend

procstart _uX_mm_const_byte_odd_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_byte_odd
        ret
procend

procstart _uX_mm_const_4low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_4low
        ret
procend

procstart _uX_mm_const_4high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_4high
        ret
procend

procstart _uX_mm_const_flip4_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_flip4
        ret
procend

procstart _uX_mm_const_8low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_8low
        ret
procend

procstart _uX_mm_const_8high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_8high
        ret
procend

procstart _uX_mm_const_flip8_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_flip8
        ret
procend

procstart _uX_mm_const_16low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_16low
        ret
procend

procstart _uX_mm_const_16high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_16high
        ret
procend

procstart _uX_mm_const_flip16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_flip16
        ret
procend

procstart _uX_mm_const_24low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_24low
        ret
procend

procstart _uX_mm_const_24high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_24high
        ret
procend

procstart _uX_mm_const_flip24_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_flip24
        ret
procend

procstart _uX_mm_const_28low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_28low
        ret
procend

procstart _uX_mm_const_28high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_28high
        ret
procend

procstart _uX_mm_const_flip28_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_flip28
        ret
procend

procstart _uX_mm_const_32low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_32low
        ret
procend

procstart _uX_mm_const_32high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_32high
        ret
procend

procstart _uX_mm_const_flip32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_flip32
        ret
procend

procstart _uX_mm_const_40low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_40low
        ret
procend

procstart _uX_mm_const_40high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_40high
        ret
procend

procstart _uX_mm_const_flip40_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_flip40
        ret
procend

procstart _uX_mm_const_48low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_48low
        ret
procend

procstart _uX_mm_const_48high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_48high
        ret
procend

procstart _uX_mm_const_flip48_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_flip48
        ret
procend

procstart _uX_mm_const_56low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_56low
        ret
procend

procstart _uX_mm_const_56high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_56high
        ret
procend

procstart _uX_mm_const_flip56_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_flip56
        ret
procend

procstart _uX_mm_const_60low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_60low
        ret
procend

procstart _uX_mm_const_60high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_60high
        ret
procend

procstart _uX_mm_const_flip60_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_flip60
        ret
procend

procstart _uX_mm_const_64low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_64low
        ret
procend

procstart _uX_mm_const_64high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_64high
        ret
procend

procstart _uX_mm_const_flip64_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_flip64
        ret
procend

procstart _uX_mm_const_0_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0
        ret
procend

procstart _uX_mm_const_0d0001_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d0001
        ret
procend

procstart _uX_mm_const_0d0002_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d0002
        ret
procend

procstart _uX_mm_const_0d0003_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d0003
        ret
procend

procstart _uX_mm_const_0d0004_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d0004
        ret
procend

procstart _uX_mm_const_0d0005_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d0005
        ret
procend

procstart _uX_mm_const_0d0006_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d0006
        ret
procend

procstart _uX_mm_const_0d0007_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d0007
        ret
procend

procstart _uX_mm_const_0d0008_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d0008
        ret
procend

procstart _uX_mm_const_0d0009_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d0009
        ret
procend

procstart _uX_mm_const_0d001_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d001
        ret
procend

procstart _uX_mm_const_0d002_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d002
        ret
procend

procstart _uX_mm_const_0d003_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d003
        ret
procend

procstart _uX_mm_const_0d004_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d004
        ret
procend

procstart _uX_mm_const_0d005_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d005
        ret
procend

procstart _uX_mm_const_0d006_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d006
        ret
procend

procstart _uX_mm_const_0d007_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d007
        ret
procend

procstart _uX_mm_const_0d008_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d008
        ret
procend

procstart _uX_mm_const_0d009_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d009
        ret
procend

procstart _uX_mm_const_0d01_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d01
        ret
procend

procstart _uX_mm_const_0d02_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d02
        ret
procend

procstart _uX_mm_const_0d025_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d025
        ret
procend

procstart _uX_mm_const_0d03_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d03
        ret
procend

procstart _uX_mm_const_0d04_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d04
        ret
procend

procstart _uX_mm_const_0d05_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d05
        ret
procend

procstart _uX_mm_const_0d06_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d06
        ret
procend

procstart _uX_mm_const_0d07_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d07
        ret
procend

procstart _uX_mm_const_0d08_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d08
        ret
procend

procstart _uX_mm_const_0d09_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d09
        ret
procend

procstart _uX_mm_const_0d1_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d1
        ret
procend

procstart _uX_mm_const_0d2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d2
        ret
procend

procstart _uX_mm_const_0d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d25
        ret
procend

procstart _uX_mm_const_0d3_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d3
        ret
procend

procstart _uX_mm_const_0d4_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d4
        ret
procend

procstart _uX_mm_const_0d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d5
        ret
procend

procstart _uX_mm_const_0d6_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d6
        ret
procend

procstart _uX_mm_const_0d7_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d7
        ret
procend

procstart _uX_mm_const_0d8_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d8
        ret
procend

procstart _uX_mm_const_0d9_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0d9
        ret
procend

procstart _uX_mm_const_1_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1
        ret
procend

procstart _uX_mm_const_1d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1d25
        ret
procend

procstart _uX_mm_const_1d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1d5
        ret
procend

procstart _uX_mm_const_2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2
        ret
procend

procstart _uX_mm_const_2d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2d25
        ret
procend

procstart _uX_mm_const_2d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2d5
        ret
procend

procstart _uX_mm_const_3_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_3
        ret
procend

procstart _uX_mm_const_3d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_3d25
        ret
procend

procstart _uX_mm_const_3d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_3d5
        ret
procend

procstart _uX_mm_const_4_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_4
        ret
procend

procstart _uX_mm_const_4d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_4d25
        ret
procend

procstart _uX_mm_const_4d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_4d5
        ret
procend

procstart _uX_mm_const_5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_5
        ret
procend

procstart _uX_mm_const_5d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_5d25
        ret
procend

procstart _uX_mm_const_5d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_5d5
        ret
procend

procstart _uX_mm_const_6_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_6
        ret
procend

procstart _uX_mm_const_6d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_6d25
        ret
procend

procstart _uX_mm_const_6d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_6d5
        ret
procend

procstart _uX_mm_const_7_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_7
        ret
procend

procstart _uX_mm_const_7d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_7d25
        ret
procend

procstart _uX_mm_const_7d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_7d5
        ret
procend

procstart _uX_mm_const_8_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_8
        ret
procend

procstart _uX_mm_const_8d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_8d25
        ret
procend

procstart _uX_mm_const_8d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_8d5
        ret
procend

procstart _uX_mm_const_9_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_9
        ret
procend

procstart _uX_mm_const_9d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_9d25
        ret
procend

procstart _uX_mm_const_9d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_9d5
        ret
procend

procstart _uX_mm_const_10_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_10
        ret
procend

procstart _uX_mm_const_11_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_11
        ret
procend

procstart _uX_mm_const_12_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_12
        ret
procend

procstart _uX_mm_const_13_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_13
        ret
procend

procstart _uX_mm_const_14_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_14
        ret
procend

procstart _uX_mm_const_15_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_15
        ret
procend

procstart _uX_mm_const_16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_16
        ret
procend

procstart _uX_mm_const_17_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_17
        ret
procend

procstart _uX_mm_const_18_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_18
        ret
procend

procstart _uX_mm_const_19_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_19
        ret
procend

procstart _uX_mm_const_20_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_20
        ret
procend

procstart _uX_mm_const_21_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_21
        ret
procend

procstart _uX_mm_const_22_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_22
        ret
procend

procstart _uX_mm_const_23_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_23
        ret
procend

procstart _uX_mm_const_24_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_24
        ret
procend

procstart _uX_mm_const_24d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_24d5
        ret
procend

procstart _uX_mm_const_25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_25
        ret
procend

procstart _uX_mm_const_26_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_26
        ret
procend

procstart _uX_mm_const_27_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_27
        ret
procend

procstart _uX_mm_const_28_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_28
        ret
procend

procstart _uX_mm_const_29_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_29
        ret
procend

procstart _uX_mm_const_30_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_30
        ret
procend

procstart _uX_mm_const_31_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_31
        ret
procend

procstart _uX_mm_const_31_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_31
        ret
procend

procstart _uX_mm_const_33_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_33
        ret
procend

procstart _uX_mm_const_34_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_34
        ret
procend

procstart _uX_mm_const_35_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_35
        ret
procend

procstart _uX_mm_const_36_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_36
        ret
procend

procstart _uX_mm_const_37_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_37
        ret
procend

procstart _uX_mm_const_38_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_38
        ret
procend

procstart _uX_mm_const_39_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_39
        ret
procend

procstart _uX_mm_const_40_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_40
        ret
procend

procstart _uX_mm_const_41_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_41
        ret
procend

procstart _uX_mm_const_42_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_42
        ret
procend

procstart _uX_mm_const_43_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_43
        ret
procend

procstart _uX_mm_const_44_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_44
        ret
procend

procstart _uX_mm_const_45_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_45
        ret
procend

procstart _uX_mm_const_46_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_46
        ret
procend

procstart _uX_mm_const_47_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_47
        ret
procend

procstart _uX_mm_const_48_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_48
        ret
procend

procstart _uX_mm_const_49_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_49
        ret
procend

procstart _uX_mm_const_50_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_50
        ret
procend

procstart _uX_mm_const_51_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_51
        ret
procend

procstart _uX_mm_const_52_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_52
        ret
procend

procstart _uX_mm_const_53_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_53
        ret
procend

procstart _uX_mm_const_54_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_54
        ret
procend

procstart _uX_mm_const_55_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_55
        ret
procend

procstart _uX_mm_const_56_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_56
        ret
procend

procstart _uX_mm_const_57_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_57
        ret
procend

procstart _uX_mm_const_58_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_58
        ret
procend

procstart _uX_mm_const_59_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_59
        ret
procend

procstart _uX_mm_const_60_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_60
        ret
procend

procstart _uX_mm_const_61_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_61
        ret
procend

procstart _uX_mm_const_62_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_62
        ret
procend

procstart _uX_mm_const_63_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_63
        ret
procend

procstart _uX_mm_const_64_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_64
        ret
procend

procstart _uX_mm_const_65_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_65
        ret
procend

procstart _uX_mm_const_66_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_66
        ret
procend

procstart _uX_mm_const_67_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_67
        ret
procend

procstart _uX_mm_const_68_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_68
        ret
procend

procstart _uX_mm_const_69_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_69
        ret
procend

procstart _uX_mm_const_70_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_70
        ret
procend

procstart _uX_mm_const_71_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_71
        ret
procend

procstart _uX_mm_const_72_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_72
        ret
procend

procstart _uX_mm_const_73_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_73
        ret
procend

procstart _uX_mm_const_74_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_74
        ret
procend

procstart _uX_mm_const_75_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_75
        ret
procend

procstart _uX_mm_const_76_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_76
        ret
procend

procstart _uX_mm_const_77_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_77
        ret
procend

procstart _uX_mm_const_78_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_78
        ret
procend

procstart _uX_mm_const_79_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_79
        ret
procend

procstart _uX_mm_const_80_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_80
        ret
procend

procstart _uX_mm_const_81_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_81
        ret
procend

procstart _uX_mm_const_82_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_82
        ret
procend

procstart _uX_mm_const_83_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_83
        ret
procend

procstart _uX_mm_const_84_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_84
        ret
procend

procstart _uX_mm_const_85_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_85
        ret
procend

procstart _uX_mm_const_86_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_86
        ret
procend

procstart _uX_mm_const_87_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_87
        ret
procend

procstart _uX_mm_const_88_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_88
        ret
procend

procstart _uX_mm_const_89_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_89
        ret
procend

procstart _uX_mm_const_90_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_90
        ret
procend

procstart _uX_mm_const_91_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_91
        ret
procend

procstart _uX_mm_const_92_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_92
        ret
procend

procstart _uX_mm_const_93_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_93
        ret
procend

procstart _uX_mm_const_94_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_94
        ret
procend

procstart _uX_mm_const_95_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_95
        ret
procend

procstart _uX_mm_const_96_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_96
        ret
procend

procstart _uX_mm_const_97_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_97
        ret
procend

procstart _uX_mm_const_98_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_98
        ret
procend

procstart _uX_mm_const_99_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_99
        ret
procend

procstart _uX_mm_const_100_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_100
        ret
procend

procstart _uX_mm_const_125_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_125
        ret
procend

procstart _uX_mm_const_126_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_126
        ret
procend

procstart _uX_mm_const_127_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_127
        ret
procend

procstart _uX_mm_const_128_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_128
        ret
procend

procstart _uX_mm_const_140_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_140
        ret
procend

procstart _uX_mm_const_145_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_145
        ret
procend

procstart _uX_mm_const_150_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_150
        ret
procend

procstart _uX_mm_const_180_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_180
        ret
procend

procstart _uX_mm_const_253_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_253
        ret
procend

procstart _uX_mm_const_254_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_254
        ret
procend

procstart _uX_mm_const_255_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_255
        ret
procend

procstart _uX_mm_const_256_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_256
        ret
procend

procstart _uX_mm_const_360_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_360
        ret
procend

procstart _uX_mm_const_511_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_511
        ret
procend

procstart _uX_mm_const_512_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_512
        ret
procend

procstart _uX_mm_const_513_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_513
        ret
procend

procstart _uX_mm_const_1023_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1023
        ret
procend

procstart _uX_mm_const_1024_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1024
        ret
procend

procstart _uX_mm_const_1025_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1025
        ret
procend

procstart _uX_mm_const_32767_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_32767
        ret
procend

procstart _uX_mm_const_32768_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_32768
        ret
procend

procstart _uX_mm_const_65535_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_65535
        ret
procend

procstart _uX_mm_const_65536_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_65536
        ret
procend

procstart _uX_mm_const_2147483647_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2147483647
        ret
procend

procstart _uX_mm_const_2147483648_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2147483648
        ret
procend

procstart _uX_mm_const_4294967295_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_4294967295
        ret
procend

procstart _uX_mm_const_4294967296_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_4294967296
        ret
procend

procstart _uX_mm_const_neg0_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0
        ret
procend

procstart _uX_mm_const_neg0d0001_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d0001
        ret
procend

procstart _uX_mm_const_neg0d0002_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d0002
        ret
procend

procstart _uX_mm_const_neg0d0003_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d0003
        ret
procend

procstart _uX_mm_const_neg0d0004_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d0004
        ret
procend

procstart _uX_mm_const_neg0d0005_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d0005
        ret
procend

procstart _uX_mm_const_neg0d0006_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d0006
        ret
procend

procstart _uX_mm_const_neg0d0007_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d0007
        ret
procend

procstart _uX_mm_const_neg0d0008_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d0008
        ret
procend

procstart _uX_mm_const_neg0d0009_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d0009
        ret
procend

procstart _uX_mm_const_neg0d001_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d001
        ret
procend

procstart _uX_mm_const_neg0d002_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d002
        ret
procend

procstart _uX_mm_const_neg0d003_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d003
        ret
procend

procstart _uX_mm_const_neg0d004_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d004
        ret
procend

procstart _uX_mm_const_neg0d005_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d005
        ret
procend

procstart _uX_mm_const_neg0d006_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d006
        ret
procend

procstart _uX_mm_const_neg0d007_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d007
        ret
procend

procstart _uX_mm_const_neg0d008_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d008
        ret
procend

procstart _uX_mm_const_neg0d009_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d009
        ret
procend

procstart _uX_mm_const_neg0d01_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d01
        ret
procend

procstart _uX_mm_const_neg0d02_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d02
        ret
procend

procstart _uX_mm_const_neg0d025_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d025
        ret
procend

procstart _uX_mm_const_neg0d03_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d03
        ret
procend

procstart _uX_mm_const_neg0d04_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d04
        ret
procend

procstart _uX_mm_const_neg0d05_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d05
        ret
procend

procstart _uX_mm_const_neg0d06_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d06
        ret
procend

procstart _uX_mm_const_neg0d07_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d07
        ret
procend

procstart _uX_mm_const_neg0d08_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d08
        ret
procend

procstart _uX_mm_const_neg0d09_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d09
        ret
procend

procstart _uX_mm_const_neg0d1_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d1
        ret
procend

procstart _uX_mm_const_neg0d2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d2
        ret
procend

procstart _uX_mm_const_neg0d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d25
        ret
procend

procstart _uX_mm_const_neg0d3_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d3
        ret
procend

procstart _uX_mm_const_neg0d4_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d4
        ret
procend

procstart _uX_mm_const_neg0d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d5
        ret
procend

procstart _uX_mm_const_neg0d6_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d6
        ret
procend

procstart _uX_mm_const_neg0d7_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d7
        ret
procend

procstart _uX_mm_const_neg0d8_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d8
        ret
procend

procstart _uX_mm_const_neg0d9_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg0d9
        ret
procend

procstart _uX_mm_const_neg1_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1
        ret
procend

procstart _uX_mm_const_neg1d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1d25
        ret
procend

procstart _uX_mm_const_neg1d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1d5
        ret
procend

procstart _uX_mm_const_neg2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg2
        ret
procend

procstart _uX_mm_const_neg2d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg2d25
        ret
procend

procstart _uX_mm_const_neg2d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg2d5
        ret
procend

procstart _uX_mm_const_neg3_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg3
        ret
procend

procstart _uX_mm_const_neg3d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg3d25
        ret
procend

procstart _uX_mm_const_neg3d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg3d5
        ret
procend

procstart _uX_mm_const_neg4_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg4
        ret
procend

procstart _uX_mm_const_neg4d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg4d25
        ret
procend

procstart _uX_mm_const_neg4d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg4d5
        ret
procend

procstart _uX_mm_const_neg5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg5
        ret
procend

procstart _uX_mm_const_neg5d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg5d25
        ret
procend

procstart _uX_mm_const_neg5d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg5d5
        ret
procend

procstart _uX_mm_const_neg6_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg6
        ret
procend

procstart _uX_mm_const_neg6d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg6d25
        ret
procend

procstart _uX_mm_const_neg6d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg6d5
        ret
procend

procstart _uX_mm_const_neg7_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg7
        ret
procend

procstart _uX_mm_const_neg7d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg7d25
        ret
procend

procstart _uX_mm_const_neg7d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg7d5
        ret
procend

procstart _uX_mm_const_neg8_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg8
        ret
procend

procstart _uX_mm_const_neg8d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg8d25
        ret
procend

procstart _uX_mm_const_neg8d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg8d5
        ret
procend

procstart _uX_mm_const_neg9_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg9
        ret
procend

procstart _uX_mm_const_neg9d25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg9d25
        ret
procend

procstart _uX_mm_const_neg9d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg9d5
        ret
procend

procstart _uX_mm_const_neg10_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg10
        ret
procend

procstart _uX_mm_const_neg11_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg11
        ret
procend

procstart _uX_mm_const_neg12_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg12
        ret
procend

procstart _uX_mm_const_neg13_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg13
        ret
procend

procstart _uX_mm_const_neg14_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg14
        ret
procend

procstart _uX_mm_const_neg15_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg15
        ret
procend

procstart _uX_mm_const_neg16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg16
        ret
procend

procstart _uX_mm_const_neg17_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg17
        ret
procend

procstart _uX_mm_const_neg18_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg18
        ret
procend

procstart _uX_mm_const_neg19_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg19
        ret
procend

procstart _uX_mm_const_neg20_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg20
        ret
procend

procstart _uX_mm_const_neg21_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg21
        ret
procend

procstart _uX_mm_const_neg22_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg22
        ret
procend

procstart _uX_mm_const_neg23_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg23
        ret
procend

procstart _uX_mm_const_neg24_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg24
        ret
procend

procstart _uX_mm_const_neg24d5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg24d5
        ret
procend

procstart _uX_mm_const_neg25_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg25
        ret
procend

procstart _uX_mm_const_neg26_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg26
        ret
procend

procstart _uX_mm_const_neg27_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg27
        ret
procend

procstart _uX_mm_const_neg28_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg28
        ret
procend

procstart _uX_mm_const_neg29_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg29
        ret
procend

procstart _uX_mm_const_neg30_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg30
        ret
procend

procstart _uX_mm_const_neg31_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg31
        ret
procend

procstart _uX_mm_const_neg31_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg31
        ret
procend

procstart _uX_mm_const_neg33_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg33
        ret
procend

procstart _uX_mm_const_neg34_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg34
        ret
procend

procstart _uX_mm_const_neg35_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg35
        ret
procend

procstart _uX_mm_const_neg36_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg36
        ret
procend

procstart _uX_mm_const_neg37_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg37
        ret
procend

procstart _uX_mm_const_neg38_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg38
        ret
procend

procstart _uX_mm_const_neg39_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg39
        ret
procend

procstart _uX_mm_const_neg40_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg40
        ret
procend

procstart _uX_mm_const_neg41_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg41
        ret
procend

procstart _uX_mm_const_neg42_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg42
        ret
procend

procstart _uX_mm_const_neg43_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg43
        ret
procend

procstart _uX_mm_const_neg44_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg44
        ret
procend

procstart _uX_mm_const_neg45_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg45
        ret
procend

procstart _uX_mm_const_neg46_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg46
        ret
procend

procstart _uX_mm_const_neg47_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg47
        ret
procend

procstart _uX_mm_const_neg48_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg48
        ret
procend

procstart _uX_mm_const_neg49_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg49
        ret
procend

procstart _uX_mm_const_neg50_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg50
        ret
procend

procstart _uX_mm_const_neg51_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg51
        ret
procend

procstart _uX_mm_const_neg52_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg52
        ret
procend

procstart _uX_mm_const_neg53_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg53
        ret
procend

procstart _uX_mm_const_neg54_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg54
        ret
procend

procstart _uX_mm_const_neg55_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg55
        ret
procend

procstart _uX_mm_const_neg56_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg56
        ret
procend

procstart _uX_mm_const_neg57_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg57
        ret
procend

procstart _uX_mm_const_neg58_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg58
        ret
procend

procstart _uX_mm_const_neg59_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg59
        ret
procend

procstart _uX_mm_const_neg60_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg60
        ret
procend

procstart _uX_mm_const_neg61_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg61
        ret
procend

procstart _uX_mm_const_neg62_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg62
        ret
procend

procstart _uX_mm_const_neg63_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg63
        ret
procend

procstart _uX_mm_const_neg64_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg64
        ret
procend

procstart _uX_mm_const_neg65_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg65
        ret
procend

procstart _uX_mm_const_neg66_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg66
        ret
procend

procstart _uX_mm_const_neg67_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg67
        ret
procend

procstart _uX_mm_const_neg68_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg68
        ret
procend

procstart _uX_mm_const_neg69_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg69
        ret
procend

procstart _uX_mm_const_neg70_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg70
        ret
procend

procstart _uX_mm_const_neg71_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg71
        ret
procend

procstart _uX_mm_const_neg72_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg72
        ret
procend

procstart _uX_mm_const_neg73_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg73
        ret
procend

procstart _uX_mm_const_neg74_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg74
        ret
procend

procstart _uX_mm_const_neg75_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg75
        ret
procend

procstart _uX_mm_const_neg76_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg76
        ret
procend

procstart _uX_mm_const_neg77_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg77
        ret
procend

procstart _uX_mm_const_neg78_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg78
        ret
procend

procstart _uX_mm_const_neg79_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg79
        ret
procend

procstart _uX_mm_const_neg80_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg80
        ret
procend

procstart _uX_mm_const_neg81_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg81
        ret
procend

procstart _uX_mm_const_neg82_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg82
        ret
procend

procstart _uX_mm_const_neg83_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg83
        ret
procend

procstart _uX_mm_const_neg84_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg84
        ret
procend

procstart _uX_mm_const_neg85_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg85
        ret
procend

procstart _uX_mm_const_neg86_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg86
        ret
procend

procstart _uX_mm_const_neg87_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg87
        ret
procend

procstart _uX_mm_const_neg88_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg88
        ret
procend

procstart _uX_mm_const_neg89_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg89
        ret
procend

procstart _uX_mm_const_neg90_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg90
        ret
procend

procstart _uX_mm_const_neg91_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg91
        ret
procend

procstart _uX_mm_const_neg92_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg92
        ret
procend

procstart _uX_mm_const_neg93_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg93
        ret
procend

procstart _uX_mm_const_neg94_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg94
        ret
procend

procstart _uX_mm_const_neg95_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg95
        ret
procend

procstart _uX_mm_const_neg96_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg96
        ret
procend

procstart _uX_mm_const_neg97_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg97
        ret
procend

procstart _uX_mm_const_neg98_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg98
        ret
procend

procstart _uX_mm_const_neg99_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg99
        ret
procend

procstart _uX_mm_const_neg100_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg100
        ret
procend

procstart _uX_mm_const_neg125_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg125
        ret
procend

procstart _uX_mm_const_neg126_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg126
        ret
procend

procstart _uX_mm_const_neg127_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg127
        ret
procend

procstart _uX_mm_const_neg128_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg128
        ret
procend

procstart _uX_mm_const_neg140_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg140
        ret
procend

procstart _uX_mm_const_neg145_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg145
        ret
procend

procstart _uX_mm_const_neg150_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg150
        ret
procend

procstart _uX_mm_const_neg180_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg180
        ret
procend

procstart _uX_mm_const_neg253_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg253
        ret
procend

procstart _uX_mm_const_neg254_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg254
        ret
procend

procstart _uX_mm_const_neg255_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg255
        ret
procend

procstart _uX_mm_const_neg256_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg256
        ret
procend

procstart _uX_mm_const_neg360_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg360
        ret
procend

procstart _uX_mm_const_neg511_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg511
        ret
procend

procstart _uX_mm_const_neg512_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg512
        ret
procend

procstart _uX_mm_const_neg513_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg513
        ret
procend

procstart _uX_mm_const_neg1023_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1023
        ret
procend

procstart _uX_mm_const_neg1024_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1024
        ret
procend

procstart _uX_mm_const_neg1025_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg1025
        ret
procend

procstart _uX_mm_const_neg32767_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg32767
        ret
procend

procstart _uX_mm_const_neg32768_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg32768
        ret
procend

procstart _uX_mm_const_neg65535_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg65535
        ret
procend

procstart _uX_mm_const_neg65536_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg65536
        ret
procend

procstart _uX_mm_const_neg2147483647_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg2147483647
        ret
procend

procstart _uX_mm_const_neg2147483648_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg2147483648
        ret
procend

procstart _uX_mm_const_neg4294967295_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg4294967295
        ret
procend

procstart _uX_mm_const_neg4294967296_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg4294967296
        ret
procend

procstart _uX_mm_const_bin128_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_bin128
        ret
procend

procstart _uX_mm_const_binneg150_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_binneg150
        ret
procend

procstart _uX_mm_const_maxrand_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxrand
        ret
procend

procstart _uX_mm_const_maxi8_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxi8
        ret
procend

procstart _uX_mm_const_mini8_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mini8
        ret
procend

procstart _uX_mm_const_maxu8_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxu8
        ret
procend

procstart _uX_mm_const_maxi16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxi16
        ret
procend

procstart _uX_mm_const_mini16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mini16
        ret
procend

procstart _uX_mm_const_maxu16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxu16
        ret
procend

procstart _uX_mm_const_maxi32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxi32
        ret
procend

procstart _uX_mm_const_mini32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mini32
        ret
procend

procstart _uX_mm_const_maxu32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxu32
        ret
procend

procstart _uX_mm_const_maxi64_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxi64
        ret
procend

procstart _uX_mm_const_mini64_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mini64
        ret
procend

procstart _uX_mm_const_maxu64_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxu64
        ret
procend

procstart _uX_mm_const_maxi8xu8_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxi8xu8
        ret
procend

procstart _uX_mm_const_mini8xu8_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mini8xu8
        ret
procend

procstart _uX_mm_const_maxi8xu16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxi8xu16
        ret
procend

procstart _uX_mm_const_mini8xu16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mini8xu16
        ret
procend

procstart _uX_mm_const_maxi16xu16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxi16xu16
        ret
procend

procstart _uX_mm_const_mini16xu16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mini16xu16
        ret
procend

procstart _uX_mm_const_maxi16xu32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxi16xu32
        ret
procend

procstart _uX_mm_const_mini16xu32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mini16xu32
        ret
procend

procstart _uX_mm_const_maxi32xu32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxi32xu32
        ret
procend

procstart _uX_mm_const_mini32xu32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mini32xu32
        ret
procend

procstart _uX_mm_const_fixunsigned_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_fixunsigned
        ret
procend

procstart _uX_mm_const_fixunsigned32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_fixunsigned32
        ret
procend

procstart _uX_mm_const_fixmaxi32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_fixmaxi32
        ret
procend

procstart _uX_mm_const_fixmaxu32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_fixmaxu32
        ret
procend

procstart _uX_mm_const_fixunsigned64_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_fixunsigned64
        ret
procend

procstart _uX_mm_const_fixmaxi64_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_fixmaxi64
        ret
procend

procstart _uX_mm_const_fixmaxu64_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_fixmaxu64
        ret
procend

procstart _uX_mm_const_rcpi16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpi16
        ret
procend

procstart _uX_mm_const_rcpu16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpu16
        ret
procend

procstart _uX_mm_const_rcpi16xu16_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpi16xu16
        ret
procend

procstart _uX_mm_const_mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mg
        ret
procend

procstart _uX_mm_const_negmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_negmg
        ret
procend

procstart _uX_mm_const_halfmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_halfmg
        ret
procend

procstart _uX_mm_const_neghalfmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neghalfmg
        ret
procend

procstart _uX_mm_const_mgdiv4_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mgdiv4
        ret
procend

procstart _uX_mm_const_negmgdiv4_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_negmgdiv4
        ret
procend

procstart _uX_mm_const_halfmgxmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_halfmgxmg
        ret
procend

procstart _uX_mm_const_halfmgxsqrmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_halfmgxsqrmg
        ret
procend

procstart _uX_mm_const_halfmgxcubemg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_halfmgxcubemg
        ret
procend

procstart _uX_mm_const_neghalfmgxmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neghalfmgxmg
        ret
procend

procstart _uX_mm_const_neghalfmgxsqrmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neghalfmgxsqrmg
        ret
procend

procstart _uX_mm_const_neghalfmgxcubemg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neghalfmgxcubemg
        ret
procend

procstart _uX_mm_const_sqrmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrmg
        ret
procend

procstart _uX_mm_const_cubemg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_cubemg
        ret
procend

procstart _uX_mm_const_sqrtmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrtmg
        ret
procend

procstart _uX_mm_const_cbrtmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_cbrtmg
        ret
procend

procstart _uX_mm_const_rcpmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpmg
        ret
procend

procstart _uX_mm_const_rcpsqrmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpsqrmg
        ret
procend

procstart _uX_mm_const_rcpcubemg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpcubemg
        ret
procend

procstart _uX_mm_const_rcpsqrtmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpsqrtmg
        ret
procend

procstart _uX_mm_const_rcpcbrtmg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpcbrtmg
        ret
procend

procstart _uX_mm_const_2mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2mg
        ret
procend

procstart _uX_mm_const_neg2mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg2mg
        ret
procend

procstart _uX_mm_const_sqr2mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqr2mg
        ret
procend

procstart _uX_mm_const_cube2mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_cube2mg
        ret
procend

procstart _uX_mm_const_sqrt2mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrt2mg
        ret
procend

procstart _uX_mm_const_cbrt2mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_cbrt2mg
        ret
procend

procstart _uX_mm_const_4mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_4mg
        ret
procend

procstart _uX_mm_const_neg4mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg4mg
        ret
procend

procstart _uX_mm_const_sqr4mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqr4mg
        ret
procend

procstart _uX_mm_const_cube4mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_cube4mg
        ret
procend

procstart _uX_mm_const_sqrt4mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrt4mg
        ret
procend

procstart _uX_mm_const_cbrt4mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_cbrt4mg
        ret
procend

procstart _uX_mm_const_rcp2mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcp2mg
        ret
procend

procstart _uX_mm_const_rcp4mg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcp4mg
        ret
procend

procstart _uX_mm_const_e_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_e
        ret
procend

procstart _uX_mm_const_exp_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_exp
        ret
procend

procstart _uX_mm_const_loge_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_loge
        ret
procend

procstart _uX_mm_const_logehigh_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_logehigh
        ret
procend

procstart _uX_mm_const_logelow_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_logelow
        ret
procend

procstart _uX_mm_const_log2e_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_log2e
        ret
procend

procstart _uX_mm_const_log2ehigh_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_log2ehigh
        ret
procend

procstart _uX_mm_const_log2elow_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_log2elow
        ret
procend

procstart _uX_mm_const_log10e_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_log10e
        ret
procend

procstart _uX_mm_const_rcplog2e_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcplog2e
        ret
procend

procstart _uX_mm_const_rcplog10e_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcplog10e
        ret
procend

procstart _uX_mm_const_log2t_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_log2t
        ret
procend

procstart _uX_mm_const_log2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_log2
        ret
procend

procstart _uX_mm_const_log2high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_log2high
        ret
procend

procstart _uX_mm_const_log2low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_log2low
        ret
procend

procstart _uX_mm_const_ln2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_ln2
        ret
procend

procstart _uX_mm_const_ln2high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_ln2high
        ret
procend

procstart _uX_mm_const_ln2low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_ln2low
        ret
procend

procstart _uX_mm_const_1divln2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1divln2
        ret
procend

procstart _uX_mm_const_2divln2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2divln2
        ret
procend

procstart _uX_mm_const_lnt_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_lnt
        ret
procend

procstart _uX_mm_const_lnthigh_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_lnthigh
        ret
procend

procstart _uX_mm_const_lntlow_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_lntlow
        ret
procend

procstart _uX_mm_const_ln10_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_ln10
        ret
procend

procstart _uX_mm_const_sqrt2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrt2
        ret
procend

procstart _uX_mm_const_rcpsqrt2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpsqrt2
        ret
procend

procstart _uX_mm_const_sqrt2div2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrt2div2
        ret
procend

procstart _uX_mm_const_sqrt2div2high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrt2div2high
        ret
procend

procstart _uX_mm_const_sqrt2div2low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrt2div2low
        ret
procend

procstart _uX_mm_const_sqrthalf_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrthalf
        ret
procend

procstart _uX_mm_const_sqrthalfhigh_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrthalfhigh
        ret
procend

procstart _uX_mm_const_sqrthalflow_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrthalflow
        ret
procend

procstart _uX_mm_const_pow2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2
        ret
procend

procstart _uX_mm_const_rcppow2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcppow2
        ret
procend

procstart _uX_mm_const_cbrt2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_cbrt2
        ret
procend

procstart _uX_mm_const_rcpcbrt2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpcbrt2
        ret
procend

procstart _uX_mm_const_1div3_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1div3
        ret
procend

procstart _uX_mm_const_1div7_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1div7
        ret
procend

procstart _uX_mm_const_1div9_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_1div9
        ret
procend

procstart _uX_mm_const_2div3_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2div3
        ret
procend

procstart _uX_mm_const_2div7_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2div7
        ret
procend

procstart _uX_mm_const_2div9_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2div9
        ret
procend

procstart _uX_mm_const_4div3_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_4div3
        ret
procend

procstart _uX_mm_const_4div7_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_4div7
        ret
procend

procstart _uX_mm_const_4div9_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_4div9
        ret
procend

procstart _uX_mm_const_pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pi
        ret
procend

procstart _uX_mm_const_pihigh_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pihigh
        ret
procend

procstart _uX_mm_const_pilow_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pilow
        ret
procend

procstart _uX_mm_const_halfpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_halfpi
        ret
procend

procstart _uX_mm_const_2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2pi
        ret
procend

procstart _uX_mm_const_negpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_negpi
        ret
procend

procstart _uX_mm_const_neghalfpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neghalfpi
        ret
procend

procstart _uX_mm_const_neg2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neg2pi
        ret
procend

procstart _uX_mm_const_rcppi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcppi
        ret
procend

procstart _uX_mm_const_invpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_invpi
        ret
procend

procstart _uX_mm_const_rcp2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcp2pi
        ret
procend

procstart _uX_mm_const_inv2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_inv2pi
        ret
procend

procstart _uX_mm_const_pidiv2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pidiv2
        ret
procend

procstart _uX_mm_const_pidiv2high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pidiv2high
        ret
procend

procstart _uX_mm_const_pidiv2low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pidiv2low
        ret
procend

procstart _uX_mm_const_pidiv4_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pidiv4
        ret
procend

procstart _uX_mm_const_pidiv4high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pidiv4high
        ret
procend

procstart _uX_mm_const_pidiv4low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pidiv4low
        ret
procend

procstart _uX_mm_const_pix3div4_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pix3div4
        ret
procend

procstart _uX_mm_const_sqrtpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrtpi
        ret
procend

procstart _uX_mm_const_sqrt2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrt2pi
        ret
procend

procstart _uX_mm_const_sqrt2pihigh_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrt2pihigh
        ret
procend

procstart _uX_mm_const_sqrt2pilow_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrt2pilow
        ret
procend

procstart _uX_mm_const_rcpsqrtpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpsqrtpi
        ret
procend

procstart _uX_mm_const_rcpsqrt2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpsqrt2pi
        ret
procend

procstart _uX_mm_const_sqrtpidiv2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrtpidiv2
        ret
procend

procstart _uX_mm_const_sqrtpidiv2high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrtpidiv2high
        ret
procend

procstart _uX_mm_const_sqrt2pidiv2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrt2pidiv2
        ret
procend

procstart _uX_mm_const_sqrt2pidiv2high_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrt2pidiv2high
        ret
procend

procstart _uX_mm_const_sqrt2pidiv2low_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrt2pidiv2low
        ret
procend

procstart _uX_mm_const_2divpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2divpi
        ret
procend

procstart _uX_mm_const_2div2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2div2pi
        ret
procend

procstart _uX_mm_const_2divsqrtpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2divsqrtpi
        ret
procend

procstart _uX_mm_const_2divsqrt2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_2divsqrt2pi
        ret
procend

procstart _uX_mm_const_sqrt2divpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sqrt2divpi
        ret
procend

procstart _uX_mm_const_logpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_logpi
        ret
procend

procstart _uX_mm_const_log2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_log2pi
        ret
procend

procstart _uX_mm_const_lnpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_lnpi
        ret
procend

procstart _uX_mm_const_ln2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_ln2pi
        ret
procend

procstart _uX_mm_const_powpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_powpi
        ret
procend

procstart _uX_mm_const_rcppowpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcppowpi
        ret
procend

procstart _uX_mm_const_pow2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2pi
        ret
procend

procstart _uX_mm_const_rcppow2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcppow2pi
        ret
procend

procstart _uX_mm_const_cbrtpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_cbrtpi
        ret
procend

procstart _uX_mm_const_rcpcbrtpi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpcbrtpi
        ret
procend

procstart _uX_mm_const_cbrt2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_cbrt2pi
        ret
procend

procstart _uX_mm_const_rcpcbrt2pi_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_rcpcbrt2pi
        ret
procend

procstart _uX_mm_const_ln2x1024_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_ln2x1024
        ret
procend

procstart _uX_mm_const_ln2x1025_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_ln2x1025
        ret
procend

procstart _uX_mm_const_ln2x1075_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_ln2x1075
        ret
procend

procstart _uX_mm_const_log2x1024_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_log2x1024
        ret
procend

procstart _uX_mm_const_log2x1075_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_log2x1075
        ret
procend

procstart _uX_mm_const_pow2tom126_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2tom126
        ret
procend

procstart _uX_mm_const_pow2to126_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2to126
        ret
procend

procstart _uX_mm_const_normhuge_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_normhuge
        ret
procend

procstart _uX_mm_const_pow2to23_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2to23
        ret
procend

procstart _uX_mm_const_pow2to24_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2to24
        ret
procend

procstart _uX_mm_const_maxi32pow2to23_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxi32pow2to23
        ret
procend

procstart _uX_mm_const_pow2to31_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2to31
        ret
procend

procstart _uX_mm_const_pow2to32_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2to32
        ret
procend

procstart _uX_mm_const_pow2to52_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2to52
        ret
procend

procstart _uX_mm_const_pow2to53_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2to53
        ret
procend

procstart _uX_mm_const_pow2to54_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2to54
        ret
procend

procstart _uX_mm_const_pow2tom54_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2tom54
        ret
procend

procstart _uX_mm_const_pow2to62_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2to62
        ret
procend

procstart _uX_mm_const_maxi64pow2to52_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_maxi64pow2to52
        ret
procend

procstart _uX_mm_const_pow2to63_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2to63
        ret
procend

procstart _uX_mm_const_pow2to64_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2to64
        ret
procend

procstart _uX_mm_const_pow2tom1022_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_pow2tom1022
        ret
procend

procstart _uX_mm_const_trigploss_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_trigploss
        ret
procend

procstart _uX_mm_const_degtorad_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_degtorad
        ret
procend

procstart _uX_mm_const_radtodeg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_radtodeg
        ret
procend

procstart _uX_mm_const_degtograd_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_degtograd
        ret
procend

procstart _uX_mm_const_gradtodeg_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_gradtodeg
        ret
procend

procstart _uX_mm_const_radtograd_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_radtograd
        ret
procend

procstart _uX_mm_const_gradtorad_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_gradtorad
        ret
procend

procstart _uX_mm_const_sungravity_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_sungravity
        ret
procend

procstart _uX_mm_const_jupitergravity_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_jupitergravity
        ret
procend

procstart _uX_mm_const_neptunegravity_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_neptunegravity
        ret
procend

procstart _uX_mm_const_saturngravity_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_saturngravity
        ret
procend

procstart _uX_mm_const_uranusgravity_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_uranusgravity
        ret
procend

procstart _uX_mm_const_earthgravity_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_earthgravity
        ret
procend

procstart _uX_mm_const_venusgravity_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_venusgravity
        ret
procend

procstart _uX_mm_const_marsgravity_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_marsgravity
        ret
procend

procstart _uX_mm_const_mercurygravity_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mercurygravity
        ret
procend

procstart _uX_mm_const_moongravity_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_moongravity
        ret
procend

procstart _uX_mm_const_plutogravity_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_plutogravity
        ret
procend

procstart _uX_mm_const_kmtoinch_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmtoinch
        ret
procend

procstart _uX_mm_const_kmtofeet_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmtofeet
        ret
procend

procstart _uX_mm_const_kmtoyards_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmtoyards
        ret
procend

procstart _uX_mm_const_kmtomiles_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmtomiles
        ret
procend

procstart _uX_mm_const_metoinch_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_metoinch
        ret
procend

procstart _uX_mm_const_metofeet_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_metofeet
        ret
procend

procstart _uX_mm_const_metoyards_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_metoyards
        ret
procend

procstart _uX_mm_const_metomiles_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_metomiles
        ret
procend

procstart _uX_mm_const_cmtoinch_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_cmtoinch
        ret
procend

procstart _uX_mm_const_cmtofeet_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_cmtofeet
        ret
procend

procstart _uX_mm_const_cmtoyards_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_cmtoyards
        ret
procend

procstart _uX_mm_const_cmtomiles_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_cmtomiles
        ret
procend

procstart _uX_mm_const_milltoinch_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milltoinch
        ret
procend

procstart _uX_mm_const_milltofeet_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milltofeet
        ret
procend

procstart _uX_mm_const_milltoyards_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milltoyards
        ret
procend

procstart _uX_mm_const_milltomiles_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milltomiles
        ret
procend

procstart _uX_mm_const_inchtomill_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_inchtomill
        ret
procend

procstart _uX_mm_const_inchtocm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_inchtocm
        ret
procend

procstart _uX_mm_const_inchtome_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_inchtome
        ret
procend

procstart _uX_mm_const_inchtokm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_inchtokm
        ret
procend

procstart _uX_mm_const_inchtofeet_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_inchtofeet
        ret
procend

procstart _uX_mm_const_inchtoyards_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_inchtoyards
        ret
procend

procstart _uX_mm_const_inchtomiles_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_inchtomiles
        ret
procend

procstart _uX_mm_const_feettomill_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feettomill
        ret
procend

procstart _uX_mm_const_feettocm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feettocm
        ret
procend

procstart _uX_mm_const_feettome_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feettome
        ret
procend

procstart _uX_mm_const_feettokm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feettokm
        ret
procend

procstart _uX_mm_const_feettoinch_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feettoinch
        ret
procend

procstart _uX_mm_const_feettoyards_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feettoyards
        ret
procend

procstart _uX_mm_const_feettomiles_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feettomiles
        ret
procend

procstart _uX_mm_const_yardstomill_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_yardstomill
        ret
procend

procstart _uX_mm_const_yardstocm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_yardstocm
        ret
procend

procstart _uX_mm_const_yardstome_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_yardstome
        ret
procend

procstart _uX_mm_const_yardstokm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_yardstokm
        ret
procend

procstart _uX_mm_const_yardstoinch_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_yardstoinch
        ret
procend

procstart _uX_mm_const_yardstofeet_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_yardstofeet
        ret
procend

procstart _uX_mm_const_yardstomiles_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_yardstomiles
        ret
procend

procstart _uX_mm_const_milestomill_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milestomill
        ret
procend

procstart _uX_mm_const_milestocm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milestocm
        ret
procend

procstart _uX_mm_const_milestome_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milestome
        ret
procend

procstart _uX_mm_const_milestokm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milestokm
        ret
procend

procstart _uX_mm_const_milestoinch_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milestoinch
        ret
procend

procstart _uX_mm_const_milestofeet_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milestofeet
        ret
procend

procstart _uX_mm_const_milestoyards_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milestoyards
        ret
procend

procstart _uX_mm_const_kmphtomeps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmphtomeps
        ret
procend

procstart _uX_mm_const_kmphtokmps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmphtokmps
        ret
procend

procstart _uX_mm_const_kmphtomepm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmphtomepm
        ret
procend

procstart _uX_mm_const_kmphtomilesph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmphtomilesph
        ret
procend

procstart _uX_mm_const_kmphtomilesps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmphtomilesps
        ret
procend

procstart _uX_mm_const_kmphtofeetps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmphtofeetps
        ret
procend

procstart _uX_mm_const_kmphtofeetpm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmphtofeetpm
        ret
procend

procstart _uX_mm_const_kmpstomeps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmpstomeps
        ret
procend

procstart _uX_mm_const_kmpstokmph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmpstokmph
        ret
procend

procstart _uX_mm_const_kmpstomepm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmpstomepm
        ret
procend

procstart _uX_mm_const_kmpstomilesph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmpstomilesph
        ret
procend

procstart _uX_mm_const_kmpstomilesps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmpstomilesps
        ret
procend

procstart _uX_mm_const_kmpstofeetps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmpstofeetps
        ret
procend

procstart _uX_mm_const_kmpstofeetpm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_kmpstofeetpm
        ret
procend

procstart _uX_mm_const_mepstokmph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepstokmph
        ret
procend

procstart _uX_mm_const_mepstokmps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepstokmps
        ret
procend

procstart _uX_mm_const_mepstomepm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepstomepm
        ret
procend

procstart _uX_mm_const_mepstomilesph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepstomilesph
        ret
procend

procstart _uX_mm_const_mepstomilesps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepstomilesps
        ret
procend

procstart _uX_mm_const_mepstofeetps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepstofeetps
        ret
procend

procstart _uX_mm_const_mepstofeetpm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepstofeetpm
        ret
procend

procstart _uX_mm_const_mepmtokmph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepmtokmph
        ret
procend

procstart _uX_mm_const_mepmtokmps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepmtokmps
        ret
procend

procstart _uX_mm_const_mepmtomeps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepmtomeps
        ret
procend

procstart _uX_mm_const_mepmtomilesph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepmtomilesph
        ret
procend

procstart _uX_mm_const_mepmtomilesps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepmtomilesps
        ret
procend

procstart _uX_mm_const_mepmtofeetps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepmtofeetps
        ret
procend

procstart _uX_mm_const_mepmtofeetpm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_mepmtofeetpm
        ret
procend

procstart _uX_mm_const_milesphtokmph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milesphtokmph
        ret
procend

procstart _uX_mm_const_milesphtokmps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milesphtokmps
        ret
procend

procstart _uX_mm_const_milesphtomeps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milesphtomeps
        ret
procend

procstart _uX_mm_const_milesphtomepm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milesphtomepm
        ret
procend

procstart _uX_mm_const_milesphtomilesps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milesphtomilesps
        ret
procend

procstart _uX_mm_const_milesphtofeetps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milesphtofeetps
        ret
procend

procstart _uX_mm_const_milesphtofeetpm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milesphtofeetpm
        ret
procend

procstart _uX_mm_const_milespstokmph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milespstokmph
        ret
procend

procstart _uX_mm_const_milespstokmps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milespstokmps
        ret
procend

procstart _uX_mm_const_milespstomeps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milespstomeps
        ret
procend

procstart _uX_mm_const_milespstomepm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milespstomepm
        ret
procend

procstart _uX_mm_const_milespstomilesph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milespstomilesph
        ret
procend

procstart _uX_mm_const_milespstofeetps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milespstofeetps
        ret
procend

procstart _uX_mm_const_milespstofeetpm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_milespstofeetpm
        ret
procend

procstart _uX_mm_const_feetpstokmph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpstokmph
        ret
procend

procstart _uX_mm_const_feetpstokmps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpstokmps
        ret
procend

procstart _uX_mm_const_feetpstomeps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpstomeps
        ret
procend

procstart _uX_mm_const_feetpstomepm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpstomepm
        ret
procend

procstart _uX_mm_const_feetpstomilesph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpstomilesph
        ret
procend

procstart _uX_mm_const_feetpstomilesps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpstomilesps
        ret
procend

procstart _uX_mm_const_feetpstofeetpm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpstofeetpm
        ret
procend

procstart _uX_mm_const_feetpmtokmph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpmtokmph
        ret
procend

procstart _uX_mm_const_feetpmtokmps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpmtokmps
        ret
procend

procstart _uX_mm_const_feetpmtomeps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpmtomeps
        ret
procend

procstart _uX_mm_const_feetpmtomepm_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpmtomepm
        ret
procend

procstart _uX_mm_const_feetpmtomilesph_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpmtomilesph
        ret
procend

procstart _uX_mm_const_feetpmtomilesps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpmtomilesps
        ret
procend

procstart _uX_mm_const_feetpmtofeetps_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_feetpmtofeetps
        ret
procend

procstart _uX_mm_const_soundspeedp50c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedp50c
        ret
procend

procstart _uX_mm_const_soundspeedp45c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedp45c
        ret
procend

procstart _uX_mm_const_soundspeedp40c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedp40c
        ret
procend

procstart _uX_mm_const_soundspeedp35c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedp35c
        ret
procend

procstart _uX_mm_const_soundspeedp30c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedp30c
        ret
procend

procstart _uX_mm_const_soundspeedp25c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedp25c
        ret
procend

procstart _uX_mm_const_soundspeedp20c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedp20c
        ret
procend

procstart _uX_mm_const_soundspeedp15c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedp15c
        ret
procend

procstart _uX_mm_const_soundspeedp10c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedp10c
        ret
procend

procstart _uX_mm_const_soundspeedp5c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedp5c
        ret
procend

procstart _uX_mm_const_soundspeed0c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeed0c
        ret
procend

procstart _uX_mm_const_soundspeedn5c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedn5c
        ret
procend

procstart _uX_mm_const_soundspeedn10c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedn10c
        ret
procend

procstart _uX_mm_const_soundspeedn15c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedn15c
        ret
procend

procstart _uX_mm_const_soundspeedn20c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedn20c
        ret
procend

procstart _uX_mm_const_soundspeedn25c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedn25c
        ret
procend

procstart _uX_mm_const_soundspeedn30c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedn30c
        ret
procend

procstart _uX_mm_const_soundspeedn35c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedn35c
        ret
procend

procstart _uX_mm_const_soundspeedn40c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedn40c
        ret
procend

procstart _uX_mm_const_soundspeedn45c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedn45c
        ret
procend

procstart _uX_mm_const_soundspeedn50c_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_soundspeedn50c
        ret
procend

procstart _uX_mm_const_schscale_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_schscale
        ret
procend

procstart _uX_mm_const_thscale_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_thscale
        ret
procend

procstart _uX_mm_const_expest1_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_expest1
        ret
procend

procstart _uX_mm_const_expest2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_expest2
        ret
procend

procstart _uX_mm_const_expest3_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_expest3
        ret
procend

procstart _uX_mm_const_expest4_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_expest4
        ret
procend

procstart _uX_mm_const_expest5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_expest5
        ret
procend

procstart _uX_mm_const_expest6_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_expest6
        ret
procend

procstart _uX_mm_const_expest7_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_expest7
        ret
procend

procstart _uX_mm_const_logest0_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_logest0
        ret
procend

procstart _uX_mm_const_logest1_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_logest1
        ret
procend

procstart _uX_mm_const_logest2_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_logest2
        ret
procend

procstart _uX_mm_const_logest3_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_logest3
        ret
procend

procstart _uX_mm_const_logest4_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_logest4
        ret
procend

procstart _uX_mm_const_logest5_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_logest5
        ret
procend

procstart _uX_mm_const_logest6_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_logest6
        ret
procend

procstart _uX_mm_const_logest7_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_logest7
        ret
procend
    
    ;;double low;;
    
;;             sincos template, double precision
procstart _uX_mm_const_P0sin_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_P0sin
        ret
procend

procstart _uX_mm_const_P1sin_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_P1sin
        ret
procend

procstart _uX_mm_const_P2sin_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_P2sin
        ret
procend

procstart _uX_mm_const_P3sin_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_P3sin
        ret
procend

procstart _uX_mm_const_P4sin_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_P4sin
        ret
procend

procstart _uX_mm_const_P5sin_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_P5sin
        ret
procend

procstart _uX_mm_const_P0cos_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_P0cos
        ret
procend

procstart _uX_mm_const_P1cos_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_P1cos
        ret
procend

procstart _uX_mm_const_P2cos_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_P2cos
        ret
procend

procstart _uX_mm_const_P3cos_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_P3cos
        ret
procend

procstart _uX_mm_const_P4cos_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_P4cos
        ret
procend

procstart _uX_mm_const_P5cos_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_P5cos
        ret
procend

procstart _uX_mm_const_DP1_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_DP1
        ret
procend

procstart _uX_mm_const_DP2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_DP2
        ret
procend

procstart _uX_mm_const_DP3_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_DP3
        ret
procend

;;             sincos template, double precision

procstart _uX_mm_const_1lshl3_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl3
        ret
procend

procstart _uX_mm_const_1lshl4_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl4
        ret
procend

procstart _uX_mm_const_1lshl7_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl7
        ret
procend

procstart _uX_mm_const_1lshl8_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl8
        ret
procend

procstart _uX_mm_const_1lshl11_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl11
        ret
procend

procstart _uX_mm_const_1lshl12_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl12
        ret
procend

procstart _uX_mm_const_1lshl15_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl15
        ret
procend

procstart _uX_mm_const_1lshl16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl16
        ret
procend

procstart _uX_mm_const_1lshl19_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl19
        ret
procend

procstart _uX_mm_const_1lshl20_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl20
        ret
procend

procstart _uX_mm_const_1lshl23_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl23
        ret
procend

procstart _uX_mm_const_1lshl24_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl24
        ret
procend

procstart _uX_mm_const_1lshl27_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl27
        ret
procend

procstart _uX_mm_const_1lshl28_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl28
        ret
procend

procstart _uX_mm_const_1lshl31_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl31
        ret
procend

procstart _uX_mm_const_1lshl32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl32
        ret
procend

procstart _uX_mm_const_1lshl35_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl35
        ret
procend

procstart _uX_mm_const_1lshl36_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl36
        ret
procend

procstart _uX_mm_const_1lshl39_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl39
        ret
procend

procstart _uX_mm_const_1lshl40_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl40
        ret
procend

procstart _uX_mm_const_1lshl43_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl43
        ret
procend

procstart _uX_mm_const_1lshl44_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl44
        ret
procend

procstart _uX_mm_const_1lshl47_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl47
        ret
procend

procstart _uX_mm_const_1lshl48_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl48
        ret
procend

procstart _uX_mm_const_1lshl51_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl51
        ret
procend

procstart _uX_mm_const_1lshl52_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl52
        ret
procend

procstart _uX_mm_const_1lshl55_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl55
        ret
procend

procstart _uX_mm_const_1lshl56_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl56
        ret
procend

procstart _uX_mm_const_1lshl59_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl59
        ret
procend

procstart _uX_mm_const_1lshl60_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl60
        ret
procend

procstart _uX_mm_const_1lshl63_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1lshl63
        ret
procend

procstart _uX_mm_const_neg1lshl3_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl3
        ret
procend

procstart _uX_mm_const_neg1lshl4_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl4
        ret
procend

procstart _uX_mm_const_neg1lshl7_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl7
        ret
procend

procstart _uX_mm_const_neg1lshl8_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl8
        ret
procend

procstart _uX_mm_const_neg1lshl11_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl11
        ret
procend

procstart _uX_mm_const_neg1lshl12_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl12
        ret
procend

procstart _uX_mm_const_neg1lshl15_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl15
        ret
procend

procstart _uX_mm_const_neg1lshl16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl16
        ret
procend

procstart _uX_mm_const_neg1lshl19_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl19
        ret
procend

procstart _uX_mm_const_neg1lshl20_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl20
        ret
procend

procstart _uX_mm_const_neg1lshl23_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl23
        ret
procend

procstart _uX_mm_const_neg1lshl24_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl24
        ret
procend

procstart _uX_mm_const_neg1lshl27_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl27
        ret
procend

procstart _uX_mm_const_neg1lshl28_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl28
        ret
procend

procstart _uX_mm_const_neg1lshl31_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl31
        ret
procend

procstart _uX_mm_const_neg1lshl32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl32
        ret
procend

procstart _uX_mm_const_neg1lshl35_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl35
        ret
procend

procstart _uX_mm_const_neg1lshl36_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl36
        ret
procend

procstart _uX_mm_const_neg1lshl39_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl39
        ret
procend

procstart _uX_mm_const_neg1lshl40_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl40
        ret
procend

procstart _uX_mm_const_neg1lshl43_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl43
        ret
procend

procstart _uX_mm_const_neg1lshl44_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl44
        ret
procend

procstart _uX_mm_const_neg1lshl47_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl47
        ret
procend

procstart _uX_mm_const_neg1lshl48_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl48
        ret
procend

procstart _uX_mm_const_neg1lshl51_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl51
        ret
procend

procstart _uX_mm_const_neg1lshl52_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl52
        ret
procend

procstart _uX_mm_const_neg1lshl55_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl55
        ret
procend

procstart _uX_mm_const_neg1lshl56_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl56
        ret
procend

procstart _uX_mm_const_neg1lshl59_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl59
        ret
procend

procstart _uX_mm_const_neg1lshl60_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl60
        ret
procend

procstart _uX_mm_const_neg1lshl63_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1lshl63
        ret
procend

procstart _uX_mm_const_false_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_false
        ret
procend

procstart _uX_mm_const_true_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_true
        ret
procend

procstart _uX_mm_const_error_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_error
        ret
procend

procstart _uX_mm_const_magic_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_magic
        ret
procend

procstart _uX_mm_const_sign_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sign
        ret
procend

procstart _uX_mm_const_invsign_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_invsign
        ret
procend

procstart _uX_mm_const_inf_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_inf
        ret
procend

procstart _uX_mm_const_fin_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_fin
        ret
procend

procstart _uX_mm_const_invinf_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_invinf
        ret
procend

procstart _uX_mm_const_neginf_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neginf
        ret
procend

procstart _uX_mm_const_nan_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_nan
        ret
procend

procstart _uX_mm_const_qnan_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_qnan
        ret
procend

procstart _uX_mm_const_negqnan_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_negqnan
        ret
procend

procstart _uX_mm_const_nantest_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_nantest
        ret
procend

procstart _uX_mm_const_abs_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_abs
        ret
procend

procstart _uX_mm_const_min_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_min
        ret
procend

procstart _uX_mm_const_max_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_max
        ret
procend

procstart _uX_mm_const_nofraction_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_nofraction
        ret
procend

procstart _uX_mm_const_mindenorm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mindenorm
        ret
procend

procstart _uX_mm_const_denormlimit_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_denormlimit
        ret
procend

procstart _uX_mm_const_minnormal_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_minnormal
        ret
procend

procstart _uX_mm_const_maxnormal_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxnormal
        ret
procend

procstart _uX_mm_const_decdig_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_decdig
        ret
procend

procstart _uX_mm_const_dig_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_dig
        ret
procend

procstart _uX_mm_const_negdecdig_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_negdecdig
        ret
procend

procstart _uX_mm_const_negdig_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_negdig
        ret
procend

procstart _uX_mm_const_eps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_eps
        ret
procend

procstart _uX_mm_const_epsilon_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_epsilon
        ret
procend

procstart _uX_mm_const_normeps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_normeps
        ret
procend

procstart _uX_mm_const_guard_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_guard
        ret
procend

procstart _uX_mm_const_mantpow2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mantpow2
        ret
procend

procstart _uX_mm_const_maxmantpow2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxmantpow2
        ret
procend

procstart _uX_mm_const_mantdig_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mantdig
        ret
procend

procstart _uX_mm_const_mant_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mant
        ret
procend

procstart _uX_mm_const_negmantdig_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_negmantdig
        ret
procend

procstart _uX_mm_const_negmant_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_negmant
        ret
procend

procstart _uX_mm_const_maxexpo_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxexpo
        ret
procend

procstart _uX_mm_const_exposign_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_exposign
        ret
procend

procstart _uX_mm_const_expo_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_expo
        ret
procend

procstart _uX_mm_const_negmaxexpo_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_negmaxexpo
        ret
procend

procstart _uX_mm_const_negexposign_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_negexposign
        ret
procend

procstart _uX_mm_const_negexpo_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_negexpo
        ret
procend

procstart _uX_mm_const_subnormalexpo_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_subnormalexpo
        ret
procend

procstart _uX_mm_const_minexpo_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_minexpo
        ret
procend

procstart _uX_mm_const_maxdecexpo_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxdecexpo
        ret
procend

procstart _uX_mm_const_negmaxdecexpo_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_negmaxdecexpo
        ret
procend

procstart _uX_mm_const_mindecexpo_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mindecexpo
        ret
procend

procstart _uX_mm_const_expofield_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_expofield
        ret
procend

procstart _uX_mm_const_mantfield_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mantfield
        ret
procend

procstart _uX_mm_const_norm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_norm
        ret
procend

procstart _uX_mm_const_radix_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_radix
        ret
procend

procstart _uX_mm_const_rounds_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rounds
        ret
procend

procstart _uX_mm_const_subdec_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_subdec
        ret
procend

procstart _uX_mm_const_sqrtmax_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrtmax
        ret
procend

procstart _uX_mm_const_smallnormal_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_smallnormal
        ret
procend

procstart _uX_mm_const_halfminuseps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_halfminuseps
        ret
procend

procstart _uX_mm_const_trueint_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_trueint
        ret
procend

procstart _uX_mm_const_byte_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_byte
        ret
procend

procstart _uX_mm_const_byte_even_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_byte_even
        ret
procend

procstart _uX_mm_const_byte_odd_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_byte_odd
        ret
procend

procstart _uX_mm_const_4low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_4low
        ret
procend

procstart _uX_mm_const_4high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_4high
        ret
procend

procstart _uX_mm_const_flip4_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_flip4
        ret
procend

procstart _uX_mm_const_8low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_8low
        ret
procend

procstart _uX_mm_const_8high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_8high
        ret
procend

procstart _uX_mm_const_flip8_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_flip8
        ret
procend

procstart _uX_mm_const_16low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_16low
        ret
procend

procstart _uX_mm_const_16high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_16high
        ret
procend

procstart _uX_mm_const_flip16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_flip16
        ret
procend

procstart _uX_mm_const_24low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_24low
        ret
procend

procstart _uX_mm_const_24high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_24high
        ret
procend

procstart _uX_mm_const_flip24_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_flip24
        ret
procend

procstart _uX_mm_const_28low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_28low
        ret
procend

procstart _uX_mm_const_28high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_28high
        ret
procend

procstart _uX_mm_const_flip28_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_flip28
        ret
procend

procstart _uX_mm_const_32low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_32low
        ret
procend

procstart _uX_mm_const_32high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_32high
        ret
procend

procstart _uX_mm_const_flip32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_flip32
        ret
procend

procstart _uX_mm_const_40low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_40low
        ret
procend

procstart _uX_mm_const_40high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_40high
        ret
procend

procstart _uX_mm_const_flip40_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_flip40
        ret
procend

procstart _uX_mm_const_48low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_48low
        ret
procend

procstart _uX_mm_const_48high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_48high
        ret
procend

procstart _uX_mm_const_flip48_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_flip48
        ret
procend

procstart _uX_mm_const_56low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_56low
        ret
procend

procstart _uX_mm_const_56high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_56high
        ret
procend

procstart _uX_mm_const_flip56_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_flip56
        ret
procend

procstart _uX_mm_const_60low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_60low
        ret
procend

procstart _uX_mm_const_60high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_60high
        ret
procend

procstart _uX_mm_const_flip60_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_flip60
        ret
procend

procstart _uX_mm_const_64low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_64low
        ret
procend

procstart _uX_mm_const_64high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_64high
        ret
procend

procstart _uX_mm_const_flip64_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_flip64
        ret
procend

procstart _uX_mm_const_0_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0
        ret
procend

procstart _uX_mm_const_0d0001_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d0001
        ret
procend

procstart _uX_mm_const_0d0002_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d0002
        ret
procend

procstart _uX_mm_const_0d0003_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d0003
        ret
procend

procstart _uX_mm_const_0d0004_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d0004
        ret
procend

procstart _uX_mm_const_0d0005_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d0005
        ret
procend

procstart _uX_mm_const_0d0006_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d0006
        ret
procend

procstart _uX_mm_const_0d0007_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d0007
        ret
procend

procstart _uX_mm_const_0d0008_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d0008
        ret
procend

procstart _uX_mm_const_0d0009_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d0009
        ret
procend

procstart _uX_mm_const_0d001_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d001
        ret
procend

procstart _uX_mm_const_0d002_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d002
        ret
procend

procstart _uX_mm_const_0d003_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d003
        ret
procend

procstart _uX_mm_const_0d004_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d004
        ret
procend

procstart _uX_mm_const_0d005_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d005
        ret
procend

procstart _uX_mm_const_0d006_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d006
        ret
procend

procstart _uX_mm_const_0d007_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d007
        ret
procend

procstart _uX_mm_const_0d008_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d008
        ret
procend

procstart _uX_mm_const_0d009_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d009
        ret
procend

procstart _uX_mm_const_0d01_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d01
        ret
procend

procstart _uX_mm_const_0d02_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d02
        ret
procend

procstart _uX_mm_const_0d025_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d025
        ret
procend

procstart _uX_mm_const_0d03_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d03
        ret
procend

procstart _uX_mm_const_0d04_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d04
        ret
procend

procstart _uX_mm_const_0d05_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d05
        ret
procend

procstart _uX_mm_const_0d06_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d06
        ret
procend

procstart _uX_mm_const_0d07_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d07
        ret
procend

procstart _uX_mm_const_0d08_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d08
        ret
procend

procstart _uX_mm_const_0d09_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d09
        ret
procend

procstart _uX_mm_const_0d1_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d1
        ret
procend

procstart _uX_mm_const_0d2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d2
        ret
procend

procstart _uX_mm_const_0d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d25
        ret
procend

procstart _uX_mm_const_0d3_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d3
        ret
procend

procstart _uX_mm_const_0d4_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d4
        ret
procend

procstart _uX_mm_const_0d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d5
        ret
procend

procstart _uX_mm_const_0d6_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d6
        ret
procend

procstart _uX_mm_const_0d7_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d7
        ret
procend

procstart _uX_mm_const_0d8_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d8
        ret
procend

procstart _uX_mm_const_0d9_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_0d9
        ret
procend

procstart _uX_mm_const_1_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1
        ret
procend

procstart _uX_mm_const_1d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1d25
        ret
procend

procstart _uX_mm_const_1d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1d5
        ret
procend

procstart _uX_mm_const_2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2
        ret
procend

procstart _uX_mm_const_2d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2d25
        ret
procend

procstart _uX_mm_const_2d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2d5
        ret
procend

procstart _uX_mm_const_3_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_3
        ret
procend

procstart _uX_mm_const_3d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_3d25
        ret
procend

procstart _uX_mm_const_3d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_3d5
        ret
procend

procstart _uX_mm_const_4_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_4
        ret
procend

procstart _uX_mm_const_4d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_4d25
        ret
procend

procstart _uX_mm_const_4d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_4d5
        ret
procend

procstart _uX_mm_const_5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_5
        ret
procend

procstart _uX_mm_const_5d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_5d25
        ret
procend

procstart _uX_mm_const_5d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_5d5
        ret
procend

procstart _uX_mm_const_6_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_6
        ret
procend

procstart _uX_mm_const_6d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_6d25
        ret
procend

procstart _uX_mm_const_6d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_6d5
        ret
procend

procstart _uX_mm_const_7_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_7
        ret
procend

procstart _uX_mm_const_7d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_7d25
        ret
procend

procstart _uX_mm_const_7d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_7d5
        ret
procend

procstart _uX_mm_const_8_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_8
        ret
procend

procstart _uX_mm_const_8d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_8d25
        ret
procend

procstart _uX_mm_const_8d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_8d5
        ret
procend

procstart _uX_mm_const_9_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_9
        ret
procend

procstart _uX_mm_const_9d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_9d25
        ret
procend

procstart _uX_mm_const_9d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_9d5
        ret
procend

procstart _uX_mm_const_10_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_10
        ret
procend

procstart _uX_mm_const_11_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_11
        ret
procend

procstart _uX_mm_const_12_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_12
        ret
procend

procstart _uX_mm_const_13_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_13
        ret
procend

procstart _uX_mm_const_14_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_14
        ret
procend

procstart _uX_mm_const_15_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_15
        ret
procend

procstart _uX_mm_const_16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_16
        ret
procend

procstart _uX_mm_const_17_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_17
        ret
procend

procstart _uX_mm_const_18_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_18
        ret
procend

procstart _uX_mm_const_19_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_19
        ret
procend

procstart _uX_mm_const_20_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_20
        ret
procend

procstart _uX_mm_const_21_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_21
        ret
procend

procstart _uX_mm_const_22_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_22
        ret
procend

procstart _uX_mm_const_23_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_23
        ret
procend

procstart _uX_mm_const_24_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_24
        ret
procend

procstart _uX_mm_const_24d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_24d5
        ret
procend

procstart _uX_mm_const_25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_25
        ret
procend

procstart _uX_mm_const_26_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_26
        ret
procend

procstart _uX_mm_const_27_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_27
        ret
procend

procstart _uX_mm_const_28_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_28
        ret
procend

procstart _uX_mm_const_29_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_29
        ret
procend

procstart _uX_mm_const_30_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_30
        ret
procend

procstart _uX_mm_const_31_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_31
        ret
procend

procstart _uX_mm_const_31_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_31
        ret
procend

procstart _uX_mm_const_33_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_33
        ret
procend

procstart _uX_mm_const_34_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_34
        ret
procend

procstart _uX_mm_const_35_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_35
        ret
procend

procstart _uX_mm_const_36_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_36
        ret
procend

procstart _uX_mm_const_37_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_37
        ret
procend

procstart _uX_mm_const_38_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_38
        ret
procend

procstart _uX_mm_const_39_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_39
        ret
procend

procstart _uX_mm_const_40_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_40
        ret
procend

procstart _uX_mm_const_41_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_41
        ret
procend

procstart _uX_mm_const_42_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_42
        ret
procend

procstart _uX_mm_const_43_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_43
        ret
procend

procstart _uX_mm_const_44_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_44
        ret
procend

procstart _uX_mm_const_45_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_45
        ret
procend

procstart _uX_mm_const_46_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_46
        ret
procend

procstart _uX_mm_const_47_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_47
        ret
procend

procstart _uX_mm_const_48_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_48
        ret
procend

procstart _uX_mm_const_49_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_49
        ret
procend

procstart _uX_mm_const_50_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_50
        ret
procend

procstart _uX_mm_const_51_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_51
        ret
procend

procstart _uX_mm_const_52_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_52
        ret
procend

procstart _uX_mm_const_53_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_53
        ret
procend

procstart _uX_mm_const_54_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_54
        ret
procend

procstart _uX_mm_const_55_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_55
        ret
procend

procstart _uX_mm_const_56_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_56
        ret
procend

procstart _uX_mm_const_57_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_57
        ret
procend

procstart _uX_mm_const_58_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_58
        ret
procend

procstart _uX_mm_const_59_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_59
        ret
procend

procstart _uX_mm_const_60_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_60
        ret
procend

procstart _uX_mm_const_61_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_61
        ret
procend

procstart _uX_mm_const_62_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_62
        ret
procend

procstart _uX_mm_const_63_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_63
        ret
procend

procstart _uX_mm_const_64_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_64
        ret
procend

procstart _uX_mm_const_65_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_65
        ret
procend

procstart _uX_mm_const_66_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_66
        ret
procend

procstart _uX_mm_const_67_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_67
        ret
procend

procstart _uX_mm_const_68_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_68
        ret
procend

procstart _uX_mm_const_69_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_69
        ret
procend

procstart _uX_mm_const_70_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_70
        ret
procend

procstart _uX_mm_const_71_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_71
        ret
procend

procstart _uX_mm_const_72_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_72
        ret
procend

procstart _uX_mm_const_73_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_73
        ret
procend

procstart _uX_mm_const_74_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_74
        ret
procend

procstart _uX_mm_const_75_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_75
        ret
procend

procstart _uX_mm_const_76_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_76
        ret
procend

procstart _uX_mm_const_77_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_77
        ret
procend

procstart _uX_mm_const_78_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_78
        ret
procend

procstart _uX_mm_const_79_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_79
        ret
procend

procstart _uX_mm_const_80_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_80
        ret
procend

procstart _uX_mm_const_81_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_81
        ret
procend

procstart _uX_mm_const_82_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_82
        ret
procend

procstart _uX_mm_const_83_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_83
        ret
procend

procstart _uX_mm_const_84_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_84
        ret
procend

procstart _uX_mm_const_85_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_85
        ret
procend

procstart _uX_mm_const_86_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_86
        ret
procend

procstart _uX_mm_const_87_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_87
        ret
procend

procstart _uX_mm_const_88_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_88
        ret
procend

procstart _uX_mm_const_89_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_89
        ret
procend

procstart _uX_mm_const_90_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_90
        ret
procend

procstart _uX_mm_const_91_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_91
        ret
procend

procstart _uX_mm_const_92_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_92
        ret
procend

procstart _uX_mm_const_93_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_93
        ret
procend

procstart _uX_mm_const_94_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_94
        ret
procend

procstart _uX_mm_const_95_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_95
        ret
procend

procstart _uX_mm_const_96_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_96
        ret
procend

procstart _uX_mm_const_97_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_97
        ret
procend

procstart _uX_mm_const_98_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_98
        ret
procend

procstart _uX_mm_const_99_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_99
        ret
procend

procstart _uX_mm_const_100_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_100
        ret
procend

procstart _uX_mm_const_125_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_125
        ret
procend

procstart _uX_mm_const_126_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_126
        ret
procend

procstart _uX_mm_const_127_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_127
        ret
procend

procstart _uX_mm_const_128_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_128
        ret
procend

procstart _uX_mm_const_140_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_140
        ret
procend

procstart _uX_mm_const_145_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_145
        ret
procend

procstart _uX_mm_const_150_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_150
        ret
procend

procstart _uX_mm_const_180_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_180
        ret
procend

procstart _uX_mm_const_253_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_253
        ret
procend

procstart _uX_mm_const_254_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_254
        ret
procend

procstart _uX_mm_const_255_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_255
        ret
procend

procstart _uX_mm_const_256_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_256
        ret
procend

procstart _uX_mm_const_360_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_360
        ret
procend

procstart _uX_mm_const_511_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_511
        ret
procend

procstart _uX_mm_const_512_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_512
        ret
procend

procstart _uX_mm_const_513_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_513
        ret
procend

procstart _uX_mm_const_1023_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1023
        ret
procend

procstart _uX_mm_const_1024_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1024
        ret
procend

procstart _uX_mm_const_1025_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1025
        ret
procend

procstart _uX_mm_const_32767_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_32767
        ret
procend

procstart _uX_mm_const_32768_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_32768
        ret
procend

procstart _uX_mm_const_65535_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_65535
        ret
procend

procstart _uX_mm_const_65536_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_65536
        ret
procend

procstart _uX_mm_const_2147483647_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2147483647
        ret
procend

procstart _uX_mm_const_2147483648_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2147483648
        ret
procend

procstart _uX_mm_const_4294967295_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_4294967295
        ret
procend

procstart _uX_mm_const_4294967296_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_4294967296
        ret
procend

procstart _uX_mm_const_neg0_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0
        ret
procend

procstart _uX_mm_const_neg0d0001_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d0001
        ret
procend

procstart _uX_mm_const_neg0d0002_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d0002
        ret
procend

procstart _uX_mm_const_neg0d0003_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d0003
        ret
procend

procstart _uX_mm_const_neg0d0004_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d0004
        ret
procend

procstart _uX_mm_const_neg0d0005_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d0005
        ret
procend

procstart _uX_mm_const_neg0d0006_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d0006
        ret
procend

procstart _uX_mm_const_neg0d0007_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d0007
        ret
procend

procstart _uX_mm_const_neg0d0008_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d0008
        ret
procend

procstart _uX_mm_const_neg0d0009_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d0009
        ret
procend

procstart _uX_mm_const_neg0d001_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d001
        ret
procend

procstart _uX_mm_const_neg0d002_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d002
        ret
procend

procstart _uX_mm_const_neg0d003_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d003
        ret
procend

procstart _uX_mm_const_neg0d004_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d004
        ret
procend

procstart _uX_mm_const_neg0d005_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d005
        ret
procend

procstart _uX_mm_const_neg0d006_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d006
        ret
procend

procstart _uX_mm_const_neg0d007_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d007
        ret
procend

procstart _uX_mm_const_neg0d008_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d008
        ret
procend

procstart _uX_mm_const_neg0d009_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d009
        ret
procend

procstart _uX_mm_const_neg0d01_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d01
        ret
procend

procstart _uX_mm_const_neg0d02_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d02
        ret
procend

procstart _uX_mm_const_neg0d025_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d025
        ret
procend

procstart _uX_mm_const_neg0d03_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d03
        ret
procend

procstart _uX_mm_const_neg0d04_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d04
        ret
procend

procstart _uX_mm_const_neg0d05_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d05
        ret
procend

procstart _uX_mm_const_neg0d06_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d06
        ret
procend

procstart _uX_mm_const_neg0d07_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d07
        ret
procend

procstart _uX_mm_const_neg0d08_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d08
        ret
procend

procstart _uX_mm_const_neg0d09_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d09
        ret
procend

procstart _uX_mm_const_neg0d1_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d1
        ret
procend

procstart _uX_mm_const_neg0d2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d2
        ret
procend

procstart _uX_mm_const_neg0d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d25
        ret
procend

procstart _uX_mm_const_neg0d3_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d3
        ret
procend

procstart _uX_mm_const_neg0d4_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d4
        ret
procend

procstart _uX_mm_const_neg0d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d5
        ret
procend

procstart _uX_mm_const_neg0d6_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d6
        ret
procend

procstart _uX_mm_const_neg0d7_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d7
        ret
procend

procstart _uX_mm_const_neg0d8_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d8
        ret
procend

procstart _uX_mm_const_neg0d9_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg0d9
        ret
procend

procstart _uX_mm_const_neg1_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1
        ret
procend

procstart _uX_mm_const_neg1d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1d25
        ret
procend

procstart _uX_mm_const_neg1d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1d5
        ret
procend

procstart _uX_mm_const_neg2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg2
        ret
procend

procstart _uX_mm_const_neg2d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg2d25
        ret
procend

procstart _uX_mm_const_neg2d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg2d5
        ret
procend

procstart _uX_mm_const_neg3_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg3
        ret
procend

procstart _uX_mm_const_neg3d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg3d25
        ret
procend

procstart _uX_mm_const_neg3d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg3d5
        ret
procend

procstart _uX_mm_const_neg4_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg4
        ret
procend

procstart _uX_mm_const_neg4d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg4d25
        ret
procend

procstart _uX_mm_const_neg4d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg4d5
        ret
procend

procstart _uX_mm_const_neg5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg5
        ret
procend

procstart _uX_mm_const_neg5d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg5d25
        ret
procend

procstart _uX_mm_const_neg5d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg5d5
        ret
procend

procstart _uX_mm_const_neg6_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg6
        ret
procend

procstart _uX_mm_const_neg6d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg6d25
        ret
procend

procstart _uX_mm_const_neg6d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg6d5
        ret
procend

procstart _uX_mm_const_neg7_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg7
        ret
procend

procstart _uX_mm_const_neg7d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg7d25
        ret
procend

procstart _uX_mm_const_neg7d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg7d5
        ret
procend

procstart _uX_mm_const_neg8_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg8
        ret
procend

procstart _uX_mm_const_neg8d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg8d25
        ret
procend

procstart _uX_mm_const_neg8d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg8d5
        ret
procend

procstart _uX_mm_const_neg9_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg9
        ret
procend

procstart _uX_mm_const_neg9d25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg9d25
        ret
procend

procstart _uX_mm_const_neg9d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg9d5
        ret
procend

procstart _uX_mm_const_neg10_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg10
        ret
procend

procstart _uX_mm_const_neg11_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg11
        ret
procend

procstart _uX_mm_const_neg12_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg12
        ret
procend

procstart _uX_mm_const_neg13_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg13
        ret
procend

procstart _uX_mm_const_neg14_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg14
        ret
procend

procstart _uX_mm_const_neg15_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg15
        ret
procend

procstart _uX_mm_const_neg16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg16
        ret
procend

procstart _uX_mm_const_neg17_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg17
        ret
procend

procstart _uX_mm_const_neg18_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg18
        ret
procend

procstart _uX_mm_const_neg19_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg19
        ret
procend

procstart _uX_mm_const_neg20_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg20
        ret
procend

procstart _uX_mm_const_neg21_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg21
        ret
procend

procstart _uX_mm_const_neg22_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg22
        ret
procend

procstart _uX_mm_const_neg23_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg23
        ret
procend

procstart _uX_mm_const_neg24_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg24
        ret
procend

procstart _uX_mm_const_neg24d5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg24d5
        ret
procend

procstart _uX_mm_const_neg25_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg25
        ret
procend

procstart _uX_mm_const_neg26_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg26
        ret
procend

procstart _uX_mm_const_neg27_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg27
        ret
procend

procstart _uX_mm_const_neg28_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg28
        ret
procend

procstart _uX_mm_const_neg29_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg29
        ret
procend

procstart _uX_mm_const_neg30_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg30
        ret
procend

procstart _uX_mm_const_neg31_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg31
        ret
procend

procstart _uX_mm_const_neg31_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg31
        ret
procend

procstart _uX_mm_const_neg33_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg33
        ret
procend

procstart _uX_mm_const_neg34_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg34
        ret
procend

procstart _uX_mm_const_neg35_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg35
        ret
procend

procstart _uX_mm_const_neg36_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg36
        ret
procend

procstart _uX_mm_const_neg37_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg37
        ret
procend

procstart _uX_mm_const_neg38_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg38
        ret
procend

procstart _uX_mm_const_neg39_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg39
        ret
procend

procstart _uX_mm_const_neg40_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg40
        ret
procend

procstart _uX_mm_const_neg41_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg41
        ret
procend

procstart _uX_mm_const_neg42_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg42
        ret
procend

procstart _uX_mm_const_neg43_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg43
        ret
procend

procstart _uX_mm_const_neg44_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg44
        ret
procend

procstart _uX_mm_const_neg45_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg45
        ret
procend

procstart _uX_mm_const_neg46_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg46
        ret
procend

procstart _uX_mm_const_neg47_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg47
        ret
procend

procstart _uX_mm_const_neg48_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg48
        ret
procend

procstart _uX_mm_const_neg49_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg49
        ret
procend

procstart _uX_mm_const_neg50_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg50
        ret
procend

procstart _uX_mm_const_neg51_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg51
        ret
procend

procstart _uX_mm_const_neg52_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg52
        ret
procend

procstart _uX_mm_const_neg53_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg53
        ret
procend

procstart _uX_mm_const_neg54_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg54
        ret
procend

procstart _uX_mm_const_neg55_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg55
        ret
procend

procstart _uX_mm_const_neg56_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg56
        ret
procend

procstart _uX_mm_const_neg57_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg57
        ret
procend

procstart _uX_mm_const_neg58_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg58
        ret
procend

procstart _uX_mm_const_neg59_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg59
        ret
procend

procstart _uX_mm_const_neg60_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg60
        ret
procend

procstart _uX_mm_const_neg61_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg61
        ret
procend

procstart _uX_mm_const_neg62_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg62
        ret
procend

procstart _uX_mm_const_neg63_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg63
        ret
procend

procstart _uX_mm_const_neg64_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg64
        ret
procend

procstart _uX_mm_const_neg65_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg65
        ret
procend

procstart _uX_mm_const_neg66_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg66
        ret
procend

procstart _uX_mm_const_neg67_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg67
        ret
procend

procstart _uX_mm_const_neg68_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg68
        ret
procend

procstart _uX_mm_const_neg69_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg69
        ret
procend

procstart _uX_mm_const_neg70_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg70
        ret
procend

procstart _uX_mm_const_neg71_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg71
        ret
procend

procstart _uX_mm_const_neg72_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg72
        ret
procend

procstart _uX_mm_const_neg73_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg73
        ret
procend

procstart _uX_mm_const_neg74_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg74
        ret
procend

procstart _uX_mm_const_neg75_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg75
        ret
procend

procstart _uX_mm_const_neg76_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg76
        ret
procend

procstart _uX_mm_const_neg77_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg77
        ret
procend

procstart _uX_mm_const_neg78_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg78
        ret
procend

procstart _uX_mm_const_neg79_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg79
        ret
procend

procstart _uX_mm_const_neg80_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg80
        ret
procend

procstart _uX_mm_const_neg81_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg81
        ret
procend

procstart _uX_mm_const_neg82_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg82
        ret
procend

procstart _uX_mm_const_neg83_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg83
        ret
procend

procstart _uX_mm_const_neg84_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg84
        ret
procend

procstart _uX_mm_const_neg85_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg85
        ret
procend

procstart _uX_mm_const_neg86_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg86
        ret
procend

procstart _uX_mm_const_neg87_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg87
        ret
procend

procstart _uX_mm_const_neg88_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg88
        ret
procend

procstart _uX_mm_const_neg89_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg89
        ret
procend

procstart _uX_mm_const_neg90_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg90
        ret
procend

procstart _uX_mm_const_neg91_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg91
        ret
procend

procstart _uX_mm_const_neg92_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg92
        ret
procend

procstart _uX_mm_const_neg93_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg93
        ret
procend

procstart _uX_mm_const_neg94_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg94
        ret
procend

procstart _uX_mm_const_neg95_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg95
        ret
procend

procstart _uX_mm_const_neg96_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg96
        ret
procend

procstart _uX_mm_const_neg97_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg97
        ret
procend

procstart _uX_mm_const_neg98_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg98
        ret
procend

procstart _uX_mm_const_neg99_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg99
        ret
procend

procstart _uX_mm_const_neg100_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg100
        ret
procend

procstart _uX_mm_const_neg125_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg125
        ret
procend

procstart _uX_mm_const_neg126_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg126
        ret
procend

procstart _uX_mm_const_neg127_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg127
        ret
procend

procstart _uX_mm_const_neg128_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg128
        ret
procend

procstart _uX_mm_const_neg140_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg140
        ret
procend

procstart _uX_mm_const_neg145_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg145
        ret
procend

procstart _uX_mm_const_neg150_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg150
        ret
procend

procstart _uX_mm_const_neg180_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg180
        ret
procend

procstart _uX_mm_const_neg253_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg253
        ret
procend

procstart _uX_mm_const_neg254_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg254
        ret
procend

procstart _uX_mm_const_neg255_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg255
        ret
procend

procstart _uX_mm_const_neg256_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg256
        ret
procend

procstart _uX_mm_const_neg360_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg360
        ret
procend

procstart _uX_mm_const_neg511_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg511
        ret
procend

procstart _uX_mm_const_neg512_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg512
        ret
procend

procstart _uX_mm_const_neg513_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg513
        ret
procend

procstart _uX_mm_const_neg1023_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1023
        ret
procend

procstart _uX_mm_const_neg1024_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1024
        ret
procend

procstart _uX_mm_const_neg1025_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg1025
        ret
procend

procstart _uX_mm_const_neg32767_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg32767
        ret
procend

procstart _uX_mm_const_neg32768_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg32768
        ret
procend

procstart _uX_mm_const_neg65535_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg65535
        ret
procend

procstart _uX_mm_const_neg65536_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg65536
        ret
procend

procstart _uX_mm_const_neg2147483647_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg2147483647
        ret
procend

procstart _uX_mm_const_neg2147483648_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg2147483648
        ret
procend

procstart _uX_mm_const_neg4294967295_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg4294967295
        ret
procend

procstart _uX_mm_const_neg4294967296_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg4294967296
        ret
procend

procstart _uX_mm_const_bin128_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_bin128
        ret
procend

procstart _uX_mm_const_binneg150_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_binneg150
        ret
procend

procstart _uX_mm_const_maxrand_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxrand
        ret
procend

procstart _uX_mm_const_maxi8_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxi8
        ret
procend

procstart _uX_mm_const_mini8_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mini8
        ret
procend

procstart _uX_mm_const_maxu8_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxu8
        ret
procend

procstart _uX_mm_const_maxi16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxi16
        ret
procend

procstart _uX_mm_const_mini16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mini16
        ret
procend

procstart _uX_mm_const_maxu16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxu16
        ret
procend

procstart _uX_mm_const_maxi32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxi32
        ret
procend

procstart _uX_mm_const_mini32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mini32
        ret
procend

procstart _uX_mm_const_maxu32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxu32
        ret
procend

procstart _uX_mm_const_maxi64_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxi64
        ret
procend

procstart _uX_mm_const_mini64_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mini64
        ret
procend

procstart _uX_mm_const_maxu64_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxu64
        ret
procend

procstart _uX_mm_const_maxi8xu8_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxi8xu8
        ret
procend

procstart _uX_mm_const_mini8xu8_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mini8xu8
        ret
procend

procstart _uX_mm_const_maxi8xu16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxi8xu16
        ret
procend

procstart _uX_mm_const_mini8xu16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mini8xu16
        ret
procend

procstart _uX_mm_const_maxi16xu16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxi16xu16
        ret
procend

procstart _uX_mm_const_mini16xu16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mini16xu16
        ret
procend

procstart _uX_mm_const_maxi16xu32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxi16xu32
        ret
procend

procstart _uX_mm_const_mini16xu32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mini16xu32
        ret
procend

procstart _uX_mm_const_maxi32xu32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxi32xu32
        ret
procend

procstart _uX_mm_const_mini32xu32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mini32xu32
        ret
procend

procstart _uX_mm_const_fixunsigned_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_fixunsigned
        ret
procend

procstart _uX_mm_const_fixunsigned32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_fixunsigned32
        ret
procend

procstart _uX_mm_const_fixmaxi32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_fixmaxi32
        ret
procend

procstart _uX_mm_const_fixmaxu32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_fixmaxu32
        ret
procend

procstart _uX_mm_const_fixunsigned64_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_fixunsigned64
        ret
procend

procstart _uX_mm_const_fixmaxi64_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_fixmaxi64
        ret
procend

procstart _uX_mm_const_fixmaxu64_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_fixmaxu64
        ret
procend

procstart _uX_mm_const_rcpi16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpi16
        ret
procend

procstart _uX_mm_const_rcpu16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpu16
        ret
procend

procstart _uX_mm_const_rcpi16xu16_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpi16xu16
        ret
procend

procstart _uX_mm_const_mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mg
        ret
procend

procstart _uX_mm_const_negmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_negmg
        ret
procend

procstart _uX_mm_const_halfmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_halfmg
        ret
procend

procstart _uX_mm_const_neghalfmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neghalfmg
        ret
procend

procstart _uX_mm_const_mgdiv4_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mgdiv4
        ret
procend

procstart _uX_mm_const_negmgdiv4_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_negmgdiv4
        ret
procend

procstart _uX_mm_const_halfmgxmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_halfmgxmg
        ret
procend

procstart _uX_mm_const_halfmgxsqrmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_halfmgxsqrmg
        ret
procend

procstart _uX_mm_const_halfmgxcubemg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_halfmgxcubemg
        ret
procend

procstart _uX_mm_const_neghalfmgxmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neghalfmgxmg
        ret
procend

procstart _uX_mm_const_neghalfmgxsqrmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neghalfmgxsqrmg
        ret
procend

procstart _uX_mm_const_neghalfmgxcubemg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neghalfmgxcubemg
        ret
procend

procstart _uX_mm_const_sqrmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrmg
        ret
procend

procstart _uX_mm_const_cubemg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_cubemg
        ret
procend

procstart _uX_mm_const_sqrtmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrtmg
        ret
procend

procstart _uX_mm_const_cbrtmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_cbrtmg
        ret
procend

procstart _uX_mm_const_rcpmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpmg
        ret
procend

procstart _uX_mm_const_rcpsqrmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpsqrmg
        ret
procend

procstart _uX_mm_const_rcpcubemg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpcubemg
        ret
procend

procstart _uX_mm_const_rcpsqrtmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpsqrtmg
        ret
procend

procstart _uX_mm_const_rcpcbrtmg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpcbrtmg
        ret
procend

procstart _uX_mm_const_2mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2mg
        ret
procend

procstart _uX_mm_const_neg2mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg2mg
        ret
procend

procstart _uX_mm_const_sqr2mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqr2mg
        ret
procend

procstart _uX_mm_const_cube2mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_cube2mg
        ret
procend

procstart _uX_mm_const_sqrt2mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrt2mg
        ret
procend

procstart _uX_mm_const_cbrt2mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_cbrt2mg
        ret
procend

procstart _uX_mm_const_4mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_4mg
        ret
procend

procstart _uX_mm_const_neg4mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg4mg
        ret
procend

procstart _uX_mm_const_sqr4mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqr4mg
        ret
procend

procstart _uX_mm_const_cube4mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_cube4mg
        ret
procend

procstart _uX_mm_const_sqrt4mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrt4mg
        ret
procend

procstart _uX_mm_const_cbrt4mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_cbrt4mg
        ret
procend

procstart _uX_mm_const_rcp2mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcp2mg
        ret
procend

procstart _uX_mm_const_rcp4mg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcp4mg
        ret
procend

procstart _uX_mm_const_e_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_e
        ret
procend

procstart _uX_mm_const_exp_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_exp
        ret
procend

procstart _uX_mm_const_loge_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_loge
        ret
procend

procstart _uX_mm_const_logehigh_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_logehigh
        ret
procend

procstart _uX_mm_const_logelow_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_logelow
        ret
procend

procstart _uX_mm_const_log2e_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_log2e
        ret
procend

procstart _uX_mm_const_log2ehigh_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_log2ehigh
        ret
procend

procstart _uX_mm_const_log2elow_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_log2elow
        ret
procend

procstart _uX_mm_const_log10e_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_log10e
        ret
procend

procstart _uX_mm_const_rcplog2e_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcplog2e
        ret
procend

procstart _uX_mm_const_rcplog10e_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcplog10e
        ret
procend

procstart _uX_mm_const_log2t_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_log2t
        ret
procend

procstart _uX_mm_const_log2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_log2
        ret
procend

procstart _uX_mm_const_log2high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_log2high
        ret
procend

procstart _uX_mm_const_log2low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_log2low
        ret
procend

procstart _uX_mm_const_ln2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_ln2
        ret
procend

procstart _uX_mm_const_ln2high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_ln2high
        ret
procend

procstart _uX_mm_const_ln2low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_ln2low
        ret
procend

procstart _uX_mm_const_1divln2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1divln2
        ret
procend

procstart _uX_mm_const_2divln2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2divln2
        ret
procend

procstart _uX_mm_const_lnt_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_lnt
        ret
procend

procstart _uX_mm_const_lnthigh_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_lnthigh
        ret
procend

procstart _uX_mm_const_lntlow_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_lntlow
        ret
procend

procstart _uX_mm_const_ln10_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_ln10
        ret
procend

procstart _uX_mm_const_sqrt2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrt2
        ret
procend

procstart _uX_mm_const_rcpsqrt2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpsqrt2
        ret
procend

procstart _uX_mm_const_sqrt2div2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrt2div2
        ret
procend

procstart _uX_mm_const_sqrt2div2high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrt2div2high
        ret
procend

procstart _uX_mm_const_sqrt2div2low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrt2div2low
        ret
procend

procstart _uX_mm_const_sqrthalf_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrthalf
        ret
procend

procstart _uX_mm_const_sqrthalfhigh_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrthalfhigh
        ret
procend

procstart _uX_mm_const_sqrthalflow_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrthalflow
        ret
procend

procstart _uX_mm_const_pow2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2
        ret
procend

procstart _uX_mm_const_rcppow2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcppow2
        ret
procend

procstart _uX_mm_const_cbrt2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_cbrt2
        ret
procend

procstart _uX_mm_const_rcpcbrt2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpcbrt2
        ret
procend

procstart _uX_mm_const_1div3_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1div3
        ret
procend

procstart _uX_mm_const_1div7_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1div7
        ret
procend

procstart _uX_mm_const_1div9_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_1div9
        ret
procend

procstart _uX_mm_const_2div3_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2div3
        ret
procend

procstart _uX_mm_const_2div7_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2div7
        ret
procend

procstart _uX_mm_const_2div9_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2div9
        ret
procend

procstart _uX_mm_const_4div3_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_4div3
        ret
procend

procstart _uX_mm_const_4div7_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_4div7
        ret
procend

procstart _uX_mm_const_4div9_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_4div9
        ret
procend

procstart _uX_mm_const_pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pi
        ret
procend

procstart _uX_mm_const_pihigh_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pihigh
        ret
procend

procstart _uX_mm_const_pilow_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pilow
        ret
procend

procstart _uX_mm_const_halfpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_halfpi
        ret
procend

procstart _uX_mm_const_2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2pi
        ret
procend

procstart _uX_mm_const_negpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_negpi
        ret
procend

procstart _uX_mm_const_neghalfpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neghalfpi
        ret
procend

procstart _uX_mm_const_neg2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neg2pi
        ret
procend

procstart _uX_mm_const_rcppi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcppi
        ret
procend

procstart _uX_mm_const_invpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_invpi
        ret
procend

procstart _uX_mm_const_rcp2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcp2pi
        ret
procend

procstart _uX_mm_const_inv2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_inv2pi
        ret
procend

procstart _uX_mm_const_pidiv2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pidiv2
        ret
procend

procstart _uX_mm_const_pidiv2high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pidiv2high
        ret
procend

procstart _uX_mm_const_pidiv2low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pidiv2low
        ret
procend

procstart _uX_mm_const_pidiv4_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pidiv4
        ret
procend

procstart _uX_mm_const_pidiv4high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pidiv4high
        ret
procend

procstart _uX_mm_const_pidiv4low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pidiv4low
        ret
procend

procstart _uX_mm_const_pix3div4_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pix3div4
        ret
procend

procstart _uX_mm_const_sqrtpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrtpi
        ret
procend

procstart _uX_mm_const_sqrt2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrt2pi
        ret
procend

procstart _uX_mm_const_sqrt2pihigh_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrt2pihigh
        ret
procend

procstart _uX_mm_const_sqrt2pilow_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrt2pilow
        ret
procend

procstart _uX_mm_const_rcpsqrtpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpsqrtpi
        ret
procend

procstart _uX_mm_const_rcpsqrt2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpsqrt2pi
        ret
procend

procstart _uX_mm_const_sqrtpidiv2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrtpidiv2
        ret
procend

procstart _uX_mm_const_sqrtpidiv2high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrtpidiv2high
        ret
procend

procstart _uX_mm_const_sqrt2pidiv2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrt2pidiv2
        ret
procend

procstart _uX_mm_const_sqrt2pidiv2high_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrt2pidiv2high
        ret
procend

procstart _uX_mm_const_sqrt2pidiv2low_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrt2pidiv2low
        ret
procend

procstart _uX_mm_const_2divpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2divpi
        ret
procend

procstart _uX_mm_const_2div2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2div2pi
        ret
procend

procstart _uX_mm_const_2divsqrtpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2divsqrtpi
        ret
procend

procstart _uX_mm_const_2divsqrt2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_2divsqrt2pi
        ret
procend

procstart _uX_mm_const_sqrt2divpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sqrt2divpi
        ret
procend

procstart _uX_mm_const_logpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_logpi
        ret
procend

procstart _uX_mm_const_log2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_log2pi
        ret
procend

procstart _uX_mm_const_lnpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_lnpi
        ret
procend

procstart _uX_mm_const_ln2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_ln2pi
        ret
procend

procstart _uX_mm_const_powpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_powpi
        ret
procend

procstart _uX_mm_const_rcppowpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcppowpi
        ret
procend

procstart _uX_mm_const_pow2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2pi
        ret
procend

procstart _uX_mm_const_rcppow2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcppow2pi
        ret
procend

procstart _uX_mm_const_cbrtpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_cbrtpi
        ret
procend

procstart _uX_mm_const_rcpcbrtpi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpcbrtpi
        ret
procend

procstart _uX_mm_const_cbrt2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_cbrt2pi
        ret
procend

procstart _uX_mm_const_rcpcbrt2pi_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_rcpcbrt2pi
        ret
procend

procstart _uX_mm_const_ln2x1024_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_ln2x1024
        ret
procend

procstart _uX_mm_const_ln2x1025_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_ln2x1025
        ret
procend

procstart _uX_mm_const_ln2x1075_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_ln2x1075
        ret
procend

procstart _uX_mm_const_log2x1024_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_log2x1024
        ret
procend

procstart _uX_mm_const_log2x1075_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_log2x1075
        ret
procend

procstart _uX_mm_const_pow2tom126_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2tom126
        ret
procend

procstart _uX_mm_const_pow2to126_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2to126
        ret
procend

procstart _uX_mm_const_normhuge_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_normhuge
        ret
procend

procstart _uX_mm_const_pow2to23_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2to23
        ret
procend

procstart _uX_mm_const_pow2to24_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2to24
        ret
procend

procstart _uX_mm_const_maxi32pow2to23_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxi32pow2to23
        ret
procend

procstart _uX_mm_const_pow2to31_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2to31
        ret
procend

procstart _uX_mm_const_pow2to32_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2to32
        ret
procend

procstart _uX_mm_const_pow2to52_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2to52
        ret
procend

procstart _uX_mm_const_pow2to53_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2to53
        ret
procend

procstart _uX_mm_const_pow2to54_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2to54
        ret
procend

procstart _uX_mm_const_pow2tom54_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2tom54
        ret
procend

procstart _uX_mm_const_pow2to62_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2to62
        ret
procend

procstart _uX_mm_const_maxi64pow2to52_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_maxi64pow2to52
        ret
procend

procstart _uX_mm_const_pow2to63_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2to63
        ret
procend

procstart _uX_mm_const_pow2to64_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2to64
        ret
procend

procstart _uX_mm_const_pow2tom1022_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_pow2tom1022
        ret
procend

procstart _uX_mm_const_trigploss_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_trigploss
        ret
procend

procstart _uX_mm_const_degtorad_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_degtorad
        ret
procend

procstart _uX_mm_const_radtodeg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_radtodeg
        ret
procend

procstart _uX_mm_const_degtograd_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_degtograd
        ret
procend

procstart _uX_mm_const_gradtodeg_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_gradtodeg
        ret
procend

procstart _uX_mm_const_radtograd_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_radtograd
        ret
procend

procstart _uX_mm_const_gradtorad_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_gradtorad
        ret
procend

procstart _uX_mm_const_sungravity_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_sungravity
        ret
procend

procstart _uX_mm_const_jupitergravity_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_jupitergravity
        ret
procend

procstart _uX_mm_const_neptunegravity_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_neptunegravity
        ret
procend

procstart _uX_mm_const_saturngravity_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_saturngravity
        ret
procend

procstart _uX_mm_const_uranusgravity_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_uranusgravity
        ret
procend

procstart _uX_mm_const_earthgravity_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_earthgravity
        ret
procend

procstart _uX_mm_const_venusgravity_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_venusgravity
        ret
procend

procstart _uX_mm_const_marsgravity_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_marsgravity
        ret
procend

procstart _uX_mm_const_mercurygravity_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mercurygravity
        ret
procend

procstart _uX_mm_const_moongravity_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_moongravity
        ret
procend

procstart _uX_mm_const_plutogravity_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_plutogravity
        ret
procend

procstart _uX_mm_const_kmtoinch_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmtoinch
        ret
procend

procstart _uX_mm_const_kmtofeet_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmtofeet
        ret
procend

procstart _uX_mm_const_kmtoyards_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmtoyards
        ret
procend

procstart _uX_mm_const_kmtomiles_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmtomiles
        ret
procend

procstart _uX_mm_const_metoinch_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_metoinch
        ret
procend

procstart _uX_mm_const_metofeet_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_metofeet
        ret
procend

procstart _uX_mm_const_metoyards_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_metoyards
        ret
procend

procstart _uX_mm_const_metomiles_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_metomiles
        ret
procend

procstart _uX_mm_const_cmtoinch_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_cmtoinch
        ret
procend

procstart _uX_mm_const_cmtofeet_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_cmtofeet
        ret
procend

procstart _uX_mm_const_cmtoyards_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_cmtoyards
        ret
procend

procstart _uX_mm_const_cmtomiles_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_cmtomiles
        ret
procend

procstart _uX_mm_const_milltoinch_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milltoinch
        ret
procend

procstart _uX_mm_const_milltofeet_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milltofeet
        ret
procend

procstart _uX_mm_const_milltoyards_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milltoyards
        ret
procend

procstart _uX_mm_const_milltomiles_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milltomiles
        ret
procend

procstart _uX_mm_const_inchtomill_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_inchtomill
        ret
procend

procstart _uX_mm_const_inchtocm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_inchtocm
        ret
procend

procstart _uX_mm_const_inchtome_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_inchtome
        ret
procend

procstart _uX_mm_const_inchtokm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_inchtokm
        ret
procend

procstart _uX_mm_const_inchtofeet_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_inchtofeet
        ret
procend

procstart _uX_mm_const_inchtoyards_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_inchtoyards
        ret
procend

procstart _uX_mm_const_inchtomiles_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_inchtomiles
        ret
procend

procstart _uX_mm_const_feettomill_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feettomill
        ret
procend

procstart _uX_mm_const_feettocm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feettocm
        ret
procend

procstart _uX_mm_const_feettome_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feettome
        ret
procend

procstart _uX_mm_const_feettokm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feettokm
        ret
procend

procstart _uX_mm_const_feettoinch_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feettoinch
        ret
procend

procstart _uX_mm_const_feettoyards_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feettoyards
        ret
procend

procstart _uX_mm_const_feettomiles_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feettomiles
        ret
procend

procstart _uX_mm_const_yardstomill_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_yardstomill
        ret
procend

procstart _uX_mm_const_yardstocm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_yardstocm
        ret
procend

procstart _uX_mm_const_yardstome_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_yardstome
        ret
procend

procstart _uX_mm_const_yardstokm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_yardstokm
        ret
procend

procstart _uX_mm_const_yardstoinch_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_yardstoinch
        ret
procend

procstart _uX_mm_const_yardstofeet_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_yardstofeet
        ret
procend

procstart _uX_mm_const_yardstomiles_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_yardstomiles
        ret
procend

procstart _uX_mm_const_milestomill_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milestomill
        ret
procend

procstart _uX_mm_const_milestocm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milestocm
        ret
procend

procstart _uX_mm_const_milestome_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milestome
        ret
procend

procstart _uX_mm_const_milestokm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milestokm
        ret
procend

procstart _uX_mm_const_milestoinch_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milestoinch
        ret
procend

procstart _uX_mm_const_milestofeet_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milestofeet
        ret
procend

procstart _uX_mm_const_milestoyards_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milestoyards
        ret
procend

procstart _uX_mm_const_kmphtomeps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmphtomeps
        ret
procend

procstart _uX_mm_const_kmphtokmps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmphtokmps
        ret
procend

procstart _uX_mm_const_kmphtomepm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmphtomepm
        ret
procend

procstart _uX_mm_const_kmphtomilesph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmphtomilesph
        ret
procend

procstart _uX_mm_const_kmphtomilesps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmphtomilesps
        ret
procend

procstart _uX_mm_const_kmphtofeetps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmphtofeetps
        ret
procend

procstart _uX_mm_const_kmphtofeetpm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmphtofeetpm
        ret
procend

procstart _uX_mm_const_kmpstomeps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmpstomeps
        ret
procend

procstart _uX_mm_const_kmpstokmph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmpstokmph
        ret
procend

procstart _uX_mm_const_kmpstomepm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmpstomepm
        ret
procend

procstart _uX_mm_const_kmpstomilesph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmpstomilesph
        ret
procend

procstart _uX_mm_const_kmpstomilesps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmpstomilesps
        ret
procend

procstart _uX_mm_const_kmpstofeetps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmpstofeetps
        ret
procend

procstart _uX_mm_const_kmpstofeetpm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_kmpstofeetpm
        ret
procend

procstart _uX_mm_const_mepstokmph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepstokmph
        ret
procend

procstart _uX_mm_const_mepstokmps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepstokmps
        ret
procend

procstart _uX_mm_const_mepstomepm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepstomepm
        ret
procend

procstart _uX_mm_const_mepstomilesph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepstomilesph
        ret
procend

procstart _uX_mm_const_mepstomilesps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepstomilesps
        ret
procend

procstart _uX_mm_const_mepstofeetps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepstofeetps
        ret
procend

procstart _uX_mm_const_mepstofeetpm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepstofeetpm
        ret
procend

procstart _uX_mm_const_mepmtokmph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepmtokmph
        ret
procend

procstart _uX_mm_const_mepmtokmps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepmtokmps
        ret
procend

procstart _uX_mm_const_mepmtomeps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepmtomeps
        ret
procend

procstart _uX_mm_const_mepmtomilesph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepmtomilesph
        ret
procend

procstart _uX_mm_const_mepmtomilesps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepmtomilesps
        ret
procend

procstart _uX_mm_const_mepmtofeetps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepmtofeetps
        ret
procend

procstart _uX_mm_const_mepmtofeetpm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_mepmtofeetpm
        ret
procend

procstart _uX_mm_const_milesphtokmph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milesphtokmph
        ret
procend

procstart _uX_mm_const_milesphtokmps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milesphtokmps
        ret
procend

procstart _uX_mm_const_milesphtomeps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milesphtomeps
        ret
procend

procstart _uX_mm_const_milesphtomepm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milesphtomepm
        ret
procend

procstart _uX_mm_const_milesphtomilesps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milesphtomilesps
        ret
procend

procstart _uX_mm_const_milesphtofeetps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milesphtofeetps
        ret
procend

procstart _uX_mm_const_milesphtofeetpm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milesphtofeetpm
        ret
procend

procstart _uX_mm_const_milespstokmph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milespstokmph
        ret
procend

procstart _uX_mm_const_milespstokmps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milespstokmps
        ret
procend

procstart _uX_mm_const_milespstomeps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milespstomeps
        ret
procend

procstart _uX_mm_const_milespstomepm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milespstomepm
        ret
procend

procstart _uX_mm_const_milespstomilesph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milespstomilesph
        ret
procend

procstart _uX_mm_const_milespstofeetps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milespstofeetps
        ret
procend

procstart _uX_mm_const_milespstofeetpm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_milespstofeetpm
        ret
procend

procstart _uX_mm_const_feetpstokmph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpstokmph
        ret
procend

procstart _uX_mm_const_feetpstokmps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpstokmps
        ret
procend

procstart _uX_mm_const_feetpstomeps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpstomeps
        ret
procend

procstart _uX_mm_const_feetpstomepm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpstomepm
        ret
procend

procstart _uX_mm_const_feetpstomilesph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpstomilesph
        ret
procend

procstart _uX_mm_const_feetpstomilesps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpstomilesps
        ret
procend

procstart _uX_mm_const_feetpstofeetpm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpstofeetpm
        ret
procend

procstart _uX_mm_const_feetpmtokmph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpmtokmph
        ret
procend

procstart _uX_mm_const_feetpmtokmps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpmtokmps
        ret
procend

procstart _uX_mm_const_feetpmtomeps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpmtomeps
        ret
procend

procstart _uX_mm_const_feetpmtomepm_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpmtomepm
        ret
procend

procstart _uX_mm_const_feetpmtomilesph_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpmtomilesph
        ret
procend

procstart _uX_mm_const_feetpmtomilesps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpmtomilesps
        ret
procend

procstart _uX_mm_const_feetpmtofeetps_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_feetpmtofeetps
        ret
procend

procstart _uX_mm_const_soundspeedp50c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedp50c
        ret
procend

procstart _uX_mm_const_soundspeedp45c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedp45c
        ret
procend

procstart _uX_mm_const_soundspeedp40c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedp40c
        ret
procend

procstart _uX_mm_const_soundspeedp35c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedp35c
        ret
procend

procstart _uX_mm_const_soundspeedp30c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedp30c
        ret
procend

procstart _uX_mm_const_soundspeedp25c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedp25c
        ret
procend

procstart _uX_mm_const_soundspeedp20c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedp20c
        ret
procend

procstart _uX_mm_const_soundspeedp15c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedp15c
        ret
procend

procstart _uX_mm_const_soundspeedp10c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedp10c
        ret
procend

procstart _uX_mm_const_soundspeedp5c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedp5c
        ret
procend

procstart _uX_mm_const_soundspeed0c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeed0c
        ret
procend

procstart _uX_mm_const_soundspeedn5c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedn5c
        ret
procend

procstart _uX_mm_const_soundspeedn10c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedn10c
        ret
procend

procstart _uX_mm_const_soundspeedn15c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedn15c
        ret
procend

procstart _uX_mm_const_soundspeedn20c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedn20c
        ret
procend

procstart _uX_mm_const_soundspeedn25c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedn25c
        ret
procend

procstart _uX_mm_const_soundspeedn30c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedn30c
        ret
procend

procstart _uX_mm_const_soundspeedn35c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedn35c
        ret
procend

procstart _uX_mm_const_soundspeedn40c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedn40c
        ret
procend

procstart _uX_mm_const_soundspeedn45c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedn45c
        ret
procend

procstart _uX_mm_const_soundspeedn50c_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_soundspeedn50c
        ret
procend

procstart _uX_mm_const_schscale_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_schscale
        ret
procend

procstart _uX_mm_const_thscale_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_thscale
        ret
procend

procstart _uX_mm_const_expest1_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_expest1
        ret
procend

procstart _uX_mm_const_expest2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_expest2
        ret
procend

procstart _uX_mm_const_expest3_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_expest3
        ret
procend

procstart _uX_mm_const_expest4_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_expest4
        ret
procend

procstart _uX_mm_const_expest5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_expest5
        ret
procend

procstart _uX_mm_const_expest6_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_expest6
        ret
procend

procstart _uX_mm_const_expest7_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_expest7
        ret
procend

procstart _uX_mm_const_logest0_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_logest0
        ret
procend

procstart _uX_mm_const_logest1_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_logest1
        ret
procend

procstart _uX_mm_const_logest2_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_logest2
        ret
procend

procstart _uX_mm_const_logest3_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_logest3
        ret
procend

procstart _uX_mm_const_logest4_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_logest4
        ret
procend

procstart _uX_mm_const_logest5_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_logest5
        ret
procend

procstart _uX_mm_const_logest6_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_logest6
        ret
procend

procstart _uX_mm_const_logest7_sd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_0e_logest7
        ret
procend
    
    ;;DirectX Math constants;;

procstart _uX_mm_const_dbl_select00, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_select00
        ret
procend

procstart _uX_mm_const_dbl_select01, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_select01
        ret
procend

procstart _uX_mm_const_dbl_select10, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_select10
        ret
procend

procstart _uX_mm_const_dbl_select11, callconv, xmmword, < >, < >, < >
        movdqa          xmm0,           __m128i_dbl_select11
        ret
procend

procstart _uX_mm_const_select00_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_select00
        ret
procend

procstart _uX_mm_const_select01_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_select01
        ret
procend

procstart _uX_mm_const_select10_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_select10
        ret
procend

procstart _uX_mm_const_select11_pd, callconv, xmmword, < >, < >, < >
        movapd          xmm0,           __m128d_select11
        ret
procend
    
endif ;__MIC__

end
