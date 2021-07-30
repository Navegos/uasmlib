
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2021 (c) Navegos QA - UASM assembly library             / /
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

#ifndef uX_EMM_DATA_H
#define uX_EMM_DATA_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE2

/*#ifndef uX_XMM_INTRIN_H*/
/*#include "uXxmmintrin.h"*/
/*#endif*/  /* uX_XMM_INTRIN_H */

/*#ifndef _INCLUDED_EMM*/
/*#include <emmintrin.h>*/
/*#endif*/  /* _INCLUDED_EMM */

/*#ifndef uX_XMM_MATH_H*/
/*#include "uXxmmmath.h"*/
/*#endif*/  /* _INCLUDED_EMM */

uX_EXTERNC_BEGIN
uX_PACK_PUSH_XMM

/*
 * Data, Constants
 */

	//;;int8 mask;;

extern __m128i const __m128i_i8_true; //                __m128b; // i8_true
extern __m128i const __m128i_i8_false; //               __m128b; // i8_false
extern __m128i const __m128i_i8_max; //             __m128b; // i8_max
extern __m128i const __m128i_i8_min; //             __m128b; // i8_min
extern __m128i const __m128i_ui8_max; //                __m128b; // ui8_max
extern __m128i const __m128i_ui8_min; //                __m128b; // ui8_min
extern __m128i const __m128i_si8_max; //                __m128b; // si8_max
extern __m128i const __m128i_si8_min; //                __m128b; // si8_min
extern __m128i const __m128i_i8_error; //               __m128b; // i8_error
extern __m128i const __m128i_ui8_error; //          __m128b; // ui8_error
extern __m128i const __m128i_si8_error; //          __m128b; // si8_error
extern __m128i const __m128i_i8_0; //                __m128b, i8_0
extern __m128i const __m128i_i8_1; //                __m128b, i8_1
extern __m128i const __m128i_i8_neg0; //             __m128b, i8_neg0
extern __m128i const __m128i_i8_neg1; //             __m128b, i8_neg1
	
	//;;int8 mask low;;
	
extern __m128i const __m128i_i8_0e_true; //         __m128b; // i8_true; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i const __m128i_i8_0e_false; //            __m128b; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i const __m128i_i8_0e_max; //          __m128b; // i8_max; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i const __m128i_i8_0e_min; //          __m128b; // i8_min; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i const __m128i_ui8_0e_max; //         __m128b; // ui8_max; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i const __m128i_ui8_0e_min; //         __m128b; // ui8_min; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i const __m128i_si8_0e_max; //         __m128b; // si8_max; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i const __m128i_si8_0e_min; //         __m128b; // si8_min; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i const __m128i_i8_0e_error; //            __m128b; // i8_error; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i const __m128i_ui8_0e_error; //           __m128b; // ui8_error; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i const __m128i_si8_0e_error; //           __m128b; // si8_error; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i const __m128i_i8_0e_0; //             __m128b, i8_0, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
extern __m128i const __m128i_i8_0e_1; //             __m128b, i8_1, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
extern __m128i const __m128i_i8_0e_neg0; //          __m128b, i8_neg0, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
extern __m128i const __m128i_i8_0e_neg1; //          __m128b, i8_neg1, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false

	//;;int16 mask;;

extern __m128i const __m128i_i16_true; //               __m128w; // i16_true
extern __m128i const __m128i_i16_false; //              __m128w; // i16_false
extern __m128i const __m128i_i16_max; //                __m128w; // i16_max
extern __m128i const __m128i_i16_min; //                __m128w; // i16_min
extern __m128i const __m128i_ui16_max; //               __m128w; // ui16_max
extern __m128i const __m128i_ui16_min; //               __m128w; // ui16_min
extern __m128i const __m128i_si16_max; //               __m128w; // si16_max
extern __m128i const __m128i_si16_min; //               __m128w; // si16_min
extern __m128i const __m128i_i16_error; //              __m128w; // i16_error
extern __m128i const __m128i_ui16_error; //         __m128w; // ui16_error
extern __m128i const __m128i_si16_error; //         __m128w; // si16_error
extern __m128i const __m128i_i16_0; //               __m128b, i16_0
extern __m128i const __m128i_i16_1; //               __m128b, i16_1
extern __m128i const __m128i_i16_neg0; //               __m128b, i16_neg0
extern __m128i const __m128i_i16_neg1; //               __m128b, i16_neg1
	//;;int16 mask low;;
	
extern __m128i const __m128i_i16_0e_true; //            __m128w; // i16_true; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i const __m128i_i16_0e_false; //           __m128w; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i const __m128i_i16_0e_max; //         __m128w; // i16_max; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i const __m128i_i16_0e_min; //         __m128w; // i16_min; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i const __m128i_ui16_0e_max; //            __m128w; // ui16_max; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i const __m128i_ui16_0e_min; //            __m128w; // ui16_min; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i const __m128i_si16_0e_max; //            __m128w; // si16_max; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i const __m128i_si16_0e_min; //            __m128w; // si16_min; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i const __m128i_i16_0e_error; //           __m128w; // i16_error; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i const __m128i_ui16_0e_error; //          __m128w; // ui16_error; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i const __m128i_si16_0e_error; //          __m128w; // si16_error; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i const __m128i_i16_0e_0; //               __m128w, i16_0, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
extern __m128i const __m128i_i16_0e_1; //               __m128w, i16_1, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
extern __m128i const __m128i_i16_0e_neg0; //            __m128w, i16_neg0, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
extern __m128i const __m128i_i16_0e_neg1; //            __m128w, i16_neg1, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false

	//;;int32 mask;;

extern __m128i const __m128i_i32_true; //               __m128i; // i32_true
extern __m128i const __m128i_i32_false; //              __m128i; // i32_false
extern __m128i const __m128i_i32_max; //                __m128i; // i32_max
extern __m128i const __m128i_i32_min; //                __m128i; // i32_min
extern __m128i const __m128i_ui32_max; //               __m128i; // ui32_max
extern __m128i const __m128i_ui32_min; //               __m128i; // ui32_min
extern __m128i const __m128i_si32_max; //               __m128i; // si32_max
extern __m128i const __m128i_si32_min; //               __m128i; // si32_min
extern __m128i const __m128i_i32_error; //              __m128i; // i32_error
extern __m128i const __m128i_ui32_error; //         __m128i; // ui32_error
extern __m128i const __m128i_si32_error; //         __m128i; // si32_error
extern __m128i const __m128i_i32_0; //               __m128i, i32_0
extern __m128i const __m128i_i32_1; //               __m128i, i32_1
extern __m128i const __m128i_i32_neg0; //                __m128i, i32_neg0
extern __m128i const __m128i_i32_neg1; //                __m128i, i32_neg1

extern __m128i const __m128i_i32_select0000; //                __m128i, i32_false, i32_false, i32_false, i32_false
extern __m128i const __m128i_i32_select0001; //                __m128i, i32_false, i32_false, i32_false, i32_true
extern __m128i const __m128i_i32_select0010; //                __m128i, i32_false, i32_false, i32_true, i32_false
extern __m128i const __m128i_i32_select0100; //                __m128i, i32_false, i32_true, i32_false, i32_false
extern __m128i const __m128i_i32_select1000; //                __m128i, i32_true, i32_false, i32_false, i32_false
extern __m128i const __m128i_i32_select0011; //                __m128i, i32_false, i32_false, i32_true, i32_true
extern __m128i const __m128i_i32_select0111; //                __m128i, i32_false, i32_true, i32_true, i32_true
extern __m128i const __m128i_i32_select1111; //                __m128i, i32_true, i32_true, i32_true, i32_true
extern __m128i const __m128i_i32_select1110; //                __m128i, i32_true, i32_true, i32_true, i32_false
extern __m128i const __m128i_i32_select1100; //                __m128i, i32_true, i32_true, i32_false, i32_false
extern __m128i const __m128i_i32_select1001; //                __m128i, i32_true, i32_false, i32_false, i32_true
extern __m128i const __m128i_i32_select0110; //                __m128i, i32_false, i32_true, i32_true, i32_false
extern __m128i const __m128i_i32_select1011; //                __m128i, i32_true, i32_false, i32_true, i32_true
extern __m128i const __m128i_i32_select1101; //                __m128i, i32_true, i32_true, i32_false, i32_true
extern __m128i const __m128i_i32_select0101; //                __m128i, i32_false, i32_true, i32_false, i32_true
extern __m128i const __m128i_i32_select1010; //                __m128i, i32_true, i32_false, i32_true, i32_false

	//;;int32 mask low;;
	
extern __m128i const __m128i_i32_0e_true; //            __m128i; // i32_true; // i32_false; // i32_false; // i32_false
extern __m128i const __m128i_i32_0e_false; //           __m128i; // i32_false; // i32_false; // i32_false; // i32_false
extern __m128i const __m128i_i32_0e_max; //         __m128i; // i32_max; // i32_false; // i32_false; // i32_false
extern __m128i const __m128i_i32_0e_min; //         __m128i; // i32_min; // i32_false; // i32_false; // i32_false
extern __m128i const __m128i_ui32_0e_max; //            __m128i; // ui32_max; // i32_false; // i32_false; // i32_false
extern __m128i const __m128i_ui32_0e_min; //            __m128i; // ui32_min; // i32_false; // i32_false; // i32_false
extern __m128i const __m128i_si32_0e_max; //            __m128i; // si32_max; // i32_false; // i32_false; // i32_false
extern __m128i const __m128i_si32_0e_min; //            __m128i; // si32_min; // i32_false; // i32_false; // i32_false
extern __m128i const __m128i_i32_0e_error; //           __m128i; // i32_error; // i32_false; // i32_false; // i32_false
extern __m128i const __m128i_ui32_0e_error; //          __m128i; // ui32_error; // i32_false; // i32_false; // i32_false
extern __m128i const __m128i_si32_0e_error; //          __m128i; // si32_error; // i32_false; // i32_false; // i32_false
extern __m128i const __m128i_i32_0e_0; //            __m128i, i32_0, i32_false, i32_false, i32_false
extern __m128i const __m128i_i32_0e_1; //            __m128i, i32_1, i32_false, i32_false, i32_false
extern __m128i const __m128i_i32_0e_neg0; //             __m128i, i32_neg0, i32_false, i32_false, i32_false
extern __m128i const __m128i_i32_0e_neg1; //             __m128i, i32_neg1, i32_false, i32_false, i32_false

	//;;int64 mask;;

extern __m128i const __m128i_i64_true; //               __m128q; // i64_true
extern __m128i const __m128i_i64_false; //              __m128q; // i64_false
extern __m128i const __m128i_i64_max; //                __m128q; // i64_max
extern __m128i const __m128i_i64_min; //                __m128q; // i64_min
extern __m128i const __m128i_ui64_max; //               __m128q; // ui64_max
extern __m128i const __m128i_ui64_min; //               __m128q; // ui64_min
extern __m128i const __m128i_si64_max; //               __m128q; // si64_max
extern __m128i const __m128i_si64_min; //               __m128q; // si64_min
extern __m128i const __m128i_i64_error; //              __m128q; // i64_error
extern __m128i const __m128i_ui64_error; //         __m128q; // ui64_error
extern __m128i const __m128i_si64_error; //         __m128q; // si64_error
extern __m128i const __m128i_i64_0; //               __m128q, i64_0
extern __m128i const __m128i_i64_1; //               __m128q, i64_1
extern __m128i const __m128i_i64_neg0; //                __m128q, i64_neg0
extern __m128i const __m128i_i64_neg1; //                __m128q, i64_neg1

extern __m128i const __m128i_i64_select00; //                __m128q, i64_false, i64_false
extern __m128i const __m128i_i64_select01; //                __m128q, i64_false, i64_true
extern __m128i const __m128i_i64_select10; //                __m128q, i64_true, i64_false
extern __m128i const __m128i_i64_select11; //                __m128q, i64_true, i64_true

	//;;int64 mask low;;
	
extern __m128i const __m128i_i64_0e_true; //            __m128q; // i64_true; // i64_false
extern __m128i const __m128i_i64_0e_false; //           __m128q; // i64_false; // i64_false
extern __m128i const __m128i_i64_0e_max; //         __m128q; // i64_max; // i64_false
extern __m128i const __m128i_i64_0e_min; //         __m128q; // i64_min; // i64_false
extern __m128i const __m128i_ui64_0e_max; //            __m128q; // ui64_max; // i64_false
extern __m128i const __m128i_ui64_0e_min; //            __m128q; // ui64_min; // i64_false
extern __m128i const __m128i_si64_0e_max; //            __m128q; // si64_max; // i64_false
extern __m128i const __m128i_si64_0e_min; //            __m128q; // si64_min; // i64_false
extern __m128i const __m128i_i64_0e_error; //           __m128q; // i64_error; // i64_false
extern __m128i const __m128i_ui64_0e_error; //          __m128q; // ui64_error; // i64_false
extern __m128i const __m128i_si64_0e_error; //          __m128q; // si64_error; // i64_false
extern __m128i const __m128i_i64_0e_0; //            __m128q, i64_0, i64_false
extern __m128i const __m128i_i64_0e_1; //            __m128q, i64_1, i64_false
extern __m128i const __m128i_i64_0e_neg0; //             __m128q, i64_neg0, i64_false
extern __m128i const __m128i_i64_0e_neg1; //             __m128q, i64_neg1, i64_false

	//;;float mask;;

extern __m128i const __m128i_flt_bigoverflow; //        __m128i, 0x2000000
extern __m128i const __m128i_flt_bytevtbl; //           __m128i, 0x3f802000

extern __m128i const __m128i_flt_1lshl3; //         __m128i; // flt_1lshl3_msk
extern __m128i const __m128i_flt_1lshl4; //         __m128i; // flt_1lshl4_msk
extern __m128i const __m128i_flt_1lshl7; //         __m128i; // flt_1lshl7_msk
extern __m128i const __m128i_flt_1lshl8; //         __m128i; // flt_1lshl8_msk
extern __m128i const __m128i_flt_1lshl11; //            __m128i; // flt_1lshl11_msk
extern __m128i const __m128i_flt_1lshl12; //            __m128i; // flt_1lshl12_msk
extern __m128i const __m128i_flt_1lshl15; //            __m128i; // flt_1lshl15_msk
extern __m128i const __m128i_flt_1lshl16; //            __m128i; // flt_1lshl16_msk
extern __m128i const __m128i_flt_1lshl19; //            __m128i; // flt_1lshl19_msk
extern __m128i const __m128i_flt_1lshl20; //            __m128i; // flt_1lshl20_msk
extern __m128i const __m128i_flt_1lshl23; //            __m128i; // flt_1lshl23_msk
extern __m128i const __m128i_flt_1lshl24; //            __m128i; // flt_1lshl24_msk
extern __m128i const __m128i_flt_1lshl27; //            __m128i; // flt_1lshl27_msk
extern __m128i const __m128i_flt_1lshl28; //            __m128i; // flt_1lshl28_msk
extern __m128i const __m128i_flt_1lshl31; //            __m128i; // flt_1lshl31_msk
	
extern __m128i const __m128i_flt_neg1lshl3; //          __m128i; // flt_neg1lshl3_msk
extern __m128i const __m128i_flt_neg1lshl4; //          __m128i; // flt_neg1lshl4_msk
extern __m128i const __m128i_flt_neg1lshl7; //          __m128i; // flt_neg1lshl7_msk
extern __m128i const __m128i_flt_neg1lshl8; //          __m128i; // flt_neg1lshl8_msk
extern __m128i const __m128i_flt_neg1lshl11; //     __m128i; // flt_neg1lshl11_msk
extern __m128i const __m128i_flt_neg1lshl12; //     __m128i; // flt_neg1lshl12_msk
extern __m128i const __m128i_flt_neg1lshl15; //     __m128i; // flt_neg1lshl15_msk
extern __m128i const __m128i_flt_neg1lshl16; //     __m128i; // flt_neg1lshl16_msk
extern __m128i const __m128i_flt_neg1lshl19; //     __m128i; // flt_neg1lshl19_msk
extern __m128i const __m128i_flt_neg1lshl20; //     __m128i; // flt_neg1lshl20_msk
extern __m128i const __m128i_flt_neg1lshl23; //     __m128i; // flt_neg1lshl23_msk
extern __m128i const __m128i_flt_neg1lshl24; //     __m128i; // flt_neg1lshl24_msk
extern __m128i const __m128i_flt_neg1lshl27; //     __m128i; // flt_neg1lshl27_msk
extern __m128i const __m128i_flt_neg1lshl28; //     __m128i; // flt_neg1lshl28_msk
extern __m128i const __m128i_flt_neg1lshl31; //     __m128i; // flt_neg1lshl31_msk
	
extern __m128i const __m128i_flt_false; //              __m128i; // flt_false_msk
extern __m128i const __m128i_flt_true; //               __m128i; // flt_true_msk
extern __m128i const __m128i_flt_error; //              __m128i; // flt_error_msk
	
extern __m128i const __m128i_flt_magic; //              __m128i; // flt_magic_msk
extern __m128i const __m128i_flt_sign; //               __m128i; // flt_sign_msk
extern __m128i const __m128i_flt_invsign; //            __m128i; // flt_invsign_msk

extern __m128i const __m128i_flt_inf; //                __m128i; // flt_inf_msk
extern __m128i const __m128i_flt_fin; //                __m128i; // flt_fin_msk
extern __m128i const __m128i_flt_invinf; //         __m128i; // flt_invinf_msk
extern __m128i const __m128i_flt_neginf; //         __m128i; // flt_neginf_msk
extern __m128i const __m128i_flt_nan; //                __m128i; // flt_nan_msk
extern __m128i const __m128i_flt_qnan; //               __m128i; // flt_qnan_msk
extern __m128i const __m128i_flt_negqnan; //            __m128i; // flt_negqnan_msk
extern __m128i const __m128i_flt_nantest; //            __m128i; // flt_nantest_msk
extern __m128i const __m128i_flt_abs; //                __m128i; // flt_abs_msk
extern __m128i const __m128i_flt_min; //                __m128i; // flt_min_msk
extern __m128i const __m128i_flt_max; //                __m128i; // flt_max_msk
extern __m128i const __m128i_flt_nofraction; //     __m128i; // flt_nofraction_msk
extern __m128i const __m128i_flt_mindenorm; //          __m128i; // flt_mindenorm_msk
extern __m128i const __m128i_flt_denormlimit; //        __m128i; // flt_denormlimit_msk
extern __m128i const __m128i_flt_minnormal; //          __m128i; // flt_minnormal_msk
extern __m128i const __m128i_flt_maxnormal; //          __m128i; // flt_maxnormal_msk

extern __m128i const __m128i_flt_decdig; //         __m128i; // flt_decdig_msk
extern __m128i const __m128i_flt_dig; //                __m128i; // flt_dig_msk
extern __m128i const __m128i_flt_negdecdig; //          __m128i; // flt_negdecdig_msk
extern __m128i const __m128i_flt_negdig; //         __m128i; // flt_negdig_msk
extern __m128i const __m128i_flt_eps; //                __m128i; // flt_eps_msk
extern __m128i const __m128i_flt_epsilon; //            __m128i; // flt_epsilon_msk
extern __m128i const __m128i_flt_normeps; //            __m128i; // flt_normeps_msk
extern __m128i const __m128i_flt_guard; //              __m128i; // flt_guard_msk
extern __m128i const __m128i_flt_mantpow2; //           __m128i; // flt_mantpow2_msk
extern __m128i const __m128i_flt_maxmantpow2; //        __m128i; // flt_maxmantpow2_msk
extern __m128i const __m128i_flt_mantdig; //            __m128i; // flt_mantdig_msk
extern __m128i const __m128i_flt_mant; //               __m128i; // flt_mant_msk
extern __m128i const __m128i_flt_negmantdig; //     __m128i; // flt_negmantdig_msk
extern __m128i const __m128i_flt_negmant; //            __m128i; // flt_negmant_msk
extern __m128i const __m128i_flt_maxexp; //         __m128i; // flt_maxexp_msk
extern __m128i const __m128i_flt_expsign; //            __m128i; // flt_expsign_msk
extern __m128i const __m128i_flt_exp; //                __m128i; // flt_exp_msk
extern __m128i const __m128i_flt_negmaxexp; //          __m128i; // flt_negmaxexp_msk
extern __m128i const __m128i_flt_negexpsign; //     __m128i; // flt_negexpsign_msk
extern __m128i const __m128i_flt_negexp; //         __m128i; // flt_negexp_msk
extern __m128i const __m128i_flt_subnormalexp; //       __m128i; // flt_subnormalexp_msk
extern __m128i const __m128i_flt_minexp; //         __m128i; // flt_minexp_msk
extern __m128i const __m128i_flt_maxdecexp; //          __m128i; // flt_maxdecexp_msk
extern __m128i const __m128i_flt_negmaxdecexp; //       __m128i; // flt_negmaxdecexp_msk
extern __m128i const __m128i_flt_mindecexp; //          __m128i; // flt_mindecexp_msk
extern __m128i const __m128i_flt_expfield; //           __m128i; // flt_expfield_msk
extern __m128i const __m128i_flt_mantfield; //          __m128i; // flt_mantfield_msk
extern __m128i const __m128i_flt_norm; //               __m128i; // flt_norm_msk
extern __m128i const __m128i_flt_radix; //              __m128i; // flt_radix_msk
extern __m128i const __m128i_flt_rounds; //         __m128i; // flt_rounds_msk
extern __m128i const __m128i_flt_subdec; //         __m128i; // flt_subdec_msk
extern __m128i const __m128i_flt_sqrtmax; //            __m128i; // flt_sqrtmax_msk
extern __m128i const __m128i_flt_smallnormal; //        __m128i; // flt_smallnormal_msk

extern __m128i const __m128i_flt_halfminuseps; //       __m128i; // flt_halfminuseps_msk
extern __m128i const __m128i_flt_trueint; //            __m128i; // flt_trueint_msk

extern __m128i const __m128i_flt_byte; //               __m128i; // flt_byte_msk
extern __m128i const __m128i_flt_byte_even; //          __m128i; // flt_byte_even_msk
extern __m128i const __m128i_flt_byte_odd; //           __m128i; // flt_byte_odd_msk
extern __m128i const __m128i_flt_4low; //               __m128i; // flt_4low_msk
extern __m128i const __m128i_flt_4high; //              __m128i; // flt_4high_msk
extern __m128i const __m128i_flt_flip4; //              __m128i; // flt_flip4_msk
extern __m128i const __m128i_flt_8low; //               __m128i; // flt_8low_msk
extern __m128i const __m128i_flt_8high; //              __m128i; // flt_8high_msk
extern __m128i const __m128i_flt_flip8; //              __m128i; // flt_flip8_msk
extern __m128i const __m128i_flt_16low; //              __m128i; // flt_16low_msk
extern __m128i const __m128i_flt_16high; //         __m128i; // flt_16high_msk
extern __m128i const __m128i_flt_flip16; //         __m128i; // flt_flip16_msk
extern __m128i const __m128i_flt_24low; //              __m128i; // flt_24low_msk
extern __m128i const __m128i_flt_24high; //         __m128i; // flt_24high_msk
extern __m128i const __m128i_flt_flip24; //         __m128i; // flt_flip24_msk
extern __m128i const __m128i_flt_28low; //              __m128i; // flt_28low_msk
extern __m128i const __m128i_flt_28high; //         __m128i; // flt_28high_msk
extern __m128i const __m128i_flt_flip28; //         __m128i; // flt_flip28_msk
extern __m128i const __m128i_flt_32low; //              __m128i; // flt_32low_msk
extern __m128i const __m128i_flt_32high; //         __m128i; // flt_32high_msk
extern __m128i const __m128i_flt_flip32; //         __m128i; // flt_flip32_msk

extern __m128i const __m128i_flt_0; //                  __m128i; // flt_0e_msk
extern __m128i const __m128i_flt_0d5; //                __m128i; // flt_0d5_msk
extern __m128i const __m128i_flt_1; //                  __m128i; // flt_1_msk
extern __m128i const __m128i_flt_1d5; //                __m128i; // flt_1d5_msk
extern __m128i const __m128i_flt_2; //                  __m128i; // flt_2_msk
extern __m128i const __m128i_flt_2d5; //                __m128i; // flt_2d5_msk
extern __m128i const __m128i_flt_3; //                  __m128i; // flt_3_msk
extern __m128i const __m128i_flt_4; //                  __m128i; // flt_4_msk
extern __m128i const __m128i_flt_5; //                  __m128i; // flt_5_msk
extern __m128i const __m128i_flt_6; //                  __m128i; // flt_6_msk
extern __m128i const __m128i_flt_7; //                  __m128i; // flt_7_msk
extern __m128i const __m128i_flt_8; //                  __m128i; // flt_8_msk
extern __m128i const __m128i_flt_9; //                  __m128i; // flt_9_msk
extern __m128i const __m128i_flt_10; //             __m128i; // flt_10_msk
extern __m128i const __m128i_flt_20; //             __m128i; // flt_20_msk
extern __m128i const __m128i_flt_23; //             __m128i; // flt_23_msk
extern __m128i const __m128i_flt_23d5; //               __m128i; // flt_23d5_msk
extern __m128i const __m128i_flt_24; //             __m128i; // flt_24_msk
extern __m128i const __m128i_flt_24d5; //               __m128i; // flt_24d5_msk
extern __m128i const __m128i_flt_25; //             __m128i; // flt_25_msk

extern __m128i const __m128i_flt_128; //                __m128i; // flt_128_msk

extern __m128i const __m128i_flt_253; //                __m128i; // flt_253_msk

extern __m128i const __m128i_flt_neg0; //               __m128i; // flt_neg0_msk
extern __m128i const __m128i_flt_neg1; //               __m128i; // flt_neg1_msk

extern __m128i const __m128i_flt_neg150; //         __m128i; // flt_neg150_msk

extern __m128i const __m128i_flt_bin128; //         __m128i; // flt_bin128_msk
extern __m128i const __m128i_flt_binneg150; //          __m128i; // flt_binneg150_msk

extern __m128i const __m128i_flt_maxrand; //            __m128i; // flt_maxrand_msk

extern __m128i const __m128i_flt_maxi8; //              __m128i; // flt_maxi8_msk
extern __m128i const __m128i_flt_mini8; //              __m128i; // flt_mini8_msk
extern __m128i const __m128i_flt_maxu8; //              __m128i; // flt_maxu8_msk

extern __m128i const __m128i_flt_maxi16; //         __m128i; // flt_maxi16_msk
extern __m128i const __m128i_flt_mini16; //         __m128i; // flt_mini16_msk
extern __m128i const __m128i_flt_maxu16; //         __m128i; // flt_maxu16_msk

extern __m128i const __m128i_flt_maxi32; //         __m128i; // flt_maxi32_msk
extern __m128i const __m128i_flt_mini32; //         __m128i; // flt_mini32_msk
extern __m128i const __m128i_flt_maxu32; //         __m128i; // flt_maxu32_msk

extern __m128i const __m128i_flt_maxi8xu8; //           __m128i; // flt_maxi8xu8_msk
extern __m128i const __m128i_flt_mini8xu8; //           __m128i; // flt_mini8xu8_msk
extern __m128i const __m128i_flt_maxi8xu16; //          __m128i; // flt_maxi8xu16_msk
extern __m128i const __m128i_flt_mini8xu16; //          __m128i; // flt_mini8xu16_msk

extern __m128i const __m128i_flt_maxi16xu16; //     __m128i; // flt_maxi16xu16_msk
extern __m128i const __m128i_flt_mini16xu16; //     __m128i; // flt_mini16xu16_msk

extern __m128i const __m128i_flt_fixunsigned; //        __m128i; // flt_fixunsigned_msk
extern __m128i const __m128i_flt_fixunsigned32; //      __m128i; // flt_fixunsigned32_msk
extern __m128i const __m128i_flt_fixmaxi32; //          __m128i; // flt_fixmaxi32_msk
extern __m128i const __m128i_flt_fixmaxu32; //          __m128i; // flt_fixmaxu32_msk
		

	//;;float mask low;;

extern __m128i const __m128i_flt_0e_bigoverflow; //        __m128i, 0x2000000, flt_false_msk, flt_false_msk, flt_false_msk
extern __m128i const __m128i_flt_0e_bytevtbl; //           __m128i, 0x3f802000, flt_false_msk, flt_false_msk, flt_false_msk

extern __m128i const __m128i_flt_0e_1lshl3; //              __m128i; // flt_1lshl3_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl4; //              __m128i; // flt_1lshl4_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl7; //              __m128i; // flt_1lshl7_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl8; //              __m128i; // flt_1lshl8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl11; //         __m128i; // flt_1lshl11_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl12; //         __m128i; // flt_1lshl12_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl15; //         __m128i; // flt_1lshl15_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl16; //         __m128i; // flt_1lshl16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl19; //         __m128i; // flt_1lshl19_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl20; //         __m128i; // flt_1lshl20_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl23; //         __m128i; // flt_1lshl23_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl24; //         __m128i; // flt_1lshl24_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl27; //         __m128i; // flt_1lshl27_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl28; //         __m128i; // flt_1lshl28_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1lshl31; //         __m128i; // flt_1lshl31_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
	
extern __m128i const __m128i_flt_0e_neg1lshl3; //           __m128i; // flt_neg1lshl3_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl4; //           __m128i; // flt_neg1lshl4_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl7; //           __m128i; // flt_neg1lshl7_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl8; //           __m128i; // flt_neg1lshl8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl11; //          __m128i; // flt_neg1lshl11_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl12; //          __m128i; // flt_neg1lshl12_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl15; //          __m128i; // flt_neg1lshl15_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl16; //          __m128i; // flt_neg1lshl16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl19; //          __m128i; // flt_neg1lshl19_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl20; //          __m128i; // flt_neg1lshl20_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl23; //          __m128i; // flt_neg1lshl23_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl24; //          __m128i; // flt_neg1lshl24_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl27; //          __m128i; // flt_neg1lshl27_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl28; //          __m128i; // flt_neg1lshl28_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1lshl31; //          __m128i; // flt_neg1lshl31_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
	
extern __m128i const __m128i_flt_0e_false; //               __m128i; // flt_false_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_true; //                __m128i; // flt_true_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_error; //               __m128i; // flt_error_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
	
extern __m128i const __m128i_flt_0e_magic; //               __m128i; // flt_magic_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_sign; //                __m128i; // flt_sign_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_invsign; //         __m128i; // flt_invsign_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_inf; //             __m128i; // flt_inf_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_fin; //             __m128i; // flt_fin_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_invinf; //              __m128i; // flt_invinf_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neginf; //              __m128i; // flt_neginf_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_nan; //             __m128i; // flt_nan_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_qnan; //                __m128i; // flt_qnan_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_negqnan; //         __m128i; // flt_negqnan_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_nantest; //         __m128i; // flt_nantest_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_abs; //             __m128i; // flt_abs_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_min; //             __m128i; // flt_min_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_max; //             __m128i; // flt_max_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_nofraction; //          __m128i; // flt_nofraction_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_mindenorm; //           __m128i; // flt_mindenorm_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_denormlimit; //     __m128i; // flt_denormlimit_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_minnormal; //           __m128i; // flt_minnormal_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_maxnormal; //           __m128i; // flt_maxnormal_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_decdig; //              __m128i; // flt_decdig_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_dig; //             __m128i; // flt_dig_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_negdecdig; //           __m128i; // flt_negdecdig_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_negdig; //              __m128i; // flt_negdig_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_eps; //             __m128i; // flt_eps_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_epsilon; //         __m128i; // flt_epsilon_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_normeps; //         __m128i; // flt_normeps_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_guard; //               __m128i; // flt_guard_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_mantpow2; //            __m128i; // flt_mantpow2_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_maxmantpow2; //     __m128i; // flt_maxmantpow2_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_mantdig; //         __m128i; // flt_mantdig_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_mant; //                __m128i; // flt_mant_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_negmantdig; //          __m128i; // flt_negmantdig_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_negmant; //         __m128i; // flt_negmant_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_maxexp; //              __m128i; // flt_maxexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_expsign; //         __m128i; // flt_expsign_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_exp; //             __m128i; // flt_exp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_negmaxexp; //           __m128i; // flt_negmaxexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_negexpsign; //          __m128i; // flt_negexpsign_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_negexp; //              __m128i; // flt_negexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_subnormalexp; //        __m128i; // flt_subnormalexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_minexp; //              __m128i; // flt_minexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_maxdecexp; //           __m128i; // flt_maxdecexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_negmaxdecexp; //        __m128i; // flt_negmaxdecexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_mindecexp; //           __m128i; // flt_mindecexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_expfield; //            __m128i; // flt_expfield_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_mantfield; //           __m128i; // flt_mantfield_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_norm; //                __m128i; // flt_norm_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_radix; //               __m128i; // flt_radix_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_rounds; //              __m128i; // flt_rounds_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_subdec; //              __m128i; // flt_subdec_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_sqrtmax; //         __m128i; // flt_sqrtmax_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_smallnormal; //     __m128i; // flt_smallnormal_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_halfminuseps; //        __m128i; // flt_halfminuseps_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_trueint; //         __m128i; // flt_trueint_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_byte; //                __m128i; // flt_byte_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_byte_even; //       __m128i; // flt_byte_even_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_byte_odd; //            __m128i; // flt_byte_odd_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_4low; //                __m128i; // flt_4low_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_4high; //               __m128i; // flt_4high_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_flip4; //               __m128i; // flt_flip4_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_8low; //                __m128i; // flt_8low_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_8high; //               __m128i; // flt_8high_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_flip8; //               __m128i; // flt_flip8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_16low; //               __m128i; // flt_16low_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_16high; //              __m128i; // flt_16high_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_flip16; //              __m128i; // flt_flip16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_24low; //               __m128i; // flt_24low_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_24high; //              __m128i; // flt_24high_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_flip24; //              __m128i; // flt_flip24_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_28low; //               __m128i; // flt_28low_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_28high; //              __m128i; // flt_28high_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_flip28; //              __m128i; // flt_flip28_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_32low; //               __m128i; // flt_32low_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_32high; //              __m128i; // flt_32high_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_flip32; //              __m128i; // flt_flip32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_0; //                   __m128i; // flt_0e_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_0d5; //             __m128i; // flt_0d5_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1; //                   __m128i; // flt_1_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_1d5; //             __m128i; // flt_1d5_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_2; //                   __m128i; // flt_2_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_2d5; //             __m128i; // flt_2d5_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_3; //                   __m128i; // flt_3_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_4; //                   __m128i; // flt_4_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_5; //                   __m128i; // flt_5_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_6; //                   __m128i; // flt_6_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_7; //                   __m128i; // flt_7_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_8; //                   __m128i; // flt_8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_9; //                   __m128i; // flt_9_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_10; //                  __m128i; // flt_10_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_20; //                  __m128i; // flt_20_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_23; //                  __m128i; // flt_23_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_23d5; //                __m128i; // flt_23d5_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_24; //                  __m128i; // flt_24_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_24d5; //                __m128i; // flt_24d5_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_25; //                  __m128i; // flt_25_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_128; //             __m128i; // flt_128_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_253; //             __m128i; // flt_253_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_neg0; //                __m128i; // flt_neg0_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_neg1; //                __m128i; // flt_neg1_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_neg150; //              __m128i; // flt_neg150_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_bin128; //              __m128i; // flt_bin128_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_binneg150; //           __m128i; // flt_binneg150_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_maxrand; //         __m128i; // flt_maxrand_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_maxi8; //               __m128i; // flt_maxi8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_mini8; //               __m128i; // flt_mini8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_maxu8; //               __m128i; // flt_maxu8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_maxi16; //              __m128i; // flt_maxi16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_mini16; //              __m128i; // flt_mini16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_maxu16; //              __m128i; // flt_maxu16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_maxi32; //              __m128i; // flt_maxi32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_mini32; //              __m128i; // flt_mini32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_maxu32; //              __m128i; // flt_maxu32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_maxi8xu8; //            __m128i; // flt_maxi8xu8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_mini8xu8; //            __m128i; // flt_mini8xu8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_maxi8xu16; //           __m128i; // flt_maxi8xu16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_mini8xu16; //           __m128i; // flt_mini8xu16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_maxi16xu16; //          __m128i; // flt_maxi16xu16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_mini16xu16; //          __m128i; // flt_mini16xu16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i const __m128i_flt_0e_fixunsigned; //     __m128i; // flt_fixunsigned_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_fixunsigned32; //       __m128i; // flt_fixunsigned32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_fixmaxi32; //           __m128i; // flt_fixmaxi32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_0e_fixmaxu32; //           __m128i; // flt_fixmaxu32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

	//;;DirectX Math constants;;

extern __m128i const __m128i_flt_negativezero; //               __m128i; // flt_neg0_msk; // flt_neg0_msk; // flt_neg0_msk; // flt_neg0_msk
extern __m128i const __m128i_flt_negate3; //                    __m128i; // flt_neg0_msk; // flt_neg0_msk; // flt_neg0_msk; // flt_false_msk
extern __m128i const __m128i_flt_maskxy; //                     __m128i; // flt_true_msk; // flt_true_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_maskxyz; //                    __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_false_msk
extern __m128i const __m128i_flt_maskxyzw; //                   __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_true_msk
extern __m128i const __m128i_flt_mask3; //                  __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_false_msk
extern __m128i const __m128i_flt_maskx; //                  __m128i; // flt_true_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_masky; //                  __m128i; // flt_false_msk; // flt_true_msk; // flt_false_msk; // flt_false_msk
extern __m128i const __m128i_flt_maskz; //                  __m128i; // flt_false_msk; // flt_false_msk; // flt_true_msk; // flt_false_msk
extern __m128i const __m128i_flt_maskw; //                  __m128i; // flt_false_msk; // flt_false_msk; // flt_false_msk; // flt_true_msk
extern __m128i const __m128i_flt_infinity; //                   __m128i; // flt_inf_msk; // flt_inf_msk; // flt_inf_msk; // flt_inf_msk
extern __m128i const __m128i_flt_qnantest; //                   __m128i; // flt_nantest_msk; // flt_nantest_msk; // flt_nantest_msk; // flt_nantest_msk
extern __m128i const __m128i_flt_absmask; //                    __m128i; // flt_abs_msk; // flt_abs_msk; // flt_abs_msk; // flt_abs_msk
extern __m128i const __m128i_flt_fltmin; //                     __m128i; // flt_min_msk; // flt_min_msk; // flt_min_msk; // flt_min_msk
extern __m128i const __m128i_flt_fltmax; //                     __m128i; // flt_max_msk; // flt_max_msk; // flt_max_msk; // flt_max_msk
extern __m128i const __m128i_flt_negonemask; //                 __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_true_msk
extern __m128i const __m128i_flt_maska8r8g8b8; //               __m128i; // flt_a8_msk; // flt_r8_msk; // flt_g8_msk; // flt_b8_msk
extern __m128i const __m128i_flt_flipa8r8g8b8; //               __m128i; // flt_flipa8_msk; // flt_flipr8_msk; // flt_flipg8_msk; // flt_flipb8_msk
extern __m128i const __m128i_flt_maska2b10g10r10; //            __m128i; // flt_a2_msk; // flt_b10_msk; // flt_g10_msk; // flt_r10_msk
extern __m128i const __m128i_flt_flipa2b10g10r10; //            __m128i; // flt_flipa2_msk; // flt_flipb10_msk; // flt_flipg10_msk; // flt_flipr10_msk
extern __m128i const __m128i_flt_maskx16y16; //                 __m128i; // flt_16low_msk; // flt_16high_msk; // flt_false; // flt_false
extern __m128i const __m128i_flt_flipx16y16; //                 __m128i; // flt_flip16_msk; // flt_flip16_msk; // flt_false; // flt_false
extern __m128i const __m128i_flt_maskx16y16z16w16; //           __m128i; // flt_16low_msk; // flt_16low_msk; // flt_16high_msk; // flt_16high_msk
extern __m128i const __m128i_flt_flipx16y16z16w16; //           __m128i; // flt_flip16_msk; // flt_flip16_msk; // flt_false; // flt_false
extern __m128i const __m128i_flt_maskbyte; //                   __m128i; // flt_byte_msk; // flt_byte_msk; // flt_byte_msk; // flt_byte_msk
extern __m128i const __m128i_flt_select0000; //                 __m128i; flt_false, flt_false, flt_false, flt_false
extern __m128i const __m128i_flt_select0001; //                 __m128i; flt_false, flt_false, flt_false, flt_true
extern __m128i const __m128i_flt_select0010; //                 __m128i; flt_false, flt_false, flt_true, flt_false
extern __m128i const __m128i_flt_select0100; //                 __m128i; flt_false, flt_true, flt_false, flt_false
extern __m128i const __m128i_flt_select1000; //                 __m128i; flt_true, flt_false, flt_false, flt_false
extern __m128i const __m128i_flt_select0011; //                 __m128i; flt_false, flt_false, flt_true, flt_true
extern __m128i const __m128i_flt_select0111; //                 __m128i; flt_false, flt_true, flt_true, flt_true
extern __m128i const __m128i_flt_select1111; //                 __m128i; flt_true, flt_true, flt_true, flt_true
extern __m128i const __m128i_flt_select1110; //                 __m128i; flt_true, flt_true, flt_true, flt_false
extern __m128i const __m128i_flt_select1100; //                 __m128i; flt_true, flt_true, flt_false, flt_false
extern __m128i const __m128i_flt_select1001; //                 __m128i; flt_true, flt_false, flt_false, flt_true
extern __m128i const __m128i_flt_select0110; //                 __m128i; flt_false, flt_true, flt_true, flt_false
extern __m128i const __m128i_flt_select1011; //                 __m128i; flt_true, flt_false, flt_true, flt_true
extern __m128i const __m128i_flt_select1101; //                 __m128i; flt_true, flt_true, flt_false, flt_true
extern __m128i const __m128i_flt_select0101; //                 __m128i; flt_false, flt_true, flt_false, flt_true
extern __m128i const __m128i_flt_select1010; //                 __m128i; flt_true, flt_false, flt_true, flt_false
extern __m128i const __m128i_flt_onehalfminusepsilon; //        __m128i; // flt_halfminuseps_msk; // flt_halfminuseps_msk; // flt_halfminuseps_msk; // flt_halfminuseps_msk
extern __m128i const __m128i_flt_flipy; //                  __m128i; // flt_false; // flt_flip32_msk; // flt_false; // flt_false
extern __m128i const __m128i_flt_flipz; //                  __m128i; // flt_false; // flt_false; // flt_flip32_msk; // flt_false
extern __m128i const __m128i_flt_flipw; //                  __m128i; // flt_false; // flt_false; // flt_false; // flt_flip32_msk
extern __m128i const __m128i_flt_flipyz; //                     __m128i; // flt_false; // flt_flip32_msk; // flt_flip32_msk; // flt_false
extern __m128i const __m128i_flt_flipzw; //                     __m128i; // flt_false; // flt_false; // flt_flip32_msk; // flt_flip32_msk
extern __m128i const __m128i_flt_flipyw; //                     __m128i; // flt_false; // flt_flip32_msk; // flt_false; // flt_flip32_msk
extern __m128i const __m128i_flt_maskdec4; //                   __m128i; // 0x000003ff; // 0x000ffc00; // 0x3ff00000; // 0xc0000000
extern __m128i const __m128i_flt_xordec4; //                    __m128i; // 0x00000200; // 0x00080000; // 0x20000000; // 0x00000000
extern __m128i const __m128i_flt_maskbyte4; //              __m128i; // 0x000000ff; // 0x0000ff00; // 0x00ff0000; // 0xff000000
extern __m128i const __m128i_flt_xorbyte4; //                   __m128i; // 0x00000080; // 0x00008000; // 0x00800000; // 0x00000000
extern __m128i const __m128i_flt_exponentbias; //               __m128i; // flt_exp_msk; // flt_exp_msk; // flt_exp_msk; // flt_exp_msk
extern __m128i const __m128i_flt_subnormalexponent; //      __m128i; // flt_subnormalexp_msk; // flt_subnormalexp_msk; // flt_subnormalexp_msk; // flt_subnormalexp_msk
extern __m128i const __m128i_flt_numtrailing; //                __m128i; // flt_mant_msk; // flt_mant_msk; // flt_mant_msk; // flt_mant_msk
extern __m128i const __m128i_flt_neginfinity; //                __m128i; // flt_neginf_msk; // flt_neginf_msk; // flt_neginf_msk; // flt_neginf_msk

namespace_DirectX
	/*uX_GLOBAL_CONST XMVECTORF32 g_UShortMax = __m128_ushortmax;*/
namespace_DirectX_end

namespace_uX
namespace_XMM

namespace_XMM_end
namespace_uX_end

/*
# define g_XMSinCoefficients0
# define g_XMSinCoefficients1
# define g_XMCosCoefficients0
# define g_XMCosCoefficients1
# define g_XMTanCoefficients0
# define g_XMTanCoefficients1
# define g_XMTanCoefficients2
# define g_XMArcCoefficients0
# define g_XMArcCoefficients1
# define g_XMATanCoefficients0
# define g_XMATanCoefficients1
# define g_XMATanEstCoefficients0
# define g_XMATanEstCoefficients1
# define g_XMTanEstCoefficients
# define g_XMArcEstCoefficients
# define g_XMPiConstants0
# define g_XMIdentityR0
# define g_XMIdentityR1
# define g_XMIdentityR2
# define g_XMIdentityR3
# define g_XMNegIdentityR0
# define g_XMNegIdentityR1
# define g_XMNegIdentityR2
# define g_XMNegIdentityR3
# define g_XMNegativeZero
# define g_XMNegate3
# define g_XMMaskXY
# define g_XMMask3
# define g_XMMaskX
# define g_XMMaskY
# define g_XMMaskZ
# define g_XMMaskW
# define g_XMOne
# define g_XMOne3
# define g_XMZero
# define g_XMTwo
# define g_XMFour
# define g_XMSix
# define g_XMNegativeOne
# define g_XMOneHalf
# define g_XMNegativeOneHalf
# define g_XMNegativeTwoPi
# define g_XMNegativePi
# define g_XMHalfPi
# define g_XMPi
# define g_XMReciprocalPi
# define g_XMTwoPi
# define g_XMReciprocalTwoPi
# define g_XMEpsilon
# define g_XMInfinity
# define g_XMQNaN
# define g_XMQNaNTest
# define g_XMAbsMask
# define g_XMFltMin
# define g_XMFltMax
# define g_XMNegOneMask
# define g_XMMaskA8R8G8B8
# define g_XMFlipA8R8G8B8
# define g_XMFixAA8R8G8B8
# define g_XMNormalizeA8R8G8B8
# define g_XMMaskA2B10G10R10
# define g_XMFlipA2B10G10R10
# define g_XMFixAA2B10G10R10
# define g_XMNormalizeA2B10G10R10
# define g_XMMaskX16Y16
# define g_XMFlipX16Y16
# define g_XMFixX16Y16
# define g_XMNormalizeX16Y16
# define g_XMMaskX16Y16Z16W16
# define g_XMFlipX16Y16Z16W16
# define g_XMFixX16Y16Z16W16
# define g_XMNormalizeX16Y16Z16W16
# define g_XMNoFraction
# define g_XMMaskByte
# define g_XMNegateX
# define g_XMNegateY
# define g_XMNegateZ
# define g_XMNegateW
# define g_XMSelect0101
# define g_XMSelect1010
# define g_XMOneHalfMinusEpsilon
# define g_XMSelect1000
# define g_XMSelect1100
# define g_XMSelect1110
# define g_XMSelect1011
# define g_XMFixupY16
# define g_XMFixupY16W16
# define g_XMFlipY
# define g_XMFlipZ
# define g_XMFlipW
# define g_XMFlipYZ
# define g_XMFlipZW
# define g_XMFlipYW
# define g_XMMaskDec4
# define g_XMXorDec4
# define g_XMAddUDec4
# define g_XMAddDec4
# define g_XMMulDec4
# define g_XMMaskByte4
# define g_XMXorByte4
# define g_XMAddByte4
# define g_XMFixUnsigned
# define g_XMMaxInt
# define g_XMMaxUInt
# define g_XMUnsignedFix
# define g_XMsrgbScale
# define g_XMsrgbA
# define g_XMsrgbA1
# define g_XMExponentBias
# define g_XMSubnormalExponent
# define g_XMNumTrailing
# define g_XMMinNormal
# define g_XMNegInfinity
# define g_XMNegQNaN
# define g_XMBin128
# define g_XMBinNeg150
# define g_XM253
# define g_XMExpEst1
# define g_XMExpEst2
# define g_XMExpEst3
# define g_XMExpEst4
# define g_XMExpEst5
# define g_XMExpEst6
# define g_XMExpEst7
# define g_XMLogEst0
# define g_XMLogEst1
# define g_XMLogEst2
# define g_XMLogEst3
# define g_XMLogEst4
# define g_XMLogEst5
# define g_XMLogEst6
# define g_XMLogEst7
# define g_XMLgE
# define g_XMInvLgE
# define g_XMLg10
# define g_XMInvLg10
# define g_UByteMax
# define g_ByteMin
# define g_ByteMax
# define g_ShortMin
# define g_ShortMax
# define g_UShortMax*/

	//;;double mask;;

extern __m128i const __m128i_dbl_1lshl3; //         __m128q; // dbl_1lshl3_msk
extern __m128i const __m128i_dbl_1lshl4; //         __m128q; // dbl_1lshl4_msk
extern __m128i const __m128i_dbl_1lshl7; //         __m128q; // dbl_1lshl7_msk
extern __m128i const __m128i_dbl_1lshl8; //         __m128q; // dbl_1lshl8_msk
extern __m128i const __m128i_dbl_1lshl11; //            __m128q; // dbl_1lshl11_msk
extern __m128i const __m128i_dbl_1lshl12; //            __m128q; // dbl_1lshl12_msk
extern __m128i const __m128i_dbl_1lshl15; //            __m128q; // dbl_1lshl15_msk
extern __m128i const __m128i_dbl_1lshl16; //            __m128q; // dbl_1lshl16_msk
extern __m128i const __m128i_dbl_1lshl19; //            __m128q; // dbl_1lshl19_msk
extern __m128i const __m128i_dbl_1lshl20; //            __m128q; // dbl_1lshl20_msk
extern __m128i const __m128i_dbl_1lshl23; //            __m128q; // dbl_1lshl23_msk
extern __m128i const __m128i_dbl_1lshl24; //            __m128q; // dbl_1lshl24_msk
extern __m128i const __m128i_dbl_1lshl27; //            __m128q; // dbl_1lshl27_msk
extern __m128i const __m128i_dbl_1lshl28; //            __m128q; // dbl_1lshl28_msk
extern __m128i const __m128i_dbl_1lshl31; //            __m128q; // dbl_1lshl31_msk
extern __m128i const __m128i_dbl_1lshl32; //            __m128q; // dbl_1lshl32_msk
extern __m128i const __m128i_dbl_1lshl35; //            __m128q; // dbl_1lshl35_msk
extern __m128i const __m128i_dbl_1lshl36; //            __m128q; // dbl_1lshl36_msk
extern __m128i const __m128i_dbl_1lshl39; //            __m128q; // dbl_1lshl39_msk
extern __m128i const __m128i_dbl_1lshl40; //            __m128q; // dbl_1lshl40_msk
extern __m128i const __m128i_dbl_1lshl43; //            __m128q; // dbl_1lshl43_msk
extern __m128i const __m128i_dbl_1lshl44; //            __m128q; // dbl_1lshl44_msk
extern __m128i const __m128i_dbl_1lshl47; //            __m128q; // dbl_1lshl47_msk
extern __m128i const __m128i_dbl_1lshl48; //            __m128q; // dbl_1lshl48_msk
extern __m128i const __m128i_dbl_1lshl51; //            __m128q; // dbl_1lshl51_msk
extern __m128i const __m128i_dbl_1lshl52; //            __m128q; // dbl_1lshl52_msk
extern __m128i const __m128i_dbl_1lshl55; //            __m128q; // dbl_1lshl55_msk
extern __m128i const __m128i_dbl_1lshl56; //            __m128q; // dbl_1lshl56_msk
extern __m128i const __m128i_dbl_1lshl59; //            __m128q; // dbl_1lshl59_msk
extern __m128i const __m128i_dbl_1lshl60; //            __m128q; // dbl_1lshl60_msk
extern __m128i const __m128i_dbl_1lshl63; //            __m128q; // dbl_1lshl63_msk

extern __m128i const __m128i_dbl_neg1lshl3; //          __m128q; // dbl_neg1lshl3_msk
extern __m128i const __m128i_dbl_neg1lshl4; //          __m128q; // dbl_neg1lshl4_msk
extern __m128i const __m128i_dbl_neg1lshl7; //          __m128q; // dbl_neg1lshl7_msk
extern __m128i const __m128i_dbl_neg1lshl8; //          __m128q; // dbl_neg1lshl8_msk
extern __m128i const __m128i_dbl_neg1lshl11; //     __m128q; // dbl_neg1lshl11_msk
extern __m128i const __m128i_dbl_neg1lshl12; //     __m128q; // dbl_neg1lshl12_msk
extern __m128i const __m128i_dbl_neg1lshl15; //     __m128q; // dbl_neg1lshl15_msk
extern __m128i const __m128i_dbl_neg1lshl16; //     __m128q; // dbl_neg1lshl16_msk
extern __m128i const __m128i_dbl_neg1lshl19; //     __m128q; // dbl_neg1lshl19_msk
extern __m128i const __m128i_dbl_neg1lshl20; //     __m128q; // dbl_neg1lshl20_msk
extern __m128i const __m128i_dbl_neg1lshl23; //     __m128q; // dbl_neg1lshl23_msk
extern __m128i const __m128i_dbl_neg1lshl24; //     __m128q; // dbl_neg1lshl24_msk
extern __m128i const __m128i_dbl_neg1lshl27; //     __m128q; // dbl_neg1lshl27_msk
extern __m128i const __m128i_dbl_neg1lshl28; //     __m128q; // dbl_neg1lshl28_msk
extern __m128i const __m128i_dbl_neg1lshl31; //     __m128q; // dbl_neg1lshl31_msk
extern __m128i const __m128i_dbl_neg1lshl32; //     __m128q; // dbl_neg1lshl32_msk
extern __m128i const __m128i_dbl_neg1lshl35; //     __m128q; // dbl_neg1lshl35_msk
extern __m128i const __m128i_dbl_neg1lshl36; //     __m128q; // dbl_neg1lshl36_msk
extern __m128i const __m128i_dbl_neg1lshl39; //     __m128q; // dbl_neg1lshl39_msk
extern __m128i const __m128i_dbl_neg1lshl40; //     __m128q; // dbl_neg1lshl40_msk
extern __m128i const __m128i_dbl_neg1lshl43; //     __m128q; // dbl_neg1lshl43_msk
extern __m128i const __m128i_dbl_neg1lshl44; //     __m128q; // dbl_neg1lshl44_msk
extern __m128i const __m128i_dbl_neg1lshl47; //     __m128q; // dbl_neg1lshl47_msk
extern __m128i const __m128i_dbl_neg1lshl48; //     __m128q; // dbl_neg1lshl48_msk
extern __m128i const __m128i_dbl_neg1lshl51; //     __m128q; // dbl_neg1lshl51_msk
extern __m128i const __m128i_dbl_neg1lshl52; //     __m128q; // dbl_neg1lshl52_msk
extern __m128i const __m128i_dbl_neg1lshl55; //     __m128q; // dbl_neg1lshl55_msk
extern __m128i const __m128i_dbl_neg1lshl56; //     __m128q; // dbl_neg1lshl56_msk
extern __m128i const __m128i_dbl_neg1lshl59; //     __m128q; // dbl_neg1lshl59_msk
extern __m128i const __m128i_dbl_neg1lshl60; //     __m128q; // dbl_neg1lshl60_msk
extern __m128i const __m128i_dbl_neg1lshl63; //     __m128q; // dbl_neg1lshl63_msk

extern __m128i const __m128i_dbl_false; //              __m128q; // dbl_false_msk
extern __m128i const __m128i_dbl_true; //               __m128q; // dbl_true_msk
extern __m128i const __m128i_dbl_error; //              __m128q; // dbl_error_msk

extern __m128i const __m128i_dbl_magic; //              __m128q; // dbl_magic_msk
extern __m128i const __m128i_dbl_sign; //               __m128q; // dbl_sign_msk
extern __m128i const __m128i_dbl_invsign; //            __m128q; // dbl_invsign_msk

extern __m128i const __m128i_dbl_inf; //                __m128q; // dbl_inf_msk
extern __m128i const __m128i_dbl_fin; //                __m128q; // dbl_fin_msk
extern __m128i const __m128i_dbl_invinf; //         __m128q; // dbl_invinf_msk
extern __m128i const __m128i_dbl_neginf; //         __m128q; // dbl_neginf_msk
extern __m128i const __m128i_dbl_nan; //                __m128q; // dbl_nan_msk
extern __m128i const __m128i_dbl_qnan; //               __m128q; // dbl_qnan_msk
extern __m128i const __m128i_dbl_negqnan; //            __m128q; // dbl_negqnan_msk
extern __m128i const __m128i_dbl_nantest; //            __m128q; // dbl_nantest_msk
extern __m128i const __m128i_dbl_abs; //                __m128q; // dbl_abs_msk
extern __m128i const __m128i_dbl_min; //                __m128q; // dbl_min_msk
extern __m128i const __m128i_dbl_max; //                __m128q; // dbl_max_msk
extern __m128i const __m128i_dbl_nofraction; //     __m128q; // dbl_nofraction_msk
extern __m128i const __m128i_dbl_mindenorm; //          __m128q; // dbl_mindenorm_msk
extern __m128i const __m128i_dbl_denormlimit; //        __m128q; // dbl_denormlimit_msk
extern __m128i const __m128i_dbl_minnormal; //          __m128q; // dbl_minnormal_msk
extern __m128i const __m128i_dbl_maxnormal; //          __m128q; // dbl_maxnormal_msk

extern __m128i const __m128i_dbl_decdig; //         __m128q; // dbl_decdig_msk
extern __m128i const __m128i_dbl_dig; //                __m128q; // dbl_dig_msk
extern __m128i const __m128i_dbl_negdecdig; //          __m128q; // dbl_negdecdig_msk
extern __m128i const __m128i_dbl_negdig; //         __m128q; // dbl_negdig_msk
extern __m128i const __m128i_dbl_eps; //                __m128q; // dbl_eps_msk
extern __m128i const __m128i_dbl_epsilon; //            __m128q; // dbl_epsilon_msk
extern __m128i const __m128i_dbl_normeps; //            __m128q; // dbl_normeps_msk
extern __m128i const __m128i_dbl_guard; //              __m128q; // dbl_guard_msk
extern __m128i const __m128i_dbl_mantpow2; //           __m128q; // dbl_mantpow2_msk
extern __m128i const __m128i_dbl_maxmantpow2; //        __m128q; // dbl_maxmantpow2_msk
extern __m128i const __m128i_dbl_mantdig; //            __m128q; // dbl_mantdig_msk
extern __m128i const __m128i_dbl_mant; //               __m128q; // dbl_mant_msk
extern __m128i const __m128i_dbl_negmantdig; //     __m128q; // dbl_negmantdig_msk
extern __m128i const __m128i_dbl_negmant; //            __m128q; // dbl_negmant_msk
extern __m128i const __m128i_dbl_maxexp; //         __m128q; // dbl_maxexp_msk
extern __m128i const __m128i_dbl_expsign; //            __m128q; // dbl_expsign_msk
extern __m128i const __m128i_dbl_exp; //                __m128q; // dbl_exp_msk
extern __m128i const __m128i_dbl_negmaxexp; //          __m128q; // dbl_negmaxexp_msk
extern __m128i const __m128i_dbl_negexpsign; //     __m128q; // dbl_negexpsign_msk
extern __m128i const __m128i_dbl_negexp; //         __m128q; // dbl_negexp_msk
extern __m128i const __m128i_dbl_subnormalexp; //       __m128q; // dbl_subnormalexp_msk
extern __m128i const __m128i_dbl_minexp; //         __m128q; // dbl_minexp_msk
extern __m128i const __m128i_dbl_maxdecexp; //          __m128q; // dbl_maxdecexp_msk
extern __m128i const __m128i_dbl_negmaxdecexp; //       __m128q; // dbl_negmaxdecexp_msk
extern __m128i const __m128i_dbl_mindecexp; //          __m128q; // dbl_mindecexp_msk
extern __m128i const __m128i_dbl_expfield; //           __m128q; // dbl_expfield_msk
extern __m128i const __m128i_dbl_mantfield; //          __m128q; // dbl_mantfield_msk
extern __m128i const __m128i_dbl_norm; //               __m128q; // dbl_norm_msk
extern __m128i const __m128i_dbl_radix; //              __m128q; // dbl_radix_msk
extern __m128i const __m128i_dbl_rounds; //         __m128q; // dbl_rounds_msk
extern __m128i const __m128i_dbl_subdec; //         __m128q; // dbl_subdec_msk
extern __m128i const __m128i_dbl_sqrtmax; //            __m128q; // dbl_sqrtmax_msk
extern __m128i const __m128i_dbl_smallnormal; //        __m128q; // dbl_smallnormal_msk

extern __m128i const __m128i_dbl_halfminuseps; //       __m128q; // dbl_halfminuseps_msk
extern __m128i const __m128i_dbl_trueint; //            __m128q; // dbl_trueint_msk

extern __m128i const __m128i_dbl_byte; //               __m128q; // dbl_byte_msk
extern __m128i const __m128i_dbl_byte_even; //          __m128q; // dbl_byte_even_msk
extern __m128i const __m128i_dbl_byte_odd; //           __m128q; // dbl_byte_odd_msk
extern __m128i const __m128i_dbl_4low; //               __m128q; // dbl_4low_msk
extern __m128i const __m128i_dbl_4high; //              __m128q; // dbl_4high_msk
extern __m128i const __m128i_dbl_flip4; //              __m128q; // dbl_flip4_msk
extern __m128i const __m128i_dbl_8low; //               __m128q; // dbl_8low_msk
extern __m128i const __m128i_dbl_8high; //              __m128q; // dbl_8high_msk
extern __m128i const __m128i_dbl_flip8; //              __m128q; // dbl_flip8_msk
extern __m128i const __m128i_dbl_16low; //              __m128q; // dbl_16low_msk
extern __m128i const __m128i_dbl_16high; //         __m128q; // dbl_16high_msk
extern __m128i const __m128i_dbl_flip16; //         __m128q; // dbl_flip16_msk
extern __m128i const __m128i_dbl_24low; //              __m128q; // dbl_24low_msk
extern __m128i const __m128i_dbl_24high; //         __m128q; // dbl_24high_msk
extern __m128i const __m128i_dbl_flip24; //         __m128q; // dbl_flip24_msk
extern __m128i const __m128i_dbl_28low; //              __m128q; // dbl_28low_msk
extern __m128i const __m128i_dbl_28high; //         __m128q; // dbl_28high_msk
extern __m128i const __m128i_dbl_flip28; //         __m128q; // dbl_flip28_msk
extern __m128i const __m128i_dbl_32low; //              __m128q; // dbl_32low_msk
extern __m128i const __m128i_dbl_32high; //         __m128q; // dbl_32high_msk
extern __m128i const __m128i_dbl_flip32; //         __m128q; // dbl_flip32_msk
extern __m128i const __m128i_dbl_40low; //              __m128q; // dbl_40low_msk
extern __m128i const __m128i_dbl_40high; //         __m128q; // dbl_40high_msk
extern __m128i const __m128i_dbl_flip40; //         __m128q; // dbl_flip40_msk
extern __m128i const __m128i_dbl_48low; //              __m128q; // dbl_48low_msk
extern __m128i const __m128i_dbl_48high; //         __m128q; // dbl_48high_msk
extern __m128i const __m128i_dbl_flip48; //         __m128q; // dbl_flip48_msk
extern __m128i const __m128i_dbl_56low; //              __m128q; // dbl_56low_msk
extern __m128i const __m128i_dbl_56high; //         __m128q; // dbl_56high_msk
extern __m128i const __m128i_dbl_flip56; //         __m128q; // dbl_flip56_msk
extern __m128i const __m128i_dbl_60low; //              __m128q; // dbl_60low_msk
extern __m128i const __m128i_dbl_60high; //         __m128q; // dbl_60high_msk
extern __m128i const __m128i_dbl_flip60; //         __m128q; // dbl_flip60_msk
extern __m128i const __m128i_dbl_64low; //              __m128q; // dbl_64low_msk
extern __m128i const __m128i_dbl_64high; //         __m128q; // dbl_64high_msk
extern __m128i const __m128i_dbl_flip64; //         __m128q; // dbl_flip64_msk

extern __m128i const __m128i_dbl_0; //                  __m128q; // dbl_0e_msk
extern __m128i const __m128i_dbl_0d5; //                __m128q; // dbl_0d5_msk
extern __m128i const __m128i_dbl_1; //                  __m128q; // dbl_1_msk
extern __m128i const __m128i_dbl_1d5; //                __m128q; // dbl_1d5_msk
extern __m128i const __m128i_dbl_2; //                  __m128q; // dbl_2_msk
extern __m128i const __m128i_dbl_2d5; //                __m128q; // dbl_2d5_msk
extern __m128i const __m128i_dbl_3; //                  __m128q; // dbl_3_msk
extern __m128i const __m128i_dbl_4; //                  __m128q; // dbl_4_msk
extern __m128i const __m128i_dbl_5; //                  __m128q; // dbl_5_msk
extern __m128i const __m128i_dbl_6; //                  __m128q; // dbl_6_msk
extern __m128i const __m128i_dbl_7; //                  __m128q; // dbl_7_msk
extern __m128i const __m128i_dbl_8; //                  __m128q; // dbl_8_msk
extern __m128i const __m128i_dbl_9; //                  __m128q; // dbl_9_msk
extern __m128i const __m128i_dbl_10; //             __m128q; // dbl_10_msk
extern __m128i const __m128i_dbl_20; //             __m128q; // dbl_20_msk
extern __m128i const __m128i_dbl_23; //             __m128q; // dbl_23_msk
extern __m128i const __m128i_dbl_23d5; //               __m128q; // dbl_23d5_msk
extern __m128i const __m128i_dbl_24; //             __m128q; // dbl_24_msk
extern __m128i const __m128i_dbl_24d5; //               __m128q; // dbl_24d5_msk
extern __m128i const __m128i_dbl_25; //             __m128q; // dbl_25_msk

extern __m128i const __m128i_dbl_128; //                __m128q; // dbl_128_msk

extern __m128i const __m128i_dbl_253; //                __m128q; // dbl_253_msk

extern __m128i const __m128i_dbl_neg0; //               __m128q; // dbl_neg0_msk
extern __m128i const __m128i_dbl_neg1; //               __m128q; // dbl_neg1_msk

extern __m128i const __m128i_dbl_neg150; //         __m128q; // dbl_neg150_msk

extern __m128i const __m128i_dbl_bin128; //         __m128q; // dbl_bin128_msk
extern __m128i const __m128i_dbl_binneg150; //          __m128q; // dbl_binneg150_msk

extern __m128i const __m128i_dbl_maxrand; //            __m128q; // dbl_maxrand_msk

extern __m128i const __m128i_dbl_maxi8; //              __m128q; // dbl_maxi8_msk
extern __m128i const __m128i_dbl_mini8; //              __m128q; // dbl_mini8_msk
extern __m128i const __m128i_dbl_maxu8; //              __m128q; // dbl_maxu8_msk

extern __m128i const __m128i_dbl_maxi16; //         __m128q; // dbl_maxi16_msk
extern __m128i const __m128i_dbl_mini16; //         __m128q; // dbl_mini16_msk
extern __m128i const __m128i_dbl_maxu16; //         __m128q; // dbl_maxu16_msk

extern __m128i const __m128i_dbl_maxi32; //         __m128q; // dbl_maxi32_msk
extern __m128i const __m128i_dbl_mini32; //         __m128q; // dbl_mini32_msk
extern __m128i const __m128i_dbl_maxu32; //         __m128q; // dbl_maxu32_msk

extern __m128i const __m128i_dbl_maxi64; //         __m128q; // dbl_maxi64_msk
extern __m128i const __m128i_dbl_mini64; //         __m128q; // dbl_mini64_msk
extern __m128i const __m128i_dbl_maxu64; //         __m128q; // dbl_maxu64_msk

extern __m128i const __m128i_dbl_maxi8xu8; //           __m128q; // dbl_maxi8xu8_msk
extern __m128i const __m128i_dbl_mini8xu8; //           __m128q; // dbl_mini8xu8_msk
extern __m128i const __m128i_dbl_maxi8xu16; //          __m128q; // dbl_maxi8xu16_msk
extern __m128i const __m128i_dbl_mini8xu16; //          __m128q; // dbl_mini8xu16_msk

extern __m128i const __m128i_dbl_maxi16xu16; //     __m128q; // dbl_maxi16xu16_msk
extern __m128i const __m128i_dbl_mini16xu16; //     __m128q; // dbl_mini16xu16_msk
extern __m128i const __m128i_dbl_maxi16xu32; //     __m128q; // dbl_maxi16xu32_msk
extern __m128i const __m128i_dbl_mini16xu32; //     __m128q; // dbl_mini16xu32_msk

extern __m128i const __m128i_dbl_maxi32xu32; //     __m128q; // dbl_maxi32xu32_msk
extern __m128i const __m128i_dbl_mini32xu32; //     __m128q; // dbl_mini32xu32_msk

extern __m128i const __m128i_dbl_fixunsigned; //        __m128q; // dbl_fixunsigned_msk
extern __m128i const __m128i_dbl_fixunsigned32; //      __m128q; // dbl_fixunsigned32_msk
extern __m128i const __m128i_dbl_fixmaxi32; //          __m128q; // dbl_fixmaxi32_msk
extern __m128i const __m128i_dbl_fixmaxu32; //          __m128q; // dbl_fixmaxu32_msk

extern __m128i const __m128i_dbl_fixunsigned64; //      __m128q; // dbl_fixunsigned64_msk
extern __m128i const __m128i_dbl_fixmaxi64; //          __m128q; // dbl_fixmaxi64_msk
extern __m128i const __m128i_dbl_fixmaxu64; //          __m128q; // dbl_fixmaxu64_msk

	//;;double mask low;;

extern __m128i const  __m128i_dbl_0e_1lshl3; //             __m128q; // dbl_1lshl3_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl4; //             __m128q; // dbl_1lshl4_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl7; //             __m128q; // dbl_1lshl7_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl8; //             __m128q; // dbl_1lshl8_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl11; //            __m128q; // dbl_1lshl11_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl12; //            __m128q; // dbl_1lshl12_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl15; //            __m128q; // dbl_1lshl15_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl16; //            __m128q; // dbl_1lshl16_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl19; //            __m128q; // dbl_1lshl19_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl20; //            __m128q; // dbl_1lshl20_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl23; //            __m128q; // dbl_1lshl23_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl24; //            __m128q; // dbl_1lshl24_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl27; //            __m128q; // dbl_1lshl27_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl28; //            __m128q; // dbl_1lshl28_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl31; //            __m128q; // dbl_1lshl31_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl32; //            __m128q; // dbl_1lshl32_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl35; //            __m128q; // dbl_1lshl35_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl36; //            __m128q; // dbl_1lshl36_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl39; //            __m128q; // dbl_1lshl39_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl40; //            __m128q; // dbl_1lshl40_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl43; //            __m128q; // dbl_1lshl43_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl44; //            __m128q; // dbl_1lshl44_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl47; //            __m128q; // dbl_1lshl47_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl48; //            __m128q; // dbl_1lshl48_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl51; //            __m128q; // dbl_1lshl51_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl52; //            __m128q; // dbl_1lshl52_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl55; //            __m128q; // dbl_1lshl55_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl56; //            __m128q; // dbl_1lshl56_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl59; //            __m128q; // dbl_1lshl59_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl60; //            __m128q; // dbl_1lshl60_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1lshl63; //            __m128q; // dbl_1lshl63_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_neg1lshl3; //          __m128q; // dbl_neg1lshl3_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl4; //          __m128q; // dbl_neg1lshl4_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl7; //          __m128q; // dbl_neg1lshl7_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl8; //          __m128q; // dbl_neg1lshl8_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl11; //         __m128q; // dbl_neg1lshl11_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl12; //         __m128q; // dbl_neg1lshl12_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl15; //         __m128q; // dbl_neg1lshl15_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl16; //         __m128q; // dbl_neg1lshl16_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl19; //         __m128q; // dbl_neg1lshl19_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl20; //         __m128q; // dbl_neg1lshl20_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl23; //         __m128q; // dbl_neg1lshl23_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl24; //         __m128q; // dbl_neg1lshl24_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl27; //         __m128q; // dbl_neg1lshl27_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl28; //         __m128q; // dbl_neg1lshl28_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl31; //         __m128q; // dbl_neg1lshl31_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl32; //         __m128q; // dbl_neg1lshl32_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl35; //         __m128q; // dbl_neg1lshl35_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl36; //         __m128q; // dbl_neg1lshl36_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl39; //         __m128q; // dbl_neg1lshl39_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl40; //         __m128q; // dbl_neg1lshl40_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl43; //         __m128q; // dbl_neg1lshl43_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl44; //         __m128q; // dbl_neg1lshl44_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl47; //         __m128q; // dbl_neg1lshl47_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl48; //         __m128q; // dbl_neg1lshl48_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl51; //         __m128q; // dbl_neg1lshl51_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl52; //         __m128q; // dbl_neg1lshl52_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl55; //         __m128q; // dbl_neg1lshl55_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl56; //         __m128q; // dbl_neg1lshl56_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl59; //         __m128q; // dbl_neg1lshl59_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl60; //         __m128q; // dbl_neg1lshl60_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1lshl63; //         __m128q; // dbl_neg1lshl63_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_false; //              __m128q; // dbl_false_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_true; //               __m128q; // dbl_true_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_error; //              __m128q; // dbl_error_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_magic; //              __m128q; // dbl_magic_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_sign; //               __m128q; // dbl_sign_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_invsign; //            __m128q; // dbl_invsign_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_inf; //                __m128q; // dbl_inf_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_fin; //                __m128q; // dbl_fin_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_invinf; //             __m128q; // dbl_invinf_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neginf; //             __m128q; // dbl_neginf_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_nan; //                __m128q; // dbl_nan_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_qnan; //               __m128q; // dbl_qnan_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_negqnan; //            __m128q; // dbl_negqnan_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_nantest; //            __m128q; // dbl_nantest_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_abs; //                __m128q; // dbl_abs_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_min; //                __m128q; // dbl_min_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_max; //                __m128q; // dbl_max_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_nofraction; //         __m128q; // dbl_nofraction_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mindenorm; //          __m128q; // dbl_mindenorm_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_denormlimit; //        __m128q; // dbl_denormlimit_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_minnormal; //          __m128q; // dbl_minnormal_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_maxnormal; //          __m128q; // dbl_maxnormal_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_decdig; //             __m128q; // dbl_decdig_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_dig; //                __m128q; // dbl_dig_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_negdecdig; //          __m128q; // dbl_negdecdig_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_negdig; //             __m128q; // dbl_negdig_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_eps; //                __m128q; // dbl_eps_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_epsilon; //            __m128q; // dbl_epsilon_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_normeps; //            __m128q; // dbl_normeps_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_guard; //              __m128q; // dbl_guard_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mantpow2; //           __m128q; // dbl_mantpow2_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_maxmantpow2; //        __m128q; // dbl_maxmantpow2_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mantdig; //            __m128q; // dbl_mantdig_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mant; //               __m128q; // dbl_mant_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_negmantdig; //         __m128q; // dbl_negmantdig_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_negmant; //            __m128q; // dbl_negmant_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_maxexp; //             __m128q; // dbl_maxexp_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_expsign; //            __m128q; // dbl_expsign_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_exp; //                __m128q; // dbl_exp_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_negmaxexp; //          __m128q; // dbl_negmaxexp_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_negexpsign; //         __m128q; // dbl_negexpsign_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_negexp; //             __m128q; // dbl_negexp_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_subnormalexp; //       __m128q; // dbl_subnormalexp_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_minexp; //             __m128q; // dbl_minexp_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_maxdecexp; //          __m128q; // dbl_maxdecexp_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_negmaxdecexp; //       __m128q; // dbl_negmaxdecexp_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mindecexp; //          __m128q; // dbl_mindecexp_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_expfield; //           __m128q; // dbl_expfield_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mantfield; //          __m128q; // dbl_mantfield_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_norm; //               __m128q; // dbl_norm_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_radix; //              __m128q; // dbl_radix_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_rounds; //             __m128q; // dbl_rounds_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_subdec; //             __m128q; // dbl_subdec_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_sqrtmax; //            __m128q; // dbl_sqrtmax_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_smallnormal; //        __m128q; // dbl_smallnormal_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_halfminuseps; //       __m128q; // dbl_halfminuseps_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_trueint; //            __m128q; // dbl_trueint_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_byte; //               __m128q; // dbl_byte_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_byte_even; //          __m128q; // dbl_byte_even_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_byte_odd; //           __m128q; // dbl_byte_odd_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_4low; //               __m128q; // dbl_4low_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_4high; //              __m128q; // dbl_4high_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_flip4; //              __m128q; // dbl_flip4_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_8low; //               __m128q; // dbl_8low_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_8high; //              __m128q; // dbl_8high_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_flip8; //              __m128q; // dbl_flip8_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_16low; //              __m128q; // dbl_16low_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_16high; //             __m128q; // dbl_16high_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_flip16; //             __m128q; // dbl_flip16_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_24low; //              __m128q; // dbl_24low_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_24high; //             __m128q; // dbl_24high_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_flip24; //             __m128q; // dbl_flip24_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_28low; //              __m128q; // dbl_28low_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_28high; //             __m128q; // dbl_28high_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_flip28; //             __m128q; // dbl_flip28_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_32low; //              __m128q; // dbl_32low_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_32high; //             __m128q; // dbl_32high_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_flip32; //             __m128q; // dbl_flip32_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_40low; //              __m128q; // dbl_40low_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_40high; //             __m128q; // dbl_40high_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_flip40; //             __m128q; // dbl_flip40_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_48low; //              __m128q; // dbl_48low_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_48high; //             __m128q; // dbl_48high_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_flip48; //             __m128q; // dbl_flip48_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_56low; //              __m128q; // dbl_56low_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_56high; //             __m128q; // dbl_56high_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_flip56; //             __m128q; // dbl_flip56_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_60low; //              __m128q; // dbl_60low_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_60high; //             __m128q; // dbl_60high_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_flip60; //             __m128q; // dbl_flip60_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_64low; //              __m128q; // dbl_64low_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_64high; //             __m128q; // dbl_64high_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_flip64; //             __m128q; // dbl_flip64_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_0; //                  __m128q; // dbl_0e_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_0d5; //                __m128q; // dbl_0d5_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1; //                  __m128q; // dbl_1_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_1d5; //                __m128q; // dbl_1d5_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_2; //                  __m128q; // dbl_2_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_2d5; //                __m128q; // dbl_2d5_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_3; //                  __m128q; // dbl_3_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_4; //                  __m128q; // dbl_4_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_5; //                  __m128q; // dbl_5_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_6; //                  __m128q; // dbl_6_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_7; //                  __m128q; // dbl_7_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_8; //                  __m128q; // dbl_8_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_9; //                  __m128q; // dbl_9_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_10; //                 __m128q; // dbl_10_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_20; //                 __m128q; // dbl_20_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_23; //                 __m128q; // dbl_23_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_23d5; //               __m128q; // dbl_23d5_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_24; //                 __m128q; // dbl_24_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_24d5; //               __m128q; // dbl_24d5_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_25; //                 __m128q; // dbl_25_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_128; //                __m128q; // dbl_128_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_253; //                __m128q; // dbl_253_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_neg0; //               __m128q; // dbl_neg0_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_neg1; //               __m128q; // dbl_neg1_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_neg150; //             __m128q; // dbl_neg150_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_bin128; //             __m128q; // dbl_bin128_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_binneg150; //          __m128q; // dbl_binneg150_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_maxrand; //            __m128q; // dbl_maxrand_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_maxi8; //              __m128q; // dbl_maxi8_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mini8; //              __m128q; // dbl_mini8_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_maxu8; //              __m128q; // dbl_maxu8_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_maxi16; //             __m128q; // dbl_maxi16_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mini16; //             __m128q; // dbl_mini16_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_maxu16; //             __m128q; // dbl_maxu16_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_maxi32; //             __m128q; // dbl_maxi32_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mini32; //             __m128q; // dbl_mini32_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_maxu32; //             __m128q; // dbl_maxu32_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_maxi64; //             __m128q; // dbl_maxi64_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mini64; //             __m128q; // dbl_mini64_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_maxu64; //             __m128q; // dbl_maxu64_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_maxi8xu8; //           __m128q; // dbl_maxi8xu8_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mini8xu8; //           __m128q; // dbl_mini8xu8_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_maxi8xu16; //          __m128q; // dbl_maxi8xu16_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mini8xu16; //          __m128q; // dbl_mini8xu16_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_maxi16xu16; //         __m128q; // dbl_maxi16xu16_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mini16xu16; //         __m128q; // dbl_mini16xu16_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_maxi16xu32; //         __m128q; // dbl_maxi16xu32_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mini16xu32; //         __m128q; // dbl_mini16xu32_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_maxi32xu32; //         __m128q; // dbl_maxi32xu32_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_mini32xu32; //         __m128q; // dbl_mini32xu32_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_fixunsigned; //        __m128q; // dbl_fixunsigned_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_fixunsigned32; //      __m128q; // dbl_fixunsigned32_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_fixmaxi32; //          __m128q; // dbl_fixmaxi32_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_fixmaxu32; //          __m128q; // dbl_fixmaxu32_msk; // dbl_false_msk

extern __m128i const  __m128i_dbl_0e_fixunsigned64; //      __m128q; // dbl_fixunsigned64_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_fixmaxi64; //          __m128q; // dbl_fixmaxi64_msk; // dbl_false_msk
extern __m128i const  __m128i_dbl_0e_fixmaxu64; //          __m128q; // dbl_fixmaxu64_msk; // dbl_false_msk

	//;; double;;

	//;;             sincos template, double precision
extern __m128d const __m128d_P0sin; //          __m128d, (-1.66666666666666307295e-01)
extern __m128d const __m128d_P1sin; //          __m128d, (8.33333333332211858878e-03)
extern __m128d const __m128d_P2sin; //          __m128d, (-1.98412698295895385996e-04)
extern __m128d const __m128d_P3sin; //          __m128d, (2.75573136213857245213e-06)
extern __m128d const __m128d_P4sin; //          __m128d, (-2.50507477628578072866e-08)
extern __m128d const __m128d_P5sin; //          __m128d, (1.58962301576546568060e-010)

extern __m128d const __m128d_P0cos; //          __m128d, (4.16666666666665929218e-02)
extern __m128d const __m128d_P1cos; //          __m128d, (-1.38888888888730564116e-03)
extern __m128d const __m128d_P2cos; //          __m128d, (2.48015872888517045348e-05)
extern __m128d const __m128d_P3cos; //          __m128d, (-2.75573141792967388112e-07)
extern __m128d const __m128d_P4cos; //          __m128d, (2.08757008419747316778e-09)
extern __m128d const __m128d_P5cos; //          __m128d, (-1.13585365213876817300e-011)

extern __m128d const __m128d_DP1; //          __m128d, 1.570796310901641845703125
extern __m128d const __m128d_DP2; //          __m128d, 0.00000001589325471229585673428
extern __m128d const __m128d_DP3; //          __m128d, (6.12323399573676588614e-017)
	//;;             sincos template, double precision

extern __m128d const __m128d_1lshl3; //             __m128d; // dbl_1lshl3
extern __m128d const __m128d_1lshl4; //             __m128d; // dbl_1lshl4
extern __m128d const __m128d_1lshl7; //             __m128d; // dbl_1lshl7
extern __m128d const __m128d_1lshl8; //             __m128d; // dbl_1lshl8
extern __m128d const __m128d_1lshl11; //                __m128d; // dbl_1lshl11
extern __m128d const __m128d_1lshl12; //                __m128d; // dbl_1lshl12
extern __m128d const __m128d_1lshl15; //                __m128d; // dbl_1lshl15
extern __m128d const __m128d_1lshl16; //                __m128d; // dbl_1lshl16
extern __m128d const __m128d_1lshl19; //                __m128d; // dbl_1lshl19
extern __m128d const __m128d_1lshl20; //                __m128d; // dbl_1lshl20
extern __m128d const __m128d_1lshl23; //                __m128d; // dbl_1lshl23
extern __m128d const __m128d_1lshl24; //                __m128d; // dbl_1lshl24
extern __m128d const __m128d_1lshl27; //                __m128d; // dbl_1lshl27
extern __m128d const __m128d_1lshl28; //                __m128d; // dbl_1lshl28
extern __m128d const __m128d_1lshl31; //                __m128d; // dbl_1lshl31
extern __m128d const __m128d_1lshl32; //                __m128d; // dbl_1lshl32
extern __m128d const __m128d_1lshl35; //                __m128d; // dbl_1lshl35
extern __m128d const __m128d_1lshl36; //                __m128d; // dbl_1lshl36
extern __m128d const __m128d_1lshl39; //                __m128d; // dbl_1lshl39
extern __m128d const __m128d_1lshl40; //                __m128d; // dbl_1lshl40
extern __m128d const __m128d_1lshl43; //                __m128d; // dbl_1lshl43
extern __m128d const __m128d_1lshl44; //                __m128d; // dbl_1lshl44
extern __m128d const __m128d_1lshl47; //                __m128d; // dbl_1lshl47
extern __m128d const __m128d_1lshl48; //                __m128d; // dbl_1lshl48
extern __m128d const __m128d_1lshl51; //                __m128d; // dbl_1lshl51
extern __m128d const __m128d_1lshl52; //                __m128d; // dbl_1lshl52
extern __m128d const __m128d_1lshl55; //                __m128d; // dbl_1lshl55
extern __m128d const __m128d_1lshl56; //                __m128d; // dbl_1lshl56
extern __m128d const __m128d_1lshl59; //                __m128d; // dbl_1lshl59
extern __m128d const __m128d_1lshl60; //                __m128d; // dbl_1lshl60
extern __m128d const __m128d_1lshl63; //                __m128d; // dbl_1lshl63

extern __m128d const __m128d_neg1lshl3; //              __m128d; // dbl_neg1lshl3
extern __m128d const __m128d_neg1lshl4; //              __m128d; // dbl_neg1lshl4
extern __m128d const __m128d_neg1lshl7; //              __m128d; // dbl_neg1lshl7
extern __m128d const __m128d_neg1lshl8; //              __m128d; // dbl_neg1lshl8
extern __m128d const __m128d_neg1lshl11; //         __m128d; // dbl_neg1lshl11
extern __m128d const __m128d_neg1lshl12; //         __m128d; // dbl_neg1lshl12
extern __m128d const __m128d_neg1lshl15; //         __m128d; // dbl_neg1lshl15
extern __m128d const __m128d_neg1lshl16; //         __m128d; // dbl_neg1lshl16
extern __m128d const __m128d_neg1lshl19; //         __m128d; // dbl_neg1lshl19
extern __m128d const __m128d_neg1lshl20; //         __m128d; // dbl_neg1lshl20
extern __m128d const __m128d_neg1lshl23; //         __m128d; // dbl_neg1lshl23
extern __m128d const __m128d_neg1lshl24; //         __m128d; // dbl_neg1lshl24
extern __m128d const __m128d_neg1lshl27; //         __m128d; // dbl_neg1lshl27
extern __m128d const __m128d_neg1lshl28; //         __m128d; // dbl_neg1lshl28
extern __m128d const __m128d_neg1lshl31; //         __m128d; // dbl_neg1lshl31
extern __m128d const __m128d_neg1lshl32; //         __m128d; // dbl_neg1lshl32
extern __m128d const __m128d_neg1lshl35; //         __m128d; // dbl_neg1lshl35
extern __m128d const __m128d_neg1lshl36; //         __m128d; // dbl_neg1lshl36
extern __m128d const __m128d_neg1lshl39; //         __m128d; // dbl_neg1lshl39
extern __m128d const __m128d_neg1lshl40; //         __m128d; // dbl_neg1lshl40
extern __m128d const __m128d_neg1lshl43; //         __m128d; // dbl_neg1lshl43
extern __m128d const __m128d_neg1lshl44; //         __m128d; // dbl_neg1lshl44
extern __m128d const __m128d_neg1lshl47; //         __m128d; // dbl_neg1lshl47
extern __m128d const __m128d_neg1lshl48; //         __m128d; // dbl_neg1lshl48
extern __m128d const __m128d_neg1lshl51; //         __m128d; // dbl_neg1lshl51
extern __m128d const __m128d_neg1lshl52; //         __m128d; // dbl_neg1lshl52
extern __m128d const __m128d_neg1lshl55; //         __m128d; // dbl_neg1lshl55
extern __m128d const __m128d_neg1lshl56; //         __m128d; // dbl_neg1lshl56
extern __m128d const __m128d_neg1lshl59; //         __m128d; // dbl_neg1lshl59
extern __m128d const __m128d_neg1lshl60; //         __m128d; // dbl_neg1lshl60
extern __m128d const __m128d_neg1lshl63; //         __m128d; // dbl_neg1lshl63

extern __m128d const __m128d_false; //                  __m128q; // dbl_false
extern __m128d const __m128d_true; //                   __m128q; // dbl_true
extern __m128d const __m128d_error; //                  __m128q; // dbl_error

extern __m128d const __m128d_magic; //                  __m128q; // dbl_magic
extern __m128d const __m128d_sign; //                   __m128q; // dbl_sign
extern __m128d const __m128d_invsign; //                __m128q; // dbl_invsign

extern __m128d const __m128d_inf; //                    __m128q; // dbl_inf
extern __m128d const __m128d_fin; //                    __m128q; // dbl_fin
extern __m128d const __m128d_invinf; //             __m128q; // dbl_invinf
extern __m128d const __m128d_neginf; //             __m128q; // dbl_neginf
extern __m128d const __m128d_nan; //                    __m128q; // dbl_nan
extern __m128d const __m128d_qnan; //                   __m128q; // dbl_qnan
extern __m128d const __m128d_negqnan; //                __m128q; // dbl_negqnan
extern __m128d const __m128d_nantest; //                __m128q; // dbl_nantest
extern __m128d const __m128d_abs; //                    __m128q; // dbl_abs
extern __m128d const __m128d_min; //                    __m128d; // dbl_min
extern __m128d const __m128d_max; //                    __m128d; // dbl_max
extern __m128d const __m128d_nofraction; //         __m128d; // dbl_nofraction
extern __m128d const __m128d_mindenorm; //              __m128d; // dbl_mindenorm
extern __m128d const __m128d_denormlimit; //            __m128d; // dbl_denormlimit
extern __m128d const __m128d_minnormal; //              __m128d; // dbl_minnormal
extern __m128d const __m128d_maxnormal; //              __m128d; // dbl_maxnormal

extern __m128d const __m128d_decdig; //             __m128d; // dbl_decdig
extern __m128d const __m128d_dig; //                    __m128d; // dbl_dig
extern __m128d const __m128d_negdecdig; //              __m128d; // dbl_negdecdig
extern __m128d const __m128d_negdig; //             __m128d; // dbl_negdig
extern __m128d const __m128d_eps; //                    __m128d; // dbl_eps
extern __m128d const __m128d_epsilon; //                __m128d; // dbl_epsilon
extern __m128d const __m128d_normeps; //                __m128d; // dbl_normeps
extern __m128d const __m128d_guard; //                  __m128d; // dbl_guard
extern __m128d const __m128d_mantpow2; //               __m128d; // dbl_mantpow2
extern __m128d const __m128d_maxmantpow2; //            __m128d; // dbl_maxmantpow2
extern __m128d const __m128d_mantdig; //                __m128d; // dbl_mantdig
extern __m128d const __m128d_mant; //                   __m128d; // dbl_mant
extern __m128d const __m128d_negmantdig; //         __m128d; // dbl_negmantdig
extern __m128d const __m128d_negmant; //                __m128d; // dbl_negmant
extern __m128d const __m128d_maxexp; //             __m128d; // dbl_maxexp
extern __m128d const __m128d_expsign; //                __m128d; // dbl_expsign
extern __m128d const __m128d_exp; //                    __m128d; // dbl_exp
extern __m128d const __m128d_negmaxexp; //              __m128d; // dbl_negmaxexp
extern __m128d const __m128d_negexpsign; //         __m128d; // dbl_negexpsign
extern __m128d const __m128d_negexp; //             __m128d; // dbl_negexp
extern __m128d const __m128d_subnormalexp; //           __m128d; // dbl_subnormalexp
extern __m128d const __m128d_minexp; //             __m128d; // dbl_minexp
extern __m128d const __m128d_maxdecexp; //              __m128d; // dbl_maxdecexp
extern __m128d const __m128d_negmaxdecexp; //           __m128d; // dbl_negmaxdecexp
extern __m128d const __m128d_mindecexp; //              __m128d; // dbl_mindecexp
extern __m128d const __m128d_expfield; //               __m128d; // dbl_expfield
extern __m128d const __m128d_mantfield; //              __m128d; // dbl_mantfield
extern __m128d const __m128d_norm; //                   __m128d; // dbl_norm
extern __m128d const __m128d_radix; //                  __m128d; // dbl_radix
extern __m128d const __m128d_rounds; //             __m128d; // dbl_rounds
extern __m128d const __m128d_subdec; //             __m128d; // dbl_subdec
extern __m128d const __m128d_sqrtmax; //                __m128d; // dbl_sqrtmax
extern __m128d const __m128d_smallnormal; //            __m128d; // dbl_smallnormal

extern __m128d const __m128d_halfminuseps; //           __m128d; // dbl_halfminuseps
extern __m128d const __m128d_trueint; //                __m128d; // dbl_trueint

extern __m128d const __m128d_byte; //                   __m128d; // dbl_byte
extern __m128d const __m128d_byte_even; //              __m128d; // dbl_byte_even
extern __m128d const __m128d_byte_odd; //               __m128d; // dbl_byte_odd
extern __m128d const __m128d_4low; //                   __m128d; // dbl_4low
extern __m128d const __m128d_4high; //                  __m128d; // dbl_4high
extern __m128d const __m128d_flip4; //                  __m128d; // dbl_flip4
extern __m128d const __m128d_8low; //                   __m128d; // dbl_8low
extern __m128d const __m128d_8high; //                  __m128d; // dbl_8high
extern __m128d const __m128d_flip8; //                  __m128d; // dbl_flip8
extern __m128d const __m128d_16low; //                  __m128d; // dbl_16low
extern __m128d const __m128d_16high; //             __m128d; // dbl_16high
extern __m128d const __m128d_flip16; //             __m128d; // dbl_flip16
extern __m128d const __m128d_24low; //                  __m128d; // dbl_24low
extern __m128d const __m128d_24high; //             __m128d; // dbl_24high
extern __m128d const __m128d_flip24; //             __m128d; // dbl_flip24
extern __m128d const __m128d_28low; //                  __m128d; // dbl_28low
extern __m128d const __m128d_28high; //             __m128d; // dbl_28high
extern __m128d const __m128d_flip28; //             __m128d; // dbl_flip28
extern __m128d const __m128d_32low; //                  __m128d; // dbl_32low
extern __m128d const __m128d_32high; //             __m128d; // dbl_32high
extern __m128d const __m128d_flip32; //             __m128d; // dbl_flip32
extern __m128d const __m128d_40low; //                  __m128d; // dbl_40low
extern __m128d const __m128d_40high; //             __m128d; // dbl_40high
extern __m128d const __m128d_flip40; //             __m128d; // dbl_flip40
extern __m128d const __m128d_48low; //                  __m128d; // dbl_48low
extern __m128d const __m128d_48high; //             __m128d; // dbl_48high
extern __m128d const __m128d_flip48; //             __m128d; // dbl_flip48
extern __m128d const __m128d_56low; //                  __m128d; // dbl_56low
extern __m128d const __m128d_56high; //             __m128d; // dbl_56high
extern __m128d const __m128d_flip56; //             __m128d; // dbl_flip56
extern __m128d const __m128d_60low; //                  __m128d; // dbl_60low
extern __m128d const __m128d_60high; //             __m128d; // dbl_60high
extern __m128d const __m128d_flip60; //             __m128d; // dbl_flip60
extern __m128d const __m128d_64low; //                  __m128d; // dbl_64low
extern __m128d const __m128d_64high; //             __m128d; // dbl_64high
extern __m128d const __m128d_flip64; //             __m128d; // dbl_flip64

extern __m128d const __m128d_0; //                  __m128d; // dbl_0
extern __m128d const __m128d_0d0001; //                 __m128d; // dbl_0d0001
extern __m128d const __m128d_0d0002; //                 __m128d; // dbl_0d0002
extern __m128d const __m128d_0d0003; //                 __m128d; // dbl_0d0003
extern __m128d const __m128d_0d0004; //                 __m128d; // dbl_0d0004
extern __m128d const __m128d_0d0005; //                 __m128d; // dbl_0d0005
extern __m128d const __m128d_0d0006; //                 __m128d; // dbl_0d0006
extern __m128d const __m128d_0d0007; //                 __m128d; // dbl_0d0007
extern __m128d const __m128d_0d0008; //                 __m128d; // dbl_0d0008
extern __m128d const __m128d_0d0009; //                 __m128d; // dbl_0d0009
extern __m128d const __m128d_0d001; //              __m128d; // dbl_0d001
extern __m128d const __m128d_0d002; //              __m128d; // dbl_0d002
extern __m128d const __m128d_0d003; //              __m128d; // dbl_0d003
extern __m128d const __m128d_0d004; //              __m128d; // dbl_0d004
extern __m128d const __m128d_0d005; //              __m128d; // dbl_0d005
extern __m128d const __m128d_0d006; //              __m128d; // dbl_0d006
extern __m128d const __m128d_0d007; //              __m128d; // dbl_0d007
extern __m128d const __m128d_0d008; //              __m128d; // dbl_0d008
extern __m128d const __m128d_0d009; //              __m128d; // dbl_0d009
extern __m128d const __m128d_0d01; //                   __m128d; // dbl_0d01
extern __m128d const __m128d_0d02; //                   __m128d; // dbl_0d02
extern __m128d const __m128d_0d025; //              __m128d; // dbl_0d025
extern __m128d const __m128d_0d03; //                   __m128d; // dbl_0d03
extern __m128d const __m128d_0d04; //                   __m128d; // dbl_0d04
extern __m128d const __m128d_0d05; //                   __m128d; // dbl_0d05
extern __m128d const __m128d_0d06; //                   __m128d; // dbl_0d06
extern __m128d const __m128d_0d07; //                   __m128d; // dbl_0d07
extern __m128d const __m128d_0d08; //                   __m128d; // dbl_0d08
extern __m128d const __m128d_0d09; //                   __m128d; // dbl_0d09
extern __m128d const __m128d_0d1; //                    __m128d; // dbl_0d1
extern __m128d const __m128d_0d2; //                    __m128d; // dbl_0d2
extern __m128d const __m128d_0d25; //                   __m128d; // dbl_0d25
extern __m128d const __m128d_0d3; //                    __m128d; // dbl_0d3
extern __m128d const __m128d_0d4; //                    __m128d; // dbl_0d4
extern __m128d const __m128d_0d5; //                    __m128d; // dbl_0d5
extern __m128d const __m128d_0d6; //                    __m128d; // dbl_0d6
extern __m128d const __m128d_0d7; //                    __m128d; // dbl_0d7
extern __m128d const __m128d_0d8; //                    __m128d; // dbl_0d8
extern __m128d const __m128d_0d9; //                    __m128d; // dbl_0d9
extern __m128d const __m128d_1; //                  __m128d; // dbl_1
extern __m128d const __m128d_1d25; //                   __m128d; // dbl_1d25
extern __m128d const __m128d_1d5; //                    __m128d; // dbl_1d5
extern __m128d const __m128d_2; //                  __m128d; // dbl_2
extern __m128d const __m128d_2d25; //                   __m128d; // dbl_2d25
extern __m128d const __m128d_2d5; //                    __m128d; // dbl_2d5
extern __m128d const __m128d_3; //                  __m128d; // dbl_3
extern __m128d const __m128d_3d25; //                   __m128d; // dbl_3d25
extern __m128d const __m128d_3d5; //                    __m128d; // dbl_3d5
extern __m128d const __m128d_4; //                  __m128d; // dbl_4
extern __m128d const __m128d_4d25; //                   __m128d; // dbl_4d25
extern __m128d const __m128d_4d5; //                    __m128d; // dbl_4d5
extern __m128d const __m128d_5; //                  __m128d; // dbl_5
extern __m128d const __m128d_5d25; //                   __m128d; // dbl_5d25
extern __m128d const __m128d_5d5; //                    __m128d; // dbl_5d5
extern __m128d const __m128d_6; //                  __m128d; // dbl_6
extern __m128d const __m128d_6d25; //                   __m128d; // dbl_6d25
extern __m128d const __m128d_6d5; //                    __m128d; // dbl_6d5
extern __m128d const __m128d_7; //                  __m128d; // dbl_7
extern __m128d const __m128d_7d25; //                   __m128d; // dbl_7d25
extern __m128d const __m128d_7d5; //                    __m128d; // dbl_7d5
extern __m128d const __m128d_8; //                  __m128d; // dbl_8
extern __m128d const __m128d_8d25; //                   __m128d; // dbl_8d25
extern __m128d const __m128d_8d5; //                    __m128d; // dbl_8d5
extern __m128d const __m128d_9; //                  __m128d; // dbl_9
extern __m128d const __m128d_9d25; //                   __m128d; // dbl_9d25
extern __m128d const __m128d_9d5; //                    __m128d; // dbl_9d5
extern __m128d const __m128d_10; //                     __m128d; // dbl_10
extern __m128d const __m128d_11; //                     __m128d; // dbl_11
extern __m128d const __m128d_12; //                     __m128d; // dbl_12
extern __m128d const __m128d_13; //                     __m128d; // dbl_13
extern __m128d const __m128d_14; //                     __m128d; // dbl_14
extern __m128d const __m128d_15; //                     __m128d; // dbl_15
extern __m128d const __m128d_16; //                     __m128d; // dbl_16
extern __m128d const __m128d_17; //                     __m128d; // dbl_17
extern __m128d const __m128d_18; //                     __m128d; // dbl_18
extern __m128d const __m128d_19; //                     __m128d; // dbl_19
extern __m128d const __m128d_20; //                     __m128d; // dbl_20
extern __m128d const __m128d_21; //                     __m128d; // dbl_21
extern __m128d const __m128d_22; //                     __m128d; // dbl_22
extern __m128d const __m128d_23; //                     __m128d; // dbl_23
extern __m128d const __m128d_24; //                     __m128d; // dbl_24
extern __m128d const __m128d_24d5; //                   __m128d; // dbl_24d5
extern __m128d const __m128d_25; //                     __m128d; // dbl_25
extern __m128d const __m128d_26; //                     __m128d; // dbl_26
extern __m128d const __m128d_27; //                     __m128d; // dbl_27
extern __m128d const __m128d_28; //                     __m128d; // dbl_28
extern __m128d const __m128d_29; //                     __m128d; // dbl_29
extern __m128d const __m128d_30; //                     __m128d; // dbl_30
extern __m128d const __m128d_31; //                     __m128d; // dbl_31
extern __m128d const __m128d_32; //                     __m128d; // dbl_32
extern __m128d const __m128d_33; //                     __m128d; // dbl_33
extern __m128d const __m128d_34; //                     __m128d; // dbl_34
extern __m128d const __m128d_35; //                     __m128d; // dbl_35
extern __m128d const __m128d_36; //                     __m128d; // dbl_36
extern __m128d const __m128d_37; //                     __m128d; // dbl_37
extern __m128d const __m128d_38; //                     __m128d; // dbl_38
extern __m128d const __m128d_39; //                     __m128d; // dbl_39
extern __m128d const __m128d_40; //                     __m128d; // dbl_40
extern __m128d const __m128d_41; //                     __m128d; // dbl_41
extern __m128d const __m128d_42; //                     __m128d; // dbl_42
extern __m128d const __m128d_43; //                     __m128d; // dbl_43
extern __m128d const __m128d_44; //                     __m128d; // dbl_44
extern __m128d const __m128d_45; //                     __m128d; // dbl_45
extern __m128d const __m128d_46; //                     __m128d; // dbl_46
extern __m128d const __m128d_47; //                     __m128d; // dbl_47
extern __m128d const __m128d_48; //                     __m128d; // dbl_48
extern __m128d const __m128d_49; //                     __m128d; // dbl_49
extern __m128d const __m128d_50; //                     __m128d; // dbl_50
extern __m128d const __m128d_51; //                     __m128d; // dbl_51
extern __m128d const __m128d_52; //                     __m128d; // dbl_52
extern __m128d const __m128d_53; //                     __m128d; // dbl_53
extern __m128d const __m128d_54; //                     __m128d; // dbl_54
extern __m128d const __m128d_55; //                     __m128d; // dbl_55
extern __m128d const __m128d_56; //                     __m128d; // dbl_56
extern __m128d const __m128d_57; //                     __m128d; // dbl_57
extern __m128d const __m128d_58; //                     __m128d; // dbl_58
extern __m128d const __m128d_59; //                     __m128d; // dbl_59
extern __m128d const __m128d_60; //                     __m128d; // dbl_60
extern __m128d const __m128d_61; //                     __m128d; // dbl_61
extern __m128d const __m128d_62; //                     __m128d; // dbl_62
extern __m128d const __m128d_63; //                     __m128d; // dbl_63
extern __m128d const __m128d_64; //                     __m128d; // dbl_64
extern __m128d const __m128d_65; //                     __m128d; // dbl_65
extern __m128d const __m128d_66; //                     __m128d; // dbl_66
extern __m128d const __m128d_67; //                     __m128d; // dbl_67
extern __m128d const __m128d_68; //                     __m128d; // dbl_68
extern __m128d const __m128d_69; //                     __m128d; // dbl_69
extern __m128d const __m128d_70; //                     __m128d; // dbl_70
extern __m128d const __m128d_71; //                     __m128d; // dbl_71
extern __m128d const __m128d_72; //                     __m128d; // dbl_72
extern __m128d const __m128d_73; //                     __m128d; // dbl_73
extern __m128d const __m128d_74; //                     __m128d; // dbl_74
extern __m128d const __m128d_75; //                     __m128d; // dbl_75
extern __m128d const __m128d_76; //                     __m128d; // dbl_76
extern __m128d const __m128d_77; //                     __m128d; // dbl_77
extern __m128d const __m128d_78; //                     __m128d; // dbl_78
extern __m128d const __m128d_79; //                     __m128d; // dbl_79
extern __m128d const __m128d_80; //                     __m128d; // dbl_80
extern __m128d const __m128d_81; //                     __m128d; // dbl_81
extern __m128d const __m128d_82; //                     __m128d; // dbl_82
extern __m128d const __m128d_83; //                     __m128d; // dbl_83
extern __m128d const __m128d_84; //                     __m128d; // dbl_84
extern __m128d const __m128d_85; //                     __m128d; // dbl_85
extern __m128d const __m128d_86; //                     __m128d; // dbl_86
extern __m128d const __m128d_87; //                     __m128d; // dbl_87
extern __m128d const __m128d_88; //                     __m128d; // dbl_88
extern __m128d const __m128d_89; //                     __m128d; // dbl_89
extern __m128d const __m128d_90; //                     __m128d; // dbl_90
extern __m128d const __m128d_91; //                     __m128d; // dbl_91
extern __m128d const __m128d_92; //                     __m128d; // dbl_92
extern __m128d const __m128d_93; //                     __m128d; // dbl_93
extern __m128d const __m128d_94; //                     __m128d; // dbl_94
extern __m128d const __m128d_95; //                     __m128d; // dbl_95
extern __m128d const __m128d_96; //                     __m128d; // dbl_96
extern __m128d const __m128d_97; //                     __m128d; // dbl_97
extern __m128d const __m128d_98; //                     __m128d; // dbl_98
extern __m128d const __m128d_99; //                     __m128d; // dbl_99
extern __m128d const __m128d_100; //                    __m128d; // dbl_100
extern __m128d const __m128d_125; //                    __m128d; // dbl_125
extern __m128d const __m128d_126; //                    __m128d; // dbl_126
extern __m128d const __m128d_127; //                    __m128d; // dbl_127
extern __m128d const __m128d_128; //                    __m128d; // dbl_128
extern __m128d const __m128d_140; //                    __m128d; // dbl_140
extern __m128d const __m128d_145; //                    __m128d; // dbl_145
extern __m128d const __m128d_150; //                    __m128d; // dbl_150
extern __m128d const __m128d_180; //                    __m128d; // dbl_180
extern __m128d const __m128d_253; //                    __m128d; // dbl_253
extern __m128d const __m128d_254; //                    __m128d; // dbl_254
extern __m128d const __m128d_255; //                    __m128d; // dbl_255
extern __m128d const __m128d_256; //                    __m128d; // dbl_256
extern __m128d const __m128d_360; //                    __m128d; // dbl_360
extern __m128d const __m128d_511; //                    __m128d; // dbl_511
extern __m128d const __m128d_512; //                    __m128d; // dbl_512
extern __m128d const __m128d_513; //                    __m128d; // dbl_513
extern __m128d const __m128d_1023; //                   __m128d; // dbl_1023
extern __m128d const __m128d_1024; //                   __m128d; // dbl_1024
extern __m128d const __m128d_1025; //                   __m128d; // dbl_1025

extern __m128d const __m128d_32767; //              __m128d; // dbl_32767
extern __m128d const __m128d_32768; //              __m128d; // dbl_32768
extern __m128d const __m128d_65535; //              __m128d; // dbl_65535
extern __m128d const __m128d_65536; //              __m128d; // dbl_65536
extern __m128d const __m128d_2147483647; //             __m128d; // dbl_2147483647
extern __m128d const __m128d_2147483648; //             __m128d; // dbl_2147483648
extern __m128d const __m128d_4294967295; //             __m128d; // dbl_4294967295
extern __m128d const __m128d_4294967296; //             __m128d; // dbl_4294967296

extern __m128d const __m128d_neg0; //                   __m128d; // dbl_neg0
extern __m128d const __m128d_neg0d0001; //          __m128d; // dbl_neg0d0001
extern __m128d const __m128d_neg0d0002; //          __m128d; // dbl_neg0d0002
extern __m128d const __m128d_neg0d0003; //          __m128d; // dbl_neg0d0003
extern __m128d const __m128d_neg0d0004; //          __m128d; // dbl_neg0d0004
extern __m128d const __m128d_neg0d0005; //          __m128d; // dbl_neg0d0005
extern __m128d const __m128d_neg0d0006; //          __m128d; // dbl_neg0d0006
extern __m128d const __m128d_neg0d0007; //          __m128d; // dbl_neg0d0007
extern __m128d const __m128d_neg0d0008; //          __m128d; // dbl_neg0d0008
extern __m128d const __m128d_neg0d0009; //          __m128d; // dbl_neg0d0009
extern __m128d const __m128d_neg0d001; //               __m128d; // dbl_neg0d001
extern __m128d const __m128d_neg0d002; //               __m128d; // dbl_neg0d002
extern __m128d const __m128d_neg0d003; //               __m128d; // dbl_neg0d003
extern __m128d const __m128d_neg0d004; //               __m128d; // dbl_neg0d004
extern __m128d const __m128d_neg0d005; //               __m128d; // dbl_neg0d005
extern __m128d const __m128d_neg0d006; //               __m128d; // dbl_neg0d006
extern __m128d const __m128d_neg0d007; //               __m128d; // dbl_neg0d007
extern __m128d const __m128d_neg0d008; //               __m128d; // dbl_neg0d008
extern __m128d const __m128d_neg0d009; //               __m128d; // dbl_neg0d009
extern __m128d const __m128d_neg0d01; //                __m128d; // dbl_neg0d01
extern __m128d const __m128d_neg0d02; //                __m128d; // dbl_neg0d02
extern __m128d const __m128d_neg0d025; //               __m128d; // dbl_neg0d025
extern __m128d const __m128d_neg0d03; //                __m128d; // dbl_neg0d03
extern __m128d const __m128d_neg0d04; //                __m128d; // dbl_neg0d04
extern __m128d const __m128d_neg0d05; //                __m128d; // dbl_neg0d05
extern __m128d const __m128d_neg0d06; //                __m128d; // dbl_neg0d06
extern __m128d const __m128d_neg0d07; //                __m128d; // dbl_neg0d07
extern __m128d const __m128d_neg0d08; //                __m128d; // dbl_neg0d08
extern __m128d const __m128d_neg0d09; //                __m128d; // dbl_neg0d09
extern __m128d const __m128d_neg0d1; //                 __m128d; // dbl_neg0d1
extern __m128d const __m128d_neg0d2; //                 __m128d; // dbl_neg0d2
extern __m128d const __m128d_neg0d25; //                __m128d; // dbl_neg0d25
extern __m128d const __m128d_neg0d3; //                 __m128d; // dbl_neg0d3
extern __m128d const __m128d_neg0d4; //                 __m128d; // dbl_neg0d4
extern __m128d const __m128d_neg0d5; //                 __m128d; // dbl_neg0d5
extern __m128d const __m128d_neg0d6; //                 __m128d; // dbl_neg0d6
extern __m128d const __m128d_neg0d7; //                 __m128d; // dbl_neg0d7
extern __m128d const __m128d_neg0d8; //                 __m128d; // dbl_neg0d8
extern __m128d const __m128d_neg0d9; //                 __m128d; // dbl_neg0d9
extern __m128d const __m128d_neg1; //                   __m128d; // dbl_neg1
extern __m128d const __m128d_neg1d25; //                __m128d; // dbl_neg1d25
extern __m128d const __m128d_neg1d5; //                 __m128d; // dbl_neg1d5
extern __m128d const __m128d_neg2; //                   __m128d; // dbl_neg2
extern __m128d const __m128d_neg2d25; //                __m128d; // dbl_neg2d25
extern __m128d const __m128d_neg2d5; //                 __m128d; // dbl_neg2d5
extern __m128d const __m128d_neg3; //                   __m128d; // dbl_neg3
extern __m128d const __m128d_neg3d25; //                __m128d; // dbl_neg3d25
extern __m128d const __m128d_neg3d5; //                 __m128d; // dbl_neg3d5
extern __m128d const __m128d_neg4; //                   __m128d; // dbl_neg4
extern __m128d const __m128d_neg4d25; //                __m128d; // dbl_neg4d25
extern __m128d const __m128d_neg4d5; //                 __m128d; // dbl_neg4d5
extern __m128d const __m128d_neg5; //                   __m128d; // dbl_neg5
extern __m128d const __m128d_neg5d25; //                __m128d; // dbl_neg5d25
extern __m128d const __m128d_neg5d5; //                 __m128d; // dbl_neg5d5
extern __m128d const __m128d_neg6; //                   __m128d; // dbl_neg6
extern __m128d const __m128d_neg6d25; //                __m128d; // dbl_neg6d25
extern __m128d const __m128d_neg6d5; //                 __m128d; // dbl_neg6d5
extern __m128d const __m128d_neg7; //                   __m128d; // dbl_neg7
extern __m128d const __m128d_neg7d25; //                __m128d; // dbl_neg7d25
extern __m128d const __m128d_neg7d5; //                 __m128d; // dbl_neg7d5
extern __m128d const __m128d_neg8; //                   __m128d; // dbl_neg8
extern __m128d const __m128d_neg8d25; //                __m128d; // dbl_neg8d25
extern __m128d const __m128d_neg8d5; //                 __m128d; // dbl_neg8d5
extern __m128d const __m128d_neg9; //                   __m128d; // dbl_neg9
extern __m128d const __m128d_neg9d25; //                __m128d; // dbl_neg9d25
extern __m128d const __m128d_neg9d5; //                 __m128d; // dbl_neg9d5
extern __m128d const __m128d_neg10; //              __m128d; // dbl_neg10
extern __m128d const __m128d_neg11; //              __m128d; // dbl_neg11
extern __m128d const __m128d_neg12; //              __m128d; // dbl_neg12
extern __m128d const __m128d_neg13; //              __m128d; // dbl_neg13
extern __m128d const __m128d_neg14; //              __m128d; // dbl_neg14
extern __m128d const __m128d_neg15; //              __m128d; // dbl_neg15
extern __m128d const __m128d_neg16; //              __m128d; // dbl_neg16
extern __m128d const __m128d_neg17; //              __m128d; // dbl_neg17
extern __m128d const __m128d_neg18; //              __m128d; // dbl_neg18
extern __m128d const __m128d_neg19; //              __m128d; // dbl_neg19
extern __m128d const __m128d_neg20; //              __m128d; // dbl_neg20
extern __m128d const __m128d_neg21; //              __m128d; // dbl_neg21
extern __m128d const __m128d_neg22; //              __m128d; // dbl_neg22
extern __m128d const __m128d_neg23; //              __m128d; // dbl_neg23
extern __m128d const __m128d_neg24; //              __m128d; // dbl_neg24
extern __m128d const __m128d_neg24d5; //                __m128d; // dbl_neg24d5
extern __m128d const __m128d_neg25; //              __m128d; // dbl_neg25
extern __m128d const __m128d_neg26; //              __m128d; // dbl_neg26
extern __m128d const __m128d_neg27; //              __m128d; // dbl_neg27
extern __m128d const __m128d_neg28; //              __m128d; // dbl_neg28
extern __m128d const __m128d_neg29; //              __m128d; // dbl_neg29
extern __m128d const __m128d_neg30; //              __m128d; // dbl_neg30
extern __m128d const __m128d_neg31; //              __m128d; // dbl_neg31
extern __m128d const __m128d_neg32; //              __m128d; // dbl_neg32
extern __m128d const __m128d_neg33; //              __m128d; // dbl_neg33
extern __m128d const __m128d_neg34; //              __m128d; // dbl_neg34
extern __m128d const __m128d_neg35; //              __m128d; // dbl_neg35
extern __m128d const __m128d_neg36; //              __m128d; // dbl_neg36
extern __m128d const __m128d_neg37; //              __m128d; // dbl_neg37
extern __m128d const __m128d_neg38; //              __m128d; // dbl_neg38
extern __m128d const __m128d_neg39; //              __m128d; // dbl_neg39
extern __m128d const __m128d_neg40; //              __m128d; // dbl_neg40
extern __m128d const __m128d_neg41; //              __m128d; // dbl_neg41
extern __m128d const __m128d_neg42; //              __m128d; // dbl_neg42
extern __m128d const __m128d_neg43; //              __m128d; // dbl_neg43
extern __m128d const __m128d_neg44; //              __m128d; // dbl_neg44
extern __m128d const __m128d_neg45; //              __m128d; // dbl_neg45
extern __m128d const __m128d_neg46; //              __m128d; // dbl_neg46
extern __m128d const __m128d_neg47; //              __m128d; // dbl_neg47
extern __m128d const __m128d_neg48; //              __m128d; // dbl_neg48
extern __m128d const __m128d_neg49; //              __m128d; // dbl_neg49
extern __m128d const __m128d_neg50; //              __m128d; // dbl_neg50
extern __m128d const __m128d_neg51; //              __m128d; // dbl_neg51
extern __m128d const __m128d_neg52; //              __m128d; // dbl_neg52
extern __m128d const __m128d_neg53; //              __m128d; // dbl_neg53
extern __m128d const __m128d_neg54; //              __m128d; // dbl_neg54
extern __m128d const __m128d_neg55; //              __m128d; // dbl_neg55
extern __m128d const __m128d_neg56; //              __m128d; // dbl_neg56
extern __m128d const __m128d_neg57; //              __m128d; // dbl_neg57
extern __m128d const __m128d_neg58; //              __m128d; // dbl_neg58
extern __m128d const __m128d_neg59; //              __m128d; // dbl_neg59
extern __m128d const __m128d_neg60; //              __m128d; // dbl_neg60
extern __m128d const __m128d_neg61; //              __m128d; // dbl_neg61
extern __m128d const __m128d_neg62; //              __m128d; // dbl_neg62
extern __m128d const __m128d_neg63; //              __m128d; // dbl_neg63
extern __m128d const __m128d_neg64; //              __m128d; // dbl_neg64
extern __m128d const __m128d_neg65; //              __m128d; // dbl_neg65
extern __m128d const __m128d_neg66; //              __m128d; // dbl_neg66
extern __m128d const __m128d_neg67; //              __m128d; // dbl_neg67
extern __m128d const __m128d_neg68; //              __m128d; // dbl_neg68
extern __m128d const __m128d_neg69; //              __m128d; // dbl_neg69
extern __m128d const __m128d_neg70; //              __m128d; // dbl_neg70
extern __m128d const __m128d_neg71; //              __m128d; // dbl_neg71
extern __m128d const __m128d_neg72; //              __m128d; // dbl_neg72
extern __m128d const __m128d_neg73; //              __m128d; // dbl_neg73
extern __m128d const __m128d_neg74; //              __m128d; // dbl_neg74
extern __m128d const __m128d_neg75; //              __m128d; // dbl_neg75
extern __m128d const __m128d_neg76; //              __m128d; // dbl_neg76
extern __m128d const __m128d_neg77; //              __m128d; // dbl_neg77
extern __m128d const __m128d_neg78; //              __m128d; // dbl_neg78
extern __m128d const __m128d_neg79; //              __m128d; // dbl_neg79
extern __m128d const __m128d_neg80; //              __m128d; // dbl_neg80
extern __m128d const __m128d_neg81; //              __m128d; // dbl_neg81
extern __m128d const __m128d_neg82; //              __m128d; // dbl_neg82
extern __m128d const __m128d_neg83; //              __m128d; // dbl_neg83
extern __m128d const __m128d_neg84; //              __m128d; // dbl_neg84
extern __m128d const __m128d_neg85; //              __m128d; // dbl_neg85
extern __m128d const __m128d_neg86; //              __m128d; // dbl_neg86
extern __m128d const __m128d_neg87; //              __m128d; // dbl_neg87
extern __m128d const __m128d_neg88; //              __m128d; // dbl_neg88
extern __m128d const __m128d_neg89; //              __m128d; // dbl_neg89
extern __m128d const __m128d_neg90; //              __m128d; // dbl_neg90
extern __m128d const __m128d_neg91; //              __m128d; // dbl_neg91
extern __m128d const __m128d_neg92; //              __m128d; // dbl_neg92
extern __m128d const __m128d_neg93; //              __m128d; // dbl_neg93
extern __m128d const __m128d_neg94; //              __m128d; // dbl_neg94
extern __m128d const __m128d_neg95; //              __m128d; // dbl_neg95
extern __m128d const __m128d_neg96; //              __m128d; // dbl_neg96
extern __m128d const __m128d_neg97; //              __m128d; // dbl_neg97
extern __m128d const __m128d_neg98; //              __m128d; // dbl_neg98
extern __m128d const __m128d_neg99; //              __m128d; // dbl_neg99
extern __m128d const __m128d_neg100; //                 __m128d; // dbl_neg100
extern __m128d const __m128d_neg125; //                 __m128d; // dbl_neg125
extern __m128d const __m128d_neg126; //                 __m128d; // dbl_neg126
extern __m128d const __m128d_neg127; //                 __m128d; // dbl_neg127
extern __m128d const __m128d_neg128; //                 __m128d; // dbl_neg128
extern __m128d const __m128d_neg140; //                 __m128d; // dbl_neg140
extern __m128d const __m128d_neg145; //                 __m128d; // dbl_neg145
extern __m128d const __m128d_neg150; //                 __m128d; // dbl_neg150
extern __m128d const __m128d_neg180; //                 __m128d; // dbl_neg180
extern __m128d const __m128d_neg253; //                 __m128d; // dbl_neg253
extern __m128d const __m128d_neg254; //                 __m128d; // dbl_neg254
extern __m128d const __m128d_neg255; //                 __m128d; // dbl_neg255
extern __m128d const __m128d_neg256; //                 __m128d; // dbl_neg256
extern __m128d const __m128d_neg360; //                 __m128d; // dbl_neg360
extern __m128d const __m128d_neg511; //                 __m128d; // dbl_neg511
extern __m128d const __m128d_neg512; //                 __m128d; // dbl_neg512
extern __m128d const __m128d_neg513; //                 __m128d; // dbl_neg513
extern __m128d const __m128d_neg1023; //                __m128d; // dbl_neg1023
extern __m128d const __m128d_neg1024; //                __m128d; // dbl_neg1024
extern __m128d const __m128d_neg1025; //                __m128d; // dbl_neg1025

extern __m128d const __m128d_neg32767; //               __m128d; // dbl_neg32767
extern __m128d const __m128d_neg32768; //               __m128d; // dbl_neg32768
extern __m128d const __m128d_neg65535; //               __m128d; // dbl_neg65535
extern __m128d const __m128d_neg65536; //               __m128d; // dbl_neg65536
extern __m128d const __m128d_neg2147483647; //      __m128d; // dbl_neg2147483647
extern __m128d const __m128d_neg2147483648; //      __m128d; // dbl_neg2147483648
extern __m128d const __m128d_neg4294967295; //      __m128d; // dbl_neg4294967295
extern __m128d const __m128d_neg4294967296; //      __m128d; // dbl_neg4294967296

extern __m128d const __m128d_bin128; //             __m128d; // dbl_bin128
extern __m128d const __m128d_binneg150; //              __m128d; // dbl_binneg150

extern __m128d const __m128d_maxrand; //                __m128d; // dbl_maxrand

extern __m128d const __m128d_maxi8; //                  __m128d; // dbl_maxi8
extern __m128d const __m128d_mini8; //                  __m128d; // dbl_mini8
extern __m128d const __m128d_maxu8; //                  __m128d; // dbl_maxu8

extern __m128d const __m128d_maxi16; //             __m128d; // dbl_maxi16
extern __m128d const __m128d_mini16; //             __m128d; // dbl_mini16
extern __m128d const __m128d_maxu16; //             __m128d; // dbl_maxu16

extern __m128d const __m128d_maxi32; //             __m128d; // dbl_maxi32
extern __m128d const __m128d_mini32; //             __m128d; // dbl_mini32
extern __m128d const __m128d_maxu32; //             __m128d; // dbl_maxu32

extern __m128d const __m128d_maxi64; //             __m128d; // dbl_maxi64
extern __m128d const __m128d_mini64; //             __m128d; // dbl_mini64
extern __m128d const __m128d_maxu64; //             __m128d; // dbl_maxu64

extern __m128d const __m128d_maxi8xu8; //               __m128d; // dbl_maxi8xu8
extern __m128d const __m128d_mini8xu8; //               __m128d; // dbl_mini8xu8
extern __m128d const __m128d_maxi8xu16; //              __m128d; // dbl_maxi8xu16
extern __m128d const __m128d_mini8xu16; //              __m128d; // dbl_mini8xu16

extern __m128d const __m128d_maxi16xu16; //         __m128d; // dbl_maxi16xu16
extern __m128d const __m128d_mini16xu16; //         __m128d; // dbl_mini16xu16
extern __m128d const __m128d_maxi16xu32; //         __m128d; // dbl_maxi16xu32
extern __m128d const __m128d_mini16xu32; //         __m128d; // dbl_mini16xu32

extern __m128d const __m128d_maxi32xu32; //         __m128d; // dbl_maxi32xu32
extern __m128d const __m128d_mini32xu32; //         __m128d; // dbl_mini32xu32

extern __m128d const __m128d_fixunsigned; //            __m128d; // dbl_fixunsigned
extern __m128d const __m128d_fixunsigned32; //          __m128d; // dbl_fixunsigned32
extern __m128d const __m128d_fixmaxi32; //              __m128d; // dbl_fixmaxi32
extern __m128d const __m128d_fixmaxu32; //              __m128d; // dbl_fixmaxu32

extern __m128d const __m128d_fixunsigned64; //          __m128d; // dbl_fixunsigned64
extern __m128d const __m128d_fixmaxi64; //              __m128d; // dbl_fixmaxi64
extern __m128d const __m128d_fixmaxu64; //              __m128d; // dbl_fixmaxu64

extern __m128d const __m128d_rcpi16; //                 __m128d; // dbl_rcpi16
extern __m128d const __m128d_rcpu16; //                 __m128d; // dbl_rcpu16
extern __m128d const __m128d_rcpi16xu16; //             __m128d; // dbl_rcpi16xu16

extern __m128d const __m128d_mg; //                     __m128d; // dbl_mg
extern __m128d const __m128d_negmg; //              __m128d; // dbl_negmg
extern __m128d const __m128d_halfmg; //                 __m128d; // dbl_halfmg
extern __m128d const __m128d_neghalfmg; //          __m128d; // dbl_neghalfmg
extern __m128d const __m128d_mgdiv4; //                 __m128d; // dbl_mgdiv4
extern __m128d const __m128d_negmgdiv4; //          __m128d; // dbl_negmgdiv4
extern __m128d const __m128d_halfmgxmg; //          __m128d; // dbl_halfmgxmg
extern __m128d const __m128d_halfmgxsqrmg; //           __m128d; // dbl_halfmgxsqrmg
extern __m128d const __m128d_halfmgxcubemg; //      __m128d; // dbl_halfmgxcubemg
extern __m128d const __m128d_neghalfmgxmg; //           __m128d; // dbl_neghalfmgxmg
extern __m128d const __m128d_neghalfmgxsqrmg; //        __m128d; // dbl_neghalfmgxsqrmg
extern __m128d const __m128d_neghalfmgxcubemg; //       __m128d; // dbl_neghalfmgxcubemg
extern __m128d const __m128d_sqrmg; //              __m128d; // dbl_sqrmg
extern __m128d const __m128d_cubemg; //                 __m128d; // dbl_cubemg
extern __m128d const __m128d_sqrtmg; //                 __m128d; // dbl_sqrtmg
extern __m128d const __m128d_cbrtmg; //                 __m128d; // dbl_cbrtmg
extern __m128d const __m128d_rcpmg; //              __m128d; // dbl_rcpmg
extern __m128d const __m128d_rcpsqrmg; //               __m128d; // dbl_rcpsqrmg
extern __m128d const __m128d_rcpcubemg; //          __m128d; // dbl_rcpcubemg
extern __m128d const __m128d_rcpsqrtmg; //          __m128d; // dbl_rcpsqrtmg
extern __m128d const __m128d_rcpcbrtmg; //          __m128d; // dbl_rcpcbrtmg

extern __m128d const __m128d_2mg; //                    __m128d; // dbl_2mg
extern __m128d const __m128d_neg2mg; //                 __m128d; // dbl_neg2mg
extern __m128d const __m128d_sqr2mg; //                 __m128d; // dbl_sqr2mg
extern __m128d const __m128d_cube2mg; //                __m128d; // dbl_cube2mg
extern __m128d const __m128d_sqrt2mg; //                __m128d; // dbl_sqrt2mg
extern __m128d const __m128d_cbrt2mg; //                __m128d; // dbl_cbrt2mg
extern __m128d const __m128d_4mg; //                    __m128d; // dbl_4mg
extern __m128d const __m128d_neg4mg; //                 __m128d; // dbl_neg4mg
extern __m128d const __m128d_sqr4mg; //                 __m128d; // dbl_sqr4mg
extern __m128d const __m128d_cube4mg; //                __m128d; // dbl_cube4mg
extern __m128d const __m128d_sqrt4mg; //                __m128d; // dbl_sqrt4mg
extern __m128d const __m128d_cbrt4mg; //                __m128d; // dbl_cbrt4mg
extern __m128d const __m128d_rcp2mg; //                 __m128d; // dbl_rcp2mg
extern __m128d const __m128d_rcp4mg; //                 __m128d; // dbl_rcp4mg

extern __m128d const __m128d_e; //                  __m128d; // dbl_e
extern __m128d const __m128d_exp; //                    __m128d; // dbl_exp
extern __m128d const __m128d_loge; //                   __m128d; // dbl_loge
extern __m128d const __m128d_logehigh; //               __m128d; // dbl_logehigh
extern __m128d const __m128d_logelow; //                __m128d; // dbl_logelow
extern __m128d const __m128d_log2e; //              __m128d; // dbl_log2e
extern __m128d const __m128d_log2ehigh; //          __m128d; // dbl_log2ehigh
extern __m128d const __m128d_log2elow; //               __m128d; // dbl_log2elow
extern __m128d const __m128d_log10e; //                 __m128d; // dbl_log10e
extern __m128d const __m128d_rcplog2e; //               __m128d; // dbl_rcplog2e
extern __m128d const __m128d_rcplog10e; //          __m128d; // dbl_rcplog10e
extern __m128d const __m128d_log2t; //              __m128d; // dbl_log2t
extern __m128d const __m128d_log2; //                   __m128d; // dbl_log2
extern __m128d const __m128d_log2high; //               __m128d; // dbl_log2high
extern __m128d const __m128d_log2low; //                __m128d; // dbl_log2low
extern __m128d const __m128d_ln2; //                    __m128d; // dbl_ln2
extern __m128d const __m128d_ln2high; //                __m128d; // dbl_ln2high
extern __m128d const __m128d_ln2low; //                 __m128d; // dbl_ln2low
extern __m128d const __m128d_1divln2; //                __m128d; // dbl_1divln2
extern __m128d const __m128d_2divln2; //                __m128d; // dbl_2divln2
extern __m128d const __m128d_lnt; //                    __m128d; // dbl_lnt
extern __m128d const __m128d_lnthigh; //                __m128d; // dbl_lnthigh
extern __m128d const __m128d_lntlow; //                 __m128d; // dbl_lntlow
extern __m128d const __m128d_ln10; //                   __m128d; // dbl_ln10
extern __m128d const __m128d_sqrt2; //              __m128d; // dbl_sqrt2
extern __m128d const __m128d_rcpsqrt2; //               __m128d; // dbl_rcpsqrt2
extern __m128d const __m128d_sqrt2div2; //          __m128d; // dbl_sqrt2div2
extern __m128d const __m128d_sqrt2div2high; //      __m128d; // dbl_sqrt2div2high
extern __m128d const __m128d_sqrt2div2low; //           __m128d; // dbl_sqrt2div2low
extern __m128d const __m128d_sqrthalf; //               __m128d; // dbl_sqrthalf
extern __m128d const __m128d_sqrthalfhigh; //           __m128d; // dbl_sqrthalfhigh
extern __m128d const __m128d_sqrthalflow; //            __m128d; // dbl_sqrthalflow
extern __m128d const __m128d_pow2; //                   __m128d; // dbl_pow2
extern __m128d const __m128d_rcppow2; //                __m128d; // dbl_rcppow2
extern __m128d const __m128d_cbrt2; //              __m128d; // dbl_cbrt2
extern __m128d const __m128d_rcpcbrt2; //               __m128d; // dbl_rcpcbrt2
extern __m128d const __m128d_1div3; //              __m128d; // dbl_1div3
extern __m128d const __m128d_1div7; //              __m128d; // dbl_1div7
extern __m128d const __m128d_1div9; //              __m128d; // dbl_1div9
extern __m128d const __m128d_2div3; //              __m128d; // dbl_2div3
extern __m128d const __m128d_2div7; //              __m128d; // dbl_2div7
extern __m128d const __m128d_2div9; //              __m128d; // dbl_2div9
extern __m128d const __m128d_4div3; //              __m128d; // dbl_4div3
extern __m128d const __m128d_4div7; //              __m128d; // dbl_4div7
extern __m128d const __m128d_4div9; //              __m128d; // dbl_4div9

extern __m128d const __m128d_pi; //                     __m128d; // dbl_pi
extern __m128d const __m128d_pihigh; //                 __m128d; // dbl_pihigh
extern __m128d const __m128d_pilow; //              __m128d; // dbl_pilow
extern __m128d const __m128d_halfpi; //                 __m128d; // dbl_halfpi
extern __m128d const __m128d_2pi; //                    __m128d; // dbl_2pi
extern __m128d const __m128d_negpi; //              __m128d; // dbl_negpi
extern __m128d const __m128d_neghalfpi; //          __m128d; // dbl_neghalfpi
extern __m128d const __m128d_neg2pi; //                 __m128d; // dbl_neg2pi
extern __m128d const __m128d_rcppi; //              __m128d; // dbl_rcppi
extern __m128d const __m128d_invpi; //              __m128d; // dbl_invpi
extern __m128d const __m128d_rcp2pi; //                 __m128d; // dbl_rcp2pi
extern __m128d const __m128d_inv2pi; //                 __m128d; // dbl_inv2pi
extern __m128d const __m128d_pidiv2; //                 __m128d; // dbl_pidiv2
extern __m128d const __m128d_pidiv2high; //             __m128d; // dbl_pidiv2high
extern __m128d const __m128d_pidiv2low; //          __m128d; // dbl_pidiv2low
extern __m128d const __m128d_pidiv4; //                 __m128d; // dbl_pidiv4
extern __m128d const __m128d_pidiv4high; //             __m128d; // dbl_pidiv4high
extern __m128d const __m128d_pidiv4low; //          __m128d; // dbl_pidiv4low
extern __m128d const __m128d_pix3div4; //               __m128d; // dbl_pix3div4
extern __m128d const __m128d_sqrtpi; //                 __m128d; // dbl_sqrtpi
extern __m128d const __m128d_sqrt2pi; //                __m128d; // dbl_sqrt2pi
extern __m128d const __m128d_sqrt2pihigh; //            __m128d; // dbl_sqrt2pihigh
extern __m128d const __m128d_sqrt2pilow; //             __m128d; // dbl_sqrt2pilow
extern __m128d const __m128d_rcpsqrtpi; //          __m128d; // dbl_rcpsqrtpi
extern __m128d const __m128d_rcpsqrt2pi; //             __m128d; // dbl_rcpsqrt2pi
extern __m128d const __m128d_sqrtpidiv2; //             __m128d; // dbl_sqrtpidiv2
extern __m128d const __m128d_sqrtpidiv2high; //         __m128d; // dbl_sqrtpidiv2high
extern __m128d const __m128d_sqrt2pidiv2; //            __m128d; // dbl_sqrt2pidiv2
extern __m128d const __m128d_sqrt2pidiv2high; //        __m128d; // dbl_sqrt2pidiv2high
extern __m128d const __m128d_sqrt2pidiv2low; //         __m128d; // dbl_sqrt2pidiv2low
extern __m128d const __m128d_2divpi; //                 __m128d; // dbl_2divpi
extern __m128d const __m128d_2div2pi; //                __m128d; // dbl_2div2pi
extern __m128d const __m128d_2divsqrtpi; //             __m128d; // dbl_2divsqrtpi
extern __m128d const __m128d_2divsqrt2pi; //            __m128d; // dbl_2divsqrt2pi
extern __m128d const __m128d_sqrt2divpi; //             __m128d; // dbl_sqrt2divpi
extern __m128d const __m128d_logpi; //              __m128d; // dbl_logpi
extern __m128d const __m128d_log2pi; //                 __m128d; // dbl_log2pi
extern __m128d const __m128d_lnpi; //                   __m128d; // dbl_lnpi
extern __m128d const __m128d_ln2pi; //              __m128d; // dbl_ln2pi
extern __m128d const __m128d_powpi; //              __m128d; // dbl_powpi
extern __m128d const __m128d_rcppowpi; //               __m128d; // dbl_rcppowpi
extern __m128d const __m128d_pow2pi; //                 __m128d; // dbl_pow2pi
extern __m128d const __m128d_rcppow2pi; //          __m128d; // dbl_rcppow2pi
extern __m128d const __m128d_cbrtpi; //                 __m128d; // dbl_cbrtpi
extern __m128d const __m128d_rcpcbrtpi; //          __m128d; // dbl_rcpcbrtpi
extern __m128d const __m128d_cbrt2pi; //                __m128d; // dbl_cbrt2pi
extern __m128d const __m128d_rcpcbrt2pi; //             __m128d; // dbl_rcpcbrt2pi

extern __m128d const __m128d_ln2x1024; //               __m128d; // dbl_ln2x1024
extern __m128d const __m128d_ln2x1025; //               __m128d; // dbl_ln2x1025
extern __m128d const __m128d_ln2x1075; //               __m128d; // dbl_ln2x1075
extern __m128d const __m128d_log2x1024; //          __m128d; // dbl_log2x1024
extern __m128d const __m128d_log2x1075; //          __m128d; // dbl_log2x1075

extern __m128d const __m128d_pow2tom126; //             __m128d; // dbl_pow2tom126
extern __m128d const __m128d_pow2to126; //          __m128d; // dbl_pow2to126
extern __m128d const __m128d_normhuge; //               __m128d; // dbl_normhuge
extern __m128d const __m128d_pow2to23; //               __m128d; // dbl_pow2to23
extern __m128d const __m128d_pow2to24; //               __m128d; // dbl_pow2to24
extern __m128d const __m128d_maxi32pow2to23; //         __m128d; // dbl_maxi32pow2to23
extern __m128d const __m128d_pow2to31; //               __m128d; // dbl_pow2to31
extern __m128d const __m128d_pow2to32; //               __m128d; // dbl_pow2to32
extern __m128d const __m128d_pow2to52; //               __m128d; // dbl_pow2to52
extern __m128d const __m128d_pow2to53; //               __m128d; // dbl_pow2to53
extern __m128d const __m128d_pow2to54; //               __m128d; // dbl_pow2to54
extern __m128d const __m128d_pow2tom54; //          __m128d; // dbl_pow2tom54
extern __m128d const __m128d_pow2to62; //               __m128d; // dbl_pow2to62
extern __m128d const __m128d_maxi64pow2to52; //     __m128d; // dbl_maxi64pow2to52
extern __m128d const __m128d_pow2to63; //               __m128d; // dbl_pow2to63
extern __m128d const __m128d_pow2to64; //               __m128d; // dbl_pow2to64
extern __m128d const __m128d_pow2tom1022; //            __m128d; // dbl_pow2tom1022
extern __m128d const __m128d_trigploss; //          __m128d; // dbl_trigploss

extern __m128d const __m128d_degtorad; //               __m128d; // dbl_degtorad
extern __m128d const __m128d_radtodeg; //               __m128d; // dbl_radtodeg

extern __m128d const __m128d_degtograd; //          __m128d; // dbl_degtograd
extern __m128d const __m128d_gradtodeg; //          __m128d; // dbl_gradtodeg

extern __m128d const __m128d_radtograd; //          __m128d; // dbl_radtograd
extern __m128d const __m128d_gradtorad; //          __m128d; // dbl_gradtorad

extern __m128d const __m128d_sungravity; //             __m128d; // dbl_sungravity
extern __m128d const __m128d_jupitergravity; //         __m128d; // dbl_jupitergravity
extern __m128d const __m128d_neptunegravity; //         __m128d; // dbl_neptunegravity
extern __m128d const __m128d_saturngravity; //      __m128d; // dbl_saturngravity
extern __m128d const __m128d_uranusgravity; //      __m128d; // dbl_uranusgravity
extern __m128d const __m128d_earthgravity; //           __m128d; // dbl_earthgravity
extern __m128d const __m128d_venusgravity; //           __m128d; // dbl_venusgravity
extern __m128d const __m128d_marsgravity; //            __m128d; // dbl_marsgravity
extern __m128d const __m128d_mercurygravity; //         __m128d; // dbl_mercurygravity
extern __m128d const __m128d_moongravity; //            __m128d; // dbl_moongravity
extern __m128d const __m128d_plutogravity; //           __m128d; // dbl_plutogravity

extern __m128d const __m128d_kmtoinch; //               __m128d; // dbl_kmtoinch
extern __m128d const __m128d_kmtofeet; //               __m128d; // dbl_kmtofeet 
extern __m128d const __m128d_kmtoyards; //          __m128d; // dbl_kmtoyards
extern __m128d const __m128d_kmtomiles; //          __m128d; // dbl_kmtomiles

extern __m128d const __m128d_metoinch; //               __m128d; // dbl_metoinch
extern __m128d const __m128d_metofeet; //               __m128d; // dbl_metofeet
extern __m128d const __m128d_metoyards; //          __m128d; // dbl_metoyards
extern __m128d const __m128d_metomiles; //          __m128d; // dbl_metomiles

extern __m128d const __m128d_cmtoinch; //               __m128d; // dbl_cmtoinch
extern __m128d const __m128d_cmtofeet; //               __m128d; // dbl_cmtofeet
extern __m128d const __m128d_cmtoyards; //          __m128d; // dbl_cmtoyards
extern __m128d const __m128d_cmtomiles; //          __m128d; // dbl_cmtomiles

extern __m128d const __m128d_milltoinch; //             __m128d; // dbl_milltoinch
extern __m128d const __m128d_milltofeet; //             __m128d; // dbl_milltofeet
extern __m128d const __m128d_milltoyards; //            __m128d; // dbl_milltoyards
extern __m128d const __m128d_milltomiles; //            __m128d; // dbl_milltomiles

extern __m128d const __m128d_inchtomill; //             __m128d; // dbl_inchtomill
extern __m128d const __m128d_inchtocm; //               __m128d; // dbl_inchtocm
extern __m128d const __m128d_inchtome; //               __m128d; // dbl_inchtome
extern __m128d const __m128d_inchtokm; //               __m128d; // dbl_inchtokm
extern __m128d const __m128d_inchtofeet; //             __m128d; // dbl_inchtofeet
extern __m128d const __m128d_inchtoyards; //            __m128d; // dbl_inchtoyards
extern __m128d const __m128d_inchtomiles; //            __m128d; // dbl_inchtomiles

extern __m128d const __m128d_feettomill; //             __m128d; // dbl_feettomill
extern __m128d const __m128d_feettocm; //               __m128d; // dbl_feettocm
extern __m128d const __m128d_feettome; //               __m128d; // dbl_feettome
extern __m128d const __m128d_feettokm; //               __m128d; // dbl_feettokm
extern __m128d const __m128d_feettoinch; //             __m128d; // dbl_feettoinch
extern __m128d const __m128d_feettoyards; //            __m128d; // dbl_feettoyards
extern __m128d const __m128d_feettomiles; //            __m128d; // dbl_feettomiles

extern __m128d const __m128d_yardstomill; //            __m128d; // dbl_yardstomill
extern __m128d const __m128d_yardstocm; //          __m128d; // dbl_yardstocm
extern __m128d const __m128d_yardstome; //          __m128d; // dbl_yardstome
extern __m128d const __m128d_yardstokm; //          __m128d; // dbl_yardstokm
extern __m128d const __m128d_yardstoinch; //            __m128d; // dbl_yardstoinch
extern __m128d const __m128d_yardstofeet; //            __m128d; // dbl_yardstofeet
extern __m128d const __m128d_yardstomiles; //           __m128d; // dbl_yardstomiles

extern __m128d const __m128d_milestomill; //            __m128d; // dbl_milestomill
extern __m128d const __m128d_milestocm; //          __m128d; // dbl_milestocm
extern __m128d const __m128d_milestome; //          __m128d; // dbl_milestome
extern __m128d const __m128d_milestoinch; //            __m128d; // dbl_milestokm
extern __m128d const __m128d_milestoinch; //            __m128d; // dbl_milestoinch
extern __m128d const __m128d_milestofeet; //            __m128d; // dbl_milestofeet
extern __m128d const __m128d_milestoyards; //           __m128d; // dbl_milestoyards

extern __m128d const __m128d_kmphtomeps; //             __m128d; // dbl_kmphtomeps
extern __m128d const __m128d_kmphtokmps; //             __m128d; // dbl_kmphtokmps
extern __m128d const __m128d_kmphtomepm; //             __m128d; // dbl_kmphtomepm
extern __m128d const __m128d_kmphtomilesph; //      __m128d; // dbl_kmphtomilesph
extern __m128d const __m128d_kmphtomilesps; //      __m128d; // dbl_kmphtomilesps
extern __m128d const __m128d_kmphtofeetps; //           __m128d; // dbl_kmphtofeetps
extern __m128d const __m128d_kmphtofeetpm; //           __m128d; // dbl_kmphtofeetpm

extern __m128d const __m128d_kmpstomeps; //             __m128d; // dbl_kmpstomeps
extern __m128d const __m128d_kmpstokmph; //             __m128d; // dbl_kmpstokmph
extern __m128d const __m128d_kmpstomepm; //             __m128d; // dbl_kmpstomepm
extern __m128d const __m128d_kmpstomilesph; //      __m128d; // dbl_kmpstomilesph
extern __m128d const __m128d_kmpstomilesps; //      __m128d; // dbl_kmpstomilesps
extern __m128d const __m128d_kmpstofeetps; //           __m128d; // dbl_kmpstofeetps
extern __m128d const __m128d_kmpstofeetpm; //           __m128d; // dbl_kmpstofeetpm

extern __m128d const __m128d_mepstokmph; //             __m128d; // dbl_mepstokmph
extern __m128d const __m128d_mepstokmps; //             __m128d; // dbl_mepstokmps
extern __m128d const __m128d_mepstomepm; //             __m128d; // dbl_mepstomepm
extern __m128d const __m128d_mepstomilesph; //      __m128d; // dbl_mepstomilesph
extern __m128d const __m128d_mepstomilesps; //      __m128d; // dbl_mepstomilesps
extern __m128d const __m128d_mepstofeetps; //           __m128d; // dbl_mepstofeetps
extern __m128d const __m128d_mepstofeetpm; //           __m128d; // dbl_mepstofeetpm

extern __m128d const __m128d_mepmtokmph; //             __m128d; // dbl_mepmtokmph
extern __m128d const __m128d_mepmtokmps; //             __m128d; // dbl_mepmtokmps
extern __m128d const __m128d_mepmtomeps; //             __m128d; // dbl_mepmtomeps
extern __m128d const __m128d_mepmtomilesph; //      __m128d; // dbl_mepmtomilesph
extern __m128d const __m128d_mepmtomilesps; //      __m128d; // dbl_mepmtomilesps
extern __m128d const __m128d_mepmtofeetps; //           __m128d; // dbl_mepmtofeetps
extern __m128d const __m128d_mepmtofeetpm; //           __m128d; // dbl_mepmtofeetpm

extern __m128d const __m128d_milesphtokmph; //      __m128d; // dbl_milesphtokmph
extern __m128d const __m128d_milesphtokmps; //      __m128d; // dbl_milesphtokmps
extern __m128d const __m128d_milesphtomeps; //      __m128d; // dbl_milesphtomeps
extern __m128d const __m128d_milesphtomepm; //      __m128d; // dbl_milesphtomepm
extern __m128d const __m128d_milesphtomilesps; //       __m128d; // dbl_milesphtomilesps
extern __m128d const __m128d_milesphtofeetps; //        __m128d; // dbl_milesphtofeetps
extern __m128d const __m128d_milesphtofeetpm; //        __m128d; // dbl_milesphtofeetpm

extern __m128d const __m128d_milespstokmph; //      __m128d; // dbl_milespstokmph
extern __m128d const __m128d_milespstokmps; //      __m128d; // dbl_milespstokmps
extern __m128d const __m128d_milespstomeps; //      __m128d; // dbl_milespstomeps
extern __m128d const __m128d_milespstomepm; //      __m128d; // dbl_milespstomepm
extern __m128d const __m128d_milespstomilespm; //       __m128d; // dbl_milespstomilespm
extern __m128d const __m128d_milespstofeetps; //        __m128d; // dbl_milespstofeetps
extern __m128d const __m128d_milespstofeetpm; //        __m128d; // dbl_milespstofeetpm

extern __m128d const __m128d_feetpstokmph; //           __m128d; // dbl_feetpstokmph
extern __m128d const __m128d_feetpstokmps; //           __m128d; // dbl_feetpstokmps
extern __m128d const __m128d_feetpstomeps; //           __m128d; // dbl_feetpstomeps
extern __m128d const __m128d_feetpstomepm; //           __m128d; // dbl_feetpstomepm
extern __m128d const __m128d_feetpstomilesph; //        __m128d; // dbl_feetpstomilesph
extern __m128d const __m128d_feetpstomilesps; //        __m128d; // dbl_feetpstomilesps
extern __m128d const __m128d_feetpstofeetpm; //         __m128d; // dbl_feetpstofeetpm

extern __m128d const __m128d_feetpmtokmph; //           __m128d; // dbl_feetpmtokmph
extern __m128d const __m128d_feetpmtokmps; //           __m128d; // dbl_feetpmtokmps
extern __m128d const __m128d_feetpmtomeps; //           __m128d; // dbl_feetpmtomeps
extern __m128d const __m128d_feetpmtomepm; //           __m128d; // dbl_feetpmtomepm
extern __m128d const __m128d_feetpmtomilesph; //        __m128d; // dbl_feetpmtomilesph
extern __m128d const __m128d_feetpmtomilesps; //        __m128d; // dbl_feetpmtomilesps
extern __m128d const __m128d_feetpmtofeetps; //         __m128d; // dbl_feetpmtofeetps

extern __m128d const __m128d_soundspeedp50c; //         __m128d; // dbl_soundspeedp50c
extern __m128d const __m128d_soundspeedp45c; //         __m128d; // dbl_soundspeedp45c
extern __m128d const __m128d_soundspeedp40c; //         __m128d; // dbl_soundspeedp40c
extern __m128d const __m128d_soundspeedp35c; //         __m128d; // dbl_soundspeedp35c
extern __m128d const __m128d_soundspeedp30c; //         __m128d; // dbl_soundspeedp30c
extern __m128d const __m128d_soundspeedp25c; //         __m128d; // dbl_soundspeedp25c
extern __m128d const __m128d_soundspeedp20c; //         __m128d; // dbl_soundspeedp20c
extern __m128d const __m128d_soundspeedp15c; //         __m128d; // dbl_soundspeedp15c
extern __m128d const __m128d_soundspeedp10c; //         __m128d; // dbl_soundspeedp10c
extern __m128d const __m128d_soundspeedp5c; //      __m128d; // dbl_soundspeedp5c
extern __m128d const __m128d_soundspeed0c; //           __m128d; // dbl_soundspeed0c
extern __m128d const __m128d_soundspeedn5c; //      __m128d; // dbl_soundspeedn5c
extern __m128d const __m128d_soundspeedn10c; //         __m128d; // dbl_soundspeedn10c
extern __m128d const __m128d_soundspeedn15c; //         __m128d; // dbl_soundspeedn15c
extern __m128d const __m128d_soundspeedn20c; //         __m128d; // dbl_soundspeedn20c
extern __m128d const __m128d_soundspeedn25c; //         __m128d; // dbl_soundspeedn25c
extern __m128d const __m128d_soundspeedn30c; //         __m128d; // dbl_soundspeedn30c
extern __m128d const __m128d_soundspeedn35c; //         __m128d; // dbl_soundspeedn35c
extern __m128d const __m128d_soundspeedn40c; //         __m128d; // dbl_soundspeedn40c
extern __m128d const __m128d_soundspeedn45c; //         __m128d; // dbl_soundspeedn45c
extern __m128d const __m128d_soundspeedn50c; //         __m128d; // dbl_soundspeedn50c

extern __m128d const __m128d_schscale; //               __m128d; // dbl_schscale
extern __m128d const __m128d_thscale; //                __m128d; // dbl_thscale

extern __m128d const __m128d_expest1; //                __m128d; // dbl_expest1
extern __m128d const __m128d_expest2; //                __m128d; // dbl_expest2
extern __m128d const __m128d_expest3; //                __m128d; // dbl_expest3
extern __m128d const __m128d_expest4; //                __m128d; // dbl_expest4
extern __m128d const __m128d_expest5; //                __m128d; // dbl_expest5
extern __m128d const __m128d_expest6; //                __m128d; // dbl_expest6
extern __m128d const __m128d_expest7; //                __m128d; // dbl_expest7
extern __m128d const __m128d_logest0; //                __m128d; // dbl_logest0
extern __m128d const __m128d_logest1; //                __m128d; // dbl_logest1
extern __m128d const __m128d_logest2; //                __m128d; // dbl_logest2
extern __m128d const __m128d_logest3; //                __m128d; // dbl_logest3
extern __m128d const __m128d_logest4; //                __m128d; // dbl_logest4
extern __m128d const __m128d_logest5; //                __m128d; // dbl_logest5
extern __m128d const __m128d_logest6; //                __m128d; // dbl_logest6
extern __m128d const __m128d_logest7; //                __m128d; // dbl_logest7

	//;; double low;;

	//;;             sincos template, double precision
extern __m128d const __m128d_0e_P0sin; //          __m128d, (-1.66666666666666307295e-01), dbl_false
extern __m128d const __m128d_0e_P1sin; //          __m128d, (8.33333333332211858878e-03), dbl_false
extern __m128d const __m128d_0e_P2sin; //          __m128d, (-1.98412698295895385996e-04), dbl_false
extern __m128d const __m128d_0e_P3sin; //          __m128d, (2.75573136213857245213e-06), dbl_false
extern __m128d const __m128d_0e_P4sin; //          __m128d, (-2.50507477628578072866e-08), dbl_false
extern __m128d const __m128d_0e_P5sin; //          __m128d, (1.58962301576546568060e-010), dbl_false

extern __m128d const __m128d_0e_P0cos; //          __m128d, (4.16666666666665929218e-02), dbl_false
extern __m128d const __m128d_0e_P1cos; //          __m128d, (-1.38888888888730564116e-03), dbl_false
extern __m128d const __m128d_0e_P2cos; //          __m128d, (2.48015872888517045348e-05), dbl_false
extern __m128d const __m128d_0e_P3cos; //          __m128d, (-2.75573141792967388112e-07), dbl_false
extern __m128d const __m128d_0e_P4cos; //          __m128d, (2.08757008419747316778e-09), dbl_false
extern __m128d const __m128d_0e_P5cos; //          __m128d, (-1.13585365213876817300e-011), dbl_false

extern __m128d const __m128d_0e_DP1; //          __m128d, 1.570796310901641845703125, dbl_false
extern __m128d const __m128d_0e_DP2; //          __m128d, 0.00000001589325471229585673428, dbl_false
extern __m128d const __m128d_0e_DP3; //          __m128d, (6.12323399573676588614e-017), dbl_false
	//;;             sincos template, double precision

extern __m128d const __m128d_0e_1lshl3; //                  __m128d; // dbl_1lshl3; // dbl_false
extern __m128d const __m128d_0e_1lshl4; //                  __m128d; // dbl_1lshl4; // dbl_false
extern __m128d const __m128d_0e_1lshl7; //                  __m128d; // dbl_1lshl7; // dbl_false
extern __m128d const __m128d_0e_1lshl8; //                  __m128d; // dbl_1lshl8; // dbl_false
extern __m128d const __m128d_0e_1lshl11; //             __m128d; // dbl_1lshl11; // dbl_false
extern __m128d const __m128d_0e_1lshl12; //             __m128d; // dbl_1lshl12; // dbl_false
extern __m128d const __m128d_0e_1lshl15; //             __m128d; // dbl_1lshl15; // dbl_false
extern __m128d const __m128d_0e_1lshl16; //             __m128d; // dbl_1lshl16; // dbl_false
extern __m128d const __m128d_0e_1lshl19; //             __m128d; // dbl_1lshl19; // dbl_false
extern __m128d const __m128d_0e_1lshl20; //             __m128d; // dbl_1lshl20; // dbl_false
extern __m128d const __m128d_0e_1lshl23; //             __m128d; // dbl_1lshl23; // dbl_false
extern __m128d const __m128d_0e_1lshl24; //             __m128d; // dbl_1lshl24; // dbl_false
extern __m128d const __m128d_0e_1lshl27; //             __m128d; // dbl_1lshl27; // dbl_false
extern __m128d const __m128d_0e_1lshl28; //             __m128d; // dbl_1lshl28; // dbl_false
extern __m128d const __m128d_0e_1lshl31; //             __m128d; // dbl_1lshl31; // dbl_false
extern __m128d const __m128d_0e_1lshl32; //             __m128d; // dbl_1lshl32; // dbl_false
extern __m128d const __m128d_0e_1lshl35; //             __m128d; // dbl_1lshl35; // dbl_false
extern __m128d const __m128d_0e_1lshl36; //             __m128d; // dbl_1lshl36; // dbl_false
extern __m128d const __m128d_0e_1lshl39; //             __m128d; // dbl_1lshl39; // dbl_false
extern __m128d const __m128d_0e_1lshl40; //             __m128d; // dbl_1lshl40; // dbl_false
extern __m128d const __m128d_0e_1lshl43; //             __m128d; // dbl_1lshl43; // dbl_false
extern __m128d const __m128d_0e_1lshl44; //             __m128d; // dbl_1lshl44; // dbl_false
extern __m128d const __m128d_0e_1lshl47; //             __m128d; // dbl_1lshl47; // dbl_false
extern __m128d const __m128d_0e_1lshl48; //             __m128d; // dbl_1lshl48; // dbl_false
extern __m128d const __m128d_0e_1lshl51; //             __m128d; // dbl_1lshl51; // dbl_false
extern __m128d const __m128d_0e_1lshl52; //             __m128d; // dbl_1lshl52; // dbl_false
extern __m128d const __m128d_0e_1lshl55; //             __m128d; // dbl_1lshl55; // dbl_false
extern __m128d const __m128d_0e_1lshl56; //             __m128d; // dbl_1lshl56; // dbl_false
extern __m128d const __m128d_0e_1lshl59; //             __m128d; // dbl_1lshl59; // dbl_false
extern __m128d const __m128d_0e_1lshl60; //             __m128d; // dbl_1lshl60; // dbl_false
extern __m128d const __m128d_0e_1lshl63; //             __m128d; // dbl_1lshl63; // dbl_false

extern __m128d const __m128d_0e_neg1lshl3; //               __m128d; // dbl_neg1lshl3; // dbl_false
extern __m128d const __m128d_0e_neg1lshl4; //               __m128d; // dbl_neg1lshl4; // dbl_false
extern __m128d const __m128d_0e_neg1lshl7; //               __m128d; // dbl_neg1lshl7; // dbl_false
extern __m128d const __m128d_0e_neg1lshl8; //               __m128d; // dbl_neg1lshl8; // dbl_false
extern __m128d const __m128d_0e_neg1lshl11; //              __m128d; // dbl_neg1lshl11; // dbl_false
extern __m128d const __m128d_0e_neg1lshl12; //              __m128d; // dbl_neg1lshl12; // dbl_false
extern __m128d const __m128d_0e_neg1lshl15; //              __m128d; // dbl_neg1lshl15; // dbl_false
extern __m128d const __m128d_0e_neg1lshl16; //              __m128d; // dbl_neg1lshl16; // dbl_false
extern __m128d const __m128d_0e_neg1lshl19; //              __m128d; // dbl_neg1lshl19; // dbl_false
extern __m128d const __m128d_0e_neg1lshl20; //              __m128d; // dbl_neg1lshl20; // dbl_false
extern __m128d const __m128d_0e_neg1lshl23; //              __m128d; // dbl_neg1lshl23; // dbl_false
extern __m128d const __m128d_0e_neg1lshl24; //              __m128d; // dbl_neg1lshl24; // dbl_false
extern __m128d const __m128d_0e_neg1lshl27; //              __m128d; // dbl_neg1lshl27; // dbl_false
extern __m128d const __m128d_0e_neg1lshl28; //              __m128d; // dbl_neg1lshl28; // dbl_false
extern __m128d const __m128d_0e_neg1lshl31; //              __m128d; // dbl_neg1lshl31; // dbl_false
extern __m128d const __m128d_0e_neg1lshl32; //              __m128d; // dbl_neg1lshl32; // dbl_false
extern __m128d const __m128d_0e_neg1lshl35; //              __m128d; // dbl_neg1lshl35; // dbl_false
extern __m128d const __m128d_0e_neg1lshl36; //              __m128d; // dbl_neg1lshl36; // dbl_false
extern __m128d const __m128d_0e_neg1lshl39; //              __m128d; // dbl_neg1lshl39; // dbl_false
extern __m128d const __m128d_0e_neg1lshl40; //              __m128d; // dbl_neg1lshl40; // dbl_false
extern __m128d const __m128d_0e_neg1lshl43; //              __m128d; // dbl_neg1lshl43; // dbl_false
extern __m128d const __m128d_0e_neg1lshl44; //              __m128d; // dbl_neg1lshl44; // dbl_false
extern __m128d const __m128d_0e_neg1lshl47; //              __m128d; // dbl_neg1lshl47; // dbl_false
extern __m128d const __m128d_0e_neg1lshl48; //              __m128d; // dbl_neg1lshl48; // dbl_false
extern __m128d const __m128d_0e_neg1lshl51; //              __m128d; // dbl_neg1lshl51; // dbl_false
extern __m128d const __m128d_0e_neg1lshl52; //              __m128d; // dbl_neg1lshl52; // dbl_false
extern __m128d const __m128d_0e_neg1lshl55; //              __m128d; // dbl_neg1lshl55; // dbl_false
extern __m128d const __m128d_0e_neg1lshl56; //              __m128d; // dbl_neg1lshl56; // dbl_false
extern __m128d const __m128d_0e_neg1lshl59; //              __m128d; // dbl_neg1lshl59; // dbl_false
extern __m128d const __m128d_0e_neg1lshl60; //              __m128d; // dbl_neg1lshl60; // dbl_false
extern __m128d const __m128d_0e_neg1lshl63; //              __m128d; // dbl_neg1lshl63; // dbl_false

extern __m128d const __m128d_0e_false; //                   __m128q; // dbl_false; // dbl_false
extern __m128d const __m128d_0e_true; //                    __m128q; // dbl_true; // dbl_false
extern __m128d const __m128d_0e_error; //                   __m128q; // dbl_error; // dbl_false

extern __m128d const __m128d_0e_magic; //                   __m128q; // dbl_magic; // dbl_false
extern __m128d const __m128d_0e_sign; //                    __m128q; // dbl_sign; // dbl_false
extern __m128d const __m128d_0e_invsign; //             __m128q; // dbl_invsign; // dbl_false

extern __m128d const __m128d_0e_inf; //                 __m128q; // dbl_inf; // dbl_false
extern __m128d const __m128d_0e_fin; //                 __m128q; // dbl_fin; // dbl_false
extern __m128d const __m128d_0e_invinf; //                  __m128q; // dbl_invinf; // dbl_false
extern __m128d const __m128d_0e_neginf; //                  __m128q; // dbl_neginf; // dbl_false
extern __m128d const __m128d_0e_nan; //                 __m128q; // dbl_nan; // dbl_false
extern __m128d const __m128d_0e_qnan; //                    __m128q; // dbl_qnan; // dbl_false
extern __m128d const __m128d_0e_negqnan; //             __m128q; // dbl_negqnan; // dbl_false
extern __m128d const __m128d_0e_nantest; //             __m128q; // dbl_nantest; // dbl_false
extern __m128d const __m128d_0e_abs; //                 __m128q; // dbl_abs; // dbl_false
extern __m128d const __m128d_0e_min; //                 __m128d; // dbl_min; // dbl_false
extern __m128d const __m128d_0e_max; //                 __m128d; // dbl_max; // dbl_false
extern __m128d const __m128d_0e_nofraction; //              __m128d; // dbl_nofraction; // dbl_false
extern __m128d const __m128d_0e_mindenorm; //               __m128d; // dbl_mindenorm; // dbl_false
extern __m128d const __m128d_0e_denormlimit; //         __m128d; // dbl_denormlimit; // dbl_false
extern __m128d const __m128d_0e_minnormal; //               __m128d; // dbl_minnormal; // dbl_false
extern __m128d const __m128d_0e_maxnormal; //               __m128d; // dbl_maxnormal; // dbl_false

extern __m128d const __m128d_0e_decdig; //                  __m128d; // dbl_decdig; // dbl_false
extern __m128d const __m128d_0e_dig; //                 __m128d; // dbl_dig; // dbl_false
extern __m128d const __m128d_0e_negdecdig; //               __m128d; // dbl_negdecdig; // dbl_false
extern __m128d const __m128d_0e_negdig; //                  __m128d; // dbl_negdig; // dbl_false
extern __m128d const __m128d_0e_eps; //                 __m128d; // dbl_eps; // dbl_false
extern __m128d const __m128d_0e_epsilon; //             __m128d; // dbl_epsilon; // dbl_false
extern __m128d const __m128d_0e_normeps; //             __m128d; // dbl_normeps; // dbl_false
extern __m128d const __m128d_0e_guard; //                   __m128d; // dbl_guard; // dbl_false
extern __m128d const __m128d_0e_mantpow2; //                __m128d; // dbl_mantpow2; // dbl_false
extern __m128d const __m128d_0e_maxmantpow2; //         __m128d; // dbl_maxmantpow2; // dbl_false
extern __m128d const __m128d_0e_mantdig; //             __m128d; // dbl_mantdig; // dbl_false
extern __m128d const __m128d_0e_mant; //                    __m128d; // dbl_mant; // dbl_false
extern __m128d const __m128d_0e_negmantdig; //              __m128d; // dbl_negmantdig; // dbl_false
extern __m128d const __m128d_0e_negmant; //             __m128d; // dbl_negmant; // dbl_false
extern __m128d const __m128d_0e_maxexp; //                  __m128d; // dbl_maxexp; // dbl_false
extern __m128d const __m128d_0e_expsign; //             __m128d; // dbl_expsign; // dbl_false
extern __m128d const __m128d_0e_exp; //                 __m128d; // dbl_exp; // dbl_false
extern __m128d const __m128d_0e_negmaxexp; //               __m128d; // dbl_negmaxexp; // dbl_false
extern __m128d const __m128d_0e_negexpsign; //              __m128d; // dbl_negexpsign; // dbl_false
extern __m128d const __m128d_0e_negexp; //                  __m128d; // dbl_negexp; // dbl_false
extern __m128d const __m128d_0e_subnormalexp; //            __m128d; // dbl_subnormalexp; // dbl_false
extern __m128d const __m128d_0e_minexp; //                  __m128d; // dbl_minexp; // dbl_false
extern __m128d const __m128d_0e_maxdecexp; //               __m128d; // dbl_maxdecexp; // dbl_false
extern __m128d const __m128d_0e_negmaxdecexp; //            __m128d; // dbl_negmaxdecexp; // dbl_false
extern __m128d const __m128d_0e_mindecexp; //               __m128d; // dbl_mindecexp; // dbl_false
extern __m128d const __m128d_0e_expfield; //                __m128d; // dbl_expfield; // dbl_false
extern __m128d const __m128d_0e_mantfield; //               __m128d; // dbl_mantfield; // dbl_false
extern __m128d const __m128d_0e_norm; //                    __m128d; // dbl_norm; // dbl_false
extern __m128d const __m128d_0e_radix; //                   __m128d; // dbl_radix; // dbl_false
extern __m128d const __m128d_0e_rounds; //                  __m128d; // dbl_rounds; // dbl_false
extern __m128d const __m128d_0e_subdec; //                  __m128d; // dbl_subdec; // dbl_false
extern __m128d const __m128d_0e_sqrtmax; //             __m128d; // dbl_sqrtmax; // dbl_false
extern __m128d const __m128d_0e_smallnormal; //         __m128d; // dbl_smallnormal; // dbl_false

extern __m128d const __m128d_0e_halfminuseps; //            __m128d; // dbl_halfminuseps; // dbl_false
extern __m128d const __m128d_0e_trueint; //             __m128d; // dbl_trueint; // dbl_false

extern __m128d const __m128d_0e_byte; //                    __m128d; // dbl_byte; // dbl_false
extern __m128d const __m128d_0e_byte_even; //           __m128d; // dbl_byte_even; // dbl_false
extern __m128d const __m128d_0e_byte_odd; //                __m128d; // dbl_byte_odd; // dbl_false
extern __m128d const __m128d_0e_4low; //                    __m128d; // dbl_4low; // dbl_false
extern __m128d const __m128d_0e_4high; //                   __m128d; // dbl_4high; // dbl_false
extern __m128d const __m128d_0e_flip4; //                   __m128d; // dbl_flip4; // dbl_false
extern __m128d const __m128d_0e_8low; //                    __m128d; // dbl_8low; // dbl_false
extern __m128d const __m128d_0e_8high; //                   __m128d; // dbl_8high; // dbl_false
extern __m128d const __m128d_0e_flip8; //                   __m128d; // dbl_flip8; // dbl_false
extern __m128d const __m128d_0e_16low; //                   __m128d; // dbl_16low; // dbl_false
extern __m128d const __m128d_0e_16high; //                  __m128d; // dbl_16high; // dbl_false
extern __m128d const __m128d_0e_flip16; //                  __m128d; // dbl_flip16; // dbl_false
extern __m128d const __m128d_0e_24low; //                   __m128d; // dbl_24low; // dbl_false
extern __m128d const __m128d_0e_24high; //                  __m128d; // dbl_24high; // dbl_false
extern __m128d const __m128d_0e_flip24; //                  __m128d; // dbl_flip24; // dbl_false
extern __m128d const __m128d_0e_28low; //                   __m128d; // dbl_28low; // dbl_false
extern __m128d const __m128d_0e_28high; //                  __m128d; // dbl_28high; // dbl_false
extern __m128d const __m128d_0e_flip28; //                  __m128d; // dbl_flip28; // dbl_false
extern __m128d const __m128d_0e_32low; //                   __m128d; // dbl_32low; // dbl_false
extern __m128d const __m128d_0e_32high; //                  __m128d; // dbl_32high; // dbl_false
extern __m128d const __m128d_0e_flip32; //                  __m128d; // dbl_flip32; // dbl_false
extern __m128d const __m128d_0e_40low; //                   __m128d; // dbl_40low; // dbl_false
extern __m128d const __m128d_0e_40high; //                  __m128d; // dbl_40high; // dbl_false
extern __m128d const __m128d_0e_flip40; //                  __m128d; // dbl_flip40; // dbl_false
extern __m128d const __m128d_0e_48low; //                   __m128d; // dbl_48low; // dbl_false
extern __m128d const __m128d_0e_48high; //                  __m128d; // dbl_48high; // dbl_false
extern __m128d const __m128d_0e_flip48; //                  __m128d; // dbl_flip48; // dbl_false
extern __m128d const __m128d_0e_56low; //                   __m128d; // dbl_56low; // dbl_false
extern __m128d const __m128d_0e_56high; //                  __m128d; // dbl_56high; // dbl_false
extern __m128d const __m128d_0e_flip56; //                  __m128d; // dbl_flip56; // dbl_false
extern __m128d const __m128d_0e_60low; //                   __m128d; // dbl_60low; // dbl_false
extern __m128d const __m128d_0e_60high; //                  __m128d; // dbl_60high; // dbl_false
extern __m128d const __m128d_0e_flip60; //                  __m128d; // dbl_flip60; // dbl_false
extern __m128d const __m128d_0e_64low; //                   __m128d; // dbl_64low; // dbl_false
extern __m128d const __m128d_0e_64high; //                  __m128d; // dbl_64high; // dbl_false
extern __m128d const __m128d_0e_flip64; //                  __m128d; // dbl_flip64; // dbl_false

extern __m128d const __m128d_0e_0; //                       __m128d; // dbl_0; // dbl_false
extern __m128d const __m128d_0e_0d0001; //              __m128d; // dbl_0d0001; // dbl_false
extern __m128d const __m128d_0e_0d0002; //              __m128d; // dbl_0d0002; // dbl_false
extern __m128d const __m128d_0e_0d0003; //              __m128d; // dbl_0d0003; // dbl_false
extern __m128d const __m128d_0e_0d0004; //              __m128d; // dbl_0d0004; // dbl_false
extern __m128d const __m128d_0e_0d0005; //              __m128d; // dbl_0d0005; // dbl_false
extern __m128d const __m128d_0e_0d0006; //              __m128d; // dbl_0d0006; // dbl_false
extern __m128d const __m128d_0e_0d0007; //              __m128d; // dbl_0d0007; // dbl_false
extern __m128d const __m128d_0e_0d0008; //              __m128d; // dbl_0d0008; // dbl_false
extern __m128d const __m128d_0e_0d0009; //              __m128d; // dbl_0d0009; // dbl_false
extern __m128d const __m128d_0e_0d001; //                   __m128d; // dbl_0d001; // dbl_false
extern __m128d const __m128d_0e_0d002; //                   __m128d; // dbl_0d002; // dbl_false
extern __m128d const __m128d_0e_0d003; //                   __m128d; // dbl_0d003; // dbl_false
extern __m128d const __m128d_0e_0d004; //                   __m128d; // dbl_0d004; // dbl_false
extern __m128d const __m128d_0e_0d005; //                   __m128d; // dbl_0d005; // dbl_false
extern __m128d const __m128d_0e_0d006; //                   __m128d; // dbl_0d006; // dbl_false
extern __m128d const __m128d_0e_0d007; //                   __m128d; // dbl_0d007; // dbl_false
extern __m128d const __m128d_0e_0d008; //                   __m128d; // dbl_0d008; // dbl_false
extern __m128d const __m128d_0e_0d009; //                   __m128d; // dbl_0d009; // dbl_false
extern __m128d const __m128d_0e_0d01; //                    __m128d; // dbl_0d01; // dbl_false
extern __m128d const __m128d_0e_0d02; //                    __m128d; // dbl_0d02; // dbl_false
extern __m128d const __m128d_0e_0d025; //                   __m128d; // dbl_0d025; // dbl_false
extern __m128d const __m128d_0e_0d03; //                    __m128d; // dbl_0d03; // dbl_false
extern __m128d const __m128d_0e_0d04; //                    __m128d; // dbl_0d04; // dbl_false
extern __m128d const __m128d_0e_0d05; //                    __m128d; // dbl_0d05; // dbl_false
extern __m128d const __m128d_0e_0d06; //                    __m128d; // dbl_0d06; // dbl_false
extern __m128d const __m128d_0e_0d07; //                    __m128d; // dbl_0d07; // dbl_false
extern __m128d const __m128d_0e_0d08; //                    __m128d; // dbl_0d08; // dbl_false
extern __m128d const __m128d_0e_0d09; //                    __m128d; // dbl_0d09; // dbl_false
extern __m128d const __m128d_0e_0d1; //                     __m128d; // dbl_0d1; // dbl_false
extern __m128d const __m128d_0e_0d2; //                     __m128d; // dbl_0d2; // dbl_false
extern __m128d const __m128d_0e_0d25; //                    __m128d; // dbl_0d25; // dbl_false
extern __m128d const __m128d_0e_0d3; //                     __m128d; // dbl_0d3; // dbl_false
extern __m128d const __m128d_0e_0d4; //                     __m128d; // dbl_0d4; // dbl_false
extern __m128d const __m128d_0e_0d5; //                     __m128d; // dbl_0d5; // dbl_false
extern __m128d const __m128d_0e_0d6; //                     __m128d; // dbl_0d6; // dbl_false
extern __m128d const __m128d_0e_0d7; //                     __m128d; // dbl_0d7; // dbl_false
extern __m128d const __m128d_0e_0d8; //                     __m128d; // dbl_0d8; // dbl_false
extern __m128d const __m128d_0e_0d9; //                     __m128d; // dbl_0d9; // dbl_false
extern __m128d const __m128d_0e_1; //                       __m128d; // dbl_1; // dbl_false
extern __m128d const __m128d_0e_1d25; //                    __m128d; // dbl_1d25; // dbl_false
extern __m128d const __m128d_0e_1d5; //                     __m128d; // dbl_1d5; // dbl_false
extern __m128d const __m128d_0e_2; //                       __m128d; // dbl_2; // dbl_false
extern __m128d const __m128d_0e_2d25; //                    __m128d; // dbl_2d25; // dbl_false
extern __m128d const __m128d_0e_2d5; //                     __m128d; // dbl_2d5; // dbl_false
extern __m128d const __m128d_0e_3; //                       __m128d; // dbl_3; // dbl_false
extern __m128d const __m128d_0e_3d25; //                    __m128d; // dbl_3d25; // dbl_false
extern __m128d const __m128d_0e_3d5; //                     __m128d; // dbl_3d5; // dbl_false
extern __m128d const __m128d_0e_4; //                       __m128d; // dbl_4; // dbl_false
extern __m128d const __m128d_0e_4d25; //                    __m128d; // dbl_4d25; // dbl_false
extern __m128d const __m128d_0e_4d5; //                     __m128d; // dbl_4d5; // dbl_false
extern __m128d const __m128d_0e_5; //                       __m128d; // dbl_5; // dbl_false
extern __m128d const __m128d_0e_5d25; //                    __m128d; // dbl_5d25; // dbl_false
extern __m128d const __m128d_0e_5d5; //                     __m128d; // dbl_5d5; // dbl_false
extern __m128d const __m128d_0e_6; //                       __m128d; // dbl_6; // dbl_false
extern __m128d const __m128d_0e_6d25; //                    __m128d; // dbl_6d25; // dbl_false
extern __m128d const __m128d_0e_6d5; //                     __m128d; // dbl_6d5; // dbl_false
extern __m128d const __m128d_0e_7; //                       __m128d; // dbl_7; // dbl_false
extern __m128d const __m128d_0e_7d25; //                    __m128d; // dbl_7d25; // dbl_false
extern __m128d const __m128d_0e_7d5; //                     __m128d; // dbl_7d5; // dbl_false
extern __m128d const __m128d_0e_8; //                       __m128d; // dbl_8; // dbl_false
extern __m128d const __m128d_0e_8d25; //                    __m128d; // dbl_8d25; // dbl_false
extern __m128d const __m128d_0e_8d5; //                     __m128d; // dbl_8d5; // dbl_false
extern __m128d const __m128d_0e_9; //                       __m128d; // dbl_9; // dbl_false
extern __m128d const __m128d_0e_9d25; //                    __m128d; // dbl_9d25; // dbl_false
extern __m128d const __m128d_0e_9d5; //                     __m128d; // dbl_9d5; // dbl_false
extern __m128d const __m128d_0e_10; //                  __m128d; // dbl_10; // dbl_false
extern __m128d const __m128d_0e_11; //                  __m128d; // dbl_11; // dbl_false
extern __m128d const __m128d_0e_12; //                  __m128d; // dbl_12; // dbl_false
extern __m128d const __m128d_0e_13; //                  __m128d; // dbl_13; // dbl_false
extern __m128d const __m128d_0e_14; //                  __m128d; // dbl_14; // dbl_false
extern __m128d const __m128d_0e_15; //                  __m128d; // dbl_15; // dbl_false
extern __m128d const __m128d_0e_16; //                  __m128d; // dbl_16; // dbl_false
extern __m128d const __m128d_0e_17; //                  __m128d; // dbl_17; // dbl_false
extern __m128d const __m128d_0e_18; //                  __m128d; // dbl_18; // dbl_false
extern __m128d const __m128d_0e_19; //                  __m128d; // dbl_19; // dbl_false
extern __m128d const __m128d_0e_20; //                  __m128d; // dbl_20; // dbl_false
extern __m128d const __m128d_0e_21; //                  __m128d; // dbl_21; // dbl_false
extern __m128d const __m128d_0e_22; //                  __m128d; // dbl_22; // dbl_false
extern __m128d const __m128d_0e_23; //                  __m128d; // dbl_23; // dbl_false
extern __m128d const __m128d_0e_24; //                  __m128d; // dbl_24; // dbl_false
extern __m128d const __m128d_0e_24d5; //                    __m128d; // dbl_24d5; // dbl_false
extern __m128d const __m128d_0e_25; //                  __m128d; // dbl_25; // dbl_false
extern __m128d const __m128d_0e_26; //                  __m128d; // dbl_26; // dbl_false
extern __m128d const __m128d_0e_27; //                  __m128d; // dbl_27; // dbl_false
extern __m128d const __m128d_0e_28; //                  __m128d; // dbl_28; // dbl_false
extern __m128d const __m128d_0e_29; //                  __m128d; // dbl_29; // dbl_false
extern __m128d const __m128d_0e_30; //                  __m128d; // dbl_30; // dbl_false
extern __m128d const __m128d_0e_31; //                  __m128d; // dbl_31; // dbl_false
extern __m128d const __m128d_0e_32; //                  __m128d; // dbl_32; // dbl_false
extern __m128d const __m128d_0e_33; //                  __m128d; // dbl_33; // dbl_false
extern __m128d const __m128d_0e_34; //                  __m128d; // dbl_34; // dbl_false
extern __m128d const __m128d_0e_35; //                  __m128d; // dbl_35; // dbl_false
extern __m128d const __m128d_0e_36; //                  __m128d; // dbl_36; // dbl_false
extern __m128d const __m128d_0e_37; //                  __m128d; // dbl_37; // dbl_false
extern __m128d const __m128d_0e_38; //                  __m128d; // dbl_38; // dbl_false
extern __m128d const __m128d_0e_39; //                  __m128d; // dbl_39; // dbl_false
extern __m128d const __m128d_0e_40; //                  __m128d; // dbl_40; // dbl_false
extern __m128d const __m128d_0e_41; //                  __m128d; // dbl_41; // dbl_false
extern __m128d const __m128d_0e_42; //                  __m128d; // dbl_42; // dbl_false
extern __m128d const __m128d_0e_43; //                  __m128d; // dbl_43; // dbl_false
extern __m128d const __m128d_0e_44; //                  __m128d; // dbl_44; // dbl_false
extern __m128d const __m128d_0e_45; //                  __m128d; // dbl_45; // dbl_false
extern __m128d const __m128d_0e_46; //                  __m128d; // dbl_46; // dbl_false
extern __m128d const __m128d_0e_47; //                  __m128d; // dbl_47; // dbl_false
extern __m128d const __m128d_0e_48; //                  __m128d; // dbl_48; // dbl_false
extern __m128d const __m128d_0e_49; //                  __m128d; // dbl_49; // dbl_false
extern __m128d const __m128d_0e_50; //                  __m128d; // dbl_50; // dbl_false
extern __m128d const __m128d_0e_51; //                  __m128d; // dbl_51; // dbl_false
extern __m128d const __m128d_0e_52; //                  __m128d; // dbl_52; // dbl_false
extern __m128d const __m128d_0e_53; //                  __m128d; // dbl_53; // dbl_false
extern __m128d const __m128d_0e_54; //                  __m128d; // dbl_54; // dbl_false
extern __m128d const __m128d_0e_55; //                  __m128d; // dbl_55; // dbl_false
extern __m128d const __m128d_0e_56; //                  __m128d; // dbl_56; // dbl_false
extern __m128d const __m128d_0e_57; //                  __m128d; // dbl_57; // dbl_false
extern __m128d const __m128d_0e_58; //                  __m128d; // dbl_58; // dbl_false
extern __m128d const __m128d_0e_59; //                  __m128d; // dbl_59; // dbl_false
extern __m128d const __m128d_0e_60; //                  __m128d; // dbl_60; // dbl_false
extern __m128d const __m128d_0e_61; //                  __m128d; // dbl_61; // dbl_false
extern __m128d const __m128d_0e_62; //                  __m128d; // dbl_62; // dbl_false
extern __m128d const __m128d_0e_63; //                  __m128d; // dbl_63; // dbl_false
extern __m128d const __m128d_0e_64; //                  __m128d; // dbl_64; // dbl_false
extern __m128d const __m128d_0e_65; //                  __m128d; // dbl_65; // dbl_false
extern __m128d const __m128d_0e_66; //                  __m128d; // dbl_66; // dbl_false
extern __m128d const __m128d_0e_67; //                  __m128d; // dbl_67; // dbl_false
extern __m128d const __m128d_0e_68; //                  __m128d; // dbl_68; // dbl_false
extern __m128d const __m128d_0e_69; //                  __m128d; // dbl_69; // dbl_false
extern __m128d const __m128d_0e_70; //                  __m128d; // dbl_70; // dbl_false
extern __m128d const __m128d_0e_71; //                  __m128d; // dbl_71; // dbl_false
extern __m128d const __m128d_0e_72; //                  __m128d; // dbl_72; // dbl_false
extern __m128d const __m128d_0e_73; //                  __m128d; // dbl_73; // dbl_false
extern __m128d const __m128d_0e_74; //                  __m128d; // dbl_74; // dbl_false
extern __m128d const __m128d_0e_75; //                  __m128d; // dbl_75; // dbl_false
extern __m128d const __m128d_0e_76; //                  __m128d; // dbl_76; // dbl_false
extern __m128d const __m128d_0e_77; //                  __m128d; // dbl_77; // dbl_false
extern __m128d const __m128d_0e_78; //                  __m128d; // dbl_78; // dbl_false
extern __m128d const __m128d_0e_79; //                  __m128d; // dbl_79; // dbl_false
extern __m128d const __m128d_0e_80; //                  __m128d; // dbl_80; // dbl_false
extern __m128d const __m128d_0e_81; //                  __m128d; // dbl_81; // dbl_false
extern __m128d const __m128d_0e_82; //                  __m128d; // dbl_82; // dbl_false
extern __m128d const __m128d_0e_83; //                  __m128d; // dbl_83; // dbl_false
extern __m128d const __m128d_0e_84; //                  __m128d; // dbl_84; // dbl_false
extern __m128d const __m128d_0e_85; //                  __m128d; // dbl_85; // dbl_false
extern __m128d const __m128d_0e_86; //                  __m128d; // dbl_86; // dbl_false
extern __m128d const __m128d_0e_87; //                  __m128d; // dbl_87; // dbl_false
extern __m128d const __m128d_0e_88; //                  __m128d; // dbl_88; // dbl_false
extern __m128d const __m128d_0e_89; //                  __m128d; // dbl_89; // dbl_false
extern __m128d const __m128d_0e_90; //                  __m128d; // dbl_90; // dbl_false
extern __m128d const __m128d_0e_91; //                  __m128d; // dbl_91; // dbl_false
extern __m128d const __m128d_0e_92; //                  __m128d; // dbl_92; // dbl_false
extern __m128d const __m128d_0e_93; //                  __m128d; // dbl_93; // dbl_false
extern __m128d const __m128d_0e_94; //                  __m128d; // dbl_94; // dbl_false
extern __m128d const __m128d_0e_95; //                  __m128d; // dbl_95; // dbl_false
extern __m128d const __m128d_0e_96; //                  __m128d; // dbl_96; // dbl_false
extern __m128d const __m128d_0e_97; //                  __m128d; // dbl_97; // dbl_false
extern __m128d const __m128d_0e_98; //                  __m128d; // dbl_98; // dbl_false
extern __m128d const __m128d_0e_99; //                  __m128d; // dbl_99; // dbl_false
extern __m128d const __m128d_0e_100; //                     __m128d; // dbl_100; // dbl_false
extern __m128d const __m128d_0e_125; //                     __m128d; // dbl_125; // dbl_false
extern __m128d const __m128d_0e_126; //                     __m128d; // dbl_126; // dbl_false
extern __m128d const __m128d_0e_127; //                     __m128d; // dbl_127; // dbl_false
extern __m128d const __m128d_0e_128; //                     __m128d; // dbl_128; // dbl_false
extern __m128d const __m128d_0e_140; //                     __m128d; // dbl_140; // dbl_false
extern __m128d const __m128d_0e_145; //                     __m128d; // dbl_145; // dbl_false
extern __m128d const __m128d_0e_150; //                     __m128d; // dbl_150; // dbl_false
extern __m128d const __m128d_0e_180; //                     __m128d; // dbl_180; // dbl_false
extern __m128d const __m128d_0e_253; //                     __m128d; // dbl_253; // dbl_false
extern __m128d const __m128d_0e_254; //                     __m128d; // dbl_254; // dbl_false
extern __m128d const __m128d_0e_255; //                     __m128d; // dbl_255; // dbl_false
extern __m128d const __m128d_0e_256; //                     __m128d; // dbl_256; // dbl_false
extern __m128d const __m128d_0e_360; //                     __m128d; // dbl_360; // dbl_false
extern __m128d const __m128d_0e_511; //                     __m128d; // dbl_511; // dbl_false
extern __m128d const __m128d_0e_512; //                     __m128d; // dbl_512; // dbl_false
extern __m128d const __m128d_0e_513; //                     __m128d; // dbl_513; // dbl_false
extern __m128d const __m128d_0e_1023; //                    __m128d; // dbl_1023; // dbl_false
extern __m128d const __m128d_0e_1024; //                    __m128d; // dbl_1024; // dbl_false
extern __m128d const __m128d_0e_1025; //                    __m128d; // dbl_1025; // dbl_false

extern __m128d const __m128d_0e_32767; //                   __m128d; // dbl_32767; // dbl_false
extern __m128d const __m128d_0e_32768; //                   __m128d; // dbl_32768; // dbl_false
extern __m128d const __m128d_0e_65535; //                   __m128d; // dbl_65535; // dbl_false
extern __m128d const __m128d_0e_65536; //                   __m128d; // dbl_65536; // dbl_false
extern __m128d const __m128d_0e_2147483647; //          __m128d; // dbl_2147483647; // dbl_false
extern __m128d const __m128d_0e_2147483648; //          __m128d; // dbl_2147483648; // dbl_false
extern __m128d const __m128d_0e_4294967295; //          __m128d; // dbl_4294967295; // dbl_false
extern __m128d const __m128d_0e_4294967296; //          __m128d; // dbl_4294967296; // dbl_false

extern __m128d const __m128d_0e_neg0; //                    __m128d; // dbl_neg0; // dbl_false
extern __m128d const __m128d_0e_neg0d0001; //               __m128d; // dbl_neg0d0001; // dbl_false
extern __m128d const __m128d_0e_neg0d0002; //               __m128d; // dbl_neg0d0002; // dbl_false
extern __m128d const __m128d_0e_neg0d0003; //               __m128d; // dbl_neg0d0003; // dbl_false
extern __m128d const __m128d_0e_neg0d0004; //               __m128d; // dbl_neg0d0004; // dbl_false
extern __m128d const __m128d_0e_neg0d0005; //               __m128d; // dbl_neg0d0005; // dbl_false
extern __m128d const __m128d_0e_neg0d0006; //               __m128d; // dbl_neg0d0006; // dbl_false
extern __m128d const __m128d_0e_neg0d0007; //               __m128d; // dbl_neg0d0007; // dbl_false
extern __m128d const __m128d_0e_neg0d0008; //               __m128d; // dbl_neg0d0008; // dbl_false
extern __m128d const __m128d_0e_neg0d0009; //               __m128d; // dbl_neg0d0009; // dbl_false
extern __m128d const __m128d_0e_neg0d001; //                __m128d; // dbl_neg0d001; // dbl_false
extern __m128d const __m128d_0e_neg0d002; //                __m128d; // dbl_neg0d002; // dbl_false
extern __m128d const __m128d_0e_neg0d003; //                __m128d; // dbl_neg0d003; // dbl_false
extern __m128d const __m128d_0e_neg0d004; //                __m128d; // dbl_neg0d004; // dbl_false
extern __m128d const __m128d_0e_neg0d005; //                __m128d; // dbl_neg0d005; // dbl_false
extern __m128d const __m128d_0e_neg0d006; //                __m128d; // dbl_neg0d006; // dbl_false
extern __m128d const __m128d_0e_neg0d007; //                __m128d; // dbl_neg0d007; // dbl_false
extern __m128d const __m128d_0e_neg0d008; //                __m128d; // dbl_neg0d008; // dbl_false
extern __m128d const __m128d_0e_neg0d009; //                __m128d; // dbl_neg0d009; // dbl_false
extern __m128d const __m128d_0e_neg0d01; //                 __m128d; // dbl_neg0d01; // dbl_false
extern __m128d const __m128d_0e_neg0d02; //                 __m128d; // dbl_neg0d02; // dbl_false
extern __m128d const __m128d_0e_neg0d025; //                __m128d; // dbl_neg0d025; // dbl_false
extern __m128d const __m128d_0e_neg0d03; //                 __m128d; // dbl_neg0d03; // dbl_false
extern __m128d const __m128d_0e_neg0d04; //                 __m128d; // dbl_neg0d04; // dbl_false
extern __m128d const __m128d_0e_neg0d05; //                 __m128d; // dbl_neg0d05; // dbl_false
extern __m128d const __m128d_0e_neg0d06; //                 __m128d; // dbl_neg0d06; // dbl_false
extern __m128d const __m128d_0e_neg0d07; //                 __m128d; // dbl_neg0d07; // dbl_false
extern __m128d const __m128d_0e_neg0d08; //                 __m128d; // dbl_neg0d08; // dbl_false
extern __m128d const __m128d_0e_neg0d09; //                 __m128d; // dbl_neg0d09; // dbl_false
extern __m128d const __m128d_0e_neg0d1; //              __m128d; // dbl_neg0d1; // dbl_false
extern __m128d const __m128d_0e_neg0d2; //              __m128d; // dbl_neg0d2; // dbl_false
extern __m128d const __m128d_0e_neg0d25; //                 __m128d; // dbl_neg0d25; // dbl_false
extern __m128d const __m128d_0e_neg0d3; //              __m128d; // dbl_neg0d3; // dbl_false
extern __m128d const __m128d_0e_neg0d4; //              __m128d; // dbl_neg0d4; // dbl_false
extern __m128d const __m128d_0e_neg0d5; //              __m128d; // dbl_neg0d5; // dbl_false
extern __m128d const __m128d_0e_neg0d6; //              __m128d; // dbl_neg0d6; // dbl_false
extern __m128d const __m128d_0e_neg0d7; //              __m128d; // dbl_neg0d7; // dbl_false
extern __m128d const __m128d_0e_neg0d8; //              __m128d; // dbl_neg0d8; // dbl_false
extern __m128d const __m128d_0e_neg0d9; //              __m128d; // dbl_neg0d9; // dbl_false
extern __m128d const __m128d_0e_neg1; //                    __m128d; // dbl_neg1; // dbl_false
extern __m128d const __m128d_0e_neg1d25; //                 __m128d; // dbl_neg1d25; // dbl_false
extern __m128d const __m128d_0e_neg1d5; //              __m128d; // dbl_neg1d5; // dbl_false
extern __m128d const __m128d_0e_neg2; //                    __m128d; // dbl_neg2; // dbl_false
extern __m128d const __m128d_0e_neg2d25; //                 __m128d; // dbl_neg2d25; // dbl_false
extern __m128d const __m128d_0e_neg2d5; //              __m128d; // dbl_neg2d5; // dbl_false
extern __m128d const __m128d_0e_neg3; //                    __m128d; // dbl_neg3; // dbl_false
extern __m128d const __m128d_0e_neg3d25; //                 __m128d; // dbl_neg3d25; // dbl_false
extern __m128d const __m128d_0e_neg3d5; //              __m128d; // dbl_neg3d5; // dbl_false
extern __m128d const __m128d_0e_neg4; //                    __m128d; // dbl_neg4; // dbl_false
extern __m128d const __m128d_0e_neg4d25; //                 __m128d; // dbl_neg4d25; // dbl_false
extern __m128d const __m128d_0e_neg4d5; //              __m128d; // dbl_neg4d5; // dbl_false
extern __m128d const __m128d_0e_neg5; //                    __m128d; // dbl_neg5; // dbl_false
extern __m128d const __m128d_0e_neg5d25; //                 __m128d; // dbl_neg5d25; // dbl_false
extern __m128d const __m128d_0e_neg5d5; //              __m128d; // dbl_neg5d5; // dbl_false
extern __m128d const __m128d_0e_neg6; //                    __m128d; // dbl_neg6; // dbl_false
extern __m128d const __m128d_0e_neg6d25; //                 __m128d; // dbl_neg6d25; // dbl_false
extern __m128d const __m128d_0e_neg6d5; //              __m128d; // dbl_neg6d5; // dbl_false
extern __m128d const __m128d_0e_neg7; //                    __m128d; // dbl_neg7; // dbl_false
extern __m128d const __m128d_0e_neg7d25; //                 __m128d; // dbl_neg7d25; // dbl_false
extern __m128d const __m128d_0e_neg7d5; //              __m128d; // dbl_neg7d5; // dbl_false
extern __m128d const __m128d_0e_neg8; //                    __m128d; // dbl_neg8; // dbl_false
extern __m128d const __m128d_0e_neg8d25; //                 __m128d; // dbl_neg8d25; // dbl_false
extern __m128d const __m128d_0e_neg8d5; //              __m128d; // dbl_neg8d5; // dbl_false
extern __m128d const __m128d_0e_neg9; //                    __m128d; // dbl_neg9; // dbl_false
extern __m128d const __m128d_0e_neg9d25; //                 __m128d; // dbl_neg9d25; // dbl_false
extern __m128d const __m128d_0e_neg9d5; //              __m128d; // dbl_neg9d5; // dbl_false
extern __m128d const __m128d_0e_neg10; //                   __m128d; // dbl_neg10; // dbl_false
extern __m128d const __m128d_0e_neg11; //                   __m128d; // dbl_neg11; // dbl_false
extern __m128d const __m128d_0e_neg12; //                   __m128d; // dbl_neg12; // dbl_false
extern __m128d const __m128d_0e_neg13; //                   __m128d; // dbl_neg13; // dbl_false
extern __m128d const __m128d_0e_neg14; //                   __m128d; // dbl_neg14; // dbl_false
extern __m128d const __m128d_0e_neg15; //                   __m128d; // dbl_neg15; // dbl_false
extern __m128d const __m128d_0e_neg16; //                   __m128d; // dbl_neg16; // dbl_false
extern __m128d const __m128d_0e_neg17; //                   __m128d; // dbl_neg17; // dbl_false
extern __m128d const __m128d_0e_neg18; //                   __m128d; // dbl_neg18; // dbl_false
extern __m128d const __m128d_0e_neg19; //                   __m128d; // dbl_neg19; // dbl_false
extern __m128d const __m128d_0e_neg20; //                   __m128d; // dbl_neg20; // dbl_false
extern __m128d const __m128d_0e_neg21; //                   __m128d; // dbl_neg21; // dbl_false
extern __m128d const __m128d_0e_neg22; //                   __m128d; // dbl_neg22; // dbl_false
extern __m128d const __m128d_0e_neg23; //                   __m128d; // dbl_neg23; // dbl_false
extern __m128d const __m128d_0e_neg24; //                   __m128d; // dbl_neg24; // dbl_false
extern __m128d const __m128d_0e_neg24d5; //                 __m128d; // dbl_neg24d5; // dbl_false
extern __m128d const __m128d_0e_neg25; //                   __m128d; // dbl_neg25; // dbl_false
extern __m128d const __m128d_0e_neg26; //                   __m128d; // dbl_neg26; // dbl_false
extern __m128d const __m128d_0e_neg27; //                   __m128d; // dbl_neg27; // dbl_false
extern __m128d const __m128d_0e_neg28; //                   __m128d; // dbl_neg28; // dbl_false
extern __m128d const __m128d_0e_neg29; //                   __m128d; // dbl_neg29; // dbl_false
extern __m128d const __m128d_0e_neg30; //                   __m128d; // dbl_neg30; // dbl_false
extern __m128d const __m128d_0e_neg31; //                   __m128d; // dbl_neg31; // dbl_false
extern __m128d const __m128d_0e_neg32; //                   __m128d; // dbl_neg32; // dbl_false
extern __m128d const __m128d_0e_neg33; //                   __m128d; // dbl_neg33; // dbl_false
extern __m128d const __m128d_0e_neg34; //                   __m128d; // dbl_neg34; // dbl_false
extern __m128d const __m128d_0e_neg35; //                   __m128d; // dbl_neg35; // dbl_false
extern __m128d const __m128d_0e_neg36; //                   __m128d; // dbl_neg36; // dbl_false
extern __m128d const __m128d_0e_neg37; //                   __m128d; // dbl_neg37; // dbl_false
extern __m128d const __m128d_0e_neg38; //                   __m128d; // dbl_neg38; // dbl_false
extern __m128d const __m128d_0e_neg39; //                   __m128d; // dbl_neg39; // dbl_false
extern __m128d const __m128d_0e_neg40; //                   __m128d; // dbl_neg40; // dbl_false
extern __m128d const __m128d_0e_neg41; //                   __m128d; // dbl_neg41; // dbl_false
extern __m128d const __m128d_0e_neg42; //                   __m128d; // dbl_neg42; // dbl_false
extern __m128d const __m128d_0e_neg43; //                   __m128d; // dbl_neg43; // dbl_false
extern __m128d const __m128d_0e_neg44; //                   __m128d; // dbl_neg44; // dbl_false
extern __m128d const __m128d_0e_neg45; //                   __m128d; // dbl_neg45; // dbl_false
extern __m128d const __m128d_0e_neg46; //                   __m128d; // dbl_neg46; // dbl_false
extern __m128d const __m128d_0e_neg47; //                   __m128d; // dbl_neg47; // dbl_false
extern __m128d const __m128d_0e_neg48; //                   __m128d; // dbl_neg48; // dbl_false
extern __m128d const __m128d_0e_neg49; //                   __m128d; // dbl_neg49; // dbl_false
extern __m128d const __m128d_0e_neg50; //                   __m128d; // dbl_neg50; // dbl_false
extern __m128d const __m128d_0e_neg51; //                   __m128d; // dbl_neg51; // dbl_false
extern __m128d const __m128d_0e_neg52; //                   __m128d; // dbl_neg52; // dbl_false
extern __m128d const __m128d_0e_neg53; //                   __m128d; // dbl_neg53; // dbl_false
extern __m128d const __m128d_0e_neg54; //                   __m128d; // dbl_neg54; // dbl_false
extern __m128d const __m128d_0e_neg55; //                   __m128d; // dbl_neg55; // dbl_false
extern __m128d const __m128d_0e_neg56; //                   __m128d; // dbl_neg56; // dbl_false
extern __m128d const __m128d_0e_neg57; //                   __m128d; // dbl_neg57; // dbl_false
extern __m128d const __m128d_0e_neg58; //                   __m128d; // dbl_neg58; // dbl_false
extern __m128d const __m128d_0e_neg59; //                   __m128d; // dbl_neg59; // dbl_false
extern __m128d const __m128d_0e_neg60; //                   __m128d; // dbl_neg60; // dbl_false
extern __m128d const __m128d_0e_neg61; //                   __m128d; // dbl_neg61; // dbl_false
extern __m128d const __m128d_0e_neg62; //                   __m128d; // dbl_neg62; // dbl_false
extern __m128d const __m128d_0e_neg63; //                   __m128d; // dbl_neg63; // dbl_false
extern __m128d const __m128d_0e_neg64; //                   __m128d; // dbl_neg64; // dbl_false
extern __m128d const __m128d_0e_neg65; //                   __m128d; // dbl_neg65; // dbl_false
extern __m128d const __m128d_0e_neg66; //                   __m128d; // dbl_neg66; // dbl_false
extern __m128d const __m128d_0e_neg67; //                   __m128d; // dbl_neg67; // dbl_false
extern __m128d const __m128d_0e_neg68; //                   __m128d; // dbl_neg68; // dbl_false
extern __m128d const __m128d_0e_neg69; //                   __m128d; // dbl_neg69; // dbl_false
extern __m128d const __m128d_0e_neg70; //                   __m128d; // dbl_neg70; // dbl_false
extern __m128d const __m128d_0e_neg71; //                   __m128d; // dbl_neg71; // dbl_false
extern __m128d const __m128d_0e_neg72; //                   __m128d; // dbl_neg72; // dbl_false
extern __m128d const __m128d_0e_neg73; //                   __m128d; // dbl_neg73; // dbl_false
extern __m128d const __m128d_0e_neg74; //                   __m128d; // dbl_neg74; // dbl_false
extern __m128d const __m128d_0e_neg75; //                   __m128d; // dbl_neg75; // dbl_false
extern __m128d const __m128d_0e_neg76; //                   __m128d; // dbl_neg76; // dbl_false
extern __m128d const __m128d_0e_neg77; //                   __m128d; // dbl_neg77; // dbl_false
extern __m128d const __m128d_0e_neg78; //                   __m128d; // dbl_neg78; // dbl_false
extern __m128d const __m128d_0e_neg79; //                   __m128d; // dbl_neg79; // dbl_false
extern __m128d const __m128d_0e_neg80; //                   __m128d; // dbl_neg80; // dbl_false
extern __m128d const __m128d_0e_neg81; //                   __m128d; // dbl_neg81; // dbl_false
extern __m128d const __m128d_0e_neg82; //                   __m128d; // dbl_neg82; // dbl_false
extern __m128d const __m128d_0e_neg83; //                   __m128d; // dbl_neg83; // dbl_false
extern __m128d const __m128d_0e_neg84; //                   __m128d; // dbl_neg84; // dbl_false
extern __m128d const __m128d_0e_neg85; //                   __m128d; // dbl_neg85; // dbl_false
extern __m128d const __m128d_0e_neg86; //                   __m128d; // dbl_neg86; // dbl_false
extern __m128d const __m128d_0e_neg87; //                   __m128d; // dbl_neg87; // dbl_false
extern __m128d const __m128d_0e_neg88; //                   __m128d; // dbl_neg88; // dbl_false
extern __m128d const __m128d_0e_neg89; //                   __m128d; // dbl_neg89; // dbl_false
extern __m128d const __m128d_0e_neg90; //                   __m128d; // dbl_neg90; // dbl_false
extern __m128d const __m128d_0e_neg91; //                   __m128d; // dbl_neg91; // dbl_false
extern __m128d const __m128d_0e_neg92; //                   __m128d; // dbl_neg92; // dbl_false
extern __m128d const __m128d_0e_neg93; //                   __m128d; // dbl_neg93; // dbl_false
extern __m128d const __m128d_0e_neg94; //                   __m128d; // dbl_neg94; // dbl_false
extern __m128d const __m128d_0e_neg95; //                   __m128d; // dbl_neg95; // dbl_false
extern __m128d const __m128d_0e_neg96; //                   __m128d; // dbl_neg96; // dbl_false
extern __m128d const __m128d_0e_neg97; //                   __m128d; // dbl_neg97; // dbl_false
extern __m128d const __m128d_0e_neg98; //                   __m128d; // dbl_neg98; // dbl_false
extern __m128d const __m128d_0e_neg99; //                   __m128d; // dbl_neg99; // dbl_false
extern __m128d const __m128d_0e_neg100; //              __m128d; // dbl_neg100; // dbl_false
extern __m128d const __m128d_0e_neg125; //              __m128d; // dbl_neg125; // dbl_false
extern __m128d const __m128d_0e_neg126; //              __m128d; // dbl_neg126; // dbl_false
extern __m128d const __m128d_0e_neg127; //              __m128d; // dbl_neg127; // dbl_false
extern __m128d const __m128d_0e_neg128; //              __m128d; // dbl_neg128; // dbl_false
extern __m128d const __m128d_0e_neg140; //              __m128d; // dbl_neg140; // dbl_false
extern __m128d const __m128d_0e_neg145; //              __m128d; // dbl_neg145; // dbl_false
extern __m128d const __m128d_0e_neg150; //              __m128d; // dbl_neg150; // dbl_false
extern __m128d const __m128d_0e_neg180; //              __m128d; // dbl_neg180; // dbl_false
extern __m128d const __m128d_0e_neg253; //              __m128d; // dbl_neg253; // dbl_false
extern __m128d const __m128d_0e_neg254; //              __m128d; // dbl_neg254; // dbl_false
extern __m128d const __m128d_0e_neg255; //              __m128d; // dbl_neg255; // dbl_false
extern __m128d const __m128d_0e_neg256; //              __m128d; // dbl_neg256; // dbl_false
extern __m128d const __m128d_0e_neg360; //              __m128d; // dbl_neg360; // dbl_false
extern __m128d const __m128d_0e_neg511; //              __m128d; // dbl_neg511; // dbl_false
extern __m128d const __m128d_0e_neg512; //              __m128d; // dbl_neg512; // dbl_false
extern __m128d const __m128d_0e_neg513; //              __m128d; // dbl_neg513; // dbl_false
extern __m128d const __m128d_0e_neg1023; //                 __m128d; // dbl_neg1023; // dbl_false
extern __m128d const __m128d_0e_neg1024; //                 __m128d; // dbl_neg1024; // dbl_false
extern __m128d const __m128d_0e_neg1025; //                 __m128d; // dbl_neg1025; // dbl_false

extern __m128d const __m128d_0e_neg32767; //                __m128d; // dbl_neg32767; // dbl_false
extern __m128d const __m128d_0e_neg32768; //                __m128d; // dbl_neg32768; // dbl_false
extern __m128d const __m128d_0e_neg65535; //                __m128d; // dbl_neg65535; // dbl_false
extern __m128d const __m128d_0e_neg65536; //                __m128d; // dbl_neg65536; // dbl_false
extern __m128d const __m128d_0e_neg2147483647; //           __m128d; // dbl_neg2147483647; // dbl_false
extern __m128d const __m128d_0e_neg2147483648; //           __m128d; // dbl_neg2147483648; // dbl_false
extern __m128d const __m128d_0e_neg4294967295; //           __m128d; // dbl_neg4294967295; // dbl_false
extern __m128d const __m128d_0e_neg4294967296; //           __m128d; // dbl_neg4294967296; // dbl_false

extern __m128d const __m128d_0e_bin128; //                  __m128d; // dbl_bin128; // dbl_false
extern __m128d const __m128d_0e_binneg150; //               __m128d; // dbl_binneg150; // dbl_false

extern __m128d const __m128d_0e_maxrand; //             __m128d; // dbl_maxrand; // dbl_false

extern __m128d const __m128d_0e_maxi8; //                   __m128d; // dbl_maxi8; // dbl_false
extern __m128d const __m128d_0e_mini8; //                   __m128d; // dbl_mini8; // dbl_false
extern __m128d const __m128d_0e_maxu8; //                   __m128d; // dbl_maxu8; // dbl_false

extern __m128d const __m128d_0e_maxi16; //                  __m128d; // dbl_maxi16; // dbl_false
extern __m128d const __m128d_0e_mini16; //                  __m128d; // dbl_mini16; // dbl_false
extern __m128d const __m128d_0e_maxu16; //                  __m128d; // dbl_maxu16; // dbl_false

extern __m128d const __m128d_0e_maxi32; //                  __m128d; // dbl_maxi32; // dbl_false
extern __m128d const __m128d_0e_mini32; //                  __m128d; // dbl_mini32; // dbl_false
extern __m128d const __m128d_0e_maxu32; //                  __m128d; // dbl_maxu32; // dbl_false

extern __m128d const __m128d_0e_maxi64; //                  __m128d; // dbl_maxi64; // dbl_false
extern __m128d const __m128d_0e_mini64; //                  __m128d; // dbl_mini64; // dbl_false
extern __m128d const __m128d_0e_maxu64; //                  __m128d; // dbl_maxu64; // dbl_false

extern __m128d const __m128d_0e_maxi8xu8; //                __m128d; // dbl_maxi8xu8; // dbl_false
extern __m128d const __m128d_0e_mini8xu8; //                __m128d; // dbl_mini8xu8; // dbl_false
extern __m128d const __m128d_0e_maxi8xu16; //               __m128d; // dbl_maxi8xu16; // dbl_false
extern __m128d const __m128d_0e_mini8xu16; //               __m128d; // dbl_mini8xu16; // dbl_false

extern __m128d const __m128d_0e_maxi16xu16; //              __m128d; // dbl_maxi16xu16; // dbl_false
extern __m128d const __m128d_0e_mini16xu16; //              __m128d; // dbl_mini16xu16; // dbl_false
extern __m128d const __m128d_0e_maxi16xu32; //              __m128d; // dbl_maxi16xu32; // dbl_false
extern __m128d const __m128d_0e_mini16xu32; //              __m128d; // dbl_mini16xu32; // dbl_false

extern __m128d const __m128d_0e_maxi32xu32; //              __m128d; // dbl_maxi32xu32; // dbl_false
extern __m128d const __m128d_0e_mini32xu32; //              __m128d; // dbl_mini32xu32; // dbl_false

extern __m128d const __m128d_0e_fixunsigned; //         __m128d; // dbl_fixunsigned; // dbl_false
extern __m128d const __m128d_0e_fixunsigned32; //           __m128d; // dbl_fixunsigned32; // dbl_false
extern __m128d const __m128d_0e_fixmaxi32; //               __m128d; // dbl_fixmaxi32; // dbl_false
extern __m128d const __m128d_0e_fixmaxu32; //               __m128d; // dbl_fixmaxu32; // dbl_false

extern __m128d const __m128d_0e_fixunsigned64; //           __m128d; // dbl_fixunsigned64; // dbl_false
extern __m128d const __m128d_0e_fixmaxi64; //               __m128d; // dbl_fixmaxi64; // dbl_false
extern __m128d const __m128d_0e_fixmaxu64; //               __m128d; // dbl_fixmaxu64; // dbl_false

extern __m128d const __m128d_0e_rcpi16; //              __m128d; // dbl_rcpi16; // dbl_false
extern __m128d const __m128d_0e_rcpu16; //              __m128d; // dbl_rcpu16; // dbl_false
extern __m128d const __m128d_0e_rcpi16xu16; //          __m128d; // dbl_rcpi16xu16; // dbl_false

extern __m128d const __m128d_0e_mg; //                  __m128d; // dbl_mg; // dbl_false
extern __m128d const __m128d_0e_negmg; //                   __m128d; // dbl_negmg; // dbl_false
extern __m128d const __m128d_0e_halfmg; //              __m128d; // dbl_halfmg; // dbl_false
extern __m128d const __m128d_0e_neghalfmg; //               __m128d; // dbl_neghalfmg; // dbl_false
extern __m128d const __m128d_0e_mgdiv4; //              __m128d; // dbl_mgdiv4; // dbl_false
extern __m128d const __m128d_0e_negmgdiv4; //               __m128d; // dbl_negmgdiv4; // dbl_false
extern __m128d const __m128d_0e_halfmgxmg; //               __m128d; // dbl_halfmgxmg; // dbl_false
extern __m128d const __m128d_0e_halfmgxsqrmg; //            __m128d; // dbl_halfmgxsqrmg; // dbl_false
extern __m128d const __m128d_0e_halfmgxcubemg; //           __m128d; // dbl_halfmgxcubemg; // dbl_false
extern __m128d const __m128d_0e_neghalfmgxmg; //            __m128d; // dbl_neghalfmgxmg; // dbl_false
extern __m128d const __m128d_0e_neghalfmgxsqrmg; //     __m128d; // dbl_neghalfmgxsqrmg; // dbl_false
extern __m128d const __m128d_0e_neghalfmgxcubemg; //        __m128d; // dbl_neghalfmgxcubemg; // dbl_false
extern __m128d const __m128d_0e_sqrmg; //                   __m128d; // dbl_sqrmg; // dbl_false
extern __m128d const __m128d_0e_cubemg; //              __m128d; // dbl_cubemg; // dbl_false
extern __m128d const __m128d_0e_sqrtmg; //              __m128d; // dbl_sqrtmg; // dbl_false
extern __m128d const __m128d_0e_cbrtmg; //              __m128d; // dbl_cbrtmg; // dbl_false
extern __m128d const __m128d_0e_rcpmg; //                   __m128d; // dbl_rcpmg; // dbl_false
extern __m128d const __m128d_0e_rcpsqrmg; //                __m128d; // dbl_rcpsqrmg; // dbl_false
extern __m128d const __m128d_0e_rcpcubemg; //               __m128d; // dbl_rcpcubemg; // dbl_false
extern __m128d const __m128d_0e_rcpsqrtmg; //               __m128d; // dbl_rcpsqrtmg; // dbl_false
extern __m128d const __m128d_0e_rcpcbrtmg; //               __m128d; // dbl_rcpcbrtmg; // dbl_false

extern __m128d const __m128d_0e_2mg; //                     __m128d; // dbl_2mg; // dbl_false
extern __m128d const __m128d_0e_neg2mg; //              __m128d; // dbl_neg2mg; // dbl_false
extern __m128d const __m128d_0e_sqr2mg; //              __m128d; // dbl_sqr2mg; // dbl_false
extern __m128d const __m128d_0e_cube2mg; //                 __m128d; // dbl_cube2mg; // dbl_false
extern __m128d const __m128d_0e_sqrt2mg; //                 __m128d; // dbl_sqrt2mg; // dbl_false
extern __m128d const __m128d_0e_cbrt2mg; //                 __m128d; // dbl_cbrt2mg; // dbl_false
extern __m128d const __m128d_0e_4mg; //                     __m128d; // dbl_4mg; // dbl_false
extern __m128d const __m128d_0e_neg4mg; //              __m128d; // dbl_neg4mg; // dbl_false
extern __m128d const __m128d_0e_sqr4mg; //              __m128d; // dbl_sqr4mg; // dbl_false
extern __m128d const __m128d_0e_cube4mg; //                 __m128d; // dbl_cube4mg; // dbl_false
extern __m128d const __m128d_0e_sqrt4mg; //                 __m128d; // dbl_sqrt4mg; // dbl_false
extern __m128d const __m128d_0e_cbrt4mg; //                 __m128d; // dbl_cbrt4mg; // dbl_false
extern __m128d const __m128d_0e_rcp2mg; //              __m128d; // dbl_rcp2mg; // dbl_false
extern __m128d const __m128d_0e_rcp4mg; //              __m128d; // dbl_rcp4mg; // dbl_false

extern __m128d const __m128d_0e_e; //                       __m128d; // dbl_e; // dbl_false
extern __m128d const __m128d_0e_exp; //                     __m128d; // dbl_exp; // dbl_false
extern __m128d const __m128d_0e_loge; //                    __m128d; // dbl_loge; // dbl_false
extern __m128d const __m128d_0e_logehigh; //                __m128d; // dbl_logehigh; // dbl_false
extern __m128d const __m128d_0e_logelow; //                 __m128d; // dbl_logelow; // dbl_false
extern __m128d const __m128d_0e_log2e; //                   __m128d; // dbl_log2e; // dbl_false
extern __m128d const __m128d_0e_log2ehigh; //               __m128d; // dbl_log2ehigh; // dbl_false
extern __m128d const __m128d_0e_log2elow; //                __m128d; // dbl_log2elow; // dbl_false
extern __m128d const __m128d_0e_log10e; //              __m128d; // dbl_log10e; // dbl_false
extern __m128d const __m128d_0e_rcplog2e; //                __m128d; // dbl_rcplog2e; // dbl_false
extern __m128d const __m128d_0e_rcplog10e; //               __m128d; // dbl_rcplog10e; // dbl_false
extern __m128d const __m128d_0e_log2t; //                   __m128d; // dbl_log2t; // dbl_false
extern __m128d const __m128d_0e_log2; //                    __m128d; // dbl_log2; // dbl_false
extern __m128d const __m128d_0e_log2high; //                __m128d; // dbl_log2high; // dbl_false
extern __m128d const __m128d_0e_log2low; //                 __m128d; // dbl_log2low; // dbl_false
extern __m128d const __m128d_0e_ln2; //                     __m128d; // dbl_ln2; // dbl_false
extern __m128d const __m128d_0e_ln2high; //                 __m128d; // dbl_ln2high; // dbl_false
extern __m128d const __m128d_0e_ln2low; //              __m128d; // dbl_ln2low; // dbl_false
extern __m128d const __m128d_0e_1divln2; //                 __m128d; // dbl_1divln2; // dbl_false
extern __m128d const __m128d_0e_2divln2; //                 __m128d; // dbl_2divln2; // dbl_false
extern __m128d const __m128d_0e_lnt; //                     __m128d; // dbl_lnt; // dbl_false
extern __m128d const __m128d_0e_lnthigh; //                 __m128d; // dbl_lnthigh; // dbl_false
extern __m128d const __m128d_0e_lntlow; //              __m128d; // dbl_lntlow; // dbl_false
extern __m128d const __m128d_0e_ln10; //                    __m128d; // dbl_ln10; // dbl_false
extern __m128d const __m128d_0e_sqrt2; //                   __m128d; // dbl_sqrt2; // dbl_false
extern __m128d const __m128d_0e_rcpsqrt2; //                __m128d; // dbl_rcpsqrt2; // dbl_false
extern __m128d const __m128d_0e_sqrt2div2; //               __m128d; // dbl_sqrt2div2; // dbl_false
extern __m128d const __m128d_0e_sqrt2div2high; //           __m128d; // dbl_sqrt2div2high; // dbl_false
extern __m128d const __m128d_0e_sqrt2div2low; //            __m128d; // dbl_sqrt2div2low; // dbl_false
extern __m128d const __m128d_0e_sqrthalf; //                __m128d; // dbl_sqrthalf; // dbl_false
extern __m128d const __m128d_0e_sqrthalfhigh; //            __m128d; // dbl_sqrthalfhigh; // dbl_false
extern __m128d const __m128d_0e_sqrthalflow; //             __m128d; // dbl_sqrthalflow; // dbl_false
extern __m128d const __m128d_0e_pow2; //                    __m128d; // dbl_pow2; // dbl_false
extern __m128d const __m128d_0e_rcppow2; //                 __m128d; // dbl_rcppow2; // dbl_false
extern __m128d const __m128d_0e_cbrt2; //                   __m128d; // dbl_cbrt2; // dbl_false
extern __m128d const __m128d_0e_rcpcbrt2; //                __m128d; // dbl_rcpcbrt2; // dbl_false
extern __m128d const __m128d_0e_1div3; //                   __m128d; // dbl_1div3; // dbl_false
extern __m128d const __m128d_0e_1div7; //                   __m128d; // dbl_1div7; // dbl_false
extern __m128d const __m128d_0e_1div9; //                   __m128d; // dbl_1div9; // dbl_false
extern __m128d const __m128d_0e_2div3; //                   __m128d; // dbl_2div3; // dbl_false
extern __m128d const __m128d_0e_2div7; //                   __m128d; // dbl_2div7; // dbl_false
extern __m128d const __m128d_0e_2div9; //                   __m128d; // dbl_2div9; // dbl_false
extern __m128d const __m128d_0e_4div3; //                   __m128d; // dbl_4div3; // dbl_false
extern __m128d const __m128d_0e_4div7; //                   __m128d; // dbl_4div7; // dbl_false
extern __m128d const __m128d_0e_4div9; //                   __m128d; // dbl_4div9; // dbl_false

extern __m128d const __m128d_0e_pi; //                  __m128d; // dbl_pi; // dbl_false
extern __m128d const __m128d_0e_pihigh; //              __m128d; // dbl_pihigh; // dbl_false
extern __m128d const __m128d_0e_pilow; //                   __m128d; // dbl_pilow; // dbl_false
extern __m128d const __m128d_0e_halfpi; //              __m128d; // dbl_halfpi; // dbl_false
extern __m128d const __m128d_0e_2pi; //                     __m128d; // dbl_2pi; // dbl_false
extern __m128d const __m128d_0e_negpi; //                   __m128d; // dbl_negpi; // dbl_false
extern __m128d const __m128d_0e_neghalfpi; //               __m128d; // dbl_neghalfpi; // dbl_false
extern __m128d const __m128d_0e_neg2pi; //              __m128d; // dbl_neg2pi; // dbl_false
extern __m128d const __m128d_0e_rcppi; //                   __m128d; // dbl_rcppi; // dbl_false
extern __m128d const __m128d_0e_invpi; //                   __m128d; // dbl_invpi; // dbl_false
extern __m128d const __m128d_0e_rcp2pi; //              __m128d; // dbl_rcp2pi; // dbl_false
extern __m128d const __m128d_0e_inv2pi; //              __m128d; // dbl_inv2pi; // dbl_false
extern __m128d const __m128d_0e_pidiv2; //              __m128d; // dbl_pidiv2; // dbl_false
extern __m128d const __m128d_0e_pidiv2high; //          __m128d; // dbl_pidiv2high; // dbl_false
extern __m128d const __m128d_0e_pidiv2low; //               __m128d; // dbl_pidiv2low; // dbl_false
extern __m128d const __m128d_0e_pidiv4; //              __m128d; // dbl_pidiv4; // dbl_false
extern __m128d const __m128d_0e_pidiv4high; //          __m128d; // dbl_pidiv4high; // dbl_false
extern __m128d const __m128d_0e_pidiv4low; //               __m128d; // dbl_pidiv4low; // dbl_false
extern __m128d const __m128d_0e_pix3div4; //                __m128d; // dbl_pix3div4; // dbl_false
extern __m128d const __m128d_0e_sqrtpi; //              __m128d; // dbl_sqrtpi; // dbl_false
extern __m128d const __m128d_0e_sqrt2pi; //                 __m128d; // dbl_sqrt2pi; // dbl_false
extern __m128d const __m128d_0e_sqrt2pihigh; //             __m128d; // dbl_sqrt2pihigh; // dbl_false
extern __m128d const __m128d_0e_sqrt2pilow; //          __m128d; // dbl_sqrt2pilow; // dbl_false
extern __m128d const __m128d_0e_rcpsqrtpi; //               __m128d; // dbl_rcpsqrtpi; // dbl_false
extern __m128d const __m128d_0e_rcpsqrt2pi; //          __m128d; // dbl_rcpsqrt2pi; // dbl_false
extern __m128d const __m128d_0e_sqrtpidiv2; //          __m128d; // dbl_sqrtpidiv2; // dbl_false
extern __m128d const __m128d_0e_sqrtpidiv2high; //      __m128d; // dbl_sqrtpidiv2high; // dbl_false
extern __m128d const __m128d_0e_sqrt2pidiv2; //             __m128d; // dbl_sqrt2pidiv2; // dbl_false
extern __m128d const __m128d_0e_sqrt2pidiv2high; //         __m128d; // dbl_sqrt2pidiv2high; // dbl_false
extern __m128d const __m128d_0e_sqrt2pidiv2low; //      __m128d; // dbl_sqrt2pidiv2low; // dbl_false
extern __m128d const __m128d_0e_2divpi; //              __m128d; // dbl_2divpi; // dbl_false
extern __m128d const __m128d_0e_2div2pi; //                 __m128d; // dbl_2div2pi; // dbl_false
extern __m128d const __m128d_0e_2divsqrtpi; //          __m128d; // dbl_2divsqrtpi; // dbl_false
extern __m128d const __m128d_0e_2divsqrt2pi; //             __m128d; // dbl_2divsqrt2pi; // dbl_false
extern __m128d const __m128d_0e_sqrt2divpi; //          __m128d; // dbl_sqrt2divpi; // dbl_false
extern __m128d const __m128d_0e_logpi; //                   __m128d; // dbl_logpi; // dbl_false
extern __m128d const __m128d_0e_log2pi; //              __m128d; // dbl_log2pi; // dbl_false
extern __m128d const __m128d_0e_lnpi; //                    __m128d; // dbl_lnpi; // dbl_false
extern __m128d const __m128d_0e_ln2pi; //                   __m128d; // dbl_ln2pi; // dbl_false
extern __m128d const __m128d_0e_powpi; //                   __m128d; // dbl_powpi; // dbl_false
extern __m128d const __m128d_0e_rcppowpi; //                __m128d; // dbl_rcppowpi; // dbl_false
extern __m128d const __m128d_0e_pow2pi; //              __m128d; // dbl_pow2pi; // dbl_false
extern __m128d const __m128d_0e_rcppow2pi; //               __m128d; // dbl_rcppow2pi; // dbl_false
extern __m128d const __m128d_0e_cbrtpi; //              __m128d; // dbl_cbrtpi; // dbl_false
extern __m128d const __m128d_0e_rcpcbrtpi; //               __m128d; // dbl_rcpcbrtpi; // dbl_false
extern __m128d const __m128d_0e_cbrt2pi; //                 __m128d; // dbl_cbrt2pi; // dbl_false
extern __m128d const __m128d_0e_rcpcbrt2pi; //          __m128d; // dbl_rcpcbrt2pi; // dbl_false

extern __m128d const __m128d_0e_ln2x1024; //                __m128d; // dbl_ln2x1024; // dbl_false
extern __m128d const __m128d_0e_ln2x1025; //                __m128d; // dbl_ln2x1025; // dbl_false
extern __m128d const __m128d_0e_ln2x1075; //                __m128d; // dbl_ln2x1075; // dbl_false
extern __m128d const __m128d_0e_log2x1024; //               __m128d; // dbl_log2x1024; // dbl_false
extern __m128d const __m128d_0e_log2x1075; //               __m128d; // dbl_log2x1075; // dbl_false

extern __m128d const __m128d_0e_pow2tom126; //          __m128d; // dbl_pow2tom126; // dbl_false
extern __m128d const __m128d_0e_pow2to126; //               __m128d; // dbl_pow2to126; // dbl_false
extern __m128d const __m128d_0e_normhuge; //                __m128d; // dbl_normhuge; // dbl_false
extern __m128d const __m128d_0e_pow2to23; //                __m128d; // dbl_pow2to23; // dbl_false
extern __m128d const __m128d_0e_pow2to24; //                __m128d; // dbl_pow2to24; // dbl_false
extern __m128d const __m128d_0e_maxi32pow2to23; //      __m128d; // dbl_maxi32pow2to23; // dbl_false
extern __m128d const __m128d_0e_pow2to31; //                __m128d; // dbl_pow2to31; // dbl_false
extern __m128d const __m128d_0e_pow2to32; //                __m128d; // dbl_pow2to32; // dbl_false
extern __m128d const __m128d_0e_pow2to52; //                __m128d; // dbl_pow2to52; // dbl_false
extern __m128d const __m128d_0e_pow2to53; //                __m128d; // dbl_pow2to53; // dbl_false
extern __m128d const __m128d_0e_pow2to54; //                __m128d; // dbl_pow2to54; // dbl_false
extern __m128d const __m128d_0e_pow2tom54; //               __m128d; // dbl_pow2tom54; // dbl_false
extern __m128d const __m128d_0e_pow2to62; //                __m128d; // dbl_pow2to62; // dbl_false
extern __m128d const __m128d_0e_maxi64pow2to52; //          __m128d; // dbl_maxi64pow2to52; // dbl_false
extern __m128d const __m128d_0e_pow2to63; //                __m128d; // dbl_pow2to63; // dbl_false
extern __m128d const __m128d_0e_pow2to64; //                __m128d; // dbl_pow2to64; // dbl_false
extern __m128d const __m128d_0e_pow2tom1022; //             __m128d; // dbl_pow2tom1022; // dbl_false
extern __m128d const __m128d_0e_trigploss; //               __m128d; // dbl_trigploss; // dbl_false

extern __m128d const __m128d_0e_degtorad; //                __m128d; // dbl_degtorad; // dbl_false
extern __m128d const __m128d_0e_radtodeg; //                __m128d; // dbl_radtodeg; // dbl_false

extern __m128d const __m128d_0e_degtograd; //               __m128d; // dbl_degtograd; // dbl_false
extern __m128d const __m128d_0e_gradtodeg; //               __m128d; // dbl_gradtodeg; // dbl_false

extern __m128d const __m128d_0e_radtograd; //               __m128d; // dbl_radtograd; // dbl_false
extern __m128d const __m128d_0e_gradtorad; //               __m128d; // dbl_gradtorad; // dbl_false

extern __m128d const __m128d_0e_sungravity; //          __m128d; // dbl_sungravity; // dbl_false
extern __m128d const __m128d_0e_jupitergravity; //      __m128d; // dbl_jupitergravity; // dbl_false
extern __m128d const __m128d_0e_neptunegravity; //      __m128d; // dbl_neptunegravity; // dbl_false
extern __m128d const __m128d_0e_saturngravity; //           __m128d; // dbl_saturngravity; // dbl_false
extern __m128d const __m128d_0e_uranusgravity; //           __m128d; // dbl_uranusgravity; // dbl_false
extern __m128d const __m128d_0e_earthgravity; //            __m128d; // dbl_earthgravity; // dbl_false
extern __m128d const __m128d_0e_venusgravity; //            __m128d; // dbl_venusgravity; // dbl_false
extern __m128d const __m128d_0e_marsgravity; //             __m128d; // dbl_marsgravity; // dbl_false
extern __m128d const __m128d_0e_mercurygravity; //      __m128d; // dbl_mercurygravity; // dbl_false
extern __m128d const __m128d_0e_moongravity; //             __m128d; // dbl_moongravity; // dbl_false
extern __m128d const __m128d_0e_plutogravity; //            __m128d; // dbl_plutogravity; // dbl_false

extern __m128d const __m128d_0e_kmtoinch; //                __m128d; // dbl_kmtoinch; // dbl_false
extern __m128d const __m128d_0e_kmtofeet; //                __m128d; // dbl_kmtofeet; // dbl_false
extern __m128d const __m128d_0e_kmtoyards; //               __m128d; // dbl_kmtoyards; // dbl_false
extern __m128d const __m128d_0e_kmtomiles; //               __m128d; // dbl_kmtomiles; // dbl_false

extern __m128d const __m128d_0e_metoinch; //                __m128d; // dbl_metoinch; // dbl_false
extern __m128d const __m128d_0e_metofeet; //                __m128d; // dbl_metofeet; // dbl_false
extern __m128d const __m128d_0e_metoyards; //               __m128d; // dbl_metoyards; // dbl_false
extern __m128d const __m128d_0e_metomiles; //               __m128d; // dbl_metomiles; // dbl_false

extern __m128d const __m128d_0e_cmtoinch; //                __m128d; // dbl_cmtoinch; // dbl_false
extern __m128d const __m128d_0e_cmtofeet; //                __m128d; // dbl_cmtofeet; // dbl_false
extern __m128d const __m128d_0e_cmtoyards; //               __m128d; // dbl_cmtoyards; // dbl_false
extern __m128d const __m128d_0e_cmtomiles; //               __m128d; // dbl_cmtomiles; // dbl_false

extern __m128d const __m128d_0e_milltoinch; //          __m128d; // dbl_milltoinch; // dbl_false
extern __m128d const __m128d_0e_milltofeet; //          __m128d; // dbl_milltofeet; // dbl_false
extern __m128d const __m128d_0e_milltoyards; //             __m128d; // dbl_milltoyards; // dbl_false
extern __m128d const __m128d_0e_milltomiles; //             __m128d; // dbl_milltomiles; // dbl_false

extern __m128d const __m128d_0e_inchtomill; //          __m128d; // dbl_inchtomill; // dbl_false
extern __m128d const __m128d_0e_inchtocm; //                __m128d; // dbl_inchtocm; // dbl_false
extern __m128d const __m128d_0e_inchtome; //                __m128d; // dbl_inchtome; // dbl_false
extern __m128d const __m128d_0e_inchtokm; //                __m128d; // dbl_inchtokm; // dbl_false
extern __m128d const __m128d_0e_inchtofeet; //          __m128d; // dbl_inchtofeet; // dbl_false
extern __m128d const __m128d_0e_inchtoyards; //             __m128d; // dbl_inchtoyards; // dbl_false
extern __m128d const __m128d_0e_inchtomiles; //             __m128d; // dbl_inchtomiles; // dbl_false

extern __m128d const __m128d_0e_feettomill; //          __m128d; // dbl_feettomill; // dbl_false
extern __m128d const __m128d_0e_feettocm; //                __m128d; // dbl_feettocm; // dbl_false
extern __m128d const __m128d_0e_feettome; //                __m128d; // dbl_feettome; // dbl_false
extern __m128d const __m128d_0e_feettokm; //                __m128d; // dbl_feettokm; // dbl_false
extern __m128d const __m128d_0e_feettoinch; //          __m128d; // dbl_feettoinch; // dbl_false
extern __m128d const __m128d_0e_feettoyards; //             __m128d; // dbl_feettoyards; // dbl_false
extern __m128d const __m128d_0e_feettomiles; //             __m128d; // dbl_feettomiles; // dbl_false

extern __m128d const __m128d_0e_yardstomill; //             __m128d; // dbl_yardstomill; // dbl_false
extern __m128d const __m128d_0e_yardstocm; //               __m128d; // dbl_yardstocm; // dbl_false
extern __m128d const __m128d_0e_yardstome; //               __m128d; // dbl_yardstome; // dbl_false
extern __m128d const __m128d_0e_yardstokm; //               __m128d; // dbl_yardstokm; // dbl_false
extern __m128d const __m128d_0e_yardstoinch; //             __m128d; // dbl_yardstoinch; // dbl_false
extern __m128d const __m128d_0e_yardstofeet; //             __m128d; // dbl_yardstofeet; // dbl_false
extern __m128d const __m128d_0e_yardstomiles; //            __m128d; // dbl_yardstomiles; // dbl_false

extern __m128d const __m128d_0e_milestomill; //             __m128d; // dbl_milestomill; // dbl_false
extern __m128d const __m128d_0e_milestocm; //               __m128d; // dbl_milestocm; // dbl_false
extern __m128d const __m128d_0e_milestome; //               __m128d; // dbl_milestome; // dbl_false
extern __m128d const __m128d_0e_milestoinch; //             __m128d; // dbl_milestokm; // dbl_false
extern __m128d const __m128d_0e_milestoinch; //             __m128d; // dbl_milestoinch; // dbl_false
extern __m128d const __m128d_0e_milestofeet; //             __m128d; // dbl_milestofeet; // dbl_false
extern __m128d const __m128d_0e_milestoyards; //            __m128d; // dbl_milestoyards; // dbl_false

extern __m128d const __m128d_0e_kmphtomeps; //          __m128d; // dbl_kmphtomeps; // dbl_false
extern __m128d const __m128d_0e_kmphtokmps; //          __m128d; // dbl_kmphtokmps; // dbl_false
extern __m128d const __m128d_0e_kmphtomepm; //          __m128d; // dbl_kmphtomepm; // dbl_false
extern __m128d const __m128d_0e_kmphtomilesph; //           __m128d; // dbl_kmphtomilesph; // dbl_false
extern __m128d const __m128d_0e_kmphtomilesps; //           __m128d; // dbl_kmphtomilesps; // dbl_false
extern __m128d const __m128d_0e_kmphtofeetps; //            __m128d; // dbl_kmphtofeetps; // dbl_false
extern __m128d const __m128d_0e_kmphtofeetpm; //            __m128d; // dbl_kmphtofeetpm; // dbl_false

extern __m128d const __m128d_0e_kmpstomeps; //          __m128d; // dbl_kmpstomeps; // dbl_false
extern __m128d const __m128d_0e_kmpstokmph; //          __m128d; // dbl_kmpstokmph; // dbl_false
extern __m128d const __m128d_0e_kmpstomepm; //          __m128d; // dbl_kmpstomepm; // dbl_false
extern __m128d const __m128d_0e_kmpstomilesph; //           __m128d; // dbl_kmpstomilesph; // dbl_false
extern __m128d const __m128d_0e_kmpstomilesps; //           __m128d; // dbl_kmpstomilesps; // dbl_false
extern __m128d const __m128d_0e_kmpstofeetps; //            __m128d; // dbl_kmpstofeetps; // dbl_false
extern __m128d const __m128d_0e_kmpstofeetpm; //            __m128d; // dbl_kmpstofeetpm; // dbl_false

extern __m128d const __m128d_0e_mepstokmph; //          __m128d; // dbl_mepstokmph; // dbl_false
extern __m128d const __m128d_0e_mepstokmps; //          __m128d; // dbl_mepstokmps; // dbl_false
extern __m128d const __m128d_0e_mepstomepm; //          __m128d; // dbl_mepstomepm; // dbl_false
extern __m128d const __m128d_0e_mepstomilesph; //           __m128d; // dbl_mepstomilesph; // dbl_false
extern __m128d const __m128d_0e_mepstomilesps; //           __m128d; // dbl_mepstomilesps; // dbl_false
extern __m128d const __m128d_0e_mepstofeetps; //            __m128d; // dbl_mepstofeetps; // dbl_false
extern __m128d const __m128d_0e_mepstofeetpm; //            __m128d; // dbl_mepstofeetpm; // dbl_false

extern __m128d const __m128d_0e_mepmtokmph; //          __m128d; // dbl_mepmtokmph; // dbl_false
extern __m128d const __m128d_0e_mepmtokmps; //          __m128d; // dbl_mepmtokmps; // dbl_false
extern __m128d const __m128d_0e_mepmtomeps; //          __m128d; // dbl_mepmtomeps; // dbl_false
extern __m128d const __m128d_0e_mepmtomilesph; //           __m128d; // dbl_mepmtomilesph; // dbl_false
extern __m128d const __m128d_0e_mepmtomilesps; //           __m128d; // dbl_mepmtomilesps; // dbl_false
extern __m128d const __m128d_0e_mepmtofeetps; //            __m128d; // dbl_mepmtofeetps; // dbl_false
extern __m128d const __m128d_0e_mepmtofeetpm; //            __m128d; // dbl_mepmtofeetpm; // dbl_false

extern __m128d const __m128d_0e_milesphtokmph; //           __m128d; // dbl_milesphtokmph; // dbl_false
extern __m128d const __m128d_0e_milesphtokmps; //           __m128d; // dbl_milesphtokmps; // dbl_false
extern __m128d const __m128d_0e_milesphtomeps; //           __m128d; // dbl_milesphtomeps; // dbl_false
extern __m128d const __m128d_0e_milesphtomepm; //           __m128d; // dbl_milesphtomepm; // dbl_false
extern __m128d const __m128d_0e_milesphtomilesps; //        __m128d; // dbl_milesphtomilesps; // dbl_false
extern __m128d const __m128d_0e_milesphtofeetps; //         __m128d; // dbl_milesphtofeetps; // dbl_false
extern __m128d const __m128d_0e_milesphtofeetpm; //     __m128d; // dbl_milesphtofeetpm; // dbl_false

extern __m128d const __m128d_0e_milespstokmph; //           __m128d; // dbl_milespstokmph; // dbl_false
extern __m128d const __m128d_0e_milespstokmps; //           __m128d; // dbl_milespstokmps; // dbl_false
extern __m128d const __m128d_0e_milespstomeps; //           __m128d; // dbl_milespstomeps; // dbl_false
extern __m128d const __m128d_0e_milespstomepm; //           __m128d; // dbl_milespstomepm; // dbl_false
extern __m128d const __m128d_0e_milespstomilespm; //        __m128d; // dbl_milespstomilespm; // dbl_false
extern __m128d const __m128d_0e_milespstofeetps; //         __m128d; // dbl_milespstofeetps; // dbl_false
extern __m128d const __m128d_0e_milespstofeetpm; //     __m128d; // dbl_milespstofeetpm; // dbl_false

extern __m128d const __m128d_0e_feetpstokmph; //            __m128d; // dbl_feetpstokmph; // dbl_false
extern __m128d const __m128d_0e_feetpstokmps; //            __m128d; // dbl_feetpstokmps; // dbl_false
extern __m128d const __m128d_0e_feetpstomeps; //            __m128d; // dbl_feetpstomeps; // dbl_false
extern __m128d const __m128d_0e_feetpstomepm; //            __m128d; // dbl_feetpstomepm; // dbl_false
extern __m128d const __m128d_0e_feetpstomilesph; //         __m128d; // dbl_feetpstomilesph; // dbl_false
extern __m128d const __m128d_0e_feetpstomilesps; //         __m128d; // dbl_feetpstomilesps; // dbl_false
extern __m128d const __m128d_0e_feetpstofeetpm; //      __m128d; // dbl_feetpstofeetpm; // dbl_false

extern __m128d const __m128d_0e_feetpmtokmph; //            __m128d; // dbl_feetpmtokmph; // dbl_false
extern __m128d const __m128d_0e_feetpmtokmps; //            __m128d; // dbl_feetpmtokmps; // dbl_false
extern __m128d const __m128d_0e_feetpmtomeps; //            __m128d; // dbl_feetpmtomeps; // dbl_false
extern __m128d const __m128d_0e_feetpmtomepm; //            __m128d; // dbl_feetpmtomepm; // dbl_false
extern __m128d const __m128d_0e_feetpmtomilesph; //         __m128d; // dbl_feetpmtomilesph; // dbl_false
extern __m128d const __m128d_0e_feetpmtomilesps; //         __m128d; // dbl_feetpmtomilesps; // dbl_false
extern __m128d const __m128d_0e_feetpmtofeetps; //      __m128d; // dbl_feetpmtofeetps; // dbl_false

extern __m128d const __m128d_0e_soundspeedp50c; //      __m128d; // dbl_soundspeedp50c; // dbl_false
extern __m128d const __m128d_0e_soundspeedp45c; //      __m128d; // dbl_soundspeedp45c; // dbl_false
extern __m128d const __m128d_0e_soundspeedp40c; //      __m128d; // dbl_soundspeedp40c; // dbl_false
extern __m128d const __m128d_0e_soundspeedp35c; //      __m128d; // dbl_soundspeedp35c; // dbl_false
extern __m128d const __m128d_0e_soundspeedp30c; //      __m128d; // dbl_soundspeedp30c; // dbl_false
extern __m128d const __m128d_0e_soundspeedp25c; //      __m128d; // dbl_soundspeedp25c; // dbl_false
extern __m128d const __m128d_0e_soundspeedp20c; //      __m128d; // dbl_soundspeedp20c; // dbl_false
extern __m128d const __m128d_0e_soundspeedp15c; //      __m128d; // dbl_soundspeedp15c; // dbl_false
extern __m128d const __m128d_0e_soundspeedp10c; //      __m128d; // dbl_soundspeedp10c; // dbl_false
extern __m128d const __m128d_0e_soundspeedp5c; //           __m128d; // dbl_soundspeedp5c; // dbl_false
extern __m128d const __m128d_0e_soundspeed0c; //            __m128d; // dbl_soundspeed0c; // dbl_false
extern __m128d const __m128d_0e_soundspeedn5c; //           __m128d; // dbl_soundspeedn5c; // dbl_false
extern __m128d const __m128d_0e_soundspeedn10c; //      __m128d; // dbl_soundspeedn10c; // dbl_false
extern __m128d const __m128d_0e_soundspeedn15c; //      __m128d; // dbl_soundspeedn15c; // dbl_false
extern __m128d const __m128d_0e_soundspeedn20c; //      __m128d; // dbl_soundspeedn20c; // dbl_false
extern __m128d const __m128d_0e_soundspeedn25c; //      __m128d; // dbl_soundspeedn25c; // dbl_false
extern __m128d const __m128d_0e_soundspeedn30c; //      __m128d; // dbl_soundspeedn30c; // dbl_false
extern __m128d const __m128d_0e_soundspeedn35c; //      __m128d; // dbl_soundspeedn35c; // dbl_false
extern __m128d const __m128d_0e_soundspeedn40c; //      __m128d; // dbl_soundspeedn40c; // dbl_false
extern __m128d const __m128d_0e_soundspeedn45c; //      __m128d; // dbl_soundspeedn45c; // dbl_false
extern __m128d const __m128d_0e_soundspeedn50c; //      __m128d; // dbl_soundspeedn50c; // dbl_false

extern __m128d const __m128d_0e_schscale; //                __m128d; // dbl_schscale; // dbl_false
extern __m128d const __m128d_0e_thscale; //                 __m128d; // dbl_thscale; // dbl_false

extern __m128d const __m128d_0e_expest1; //                 __m128d; // dbl_expest1; // dbl_false
extern __m128d const __m128d_0e_expest2; //                 __m128d; // dbl_expest2; // dbl_false
extern __m128d const __m128d_0e_expest3; //                 __m128d; // dbl_expest3; // dbl_false
extern __m128d const __m128d_0e_expest4; //                 __m128d; // dbl_expest4; // dbl_false
extern __m128d const __m128d_0e_expest5; //                 __m128d; // dbl_expest5; // dbl_false
extern __m128d const __m128d_0e_expest6; //                 __m128d; // dbl_expest6; // dbl_false
extern __m128d const __m128d_0e_expest7; //                 __m128d; // dbl_expest7; // dbl_false
extern __m128d const __m128d_0e_logest0; //                 __m128d; // dbl_logest0; // dbl_false
extern __m128d const __m128d_0e_logest1; //                 __m128d; // dbl_logest1; // dbl_false
extern __m128d const __m128d_0e_logest2; //                 __m128d; // dbl_logest2; // dbl_false
extern __m128d const __m128d_0e_logest3; //                 __m128d; // dbl_logest3; // dbl_false
extern __m128d const __m128d_0e_logest4; //                 __m128d; // dbl_logest4; // dbl_false
extern __m128d const __m128d_0e_logest5; //                 __m128d; // dbl_logest5; // dbl_false
extern __m128d const __m128d_0e_logest6; //                 __m128d; // dbl_logest6; // dbl_false
extern __m128d const __m128d_0e_logest7; //                 __m128d; // dbl_logest7; // dbl_false

	//;;DirectX Math constants;;

extern __m128i const __m128i_dbl_select00; //                 __m128q; dbl_false, dbl_false
extern __m128i const __m128i_dbl_select01; //                 __m128q; dbl_false, dbl_true
extern __m128i const __m128i_dbl_select10; //                 __m128q; dbl_true, dbl_false
extern __m128i const __m128i_dbl_select11; //                 __m128q; dbl_true, dbl_true

extern __m128d const __m128d_select00; //                 __m128q; dbl_false, dbl_false
extern __m128d const __m128d_select01; //                 __m128q; dbl_false, dbl_true
extern __m128d const __m128d_select10; //                 __m128q; dbl_true, dbl_false
extern __m128d const __m128d_select11; //                 __m128q; dbl_true, dbl_true

/*
 * Function data, Constants
 */

	//;;int8 mask;;

extern __m128i uX_ABI _uX_mm_const_i8_true_si128(void); //                __m128b; // i8_true
extern __m128i uX_ABI _uX_mm_const_i8_false_si128(void); //               __m128b; // i8_false
extern __m128i uX_ABI _uX_mm_const_i8_max_si128(void); //             __m128b; // i8_max
extern __m128i uX_ABI _uX_mm_const_i8_min_si128(void); //             __m128b; // i8_min
extern __m128i uX_ABI _uX_mm_const_ui8_max_si128(void); //                __m128b; // ui8_max
extern __m128i uX_ABI _uX_mm_const_ui8_min_si128(void); //                __m128b; // ui8_min
extern __m128i uX_ABI _uX_mm_const_si8_max_si128(void); //                __m128b; // si8_max
extern __m128i uX_ABI _uX_mm_const_si8_min_si128(void); //                __m128b; // si8_min
extern __m128i uX_ABI _uX_mm_const_i8_error_si128(void); //               __m128b; // i8_error
extern __m128i uX_ABI _uX_mm_const_ui8_error_si128(void); //          __m128b; // ui8_error
extern __m128i uX_ABI _uX_mm_const_si8_error_si128(void); //          __m128b; // si8_error
extern __m128i uX_ABI _uX_mm_const_i8_0_si128(void); //                __m128b, i8_0
extern __m128i uX_ABI _uX_mm_const_i8_1_si128(void); //                __m128b, i8_1
extern __m128i uX_ABI _uX_mm_const_i8_neg0_si128(void); //             __m128b, i8_neg0
extern __m128i uX_ABI _uX_mm_const_i8_neg1_si128(void); //             __m128b, i8_neg1

	//;;int8 mask low;;

extern __m128i uX_ABI _uX_mm_const_i8_0e_true_si128(void); //         __m128b; // i8_true; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i uX_ABI _uX_mm_const_i8_0e_false_si128(void); //            __m128b; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i uX_ABI _uX_mm_const_i8_0e_max_si128(void); //          __m128b; // i8_max; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i uX_ABI _uX_mm_const_i8_0e_min_si128(void); //          __m128b; // i8_min; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i uX_ABI _uX_mm_const_ui8_0e_max_si128(void); //         __m128b; // ui8_max; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i uX_ABI _uX_mm_const_ui8_0e_min_si128(void); //         __m128b; // ui8_min; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i uX_ABI _uX_mm_const_si8_0e_max_si128(void); //         __m128b; // si8_max; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i uX_ABI _uX_mm_const_si8_0e_min_si128(void); //         __m128b; // si8_min; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i uX_ABI _uX_mm_const_i8_0e_error_si128(void); //            __m128b; // i8_error; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i uX_ABI _uX_mm_const_ui8_0e_error_si128(void); //           __m128b; // ui8_error; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i uX_ABI _uX_mm_const_si8_0e_error_si128(void); //           __m128b; // si8_error; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false; // i8_false
extern __m128i uX_ABI _uX_mm_const_i8_0e_0_si128(void); //             __m128b, i8_0, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
extern __m128i uX_ABI _uX_mm_const_i8_0e_1_si128(void); //             __m128b, i8_1, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
extern __m128i uX_ABI _uX_mm_const_i8_0e_neg0_si128(void); //          __m128b, i8_neg0, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false
extern __m128i uX_ABI _uX_mm_const_i8_0e_neg1_si128(void); //          __m128b, i8_neg1, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false, i8_false

	//;;int16 mask;;

extern __m128i uX_ABI _uX_mm_const_i16_true_si128(void); //               __m128w; // i16_true
extern __m128i uX_ABI _uX_mm_const_i16_false_si128(void); //              __m128w; // i16_false
extern __m128i uX_ABI _uX_mm_const_i16_max_si128(void); //                __m128w; // i16_max
extern __m128i uX_ABI _uX_mm_const_i16_min_si128(void); //                __m128w; // i16_min
extern __m128i uX_ABI _uX_mm_const_ui16_max_si128(void); //               __m128w; // ui16_max
extern __m128i uX_ABI _uX_mm_const_ui16_min_si128(void); //               __m128w; // ui16_min
extern __m128i uX_ABI _uX_mm_const_si16_max_si128(void); //               __m128w; // si16_max
extern __m128i uX_ABI _uX_mm_const_si16_min_si128(void); //               __m128w; // si16_min
extern __m128i uX_ABI _uX_mm_const_i16_error_si128(void); //              __m128w; // i16_error
extern __m128i uX_ABI _uX_mm_const_ui16_error_si128(void); //         __m128w; // ui16_error
extern __m128i uX_ABI _uX_mm_const_si16_error_si128(void); //         __m128w; // si16_error
extern __m128i uX_ABI _uX_mm_const_i16_0_si128(void); //               __m128b, i16_0
extern __m128i uX_ABI _uX_mm_const_i16_1_si128(void); //               __m128b, i16_1
extern __m128i uX_ABI _uX_mm_const_i16_neg0_si128(void); //               __m128b, i16_neg0
extern __m128i uX_ABI _uX_mm_const_i16_neg1_si128(void); //               __m128b, i16_neg1
	//;;int16 mask low;;

extern __m128i uX_ABI _uX_mm_const_i16_0e_true_si128(void); //            __m128w; // i16_true; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i uX_ABI _uX_mm_const_i16_0e_false_si128(void); //           __m128w; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i uX_ABI _uX_mm_const_i16_0e_max_si128(void); //         __m128w; // i16_max; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i uX_ABI _uX_mm_const_i16_0e_min_si128(void); //         __m128w; // i16_min; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i uX_ABI _uX_mm_const_ui16_0e_max_si128(void); //            __m128w; // ui16_max; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i uX_ABI _uX_mm_const_ui16_0e_min_si128(void); //            __m128w; // ui16_min; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i uX_ABI _uX_mm_const_si16_0e_max_si128(void); //            __m128w; // si16_max; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i uX_ABI _uX_mm_const_si16_0e_min_si128(void); //            __m128w; // si16_min; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i uX_ABI _uX_mm_const_i16_0e_error_si128(void); //           __m128w; // i16_error; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i uX_ABI _uX_mm_const_ui16_0e_error_si128(void); //          __m128w; // ui16_error; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i uX_ABI _uX_mm_const_si16_0e_error_si128(void); //          __m128w; // si16_error; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false; // i16_false
extern __m128i uX_ABI _uX_mm_const_i16_0e_0_si128(void); //               __m128w, i16_0, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
extern __m128i uX_ABI _uX_mm_const_i16_0e_1_si128(void); //               __m128w, i16_1, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
extern __m128i uX_ABI _uX_mm_const_i16_0e_neg0_si128(void); //            __m128w, i16_neg0, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false
extern __m128i uX_ABI _uX_mm_const_i16_0e_neg1_si128(void); //            __m128w, i16_neg1, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false, i16_false

	//;;int32 mask;;

extern __m128i uX_ABI _uX_mm_const_i32_true_si128(void); //               __m128i; // i32_true
extern __m128i uX_ABI _uX_mm_const_i32_false_si128(void); //              __m128i; // i32_false
extern __m128i uX_ABI _uX_mm_const_i32_max_si128(void); //                __m128i; // i32_max
extern __m128i uX_ABI _uX_mm_const_i32_min_si128(void); //                __m128i; // i32_min
extern __m128i uX_ABI _uX_mm_const_ui32_max_si128(void); //               __m128i; // ui32_max
extern __m128i uX_ABI _uX_mm_const_ui32_min_si128(void); //               __m128i; // ui32_min
extern __m128i uX_ABI _uX_mm_const_si32_max_si128(void); //               __m128i; // si32_max
extern __m128i uX_ABI _uX_mm_const_si32_min_si128(void); //               __m128i; // si32_min
extern __m128i uX_ABI _uX_mm_const_i32_error_si128(void); //              __m128i; // i32_error
extern __m128i uX_ABI _uX_mm_const_ui32_error_si128(void); //         __m128i; // ui32_error
extern __m128i uX_ABI _uX_mm_const_si32_error_si128(void); //         __m128i; // si32_error
extern __m128i uX_ABI _uX_mm_const_i32_0_si128(void); //               __m128i, i32_0
extern __m128i uX_ABI _uX_mm_const_i32_1_si128(void); //               __m128i, i32_1
extern __m128i uX_ABI _uX_mm_const_i32_neg0_si128(void); //                __m128i, i32_neg0
extern __m128i uX_ABI _uX_mm_const_i32_neg1_si128(void); //                __m128i, i32_neg1

extern __m128i uX_ABI _uX_mm_const_i32_select0000_si128(void); //                __m128i, i32_false, i32_false, i32_false, i32_false
extern __m128i uX_ABI _uX_mm_const_i32_select0001_si128(void); //                __m128i, i32_false, i32_false, i32_false, i32_true
extern __m128i uX_ABI _uX_mm_const_i32_select0010_si128(void); //                __m128i, i32_false, i32_false, i32_true, i32_false
extern __m128i uX_ABI _uX_mm_const_i32_select0100_si128(void); //                __m128i, i32_false, i32_true, i32_false, i32_false
extern __m128i uX_ABI _uX_mm_const_i32_select1000_si128(void); //                __m128i, i32_true, i32_false, i32_false, i32_false
extern __m128i uX_ABI _uX_mm_const_i32_select0011_si128(void); //                __m128i, i32_false, i32_false, i32_true, i32_true
extern __m128i uX_ABI _uX_mm_const_i32_select0111_si128(void); //                __m128i, i32_false, i32_true, i32_true, i32_true
extern __m128i uX_ABI _uX_mm_const_i32_select1111_si128(void); //                __m128i, i32_true, i32_true, i32_true, i32_true
extern __m128i uX_ABI _uX_mm_const_i32_select1110_si128(void); //                __m128i, i32_true, i32_true, i32_true, i32_false
extern __m128i uX_ABI _uX_mm_const_i32_select1100_si128(void); //                __m128i, i32_true, i32_true, i32_false, i32_false
extern __m128i uX_ABI _uX_mm_const_i32_select1001_si128(void); //                __m128i, i32_true, i32_false, i32_false, i32_true
extern __m128i uX_ABI _uX_mm_const_i32_select0110_si128(void); //                __m128i, i32_false, i32_true, i32_true, i32_false
extern __m128i uX_ABI _uX_mm_const_i32_select1011_si128(void); //                __m128i, i32_true, i32_false, i32_true, i32_true
extern __m128i uX_ABI _uX_mm_const_i32_select1101_si128(void); //                __m128i, i32_true, i32_true, i32_false, i32_true
extern __m128i uX_ABI _uX_mm_const_i32_select0101_si128(void); //                __m128i, i32_false, i32_true, i32_false, i32_true
extern __m128i uX_ABI _uX_mm_const_i32_select1010_si128(void); //                __m128i, i32_true, i32_false, i32_true, i32_false

	//;;int32 mask low;;

extern __m128i uX_ABI _uX_mm_const_i32_0e_true_si128(void); //            __m128i; // i32_true; // i32_false; // i32_false; // i32_false
extern __m128i uX_ABI _uX_mm_const_i32_0e_false_si128(void); //           __m128i; // i32_false; // i32_false; // i32_false; // i32_false
extern __m128i uX_ABI _uX_mm_const_i32_0e_max_si128(void); //         __m128i; // i32_max; // i32_false; // i32_false; // i32_false
extern __m128i uX_ABI _uX_mm_const_i32_0e_min_si128(void); //         __m128i; // i32_min; // i32_false; // i32_false; // i32_false
extern __m128i uX_ABI _uX_mm_const_ui32_0e_max_si128(void); //            __m128i; // ui32_max; // i32_false; // i32_false; // i32_false
extern __m128i uX_ABI _uX_mm_const_ui32_0e_min_si128(void); //            __m128i; // ui32_min; // i32_false; // i32_false; // i32_false
extern __m128i uX_ABI _uX_mm_const_si32_0e_max_si128(void); //            __m128i; // si32_max; // i32_false; // i32_false; // i32_false
extern __m128i uX_ABI _uX_mm_const_si32_0e_min_si128(void); //            __m128i; // si32_min; // i32_false; // i32_false; // i32_false
extern __m128i uX_ABI _uX_mm_const_i32_0e_error_si128(void); //           __m128i; // i32_error; // i32_false; // i32_false; // i32_false
extern __m128i uX_ABI _uX_mm_const_ui32_0e_error_si128(void); //          __m128i; // ui32_error; // i32_false; // i32_false; // i32_false
extern __m128i uX_ABI _uX_mm_const_si32_0e_error_si128(void); //          __m128i; // si32_error; // i32_false; // i32_false; // i32_false
extern __m128i uX_ABI _uX_mm_const_i32_0e_0_si128(void); //            __m128i, i32_0, i32_false, i32_false, i32_false
extern __m128i uX_ABI _uX_mm_const_i32_0e_1_si128(void); //            __m128i, i32_1, i32_false, i32_false, i32_false
extern __m128i uX_ABI _uX_mm_const_i32_0e_neg0_si128(void); //             __m128i, i32_neg0, i32_false, i32_false, i32_false
extern __m128i uX_ABI _uX_mm_const_i32_0e_neg1_si128(void); //             __m128i, i32_neg1, i32_false, i32_false, i32_false

	//;;int64 mask;;

extern __m128i uX_ABI _uX_mm_const_i64_true_si128(void); //               __m128q; // i64_true
extern __m128i uX_ABI _uX_mm_const_i64_false_si128(void); //              __m128q; // i64_false
extern __m128i uX_ABI _uX_mm_const_i64_max_si128(void); //                __m128q; // i64_max
extern __m128i uX_ABI _uX_mm_const_i64_min_si128(void); //                __m128q; // i64_min
extern __m128i uX_ABI _uX_mm_const_ui64_max_si128(void); //               __m128q; // ui64_max
extern __m128i uX_ABI _uX_mm_const_ui64_min_si128(void); //               __m128q; // ui64_min
extern __m128i uX_ABI _uX_mm_const_si64_max_si128(void); //               __m128q; // si64_max
extern __m128i uX_ABI _uX_mm_const_si64_min_si128(void); //               __m128q; // si64_min
extern __m128i uX_ABI _uX_mm_const_i64_error_si128(void); //              __m128q; // i64_error
extern __m128i uX_ABI _uX_mm_const_ui64_error_si128(void); //         __m128q; // ui64_error
extern __m128i uX_ABI _uX_mm_const_si64_error_si128(void); //         __m128q; // si64_error
extern __m128i uX_ABI _uX_mm_const_i64_0_si128(void); //               __m128q, i64_0
extern __m128i uX_ABI _uX_mm_const_i64_1_si128(void); //               __m128q, i64_1
extern __m128i uX_ABI _uX_mm_const_i64_neg0_si128(void); //                __m128q, i64_neg0
extern __m128i uX_ABI _uX_mm_const_i64_neg1_si128(void); //                __m128q, i64_neg1

extern __m128i uX_ABI _uX_mm_const_i64_select00_si128(void); //                __m128q, i64_false, i64_false
extern __m128i uX_ABI _uX_mm_const_i64_select01_si128(void); //                __m128q, i64_false, i64_true
extern __m128i uX_ABI _uX_mm_const_i64_select10_si128(void); //                __m128q, i64_true, i64_false
extern __m128i uX_ABI _uX_mm_const_i64_select11_si128(void); //                __m128q, i64_true, i64_true

	//;;int64 mask low;;

extern __m128i uX_ABI _uX_mm_const_i64_0e_true_si128(void); //            __m128q; // i64_true; // i64_false
extern __m128i uX_ABI _uX_mm_const_i64_0e_false_si128(void); //           __m128q; // i64_false; // i64_false
extern __m128i uX_ABI _uX_mm_const_i64_0e_max_si128(void); //         __m128q; // i64_max; // i64_false
extern __m128i uX_ABI _uX_mm_const_i64_0e_min_si128(void); //         __m128q; // i64_min; // i64_false
extern __m128i uX_ABI _uX_mm_const_ui64_0e_max_si128(void); //            __m128q; // ui64_max; // i64_false
extern __m128i uX_ABI _uX_mm_const_ui64_0e_min_si128(void); //            __m128q; // ui64_min; // i64_false
extern __m128i uX_ABI _uX_mm_const_si64_0e_max_si128(void); //            __m128q; // si64_max; // i64_false
extern __m128i uX_ABI _uX_mm_const_si64_0e_min_si128(void); //            __m128q; // si64_min; // i64_false
extern __m128i uX_ABI _uX_mm_const_i64_0e_error_si128(void); //           __m128q; // i64_error; // i64_false
extern __m128i uX_ABI _uX_mm_const_ui64_0e_error_si128(void); //          __m128q; // ui64_error; // i64_false
extern __m128i uX_ABI _uX_mm_const_si64_0e_error_si128(void); //          __m128q; // si64_error; // i64_false
extern __m128i uX_ABI _uX_mm_const_i64_0e_0_si128(void); //            __m128q, i64_0, i64_false
extern __m128i uX_ABI _uX_mm_const_i64_0e_1_si128(void); //            __m128q, i64_1, i64_false
extern __m128i uX_ABI _uX_mm_const_i64_0e_neg0_si128(void); //             __m128q, i64_neg0, i64_false
extern __m128i uX_ABI _uX_mm_const_i64_0e_neg1_si128(void); //             __m128q, i64_neg1, i64_false

	//;;float mask;;

extern __m128i uX_ABI _uX_mm_const_flt_bigoverflow_si128(void); //        __m128i, 0x2000000
extern __m128i uX_ABI _uX_mm_const_flt_bytevtbl_si128(void); //           __m128i, 0x3f802000

extern __m128i uX_ABI _uX_mm_const_flt_1lshl3_si128(void); //         __m128i; // flt_1lshl3_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl4_si128(void); //         __m128i; // flt_1lshl4_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl7_si128(void); //         __m128i; // flt_1lshl7_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl8_si128(void); //         __m128i; // flt_1lshl8_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl11_si128(void); //            __m128i; // flt_1lshl11_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl12_si128(void); //            __m128i; // flt_1lshl12_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl15_si128(void); //            __m128i; // flt_1lshl15_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl16_si128(void); //            __m128i; // flt_1lshl16_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl19_si128(void); //            __m128i; // flt_1lshl19_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl20_si128(void); //            __m128i; // flt_1lshl20_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl23_si128(void); //            __m128i; // flt_1lshl23_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl24_si128(void); //            __m128i; // flt_1lshl24_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl27_si128(void); //            __m128i; // flt_1lshl27_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl28_si128(void); //            __m128i; // flt_1lshl28_msk
extern __m128i uX_ABI _uX_mm_const_flt_1lshl31_si128(void); //            __m128i; // flt_1lshl31_msk

extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl3_si128(void); //          __m128i; // flt_neg1lshl3_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl4_si128(void); //          __m128i; // flt_neg1lshl4_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl7_si128(void); //          __m128i; // flt_neg1lshl7_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl8_si128(void); //          __m128i; // flt_neg1lshl8_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl11_si128(void); //     __m128i; // flt_neg1lshl11_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl12_si128(void); //     __m128i; // flt_neg1lshl12_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl15_si128(void); //     __m128i; // flt_neg1lshl15_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl16_si128(void); //     __m128i; // flt_neg1lshl16_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl19_si128(void); //     __m128i; // flt_neg1lshl19_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl20_si128(void); //     __m128i; // flt_neg1lshl20_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl23_si128(void); //     __m128i; // flt_neg1lshl23_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl24_si128(void); //     __m128i; // flt_neg1lshl24_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl27_si128(void); //     __m128i; // flt_neg1lshl27_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl28_si128(void); //     __m128i; // flt_neg1lshl28_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1lshl31_si128(void); //     __m128i; // flt_neg1lshl31_msk

extern __m128i uX_ABI _uX_mm_const_flt_false_si128(void); //              __m128i; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_true_si128(void); //               __m128i; // flt_true_msk
extern __m128i uX_ABI _uX_mm_const_flt_error_si128(void); //              __m128i; // flt_error_msk

extern __m128i uX_ABI _uX_mm_const_flt_magic_si128(void); //              __m128i; // flt_magic_msk
extern __m128i uX_ABI _uX_mm_const_flt_sign_si128(void); //               __m128i; // flt_sign_msk
extern __m128i uX_ABI _uX_mm_const_flt_invsign_si128(void); //            __m128i; // flt_invsign_msk

extern __m128i uX_ABI _uX_mm_const_flt_inf_si128(void); //                __m128i; // flt_inf_msk
extern __m128i uX_ABI _uX_mm_const_flt_fin_si128(void); //                __m128i; // flt_fin_msk
extern __m128i uX_ABI _uX_mm_const_flt_invinf_si128(void); //         __m128i; // flt_invinf_msk
extern __m128i uX_ABI _uX_mm_const_flt_neginf_si128(void); //         __m128i; // flt_neginf_msk
extern __m128i uX_ABI _uX_mm_const_flt_nan_si128(void); //                __m128i; // flt_nan_msk
extern __m128i uX_ABI _uX_mm_const_flt_qnan_si128(void); //               __m128i; // flt_qnan_msk
extern __m128i uX_ABI _uX_mm_const_flt_negqnan_si128(void); //            __m128i; // flt_negqnan_msk
extern __m128i uX_ABI _uX_mm_const_flt_nantest_si128(void); //            __m128i; // flt_nantest_msk
extern __m128i uX_ABI _uX_mm_const_flt_abs_si128(void); //                __m128i; // flt_abs_msk
extern __m128i uX_ABI _uX_mm_const_flt_min_si128(void); //                __m128i; // flt_min_msk
extern __m128i uX_ABI _uX_mm_const_flt_max_si128(void); //                __m128i; // flt_max_msk
extern __m128i uX_ABI _uX_mm_const_flt_nofraction_si128(void); //     __m128i; // flt_nofraction_msk
extern __m128i uX_ABI _uX_mm_const_flt_mindenorm_si128(void); //          __m128i; // flt_mindenorm_msk
extern __m128i uX_ABI _uX_mm_const_flt_denormlimit_si128(void); //        __m128i; // flt_denormlimit_msk
extern __m128i uX_ABI _uX_mm_const_flt_minnormal_si128(void); //          __m128i; // flt_minnormal_msk
extern __m128i uX_ABI _uX_mm_const_flt_maxnormal_si128(void); //          __m128i; // flt_maxnormal_msk

extern __m128i uX_ABI _uX_mm_const_flt_decdig_si128(void); //         __m128i; // flt_decdig_msk
extern __m128i uX_ABI _uX_mm_const_flt_dig_si128(void); //                __m128i; // flt_dig_msk
extern __m128i uX_ABI _uX_mm_const_flt_negdecdig_si128(void); //          __m128i; // flt_negdecdig_msk
extern __m128i uX_ABI _uX_mm_const_flt_negdig_si128(void); //         __m128i; // flt_negdig_msk
extern __m128i uX_ABI _uX_mm_const_flt_eps_si128(void); //                __m128i; // flt_eps_msk
extern __m128i uX_ABI _uX_mm_const_flt_epsilon_si128(void); //            __m128i; // flt_epsilon_msk
extern __m128i uX_ABI _uX_mm_const_flt_normeps_si128(void); //            __m128i; // flt_normeps_msk
extern __m128i uX_ABI _uX_mm_const_flt_guard_si128(void); //              __m128i; // flt_guard_msk
extern __m128i uX_ABI _uX_mm_const_flt_mantpow2_si128(void); //           __m128i; // flt_mantpow2_msk
extern __m128i uX_ABI _uX_mm_const_flt_maxmantpow2_si128(void); //        __m128i; // flt_maxmantpow2_msk
extern __m128i uX_ABI _uX_mm_const_flt_mantdig_si128(void); //            __m128i; // flt_mantdig_msk
extern __m128i uX_ABI _uX_mm_const_flt_mant_si128(void); //               __m128i; // flt_mant_msk
extern __m128i uX_ABI _uX_mm_const_flt_negmantdig_si128(void); //     __m128i; // flt_negmantdig_msk
extern __m128i uX_ABI _uX_mm_const_flt_negmant_si128(void); //            __m128i; // flt_negmant_msk
extern __m128i uX_ABI _uX_mm_const_flt_maxexp_si128(void); //         __m128i; // flt_maxexp_msk
extern __m128i uX_ABI _uX_mm_const_flt_expsign_si128(void); //            __m128i; // flt_expsign_msk
extern __m128i uX_ABI _uX_mm_const_flt_exp_si128(void); //                __m128i; // flt_exp_msk
extern __m128i uX_ABI _uX_mm_const_flt_negmaxexp_si128(void); //          __m128i; // flt_negmaxexp_msk
extern __m128i uX_ABI _uX_mm_const_flt_negexpsign_si128(void); //     __m128i; // flt_negexpsign_msk
extern __m128i uX_ABI _uX_mm_const_flt_negexp_si128(void); //         __m128i; // flt_negexp_msk
extern __m128i uX_ABI _uX_mm_const_flt_subnormalexp_si128(void); //       __m128i; // flt_subnormalexp_msk
extern __m128i uX_ABI _uX_mm_const_flt_minexp_si128(void); //         __m128i; // flt_minexp_msk
extern __m128i uX_ABI _uX_mm_const_flt_maxdecexp_si128(void); //          __m128i; // flt_maxdecexp_msk
extern __m128i uX_ABI _uX_mm_const_flt_negmaxdecexp_si128(void); //       __m128i; // flt_negmaxdecexp_msk
extern __m128i uX_ABI _uX_mm_const_flt_mindecexp_si128(void); //          __m128i; // flt_mindecexp_msk
extern __m128i uX_ABI _uX_mm_const_flt_expfield_si128(void); //           __m128i; // flt_expfield_msk
extern __m128i uX_ABI _uX_mm_const_flt_mantfield_si128(void); //          __m128i; // flt_mantfield_msk
extern __m128i uX_ABI _uX_mm_const_flt_norm_si128(void); //               __m128i; // flt_norm_msk
extern __m128i uX_ABI _uX_mm_const_flt_radix_si128(void); //              __m128i; // flt_radix_msk
extern __m128i uX_ABI _uX_mm_const_flt_rounds_si128(void); //         __m128i; // flt_rounds_msk
extern __m128i uX_ABI _uX_mm_const_flt_subdec_si128(void); //         __m128i; // flt_subdec_msk
extern __m128i uX_ABI _uX_mm_const_flt_sqrtmax_si128(void); //            __m128i; // flt_sqrtmax_msk
extern __m128i uX_ABI _uX_mm_const_flt_smallnormal_si128(void); //        __m128i; // flt_smallnormal_msk

extern __m128i uX_ABI _uX_mm_const_flt_halfminuseps_si128(void); //       __m128i; // flt_halfminuseps_msk
extern __m128i uX_ABI _uX_mm_const_flt_trueint_si128(void); //            __m128i; // flt_trueint_msk

extern __m128i uX_ABI _uX_mm_const_flt_byte_si128(void); //               __m128i; // flt_byte_msk
extern __m128i uX_ABI _uX_mm_const_flt_byte_even_si128(void); //          __m128i; // flt_byte_even_msk
extern __m128i uX_ABI _uX_mm_const_flt_byte_odd_si128(void); //           __m128i; // flt_byte_odd_msk
extern __m128i uX_ABI _uX_mm_const_flt_4low_si128(void); //               __m128i; // flt_4low_msk
extern __m128i uX_ABI _uX_mm_const_flt_4high_si128(void); //              __m128i; // flt_4high_msk
extern __m128i uX_ABI _uX_mm_const_flt_flip4_si128(void); //              __m128i; // flt_flip4_msk
extern __m128i uX_ABI _uX_mm_const_flt_8low_si128(void); //               __m128i; // flt_8low_msk
extern __m128i uX_ABI _uX_mm_const_flt_8high_si128(void); //              __m128i; // flt_8high_msk
extern __m128i uX_ABI _uX_mm_const_flt_flip8_si128(void); //              __m128i; // flt_flip8_msk
extern __m128i uX_ABI _uX_mm_const_flt_16low_si128(void); //              __m128i; // flt_16low_msk
extern __m128i uX_ABI _uX_mm_const_flt_16high_si128(void); //         __m128i; // flt_16high_msk
extern __m128i uX_ABI _uX_mm_const_flt_flip16_si128(void); //         __m128i; // flt_flip16_msk
extern __m128i uX_ABI _uX_mm_const_flt_24low_si128(void); //              __m128i; // flt_24low_msk
extern __m128i uX_ABI _uX_mm_const_flt_24high_si128(void); //         __m128i; // flt_24high_msk
extern __m128i uX_ABI _uX_mm_const_flt_flip24_si128(void); //         __m128i; // flt_flip24_msk
extern __m128i uX_ABI _uX_mm_const_flt_28low_si128(void); //              __m128i; // flt_28low_msk
extern __m128i uX_ABI _uX_mm_const_flt_28high_si128(void); //         __m128i; // flt_28high_msk
extern __m128i uX_ABI _uX_mm_const_flt_flip28_si128(void); //         __m128i; // flt_flip28_msk
extern __m128i uX_ABI _uX_mm_const_flt_32low_si128(void); //              __m128i; // flt_32low_msk
extern __m128i uX_ABI _uX_mm_const_flt_32high_si128(void); //         __m128i; // flt_32high_msk
extern __m128i uX_ABI _uX_mm_const_flt_flip32_si128(void); //         __m128i; // flt_flip32_msk

extern __m128i uX_ABI _uX_mm_const_flt_0_si128(void); //                  __m128i; // flt_0e_msk
extern __m128i uX_ABI _uX_mm_const_flt_0d5_si128(void); //                __m128i; // flt_0d5_msk
extern __m128i uX_ABI _uX_mm_const_flt_1_si128(void); //                  __m128i; // flt_1_msk
extern __m128i uX_ABI _uX_mm_const_flt_1d5_si128(void); //                __m128i; // flt_1d5_msk
extern __m128i uX_ABI _uX_mm_const_flt_2_si128(void); //                  __m128i; // flt_2_msk
extern __m128i uX_ABI _uX_mm_const_flt_2d5_si128(void); //                __m128i; // flt_2d5_msk
extern __m128i uX_ABI _uX_mm_const_flt_3_si128(void); //                  __m128i; // flt_3_msk
extern __m128i uX_ABI _uX_mm_const_flt_4_si128(void); //                  __m128i; // flt_4_msk
extern __m128i uX_ABI _uX_mm_const_flt_5_si128(void); //                  __m128i; // flt_5_msk
extern __m128i uX_ABI _uX_mm_const_flt_6_si128(void); //                  __m128i; // flt_6_msk
extern __m128i uX_ABI _uX_mm_const_flt_7_si128(void); //                  __m128i; // flt_7_msk
extern __m128i uX_ABI _uX_mm_const_flt_8_si128(void); //                  __m128i; // flt_8_msk
extern __m128i uX_ABI _uX_mm_const_flt_9_si128(void); //                  __m128i; // flt_9_msk
extern __m128i uX_ABI _uX_mm_const_flt_10_si128(void); //             __m128i; // flt_10_msk
extern __m128i uX_ABI _uX_mm_const_flt_20_si128(void); //             __m128i; // flt_20_msk
extern __m128i uX_ABI _uX_mm_const_flt_23_si128(void); //             __m128i; // flt_23_msk
extern __m128i uX_ABI _uX_mm_const_flt_23d5_si128(void); //               __m128i; // flt_23d5_msk
extern __m128i uX_ABI _uX_mm_const_flt_24_si128(void); //             __m128i; // flt_24_msk
extern __m128i uX_ABI _uX_mm_const_flt_24d5_si128(void); //               __m128i; // flt_24d5_msk
extern __m128i uX_ABI _uX_mm_const_flt_25_si128(void); //             __m128i; // flt_25_msk

extern __m128i uX_ABI _uX_mm_const_flt_128_si128(void); //                __m128i; // flt_128_msk

extern __m128i uX_ABI _uX_mm_const_flt_253_si128(void); //                __m128i; // flt_253_msk

extern __m128i uX_ABI _uX_mm_const_flt_neg0_si128(void); //               __m128i; // flt_neg0_msk
extern __m128i uX_ABI _uX_mm_const_flt_neg1_si128(void); //               __m128i; // flt_neg1_msk

extern __m128i uX_ABI _uX_mm_const_flt_neg150_si128(void); //         __m128i; // flt_neg150_msk

extern __m128i uX_ABI _uX_mm_const_flt_bin128_si128(void); //         __m128i; // flt_bin128_msk
extern __m128i uX_ABI _uX_mm_const_flt_binneg150_si128(void); //          __m128i; // flt_binneg150_msk

extern __m128i uX_ABI _uX_mm_const_flt_maxrand_si128(void); //            __m128i; // flt_maxrand_msk

extern __m128i uX_ABI _uX_mm_const_flt_maxi8_si128(void); //              __m128i; // flt_maxi8_msk
extern __m128i uX_ABI _uX_mm_const_flt_mini8_si128(void); //              __m128i; // flt_mini8_msk
extern __m128i uX_ABI _uX_mm_const_flt_maxu8_si128(void); //              __m128i; // flt_maxu8_msk

extern __m128i uX_ABI _uX_mm_const_flt_maxi16_si128(void); //         __m128i; // flt_maxi16_msk
extern __m128i uX_ABI _uX_mm_const_flt_mini16_si128(void); //         __m128i; // flt_mini16_msk
extern __m128i uX_ABI _uX_mm_const_flt_maxu16_si128(void); //         __m128i; // flt_maxu16_msk

extern __m128i uX_ABI _uX_mm_const_flt_maxi32_si128(void); //         __m128i; // flt_maxi32_msk
extern __m128i uX_ABI _uX_mm_const_flt_mini32_si128(void); //         __m128i; // flt_mini32_msk
extern __m128i uX_ABI _uX_mm_const_flt_maxu32_si128(void); //         __m128i; // flt_maxu32_msk

extern __m128i uX_ABI _uX_mm_const_flt_maxi8xu8_si128(void); //           __m128i; // flt_maxi8xu8_msk
extern __m128i uX_ABI _uX_mm_const_flt_mini8xu8_si128(void); //           __m128i; // flt_mini8xu8_msk
extern __m128i uX_ABI _uX_mm_const_flt_maxi8xu16_si128(void); //          __m128i; // flt_maxi8xu16_msk
extern __m128i uX_ABI _uX_mm_const_flt_mini8xu16_si128(void); //          __m128i; // flt_mini8xu16_msk

extern __m128i uX_ABI _uX_mm_const_flt_maxi16xu16_si128(void); //     __m128i; // flt_maxi16xu16_msk
extern __m128i uX_ABI _uX_mm_const_flt_mini16xu16_si128(void); //     __m128i; // flt_mini16xu16_msk

extern __m128i uX_ABI _uX_mm_const_flt_fixunsigned_si128(void); //        __m128i; // flt_fixunsigned_msk
extern __m128i uX_ABI _uX_mm_const_flt_fixunsigned32_si128(void); //      __m128i; // flt_fixunsigned32_msk
extern __m128i uX_ABI _uX_mm_const_flt_fixmaxi32_si128(void); //          __m128i; // flt_fixmaxi32_msk
extern __m128i uX_ABI _uX_mm_const_flt_fixmaxu32_si128(void); //          __m128i; // flt_fixmaxu32_msk


	//;;float mask low;;

extern __m128i uX_ABI _uX_mm_const_flt_0e_bigoverflow_si128(void); //        __m128i, 0x2000000, flt_false_msk, flt_false_msk, flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_bytevtbl_si128(void); //           __m128i, 0x3f802000, flt_false_msk, flt_false_msk, flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl3_si128(void); //              __m128i; // flt_1lshl3_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl4_si128(void); //              __m128i; // flt_1lshl4_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl7_si128(void); //              __m128i; // flt_1lshl7_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl8_si128(void); //              __m128i; // flt_1lshl8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl11_si128(void); //         __m128i; // flt_1lshl11_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl12_si128(void); //         __m128i; // flt_1lshl12_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl15_si128(void); //         __m128i; // flt_1lshl15_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl16_si128(void); //         __m128i; // flt_1lshl16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl19_si128(void); //         __m128i; // flt_1lshl19_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl20_si128(void); //         __m128i; // flt_1lshl20_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl23_si128(void); //         __m128i; // flt_1lshl23_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl24_si128(void); //         __m128i; // flt_1lshl24_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl27_si128(void); //         __m128i; // flt_1lshl27_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl28_si128(void); //         __m128i; // flt_1lshl28_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1lshl31_si128(void); //         __m128i; // flt_1lshl31_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl3_si128(void); //           __m128i; // flt_neg1lshl3_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl4_si128(void); //           __m128i; // flt_neg1lshl4_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl7_si128(void); //           __m128i; // flt_neg1lshl7_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl8_si128(void); //           __m128i; // flt_neg1lshl8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl11_si128(void); //          __m128i; // flt_neg1lshl11_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl12_si128(void); //          __m128i; // flt_neg1lshl12_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl15_si128(void); //          __m128i; // flt_neg1lshl15_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl16_si128(void); //          __m128i; // flt_neg1lshl16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl19_si128(void); //          __m128i; // flt_neg1lshl19_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl20_si128(void); //          __m128i; // flt_neg1lshl20_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl23_si128(void); //          __m128i; // flt_neg1lshl23_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl24_si128(void); //          __m128i; // flt_neg1lshl24_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl27_si128(void); //          __m128i; // flt_neg1lshl27_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl28_si128(void); //          __m128i; // flt_neg1lshl28_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1lshl31_si128(void); //          __m128i; // flt_neg1lshl31_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_false_si128(void); //               __m128i; // flt_false_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_true_si128(void); //                __m128i; // flt_true_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_error_si128(void); //               __m128i; // flt_error_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_magic_si128(void); //               __m128i; // flt_magic_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_sign_si128(void); //                __m128i; // flt_sign_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_invsign_si128(void); //         __m128i; // flt_invsign_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_inf_si128(void); //             __m128i; // flt_inf_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_fin_si128(void); //             __m128i; // flt_fin_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_invinf_si128(void); //              __m128i; // flt_invinf_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neginf_si128(void); //              __m128i; // flt_neginf_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_nan_si128(void); //             __m128i; // flt_nan_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_qnan_si128(void); //                __m128i; // flt_qnan_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_negqnan_si128(void); //         __m128i; // flt_negqnan_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_nantest_si128(void); //         __m128i; // flt_nantest_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_abs_si128(void); //             __m128i; // flt_abs_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_min_si128(void); //             __m128i; // flt_min_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_max_si128(void); //             __m128i; // flt_max_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_nofraction_si128(void); //          __m128i; // flt_nofraction_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_mindenorm_si128(void); //           __m128i; // flt_mindenorm_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_denormlimit_si128(void); //     __m128i; // flt_denormlimit_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_minnormal_si128(void); //           __m128i; // flt_minnormal_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_maxnormal_si128(void); //           __m128i; // flt_maxnormal_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_decdig_si128(void); //              __m128i; // flt_decdig_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_dig_si128(void); //             __m128i; // flt_dig_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_negdecdig_si128(void); //           __m128i; // flt_negdecdig_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_negdig_si128(void); //              __m128i; // flt_negdig_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_eps_si128(void); //             __m128i; // flt_eps_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_epsilon_si128(void); //         __m128i; // flt_epsilon_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_normeps_si128(void); //         __m128i; // flt_normeps_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_guard_si128(void); //               __m128i; // flt_guard_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_mantpow2_si128(void); //            __m128i; // flt_mantpow2_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_maxmantpow2_si128(void); //     __m128i; // flt_maxmantpow2_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_mantdig_si128(void); //         __m128i; // flt_mantdig_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_mant_si128(void); //                __m128i; // flt_mant_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_negmantdig_si128(void); //          __m128i; // flt_negmantdig_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_negmant_si128(void); //         __m128i; // flt_negmant_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_maxexp_si128(void); //              __m128i; // flt_maxexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_expsign_si128(void); //         __m128i; // flt_expsign_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_exp_si128(void); //             __m128i; // flt_exp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_negmaxexp_si128(void); //           __m128i; // flt_negmaxexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_negexpsign_si128(void); //          __m128i; // flt_negexpsign_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_negexp_si128(void); //              __m128i; // flt_negexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_subnormalexp_si128(void); //        __m128i; // flt_subnormalexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_minexp_si128(void); //              __m128i; // flt_minexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_maxdecexp_si128(void); //           __m128i; // flt_maxdecexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_negmaxdecexp_si128(void); //        __m128i; // flt_negmaxdecexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_mindecexp_si128(void); //           __m128i; // flt_mindecexp_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_expfield_si128(void); //            __m128i; // flt_expfield_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_mantfield_si128(void); //           __m128i; // flt_mantfield_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_norm_si128(void); //                __m128i; // flt_norm_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_radix_si128(void); //               __m128i; // flt_radix_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_rounds_si128(void); //              __m128i; // flt_rounds_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_subdec_si128(void); //              __m128i; // flt_subdec_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_sqrtmax_si128(void); //         __m128i; // flt_sqrtmax_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_smallnormal_si128(void); //     __m128i; // flt_smallnormal_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_halfminuseps_si128(void); //        __m128i; // flt_halfminuseps_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_trueint_si128(void); //         __m128i; // flt_trueint_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_byte_si128(void); //                __m128i; // flt_byte_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_byte_even_si128(void); //       __m128i; // flt_byte_even_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_byte_odd_si128(void); //            __m128i; // flt_byte_odd_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_4low_si128(void); //                __m128i; // flt_4low_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_4high_si128(void); //               __m128i; // flt_4high_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_flip4_si128(void); //               __m128i; // flt_flip4_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_8low_si128(void); //                __m128i; // flt_8low_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_8high_si128(void); //               __m128i; // flt_8high_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_flip8_si128(void); //               __m128i; // flt_flip8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_16low_si128(void); //               __m128i; // flt_16low_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_16high_si128(void); //              __m128i; // flt_16high_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_flip16_si128(void); //              __m128i; // flt_flip16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_24low_si128(void); //               __m128i; // flt_24low_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_24high_si128(void); //              __m128i; // flt_24high_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_flip24_si128(void); //              __m128i; // flt_flip24_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_28low_si128(void); //               __m128i; // flt_28low_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_28high_si128(void); //              __m128i; // flt_28high_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_flip28_si128(void); //              __m128i; // flt_flip28_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_32low_si128(void); //               __m128i; // flt_32low_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_32high_si128(void); //              __m128i; // flt_32high_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_flip32_si128(void); //              __m128i; // flt_flip32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_0_si128(void); //                   __m128i; // flt_0e_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_0d5_si128(void); //             __m128i; // flt_0d5_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1_si128(void); //                   __m128i; // flt_1_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_1d5_si128(void); //             __m128i; // flt_1d5_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_2_si128(void); //                   __m128i; // flt_2_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_2d5_si128(void); //             __m128i; // flt_2d5_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_3_si128(void); //                   __m128i; // flt_3_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_4_si128(void); //                   __m128i; // flt_4_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_5_si128(void); //                   __m128i; // flt_5_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_6_si128(void); //                   __m128i; // flt_6_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_7_si128(void); //                   __m128i; // flt_7_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_8_si128(void); //                   __m128i; // flt_8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_9_si128(void); //                   __m128i; // flt_9_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_10_si128(void); //                  __m128i; // flt_10_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_20_si128(void); //                  __m128i; // flt_20_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_23_si128(void); //                  __m128i; // flt_23_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_23d5_si128(void); //                __m128i; // flt_23d5_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_24_si128(void); //                  __m128i; // flt_24_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_24d5_si128(void); //                __m128i; // flt_24d5_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_25_si128(void); //                  __m128i; // flt_25_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_128_si128(void); //             __m128i; // flt_128_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_253_si128(void); //             __m128i; // flt_253_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_neg0_si128(void); //                __m128i; // flt_neg0_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_neg1_si128(void); //                __m128i; // flt_neg1_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_neg150_si128(void); //              __m128i; // flt_neg150_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_bin128_si128(void); //              __m128i; // flt_bin128_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_binneg150_si128(void); //           __m128i; // flt_binneg150_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_maxrand_si128(void); //         __m128i; // flt_maxrand_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_maxi8_si128(void); //               __m128i; // flt_maxi8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_mini8_si128(void); //               __m128i; // flt_mini8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_maxu8_si128(void); //               __m128i; // flt_maxu8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_maxi16_si128(void); //              __m128i; // flt_maxi16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_mini16_si128(void); //              __m128i; // flt_mini16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_maxu16_si128(void); //              __m128i; // flt_maxu16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_maxi32_si128(void); //              __m128i; // flt_maxi32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_mini32_si128(void); //              __m128i; // flt_mini32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_maxu32_si128(void); //              __m128i; // flt_maxu32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_maxi8xu8_si128(void); //            __m128i; // flt_maxi8xu8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_mini8xu8_si128(void); //            __m128i; // flt_mini8xu8_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_maxi8xu16_si128(void); //           __m128i; // flt_maxi8xu16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_mini8xu16_si128(void); //           __m128i; // flt_mini8xu16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_maxi16xu16_si128(void); //          __m128i; // flt_maxi16xu16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_mini16xu16_si128(void); //          __m128i; // flt_mini16xu16_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

extern __m128i uX_ABI _uX_mm_const_flt_0e_fixunsigned_si128(void); //     __m128i; // flt_fixunsigned_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_fixunsigned32_si128(void); //       __m128i; // flt_fixunsigned32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_fixmaxi32_si128(void); //           __m128i; // flt_fixmaxi32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_0e_fixmaxu32_si128(void); //           __m128i; // flt_fixmaxu32_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk

	//;;DirectX Math constants;;

extern __m128i uX_ABI _uX_mm_const_flt_negativezero_si128(void); //               __m128i; // flt_neg0_msk; // flt_neg0_msk; // flt_neg0_msk; // flt_neg0_msk
extern __m128i uX_ABI _uX_mm_const_flt_negate3_si128(void); //                    __m128i; // flt_neg0_msk; // flt_neg0_msk; // flt_neg0_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_maskxy_si128(void); //                     __m128i; // flt_true_msk; // flt_true_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_maskxyz_si128(void); //                    __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_maskxyzw_si128(void); //                   __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_true_msk
extern __m128i uX_ABI _uX_mm_const_flt_mask3_si128(void); //                  __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_maskx_si128(void); //                  __m128i; // flt_true_msk; // flt_false_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_masky_si128(void); //                  __m128i; // flt_false_msk; // flt_true_msk; // flt_false_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_maskz_si128(void); //                  __m128i; // flt_false_msk; // flt_false_msk; // flt_true_msk; // flt_false_msk
extern __m128i uX_ABI _uX_mm_const_flt_maskw_si128(void); //                  __m128i; // flt_false_msk; // flt_false_msk; // flt_false_msk; // flt_true_msk
extern __m128i uX_ABI _uX_mm_const_flt_infinity_si128(void); //                   __m128i; // flt_inf_msk; // flt_inf_msk; // flt_inf_msk; // flt_inf_msk
extern __m128i uX_ABI _uX_mm_const_flt_qnantest_si128(void); //                   __m128i; // flt_nantest_msk; // flt_nantest_msk; // flt_nantest_msk; // flt_nantest_msk
extern __m128i uX_ABI _uX_mm_const_flt_absmask_si128(void); //                    __m128i; // flt_abs_msk; // flt_abs_msk; // flt_abs_msk; // flt_abs_msk
extern __m128i uX_ABI _uX_mm_const_flt_fltmin_si128(void); //                     __m128i; // flt_min_msk; // flt_min_msk; // flt_min_msk; // flt_min_msk
extern __m128i uX_ABI _uX_mm_const_flt_fltmax_si128(void); //                     __m128i; // flt_max_msk; // flt_max_msk; // flt_max_msk; // flt_max_msk
extern __m128i uX_ABI _uX_mm_const_flt_negonemask_si128(void); //                 __m128i; // flt_true_msk; // flt_true_msk; // flt_true_msk; // flt_true_msk
extern __m128i uX_ABI _uX_mm_const_flt_maska8r8g8b8_si128(void); //               __m128i; // flt_a8_msk; // flt_r8_msk; // flt_g8_msk; // flt_b8_msk
extern __m128i uX_ABI _uX_mm_const_flt_flipa8r8g8b8_si128(void); //               __m128i; // flt_flipa8_msk; // flt_flipr8_msk; // flt_flipg8_msk; // flt_flipb8_msk
extern __m128i uX_ABI _uX_mm_const_flt_maska2b10g10r10_si128(void); //            __m128i; // flt_a2_msk; // flt_b10_msk; // flt_g10_msk; // flt_r10_msk
extern __m128i uX_ABI _uX_mm_const_flt_flipa2b10g10r10_si128(void); //            __m128i; // flt_flipa2_msk; // flt_flipb10_msk; // flt_flipg10_msk; // flt_flipr10_msk
extern __m128i uX_ABI _uX_mm_const_flt_maskx16y16_si128(void); //                 __m128i; // flt_16low_msk; // flt_16high_msk; // flt_false; // flt_false
extern __m128i uX_ABI _uX_mm_const_flt_flipx16y16_si128(void); //                 __m128i; // flt_flip16_msk; // flt_flip16_msk; // flt_false; // flt_false
extern __m128i uX_ABI _uX_mm_const_flt_maskx16y16z16w16_si128(void); //           __m128i; // flt_16low_msk; // flt_16low_msk; // flt_16high_msk; // flt_16high_msk
extern __m128i uX_ABI _uX_mm_const_flt_flipx16y16z16w16_si128(void); //           __m128i; // flt_flip16_msk; // flt_flip16_msk; // flt_false; // flt_false
extern __m128i uX_ABI _uX_mm_const_flt_maskbyte_si128(void); //                   __m128i; // flt_byte_msk; // flt_byte_msk; // flt_byte_msk; // flt_byte_msk
extern __m128i uX_ABI _uX_mm_const_flt_select0000_si128(void); //                 __m128i; flt_false, flt_false, flt_false, flt_false
extern __m128i uX_ABI _uX_mm_const_flt_select0001_si128(void); //                 __m128i; flt_false, flt_false, flt_false, flt_true
extern __m128i uX_ABI _uX_mm_const_flt_select0010_si128(void); //                 __m128i; flt_false, flt_false, flt_true, flt_false
extern __m128i uX_ABI _uX_mm_const_flt_select0100_si128(void); //                 __m128i; flt_false, flt_true, flt_false, flt_false
extern __m128i uX_ABI _uX_mm_const_flt_select1000_si128(void); //                 __m128i; flt_true, flt_false, flt_false, flt_false
extern __m128i uX_ABI _uX_mm_const_flt_select0011_si128(void); //                 __m128i; flt_false, flt_false, flt_true, flt_true
extern __m128i uX_ABI _uX_mm_const_flt_select0111_si128(void); //                 __m128i; flt_false, flt_true, flt_true, flt_true
extern __m128i uX_ABI _uX_mm_const_flt_select1111_si128(void); //                 __m128i; flt_true, flt_true, flt_true, flt_true
extern __m128i uX_ABI _uX_mm_const_flt_select1110_si128(void); //                 __m128i; flt_true, flt_true, flt_true, flt_false
extern __m128i uX_ABI _uX_mm_const_flt_select1100_si128(void); //                 __m128i; flt_true, flt_true, flt_false, flt_false
extern __m128i uX_ABI _uX_mm_const_flt_select1001_si128(void); //                 __m128i; flt_true, flt_false, flt_false, flt_true
extern __m128i uX_ABI _uX_mm_const_flt_select0110_si128(void); //                 __m128i; flt_false, flt_true, flt_true, flt_false
extern __m128i uX_ABI _uX_mm_const_flt_select1011_si128(void); //                 __m128i; flt_true, flt_false, flt_true, flt_true
extern __m128i uX_ABI _uX_mm_const_flt_select1101_si128(void); //                 __m128i; flt_true, flt_true, flt_false, flt_true
extern __m128i uX_ABI _uX_mm_const_flt_select0101_si128(void); //                 __m128i; flt_false, flt_true, flt_false, flt_true
extern __m128i uX_ABI _uX_mm_const_flt_select1010_si128(void); //                 __m128i; flt_true, flt_false, flt_true, flt_false
extern __m128i uX_ABI _uX_mm_const_flt_onehalfminusepsilon_si128(void); //        __m128i; // flt_halfminuseps_msk; // flt_halfminuseps_msk; // flt_halfminuseps_msk; // flt_halfminuseps_msk
extern __m128i uX_ABI _uX_mm_const_flt_flipy_si128(void); //                  __m128i; // flt_false; // flt_flip32_msk; // flt_false; // flt_false
extern __m128i uX_ABI _uX_mm_const_flt_flipz_si128(void); //                  __m128i; // flt_false; // flt_false; // flt_flip32_msk; // flt_false
extern __m128i uX_ABI _uX_mm_const_flt_flipw_si128(void); //                  __m128i; // flt_false; // flt_false; // flt_false; // flt_flip32_msk
extern __m128i uX_ABI _uX_mm_const_flt_flipyz_si128(void); //                     __m128i; // flt_false; // flt_flip32_msk; // flt_flip32_msk; // flt_false
extern __m128i uX_ABI _uX_mm_const_flt_flipzw_si128(void); //                     __m128i; // flt_false; // flt_false; // flt_flip32_msk; // flt_flip32_msk
extern __m128i uX_ABI _uX_mm_const_flt_flipyw_si128(void); //                     __m128i; // flt_false; // flt_flip32_msk; // flt_false; // flt_flip32_msk
extern __m128i uX_ABI _uX_mm_const_flt_maskdec4_si128(void); //                   __m128i; // 0x000003ff; // 0x000ffc00; // 0x3ff00000; // 0xc0000000
extern __m128i uX_ABI _uX_mm_const_flt_xordec4_si128(void); //                    __m128i; // 0x00000200; // 0x00080000; // 0x20000000; // 0x00000000
extern __m128i uX_ABI _uX_mm_const_flt_maskbyte4_si128(void); //              __m128i; // 0x000000ff; // 0x0000ff00; // 0x00ff0000; // 0xff000000
extern __m128i uX_ABI _uX_mm_const_flt_xorbyte4_si128(void); //                   __m128i; // 0x00000080; // 0x00008000; // 0x00800000; // 0x00000000
extern __m128i uX_ABI _uX_mm_const_flt_exponentbias_si128(void); //               __m128i; // flt_exp_msk; // flt_exp_msk; // flt_exp_msk; // flt_exp_msk
extern __m128i uX_ABI _uX_mm_const_flt_subnormalexponent_si128(void); //      __m128i; // flt_subnormalexp_msk; // flt_subnormalexp_msk; // flt_subnormalexp_msk; // flt_subnormalexp_msk
extern __m128i uX_ABI _uX_mm_const_flt_numtrailing_si128(void); //                __m128i; // flt_mant_msk; // flt_mant_msk; // flt_mant_msk; // flt_mant_msk
extern __m128i uX_ABI _uX_mm_const_flt_neginfinity_si128(void); //                __m128i; // flt_neginf_msk; // flt_neginf_msk; // flt_neginf_msk; // flt_neginf_msk

namespace_DirectX
	/*uX_GLOBAL_CONST XMVECTORF32 g_UShortMax = __m128_ushortmax;*/
namespace_DirectX_end

namespace_uX
namespace_XMM

namespace_XMM_end
namespace_uX_end

	/*
	# define g_XMSinCoefficients0
	# define g_XMSinCoefficients1
	# define g_XMCosCoefficients0
	# define g_XMCosCoefficients1
	# define g_XMTanCoefficients0
	# define g_XMTanCoefficients1
	# define g_XMTanCoefficients2
	# define g_XMArcCoefficients0
	# define g_XMArcCoefficients1
	# define g_XMATanCoefficients0
	# define g_XMATanCoefficients1
	# define g_XMATanEstCoefficients0
	# define g_XMATanEstCoefficients1
	# define g_XMTanEstCoefficients
	# define g_XMArcEstCoefficients
	# define g_XMPiConstants0
	# define g_XMIdentityR0
	# define g_XMIdentityR1
	# define g_XMIdentityR2
	# define g_XMIdentityR3
	# define g_XMNegIdentityR0
	# define g_XMNegIdentityR1
	# define g_XMNegIdentityR2
	# define g_XMNegIdentityR3
	# define g_XMNegativeZero
	# define g_XMNegate3
	# define g_XMMaskXY
	# define g_XMMask3
	# define g_XMMaskX
	# define g_XMMaskY
	# define g_XMMaskZ
	# define g_XMMaskW
	# define g_XMOne
	# define g_XMOne3
	# define g_XMZero
	# define g_XMTwo
	# define g_XMFour
	# define g_XMSix
	# define g_XMNegativeOne
	# define g_XMOneHalf
	# define g_XMNegativeOneHalf
	# define g_XMNegativeTwoPi
	# define g_XMNegativePi
	# define g_XMHalfPi
	# define g_XMPi
	# define g_XMReciprocalPi
	# define g_XMTwoPi
	# define g_XMReciprocalTwoPi
	# define g_XMEpsilon
	# define g_XMInfinity
	# define g_XMQNaN
	# define g_XMQNaNTest
	# define g_XMAbsMask
	# define g_XMFltMin
	# define g_XMFltMax
	# define g_XMNegOneMask
	# define g_XMMaskA8R8G8B8
	# define g_XMFlipA8R8G8B8
	# define g_XMFixAA8R8G8B8
	# define g_XMNormalizeA8R8G8B8
	# define g_XMMaskA2B10G10R10
	# define g_XMFlipA2B10G10R10
	# define g_XMFixAA2B10G10R10
	# define g_XMNormalizeA2B10G10R10
	# define g_XMMaskX16Y16
	# define g_XMFlipX16Y16
	# define g_XMFixX16Y16
	# define g_XMNormalizeX16Y16
	# define g_XMMaskX16Y16Z16W16
	# define g_XMFlipX16Y16Z16W16
	# define g_XMFixX16Y16Z16W16
	# define g_XMNormalizeX16Y16Z16W16
	# define g_XMNoFraction
	# define g_XMMaskByte
	# define g_XMNegateX
	# define g_XMNegateY
	# define g_XMNegateZ
	# define g_XMNegateW
	# define g_XMSelect0101
	# define g_XMSelect1010
	# define g_XMOneHalfMinusEpsilon
	# define g_XMSelect1000
	# define g_XMSelect1100
	# define g_XMSelect1110
	# define g_XMSelect1011
	# define g_XMFixupY16
	# define g_XMFixupY16W16
	# define g_XMFlipY
	# define g_XMFlipZ
	# define g_XMFlipW
	# define g_XMFlipYZ
	# define g_XMFlipZW
	# define g_XMFlipYW
	# define g_XMMaskDec4
	# define g_XMXorDec4
	# define g_XMAddUDec4
	# define g_XMAddDec4
	# define g_XMMulDec4
	# define g_XMMaskByte4
	# define g_XMXorByte4
	# define g_XMAddByte4
	# define g_XMFixUnsigned
	# define g_XMMaxInt
	# define g_XMMaxUInt
	# define g_XMUnsignedFix
	# define g_XMsrgbScale
	# define g_XMsrgbA
	# define g_XMsrgbA1
	# define g_XMExponentBias
	# define g_XMSubnormalExponent
	# define g_XMNumTrailing
	# define g_XMMinNormal
	# define g_XMNegInfinity
	# define g_XMNegQNaN
	# define g_XMBin128
	# define g_XMBinNeg150
	# define g_XM253
	# define g_XMExpEst1
	# define g_XMExpEst2
	# define g_XMExpEst3
	# define g_XMExpEst4
	# define g_XMExpEst5
	# define g_XMExpEst6
	# define g_XMExpEst7
	# define g_XMLogEst0
	# define g_XMLogEst1
	# define g_XMLogEst2
	# define g_XMLogEst3
	# define g_XMLogEst4
	# define g_XMLogEst5
	# define g_XMLogEst6
	# define g_XMLogEst7
	# define g_XMLgE
	# define g_XMInvLgE
	# define g_XMLg10
	# define g_XMInvLg10
	# define g_UByteMax
	# define g_ByteMin
	# define g_ByteMax
	# define g_ShortMin
	# define g_ShortMax
	# define g_UShortMax*/

		//;;double mask;;

extern __m128i uX_ABI _uX_mm_const_dbl_1lshl3_si128(void); //         __m128q; // dbl_1lshl3_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl4_si128(void); //         __m128q; // dbl_1lshl4_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl7_si128(void); //         __m128q; // dbl_1lshl7_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl8_si128(void); //         __m128q; // dbl_1lshl8_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl11_si128(void); //            __m128q; // dbl_1lshl11_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl12_si128(void); //            __m128q; // dbl_1lshl12_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl15_si128(void); //            __m128q; // dbl_1lshl15_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl16_si128(void); //            __m128q; // dbl_1lshl16_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl19_si128(void); //            __m128q; // dbl_1lshl19_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl20_si128(void); //            __m128q; // dbl_1lshl20_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl23_si128(void); //            __m128q; // dbl_1lshl23_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl24_si128(void); //            __m128q; // dbl_1lshl24_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl27_si128(void); //            __m128q; // dbl_1lshl27_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl28_si128(void); //            __m128q; // dbl_1lshl28_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl31_si128(void); //            __m128q; // dbl_1lshl31_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl32_si128(void); //            __m128q; // dbl_1lshl32_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl35_si128(void); //            __m128q; // dbl_1lshl35_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl36_si128(void); //            __m128q; // dbl_1lshl36_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl39_si128(void); //            __m128q; // dbl_1lshl39_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl40_si128(void); //            __m128q; // dbl_1lshl40_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl43_si128(void); //            __m128q; // dbl_1lshl43_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl44_si128(void); //            __m128q; // dbl_1lshl44_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl47_si128(void); //            __m128q; // dbl_1lshl47_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl48_si128(void); //            __m128q; // dbl_1lshl48_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl51_si128(void); //            __m128q; // dbl_1lshl51_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl52_si128(void); //            __m128q; // dbl_1lshl52_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl55_si128(void); //            __m128q; // dbl_1lshl55_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl56_si128(void); //            __m128q; // dbl_1lshl56_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl59_si128(void); //            __m128q; // dbl_1lshl59_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl60_si128(void); //            __m128q; // dbl_1lshl60_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1lshl63_si128(void); //            __m128q; // dbl_1lshl63_msk

extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl3_si128(void); //          __m128q; // dbl_neg1lshl3_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl4_si128(void); //          __m128q; // dbl_neg1lshl4_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl7_si128(void); //          __m128q; // dbl_neg1lshl7_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl8_si128(void); //          __m128q; // dbl_neg1lshl8_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl11_si128(void); //     __m128q; // dbl_neg1lshl11_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl12_si128(void); //     __m128q; // dbl_neg1lshl12_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl15_si128(void); //     __m128q; // dbl_neg1lshl15_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl16_si128(void); //     __m128q; // dbl_neg1lshl16_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl19_si128(void); //     __m128q; // dbl_neg1lshl19_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl20_si128(void); //     __m128q; // dbl_neg1lshl20_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl23_si128(void); //     __m128q; // dbl_neg1lshl23_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl24_si128(void); //     __m128q; // dbl_neg1lshl24_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl27_si128(void); //     __m128q; // dbl_neg1lshl27_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl28_si128(void); //     __m128q; // dbl_neg1lshl28_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl31_si128(void); //     __m128q; // dbl_neg1lshl31_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl32_si128(void); //     __m128q; // dbl_neg1lshl32_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl35_si128(void); //     __m128q; // dbl_neg1lshl35_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl36_si128(void); //     __m128q; // dbl_neg1lshl36_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl39_si128(void); //     __m128q; // dbl_neg1lshl39_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl40_si128(void); //     __m128q; // dbl_neg1lshl40_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl43_si128(void); //     __m128q; // dbl_neg1lshl43_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl44_si128(void); //     __m128q; // dbl_neg1lshl44_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl47_si128(void); //     __m128q; // dbl_neg1lshl47_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl48_si128(void); //     __m128q; // dbl_neg1lshl48_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl51_si128(void); //     __m128q; // dbl_neg1lshl51_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl52_si128(void); //     __m128q; // dbl_neg1lshl52_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl55_si128(void); //     __m128q; // dbl_neg1lshl55_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl56_si128(void); //     __m128q; // dbl_neg1lshl56_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl59_si128(void); //     __m128q; // dbl_neg1lshl59_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl60_si128(void); //     __m128q; // dbl_neg1lshl60_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1lshl63_si128(void); //     __m128q; // dbl_neg1lshl63_msk

extern __m128i uX_ABI _uX_mm_const_dbl_false_si128(void); //              __m128q; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_true_si128(void); //               __m128q; // dbl_true_msk
extern __m128i uX_ABI _uX_mm_const_dbl_error_si128(void); //              __m128q; // dbl_error_msk

extern __m128i uX_ABI _uX_mm_const_dbl_magic_si128(void); //              __m128q; // dbl_magic_msk
extern __m128i uX_ABI _uX_mm_const_dbl_sign_si128(void); //               __m128q; // dbl_sign_msk
extern __m128i uX_ABI _uX_mm_const_dbl_invsign_si128(void); //            __m128q; // dbl_invsign_msk

extern __m128i uX_ABI _uX_mm_const_dbl_inf_si128(void); //                __m128q; // dbl_inf_msk
extern __m128i uX_ABI _uX_mm_const_dbl_fin_si128(void); //                __m128q; // dbl_fin_msk
extern __m128i uX_ABI _uX_mm_const_dbl_invinf_si128(void); //         __m128q; // dbl_invinf_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neginf_si128(void); //         __m128q; // dbl_neginf_msk
extern __m128i uX_ABI _uX_mm_const_dbl_nan_si128(void); //                __m128q; // dbl_nan_msk
extern __m128i uX_ABI _uX_mm_const_dbl_qnan_si128(void); //               __m128q; // dbl_qnan_msk
extern __m128i uX_ABI _uX_mm_const_dbl_negqnan_si128(void); //            __m128q; // dbl_negqnan_msk
extern __m128i uX_ABI _uX_mm_const_dbl_nantest_si128(void); //            __m128q; // dbl_nantest_msk
extern __m128i uX_ABI _uX_mm_const_dbl_abs_si128(void); //                __m128q; // dbl_abs_msk
extern __m128i uX_ABI _uX_mm_const_dbl_min_si128(void); //                __m128q; // dbl_min_msk
extern __m128i uX_ABI _uX_mm_const_dbl_max_si128(void); //                __m128q; // dbl_max_msk
extern __m128i uX_ABI _uX_mm_const_dbl_nofraction_si128(void); //     __m128q; // dbl_nofraction_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mindenorm_si128(void); //          __m128q; // dbl_mindenorm_msk
extern __m128i uX_ABI _uX_mm_const_dbl_denormlimit_si128(void); //        __m128q; // dbl_denormlimit_msk
extern __m128i uX_ABI _uX_mm_const_dbl_minnormal_si128(void); //          __m128q; // dbl_minnormal_msk
extern __m128i uX_ABI _uX_mm_const_dbl_maxnormal_si128(void); //          __m128q; // dbl_maxnormal_msk

extern __m128i uX_ABI _uX_mm_const_dbl_decdig_si128(void); //         __m128q; // dbl_decdig_msk
extern __m128i uX_ABI _uX_mm_const_dbl_dig_si128(void); //                __m128q; // dbl_dig_msk
extern __m128i uX_ABI _uX_mm_const_dbl_negdecdig_si128(void); //          __m128q; // dbl_negdecdig_msk
extern __m128i uX_ABI _uX_mm_const_dbl_negdig_si128(void); //         __m128q; // dbl_negdig_msk
extern __m128i uX_ABI _uX_mm_const_dbl_eps_si128(void); //                __m128q; // dbl_eps_msk
extern __m128i uX_ABI _uX_mm_const_dbl_epsilon_si128(void); //            __m128q; // dbl_epsilon_msk
extern __m128i uX_ABI _uX_mm_const_dbl_normeps_si128(void); //            __m128q; // dbl_normeps_msk
extern __m128i uX_ABI _uX_mm_const_dbl_guard_si128(void); //              __m128q; // dbl_guard_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mantpow2_si128(void); //           __m128q; // dbl_mantpow2_msk
extern __m128i uX_ABI _uX_mm_const_dbl_maxmantpow2_si128(void); //        __m128q; // dbl_maxmantpow2_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mantdig_si128(void); //            __m128q; // dbl_mantdig_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mant_si128(void); //               __m128q; // dbl_mant_msk
extern __m128i uX_ABI _uX_mm_const_dbl_negmantdig_si128(void); //     __m128q; // dbl_negmantdig_msk
extern __m128i uX_ABI _uX_mm_const_dbl_negmant_si128(void); //            __m128q; // dbl_negmant_msk
extern __m128i uX_ABI _uX_mm_const_dbl_maxexp_si128(void); //         __m128q; // dbl_maxexp_msk
extern __m128i uX_ABI _uX_mm_const_dbl_expsign_si128(void); //            __m128q; // dbl_expsign_msk
extern __m128i uX_ABI _uX_mm_const_dbl_exp_si128(void); //                __m128q; // dbl_exp_msk
extern __m128i uX_ABI _uX_mm_const_dbl_negmaxexp_si128(void); //          __m128q; // dbl_negmaxexp_msk
extern __m128i uX_ABI _uX_mm_const_dbl_negexpsign_si128(void); //     __m128q; // dbl_negexpsign_msk
extern __m128i uX_ABI _uX_mm_const_dbl_negexp_si128(void); //         __m128q; // dbl_negexp_msk
extern __m128i uX_ABI _uX_mm_const_dbl_subnormalexp_si128(void); //       __m128q; // dbl_subnormalexp_msk
extern __m128i uX_ABI _uX_mm_const_dbl_minexp_si128(void); //         __m128q; // dbl_minexp_msk
extern __m128i uX_ABI _uX_mm_const_dbl_maxdecexp_si128(void); //          __m128q; // dbl_maxdecexp_msk
extern __m128i uX_ABI _uX_mm_const_dbl_negmaxdecexp_si128(void); //       __m128q; // dbl_negmaxdecexp_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mindecexp_si128(void); //          __m128q; // dbl_mindecexp_msk
extern __m128i uX_ABI _uX_mm_const_dbl_expfield_si128(void); //           __m128q; // dbl_expfield_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mantfield_si128(void); //          __m128q; // dbl_mantfield_msk
extern __m128i uX_ABI _uX_mm_const_dbl_norm_si128(void); //               __m128q; // dbl_norm_msk
extern __m128i uX_ABI _uX_mm_const_dbl_radix_si128(void); //              __m128q; // dbl_radix_msk
extern __m128i uX_ABI _uX_mm_const_dbl_rounds_si128(void); //         __m128q; // dbl_rounds_msk
extern __m128i uX_ABI _uX_mm_const_dbl_subdec_si128(void); //         __m128q; // dbl_subdec_msk
extern __m128i uX_ABI _uX_mm_const_dbl_sqrtmax_si128(void); //            __m128q; // dbl_sqrtmax_msk
extern __m128i uX_ABI _uX_mm_const_dbl_smallnormal_si128(void); //        __m128q; // dbl_smallnormal_msk

extern __m128i uX_ABI _uX_mm_const_dbl_halfminuseps_si128(void); //       __m128q; // dbl_halfminuseps_msk
extern __m128i uX_ABI _uX_mm_const_dbl_trueint_si128(void); //            __m128q; // dbl_trueint_msk

extern __m128i uX_ABI _uX_mm_const_dbl_byte_si128(void); //               __m128q; // dbl_byte_msk
extern __m128i uX_ABI _uX_mm_const_dbl_byte_even_si128(void); //          __m128q; // dbl_byte_even_msk
extern __m128i uX_ABI _uX_mm_const_dbl_byte_odd_si128(void); //           __m128q; // dbl_byte_odd_msk
extern __m128i uX_ABI _uX_mm_const_dbl_4low_si128(void); //               __m128q; // dbl_4low_msk
extern __m128i uX_ABI _uX_mm_const_dbl_4high_si128(void); //              __m128q; // dbl_4high_msk
extern __m128i uX_ABI _uX_mm_const_dbl_flip4_si128(void); //              __m128q; // dbl_flip4_msk
extern __m128i uX_ABI _uX_mm_const_dbl_8low_si128(void); //               __m128q; // dbl_8low_msk
extern __m128i uX_ABI _uX_mm_const_dbl_8high_si128(void); //              __m128q; // dbl_8high_msk
extern __m128i uX_ABI _uX_mm_const_dbl_flip8_si128(void); //              __m128q; // dbl_flip8_msk
extern __m128i uX_ABI _uX_mm_const_dbl_16low_si128(void); //              __m128q; // dbl_16low_msk
extern __m128i uX_ABI _uX_mm_const_dbl_16high_si128(void); //         __m128q; // dbl_16high_msk
extern __m128i uX_ABI _uX_mm_const_dbl_flip16_si128(void); //         __m128q; // dbl_flip16_msk
extern __m128i uX_ABI _uX_mm_const_dbl_24low_si128(void); //              __m128q; // dbl_24low_msk
extern __m128i uX_ABI _uX_mm_const_dbl_24high_si128(void); //         __m128q; // dbl_24high_msk
extern __m128i uX_ABI _uX_mm_const_dbl_flip24_si128(void); //         __m128q; // dbl_flip24_msk
extern __m128i uX_ABI _uX_mm_const_dbl_28low_si128(void); //              __m128q; // dbl_28low_msk
extern __m128i uX_ABI _uX_mm_const_dbl_28high_si128(void); //         __m128q; // dbl_28high_msk
extern __m128i uX_ABI _uX_mm_const_dbl_flip28_si128(void); //         __m128q; // dbl_flip28_msk
extern __m128i uX_ABI _uX_mm_const_dbl_32low_si128(void); //              __m128q; // dbl_32low_msk
extern __m128i uX_ABI _uX_mm_const_dbl_32high_si128(void); //         __m128q; // dbl_32high_msk
extern __m128i uX_ABI _uX_mm_const_dbl_flip32_si128(void); //         __m128q; // dbl_flip32_msk
extern __m128i uX_ABI _uX_mm_const_dbl_40low_si128(void); //              __m128q; // dbl_40low_msk
extern __m128i uX_ABI _uX_mm_const_dbl_40high_si128(void); //         __m128q; // dbl_40high_msk
extern __m128i uX_ABI _uX_mm_const_dbl_flip40_si128(void); //         __m128q; // dbl_flip40_msk
extern __m128i uX_ABI _uX_mm_const_dbl_48low_si128(void); //              __m128q; // dbl_48low_msk
extern __m128i uX_ABI _uX_mm_const_dbl_48high_si128(void); //         __m128q; // dbl_48high_msk
extern __m128i uX_ABI _uX_mm_const_dbl_flip48_si128(void); //         __m128q; // dbl_flip48_msk
extern __m128i uX_ABI _uX_mm_const_dbl_56low_si128(void); //              __m128q; // dbl_56low_msk
extern __m128i uX_ABI _uX_mm_const_dbl_56high_si128(void); //         __m128q; // dbl_56high_msk
extern __m128i uX_ABI _uX_mm_const_dbl_flip56_si128(void); //         __m128q; // dbl_flip56_msk
extern __m128i uX_ABI _uX_mm_const_dbl_60low_si128(void); //              __m128q; // dbl_60low_msk
extern __m128i uX_ABI _uX_mm_const_dbl_60high_si128(void); //         __m128q; // dbl_60high_msk
extern __m128i uX_ABI _uX_mm_const_dbl_flip60_si128(void); //         __m128q; // dbl_flip60_msk
extern __m128i uX_ABI _uX_mm_const_dbl_64low_si128(void); //              __m128q; // dbl_64low_msk
extern __m128i uX_ABI _uX_mm_const_dbl_64high_si128(void); //         __m128q; // dbl_64high_msk
extern __m128i uX_ABI _uX_mm_const_dbl_flip64_si128(void); //         __m128q; // dbl_flip64_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0_si128(void); //                  __m128q; // dbl_0e_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0d5_si128(void); //                __m128q; // dbl_0d5_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1_si128(void); //                  __m128q; // dbl_1_msk
extern __m128i uX_ABI _uX_mm_const_dbl_1d5_si128(void); //                __m128q; // dbl_1d5_msk
extern __m128i uX_ABI _uX_mm_const_dbl_2_si128(void); //                  __m128q; // dbl_2_msk
extern __m128i uX_ABI _uX_mm_const_dbl_2d5_si128(void); //                __m128q; // dbl_2d5_msk
extern __m128i uX_ABI _uX_mm_const_dbl_3_si128(void); //                  __m128q; // dbl_3_msk
extern __m128i uX_ABI _uX_mm_const_dbl_4_si128(void); //                  __m128q; // dbl_4_msk
extern __m128i uX_ABI _uX_mm_const_dbl_5_si128(void); //                  __m128q; // dbl_5_msk
extern __m128i uX_ABI _uX_mm_const_dbl_6_si128(void); //                  __m128q; // dbl_6_msk
extern __m128i uX_ABI _uX_mm_const_dbl_7_si128(void); //                  __m128q; // dbl_7_msk
extern __m128i uX_ABI _uX_mm_const_dbl_8_si128(void); //                  __m128q; // dbl_8_msk
extern __m128i uX_ABI _uX_mm_const_dbl_9_si128(void); //                  __m128q; // dbl_9_msk
extern __m128i uX_ABI _uX_mm_const_dbl_10_si128(void); //             __m128q; // dbl_10_msk
extern __m128i uX_ABI _uX_mm_const_dbl_20_si128(void); //             __m128q; // dbl_20_msk
extern __m128i uX_ABI _uX_mm_const_dbl_23_si128(void); //             __m128q; // dbl_23_msk
extern __m128i uX_ABI _uX_mm_const_dbl_23d5_si128(void); //               __m128q; // dbl_23d5_msk
extern __m128i uX_ABI _uX_mm_const_dbl_24_si128(void); //             __m128q; // dbl_24_msk
extern __m128i uX_ABI _uX_mm_const_dbl_24d5_si128(void); //               __m128q; // dbl_24d5_msk
extern __m128i uX_ABI _uX_mm_const_dbl_25_si128(void); //             __m128q; // dbl_25_msk

extern __m128i uX_ABI _uX_mm_const_dbl_128_si128(void); //                __m128q; // dbl_128_msk

extern __m128i uX_ABI _uX_mm_const_dbl_253_si128(void); //                __m128q; // dbl_253_msk

extern __m128i uX_ABI _uX_mm_const_dbl_neg0_si128(void); //               __m128q; // dbl_neg0_msk
extern __m128i uX_ABI _uX_mm_const_dbl_neg1_si128(void); //               __m128q; // dbl_neg1_msk

extern __m128i uX_ABI _uX_mm_const_dbl_neg150_si128(void); //         __m128q; // dbl_neg150_msk

extern __m128i uX_ABI _uX_mm_const_dbl_bin128_si128(void); //         __m128q; // dbl_bin128_msk
extern __m128i uX_ABI _uX_mm_const_dbl_binneg150_si128(void); //          __m128q; // dbl_binneg150_msk

extern __m128i uX_ABI _uX_mm_const_dbl_maxrand_si128(void); //            __m128q; // dbl_maxrand_msk

extern __m128i uX_ABI _uX_mm_const_dbl_maxi8_si128(void); //              __m128q; // dbl_maxi8_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mini8_si128(void); //              __m128q; // dbl_mini8_msk
extern __m128i uX_ABI _uX_mm_const_dbl_maxu8_si128(void); //              __m128q; // dbl_maxu8_msk

extern __m128i uX_ABI _uX_mm_const_dbl_maxi16_si128(void); //         __m128q; // dbl_maxi16_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mini16_si128(void); //         __m128q; // dbl_mini16_msk
extern __m128i uX_ABI _uX_mm_const_dbl_maxu16_si128(void); //         __m128q; // dbl_maxu16_msk

extern __m128i uX_ABI _uX_mm_const_dbl_maxi32_si128(void); //         __m128q; // dbl_maxi32_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mini32_si128(void); //         __m128q; // dbl_mini32_msk
extern __m128i uX_ABI _uX_mm_const_dbl_maxu32_si128(void); //         __m128q; // dbl_maxu32_msk

extern __m128i uX_ABI _uX_mm_const_dbl_maxi64_si128(void); //         __m128q; // dbl_maxi64_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mini64_si128(void); //         __m128q; // dbl_mini64_msk
extern __m128i uX_ABI _uX_mm_const_dbl_maxu64_si128(void); //         __m128q; // dbl_maxu64_msk

extern __m128i uX_ABI _uX_mm_const_dbl_maxi8xu8_si128(void); //           __m128q; // dbl_maxi8xu8_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mini8xu8_si128(void); //           __m128q; // dbl_mini8xu8_msk
extern __m128i uX_ABI _uX_mm_const_dbl_maxi8xu16_si128(void); //          __m128q; // dbl_maxi8xu16_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mini8xu16_si128(void); //          __m128q; // dbl_mini8xu16_msk

extern __m128i uX_ABI _uX_mm_const_dbl_maxi16xu16_si128(void); //     __m128q; // dbl_maxi16xu16_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mini16xu16_si128(void); //     __m128q; // dbl_mini16xu16_msk
extern __m128i uX_ABI _uX_mm_const_dbl_maxi16xu32_si128(void); //     __m128q; // dbl_maxi16xu32_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mini16xu32_si128(void); //     __m128q; // dbl_mini16xu32_msk

extern __m128i uX_ABI _uX_mm_const_dbl_maxi32xu32_si128(void); //     __m128q; // dbl_maxi32xu32_msk
extern __m128i uX_ABI _uX_mm_const_dbl_mini32xu32_si128(void); //     __m128q; // dbl_mini32xu32_msk

extern __m128i uX_ABI _uX_mm_const_dbl_fixunsigned_si128(void); //        __m128q; // dbl_fixunsigned_msk
extern __m128i uX_ABI _uX_mm_const_dbl_fixunsigned32_si128(void); //      __m128q; // dbl_fixunsigned32_msk
extern __m128i uX_ABI _uX_mm_const_dbl_fixmaxi32_si128(void); //          __m128q; // dbl_fixmaxi32_msk
extern __m128i uX_ABI _uX_mm_const_dbl_fixmaxu32_si128(void); //          __m128q; // dbl_fixmaxu32_msk

extern __m128i uX_ABI _uX_mm_const_dbl_fixunsigned64_si128(void); //      __m128q; // dbl_fixunsigned64_msk
extern __m128i uX_ABI _uX_mm_const_dbl_fixmaxi64_si128(void); //          __m128q; // dbl_fixmaxi64_msk
extern __m128i uX_ABI _uX_mm_const_dbl_fixmaxu64_si128(void); //          __m128q; // dbl_fixmaxu64_msk

	//;;double mask low;;

extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl3_si128(void); //             __m128q; // dbl_1lshl3_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl4_si128(void); //             __m128q; // dbl_1lshl4_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl7_si128(void); //             __m128q; // dbl_1lshl7_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl8_si128(void); //             __m128q; // dbl_1lshl8_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl11_si128(void); //            __m128q; // dbl_1lshl11_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl12_si128(void); //            __m128q; // dbl_1lshl12_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl15_si128(void); //            __m128q; // dbl_1lshl15_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl16_si128(void); //            __m128q; // dbl_1lshl16_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl19_si128(void); //            __m128q; // dbl_1lshl19_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl20_si128(void); //            __m128q; // dbl_1lshl20_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl23_si128(void); //            __m128q; // dbl_1lshl23_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl24_si128(void); //            __m128q; // dbl_1lshl24_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl27_si128(void); //            __m128q; // dbl_1lshl27_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl28_si128(void); //            __m128q; // dbl_1lshl28_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl31_si128(void); //            __m128q; // dbl_1lshl31_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl32_si128(void); //            __m128q; // dbl_1lshl32_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl35_si128(void); //            __m128q; // dbl_1lshl35_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl36_si128(void); //            __m128q; // dbl_1lshl36_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl39_si128(void); //            __m128q; // dbl_1lshl39_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl40_si128(void); //            __m128q; // dbl_1lshl40_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl43_si128(void); //            __m128q; // dbl_1lshl43_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl44_si128(void); //            __m128q; // dbl_1lshl44_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl47_si128(void); //            __m128q; // dbl_1lshl47_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl48_si128(void); //            __m128q; // dbl_1lshl48_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl51_si128(void); //            __m128q; // dbl_1lshl51_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl52_si128(void); //            __m128q; // dbl_1lshl52_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl55_si128(void); //            __m128q; // dbl_1lshl55_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl56_si128(void); //            __m128q; // dbl_1lshl56_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl59_si128(void); //            __m128q; // dbl_1lshl59_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl60_si128(void); //            __m128q; // dbl_1lshl60_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1lshl63_si128(void); //            __m128q; // dbl_1lshl63_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl3_si128(void); //          __m128q; // dbl_neg1lshl3_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl4_si128(void); //          __m128q; // dbl_neg1lshl4_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl7_si128(void); //          __m128q; // dbl_neg1lshl7_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl8_si128(void); //          __m128q; // dbl_neg1lshl8_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl11_si128(void); //         __m128q; // dbl_neg1lshl11_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl12_si128(void); //         __m128q; // dbl_neg1lshl12_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl15_si128(void); //         __m128q; // dbl_neg1lshl15_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl16_si128(void); //         __m128q; // dbl_neg1lshl16_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl19_si128(void); //         __m128q; // dbl_neg1lshl19_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl20_si128(void); //         __m128q; // dbl_neg1lshl20_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl23_si128(void); //         __m128q; // dbl_neg1lshl23_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl24_si128(void); //         __m128q; // dbl_neg1lshl24_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl27_si128(void); //         __m128q; // dbl_neg1lshl27_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl28_si128(void); //         __m128q; // dbl_neg1lshl28_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl31_si128(void); //         __m128q; // dbl_neg1lshl31_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl32_si128(void); //         __m128q; // dbl_neg1lshl32_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl35_si128(void); //         __m128q; // dbl_neg1lshl35_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl36_si128(void); //         __m128q; // dbl_neg1lshl36_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl39_si128(void); //         __m128q; // dbl_neg1lshl39_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl40_si128(void); //         __m128q; // dbl_neg1lshl40_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl43_si128(void); //         __m128q; // dbl_neg1lshl43_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl44_si128(void); //         __m128q; // dbl_neg1lshl44_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl47_si128(void); //         __m128q; // dbl_neg1lshl47_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl48_si128(void); //         __m128q; // dbl_neg1lshl48_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl51_si128(void); //         __m128q; // dbl_neg1lshl51_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl52_si128(void); //         __m128q; // dbl_neg1lshl52_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl55_si128(void); //         __m128q; // dbl_neg1lshl55_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl56_si128(void); //         __m128q; // dbl_neg1lshl56_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl59_si128(void); //         __m128q; // dbl_neg1lshl59_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl60_si128(void); //         __m128q; // dbl_neg1lshl60_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1lshl63_si128(void); //         __m128q; // dbl_neg1lshl63_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_false_si128(void); //              __m128q; // dbl_false_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_true_si128(void); //               __m128q; // dbl_true_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_error_si128(void); //              __m128q; // dbl_error_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_magic_si128(void); //              __m128q; // dbl_magic_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_sign_si128(void); //               __m128q; // dbl_sign_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_invsign_si128(void); //            __m128q; // dbl_invsign_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_inf_si128(void); //                __m128q; // dbl_inf_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_fin_si128(void); //                __m128q; // dbl_fin_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_invinf_si128(void); //             __m128q; // dbl_invinf_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neginf_si128(void); //             __m128q; // dbl_neginf_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_nan_si128(void); //                __m128q; // dbl_nan_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_qnan_si128(void); //               __m128q; // dbl_qnan_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_negqnan_si128(void); //            __m128q; // dbl_negqnan_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_nantest_si128(void); //            __m128q; // dbl_nantest_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_abs_si128(void); //                __m128q; // dbl_abs_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_min_si128(void); //                __m128q; // dbl_min_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_max_si128(void); //                __m128q; // dbl_max_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_nofraction_si128(void); //         __m128q; // dbl_nofraction_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mindenorm_si128(void); //          __m128q; // dbl_mindenorm_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_denormlimit_si128(void); //        __m128q; // dbl_denormlimit_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_minnormal_si128(void); //          __m128q; // dbl_minnormal_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxnormal_si128(void); //          __m128q; // dbl_maxnormal_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_decdig_si128(void); //             __m128q; // dbl_decdig_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_dig_si128(void); //                __m128q; // dbl_dig_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_negdecdig_si128(void); //          __m128q; // dbl_negdecdig_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_negdig_si128(void); //             __m128q; // dbl_negdig_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_eps_si128(void); //                __m128q; // dbl_eps_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_epsilon_si128(void); //            __m128q; // dbl_epsilon_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_normeps_si128(void); //            __m128q; // dbl_normeps_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_guard_si128(void); //              __m128q; // dbl_guard_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mantpow2_si128(void); //           __m128q; // dbl_mantpow2_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxmantpow2_si128(void); //        __m128q; // dbl_maxmantpow2_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mantdig_si128(void); //            __m128q; // dbl_mantdig_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mant_si128(void); //               __m128q; // dbl_mant_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_negmantdig_si128(void); //         __m128q; // dbl_negmantdig_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_negmant_si128(void); //            __m128q; // dbl_negmant_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxexp_si128(void); //             __m128q; // dbl_maxexp_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_expsign_si128(void); //            __m128q; // dbl_expsign_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_exp_si128(void); //                __m128q; // dbl_exp_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_negmaxexp_si128(void); //          __m128q; // dbl_negmaxexp_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_negexpsign_si128(void); //         __m128q; // dbl_negexpsign_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_negexp_si128(void); //             __m128q; // dbl_negexp_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_subnormalexp_si128(void); //       __m128q; // dbl_subnormalexp_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_minexp_si128(void); //             __m128q; // dbl_minexp_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxdecexp_si128(void); //          __m128q; // dbl_maxdecexp_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_negmaxdecexp_si128(void); //       __m128q; // dbl_negmaxdecexp_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mindecexp_si128(void); //          __m128q; // dbl_mindecexp_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_expfield_si128(void); //           __m128q; // dbl_expfield_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mantfield_si128(void); //          __m128q; // dbl_mantfield_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_norm_si128(void); //               __m128q; // dbl_norm_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_radix_si128(void); //              __m128q; // dbl_radix_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_rounds_si128(void); //             __m128q; // dbl_rounds_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_subdec_si128(void); //             __m128q; // dbl_subdec_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_sqrtmax_si128(void); //            __m128q; // dbl_sqrtmax_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_smallnormal_si128(void); //        __m128q; // dbl_smallnormal_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_halfminuseps_si128(void); //       __m128q; // dbl_halfminuseps_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_trueint_si128(void); //            __m128q; // dbl_trueint_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_byte_si128(void); //               __m128q; // dbl_byte_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_byte_even_si128(void); //          __m128q; // dbl_byte_even_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_byte_odd_si128(void); //           __m128q; // dbl_byte_odd_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_4low_si128(void); //               __m128q; // dbl_4low_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_4high_si128(void); //              __m128q; // dbl_4high_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_flip4_si128(void); //              __m128q; // dbl_flip4_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_8low_si128(void); //               __m128q; // dbl_8low_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_8high_si128(void); //              __m128q; // dbl_8high_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_flip8_si128(void); //              __m128q; // dbl_flip8_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_16low_si128(void); //              __m128q; // dbl_16low_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_16high_si128(void); //             __m128q; // dbl_16high_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_flip16_si128(void); //             __m128q; // dbl_flip16_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_24low_si128(void); //              __m128q; // dbl_24low_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_24high_si128(void); //             __m128q; // dbl_24high_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_flip24_si128(void); //             __m128q; // dbl_flip24_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_28low_si128(void); //              __m128q; // dbl_28low_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_28high_si128(void); //             __m128q; // dbl_28high_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_flip28_si128(void); //             __m128q; // dbl_flip28_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_32low_si128(void); //              __m128q; // dbl_32low_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_32high_si128(void); //             __m128q; // dbl_32high_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_flip32_si128(void); //             __m128q; // dbl_flip32_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_40low_si128(void); //              __m128q; // dbl_40low_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_40high_si128(void); //             __m128q; // dbl_40high_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_flip40_si128(void); //             __m128q; // dbl_flip40_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_48low_si128(void); //              __m128q; // dbl_48low_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_48high_si128(void); //             __m128q; // dbl_48high_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_flip48_si128(void); //             __m128q; // dbl_flip48_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_56low_si128(void); //              __m128q; // dbl_56low_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_56high_si128(void); //             __m128q; // dbl_56high_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_flip56_si128(void); //             __m128q; // dbl_flip56_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_60low_si128(void); //              __m128q; // dbl_60low_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_60high_si128(void); //             __m128q; // dbl_60high_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_flip60_si128(void); //             __m128q; // dbl_flip60_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_64low_si128(void); //              __m128q; // dbl_64low_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_64high_si128(void); //             __m128q; // dbl_64high_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_flip64_si128(void); //             __m128q; // dbl_flip64_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_0_si128(void); //                  __m128q; // dbl_0e_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_0d5_si128(void); //                __m128q; // dbl_0d5_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1_si128(void); //                  __m128q; // dbl_1_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_1d5_si128(void); //                __m128q; // dbl_1d5_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_2_si128(void); //                  __m128q; // dbl_2_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_2d5_si128(void); //                __m128q; // dbl_2d5_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_3_si128(void); //                  __m128q; // dbl_3_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_4_si128(void); //                  __m128q; // dbl_4_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_5_si128(void); //                  __m128q; // dbl_5_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_6_si128(void); //                  __m128q; // dbl_6_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_7_si128(void); //                  __m128q; // dbl_7_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_8_si128(void); //                  __m128q; // dbl_8_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_9_si128(void); //                  __m128q; // dbl_9_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_10_si128(void); //                 __m128q; // dbl_10_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_20_si128(void); //                 __m128q; // dbl_20_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_23_si128(void); //                 __m128q; // dbl_23_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_23d5_si128(void); //               __m128q; // dbl_23d5_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_24_si128(void); //                 __m128q; // dbl_24_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_24d5_si128(void); //               __m128q; // dbl_24d5_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_25_si128(void); //                 __m128q; // dbl_25_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_128_si128(void); //                __m128q; // dbl_128_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_253_si128(void); //                __m128q; // dbl_253_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg0_si128(void); //               __m128q; // dbl_neg0_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg1_si128(void); //               __m128q; // dbl_neg1_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_neg150_si128(void); //             __m128q; // dbl_neg150_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_bin128_si128(void); //             __m128q; // dbl_bin128_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_binneg150_si128(void); //          __m128q; // dbl_binneg150_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxrand_si128(void); //            __m128q; // dbl_maxrand_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxi8_si128(void); //              __m128q; // dbl_maxi8_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mini8_si128(void); //              __m128q; // dbl_mini8_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxu8_si128(void); //              __m128q; // dbl_maxu8_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxi16_si128(void); //             __m128q; // dbl_maxi16_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mini16_si128(void); //             __m128q; // dbl_mini16_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxu16_si128(void); //             __m128q; // dbl_maxu16_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxi32_si128(void); //             __m128q; // dbl_maxi32_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mini32_si128(void); //             __m128q; // dbl_mini32_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxu32_si128(void); //             __m128q; // dbl_maxu32_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxi64_si128(void); //             __m128q; // dbl_maxi64_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mini64_si128(void); //             __m128q; // dbl_mini64_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxu64_si128(void); //             __m128q; // dbl_maxu64_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxi8xu8_si128(void); //           __m128q; // dbl_maxi8xu8_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mini8xu8_si128(void); //           __m128q; // dbl_mini8xu8_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxi8xu16_si128(void); //          __m128q; // dbl_maxi8xu16_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mini8xu16_si128(void); //          __m128q; // dbl_mini8xu16_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxi16xu16_si128(void); //         __m128q; // dbl_maxi16xu16_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mini16xu16_si128(void); //         __m128q; // dbl_mini16xu16_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxi16xu32_si128(void); //         __m128q; // dbl_maxi16xu32_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mini16xu32_si128(void); //         __m128q; // dbl_mini16xu32_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_maxi32xu32_si128(void); //         __m128q; // dbl_maxi32xu32_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_mini32xu32_si128(void); //         __m128q; // dbl_mini32xu32_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_fixunsigned_si128(void); //        __m128q; // dbl_fixunsigned_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_fixunsigned32_si128(void); //      __m128q; // dbl_fixunsigned32_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_fixmaxi32_si128(void); //          __m128q; // dbl_fixmaxi32_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_fixmaxu32_si128(void); //          __m128q; // dbl_fixmaxu32_msk; // dbl_false_msk

extern __m128i uX_ABI _uX_mm_const_dbl_0e_fixunsigned64_si128(void); //      __m128q; // dbl_fixunsigned64_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_fixmaxi64_si128(void); //          __m128q; // dbl_fixmaxi64_msk; // dbl_false_msk
extern __m128i uX_ABI _uX_mm_const_dbl_0e_fixmaxu64_si128(void); //          __m128q; // dbl_fixmaxu64_msk; // dbl_false_msk

	//;; double;;

	//;;             sincos template, double precision
extern __m128d uX_ABI _uX_mm_const_P0sin_pd(void); //          __m128d, (-1.66666666666666307295e-01)
extern __m128d uX_ABI _uX_mm_const_P1sin_pd(void); //          __m128d, (8.33333333332211858878e-03)
extern __m128d uX_ABI _uX_mm_const_P2sin_pd(void); //          __m128d, (-1.98412698295895385996e-04)
extern __m128d uX_ABI _uX_mm_const_P3sin_pd(void); //          __m128d, (2.75573136213857245213e-06)
extern __m128d uX_ABI _uX_mm_const_P4sin_pd(void); //          __m128d, (-2.50507477628578072866e-08)
extern __m128d uX_ABI _uX_mm_const_P5sin_pd(void); //          __m128d, (1.58962301576546568060e-010)

extern __m128d uX_ABI _uX_mm_const_P0cos_pd(void); //          __m128d, (4.16666666666665929218e-02)
extern __m128d uX_ABI _uX_mm_const_P1cos_pd(void); //          __m128d, (-1.38888888888730564116e-03)
extern __m128d uX_ABI _uX_mm_const_P2cos_pd(void); //          __m128d, (2.48015872888517045348e-05)
extern __m128d uX_ABI _uX_mm_const_P3cos_pd(void); //          __m128d, (-2.75573141792967388112e-07)
extern __m128d uX_ABI _uX_mm_const_P4cos_pd(void); //          __m128d, (2.08757008419747316778e-09)
extern __m128d uX_ABI _uX_mm_const_P5cos_pd(void); //          __m128d, (-1.13585365213876817300e-011)

extern __m128d uX_ABI _uX_mm_const_DP1_pd(void); //          __m128d, 1.570796310901641845703125
extern __m128d uX_ABI _uX_mm_const_DP2_pd(void); //          __m128d, 0.00000001589325471229585673428
extern __m128d uX_ABI _uX_mm_const_DP3_pd(void); //          __m128d, (6.12323399573676588614e-017)
	//;;             sincos template, double precision

extern __m128d uX_ABI _uX_mm_const_1lshl3_pd(void); //             __m128d; // dbl_1lshl3
extern __m128d uX_ABI _uX_mm_const_1lshl4_pd(void); //             __m128d; // dbl_1lshl4
extern __m128d uX_ABI _uX_mm_const_1lshl7_pd(void); //             __m128d; // dbl_1lshl7
extern __m128d uX_ABI _uX_mm_const_1lshl8_pd(void); //             __m128d; // dbl_1lshl8
extern __m128d uX_ABI _uX_mm_const_1lshl11_pd(void); //                __m128d; // dbl_1lshl11
extern __m128d uX_ABI _uX_mm_const_1lshl12_pd(void); //                __m128d; // dbl_1lshl12
extern __m128d uX_ABI _uX_mm_const_1lshl15_pd(void); //                __m128d; // dbl_1lshl15
extern __m128d uX_ABI _uX_mm_const_1lshl16_pd(void); //                __m128d; // dbl_1lshl16
extern __m128d uX_ABI _uX_mm_const_1lshl19_pd(void); //                __m128d; // dbl_1lshl19
extern __m128d uX_ABI _uX_mm_const_1lshl20_pd(void); //                __m128d; // dbl_1lshl20
extern __m128d uX_ABI _uX_mm_const_1lshl23_pd(void); //                __m128d; // dbl_1lshl23
extern __m128d uX_ABI _uX_mm_const_1lshl24_pd(void); //                __m128d; // dbl_1lshl24
extern __m128d uX_ABI _uX_mm_const_1lshl27_pd(void); //                __m128d; // dbl_1lshl27
extern __m128d uX_ABI _uX_mm_const_1lshl28_pd(void); //                __m128d; // dbl_1lshl28
extern __m128d uX_ABI _uX_mm_const_1lshl31_pd(void); //                __m128d; // dbl_1lshl31
extern __m128d uX_ABI _uX_mm_const_1lshl32_pd(void); //                __m128d; // dbl_1lshl32
extern __m128d uX_ABI _uX_mm_const_1lshl35_pd(void); //                __m128d; // dbl_1lshl35
extern __m128d uX_ABI _uX_mm_const_1lshl36_pd(void); //                __m128d; // dbl_1lshl36
extern __m128d uX_ABI _uX_mm_const_1lshl39_pd(void); //                __m128d; // dbl_1lshl39
extern __m128d uX_ABI _uX_mm_const_1lshl40_pd(void); //                __m128d; // dbl_1lshl40
extern __m128d uX_ABI _uX_mm_const_1lshl43_pd(void); //                __m128d; // dbl_1lshl43
extern __m128d uX_ABI _uX_mm_const_1lshl44_pd(void); //                __m128d; // dbl_1lshl44
extern __m128d uX_ABI _uX_mm_const_1lshl47_pd(void); //                __m128d; // dbl_1lshl47
extern __m128d uX_ABI _uX_mm_const_1lshl48_pd(void); //                __m128d; // dbl_1lshl48
extern __m128d uX_ABI _uX_mm_const_1lshl51_pd(void); //                __m128d; // dbl_1lshl51
extern __m128d uX_ABI _uX_mm_const_1lshl52_pd(void); //                __m128d; // dbl_1lshl52
extern __m128d uX_ABI _uX_mm_const_1lshl55_pd(void); //                __m128d; // dbl_1lshl55
extern __m128d uX_ABI _uX_mm_const_1lshl56_pd(void); //                __m128d; // dbl_1lshl56
extern __m128d uX_ABI _uX_mm_const_1lshl59_pd(void); //                __m128d; // dbl_1lshl59
extern __m128d uX_ABI _uX_mm_const_1lshl60_pd(void); //                __m128d; // dbl_1lshl60
extern __m128d uX_ABI _uX_mm_const_1lshl63_pd(void); //                __m128d; // dbl_1lshl63

extern __m128d uX_ABI _uX_mm_const_neg1lshl3_pd(void); //              __m128d; // dbl_neg1lshl3
extern __m128d uX_ABI _uX_mm_const_neg1lshl4_pd(void); //              __m128d; // dbl_neg1lshl4
extern __m128d uX_ABI _uX_mm_const_neg1lshl7_pd(void); //              __m128d; // dbl_neg1lshl7
extern __m128d uX_ABI _uX_mm_const_neg1lshl8_pd(void); //              __m128d; // dbl_neg1lshl8
extern __m128d uX_ABI _uX_mm_const_neg1lshl11_pd(void); //         __m128d; // dbl_neg1lshl11
extern __m128d uX_ABI _uX_mm_const_neg1lshl12_pd(void); //         __m128d; // dbl_neg1lshl12
extern __m128d uX_ABI _uX_mm_const_neg1lshl15_pd(void); //         __m128d; // dbl_neg1lshl15
extern __m128d uX_ABI _uX_mm_const_neg1lshl16_pd(void); //         __m128d; // dbl_neg1lshl16
extern __m128d uX_ABI _uX_mm_const_neg1lshl19_pd(void); //         __m128d; // dbl_neg1lshl19
extern __m128d uX_ABI _uX_mm_const_neg1lshl20_pd(void); //         __m128d; // dbl_neg1lshl20
extern __m128d uX_ABI _uX_mm_const_neg1lshl23_pd(void); //         __m128d; // dbl_neg1lshl23
extern __m128d uX_ABI _uX_mm_const_neg1lshl24_pd(void); //         __m128d; // dbl_neg1lshl24
extern __m128d uX_ABI _uX_mm_const_neg1lshl27_pd(void); //         __m128d; // dbl_neg1lshl27
extern __m128d uX_ABI _uX_mm_const_neg1lshl28_pd(void); //         __m128d; // dbl_neg1lshl28
extern __m128d uX_ABI _uX_mm_const_neg1lshl31_pd(void); //         __m128d; // dbl_neg1lshl31
extern __m128d uX_ABI _uX_mm_const_neg1lshl32_pd(void); //         __m128d; // dbl_neg1lshl32
extern __m128d uX_ABI _uX_mm_const_neg1lshl35_pd(void); //         __m128d; // dbl_neg1lshl35
extern __m128d uX_ABI _uX_mm_const_neg1lshl36_pd(void); //         __m128d; // dbl_neg1lshl36
extern __m128d uX_ABI _uX_mm_const_neg1lshl39_pd(void); //         __m128d; // dbl_neg1lshl39
extern __m128d uX_ABI _uX_mm_const_neg1lshl40_pd(void); //         __m128d; // dbl_neg1lshl40
extern __m128d uX_ABI _uX_mm_const_neg1lshl43_pd(void); //         __m128d; // dbl_neg1lshl43
extern __m128d uX_ABI _uX_mm_const_neg1lshl44_pd(void); //         __m128d; // dbl_neg1lshl44
extern __m128d uX_ABI _uX_mm_const_neg1lshl47_pd(void); //         __m128d; // dbl_neg1lshl47
extern __m128d uX_ABI _uX_mm_const_neg1lshl48_pd(void); //         __m128d; // dbl_neg1lshl48
extern __m128d uX_ABI _uX_mm_const_neg1lshl51_pd(void); //         __m128d; // dbl_neg1lshl51
extern __m128d uX_ABI _uX_mm_const_neg1lshl52_pd(void); //         __m128d; // dbl_neg1lshl52
extern __m128d uX_ABI _uX_mm_const_neg1lshl55_pd(void); //         __m128d; // dbl_neg1lshl55
extern __m128d uX_ABI _uX_mm_const_neg1lshl56_pd(void); //         __m128d; // dbl_neg1lshl56
extern __m128d uX_ABI _uX_mm_const_neg1lshl59_pd(void); //         __m128d; // dbl_neg1lshl59
extern __m128d uX_ABI _uX_mm_const_neg1lshl60_pd(void); //         __m128d; // dbl_neg1lshl60
extern __m128d uX_ABI _uX_mm_const_neg1lshl63_pd(void); //         __m128d; // dbl_neg1lshl63

extern __m128d uX_ABI _uX_mm_const_false_pd(void); //                  __m128q; // dbl_false
extern __m128d uX_ABI _uX_mm_const_true_pd(void); //                   __m128q; // dbl_true
extern __m128d uX_ABI _uX_mm_const_error_pd(void); //                  __m128q; // dbl_error

extern __m128d uX_ABI _uX_mm_const_magic_pd(void); //                  __m128q; // dbl_magic
extern __m128d uX_ABI _uX_mm_const_sign_pd(void); //                   __m128q; // dbl_sign
extern __m128d uX_ABI _uX_mm_const_invsign_pd(void); //                __m128q; // dbl_invsign

extern __m128d uX_ABI _uX_mm_const_inf_pd(void); //                    __m128q; // dbl_inf
extern __m128d uX_ABI _uX_mm_const_fin_pd(void); //                    __m128q; // dbl_fin
extern __m128d uX_ABI _uX_mm_const_invinf_pd(void); //             __m128q; // dbl_invinf
extern __m128d uX_ABI _uX_mm_const_neginf_pd(void); //             __m128q; // dbl_neginf
extern __m128d uX_ABI _uX_mm_const_nan_pd(void); //                    __m128q; // dbl_nan
extern __m128d uX_ABI _uX_mm_const_qnan_pd(void); //                   __m128q; // dbl_qnan
extern __m128d uX_ABI _uX_mm_const_negqnan_pd(void); //                __m128q; // dbl_negqnan
extern __m128d uX_ABI _uX_mm_const_nantest_pd(void); //                __m128q; // dbl_nantest
extern __m128d uX_ABI _uX_mm_const_abs_pd(void); //                    __m128q; // dbl_abs
extern __m128d uX_ABI _uX_mm_const_min_pd(void); //                    __m128d; // dbl_min
extern __m128d uX_ABI _uX_mm_const_max_pd(void); //                    __m128d; // dbl_max
extern __m128d uX_ABI _uX_mm_const_nofraction_pd(void); //         __m128d; // dbl_nofraction
extern __m128d uX_ABI _uX_mm_const_mindenorm_pd(void); //              __m128d; // dbl_mindenorm
extern __m128d uX_ABI _uX_mm_const_denormlimit_pd(void); //            __m128d; // dbl_denormlimit
extern __m128d uX_ABI _uX_mm_const_minnormal_pd(void); //              __m128d; // dbl_minnormal
extern __m128d uX_ABI _uX_mm_const_maxnormal_pd(void); //              __m128d; // dbl_maxnormal

extern __m128d uX_ABI _uX_mm_const_decdig_pd(void); //             __m128d; // dbl_decdig
extern __m128d uX_ABI _uX_mm_const_dig_pd(void); //                    __m128d; // dbl_dig
extern __m128d uX_ABI _uX_mm_const_negdecdig_pd(void); //              __m128d; // dbl_negdecdig
extern __m128d uX_ABI _uX_mm_const_negdig_pd(void); //             __m128d; // dbl_negdig
extern __m128d uX_ABI _uX_mm_const_eps_pd(void); //                    __m128d; // dbl_eps
extern __m128d uX_ABI _uX_mm_const_epsilon_pd(void); //                __m128d; // dbl_epsilon
extern __m128d uX_ABI _uX_mm_const_normeps_pd(void); //                __m128d; // dbl_normeps
extern __m128d uX_ABI _uX_mm_const_guard_pd(void); //                  __m128d; // dbl_guard
extern __m128d uX_ABI _uX_mm_const_mantpow2_pd(void); //               __m128d; // dbl_mantpow2
extern __m128d uX_ABI _uX_mm_const_maxmantpow2_pd(void); //            __m128d; // dbl_maxmantpow2
extern __m128d uX_ABI _uX_mm_const_mantdig_pd(void); //                __m128d; // dbl_mantdig
extern __m128d uX_ABI _uX_mm_const_mant_pd(void); //                   __m128d; // dbl_mant
extern __m128d uX_ABI _uX_mm_const_negmantdig_pd(void); //         __m128d; // dbl_negmantdig
extern __m128d uX_ABI _uX_mm_const_negmant_pd(void); //                __m128d; // dbl_negmant
extern __m128d uX_ABI _uX_mm_const_maxexp_pd(void); //             __m128d; // dbl_maxexp
extern __m128d uX_ABI _uX_mm_const_expsign_pd(void); //                __m128d; // dbl_expsign
extern __m128d uX_ABI _uX_mm_const_exp_pd(void); //                    __m128d; // dbl_exp
extern __m128d uX_ABI _uX_mm_const_negmaxexp_pd(void); //              __m128d; // dbl_negmaxexp
extern __m128d uX_ABI _uX_mm_const_negexpsign_pd(void); //         __m128d; // dbl_negexpsign
extern __m128d uX_ABI _uX_mm_const_negexp_pd(void); //             __m128d; // dbl_negexp
extern __m128d uX_ABI _uX_mm_const_subnormalexp_pd(void); //           __m128d; // dbl_subnormalexp
extern __m128d uX_ABI _uX_mm_const_minexp_pd(void); //             __m128d; // dbl_minexp
extern __m128d uX_ABI _uX_mm_const_maxdecexp_pd(void); //              __m128d; // dbl_maxdecexp
extern __m128d uX_ABI _uX_mm_const_negmaxdecexp_pd(void); //           __m128d; // dbl_negmaxdecexp
extern __m128d uX_ABI _uX_mm_const_mindecexp_pd(void); //              __m128d; // dbl_mindecexp
extern __m128d uX_ABI _uX_mm_const_expfield_pd(void); //               __m128d; // dbl_expfield
extern __m128d uX_ABI _uX_mm_const_mantfield_pd(void); //              __m128d; // dbl_mantfield
extern __m128d uX_ABI _uX_mm_const_norm_pd(void); //                   __m128d; // dbl_norm
extern __m128d uX_ABI _uX_mm_const_radix_pd(void); //                  __m128d; // dbl_radix
extern __m128d uX_ABI _uX_mm_const_rounds_pd(void); //             __m128d; // dbl_rounds
extern __m128d uX_ABI _uX_mm_const_subdec_pd(void); //             __m128d; // dbl_subdec
extern __m128d uX_ABI _uX_mm_const_sqrtmax_pd(void); //                __m128d; // dbl_sqrtmax
extern __m128d uX_ABI _uX_mm_const_smallnormal_pd(void); //            __m128d; // dbl_smallnormal

extern __m128d uX_ABI _uX_mm_const_halfminuseps_pd(void); //           __m128d; // dbl_halfminuseps
extern __m128d uX_ABI _uX_mm_const_trueint_pd(void); //                __m128d; // dbl_trueint

extern __m128d uX_ABI _uX_mm_const_byte_pd(void); //                   __m128d; // dbl_byte
extern __m128d uX_ABI _uX_mm_const_byte_even_pd(void); //              __m128d; // dbl_byte_even
extern __m128d uX_ABI _uX_mm_const_byte_odd_pd(void); //               __m128d; // dbl_byte_odd
extern __m128d uX_ABI _uX_mm_const_4low_pd(void); //                   __m128d; // dbl_4low
extern __m128d uX_ABI _uX_mm_const_4high_pd(void); //                  __m128d; // dbl_4high
extern __m128d uX_ABI _uX_mm_const_flip4_pd(void); //                  __m128d; // dbl_flip4
extern __m128d uX_ABI _uX_mm_const_8low_pd(void); //                   __m128d; // dbl_8low
extern __m128d uX_ABI _uX_mm_const_8high_pd(void); //                  __m128d; // dbl_8high
extern __m128d uX_ABI _uX_mm_const_flip8_pd(void); //                  __m128d; // dbl_flip8
extern __m128d uX_ABI _uX_mm_const_16low_pd(void); //                  __m128d; // dbl_16low
extern __m128d uX_ABI _uX_mm_const_16high_pd(void); //             __m128d; // dbl_16high
extern __m128d uX_ABI _uX_mm_const_flip16_pd(void); //             __m128d; // dbl_flip16
extern __m128d uX_ABI _uX_mm_const_24low_pd(void); //                  __m128d; // dbl_24low
extern __m128d uX_ABI _uX_mm_const_24high_pd(void); //             __m128d; // dbl_24high
extern __m128d uX_ABI _uX_mm_const_flip24_pd(void); //             __m128d; // dbl_flip24
extern __m128d uX_ABI _uX_mm_const_28low_pd(void); //                  __m128d; // dbl_28low
extern __m128d uX_ABI _uX_mm_const_28high_pd(void); //             __m128d; // dbl_28high
extern __m128d uX_ABI _uX_mm_const_flip28_pd(void); //             __m128d; // dbl_flip28
extern __m128d uX_ABI _uX_mm_const_32low_pd(void); //                  __m128d; // dbl_32low
extern __m128d uX_ABI _uX_mm_const_32high_pd(void); //             __m128d; // dbl_32high
extern __m128d uX_ABI _uX_mm_const_flip32_pd(void); //             __m128d; // dbl_flip32
extern __m128d uX_ABI _uX_mm_const_40low_pd(void); //                  __m128d; // dbl_40low
extern __m128d uX_ABI _uX_mm_const_40high_pd(void); //             __m128d; // dbl_40high
extern __m128d uX_ABI _uX_mm_const_flip40_pd(void); //             __m128d; // dbl_flip40
extern __m128d uX_ABI _uX_mm_const_48low_pd(void); //                  __m128d; // dbl_48low
extern __m128d uX_ABI _uX_mm_const_48high_pd(void); //             __m128d; // dbl_48high
extern __m128d uX_ABI _uX_mm_const_flip48_pd(void); //             __m128d; // dbl_flip48
extern __m128d uX_ABI _uX_mm_const_56low_pd(void); //                  __m128d; // dbl_56low
extern __m128d uX_ABI _uX_mm_const_56high_pd(void); //             __m128d; // dbl_56high
extern __m128d uX_ABI _uX_mm_const_flip56_pd(void); //             __m128d; // dbl_flip56
extern __m128d uX_ABI _uX_mm_const_60low_pd(void); //                  __m128d; // dbl_60low
extern __m128d uX_ABI _uX_mm_const_60high_pd(void); //             __m128d; // dbl_60high
extern __m128d uX_ABI _uX_mm_const_flip60_pd(void); //             __m128d; // dbl_flip60
extern __m128d uX_ABI _uX_mm_const_64low_pd(void); //                  __m128d; // dbl_64low
extern __m128d uX_ABI _uX_mm_const_64high_pd(void); //             __m128d; // dbl_64high
extern __m128d uX_ABI _uX_mm_const_flip64_pd(void); //             __m128d; // dbl_flip64

extern __m128d uX_ABI _uX_mm_const_0_pd(void); //                  __m128d; // dbl_0
extern __m128d uX_ABI _uX_mm_const_0d0001_pd(void); //                 __m128d; // dbl_0d0001
extern __m128d uX_ABI _uX_mm_const_0d0002_pd(void); //                 __m128d; // dbl_0d0002
extern __m128d uX_ABI _uX_mm_const_0d0003_pd(void); //                 __m128d; // dbl_0d0003
extern __m128d uX_ABI _uX_mm_const_0d0004_pd(void); //                 __m128d; // dbl_0d0004
extern __m128d uX_ABI _uX_mm_const_0d0005_pd(void); //                 __m128d; // dbl_0d0005
extern __m128d uX_ABI _uX_mm_const_0d0006_pd(void); //                 __m128d; // dbl_0d0006
extern __m128d uX_ABI _uX_mm_const_0d0007_pd(void); //                 __m128d; // dbl_0d0007
extern __m128d uX_ABI _uX_mm_const_0d0008_pd(void); //                 __m128d; // dbl_0d0008
extern __m128d uX_ABI _uX_mm_const_0d0009_pd(void); //                 __m128d; // dbl_0d0009
extern __m128d uX_ABI _uX_mm_const_0d001_pd(void); //              __m128d; // dbl_0d001
extern __m128d uX_ABI _uX_mm_const_0d002_pd(void); //              __m128d; // dbl_0d002
extern __m128d uX_ABI _uX_mm_const_0d003_pd(void); //              __m128d; // dbl_0d003
extern __m128d uX_ABI _uX_mm_const_0d004_pd(void); //              __m128d; // dbl_0d004
extern __m128d uX_ABI _uX_mm_const_0d005_pd(void); //              __m128d; // dbl_0d005
extern __m128d uX_ABI _uX_mm_const_0d006_pd(void); //              __m128d; // dbl_0d006
extern __m128d uX_ABI _uX_mm_const_0d007_pd(void); //              __m128d; // dbl_0d007
extern __m128d uX_ABI _uX_mm_const_0d008_pd(void); //              __m128d; // dbl_0d008
extern __m128d uX_ABI _uX_mm_const_0d009_pd(void); //              __m128d; // dbl_0d009
extern __m128d uX_ABI _uX_mm_const_0d01_pd(void); //                   __m128d; // dbl_0d01
extern __m128d uX_ABI _uX_mm_const_0d02_pd(void); //                   __m128d; // dbl_0d02
extern __m128d uX_ABI _uX_mm_const_0d025_pd(void); //              __m128d; // dbl_0d025
extern __m128d uX_ABI _uX_mm_const_0d03_pd(void); //                   __m128d; // dbl_0d03
extern __m128d uX_ABI _uX_mm_const_0d04_pd(void); //                   __m128d; // dbl_0d04
extern __m128d uX_ABI _uX_mm_const_0d05_pd(void); //                   __m128d; // dbl_0d05
extern __m128d uX_ABI _uX_mm_const_0d06_pd(void); //                   __m128d; // dbl_0d06
extern __m128d uX_ABI _uX_mm_const_0d07_pd(void); //                   __m128d; // dbl_0d07
extern __m128d uX_ABI _uX_mm_const_0d08_pd(void); //                   __m128d; // dbl_0d08
extern __m128d uX_ABI _uX_mm_const_0d09_pd(void); //                   __m128d; // dbl_0d09
extern __m128d uX_ABI _uX_mm_const_0d1_pd(void); //                    __m128d; // dbl_0d1
extern __m128d uX_ABI _uX_mm_const_0d2_pd(void); //                    __m128d; // dbl_0d2
extern __m128d uX_ABI _uX_mm_const_0d25_pd(void); //                   __m128d; // dbl_0d25
extern __m128d uX_ABI _uX_mm_const_0d3_pd(void); //                    __m128d; // dbl_0d3
extern __m128d uX_ABI _uX_mm_const_0d4_pd(void); //                    __m128d; // dbl_0d4
extern __m128d uX_ABI _uX_mm_const_0d5_pd(void); //                    __m128d; // dbl_0d5
extern __m128d uX_ABI _uX_mm_const_0d6_pd(void); //                    __m128d; // dbl_0d6
extern __m128d uX_ABI _uX_mm_const_0d7_pd(void); //                    __m128d; // dbl_0d7
extern __m128d uX_ABI _uX_mm_const_0d8_pd(void); //                    __m128d; // dbl_0d8
extern __m128d uX_ABI _uX_mm_const_0d9_pd(void); //                    __m128d; // dbl_0d9
extern __m128d uX_ABI _uX_mm_const_1_pd(void); //                  __m128d; // dbl_1
extern __m128d uX_ABI _uX_mm_const_1d25_pd(void); //                   __m128d; // dbl_1d25
extern __m128d uX_ABI _uX_mm_const_1d5_pd(void); //                    __m128d; // dbl_1d5
extern __m128d uX_ABI _uX_mm_const_2_pd(void); //                  __m128d; // dbl_2
extern __m128d uX_ABI _uX_mm_const_2d25_pd(void); //                   __m128d; // dbl_2d25
extern __m128d uX_ABI _uX_mm_const_2d5_pd(void); //                    __m128d; // dbl_2d5
extern __m128d uX_ABI _uX_mm_const_3_pd(void); //                  __m128d; // dbl_3
extern __m128d uX_ABI _uX_mm_const_3d25_pd(void); //                   __m128d; // dbl_3d25
extern __m128d uX_ABI _uX_mm_const_3d5_pd(void); //                    __m128d; // dbl_3d5
extern __m128d uX_ABI _uX_mm_const_4_pd(void); //                  __m128d; // dbl_4
extern __m128d uX_ABI _uX_mm_const_4d25_pd(void); //                   __m128d; // dbl_4d25
extern __m128d uX_ABI _uX_mm_const_4d5_pd(void); //                    __m128d; // dbl_4d5
extern __m128d uX_ABI _uX_mm_const_5_pd(void); //                  __m128d; // dbl_5
extern __m128d uX_ABI _uX_mm_const_5d25_pd(void); //                   __m128d; // dbl_5d25
extern __m128d uX_ABI _uX_mm_const_5d5_pd(void); //                    __m128d; // dbl_5d5
extern __m128d uX_ABI _uX_mm_const_6_pd(void); //                  __m128d; // dbl_6
extern __m128d uX_ABI _uX_mm_const_6d25_pd(void); //                   __m128d; // dbl_6d25
extern __m128d uX_ABI _uX_mm_const_6d5_pd(void); //                    __m128d; // dbl_6d5
extern __m128d uX_ABI _uX_mm_const_7_pd(void); //                  __m128d; // dbl_7
extern __m128d uX_ABI _uX_mm_const_7d25_pd(void); //                   __m128d; // dbl_7d25
extern __m128d uX_ABI _uX_mm_const_7d5_pd(void); //                    __m128d; // dbl_7d5
extern __m128d uX_ABI _uX_mm_const_8_pd(void); //                  __m128d; // dbl_8
extern __m128d uX_ABI _uX_mm_const_8d25_pd(void); //                   __m128d; // dbl_8d25
extern __m128d uX_ABI _uX_mm_const_8d5_pd(void); //                    __m128d; // dbl_8d5
extern __m128d uX_ABI _uX_mm_const_9_pd(void); //                  __m128d; // dbl_9
extern __m128d uX_ABI _uX_mm_const_9d25_pd(void); //                   __m128d; // dbl_9d25
extern __m128d uX_ABI _uX_mm_const_9d5_pd(void); //                    __m128d; // dbl_9d5
extern __m128d uX_ABI _uX_mm_const_10_pd(void); //                     __m128d; // dbl_10
extern __m128d uX_ABI _uX_mm_const_11_pd(void); //                     __m128d; // dbl_11
extern __m128d uX_ABI _uX_mm_const_12_pd(void); //                     __m128d; // dbl_12
extern __m128d uX_ABI _uX_mm_const_13_pd(void); //                     __m128d; // dbl_13
extern __m128d uX_ABI _uX_mm_const_14_pd(void); //                     __m128d; // dbl_14
extern __m128d uX_ABI _uX_mm_const_15_pd(void); //                     __m128d; // dbl_15
extern __m128d uX_ABI _uX_mm_const_16_pd(void); //                     __m128d; // dbl_16
extern __m128d uX_ABI _uX_mm_const_17_pd(void); //                     __m128d; // dbl_17
extern __m128d uX_ABI _uX_mm_const_18_pd(void); //                     __m128d; // dbl_18
extern __m128d uX_ABI _uX_mm_const_19_pd(void); //                     __m128d; // dbl_19
extern __m128d uX_ABI _uX_mm_const_20_pd(void); //                     __m128d; // dbl_20
extern __m128d uX_ABI _uX_mm_const_21_pd(void); //                     __m128d; // dbl_21
extern __m128d uX_ABI _uX_mm_const_22_pd(void); //                     __m128d; // dbl_22
extern __m128d uX_ABI _uX_mm_const_23_pd(void); //                     __m128d; // dbl_23
extern __m128d uX_ABI _uX_mm_const_24_pd(void); //                     __m128d; // dbl_24
extern __m128d uX_ABI _uX_mm_const_24d5_pd(void); //                   __m128d; // dbl_24d5
extern __m128d uX_ABI _uX_mm_const_25_pd(void); //                     __m128d; // dbl_25
extern __m128d uX_ABI _uX_mm_const_26_pd(void); //                     __m128d; // dbl_26
extern __m128d uX_ABI _uX_mm_const_27_pd(void); //                     __m128d; // dbl_27
extern __m128d uX_ABI _uX_mm_const_28_pd(void); //                     __m128d; // dbl_28
extern __m128d uX_ABI _uX_mm_const_29_pd(void); //                     __m128d; // dbl_29
extern __m128d uX_ABI _uX_mm_const_30_pd(void); //                     __m128d; // dbl_30
extern __m128d uX_ABI _uX_mm_const_31_pd(void); //                     __m128d; // dbl_31
extern __m128d uX_ABI _uX_mm_const_32_pd(void); //                     __m128d; // dbl_32
extern __m128d uX_ABI _uX_mm_const_33_pd(void); //                     __m128d; // dbl_33
extern __m128d uX_ABI _uX_mm_const_34_pd(void); //                     __m128d; // dbl_34
extern __m128d uX_ABI _uX_mm_const_35_pd(void); //                     __m128d; // dbl_35
extern __m128d uX_ABI _uX_mm_const_36_pd(void); //                     __m128d; // dbl_36
extern __m128d uX_ABI _uX_mm_const_37_pd(void); //                     __m128d; // dbl_37
extern __m128d uX_ABI _uX_mm_const_38_pd(void); //                     __m128d; // dbl_38
extern __m128d uX_ABI _uX_mm_const_39_pd(void); //                     __m128d; // dbl_39
extern __m128d uX_ABI _uX_mm_const_40_pd(void); //                     __m128d; // dbl_40
extern __m128d uX_ABI _uX_mm_const_41_pd(void); //                     __m128d; // dbl_41
extern __m128d uX_ABI _uX_mm_const_42_pd(void); //                     __m128d; // dbl_42
extern __m128d uX_ABI _uX_mm_const_43_pd(void); //                     __m128d; // dbl_43
extern __m128d uX_ABI _uX_mm_const_44_pd(void); //                     __m128d; // dbl_44
extern __m128d uX_ABI _uX_mm_const_45_pd(void); //                     __m128d; // dbl_45
extern __m128d uX_ABI _uX_mm_const_46_pd(void); //                     __m128d; // dbl_46
extern __m128d uX_ABI _uX_mm_const_47_pd(void); //                     __m128d; // dbl_47
extern __m128d uX_ABI _uX_mm_const_48_pd(void); //                     __m128d; // dbl_48
extern __m128d uX_ABI _uX_mm_const_49_pd(void); //                     __m128d; // dbl_49
extern __m128d uX_ABI _uX_mm_const_50_pd(void); //                     __m128d; // dbl_50
extern __m128d uX_ABI _uX_mm_const_51_pd(void); //                     __m128d; // dbl_51
extern __m128d uX_ABI _uX_mm_const_52_pd(void); //                     __m128d; // dbl_52
extern __m128d uX_ABI _uX_mm_const_53_pd(void); //                     __m128d; // dbl_53
extern __m128d uX_ABI _uX_mm_const_54_pd(void); //                     __m128d; // dbl_54
extern __m128d uX_ABI _uX_mm_const_55_pd(void); //                     __m128d; // dbl_55
extern __m128d uX_ABI _uX_mm_const_56_pd(void); //                     __m128d; // dbl_56
extern __m128d uX_ABI _uX_mm_const_57_pd(void); //                     __m128d; // dbl_57
extern __m128d uX_ABI _uX_mm_const_58_pd(void); //                     __m128d; // dbl_58
extern __m128d uX_ABI _uX_mm_const_59_pd(void); //                     __m128d; // dbl_59
extern __m128d uX_ABI _uX_mm_const_60_pd(void); //                     __m128d; // dbl_60
extern __m128d uX_ABI _uX_mm_const_61_pd(void); //                     __m128d; // dbl_61
extern __m128d uX_ABI _uX_mm_const_62_pd(void); //                     __m128d; // dbl_62
extern __m128d uX_ABI _uX_mm_const_63_pd(void); //                     __m128d; // dbl_63
extern __m128d uX_ABI _uX_mm_const_64_pd(void); //                     __m128d; // dbl_64
extern __m128d uX_ABI _uX_mm_const_65_pd(void); //                     __m128d; // dbl_65
extern __m128d uX_ABI _uX_mm_const_66_pd(void); //                     __m128d; // dbl_66
extern __m128d uX_ABI _uX_mm_const_67_pd(void); //                     __m128d; // dbl_67
extern __m128d uX_ABI _uX_mm_const_68_pd(void); //                     __m128d; // dbl_68
extern __m128d uX_ABI _uX_mm_const_69_pd(void); //                     __m128d; // dbl_69
extern __m128d uX_ABI _uX_mm_const_70_pd(void); //                     __m128d; // dbl_70
extern __m128d uX_ABI _uX_mm_const_71_pd(void); //                     __m128d; // dbl_71
extern __m128d uX_ABI _uX_mm_const_72_pd(void); //                     __m128d; // dbl_72
extern __m128d uX_ABI _uX_mm_const_73_pd(void); //                     __m128d; // dbl_73
extern __m128d uX_ABI _uX_mm_const_74_pd(void); //                     __m128d; // dbl_74
extern __m128d uX_ABI _uX_mm_const_75_pd(void); //                     __m128d; // dbl_75
extern __m128d uX_ABI _uX_mm_const_76_pd(void); //                     __m128d; // dbl_76
extern __m128d uX_ABI _uX_mm_const_77_pd(void); //                     __m128d; // dbl_77
extern __m128d uX_ABI _uX_mm_const_78_pd(void); //                     __m128d; // dbl_78
extern __m128d uX_ABI _uX_mm_const_79_pd(void); //                     __m128d; // dbl_79
extern __m128d uX_ABI _uX_mm_const_80_pd(void); //                     __m128d; // dbl_80
extern __m128d uX_ABI _uX_mm_const_81_pd(void); //                     __m128d; // dbl_81
extern __m128d uX_ABI _uX_mm_const_82_pd(void); //                     __m128d; // dbl_82
extern __m128d uX_ABI _uX_mm_const_83_pd(void); //                     __m128d; // dbl_83
extern __m128d uX_ABI _uX_mm_const_84_pd(void); //                     __m128d; // dbl_84
extern __m128d uX_ABI _uX_mm_const_85_pd(void); //                     __m128d; // dbl_85
extern __m128d uX_ABI _uX_mm_const_86_pd(void); //                     __m128d; // dbl_86
extern __m128d uX_ABI _uX_mm_const_87_pd(void); //                     __m128d; // dbl_87
extern __m128d uX_ABI _uX_mm_const_88_pd(void); //                     __m128d; // dbl_88
extern __m128d uX_ABI _uX_mm_const_89_pd(void); //                     __m128d; // dbl_89
extern __m128d uX_ABI _uX_mm_const_90_pd(void); //                     __m128d; // dbl_90
extern __m128d uX_ABI _uX_mm_const_91_pd(void); //                     __m128d; // dbl_91
extern __m128d uX_ABI _uX_mm_const_92_pd(void); //                     __m128d; // dbl_92
extern __m128d uX_ABI _uX_mm_const_93_pd(void); //                     __m128d; // dbl_93
extern __m128d uX_ABI _uX_mm_const_94_pd(void); //                     __m128d; // dbl_94
extern __m128d uX_ABI _uX_mm_const_95_pd(void); //                     __m128d; // dbl_95
extern __m128d uX_ABI _uX_mm_const_96_pd(void); //                     __m128d; // dbl_96
extern __m128d uX_ABI _uX_mm_const_97_pd(void); //                     __m128d; // dbl_97
extern __m128d uX_ABI _uX_mm_const_98_pd(void); //                     __m128d; // dbl_98
extern __m128d uX_ABI _uX_mm_const_99_pd(void); //                     __m128d; // dbl_99
extern __m128d uX_ABI _uX_mm_const_100_pd(void); //                    __m128d; // dbl_100
extern __m128d uX_ABI _uX_mm_const_125_pd(void); //                    __m128d; // dbl_125
extern __m128d uX_ABI _uX_mm_const_126_pd(void); //                    __m128d; // dbl_126
extern __m128d uX_ABI _uX_mm_const_127_pd(void); //                    __m128d; // dbl_127
extern __m128d uX_ABI _uX_mm_const_128_pd(void); //                    __m128d; // dbl_128
extern __m128d uX_ABI _uX_mm_const_140_pd(void); //                    __m128d; // dbl_140
extern __m128d uX_ABI _uX_mm_const_145_pd(void); //                    __m128d; // dbl_145
extern __m128d uX_ABI _uX_mm_const_150_pd(void); //                    __m128d; // dbl_150
extern __m128d uX_ABI _uX_mm_const_180_pd(void); //                    __m128d; // dbl_180
extern __m128d uX_ABI _uX_mm_const_253_pd(void); //                    __m128d; // dbl_253
extern __m128d uX_ABI _uX_mm_const_254_pd(void); //                    __m128d; // dbl_254
extern __m128d uX_ABI _uX_mm_const_255_pd(void); //                    __m128d; // dbl_255
extern __m128d uX_ABI _uX_mm_const_256_pd(void); //                    __m128d; // dbl_256
extern __m128d uX_ABI _uX_mm_const_360_pd(void); //                    __m128d; // dbl_360
extern __m128d uX_ABI _uX_mm_const_511_pd(void); //                    __m128d; // dbl_511
extern __m128d uX_ABI _uX_mm_const_512_pd(void); //                    __m128d; // dbl_512
extern __m128d uX_ABI _uX_mm_const_513_pd(void); //                    __m128d; // dbl_513
extern __m128d uX_ABI _uX_mm_const_1023_pd(void); //                   __m128d; // dbl_1023
extern __m128d uX_ABI _uX_mm_const_1024_pd(void); //                   __m128d; // dbl_1024
extern __m128d uX_ABI _uX_mm_const_1025_pd(void); //                   __m128d; // dbl_1025

extern __m128d uX_ABI _uX_mm_const_32767_pd(void); //              __m128d; // dbl_32767
extern __m128d uX_ABI _uX_mm_const_32768_pd(void); //              __m128d; // dbl_32768
extern __m128d uX_ABI _uX_mm_const_65535_pd(void); //              __m128d; // dbl_65535
extern __m128d uX_ABI _uX_mm_const_65536_pd(void); //              __m128d; // dbl_65536
extern __m128d uX_ABI _uX_mm_const_2147483647_pd(void); //             __m128d; // dbl_2147483647
extern __m128d uX_ABI _uX_mm_const_2147483648_pd(void); //             __m128d; // dbl_2147483648
extern __m128d uX_ABI _uX_mm_const_4294967295_pd(void); //             __m128d; // dbl_4294967295
extern __m128d uX_ABI _uX_mm_const_4294967296_pd(void); //             __m128d; // dbl_4294967296

extern __m128d uX_ABI _uX_mm_const_neg0_pd(void); //                   __m128d; // dbl_neg0
extern __m128d uX_ABI _uX_mm_const_neg0d0001_pd(void); //          __m128d; // dbl_neg0d0001
extern __m128d uX_ABI _uX_mm_const_neg0d0002_pd(void); //          __m128d; // dbl_neg0d0002
extern __m128d uX_ABI _uX_mm_const_neg0d0003_pd(void); //          __m128d; // dbl_neg0d0003
extern __m128d uX_ABI _uX_mm_const_neg0d0004_pd(void); //          __m128d; // dbl_neg0d0004
extern __m128d uX_ABI _uX_mm_const_neg0d0005_pd(void); //          __m128d; // dbl_neg0d0005
extern __m128d uX_ABI _uX_mm_const_neg0d0006_pd(void); //          __m128d; // dbl_neg0d0006
extern __m128d uX_ABI _uX_mm_const_neg0d0007_pd(void); //          __m128d; // dbl_neg0d0007
extern __m128d uX_ABI _uX_mm_const_neg0d0008_pd(void); //          __m128d; // dbl_neg0d0008
extern __m128d uX_ABI _uX_mm_const_neg0d0009_pd(void); //          __m128d; // dbl_neg0d0009
extern __m128d uX_ABI _uX_mm_const_neg0d001_pd(void); //               __m128d; // dbl_neg0d001
extern __m128d uX_ABI _uX_mm_const_neg0d002_pd(void); //               __m128d; // dbl_neg0d002
extern __m128d uX_ABI _uX_mm_const_neg0d003_pd(void); //               __m128d; // dbl_neg0d003
extern __m128d uX_ABI _uX_mm_const_neg0d004_pd(void); //               __m128d; // dbl_neg0d004
extern __m128d uX_ABI _uX_mm_const_neg0d005_pd(void); //               __m128d; // dbl_neg0d005
extern __m128d uX_ABI _uX_mm_const_neg0d006_pd(void); //               __m128d; // dbl_neg0d006
extern __m128d uX_ABI _uX_mm_const_neg0d007_pd(void); //               __m128d; // dbl_neg0d007
extern __m128d uX_ABI _uX_mm_const_neg0d008_pd(void); //               __m128d; // dbl_neg0d008
extern __m128d uX_ABI _uX_mm_const_neg0d009_pd(void); //               __m128d; // dbl_neg0d009
extern __m128d uX_ABI _uX_mm_const_neg0d01_pd(void); //                __m128d; // dbl_neg0d01
extern __m128d uX_ABI _uX_mm_const_neg0d02_pd(void); //                __m128d; // dbl_neg0d02
extern __m128d uX_ABI _uX_mm_const_neg0d025_pd(void); //               __m128d; // dbl_neg0d025
extern __m128d uX_ABI _uX_mm_const_neg0d03_pd(void); //                __m128d; // dbl_neg0d03
extern __m128d uX_ABI _uX_mm_const_neg0d04_pd(void); //                __m128d; // dbl_neg0d04
extern __m128d uX_ABI _uX_mm_const_neg0d05_pd(void); //                __m128d; // dbl_neg0d05
extern __m128d uX_ABI _uX_mm_const_neg0d06_pd(void); //                __m128d; // dbl_neg0d06
extern __m128d uX_ABI _uX_mm_const_neg0d07_pd(void); //                __m128d; // dbl_neg0d07
extern __m128d uX_ABI _uX_mm_const_neg0d08_pd(void); //                __m128d; // dbl_neg0d08
extern __m128d uX_ABI _uX_mm_const_neg0d09_pd(void); //                __m128d; // dbl_neg0d09
extern __m128d uX_ABI _uX_mm_const_neg0d1_pd(void); //                 __m128d; // dbl_neg0d1
extern __m128d uX_ABI _uX_mm_const_neg0d2_pd(void); //                 __m128d; // dbl_neg0d2
extern __m128d uX_ABI _uX_mm_const_neg0d25_pd(void); //                __m128d; // dbl_neg0d25
extern __m128d uX_ABI _uX_mm_const_neg0d3_pd(void); //                 __m128d; // dbl_neg0d3
extern __m128d uX_ABI _uX_mm_const_neg0d4_pd(void); //                 __m128d; // dbl_neg0d4
extern __m128d uX_ABI _uX_mm_const_neg0d5_pd(void); //                 __m128d; // dbl_neg0d5
extern __m128d uX_ABI _uX_mm_const_neg0d6_pd(void); //                 __m128d; // dbl_neg0d6
extern __m128d uX_ABI _uX_mm_const_neg0d7_pd(void); //                 __m128d; // dbl_neg0d7
extern __m128d uX_ABI _uX_mm_const_neg0d8_pd(void); //                 __m128d; // dbl_neg0d8
extern __m128d uX_ABI _uX_mm_const_neg0d9_pd(void); //                 __m128d; // dbl_neg0d9
extern __m128d uX_ABI _uX_mm_const_neg1_pd(void); //                   __m128d; // dbl_neg1
extern __m128d uX_ABI _uX_mm_const_neg1d25_pd(void); //                __m128d; // dbl_neg1d25
extern __m128d uX_ABI _uX_mm_const_neg1d5_pd(void); //                 __m128d; // dbl_neg1d5
extern __m128d uX_ABI _uX_mm_const_neg2_pd(void); //                   __m128d; // dbl_neg2
extern __m128d uX_ABI _uX_mm_const_neg2d25_pd(void); //                __m128d; // dbl_neg2d25
extern __m128d uX_ABI _uX_mm_const_neg2d5_pd(void); //                 __m128d; // dbl_neg2d5
extern __m128d uX_ABI _uX_mm_const_neg3_pd(void); //                   __m128d; // dbl_neg3
extern __m128d uX_ABI _uX_mm_const_neg3d25_pd(void); //                __m128d; // dbl_neg3d25
extern __m128d uX_ABI _uX_mm_const_neg3d5_pd(void); //                 __m128d; // dbl_neg3d5
extern __m128d uX_ABI _uX_mm_const_neg4_pd(void); //                   __m128d; // dbl_neg4
extern __m128d uX_ABI _uX_mm_const_neg4d25_pd(void); //                __m128d; // dbl_neg4d25
extern __m128d uX_ABI _uX_mm_const_neg4d5_pd(void); //                 __m128d; // dbl_neg4d5
extern __m128d uX_ABI _uX_mm_const_neg5_pd(void); //                   __m128d; // dbl_neg5
extern __m128d uX_ABI _uX_mm_const_neg5d25_pd(void); //                __m128d; // dbl_neg5d25
extern __m128d uX_ABI _uX_mm_const_neg5d5_pd(void); //                 __m128d; // dbl_neg5d5
extern __m128d uX_ABI _uX_mm_const_neg6_pd(void); //                   __m128d; // dbl_neg6
extern __m128d uX_ABI _uX_mm_const_neg6d25_pd(void); //                __m128d; // dbl_neg6d25
extern __m128d uX_ABI _uX_mm_const_neg6d5_pd(void); //                 __m128d; // dbl_neg6d5
extern __m128d uX_ABI _uX_mm_const_neg7_pd(void); //                   __m128d; // dbl_neg7
extern __m128d uX_ABI _uX_mm_const_neg7d25_pd(void); //                __m128d; // dbl_neg7d25
extern __m128d uX_ABI _uX_mm_const_neg7d5_pd(void); //                 __m128d; // dbl_neg7d5
extern __m128d uX_ABI _uX_mm_const_neg8_pd(void); //                   __m128d; // dbl_neg8
extern __m128d uX_ABI _uX_mm_const_neg8d25_pd(void); //                __m128d; // dbl_neg8d25
extern __m128d uX_ABI _uX_mm_const_neg8d5_pd(void); //                 __m128d; // dbl_neg8d5
extern __m128d uX_ABI _uX_mm_const_neg9_pd(void); //                   __m128d; // dbl_neg9
extern __m128d uX_ABI _uX_mm_const_neg9d25_pd(void); //                __m128d; // dbl_neg9d25
extern __m128d uX_ABI _uX_mm_const_neg9d5_pd(void); //                 __m128d; // dbl_neg9d5
extern __m128d uX_ABI _uX_mm_const_neg10_pd(void); //              __m128d; // dbl_neg10
extern __m128d uX_ABI _uX_mm_const_neg11_pd(void); //              __m128d; // dbl_neg11
extern __m128d uX_ABI _uX_mm_const_neg12_pd(void); //              __m128d; // dbl_neg12
extern __m128d uX_ABI _uX_mm_const_neg13_pd(void); //              __m128d; // dbl_neg13
extern __m128d uX_ABI _uX_mm_const_neg14_pd(void); //              __m128d; // dbl_neg14
extern __m128d uX_ABI _uX_mm_const_neg15_pd(void); //              __m128d; // dbl_neg15
extern __m128d uX_ABI _uX_mm_const_neg16_pd(void); //              __m128d; // dbl_neg16
extern __m128d uX_ABI _uX_mm_const_neg17_pd(void); //              __m128d; // dbl_neg17
extern __m128d uX_ABI _uX_mm_const_neg18_pd(void); //              __m128d; // dbl_neg18
extern __m128d uX_ABI _uX_mm_const_neg19_pd(void); //              __m128d; // dbl_neg19
extern __m128d uX_ABI _uX_mm_const_neg20_pd(void); //              __m128d; // dbl_neg20
extern __m128d uX_ABI _uX_mm_const_neg21_pd(void); //              __m128d; // dbl_neg21
extern __m128d uX_ABI _uX_mm_const_neg22_pd(void); //              __m128d; // dbl_neg22
extern __m128d uX_ABI _uX_mm_const_neg23_pd(void); //              __m128d; // dbl_neg23
extern __m128d uX_ABI _uX_mm_const_neg24_pd(void); //              __m128d; // dbl_neg24
extern __m128d uX_ABI _uX_mm_const_neg24d5_pd(void); //                __m128d; // dbl_neg24d5
extern __m128d uX_ABI _uX_mm_const_neg25_pd(void); //              __m128d; // dbl_neg25
extern __m128d uX_ABI _uX_mm_const_neg26_pd(void); //              __m128d; // dbl_neg26
extern __m128d uX_ABI _uX_mm_const_neg27_pd(void); //              __m128d; // dbl_neg27
extern __m128d uX_ABI _uX_mm_const_neg28_pd(void); //              __m128d; // dbl_neg28
extern __m128d uX_ABI _uX_mm_const_neg29_pd(void); //              __m128d; // dbl_neg29
extern __m128d uX_ABI _uX_mm_const_neg30_pd(void); //              __m128d; // dbl_neg30
extern __m128d uX_ABI _uX_mm_const_neg31_pd(void); //              __m128d; // dbl_neg31
extern __m128d uX_ABI _uX_mm_const_neg32_pd(void); //              __m128d; // dbl_neg32
extern __m128d uX_ABI _uX_mm_const_neg33_pd(void); //              __m128d; // dbl_neg33
extern __m128d uX_ABI _uX_mm_const_neg34_pd(void); //              __m128d; // dbl_neg34
extern __m128d uX_ABI _uX_mm_const_neg35_pd(void); //              __m128d; // dbl_neg35
extern __m128d uX_ABI _uX_mm_const_neg36_pd(void); //              __m128d; // dbl_neg36
extern __m128d uX_ABI _uX_mm_const_neg37_pd(void); //              __m128d; // dbl_neg37
extern __m128d uX_ABI _uX_mm_const_neg38_pd(void); //              __m128d; // dbl_neg38
extern __m128d uX_ABI _uX_mm_const_neg39_pd(void); //              __m128d; // dbl_neg39
extern __m128d uX_ABI _uX_mm_const_neg40_pd(void); //              __m128d; // dbl_neg40
extern __m128d uX_ABI _uX_mm_const_neg41_pd(void); //              __m128d; // dbl_neg41
extern __m128d uX_ABI _uX_mm_const_neg42_pd(void); //              __m128d; // dbl_neg42
extern __m128d uX_ABI _uX_mm_const_neg43_pd(void); //              __m128d; // dbl_neg43
extern __m128d uX_ABI _uX_mm_const_neg44_pd(void); //              __m128d; // dbl_neg44
extern __m128d uX_ABI _uX_mm_const_neg45_pd(void); //              __m128d; // dbl_neg45
extern __m128d uX_ABI _uX_mm_const_neg46_pd(void); //              __m128d; // dbl_neg46
extern __m128d uX_ABI _uX_mm_const_neg47_pd(void); //              __m128d; // dbl_neg47
extern __m128d uX_ABI _uX_mm_const_neg48_pd(void); //              __m128d; // dbl_neg48
extern __m128d uX_ABI _uX_mm_const_neg49_pd(void); //              __m128d; // dbl_neg49
extern __m128d uX_ABI _uX_mm_const_neg50_pd(void); //              __m128d; // dbl_neg50
extern __m128d uX_ABI _uX_mm_const_neg51_pd(void); //              __m128d; // dbl_neg51
extern __m128d uX_ABI _uX_mm_const_neg52_pd(void); //              __m128d; // dbl_neg52
extern __m128d uX_ABI _uX_mm_const_neg53_pd(void); //              __m128d; // dbl_neg53
extern __m128d uX_ABI _uX_mm_const_neg54_pd(void); //              __m128d; // dbl_neg54
extern __m128d uX_ABI _uX_mm_const_neg55_pd(void); //              __m128d; // dbl_neg55
extern __m128d uX_ABI _uX_mm_const_neg56_pd(void); //              __m128d; // dbl_neg56
extern __m128d uX_ABI _uX_mm_const_neg57_pd(void); //              __m128d; // dbl_neg57
extern __m128d uX_ABI _uX_mm_const_neg58_pd(void); //              __m128d; // dbl_neg58
extern __m128d uX_ABI _uX_mm_const_neg59_pd(void); //              __m128d; // dbl_neg59
extern __m128d uX_ABI _uX_mm_const_neg60_pd(void); //              __m128d; // dbl_neg60
extern __m128d uX_ABI _uX_mm_const_neg61_pd(void); //              __m128d; // dbl_neg61
extern __m128d uX_ABI _uX_mm_const_neg62_pd(void); //              __m128d; // dbl_neg62
extern __m128d uX_ABI _uX_mm_const_neg63_pd(void); //              __m128d; // dbl_neg63
extern __m128d uX_ABI _uX_mm_const_neg64_pd(void); //              __m128d; // dbl_neg64
extern __m128d uX_ABI _uX_mm_const_neg65_pd(void); //              __m128d; // dbl_neg65
extern __m128d uX_ABI _uX_mm_const_neg66_pd(void); //              __m128d; // dbl_neg66
extern __m128d uX_ABI _uX_mm_const_neg67_pd(void); //              __m128d; // dbl_neg67
extern __m128d uX_ABI _uX_mm_const_neg68_pd(void); //              __m128d; // dbl_neg68
extern __m128d uX_ABI _uX_mm_const_neg69_pd(void); //              __m128d; // dbl_neg69
extern __m128d uX_ABI _uX_mm_const_neg70_pd(void); //              __m128d; // dbl_neg70
extern __m128d uX_ABI _uX_mm_const_neg71_pd(void); //              __m128d; // dbl_neg71
extern __m128d uX_ABI _uX_mm_const_neg72_pd(void); //              __m128d; // dbl_neg72
extern __m128d uX_ABI _uX_mm_const_neg73_pd(void); //              __m128d; // dbl_neg73
extern __m128d uX_ABI _uX_mm_const_neg74_pd(void); //              __m128d; // dbl_neg74
extern __m128d uX_ABI _uX_mm_const_neg75_pd(void); //              __m128d; // dbl_neg75
extern __m128d uX_ABI _uX_mm_const_neg76_pd(void); //              __m128d; // dbl_neg76
extern __m128d uX_ABI _uX_mm_const_neg77_pd(void); //              __m128d; // dbl_neg77
extern __m128d uX_ABI _uX_mm_const_neg78_pd(void); //              __m128d; // dbl_neg78
extern __m128d uX_ABI _uX_mm_const_neg79_pd(void); //              __m128d; // dbl_neg79
extern __m128d uX_ABI _uX_mm_const_neg80_pd(void); //              __m128d; // dbl_neg80
extern __m128d uX_ABI _uX_mm_const_neg81_pd(void); //              __m128d; // dbl_neg81
extern __m128d uX_ABI _uX_mm_const_neg82_pd(void); //              __m128d; // dbl_neg82
extern __m128d uX_ABI _uX_mm_const_neg83_pd(void); //              __m128d; // dbl_neg83
extern __m128d uX_ABI _uX_mm_const_neg84_pd(void); //              __m128d; // dbl_neg84
extern __m128d uX_ABI _uX_mm_const_neg85_pd(void); //              __m128d; // dbl_neg85
extern __m128d uX_ABI _uX_mm_const_neg86_pd(void); //              __m128d; // dbl_neg86
extern __m128d uX_ABI _uX_mm_const_neg87_pd(void); //              __m128d; // dbl_neg87
extern __m128d uX_ABI _uX_mm_const_neg88_pd(void); //              __m128d; // dbl_neg88
extern __m128d uX_ABI _uX_mm_const_neg89_pd(void); //              __m128d; // dbl_neg89
extern __m128d uX_ABI _uX_mm_const_neg90_pd(void); //              __m128d; // dbl_neg90
extern __m128d uX_ABI _uX_mm_const_neg91_pd(void); //              __m128d; // dbl_neg91
extern __m128d uX_ABI _uX_mm_const_neg92_pd(void); //              __m128d; // dbl_neg92
extern __m128d uX_ABI _uX_mm_const_neg93_pd(void); //              __m128d; // dbl_neg93
extern __m128d uX_ABI _uX_mm_const_neg94_pd(void); //              __m128d; // dbl_neg94
extern __m128d uX_ABI _uX_mm_const_neg95_pd(void); //              __m128d; // dbl_neg95
extern __m128d uX_ABI _uX_mm_const_neg96_pd(void); //              __m128d; // dbl_neg96
extern __m128d uX_ABI _uX_mm_const_neg97_pd(void); //              __m128d; // dbl_neg97
extern __m128d uX_ABI _uX_mm_const_neg98_pd(void); //              __m128d; // dbl_neg98
extern __m128d uX_ABI _uX_mm_const_neg99_pd(void); //              __m128d; // dbl_neg99
extern __m128d uX_ABI _uX_mm_const_neg100_pd(void); //                 __m128d; // dbl_neg100
extern __m128d uX_ABI _uX_mm_const_neg125_pd(void); //                 __m128d; // dbl_neg125
extern __m128d uX_ABI _uX_mm_const_neg126_pd(void); //                 __m128d; // dbl_neg126
extern __m128d uX_ABI _uX_mm_const_neg127_pd(void); //                 __m128d; // dbl_neg127
extern __m128d uX_ABI _uX_mm_const_neg128_pd(void); //                 __m128d; // dbl_neg128
extern __m128d uX_ABI _uX_mm_const_neg140_pd(void); //                 __m128d; // dbl_neg140
extern __m128d uX_ABI _uX_mm_const_neg145_pd(void); //                 __m128d; // dbl_neg145
extern __m128d uX_ABI _uX_mm_const_neg150_pd(void); //                 __m128d; // dbl_neg150
extern __m128d uX_ABI _uX_mm_const_neg180_pd(void); //                 __m128d; // dbl_neg180
extern __m128d uX_ABI _uX_mm_const_neg253_pd(void); //                 __m128d; // dbl_neg253
extern __m128d uX_ABI _uX_mm_const_neg254_pd(void); //                 __m128d; // dbl_neg254
extern __m128d uX_ABI _uX_mm_const_neg255_pd(void); //                 __m128d; // dbl_neg255
extern __m128d uX_ABI _uX_mm_const_neg256_pd(void); //                 __m128d; // dbl_neg256
extern __m128d uX_ABI _uX_mm_const_neg360_pd(void); //                 __m128d; // dbl_neg360
extern __m128d uX_ABI _uX_mm_const_neg511_pd(void); //                 __m128d; // dbl_neg511
extern __m128d uX_ABI _uX_mm_const_neg512_pd(void); //                 __m128d; // dbl_neg512
extern __m128d uX_ABI _uX_mm_const_neg513_pd(void); //                 __m128d; // dbl_neg513
extern __m128d uX_ABI _uX_mm_const_neg1023_pd(void); //                __m128d; // dbl_neg1023
extern __m128d uX_ABI _uX_mm_const_neg1024_pd(void); //                __m128d; // dbl_neg1024
extern __m128d uX_ABI _uX_mm_const_neg1025_pd(void); //                __m128d; // dbl_neg1025

extern __m128d uX_ABI _uX_mm_const_neg32767_pd(void); //               __m128d; // dbl_neg32767
extern __m128d uX_ABI _uX_mm_const_neg32768_pd(void); //               __m128d; // dbl_neg32768
extern __m128d uX_ABI _uX_mm_const_neg65535_pd(void); //               __m128d; // dbl_neg65535
extern __m128d uX_ABI _uX_mm_const_neg65536_pd(void); //               __m128d; // dbl_neg65536
extern __m128d uX_ABI _uX_mm_const_neg2147483647_pd(void); //      __m128d; // dbl_neg2147483647
extern __m128d uX_ABI _uX_mm_const_neg2147483648_pd(void); //      __m128d; // dbl_neg2147483648
extern __m128d uX_ABI _uX_mm_const_neg4294967295_pd(void); //      __m128d; // dbl_neg4294967295
extern __m128d uX_ABI _uX_mm_const_neg4294967296_pd(void); //      __m128d; // dbl_neg4294967296

extern __m128d uX_ABI _uX_mm_const_bin128_pd(void); //             __m128d; // dbl_bin128
extern __m128d uX_ABI _uX_mm_const_binneg150_pd(void); //              __m128d; // dbl_binneg150

extern __m128d uX_ABI _uX_mm_const_maxrand_pd(void); //                __m128d; // dbl_maxrand

extern __m128d uX_ABI _uX_mm_const_maxi8_pd(void); //                  __m128d; // dbl_maxi8
extern __m128d uX_ABI _uX_mm_const_mini8_pd(void); //                  __m128d; // dbl_mini8
extern __m128d uX_ABI _uX_mm_const_maxu8_pd(void); //                  __m128d; // dbl_maxu8

extern __m128d uX_ABI _uX_mm_const_maxi16_pd(void); //             __m128d; // dbl_maxi16
extern __m128d uX_ABI _uX_mm_const_mini16_pd(void); //             __m128d; // dbl_mini16
extern __m128d uX_ABI _uX_mm_const_maxu16_pd(void); //             __m128d; // dbl_maxu16

extern __m128d uX_ABI _uX_mm_const_maxi32_pd(void); //             __m128d; // dbl_maxi32
extern __m128d uX_ABI _uX_mm_const_mini32_pd(void); //             __m128d; // dbl_mini32
extern __m128d uX_ABI _uX_mm_const_maxu32_pd(void); //             __m128d; // dbl_maxu32

extern __m128d uX_ABI _uX_mm_const_maxi64_pd(void); //             __m128d; // dbl_maxi64
extern __m128d uX_ABI _uX_mm_const_mini64_pd(void); //             __m128d; // dbl_mini64
extern __m128d uX_ABI _uX_mm_const_maxu64_pd(void); //             __m128d; // dbl_maxu64

extern __m128d uX_ABI _uX_mm_const_maxi8xu8_pd(void); //               __m128d; // dbl_maxi8xu8
extern __m128d uX_ABI _uX_mm_const_mini8xu8_pd(void); //               __m128d; // dbl_mini8xu8
extern __m128d uX_ABI _uX_mm_const_maxi8xu16_pd(void); //              __m128d; // dbl_maxi8xu16
extern __m128d uX_ABI _uX_mm_const_mini8xu16_pd(void); //              __m128d; // dbl_mini8xu16

extern __m128d uX_ABI _uX_mm_const_maxi16xu16_pd(void); //         __m128d; // dbl_maxi16xu16
extern __m128d uX_ABI _uX_mm_const_mini16xu16_pd(void); //         __m128d; // dbl_mini16xu16
extern __m128d uX_ABI _uX_mm_const_maxi16xu32_pd(void); //         __m128d; // dbl_maxi16xu32
extern __m128d uX_ABI _uX_mm_const_mini16xu32_pd(void); //         __m128d; // dbl_mini16xu32

extern __m128d uX_ABI _uX_mm_const_maxi32xu32_pd(void); //         __m128d; // dbl_maxi32xu32
extern __m128d uX_ABI _uX_mm_const_mini32xu32_pd(void); //         __m128d; // dbl_mini32xu32

extern __m128d uX_ABI _uX_mm_const_fixunsigned_pd(void); //            __m128d; // dbl_fixunsigned
extern __m128d uX_ABI _uX_mm_const_fixunsigned32_pd(void); //          __m128d; // dbl_fixunsigned32
extern __m128d uX_ABI _uX_mm_const_fixmaxi32_pd(void); //              __m128d; // dbl_fixmaxi32
extern __m128d uX_ABI _uX_mm_const_fixmaxu32_pd(void); //              __m128d; // dbl_fixmaxu32

extern __m128d uX_ABI _uX_mm_const_fixunsigned64_pd(void); //          __m128d; // dbl_fixunsigned64
extern __m128d uX_ABI _uX_mm_const_fixmaxi64_pd(void); //              __m128d; // dbl_fixmaxi64
extern __m128d uX_ABI _uX_mm_const_fixmaxu64_pd(void); //              __m128d; // dbl_fixmaxu64

extern __m128d uX_ABI _uX_mm_const_rcpi16_pd(void); //                 __m128d; // dbl_rcpi16
extern __m128d uX_ABI _uX_mm_const_rcpu16_pd(void); //                 __m128d; // dbl_rcpu16
extern __m128d uX_ABI _uX_mm_const_rcpi16xu16_pd(void); //             __m128d; // dbl_rcpi16xu16

extern __m128d uX_ABI _uX_mm_const_mg_pd(void); //                     __m128d; // dbl_mg
extern __m128d uX_ABI _uX_mm_const_negmg_pd(void); //              __m128d; // dbl_negmg
extern __m128d uX_ABI _uX_mm_const_halfmg_pd(void); //                 __m128d; // dbl_halfmg
extern __m128d uX_ABI _uX_mm_const_neghalfmg_pd(void); //          __m128d; // dbl_neghalfmg
extern __m128d uX_ABI _uX_mm_const_mgdiv4_pd(void); //                 __m128d; // dbl_mgdiv4
extern __m128d uX_ABI _uX_mm_const_negmgdiv4_pd(void); //          __m128d; // dbl_negmgdiv4
extern __m128d uX_ABI _uX_mm_const_halfmgxmg_pd(void); //          __m128d; // dbl_halfmgxmg
extern __m128d uX_ABI _uX_mm_const_halfmgxsqrmg_pd(void); //           __m128d; // dbl_halfmgxsqrmg
extern __m128d uX_ABI _uX_mm_const_halfmgxcubemg_pd(void); //      __m128d; // dbl_halfmgxcubemg
extern __m128d uX_ABI _uX_mm_const_neghalfmgxmg_pd(void); //           __m128d; // dbl_neghalfmgxmg
extern __m128d uX_ABI _uX_mm_const_neghalfmgxsqrmg_pd(void); //        __m128d; // dbl_neghalfmgxsqrmg
extern __m128d uX_ABI _uX_mm_const_neghalfmgxcubemg_pd(void); //       __m128d; // dbl_neghalfmgxcubemg
extern __m128d uX_ABI _uX_mm_const_sqrmg_pd(void); //              __m128d; // dbl_sqrmg
extern __m128d uX_ABI _uX_mm_const_cubemg_pd(void); //                 __m128d; // dbl_cubemg
extern __m128d uX_ABI _uX_mm_const_sqrtmg_pd(void); //                 __m128d; // dbl_sqrtmg
extern __m128d uX_ABI _uX_mm_const_cbrtmg_pd(void); //                 __m128d; // dbl_cbrtmg
extern __m128d uX_ABI _uX_mm_const_rcpmg_pd(void); //              __m128d; // dbl_rcpmg
extern __m128d uX_ABI _uX_mm_const_rcpsqrmg_pd(void); //               __m128d; // dbl_rcpsqrmg
extern __m128d uX_ABI _uX_mm_const_rcpcubemg_pd(void); //          __m128d; // dbl_rcpcubemg
extern __m128d uX_ABI _uX_mm_const_rcpsqrtmg_pd(void); //          __m128d; // dbl_rcpsqrtmg
extern __m128d uX_ABI _uX_mm_const_rcpcbrtmg_pd(void); //          __m128d; // dbl_rcpcbrtmg

extern __m128d uX_ABI _uX_mm_const_2mg_pd(void); //                    __m128d; // dbl_2mg
extern __m128d uX_ABI _uX_mm_const_neg2mg_pd(void); //                 __m128d; // dbl_neg2mg
extern __m128d uX_ABI _uX_mm_const_sqr2mg_pd(void); //                 __m128d; // dbl_sqr2mg
extern __m128d uX_ABI _uX_mm_const_cube2mg_pd(void); //                __m128d; // dbl_cube2mg
extern __m128d uX_ABI _uX_mm_const_sqrt2mg_pd(void); //                __m128d; // dbl_sqrt2mg
extern __m128d uX_ABI _uX_mm_const_cbrt2mg_pd(void); //                __m128d; // dbl_cbrt2mg
extern __m128d uX_ABI _uX_mm_const_4mg_pd(void); //                    __m128d; // dbl_4mg
extern __m128d uX_ABI _uX_mm_const_neg4mg_pd(void); //                 __m128d; // dbl_neg4mg
extern __m128d uX_ABI _uX_mm_const_sqr4mg_pd(void); //                 __m128d; // dbl_sqr4mg
extern __m128d uX_ABI _uX_mm_const_cube4mg_pd(void); //                __m128d; // dbl_cube4mg
extern __m128d uX_ABI _uX_mm_const_sqrt4mg_pd(void); //                __m128d; // dbl_sqrt4mg
extern __m128d uX_ABI _uX_mm_const_cbrt4mg_pd(void); //                __m128d; // dbl_cbrt4mg
extern __m128d uX_ABI _uX_mm_const_rcp2mg_pd(void); //                 __m128d; // dbl_rcp2mg
extern __m128d uX_ABI _uX_mm_const_rcp4mg_pd(void); //                 __m128d; // dbl_rcp4mg

extern __m128d uX_ABI _uX_mm_const_e_pd(void); //                  __m128d; // dbl_e
extern __m128d uX_ABI _uX_mm_const_exp_pd(void); //                    __m128d; // dbl_exp
extern __m128d uX_ABI _uX_mm_const_loge_pd(void); //                   __m128d; // dbl_loge
extern __m128d uX_ABI _uX_mm_const_logehigh_pd(void); //               __m128d; // dbl_logehigh
extern __m128d uX_ABI _uX_mm_const_logelow_pd(void); //                __m128d; // dbl_logelow
extern __m128d uX_ABI _uX_mm_const_log2e_pd(void); //              __m128d; // dbl_log2e
extern __m128d uX_ABI _uX_mm_const_log2ehigh_pd(void); //          __m128d; // dbl_log2ehigh
extern __m128d uX_ABI _uX_mm_const_log2elow_pd(void); //               __m128d; // dbl_log2elow
extern __m128d uX_ABI _uX_mm_const_log10e_pd(void); //                 __m128d; // dbl_log10e
extern __m128d uX_ABI _uX_mm_const_rcplog2e_pd(void); //               __m128d; // dbl_rcplog2e
extern __m128d uX_ABI _uX_mm_const_rcplog10e_pd(void); //          __m128d; // dbl_rcplog10e
extern __m128d uX_ABI _uX_mm_const_log2t_pd(void); //              __m128d; // dbl_log2t
extern __m128d uX_ABI _uX_mm_const_log2_pd(void); //                   __m128d; // dbl_log2
extern __m128d uX_ABI _uX_mm_const_log2high_pd(void); //               __m128d; // dbl_log2high
extern __m128d uX_ABI _uX_mm_const_log2low_pd(void); //                __m128d; // dbl_log2low
extern __m128d uX_ABI _uX_mm_const_ln2_pd(void); //                    __m128d; // dbl_ln2
extern __m128d uX_ABI _uX_mm_const_ln2high_pd(void); //                __m128d; // dbl_ln2high
extern __m128d uX_ABI _uX_mm_const_ln2low_pd(void); //                 __m128d; // dbl_ln2low
extern __m128d uX_ABI _uX_mm_const_1divln2_pd(void); //                __m128d; // dbl_1divln2
extern __m128d uX_ABI _uX_mm_const_2divln2_pd(void); //                __m128d; // dbl_2divln2
extern __m128d uX_ABI _uX_mm_const_lnt_pd(void); //                    __m128d; // dbl_lnt
extern __m128d uX_ABI _uX_mm_const_lnthigh_pd(void); //                __m128d; // dbl_lnthigh
extern __m128d uX_ABI _uX_mm_const_lntlow_pd(void); //                 __m128d; // dbl_lntlow
extern __m128d uX_ABI _uX_mm_const_ln10_pd(void); //                   __m128d; // dbl_ln10
extern __m128d uX_ABI _uX_mm_const_sqrt2_pd(void); //              __m128d; // dbl_sqrt2
extern __m128d uX_ABI _uX_mm_const_rcpsqrt2_pd(void); //               __m128d; // dbl_rcpsqrt2
extern __m128d uX_ABI _uX_mm_const_sqrt2div2_pd(void); //          __m128d; // dbl_sqrt2div2
extern __m128d uX_ABI _uX_mm_const_sqrt2div2high_pd(void); //      __m128d; // dbl_sqrt2div2high
extern __m128d uX_ABI _uX_mm_const_sqrt2div2low_pd(void); //           __m128d; // dbl_sqrt2div2low
extern __m128d uX_ABI _uX_mm_const_sqrthalf_pd(void); //               __m128d; // dbl_sqrthalf
extern __m128d uX_ABI _uX_mm_const_sqrthalfhigh_pd(void); //           __m128d; // dbl_sqrthalfhigh
extern __m128d uX_ABI _uX_mm_const_sqrthalflow_pd(void); //            __m128d; // dbl_sqrthalflow
extern __m128d uX_ABI _uX_mm_const_pow2_pd(void); //                   __m128d; // dbl_pow2
extern __m128d uX_ABI _uX_mm_const_rcppow2_pd(void); //                __m128d; // dbl_rcppow2
extern __m128d uX_ABI _uX_mm_const_cbrt2_pd(void); //              __m128d; // dbl_cbrt2
extern __m128d uX_ABI _uX_mm_const_rcpcbrt2_pd(void); //               __m128d; // dbl_rcpcbrt2
extern __m128d uX_ABI _uX_mm_const_1div3_pd(void); //              __m128d; // dbl_1div3
extern __m128d uX_ABI _uX_mm_const_1div7_pd(void); //              __m128d; // dbl_1div7
extern __m128d uX_ABI _uX_mm_const_1div9_pd(void); //              __m128d; // dbl_1div9
extern __m128d uX_ABI _uX_mm_const_2div3_pd(void); //              __m128d; // dbl_2div3
extern __m128d uX_ABI _uX_mm_const_2div7_pd(void); //              __m128d; // dbl_2div7
extern __m128d uX_ABI _uX_mm_const_2div9_pd(void); //              __m128d; // dbl_2div9
extern __m128d uX_ABI _uX_mm_const_4div3_pd(void); //              __m128d; // dbl_4div3
extern __m128d uX_ABI _uX_mm_const_4div7_pd(void); //              __m128d; // dbl_4div7
extern __m128d uX_ABI _uX_mm_const_4div9_pd(void); //              __m128d; // dbl_4div9

extern __m128d uX_ABI _uX_mm_const_pi_pd(void); //                     __m128d; // dbl_pi
extern __m128d uX_ABI _uX_mm_const_pihigh_pd(void); //                 __m128d; // dbl_pihigh
extern __m128d uX_ABI _uX_mm_const_pilow_pd(void); //              __m128d; // dbl_pilow
extern __m128d uX_ABI _uX_mm_const_halfpi_pd(void); //                 __m128d; // dbl_halfpi
extern __m128d uX_ABI _uX_mm_const_2pi_pd(void); //                    __m128d; // dbl_2pi
extern __m128d uX_ABI _uX_mm_const_negpi_pd(void); //              __m128d; // dbl_negpi
extern __m128d uX_ABI _uX_mm_const_neghalfpi_pd(void); //          __m128d; // dbl_neghalfpi
extern __m128d uX_ABI _uX_mm_const_neg2pi_pd(void); //                 __m128d; // dbl_neg2pi
extern __m128d uX_ABI _uX_mm_const_rcppi_pd(void); //              __m128d; // dbl_rcppi
extern __m128d uX_ABI _uX_mm_const_invpi_pd(void); //              __m128d; // dbl_invpi
extern __m128d uX_ABI _uX_mm_const_rcp2pi_pd(void); //                 __m128d; // dbl_rcp2pi
extern __m128d uX_ABI _uX_mm_const_inv2pi_pd(void); //                 __m128d; // dbl_inv2pi
extern __m128d uX_ABI _uX_mm_const_pidiv2_pd(void); //                 __m128d; // dbl_pidiv2
extern __m128d uX_ABI _uX_mm_const_pidiv2high_pd(void); //             __m128d; // dbl_pidiv2high
extern __m128d uX_ABI _uX_mm_const_pidiv2low_pd(void); //          __m128d; // dbl_pidiv2low
extern __m128d uX_ABI _uX_mm_const_pidiv4_pd(void); //                 __m128d; // dbl_pidiv4
extern __m128d uX_ABI _uX_mm_const_pidiv4high_pd(void); //             __m128d; // dbl_pidiv4high
extern __m128d uX_ABI _uX_mm_const_pidiv4low_pd(void); //          __m128d; // dbl_pidiv4low
extern __m128d uX_ABI _uX_mm_const_pix3div4_pd(void); //               __m128d; // dbl_pix3div4
extern __m128d uX_ABI _uX_mm_const_sqrtpi_pd(void); //                 __m128d; // dbl_sqrtpi
extern __m128d uX_ABI _uX_mm_const_sqrt2pi_pd(void); //                __m128d; // dbl_sqrt2pi
extern __m128d uX_ABI _uX_mm_const_sqrt2pihigh_pd(void); //            __m128d; // dbl_sqrt2pihigh
extern __m128d uX_ABI _uX_mm_const_sqrt2pilow_pd(void); //             __m128d; // dbl_sqrt2pilow
extern __m128d uX_ABI _uX_mm_const_rcpsqrtpi_pd(void); //          __m128d; // dbl_rcpsqrtpi
extern __m128d uX_ABI _uX_mm_const_rcpsqrt2pi_pd(void); //             __m128d; // dbl_rcpsqrt2pi
extern __m128d uX_ABI _uX_mm_const_sqrtpidiv2_pd(void); //             __m128d; // dbl_sqrtpidiv2
extern __m128d uX_ABI _uX_mm_const_sqrtpidiv2high_pd(void); //         __m128d; // dbl_sqrtpidiv2high
extern __m128d uX_ABI _uX_mm_const_sqrt2pidiv2_pd(void); //            __m128d; // dbl_sqrt2pidiv2
extern __m128d uX_ABI _uX_mm_const_sqrt2pidiv2high_pd(void); //        __m128d; // dbl_sqrt2pidiv2high
extern __m128d uX_ABI _uX_mm_const_sqrt2pidiv2low_pd(void); //         __m128d; // dbl_sqrt2pidiv2low
extern __m128d uX_ABI _uX_mm_const_2divpi_pd(void); //                 __m128d; // dbl_2divpi
extern __m128d uX_ABI _uX_mm_const_2div2pi_pd(void); //                __m128d; // dbl_2div2pi
extern __m128d uX_ABI _uX_mm_const_2divsqrtpi_pd(void); //             __m128d; // dbl_2divsqrtpi
extern __m128d uX_ABI _uX_mm_const_2divsqrt2pi_pd(void); //            __m128d; // dbl_2divsqrt2pi
extern __m128d uX_ABI _uX_mm_const_sqrt2divpi_pd(void); //             __m128d; // dbl_sqrt2divpi
extern __m128d uX_ABI _uX_mm_const_logpi_pd(void); //              __m128d; // dbl_logpi
extern __m128d uX_ABI _uX_mm_const_log2pi_pd(void); //                 __m128d; // dbl_log2pi
extern __m128d uX_ABI _uX_mm_const_lnpi_pd(void); //                   __m128d; // dbl_lnpi
extern __m128d uX_ABI _uX_mm_const_ln2pi_pd(void); //              __m128d; // dbl_ln2pi
extern __m128d uX_ABI _uX_mm_const_powpi_pd(void); //              __m128d; // dbl_powpi
extern __m128d uX_ABI _uX_mm_const_rcppowpi_pd(void); //               __m128d; // dbl_rcppowpi
extern __m128d uX_ABI _uX_mm_const_pow2pi_pd(void); //                 __m128d; // dbl_pow2pi
extern __m128d uX_ABI _uX_mm_const_rcppow2pi_pd(void); //          __m128d; // dbl_rcppow2pi
extern __m128d uX_ABI _uX_mm_const_cbrtpi_pd(void); //                 __m128d; // dbl_cbrtpi
extern __m128d uX_ABI _uX_mm_const_rcpcbrtpi_pd(void); //          __m128d; // dbl_rcpcbrtpi
extern __m128d uX_ABI _uX_mm_const_cbrt2pi_pd(void); //                __m128d; // dbl_cbrt2pi
extern __m128d uX_ABI _uX_mm_const_rcpcbrt2pi_pd(void); //             __m128d; // dbl_rcpcbrt2pi

extern __m128d uX_ABI _uX_mm_const_ln2x1024_pd(void); //               __m128d; // dbl_ln2x1024
extern __m128d uX_ABI _uX_mm_const_ln2x1025_pd(void); //               __m128d; // dbl_ln2x1025
extern __m128d uX_ABI _uX_mm_const_ln2x1075_pd(void); //               __m128d; // dbl_ln2x1075
extern __m128d uX_ABI _uX_mm_const_log2x1024_pd(void); //          __m128d; // dbl_log2x1024
extern __m128d uX_ABI _uX_mm_const_log2x1075_pd(void); //          __m128d; // dbl_log2x1075

extern __m128d uX_ABI _uX_mm_const_pow2tom126_pd(void); //             __m128d; // dbl_pow2tom126
extern __m128d uX_ABI _uX_mm_const_pow2to126_pd(void); //          __m128d; // dbl_pow2to126
extern __m128d uX_ABI _uX_mm_const_normhuge_pd(void); //               __m128d; // dbl_normhuge
extern __m128d uX_ABI _uX_mm_const_pow2to23_pd(void); //               __m128d; // dbl_pow2to23
extern __m128d uX_ABI _uX_mm_const_pow2to24_pd(void); //               __m128d; // dbl_pow2to24
extern __m128d uX_ABI _uX_mm_const_maxi32pow2to23_pd(void); //         __m128d; // dbl_maxi32pow2to23
extern __m128d uX_ABI _uX_mm_const_pow2to31_pd(void); //               __m128d; // dbl_pow2to31
extern __m128d uX_ABI _uX_mm_const_pow2to32_pd(void); //               __m128d; // dbl_pow2to32
extern __m128d uX_ABI _uX_mm_const_pow2to52_pd(void); //               __m128d; // dbl_pow2to52
extern __m128d uX_ABI _uX_mm_const_pow2to53_pd(void); //               __m128d; // dbl_pow2to53
extern __m128d uX_ABI _uX_mm_const_pow2to54_pd(void); //               __m128d; // dbl_pow2to54
extern __m128d uX_ABI _uX_mm_const_pow2tom54_pd(void); //          __m128d; // dbl_pow2tom54
extern __m128d uX_ABI _uX_mm_const_pow2to62_pd(void); //               __m128d; // dbl_pow2to62
extern __m128d uX_ABI _uX_mm_const_maxi64pow2to52_pd(void); //     __m128d; // dbl_maxi64pow2to52
extern __m128d uX_ABI _uX_mm_const_pow2to63_pd(void); //               __m128d; // dbl_pow2to63
extern __m128d uX_ABI _uX_mm_const_pow2to64_pd(void); //               __m128d; // dbl_pow2to64
extern __m128d uX_ABI _uX_mm_const_pow2tom1022_pd(void); //            __m128d; // dbl_pow2tom1022
extern __m128d uX_ABI _uX_mm_const_trigploss_pd(void); //          __m128d; // dbl_trigploss

extern __m128d uX_ABI _uX_mm_const_degtorad_pd(void); //               __m128d; // dbl_degtorad
extern __m128d uX_ABI _uX_mm_const_radtodeg_pd(void); //               __m128d; // dbl_radtodeg

extern __m128d uX_ABI _uX_mm_const_degtograd_pd(void); //          __m128d; // dbl_degtograd
extern __m128d uX_ABI _uX_mm_const_gradtodeg_pd(void); //          __m128d; // dbl_gradtodeg

extern __m128d uX_ABI _uX_mm_const_radtograd_pd(void); //          __m128d; // dbl_radtograd
extern __m128d uX_ABI _uX_mm_const_gradtorad_pd(void); //          __m128d; // dbl_gradtorad

extern __m128d uX_ABI _uX_mm_const_sungravity_pd(void); //             __m128d; // dbl_sungravity
extern __m128d uX_ABI _uX_mm_const_jupitergravity_pd(void); //         __m128d; // dbl_jupitergravity
extern __m128d uX_ABI _uX_mm_const_neptunegravity_pd(void); //         __m128d; // dbl_neptunegravity
extern __m128d uX_ABI _uX_mm_const_saturngravity_pd(void); //      __m128d; // dbl_saturngravity
extern __m128d uX_ABI _uX_mm_const_uranusgravity_pd(void); //      __m128d; // dbl_uranusgravity
extern __m128d uX_ABI _uX_mm_const_earthgravity_pd(void); //           __m128d; // dbl_earthgravity
extern __m128d uX_ABI _uX_mm_const_venusgravity_pd(void); //           __m128d; // dbl_venusgravity
extern __m128d uX_ABI _uX_mm_const_marsgravity_pd(void); //            __m128d; // dbl_marsgravity
extern __m128d uX_ABI _uX_mm_const_mercurygravity_pd(void); //         __m128d; // dbl_mercurygravity
extern __m128d uX_ABI _uX_mm_const_moongravity_pd(void); //            __m128d; // dbl_moongravity
extern __m128d uX_ABI _uX_mm_const_plutogravity_pd(void); //           __m128d; // dbl_plutogravity

extern __m128d uX_ABI _uX_mm_const_kmtoinch_pd(void); //               __m128d; // dbl_kmtoinch
extern __m128d uX_ABI _uX_mm_const_kmtofeet_pd(void); //               __m128d; // dbl_kmtofeet 
extern __m128d uX_ABI _uX_mm_const_kmtoyards_pd(void); //          __m128d; // dbl_kmtoyards
extern __m128d uX_ABI _uX_mm_const_kmtomiles_pd(void); //          __m128d; // dbl_kmtomiles

extern __m128d uX_ABI _uX_mm_const_metoinch_pd(void); //               __m128d; // dbl_metoinch
extern __m128d uX_ABI _uX_mm_const_metofeet_pd(void); //               __m128d; // dbl_metofeet
extern __m128d uX_ABI _uX_mm_const_metoyards_pd(void); //          __m128d; // dbl_metoyards
extern __m128d uX_ABI _uX_mm_const_metomiles_pd(void); //          __m128d; // dbl_metomiles

extern __m128d uX_ABI _uX_mm_const_cmtoinch_pd(void); //               __m128d; // dbl_cmtoinch
extern __m128d uX_ABI _uX_mm_const_cmtofeet_pd(void); //               __m128d; // dbl_cmtofeet
extern __m128d uX_ABI _uX_mm_const_cmtoyards_pd(void); //          __m128d; // dbl_cmtoyards
extern __m128d uX_ABI _uX_mm_const_cmtomiles_pd(void); //          __m128d; // dbl_cmtomiles

extern __m128d uX_ABI _uX_mm_const_milltoinch_pd(void); //             __m128d; // dbl_milltoinch
extern __m128d uX_ABI _uX_mm_const_milltofeet_pd(void); //             __m128d; // dbl_milltofeet
extern __m128d uX_ABI _uX_mm_const_milltoyards_pd(void); //            __m128d; // dbl_milltoyards
extern __m128d uX_ABI _uX_mm_const_milltomiles_pd(void); //            __m128d; // dbl_milltomiles

extern __m128d uX_ABI _uX_mm_const_inchtomill_pd(void); //             __m128d; // dbl_inchtomill
extern __m128d uX_ABI _uX_mm_const_inchtocm_pd(void); //               __m128d; // dbl_inchtocm
extern __m128d uX_ABI _uX_mm_const_inchtome_pd(void); //               __m128d; // dbl_inchtome
extern __m128d uX_ABI _uX_mm_const_inchtokm_pd(void); //               __m128d; // dbl_inchtokm
extern __m128d uX_ABI _uX_mm_const_inchtofeet_pd(void); //             __m128d; // dbl_inchtofeet
extern __m128d uX_ABI _uX_mm_const_inchtoyards_pd(void); //            __m128d; // dbl_inchtoyards
extern __m128d uX_ABI _uX_mm_const_inchtomiles_pd(void); //            __m128d; // dbl_inchtomiles

extern __m128d uX_ABI _uX_mm_const_feettomill_pd(void); //             __m128d; // dbl_feettomill
extern __m128d uX_ABI _uX_mm_const_feettocm_pd(void); //               __m128d; // dbl_feettocm
extern __m128d uX_ABI _uX_mm_const_feettome_pd(void); //               __m128d; // dbl_feettome
extern __m128d uX_ABI _uX_mm_const_feettokm_pd(void); //               __m128d; // dbl_feettokm
extern __m128d uX_ABI _uX_mm_const_feettoinch_pd(void); //             __m128d; // dbl_feettoinch
extern __m128d uX_ABI _uX_mm_const_feettoyards_pd(void); //            __m128d; // dbl_feettoyards
extern __m128d uX_ABI _uX_mm_const_feettomiles_pd(void); //            __m128d; // dbl_feettomiles

extern __m128d uX_ABI _uX_mm_const_yardstomill_pd(void); //            __m128d; // dbl_yardstomill
extern __m128d uX_ABI _uX_mm_const_yardstocm_pd(void); //          __m128d; // dbl_yardstocm
extern __m128d uX_ABI _uX_mm_const_yardstome_pd(void); //          __m128d; // dbl_yardstome
extern __m128d uX_ABI _uX_mm_const_yardstokm_pd(void); //          __m128d; // dbl_yardstokm
extern __m128d uX_ABI _uX_mm_const_yardstoinch_pd(void); //            __m128d; // dbl_yardstoinch
extern __m128d uX_ABI _uX_mm_const_yardstofeet_pd(void); //            __m128d; // dbl_yardstofeet
extern __m128d uX_ABI _uX_mm_const_yardstomiles_pd(void); //           __m128d; // dbl_yardstomiles

extern __m128d uX_ABI _uX_mm_const_milestomill_pd(void); //            __m128d; // dbl_milestomill
extern __m128d uX_ABI _uX_mm_const_milestocm_pd(void); //          __m128d; // dbl_milestocm
extern __m128d uX_ABI _uX_mm_const_milestome_pd(void); //          __m128d; // dbl_milestome
extern __m128d uX_ABI _uX_mm_const_milestoinch_pd(void); //            __m128d; // dbl_milestokm
extern __m128d uX_ABI _uX_mm_const_milestoinch_pd(void); //            __m128d; // dbl_milestoinch
extern __m128d uX_ABI _uX_mm_const_milestofeet_pd(void); //            __m128d; // dbl_milestofeet
extern __m128d uX_ABI _uX_mm_const_milestoyards_pd(void); //           __m128d; // dbl_milestoyards

extern __m128d uX_ABI _uX_mm_const_kmphtomeps_pd(void); //             __m128d; // dbl_kmphtomeps
extern __m128d uX_ABI _uX_mm_const_kmphtokmps_pd(void); //             __m128d; // dbl_kmphtokmps
extern __m128d uX_ABI _uX_mm_const_kmphtomepm_pd(void); //             __m128d; // dbl_kmphtomepm
extern __m128d uX_ABI _uX_mm_const_kmphtomilesph_pd(void); //      __m128d; // dbl_kmphtomilesph
extern __m128d uX_ABI _uX_mm_const_kmphtomilesps_pd(void); //      __m128d; // dbl_kmphtomilesps
extern __m128d uX_ABI _uX_mm_const_kmphtofeetps_pd(void); //           __m128d; // dbl_kmphtofeetps
extern __m128d uX_ABI _uX_mm_const_kmphtofeetpm_pd(void); //           __m128d; // dbl_kmphtofeetpm

extern __m128d uX_ABI _uX_mm_const_kmpstomeps_pd(void); //             __m128d; // dbl_kmpstomeps
extern __m128d uX_ABI _uX_mm_const_kmpstokmph_pd(void); //             __m128d; // dbl_kmpstokmph
extern __m128d uX_ABI _uX_mm_const_kmpstomepm_pd(void); //             __m128d; // dbl_kmpstomepm
extern __m128d uX_ABI _uX_mm_const_kmpstomilesph_pd(void); //      __m128d; // dbl_kmpstomilesph
extern __m128d uX_ABI _uX_mm_const_kmpstomilesps_pd(void); //      __m128d; // dbl_kmpstomilesps
extern __m128d uX_ABI _uX_mm_const_kmpstofeetps_pd(void); //           __m128d; // dbl_kmpstofeetps
extern __m128d uX_ABI _uX_mm_const_kmpstofeetpm_pd(void); //           __m128d; // dbl_kmpstofeetpm

extern __m128d uX_ABI _uX_mm_const_mepstokmph_pd(void); //             __m128d; // dbl_mepstokmph
extern __m128d uX_ABI _uX_mm_const_mepstokmps_pd(void); //             __m128d; // dbl_mepstokmps
extern __m128d uX_ABI _uX_mm_const_mepstomepm_pd(void); //             __m128d; // dbl_mepstomepm
extern __m128d uX_ABI _uX_mm_const_mepstomilesph_pd(void); //      __m128d; // dbl_mepstomilesph
extern __m128d uX_ABI _uX_mm_const_mepstomilesps_pd(void); //      __m128d; // dbl_mepstomilesps
extern __m128d uX_ABI _uX_mm_const_mepstofeetps_pd(void); //           __m128d; // dbl_mepstofeetps
extern __m128d uX_ABI _uX_mm_const_mepstofeetpm_pd(void); //           __m128d; // dbl_mepstofeetpm

extern __m128d uX_ABI _uX_mm_const_mepmtokmph_pd(void); //             __m128d; // dbl_mepmtokmph
extern __m128d uX_ABI _uX_mm_const_mepmtokmps_pd(void); //             __m128d; // dbl_mepmtokmps
extern __m128d uX_ABI _uX_mm_const_mepmtomeps_pd(void); //             __m128d; // dbl_mepmtomeps
extern __m128d uX_ABI _uX_mm_const_mepmtomilesph_pd(void); //      __m128d; // dbl_mepmtomilesph
extern __m128d uX_ABI _uX_mm_const_mepmtomilesps_pd(void); //      __m128d; // dbl_mepmtomilesps
extern __m128d uX_ABI _uX_mm_const_mepmtofeetps_pd(void); //           __m128d; // dbl_mepmtofeetps
extern __m128d uX_ABI _uX_mm_const_mepmtofeetpm_pd(void); //           __m128d; // dbl_mepmtofeetpm

extern __m128d uX_ABI _uX_mm_const_milesphtokmph_pd(void); //      __m128d; // dbl_milesphtokmph
extern __m128d uX_ABI _uX_mm_const_milesphtokmps_pd(void); //      __m128d; // dbl_milesphtokmps
extern __m128d uX_ABI _uX_mm_const_milesphtomeps_pd(void); //      __m128d; // dbl_milesphtomeps
extern __m128d uX_ABI _uX_mm_const_milesphtomepm_pd(void); //      __m128d; // dbl_milesphtomepm
extern __m128d uX_ABI _uX_mm_const_milesphtomilesps_pd(void); //       __m128d; // dbl_milesphtomilesps
extern __m128d uX_ABI _uX_mm_const_milesphtofeetps_pd(void); //        __m128d; // dbl_milesphtofeetps
extern __m128d uX_ABI _uX_mm_const_milesphtofeetpm_pd(void); //        __m128d; // dbl_milesphtofeetpm

extern __m128d uX_ABI _uX_mm_const_milespstokmph_pd(void); //      __m128d; // dbl_milespstokmph
extern __m128d uX_ABI _uX_mm_const_milespstokmps_pd(void); //      __m128d; // dbl_milespstokmps
extern __m128d uX_ABI _uX_mm_const_milespstomeps_pd(void); //      __m128d; // dbl_milespstomeps
extern __m128d uX_ABI _uX_mm_const_milespstomepm_pd(void); //      __m128d; // dbl_milespstomepm
extern __m128d uX_ABI _uX_mm_const_milespstomilespm_pd(void); //       __m128d; // dbl_milespstomilespm
extern __m128d uX_ABI _uX_mm_const_milespstofeetps_pd(void); //        __m128d; // dbl_milespstofeetps
extern __m128d uX_ABI _uX_mm_const_milespstofeetpm_pd(void); //        __m128d; // dbl_milespstofeetpm

extern __m128d uX_ABI _uX_mm_const_feetpstokmph_pd(void); //           __m128d; // dbl_feetpstokmph
extern __m128d uX_ABI _uX_mm_const_feetpstokmps_pd(void); //           __m128d; // dbl_feetpstokmps
extern __m128d uX_ABI _uX_mm_const_feetpstomeps_pd(void); //           __m128d; // dbl_feetpstomeps
extern __m128d uX_ABI _uX_mm_const_feetpstomepm_pd(void); //           __m128d; // dbl_feetpstomepm
extern __m128d uX_ABI _uX_mm_const_feetpstomilesph_pd(void); //        __m128d; // dbl_feetpstomilesph
extern __m128d uX_ABI _uX_mm_const_feetpstomilesps_pd(void); //        __m128d; // dbl_feetpstomilesps
extern __m128d uX_ABI _uX_mm_const_feetpstofeetpm_pd(void); //         __m128d; // dbl_feetpstofeetpm

extern __m128d uX_ABI _uX_mm_const_feetpmtokmph_pd(void); //           __m128d; // dbl_feetpmtokmph
extern __m128d uX_ABI _uX_mm_const_feetpmtokmps_pd(void); //           __m128d; // dbl_feetpmtokmps
extern __m128d uX_ABI _uX_mm_const_feetpmtomeps_pd(void); //           __m128d; // dbl_feetpmtomeps
extern __m128d uX_ABI _uX_mm_const_feetpmtomepm_pd(void); //           __m128d; // dbl_feetpmtomepm
extern __m128d uX_ABI _uX_mm_const_feetpmtomilesph_pd(void); //        __m128d; // dbl_feetpmtomilesph
extern __m128d uX_ABI _uX_mm_const_feetpmtomilesps_pd(void); //        __m128d; // dbl_feetpmtomilesps
extern __m128d uX_ABI _uX_mm_const_feetpmtofeetps_pd(void); //         __m128d; // dbl_feetpmtofeetps

extern __m128d uX_ABI _uX_mm_const_soundspeedp50c_pd(void); //         __m128d; // dbl_soundspeedp50c
extern __m128d uX_ABI _uX_mm_const_soundspeedp45c_pd(void); //         __m128d; // dbl_soundspeedp45c
extern __m128d uX_ABI _uX_mm_const_soundspeedp40c_pd(void); //         __m128d; // dbl_soundspeedp40c
extern __m128d uX_ABI _uX_mm_const_soundspeedp35c_pd(void); //         __m128d; // dbl_soundspeedp35c
extern __m128d uX_ABI _uX_mm_const_soundspeedp30c_pd(void); //         __m128d; // dbl_soundspeedp30c
extern __m128d uX_ABI _uX_mm_const_soundspeedp25c_pd(void); //         __m128d; // dbl_soundspeedp25c
extern __m128d uX_ABI _uX_mm_const_soundspeedp20c_pd(void); //         __m128d; // dbl_soundspeedp20c
extern __m128d uX_ABI _uX_mm_const_soundspeedp15c_pd(void); //         __m128d; // dbl_soundspeedp15c
extern __m128d uX_ABI _uX_mm_const_soundspeedp10c_pd(void); //         __m128d; // dbl_soundspeedp10c
extern __m128d uX_ABI _uX_mm_const_soundspeedp5c_pd(void); //      __m128d; // dbl_soundspeedp5c
extern __m128d uX_ABI _uX_mm_const_soundspeed0c_pd(void); //           __m128d; // dbl_soundspeed0c
extern __m128d uX_ABI _uX_mm_const_soundspeedn5c_pd(void); //      __m128d; // dbl_soundspeedn5c
extern __m128d uX_ABI _uX_mm_const_soundspeedn10c_pd(void); //         __m128d; // dbl_soundspeedn10c
extern __m128d uX_ABI _uX_mm_const_soundspeedn15c_pd(void); //         __m128d; // dbl_soundspeedn15c
extern __m128d uX_ABI _uX_mm_const_soundspeedn20c_pd(void); //         __m128d; // dbl_soundspeedn20c
extern __m128d uX_ABI _uX_mm_const_soundspeedn25c_pd(void); //         __m128d; // dbl_soundspeedn25c
extern __m128d uX_ABI _uX_mm_const_soundspeedn30c_pd(void); //         __m128d; // dbl_soundspeedn30c
extern __m128d uX_ABI _uX_mm_const_soundspeedn35c_pd(void); //         __m128d; // dbl_soundspeedn35c
extern __m128d uX_ABI _uX_mm_const_soundspeedn40c_pd(void); //         __m128d; // dbl_soundspeedn40c
extern __m128d uX_ABI _uX_mm_const_soundspeedn45c_pd(void); //         __m128d; // dbl_soundspeedn45c
extern __m128d uX_ABI _uX_mm_const_soundspeedn50c_pd(void); //         __m128d; // dbl_soundspeedn50c

extern __m128d uX_ABI _uX_mm_const_schscale_pd(void); //               __m128d; // dbl_schscale
extern __m128d uX_ABI _uX_mm_const_thscale_pd(void); //                __m128d; // dbl_thscale

extern __m128d uX_ABI _uX_mm_const_expest1_pd(void); //                __m128d; // dbl_expest1
extern __m128d uX_ABI _uX_mm_const_expest2_pd(void); //                __m128d; // dbl_expest2
extern __m128d uX_ABI _uX_mm_const_expest3_pd(void); //                __m128d; // dbl_expest3
extern __m128d uX_ABI _uX_mm_const_expest4_pd(void); //                __m128d; // dbl_expest4
extern __m128d uX_ABI _uX_mm_const_expest5_pd(void); //                __m128d; // dbl_expest5
extern __m128d uX_ABI _uX_mm_const_expest6_pd(void); //                __m128d; // dbl_expest6
extern __m128d uX_ABI _uX_mm_const_expest7_pd(void); //                __m128d; // dbl_expest7
extern __m128d uX_ABI _uX_mm_const_logest0_pd(void); //                __m128d; // dbl_logest0
extern __m128d uX_ABI _uX_mm_const_logest1_pd(void); //                __m128d; // dbl_logest1
extern __m128d uX_ABI _uX_mm_const_logest2_pd(void); //                __m128d; // dbl_logest2
extern __m128d uX_ABI _uX_mm_const_logest3_pd(void); //                __m128d; // dbl_logest3
extern __m128d uX_ABI _uX_mm_const_logest4_pd(void); //                __m128d; // dbl_logest4
extern __m128d uX_ABI _uX_mm_const_logest5_pd(void); //                __m128d; // dbl_logest5
extern __m128d uX_ABI _uX_mm_const_logest6_pd(void); //                __m128d; // dbl_logest6
extern __m128d uX_ABI _uX_mm_const_logest7_pd(void); //                __m128d; // dbl_logest7

	//;; double low;;

	//;;             sincos template, double precision
extern __m128d uX_ABI _uX_mm_const_0e_P0sin_sd(void); //          __m128d, (-1.66666666666666307295e-01), dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_P1sin_sd(void); //          __m128d, (8.33333333332211858878e-03), dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_P2sin_sd(void); //          __m128d, (-1.98412698295895385996e-04), dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_P3sin_sd(void); //          __m128d, (2.75573136213857245213e-06), dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_P4sin_sd(void); //          __m128d, (-2.50507477628578072866e-08), dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_P5sin_sd(void); //          __m128d, (1.58962301576546568060e-010), dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_P0cos_sd(void); //          __m128d, (4.16666666666665929218e-02), dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_P1cos_sd(void); //          __m128d, (-1.38888888888730564116e-03), dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_P2cos_sd(void); //          __m128d, (2.48015872888517045348e-05), dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_P3cos_sd(void); //          __m128d, (-2.75573141792967388112e-07), dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_P4cos_sd(void); //          __m128d, (2.08757008419747316778e-09), dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_P5cos_sd(void); //          __m128d, (-1.13585365213876817300e-011), dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_DP1_sd(void); //          __m128d, 1.570796310901641845703125, dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_DP2_sd(void); //          __m128d, 0.00000001589325471229585673428, dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_DP3_sd(void); //          __m128d, (6.12323399573676588614e-017), dbl_false
	//;;             sincos template, double precision

extern __m128d uX_ABI _uX_mm_const_0e_1lshl3_sd(void); //                  __m128d; // dbl_1lshl3; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl4_sd(void); //                  __m128d; // dbl_1lshl4; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl7_sd(void); //                  __m128d; // dbl_1lshl7; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl8_sd(void); //                  __m128d; // dbl_1lshl8; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl11_sd(void); //             __m128d; // dbl_1lshl11; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl12_sd(void); //             __m128d; // dbl_1lshl12; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl15_sd(void); //             __m128d; // dbl_1lshl15; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl16_sd(void); //             __m128d; // dbl_1lshl16; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl19_sd(void); //             __m128d; // dbl_1lshl19; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl20_sd(void); //             __m128d; // dbl_1lshl20; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl23_sd(void); //             __m128d; // dbl_1lshl23; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl24_sd(void); //             __m128d; // dbl_1lshl24; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl27_sd(void); //             __m128d; // dbl_1lshl27; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl28_sd(void); //             __m128d; // dbl_1lshl28; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl31_sd(void); //             __m128d; // dbl_1lshl31; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl32_sd(void); //             __m128d; // dbl_1lshl32; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl35_sd(void); //             __m128d; // dbl_1lshl35; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl36_sd(void); //             __m128d; // dbl_1lshl36; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl39_sd(void); //             __m128d; // dbl_1lshl39; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl40_sd(void); //             __m128d; // dbl_1lshl40; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl43_sd(void); //             __m128d; // dbl_1lshl43; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl44_sd(void); //             __m128d; // dbl_1lshl44; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl47_sd(void); //             __m128d; // dbl_1lshl47; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl48_sd(void); //             __m128d; // dbl_1lshl48; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl51_sd(void); //             __m128d; // dbl_1lshl51; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl52_sd(void); //             __m128d; // dbl_1lshl52; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl55_sd(void); //             __m128d; // dbl_1lshl55; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl56_sd(void); //             __m128d; // dbl_1lshl56; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl59_sd(void); //             __m128d; // dbl_1lshl59; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl60_sd(void); //             __m128d; // dbl_1lshl60; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1lshl63_sd(void); //             __m128d; // dbl_1lshl63; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl3_sd(void); //               __m128d; // dbl_neg1lshl3; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl4_sd(void); //               __m128d; // dbl_neg1lshl4; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl7_sd(void); //               __m128d; // dbl_neg1lshl7; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl8_sd(void); //               __m128d; // dbl_neg1lshl8; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl11_sd(void); //              __m128d; // dbl_neg1lshl11; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl12_sd(void); //              __m128d; // dbl_neg1lshl12; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl15_sd(void); //              __m128d; // dbl_neg1lshl15; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl16_sd(void); //              __m128d; // dbl_neg1lshl16; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl19_sd(void); //              __m128d; // dbl_neg1lshl19; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl20_sd(void); //              __m128d; // dbl_neg1lshl20; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl23_sd(void); //              __m128d; // dbl_neg1lshl23; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl24_sd(void); //              __m128d; // dbl_neg1lshl24; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl27_sd(void); //              __m128d; // dbl_neg1lshl27; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl28_sd(void); //              __m128d; // dbl_neg1lshl28; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl31_sd(void); //              __m128d; // dbl_neg1lshl31; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl32_sd(void); //              __m128d; // dbl_neg1lshl32; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl35_sd(void); //              __m128d; // dbl_neg1lshl35; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl36_sd(void); //              __m128d; // dbl_neg1lshl36; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl39_sd(void); //              __m128d; // dbl_neg1lshl39; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl40_sd(void); //              __m128d; // dbl_neg1lshl40; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl43_sd(void); //              __m128d; // dbl_neg1lshl43; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl44_sd(void); //              __m128d; // dbl_neg1lshl44; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl47_sd(void); //              __m128d; // dbl_neg1lshl47; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl48_sd(void); //              __m128d; // dbl_neg1lshl48; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl51_sd(void); //              __m128d; // dbl_neg1lshl51; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl52_sd(void); //              __m128d; // dbl_neg1lshl52; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl55_sd(void); //              __m128d; // dbl_neg1lshl55; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl56_sd(void); //              __m128d; // dbl_neg1lshl56; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl59_sd(void); //              __m128d; // dbl_neg1lshl59; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl60_sd(void); //              __m128d; // dbl_neg1lshl60; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1lshl63_sd(void); //              __m128d; // dbl_neg1lshl63; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_false_sd(void); //                   __m128q; // dbl_false; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_true_sd(void); //                    __m128q; // dbl_true; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_error_sd(void); //                   __m128q; // dbl_error; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_magic_sd(void); //                   __m128q; // dbl_magic; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sign_sd(void); //                    __m128q; // dbl_sign; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_invsign_sd(void); //             __m128q; // dbl_invsign; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_inf_sd(void); //                 __m128q; // dbl_inf; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_fin_sd(void); //                 __m128q; // dbl_fin; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_invinf_sd(void); //                  __m128q; // dbl_invinf; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neginf_sd(void); //                  __m128q; // dbl_neginf; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_nan_sd(void); //                 __m128q; // dbl_nan; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_qnan_sd(void); //                    __m128q; // dbl_qnan; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_negqnan_sd(void); //             __m128q; // dbl_negqnan; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_nantest_sd(void); //             __m128q; // dbl_nantest; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_abs_sd(void); //                 __m128q; // dbl_abs; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_min_sd(void); //                 __m128d; // dbl_min; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_max_sd(void); //                 __m128d; // dbl_max; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_nofraction_sd(void); //              __m128d; // dbl_nofraction; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mindenorm_sd(void); //               __m128d; // dbl_mindenorm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_denormlimit_sd(void); //         __m128d; // dbl_denormlimit; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_minnormal_sd(void); //               __m128d; // dbl_minnormal; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_maxnormal_sd(void); //               __m128d; // dbl_maxnormal; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_decdig_sd(void); //                  __m128d; // dbl_decdig; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_dig_sd(void); //                 __m128d; // dbl_dig; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_negdecdig_sd(void); //               __m128d; // dbl_negdecdig; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_negdig_sd(void); //                  __m128d; // dbl_negdig; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_eps_sd(void); //                 __m128d; // dbl_eps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_epsilon_sd(void); //             __m128d; // dbl_epsilon; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_normeps_sd(void); //             __m128d; // dbl_normeps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_guard_sd(void); //                   __m128d; // dbl_guard; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mantpow2_sd(void); //                __m128d; // dbl_mantpow2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_maxmantpow2_sd(void); //         __m128d; // dbl_maxmantpow2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mantdig_sd(void); //             __m128d; // dbl_mantdig; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mant_sd(void); //                    __m128d; // dbl_mant; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_negmantdig_sd(void); //              __m128d; // dbl_negmantdig; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_negmant_sd(void); //             __m128d; // dbl_negmant; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_maxexp_sd(void); //                  __m128d; // dbl_maxexp; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_expsign_sd(void); //             __m128d; // dbl_expsign; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_exp_sd(void); //                 __m128d; // dbl_exp; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_negmaxexp_sd(void); //               __m128d; // dbl_negmaxexp; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_negexpsign_sd(void); //              __m128d; // dbl_negexpsign; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_negexp_sd(void); //                  __m128d; // dbl_negexp; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_subnormalexp_sd(void); //            __m128d; // dbl_subnormalexp; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_minexp_sd(void); //                  __m128d; // dbl_minexp; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_maxdecexp_sd(void); //               __m128d; // dbl_maxdecexp; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_negmaxdecexp_sd(void); //            __m128d; // dbl_negmaxdecexp; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mindecexp_sd(void); //               __m128d; // dbl_mindecexp; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_expfield_sd(void); //                __m128d; // dbl_expfield; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mantfield_sd(void); //               __m128d; // dbl_mantfield; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_norm_sd(void); //                    __m128d; // dbl_norm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_radix_sd(void); //                   __m128d; // dbl_radix; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rounds_sd(void); //                  __m128d; // dbl_rounds; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_subdec_sd(void); //                  __m128d; // dbl_subdec; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrtmax_sd(void); //             __m128d; // dbl_sqrtmax; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_smallnormal_sd(void); //         __m128d; // dbl_smallnormal; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_halfminuseps_sd(void); //            __m128d; // dbl_halfminuseps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_trueint_sd(void); //             __m128d; // dbl_trueint; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_byte_sd(void); //                    __m128d; // dbl_byte; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_byte_even_sd(void); //           __m128d; // dbl_byte_even; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_byte_odd_sd(void); //                __m128d; // dbl_byte_odd; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_4low_sd(void); //                    __m128d; // dbl_4low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_4high_sd(void); //                   __m128d; // dbl_4high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_flip4_sd(void); //                   __m128d; // dbl_flip4; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_8low_sd(void); //                    __m128d; // dbl_8low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_8high_sd(void); //                   __m128d; // dbl_8high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_flip8_sd(void); //                   __m128d; // dbl_flip8; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_16low_sd(void); //                   __m128d; // dbl_16low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_16high_sd(void); //                  __m128d; // dbl_16high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_flip16_sd(void); //                  __m128d; // dbl_flip16; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_24low_sd(void); //                   __m128d; // dbl_24low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_24high_sd(void); //                  __m128d; // dbl_24high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_flip24_sd(void); //                  __m128d; // dbl_flip24; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_28low_sd(void); //                   __m128d; // dbl_28low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_28high_sd(void); //                  __m128d; // dbl_28high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_flip28_sd(void); //                  __m128d; // dbl_flip28; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_32low_sd(void); //                   __m128d; // dbl_32low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_32high_sd(void); //                  __m128d; // dbl_32high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_flip32_sd(void); //                  __m128d; // dbl_flip32; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_40low_sd(void); //                   __m128d; // dbl_40low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_40high_sd(void); //                  __m128d; // dbl_40high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_flip40_sd(void); //                  __m128d; // dbl_flip40; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_48low_sd(void); //                   __m128d; // dbl_48low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_48high_sd(void); //                  __m128d; // dbl_48high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_flip48_sd(void); //                  __m128d; // dbl_flip48; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_56low_sd(void); //                   __m128d; // dbl_56low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_56high_sd(void); //                  __m128d; // dbl_56high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_flip56_sd(void); //                  __m128d; // dbl_flip56; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_60low_sd(void); //                   __m128d; // dbl_60low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_60high_sd(void); //                  __m128d; // dbl_60high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_flip60_sd(void); //                  __m128d; // dbl_flip60; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_64low_sd(void); //                   __m128d; // dbl_64low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_64high_sd(void); //                  __m128d; // dbl_64high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_flip64_sd(void); //                  __m128d; // dbl_flip64; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_0_sd(void); //                       __m128d; // dbl_0; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d0001_sd(void); //              __m128d; // dbl_0d0001; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d0002_sd(void); //              __m128d; // dbl_0d0002; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d0003_sd(void); //              __m128d; // dbl_0d0003; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d0004_sd(void); //              __m128d; // dbl_0d0004; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d0005_sd(void); //              __m128d; // dbl_0d0005; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d0006_sd(void); //              __m128d; // dbl_0d0006; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d0007_sd(void); //              __m128d; // dbl_0d0007; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d0008_sd(void); //              __m128d; // dbl_0d0008; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d0009_sd(void); //              __m128d; // dbl_0d0009; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d001_sd(void); //                   __m128d; // dbl_0d001; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d002_sd(void); //                   __m128d; // dbl_0d002; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d003_sd(void); //                   __m128d; // dbl_0d003; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d004_sd(void); //                   __m128d; // dbl_0d004; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d005_sd(void); //                   __m128d; // dbl_0d005; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d006_sd(void); //                   __m128d; // dbl_0d006; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d007_sd(void); //                   __m128d; // dbl_0d007; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d008_sd(void); //                   __m128d; // dbl_0d008; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d009_sd(void); //                   __m128d; // dbl_0d009; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d01_sd(void); //                    __m128d; // dbl_0d01; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d02_sd(void); //                    __m128d; // dbl_0d02; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d025_sd(void); //                   __m128d; // dbl_0d025; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d03_sd(void); //                    __m128d; // dbl_0d03; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d04_sd(void); //                    __m128d; // dbl_0d04; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d05_sd(void); //                    __m128d; // dbl_0d05; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d06_sd(void); //                    __m128d; // dbl_0d06; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d07_sd(void); //                    __m128d; // dbl_0d07; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d08_sd(void); //                    __m128d; // dbl_0d08; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d09_sd(void); //                    __m128d; // dbl_0d09; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d1_sd(void); //                     __m128d; // dbl_0d1; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d2_sd(void); //                     __m128d; // dbl_0d2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d25_sd(void); //                    __m128d; // dbl_0d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d3_sd(void); //                     __m128d; // dbl_0d3; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d4_sd(void); //                     __m128d; // dbl_0d4; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d5_sd(void); //                     __m128d; // dbl_0d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d6_sd(void); //                     __m128d; // dbl_0d6; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d7_sd(void); //                     __m128d; // dbl_0d7; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d8_sd(void); //                     __m128d; // dbl_0d8; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_0d9_sd(void); //                     __m128d; // dbl_0d9; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1_sd(void); //                       __m128d; // dbl_1; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1d25_sd(void); //                    __m128d; // dbl_1d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1d5_sd(void); //                     __m128d; // dbl_1d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2_sd(void); //                       __m128d; // dbl_2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2d25_sd(void); //                    __m128d; // dbl_2d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2d5_sd(void); //                     __m128d; // dbl_2d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_3_sd(void); //                       __m128d; // dbl_3; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_3d25_sd(void); //                    __m128d; // dbl_3d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_3d5_sd(void); //                     __m128d; // dbl_3d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_4_sd(void); //                       __m128d; // dbl_4; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_4d25_sd(void); //                    __m128d; // dbl_4d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_4d5_sd(void); //                     __m128d; // dbl_4d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_5_sd(void); //                       __m128d; // dbl_5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_5d25_sd(void); //                    __m128d; // dbl_5d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_5d5_sd(void); //                     __m128d; // dbl_5d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_6_sd(void); //                       __m128d; // dbl_6; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_6d25_sd(void); //                    __m128d; // dbl_6d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_6d5_sd(void); //                     __m128d; // dbl_6d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_7_sd(void); //                       __m128d; // dbl_7; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_7d25_sd(void); //                    __m128d; // dbl_7d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_7d5_sd(void); //                     __m128d; // dbl_7d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_8_sd(void); //                       __m128d; // dbl_8; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_8d25_sd(void); //                    __m128d; // dbl_8d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_8d5_sd(void); //                     __m128d; // dbl_8d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_9_sd(void); //                       __m128d; // dbl_9; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_9d25_sd(void); //                    __m128d; // dbl_9d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_9d5_sd(void); //                     __m128d; // dbl_9d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_10_sd(void); //                  __m128d; // dbl_10; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_11_sd(void); //                  __m128d; // dbl_11; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_12_sd(void); //                  __m128d; // dbl_12; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_13_sd(void); //                  __m128d; // dbl_13; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_14_sd(void); //                  __m128d; // dbl_14; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_15_sd(void); //                  __m128d; // dbl_15; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_16_sd(void); //                  __m128d; // dbl_16; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_17_sd(void); //                  __m128d; // dbl_17; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_18_sd(void); //                  __m128d; // dbl_18; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_19_sd(void); //                  __m128d; // dbl_19; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_20_sd(void); //                  __m128d; // dbl_20; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_21_sd(void); //                  __m128d; // dbl_21; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_22_sd(void); //                  __m128d; // dbl_22; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_23_sd(void); //                  __m128d; // dbl_23; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_24_sd(void); //                  __m128d; // dbl_24; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_24d5_sd(void); //                    __m128d; // dbl_24d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_25_sd(void); //                  __m128d; // dbl_25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_26_sd(void); //                  __m128d; // dbl_26; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_27_sd(void); //                  __m128d; // dbl_27; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_28_sd(void); //                  __m128d; // dbl_28; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_29_sd(void); //                  __m128d; // dbl_29; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_30_sd(void); //                  __m128d; // dbl_30; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_31_sd(void); //                  __m128d; // dbl_31; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_32_sd(void); //                  __m128d; // dbl_32; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_33_sd(void); //                  __m128d; // dbl_33; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_34_sd(void); //                  __m128d; // dbl_34; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_35_sd(void); //                  __m128d; // dbl_35; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_36_sd(void); //                  __m128d; // dbl_36; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_37_sd(void); //                  __m128d; // dbl_37; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_38_sd(void); //                  __m128d; // dbl_38; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_39_sd(void); //                  __m128d; // dbl_39; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_40_sd(void); //                  __m128d; // dbl_40; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_41_sd(void); //                  __m128d; // dbl_41; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_42_sd(void); //                  __m128d; // dbl_42; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_43_sd(void); //                  __m128d; // dbl_43; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_44_sd(void); //                  __m128d; // dbl_44; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_45_sd(void); //                  __m128d; // dbl_45; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_46_sd(void); //                  __m128d; // dbl_46; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_47_sd(void); //                  __m128d; // dbl_47; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_48_sd(void); //                  __m128d; // dbl_48; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_49_sd(void); //                  __m128d; // dbl_49; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_50_sd(void); //                  __m128d; // dbl_50; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_51_sd(void); //                  __m128d; // dbl_51; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_52_sd(void); //                  __m128d; // dbl_52; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_53_sd(void); //                  __m128d; // dbl_53; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_54_sd(void); //                  __m128d; // dbl_54; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_55_sd(void); //                  __m128d; // dbl_55; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_56_sd(void); //                  __m128d; // dbl_56; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_57_sd(void); //                  __m128d; // dbl_57; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_58_sd(void); //                  __m128d; // dbl_58; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_59_sd(void); //                  __m128d; // dbl_59; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_60_sd(void); //                  __m128d; // dbl_60; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_61_sd(void); //                  __m128d; // dbl_61; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_62_sd(void); //                  __m128d; // dbl_62; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_63_sd(void); //                  __m128d; // dbl_63; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_64_sd(void); //                  __m128d; // dbl_64; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_65_sd(void); //                  __m128d; // dbl_65; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_66_sd(void); //                  __m128d; // dbl_66; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_67_sd(void); //                  __m128d; // dbl_67; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_68_sd(void); //                  __m128d; // dbl_68; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_69_sd(void); //                  __m128d; // dbl_69; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_70_sd(void); //                  __m128d; // dbl_70; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_71_sd(void); //                  __m128d; // dbl_71; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_72_sd(void); //                  __m128d; // dbl_72; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_73_sd(void); //                  __m128d; // dbl_73; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_74_sd(void); //                  __m128d; // dbl_74; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_75_sd(void); //                  __m128d; // dbl_75; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_76_sd(void); //                  __m128d; // dbl_76; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_77_sd(void); //                  __m128d; // dbl_77; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_78_sd(void); //                  __m128d; // dbl_78; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_79_sd(void); //                  __m128d; // dbl_79; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_80_sd(void); //                  __m128d; // dbl_80; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_81_sd(void); //                  __m128d; // dbl_81; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_82_sd(void); //                  __m128d; // dbl_82; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_83_sd(void); //                  __m128d; // dbl_83; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_84_sd(void); //                  __m128d; // dbl_84; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_85_sd(void); //                  __m128d; // dbl_85; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_86_sd(void); //                  __m128d; // dbl_86; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_87_sd(void); //                  __m128d; // dbl_87; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_88_sd(void); //                  __m128d; // dbl_88; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_89_sd(void); //                  __m128d; // dbl_89; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_90_sd(void); //                  __m128d; // dbl_90; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_91_sd(void); //                  __m128d; // dbl_91; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_92_sd(void); //                  __m128d; // dbl_92; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_93_sd(void); //                  __m128d; // dbl_93; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_94_sd(void); //                  __m128d; // dbl_94; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_95_sd(void); //                  __m128d; // dbl_95; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_96_sd(void); //                  __m128d; // dbl_96; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_97_sd(void); //                  __m128d; // dbl_97; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_98_sd(void); //                  __m128d; // dbl_98; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_99_sd(void); //                  __m128d; // dbl_99; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_100_sd(void); //                     __m128d; // dbl_100; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_125_sd(void); //                     __m128d; // dbl_125; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_126_sd(void); //                     __m128d; // dbl_126; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_127_sd(void); //                     __m128d; // dbl_127; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_128_sd(void); //                     __m128d; // dbl_128; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_140_sd(void); //                     __m128d; // dbl_140; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_145_sd(void); //                     __m128d; // dbl_145; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_150_sd(void); //                     __m128d; // dbl_150; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_180_sd(void); //                     __m128d; // dbl_180; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_253_sd(void); //                     __m128d; // dbl_253; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_254_sd(void); //                     __m128d; // dbl_254; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_255_sd(void); //                     __m128d; // dbl_255; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_256_sd(void); //                     __m128d; // dbl_256; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_360_sd(void); //                     __m128d; // dbl_360; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_511_sd(void); //                     __m128d; // dbl_511; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_512_sd(void); //                     __m128d; // dbl_512; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_513_sd(void); //                     __m128d; // dbl_513; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1023_sd(void); //                    __m128d; // dbl_1023; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1024_sd(void); //                    __m128d; // dbl_1024; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1025_sd(void); //                    __m128d; // dbl_1025; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_32767_sd(void); //                   __m128d; // dbl_32767; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_32768_sd(void); //                   __m128d; // dbl_32768; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_65535_sd(void); //                   __m128d; // dbl_65535; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_65536_sd(void); //                   __m128d; // dbl_65536; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2147483647_sd(void); //          __m128d; // dbl_2147483647; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2147483648_sd(void); //          __m128d; // dbl_2147483648; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_4294967295_sd(void); //          __m128d; // dbl_4294967295; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_4294967296_sd(void); //          __m128d; // dbl_4294967296; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_neg0_sd(void); //                    __m128d; // dbl_neg0; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d0001_sd(void); //               __m128d; // dbl_neg0d0001; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d0002_sd(void); //               __m128d; // dbl_neg0d0002; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d0003_sd(void); //               __m128d; // dbl_neg0d0003; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d0004_sd(void); //               __m128d; // dbl_neg0d0004; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d0005_sd(void); //               __m128d; // dbl_neg0d0005; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d0006_sd(void); //               __m128d; // dbl_neg0d0006; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d0007_sd(void); //               __m128d; // dbl_neg0d0007; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d0008_sd(void); //               __m128d; // dbl_neg0d0008; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d0009_sd(void); //               __m128d; // dbl_neg0d0009; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d001_sd(void); //                __m128d; // dbl_neg0d001; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d002_sd(void); //                __m128d; // dbl_neg0d002; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d003_sd(void); //                __m128d; // dbl_neg0d003; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d004_sd(void); //                __m128d; // dbl_neg0d004; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d005_sd(void); //                __m128d; // dbl_neg0d005; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d006_sd(void); //                __m128d; // dbl_neg0d006; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d007_sd(void); //                __m128d; // dbl_neg0d007; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d008_sd(void); //                __m128d; // dbl_neg0d008; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d009_sd(void); //                __m128d; // dbl_neg0d009; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d01_sd(void); //                 __m128d; // dbl_neg0d01; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d02_sd(void); //                 __m128d; // dbl_neg0d02; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d025_sd(void); //                __m128d; // dbl_neg0d025; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d03_sd(void); //                 __m128d; // dbl_neg0d03; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d04_sd(void); //                 __m128d; // dbl_neg0d04; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d05_sd(void); //                 __m128d; // dbl_neg0d05; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d06_sd(void); //                 __m128d; // dbl_neg0d06; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d07_sd(void); //                 __m128d; // dbl_neg0d07; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d08_sd(void); //                 __m128d; // dbl_neg0d08; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d09_sd(void); //                 __m128d; // dbl_neg0d09; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d1_sd(void); //              __m128d; // dbl_neg0d1; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d2_sd(void); //              __m128d; // dbl_neg0d2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d25_sd(void); //                 __m128d; // dbl_neg0d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d3_sd(void); //              __m128d; // dbl_neg0d3; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d4_sd(void); //              __m128d; // dbl_neg0d4; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d5_sd(void); //              __m128d; // dbl_neg0d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d6_sd(void); //              __m128d; // dbl_neg0d6; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d7_sd(void); //              __m128d; // dbl_neg0d7; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d8_sd(void); //              __m128d; // dbl_neg0d8; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg0d9_sd(void); //              __m128d; // dbl_neg0d9; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1_sd(void); //                    __m128d; // dbl_neg1; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1d25_sd(void); //                 __m128d; // dbl_neg1d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1d5_sd(void); //              __m128d; // dbl_neg1d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg2_sd(void); //                    __m128d; // dbl_neg2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg2d25_sd(void); //                 __m128d; // dbl_neg2d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg2d5_sd(void); //              __m128d; // dbl_neg2d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg3_sd(void); //                    __m128d; // dbl_neg3; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg3d25_sd(void); //                 __m128d; // dbl_neg3d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg3d5_sd(void); //              __m128d; // dbl_neg3d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg4_sd(void); //                    __m128d; // dbl_neg4; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg4d25_sd(void); //                 __m128d; // dbl_neg4d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg4d5_sd(void); //              __m128d; // dbl_neg4d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg5_sd(void); //                    __m128d; // dbl_neg5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg5d25_sd(void); //                 __m128d; // dbl_neg5d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg5d5_sd(void); //              __m128d; // dbl_neg5d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg6_sd(void); //                    __m128d; // dbl_neg6; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg6d25_sd(void); //                 __m128d; // dbl_neg6d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg6d5_sd(void); //              __m128d; // dbl_neg6d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg7_sd(void); //                    __m128d; // dbl_neg7; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg7d25_sd(void); //                 __m128d; // dbl_neg7d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg7d5_sd(void); //              __m128d; // dbl_neg7d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg8_sd(void); //                    __m128d; // dbl_neg8; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg8d25_sd(void); //                 __m128d; // dbl_neg8d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg8d5_sd(void); //              __m128d; // dbl_neg8d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg9_sd(void); //                    __m128d; // dbl_neg9; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg9d25_sd(void); //                 __m128d; // dbl_neg9d25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg9d5_sd(void); //              __m128d; // dbl_neg9d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg10_sd(void); //                   __m128d; // dbl_neg10; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg11_sd(void); //                   __m128d; // dbl_neg11; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg12_sd(void); //                   __m128d; // dbl_neg12; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg13_sd(void); //                   __m128d; // dbl_neg13; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg14_sd(void); //                   __m128d; // dbl_neg14; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg15_sd(void); //                   __m128d; // dbl_neg15; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg16_sd(void); //                   __m128d; // dbl_neg16; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg17_sd(void); //                   __m128d; // dbl_neg17; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg18_sd(void); //                   __m128d; // dbl_neg18; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg19_sd(void); //                   __m128d; // dbl_neg19; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg20_sd(void); //                   __m128d; // dbl_neg20; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg21_sd(void); //                   __m128d; // dbl_neg21; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg22_sd(void); //                   __m128d; // dbl_neg22; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg23_sd(void); //                   __m128d; // dbl_neg23; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg24_sd(void); //                   __m128d; // dbl_neg24; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg24d5_sd(void); //                 __m128d; // dbl_neg24d5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg25_sd(void); //                   __m128d; // dbl_neg25; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg26_sd(void); //                   __m128d; // dbl_neg26; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg27_sd(void); //                   __m128d; // dbl_neg27; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg28_sd(void); //                   __m128d; // dbl_neg28; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg29_sd(void); //                   __m128d; // dbl_neg29; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg30_sd(void); //                   __m128d; // dbl_neg30; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg31_sd(void); //                   __m128d; // dbl_neg31; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg32_sd(void); //                   __m128d; // dbl_neg32; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg33_sd(void); //                   __m128d; // dbl_neg33; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg34_sd(void); //                   __m128d; // dbl_neg34; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg35_sd(void); //                   __m128d; // dbl_neg35; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg36_sd(void); //                   __m128d; // dbl_neg36; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg37_sd(void); //                   __m128d; // dbl_neg37; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg38_sd(void); //                   __m128d; // dbl_neg38; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg39_sd(void); //                   __m128d; // dbl_neg39; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg40_sd(void); //                   __m128d; // dbl_neg40; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg41_sd(void); //                   __m128d; // dbl_neg41; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg42_sd(void); //                   __m128d; // dbl_neg42; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg43_sd(void); //                   __m128d; // dbl_neg43; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg44_sd(void); //                   __m128d; // dbl_neg44; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg45_sd(void); //                   __m128d; // dbl_neg45; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg46_sd(void); //                   __m128d; // dbl_neg46; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg47_sd(void); //                   __m128d; // dbl_neg47; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg48_sd(void); //                   __m128d; // dbl_neg48; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg49_sd(void); //                   __m128d; // dbl_neg49; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg50_sd(void); //                   __m128d; // dbl_neg50; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg51_sd(void); //                   __m128d; // dbl_neg51; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg52_sd(void); //                   __m128d; // dbl_neg52; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg53_sd(void); //                   __m128d; // dbl_neg53; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg54_sd(void); //                   __m128d; // dbl_neg54; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg55_sd(void); //                   __m128d; // dbl_neg55; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg56_sd(void); //                   __m128d; // dbl_neg56; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg57_sd(void); //                   __m128d; // dbl_neg57; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg58_sd(void); //                   __m128d; // dbl_neg58; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg59_sd(void); //                   __m128d; // dbl_neg59; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg60_sd(void); //                   __m128d; // dbl_neg60; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg61_sd(void); //                   __m128d; // dbl_neg61; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg62_sd(void); //                   __m128d; // dbl_neg62; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg63_sd(void); //                   __m128d; // dbl_neg63; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg64_sd(void); //                   __m128d; // dbl_neg64; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg65_sd(void); //                   __m128d; // dbl_neg65; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg66_sd(void); //                   __m128d; // dbl_neg66; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg67_sd(void); //                   __m128d; // dbl_neg67; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg68_sd(void); //                   __m128d; // dbl_neg68; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg69_sd(void); //                   __m128d; // dbl_neg69; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg70_sd(void); //                   __m128d; // dbl_neg70; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg71_sd(void); //                   __m128d; // dbl_neg71; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg72_sd(void); //                   __m128d; // dbl_neg72; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg73_sd(void); //                   __m128d; // dbl_neg73; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg74_sd(void); //                   __m128d; // dbl_neg74; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg75_sd(void); //                   __m128d; // dbl_neg75; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg76_sd(void); //                   __m128d; // dbl_neg76; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg77_sd(void); //                   __m128d; // dbl_neg77; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg78_sd(void); //                   __m128d; // dbl_neg78; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg79_sd(void); //                   __m128d; // dbl_neg79; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg80_sd(void); //                   __m128d; // dbl_neg80; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg81_sd(void); //                   __m128d; // dbl_neg81; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg82_sd(void); //                   __m128d; // dbl_neg82; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg83_sd(void); //                   __m128d; // dbl_neg83; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg84_sd(void); //                   __m128d; // dbl_neg84; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg85_sd(void); //                   __m128d; // dbl_neg85; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg86_sd(void); //                   __m128d; // dbl_neg86; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg87_sd(void); //                   __m128d; // dbl_neg87; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg88_sd(void); //                   __m128d; // dbl_neg88; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg89_sd(void); //                   __m128d; // dbl_neg89; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg90_sd(void); //                   __m128d; // dbl_neg90; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg91_sd(void); //                   __m128d; // dbl_neg91; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg92_sd(void); //                   __m128d; // dbl_neg92; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg93_sd(void); //                   __m128d; // dbl_neg93; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg94_sd(void); //                   __m128d; // dbl_neg94; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg95_sd(void); //                   __m128d; // dbl_neg95; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg96_sd(void); //                   __m128d; // dbl_neg96; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg97_sd(void); //                   __m128d; // dbl_neg97; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg98_sd(void); //                   __m128d; // dbl_neg98; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg99_sd(void); //                   __m128d; // dbl_neg99; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg100_sd(void); //              __m128d; // dbl_neg100; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg125_sd(void); //              __m128d; // dbl_neg125; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg126_sd(void); //              __m128d; // dbl_neg126; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg127_sd(void); //              __m128d; // dbl_neg127; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg128_sd(void); //              __m128d; // dbl_neg128; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg140_sd(void); //              __m128d; // dbl_neg140; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg145_sd(void); //              __m128d; // dbl_neg145; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg150_sd(void); //              __m128d; // dbl_neg150; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg180_sd(void); //              __m128d; // dbl_neg180; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg253_sd(void); //              __m128d; // dbl_neg253; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg254_sd(void); //              __m128d; // dbl_neg254; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg255_sd(void); //              __m128d; // dbl_neg255; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg256_sd(void); //              __m128d; // dbl_neg256; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg360_sd(void); //              __m128d; // dbl_neg360; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg511_sd(void); //              __m128d; // dbl_neg511; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg512_sd(void); //              __m128d; // dbl_neg512; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg513_sd(void); //              __m128d; // dbl_neg513; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1023_sd(void); //                 __m128d; // dbl_neg1023; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1024_sd(void); //                 __m128d; // dbl_neg1024; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg1025_sd(void); //                 __m128d; // dbl_neg1025; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_neg32767_sd(void); //                __m128d; // dbl_neg32767; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg32768_sd(void); //                __m128d; // dbl_neg32768; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg65535_sd(void); //                __m128d; // dbl_neg65535; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg65536_sd(void); //                __m128d; // dbl_neg65536; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg2147483647_sd(void); //           __m128d; // dbl_neg2147483647; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg2147483648_sd(void); //           __m128d; // dbl_neg2147483648; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg4294967295_sd(void); //           __m128d; // dbl_neg4294967295; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg4294967296_sd(void); //           __m128d; // dbl_neg4294967296; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_bin128_sd(void); //                  __m128d; // dbl_bin128; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_binneg150_sd(void); //               __m128d; // dbl_binneg150; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_maxrand_sd(void); //             __m128d; // dbl_maxrand; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_maxi8_sd(void); //                   __m128d; // dbl_maxi8; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mini8_sd(void); //                   __m128d; // dbl_mini8; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_maxu8_sd(void); //                   __m128d; // dbl_maxu8; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_maxi16_sd(void); //                  __m128d; // dbl_maxi16; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mini16_sd(void); //                  __m128d; // dbl_mini16; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_maxu16_sd(void); //                  __m128d; // dbl_maxu16; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_maxi32_sd(void); //                  __m128d; // dbl_maxi32; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mini32_sd(void); //                  __m128d; // dbl_mini32; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_maxu32_sd(void); //                  __m128d; // dbl_maxu32; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_maxi64_sd(void); //                  __m128d; // dbl_maxi64; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mini64_sd(void); //                  __m128d; // dbl_mini64; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_maxu64_sd(void); //                  __m128d; // dbl_maxu64; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_maxi8xu8_sd(void); //                __m128d; // dbl_maxi8xu8; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mini8xu8_sd(void); //                __m128d; // dbl_mini8xu8; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_maxi8xu16_sd(void); //               __m128d; // dbl_maxi8xu16; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mini8xu16_sd(void); //               __m128d; // dbl_mini8xu16; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_maxi16xu16_sd(void); //              __m128d; // dbl_maxi16xu16; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mini16xu16_sd(void); //              __m128d; // dbl_mini16xu16; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_maxi16xu32_sd(void); //              __m128d; // dbl_maxi16xu32; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mini16xu32_sd(void); //              __m128d; // dbl_mini16xu32; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_maxi32xu32_sd(void); //              __m128d; // dbl_maxi32xu32; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mini32xu32_sd(void); //              __m128d; // dbl_mini32xu32; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_fixunsigned_sd(void); //         __m128d; // dbl_fixunsigned; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_fixunsigned32_sd(void); //           __m128d; // dbl_fixunsigned32; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_fixmaxi32_sd(void); //               __m128d; // dbl_fixmaxi32; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_fixmaxu32_sd(void); //               __m128d; // dbl_fixmaxu32; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_fixunsigned64_sd(void); //           __m128d; // dbl_fixunsigned64; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_fixmaxi64_sd(void); //               __m128d; // dbl_fixmaxi64; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_fixmaxu64_sd(void); //               __m128d; // dbl_fixmaxu64; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_rcpi16_sd(void); //              __m128d; // dbl_rcpi16; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcpu16_sd(void); //              __m128d; // dbl_rcpu16; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcpi16xu16_sd(void); //          __m128d; // dbl_rcpi16xu16; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_mg_sd(void); //                  __m128d; // dbl_mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_negmg_sd(void); //                   __m128d; // dbl_negmg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_halfmg_sd(void); //              __m128d; // dbl_halfmg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neghalfmg_sd(void); //               __m128d; // dbl_neghalfmg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mgdiv4_sd(void); //              __m128d; // dbl_mgdiv4; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_negmgdiv4_sd(void); //               __m128d; // dbl_negmgdiv4; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_halfmgxmg_sd(void); //               __m128d; // dbl_halfmgxmg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_halfmgxsqrmg_sd(void); //            __m128d; // dbl_halfmgxsqrmg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_halfmgxcubemg_sd(void); //           __m128d; // dbl_halfmgxcubemg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neghalfmgxmg_sd(void); //            __m128d; // dbl_neghalfmgxmg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neghalfmgxsqrmg_sd(void); //     __m128d; // dbl_neghalfmgxsqrmg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neghalfmgxcubemg_sd(void); //        __m128d; // dbl_neghalfmgxcubemg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrmg_sd(void); //                   __m128d; // dbl_sqrmg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_cubemg_sd(void); //              __m128d; // dbl_cubemg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrtmg_sd(void); //              __m128d; // dbl_sqrtmg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_cbrtmg_sd(void); //              __m128d; // dbl_cbrtmg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcpmg_sd(void); //                   __m128d; // dbl_rcpmg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcpsqrmg_sd(void); //                __m128d; // dbl_rcpsqrmg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcpcubemg_sd(void); //               __m128d; // dbl_rcpcubemg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcpsqrtmg_sd(void); //               __m128d; // dbl_rcpsqrtmg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcpcbrtmg_sd(void); //               __m128d; // dbl_rcpcbrtmg; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_2mg_sd(void); //                     __m128d; // dbl_2mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg2mg_sd(void); //              __m128d; // dbl_neg2mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqr2mg_sd(void); //              __m128d; // dbl_sqr2mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_cube2mg_sd(void); //                 __m128d; // dbl_cube2mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrt2mg_sd(void); //                 __m128d; // dbl_sqrt2mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_cbrt2mg_sd(void); //                 __m128d; // dbl_cbrt2mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_4mg_sd(void); //                     __m128d; // dbl_4mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg4mg_sd(void); //              __m128d; // dbl_neg4mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqr4mg_sd(void); //              __m128d; // dbl_sqr4mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_cube4mg_sd(void); //                 __m128d; // dbl_cube4mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrt4mg_sd(void); //                 __m128d; // dbl_sqrt4mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_cbrt4mg_sd(void); //                 __m128d; // dbl_cbrt4mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcp2mg_sd(void); //              __m128d; // dbl_rcp2mg; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcp4mg_sd(void); //              __m128d; // dbl_rcp4mg; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_e_sd(void); //                       __m128d; // dbl_e; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_exp_sd(void); //                     __m128d; // dbl_exp; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_loge_sd(void); //                    __m128d; // dbl_loge; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_logehigh_sd(void); //                __m128d; // dbl_logehigh; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_logelow_sd(void); //                 __m128d; // dbl_logelow; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_log2e_sd(void); //                   __m128d; // dbl_log2e; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_log2ehigh_sd(void); //               __m128d; // dbl_log2ehigh; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_log2elow_sd(void); //                __m128d; // dbl_log2elow; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_log10e_sd(void); //              __m128d; // dbl_log10e; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcplog2e_sd(void); //                __m128d; // dbl_rcplog2e; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcplog10e_sd(void); //               __m128d; // dbl_rcplog10e; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_log2t_sd(void); //                   __m128d; // dbl_log2t; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_log2_sd(void); //                    __m128d; // dbl_log2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_log2high_sd(void); //                __m128d; // dbl_log2high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_log2low_sd(void); //                 __m128d; // dbl_log2low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_ln2_sd(void); //                     __m128d; // dbl_ln2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_ln2high_sd(void); //                 __m128d; // dbl_ln2high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_ln2low_sd(void); //              __m128d; // dbl_ln2low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1divln2_sd(void); //                 __m128d; // dbl_1divln2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2divln2_sd(void); //                 __m128d; // dbl_2divln2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_lnt_sd(void); //                     __m128d; // dbl_lnt; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_lnthigh_sd(void); //                 __m128d; // dbl_lnthigh; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_lntlow_sd(void); //              __m128d; // dbl_lntlow; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_ln10_sd(void); //                    __m128d; // dbl_ln10; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrt2_sd(void); //                   __m128d; // dbl_sqrt2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcpsqrt2_sd(void); //                __m128d; // dbl_rcpsqrt2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrt2div2_sd(void); //               __m128d; // dbl_sqrt2div2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrt2div2high_sd(void); //           __m128d; // dbl_sqrt2div2high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrt2div2low_sd(void); //            __m128d; // dbl_sqrt2div2low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrthalf_sd(void); //                __m128d; // dbl_sqrthalf; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrthalfhigh_sd(void); //            __m128d; // dbl_sqrthalfhigh; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrthalflow_sd(void); //             __m128d; // dbl_sqrthalflow; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2_sd(void); //                    __m128d; // dbl_pow2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcppow2_sd(void); //                 __m128d; // dbl_rcppow2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_cbrt2_sd(void); //                   __m128d; // dbl_cbrt2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcpcbrt2_sd(void); //                __m128d; // dbl_rcpcbrt2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1div3_sd(void); //                   __m128d; // dbl_1div3; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1div7_sd(void); //                   __m128d; // dbl_1div7; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_1div9_sd(void); //                   __m128d; // dbl_1div9; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2div3_sd(void); //                   __m128d; // dbl_2div3; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2div7_sd(void); //                   __m128d; // dbl_2div7; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2div9_sd(void); //                   __m128d; // dbl_2div9; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_4div3_sd(void); //                   __m128d; // dbl_4div3; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_4div7_sd(void); //                   __m128d; // dbl_4div7; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_4div9_sd(void); //                   __m128d; // dbl_4div9; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_pi_sd(void); //                  __m128d; // dbl_pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pihigh_sd(void); //              __m128d; // dbl_pihigh; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pilow_sd(void); //                   __m128d; // dbl_pilow; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_halfpi_sd(void); //              __m128d; // dbl_halfpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2pi_sd(void); //                     __m128d; // dbl_2pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_negpi_sd(void); //                   __m128d; // dbl_negpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neghalfpi_sd(void); //               __m128d; // dbl_neghalfpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neg2pi_sd(void); //              __m128d; // dbl_neg2pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcppi_sd(void); //                   __m128d; // dbl_rcppi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_invpi_sd(void); //                   __m128d; // dbl_invpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcp2pi_sd(void); //              __m128d; // dbl_rcp2pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_inv2pi_sd(void); //              __m128d; // dbl_inv2pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pidiv2_sd(void); //              __m128d; // dbl_pidiv2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pidiv2high_sd(void); //          __m128d; // dbl_pidiv2high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pidiv2low_sd(void); //               __m128d; // dbl_pidiv2low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pidiv4_sd(void); //              __m128d; // dbl_pidiv4; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pidiv4high_sd(void); //          __m128d; // dbl_pidiv4high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pidiv4low_sd(void); //               __m128d; // dbl_pidiv4low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pix3div4_sd(void); //                __m128d; // dbl_pix3div4; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrtpi_sd(void); //              __m128d; // dbl_sqrtpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrt2pi_sd(void); //                 __m128d; // dbl_sqrt2pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrt2pihigh_sd(void); //             __m128d; // dbl_sqrt2pihigh; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrt2pilow_sd(void); //          __m128d; // dbl_sqrt2pilow; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcpsqrtpi_sd(void); //               __m128d; // dbl_rcpsqrtpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcpsqrt2pi_sd(void); //          __m128d; // dbl_rcpsqrt2pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrtpidiv2_sd(void); //          __m128d; // dbl_sqrtpidiv2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrtpidiv2high_sd(void); //      __m128d; // dbl_sqrtpidiv2high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrt2pidiv2_sd(void); //             __m128d; // dbl_sqrt2pidiv2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrt2pidiv2high_sd(void); //         __m128d; // dbl_sqrt2pidiv2high; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrt2pidiv2low_sd(void); //      __m128d; // dbl_sqrt2pidiv2low; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2divpi_sd(void); //              __m128d; // dbl_2divpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2div2pi_sd(void); //                 __m128d; // dbl_2div2pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2divsqrtpi_sd(void); //          __m128d; // dbl_2divsqrtpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_2divsqrt2pi_sd(void); //             __m128d; // dbl_2divsqrt2pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_sqrt2divpi_sd(void); //          __m128d; // dbl_sqrt2divpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_logpi_sd(void); //                   __m128d; // dbl_logpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_log2pi_sd(void); //              __m128d; // dbl_log2pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_lnpi_sd(void); //                    __m128d; // dbl_lnpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_ln2pi_sd(void); //                   __m128d; // dbl_ln2pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_powpi_sd(void); //                   __m128d; // dbl_powpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcppowpi_sd(void); //                __m128d; // dbl_rcppowpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2pi_sd(void); //              __m128d; // dbl_pow2pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcppow2pi_sd(void); //               __m128d; // dbl_rcppow2pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_cbrtpi_sd(void); //              __m128d; // dbl_cbrtpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcpcbrtpi_sd(void); //               __m128d; // dbl_rcpcbrtpi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_cbrt2pi_sd(void); //                 __m128d; // dbl_cbrt2pi; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_rcpcbrt2pi_sd(void); //          __m128d; // dbl_rcpcbrt2pi; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_ln2x1024_sd(void); //                __m128d; // dbl_ln2x1024; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_ln2x1025_sd(void); //                __m128d; // dbl_ln2x1025; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_ln2x1075_sd(void); //                __m128d; // dbl_ln2x1075; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_log2x1024_sd(void); //               __m128d; // dbl_log2x1024; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_log2x1075_sd(void); //               __m128d; // dbl_log2x1075; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_pow2tom126_sd(void); //          __m128d; // dbl_pow2tom126; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2to126_sd(void); //               __m128d; // dbl_pow2to126; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_normhuge_sd(void); //                __m128d; // dbl_normhuge; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2to23_sd(void); //                __m128d; // dbl_pow2to23; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2to24_sd(void); //                __m128d; // dbl_pow2to24; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_maxi32pow2to23_sd(void); //      __m128d; // dbl_maxi32pow2to23; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2to31_sd(void); //                __m128d; // dbl_pow2to31; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2to32_sd(void); //                __m128d; // dbl_pow2to32; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2to52_sd(void); //                __m128d; // dbl_pow2to52; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2to53_sd(void); //                __m128d; // dbl_pow2to53; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2to54_sd(void); //                __m128d; // dbl_pow2to54; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2tom54_sd(void); //               __m128d; // dbl_pow2tom54; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2to62_sd(void); //                __m128d; // dbl_pow2to62; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_maxi64pow2to52_sd(void); //          __m128d; // dbl_maxi64pow2to52; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2to63_sd(void); //                __m128d; // dbl_pow2to63; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2to64_sd(void); //                __m128d; // dbl_pow2to64; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_pow2tom1022_sd(void); //             __m128d; // dbl_pow2tom1022; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_trigploss_sd(void); //               __m128d; // dbl_trigploss; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_degtorad_sd(void); //                __m128d; // dbl_degtorad; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_radtodeg_sd(void); //                __m128d; // dbl_radtodeg; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_degtograd_sd(void); //               __m128d; // dbl_degtograd; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_gradtodeg_sd(void); //               __m128d; // dbl_gradtodeg; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_radtograd_sd(void); //               __m128d; // dbl_radtograd; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_gradtorad_sd(void); //               __m128d; // dbl_gradtorad; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_sungravity_sd(void); //          __m128d; // dbl_sungravity; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_jupitergravity_sd(void); //      __m128d; // dbl_jupitergravity; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_neptunegravity_sd(void); //      __m128d; // dbl_neptunegravity; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_saturngravity_sd(void); //           __m128d; // dbl_saturngravity; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_uranusgravity_sd(void); //           __m128d; // dbl_uranusgravity; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_earthgravity_sd(void); //            __m128d; // dbl_earthgravity; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_venusgravity_sd(void); //            __m128d; // dbl_venusgravity; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_marsgravity_sd(void); //             __m128d; // dbl_marsgravity; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mercurygravity_sd(void); //      __m128d; // dbl_mercurygravity; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_moongravity_sd(void); //             __m128d; // dbl_moongravity; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_plutogravity_sd(void); //            __m128d; // dbl_plutogravity; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_kmtoinch_sd(void); //                __m128d; // dbl_kmtoinch; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmtofeet_sd(void); //                __m128d; // dbl_kmtofeet; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmtoyards_sd(void); //               __m128d; // dbl_kmtoyards; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmtomiles_sd(void); //               __m128d; // dbl_kmtomiles; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_metoinch_sd(void); //                __m128d; // dbl_metoinch; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_metofeet_sd(void); //                __m128d; // dbl_metofeet; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_metoyards_sd(void); //               __m128d; // dbl_metoyards; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_metomiles_sd(void); //               __m128d; // dbl_metomiles; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_cmtoinch_sd(void); //                __m128d; // dbl_cmtoinch; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_cmtofeet_sd(void); //                __m128d; // dbl_cmtofeet; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_cmtoyards_sd(void); //               __m128d; // dbl_cmtoyards; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_cmtomiles_sd(void); //               __m128d; // dbl_cmtomiles; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_milltoinch_sd(void); //          __m128d; // dbl_milltoinch; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milltofeet_sd(void); //          __m128d; // dbl_milltofeet; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milltoyards_sd(void); //             __m128d; // dbl_milltoyards; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milltomiles_sd(void); //             __m128d; // dbl_milltomiles; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_inchtomill_sd(void); //          __m128d; // dbl_inchtomill; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_inchtocm_sd(void); //                __m128d; // dbl_inchtocm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_inchtome_sd(void); //                __m128d; // dbl_inchtome; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_inchtokm_sd(void); //                __m128d; // dbl_inchtokm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_inchtofeet_sd(void); //          __m128d; // dbl_inchtofeet; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_inchtoyards_sd(void); //             __m128d; // dbl_inchtoyards; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_inchtomiles_sd(void); //             __m128d; // dbl_inchtomiles; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_feettomill_sd(void); //          __m128d; // dbl_feettomill; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feettocm_sd(void); //                __m128d; // dbl_feettocm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feettome_sd(void); //                __m128d; // dbl_feettome; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feettokm_sd(void); //                __m128d; // dbl_feettokm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feettoinch_sd(void); //          __m128d; // dbl_feettoinch; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feettoyards_sd(void); //             __m128d; // dbl_feettoyards; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feettomiles_sd(void); //             __m128d; // dbl_feettomiles; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_yardstomill_sd(void); //             __m128d; // dbl_yardstomill; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_yardstocm_sd(void); //               __m128d; // dbl_yardstocm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_yardstome_sd(void); //               __m128d; // dbl_yardstome; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_yardstokm_sd(void); //               __m128d; // dbl_yardstokm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_yardstoinch_sd(void); //             __m128d; // dbl_yardstoinch; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_yardstofeet_sd(void); //             __m128d; // dbl_yardstofeet; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_yardstomiles_sd(void); //            __m128d; // dbl_yardstomiles; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_milestomill_sd(void); //             __m128d; // dbl_milestomill; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milestocm_sd(void); //               __m128d; // dbl_milestocm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milestome_sd(void); //               __m128d; // dbl_milestome; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milestoinch_sd(void); //             __m128d; // dbl_milestokm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milestoinch_sd(void); //             __m128d; // dbl_milestoinch; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milestofeet_sd(void); //             __m128d; // dbl_milestofeet; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milestoyards_sd(void); //            __m128d; // dbl_milestoyards; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_kmphtomeps_sd(void); //          __m128d; // dbl_kmphtomeps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmphtokmps_sd(void); //          __m128d; // dbl_kmphtokmps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmphtomepm_sd(void); //          __m128d; // dbl_kmphtomepm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmphtomilesph_sd(void); //           __m128d; // dbl_kmphtomilesph; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmphtomilesps_sd(void); //           __m128d; // dbl_kmphtomilesps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmphtofeetps_sd(void); //            __m128d; // dbl_kmphtofeetps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmphtofeetpm_sd(void); //            __m128d; // dbl_kmphtofeetpm; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_kmpstomeps_sd(void); //          __m128d; // dbl_kmpstomeps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmpstokmph_sd(void); //          __m128d; // dbl_kmpstokmph; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmpstomepm_sd(void); //          __m128d; // dbl_kmpstomepm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmpstomilesph_sd(void); //           __m128d; // dbl_kmpstomilesph; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmpstomilesps_sd(void); //           __m128d; // dbl_kmpstomilesps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmpstofeetps_sd(void); //            __m128d; // dbl_kmpstofeetps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_kmpstofeetpm_sd(void); //            __m128d; // dbl_kmpstofeetpm; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_mepstokmph_sd(void); //          __m128d; // dbl_mepstokmph; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mepstokmps_sd(void); //          __m128d; // dbl_mepstokmps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mepstomepm_sd(void); //          __m128d; // dbl_mepstomepm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mepstomilesph_sd(void); //           __m128d; // dbl_mepstomilesph; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mepstomilesps_sd(void); //           __m128d; // dbl_mepstomilesps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mepstofeetps_sd(void); //            __m128d; // dbl_mepstofeetps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mepstofeetpm_sd(void); //            __m128d; // dbl_mepstofeetpm; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_mepmtokmph_sd(void); //          __m128d; // dbl_mepmtokmph; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mepmtokmps_sd(void); //          __m128d; // dbl_mepmtokmps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mepmtomeps_sd(void); //          __m128d; // dbl_mepmtomeps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mepmtomilesph_sd(void); //           __m128d; // dbl_mepmtomilesph; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mepmtomilesps_sd(void); //           __m128d; // dbl_mepmtomilesps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mepmtofeetps_sd(void); //            __m128d; // dbl_mepmtofeetps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_mepmtofeetpm_sd(void); //            __m128d; // dbl_mepmtofeetpm; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_milesphtokmph_sd(void); //           __m128d; // dbl_milesphtokmph; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milesphtokmps_sd(void); //           __m128d; // dbl_milesphtokmps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milesphtomeps_sd(void); //           __m128d; // dbl_milesphtomeps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milesphtomepm_sd(void); //           __m128d; // dbl_milesphtomepm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milesphtomilesps_sd(void); //        __m128d; // dbl_milesphtomilesps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milesphtofeetps_sd(void); //         __m128d; // dbl_milesphtofeetps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milesphtofeetpm_sd(void); //     __m128d; // dbl_milesphtofeetpm; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_milespstokmph_sd(void); //           __m128d; // dbl_milespstokmph; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milespstokmps_sd(void); //           __m128d; // dbl_milespstokmps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milespstomeps_sd(void); //           __m128d; // dbl_milespstomeps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milespstomepm_sd(void); //           __m128d; // dbl_milespstomepm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milespstomilespm_sd(void); //        __m128d; // dbl_milespstomilespm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milespstofeetps_sd(void); //         __m128d; // dbl_milespstofeetps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_milespstofeetpm_sd(void); //     __m128d; // dbl_milespstofeetpm; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_feetpstokmph_sd(void); //            __m128d; // dbl_feetpstokmph; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feetpstokmps_sd(void); //            __m128d; // dbl_feetpstokmps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feetpstomeps_sd(void); //            __m128d; // dbl_feetpstomeps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feetpstomepm_sd(void); //            __m128d; // dbl_feetpstomepm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feetpstomilesph_sd(void); //         __m128d; // dbl_feetpstomilesph; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feetpstomilesps_sd(void); //         __m128d; // dbl_feetpstomilesps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feetpstofeetpm_sd(void); //      __m128d; // dbl_feetpstofeetpm; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_feetpmtokmph_sd(void); //            __m128d; // dbl_feetpmtokmph; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feetpmtokmps_sd(void); //            __m128d; // dbl_feetpmtokmps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feetpmtomeps_sd(void); //            __m128d; // dbl_feetpmtomeps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feetpmtomepm_sd(void); //            __m128d; // dbl_feetpmtomepm; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feetpmtomilesph_sd(void); //         __m128d; // dbl_feetpmtomilesph; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feetpmtomilesps_sd(void); //         __m128d; // dbl_feetpmtomilesps; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_feetpmtofeetps_sd(void); //      __m128d; // dbl_feetpmtofeetps; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_soundspeedp50c_sd(void); //      __m128d; // dbl_soundspeedp50c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedp45c_sd(void); //      __m128d; // dbl_soundspeedp45c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedp40c_sd(void); //      __m128d; // dbl_soundspeedp40c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedp35c_sd(void); //      __m128d; // dbl_soundspeedp35c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedp30c_sd(void); //      __m128d; // dbl_soundspeedp30c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedp25c_sd(void); //      __m128d; // dbl_soundspeedp25c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedp20c_sd(void); //      __m128d; // dbl_soundspeedp20c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedp15c_sd(void); //      __m128d; // dbl_soundspeedp15c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedp10c_sd(void); //      __m128d; // dbl_soundspeedp10c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedp5c_sd(void); //           __m128d; // dbl_soundspeedp5c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeed0c_sd(void); //            __m128d; // dbl_soundspeed0c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedn5c_sd(void); //           __m128d; // dbl_soundspeedn5c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedn10c_sd(void); //      __m128d; // dbl_soundspeedn10c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedn15c_sd(void); //      __m128d; // dbl_soundspeedn15c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedn20c_sd(void); //      __m128d; // dbl_soundspeedn20c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedn25c_sd(void); //      __m128d; // dbl_soundspeedn25c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedn30c_sd(void); //      __m128d; // dbl_soundspeedn30c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedn35c_sd(void); //      __m128d; // dbl_soundspeedn35c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedn40c_sd(void); //      __m128d; // dbl_soundspeedn40c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedn45c_sd(void); //      __m128d; // dbl_soundspeedn45c; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_soundspeedn50c_sd(void); //      __m128d; // dbl_soundspeedn50c; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_schscale_sd(void); //                __m128d; // dbl_schscale; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_thscale_sd(void); //                 __m128d; // dbl_thscale; // dbl_false

extern __m128d uX_ABI _uX_mm_const_0e_expest1_sd(void); //                 __m128d; // dbl_expest1; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_expest2_sd(void); //                 __m128d; // dbl_expest2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_expest3_sd(void); //                 __m128d; // dbl_expest3; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_expest4_sd(void); //                 __m128d; // dbl_expest4; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_expest5_sd(void); //                 __m128d; // dbl_expest5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_expest6_sd(void); //                 __m128d; // dbl_expest6; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_expest7_sd(void); //                 __m128d; // dbl_expest7; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_logest0_sd(void); //                 __m128d; // dbl_logest0; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_logest1_sd(void); //                 __m128d; // dbl_logest1; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_logest2_sd(void); //                 __m128d; // dbl_logest2; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_logest3_sd(void); //                 __m128d; // dbl_logest3; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_logest4_sd(void); //                 __m128d; // dbl_logest4; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_logest5_sd(void); //                 __m128d; // dbl_logest5; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_logest6_sd(void); //                 __m128d; // dbl_logest6; // dbl_false
extern __m128d uX_ABI _uX_mm_const_0e_logest7_sd(void); //                 __m128d; // dbl_logest7; // dbl_false

	//;;DirectX Math constants;;

extern __m128i uX_ABI _uX_mm_const_dbl_select00_sd(void); //                 __m128q; dbl_false, dbl_false
extern __m128i uX_ABI _uX_mm_const_dbl_select01_sd(void); //                 __m128q; dbl_false, dbl_true
extern __m128i uX_ABI _uX_mm_const_dbl_select10_sd(void); //                 __m128q; dbl_true, dbl_false
extern __m128i uX_ABI _uX_mm_const_dbl_select11_sd(void); //                 __m128q; dbl_true, dbl_true

extern __m128d uX_ABI _uX_mm_const_select00_sd(void); //                 __m128q; dbl_false, dbl_false
extern __m128d uX_ABI _uX_mm_const_select01_sd(void); //                 __m128q; dbl_false, dbl_true
extern __m128d uX_ABI _uX_mm_const_select10_sd(void); //                 __m128q; dbl_true, dbl_false
extern __m128d uX_ABI _uX_mm_const_select11_sd(void); //                 __m128q; dbl_true, dbl_true

uX_PACK_POP
uX_EXTERNC_END

#endif // uX_SSE2

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_EMM_DATA_H
