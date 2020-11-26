
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

#ifndef uX_NMM_INTRIN_H
#define uX_NMM_INTRIN_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE42

#ifndef uX_SMM_INTRIN_H
#include "uXsmmintrin.h"
#endif  /* uX_uX_MM_INTRIN_H */

#ifndef _INCLUDED_NMM
#include <nmmintrin.h>
#endif  /* _INCLUDED_SMM */

/*
 * MACRO functions for setting and reading the ULE bit in the MXCSR
 */
#define uX_MM_ULE_MASK   0x20000
#define uX_MM_ULE_ON     0x20000
#define uX_MM_ULE_OFF    0x00000

#define _uX_MM_SET_ULE_MODE(mode) _uX_mm_setcsr((_uX_mm_getcsr() & ~uX_MM_ULE_MASK) | (mode))
#define _uX_MM_GET_ULE_MODE() (_uX_mm_getcsr() & uX_MM_ULE_MASK)

/*
 * These defines are used to determine the kind of units to be compared
 */
#define uX_SIDD_UBYTE_OPS                0x00
#define uX_SIDD_UWORD_OPS                0x01
#define uX_SIDD_SBYTE_OPS                0x02
#define uX_SIDD_SWORD_OPS                0x03

/*
 * These defines are used to determine the comparison operation
 */
#define uX_SIDD_CMP_EQUAL_ANY            0x00
#define uX_SIDD_CMP_RANGES               0x04
#define uX_SIDD_CMP_EQUAL_EACH           0x08
#define uX_SIDD_CMP_EQUAL_ORDERED        0x0C

/*
 * These defines are used to determine the polarity
 */
#define uX_SIDD_POSITIVE_POLARITY        0x00
#define uX_SIDD_NEGATIVE_POLARITY        0x10
#define uX_SIDD_MASKED_POSITIVE_POLARITY 0x20
#define uX_SIDD_MASKED_NEGATIVE_POLARITY 0x30

/*
 * These defines are used in_uX_mm_cmpXstri()
 */
#define uX_SIDD_LEAST_SIGNIFICANT        0x00
#define uX_SIDD_MOST_SIGNIFICANT         0x40

/*
 * These defines are used_uX_mm_cmpXstrm()
 */
#define uX_SIDD_BIT_MASK                 0x00
#define uX_SIDD_UNIT_MASK                0x40

 /*******************************************************/
 /* MACRO for use _uX_mm_cmpistrm_*().              */
 /* result                                              */
 /* const __m128i temp = _uX_MM_CMPISTRM_IM(Inxmm_A, Inxmm_B, 127); */
 /*******************************************************/
#define _uX_MM_CMPISTRM_IM(VA,VB,IMM) _uX_mm_cmpistrm_##IMM##(VA,VB)

 /*******************************************************/
 /* MACRO for use _uX_mm_cmpistri_*().              */
 /* result                                              */
 /* const int temp = _uX_MM_CMPISTRI_IM(Inxmm_A, Inxmm_B, 127); */
 /*******************************************************/
#define _uX_MM_CMPISTRI_IM(VA,VB,IMM) _uX_mm_cmpistri_##IMM##(VA,VB)

 /*******************************************************/
 /* MACRO for use _uX_mm_cmpestrm_*().              */
 /* result                                              */
 /* const __m128i temp = _uX_MM_CMPESTRM_IM(Inxmm_A, InintA, Inxmm_B, InintB, 127); */
 /*******************************************************/
#define _uX_MM_CMPESTRM_IM(VA,LA,VB,LB,IMM) _uX_mm_cmpestrm_##IMM##(VA,LA,VB,LB)

 /*******************************************************/
 /* MACRO for use _uX_mm_cmpestri_*().              */
 /* result                                              */
 /* const int temp = _uX_MM_CMPESTRI_IM(Inxmm_A, InintA, Inxmm_B, InintB, 127); */
 /*******************************************************/
#define _uX_MM_CMPESTRI_IM(VA,LA,VB,LB,IMM) _uX_mm_cmpestri_##IMM##(VA,LA,VB,LB)

 /*******************************************************/
 /* MACRO for use _uX_mm_cmpistrz_*().              */
 /* result                                              */
 /* const int temp = _uX_MM_CMPISTRZ_IM(Inxmm_A, Inxmm_B, 127); */
 /*******************************************************/
#define _uX_MM_CMPISTRZ_IM(VA,VB,IMM) _uX_mm_cmpistrz_##IMM##(VA,VB)
#define _uX_MM_CMPISTRC_IM(VA,VB,IMM) _uX_mm_cmpistrc_##IMM##(VA,VB)
#define _uX_MM_CMPISTRS_IM(VA,VB,IMM) _uX_mm_cmpistrs_##IMM##(VA,VB)
#define _uX_MM_CMPISTRO_IM(VA,VB,IMM) _uX_mm_cmpistro_##IMM##(VA,VB)
#define _uX_MM_CMPISTRA_IM(VA,VB,IMM) _uX_mm_cmpistra_##IMM##(VA,VB)

 /*******************************************************/
 /* MACRO for use _uX_mm_cmpestrz_*().              */
 /* result                                              */
 /* const int temp = _uX_MM_CMPESTRZ_IM(Inxmm_A, InintA, Inxmm_B, InintB, 127); */
 /*******************************************************/
#define _uX_MM_CMPESTRZ_IM(VA,LA,VB,LB,IMM) _uX_mm_cmpestrz_##IMM##(VA,LA,VB,LB)
#define _uX_MM_CMPESTRC_IM(VA,LA,VB,LB,IMM) _uX_mm_cmpestrc_##IMM##(VA,LA,VB,LB)
#define _uX_MM_CMPESTRS_IM(VA,LA,VB,LB,IMM) _uX_mm_cmpestrs_##IMM##(VA,LA,VB,LB)
#define _uX_MM_CMPESTRO_IM(VA,LA,VB,LB,IMM) _uX_mm_cmpestro_##IMM##(VA,LA,VB,LB)
#define _uX_MM_CMPESTRA_IM(VA,LA,VB,LB,IMM) _uX_mm_cmpestra_##IMM##(VA,LA,VB,LB)

uX_EXTERNC_BEGIN
uX_PACK_PUSH_XMM

/*
 * Intrinsics for text/string processing.
 */
    extern __m128i uX_ABI _uX_mm_cmpistrm(__m128i Inxmm_A, __m128i Inxmm_B, const count_t Inint_Control);
    extern int uX_ABI _uX_mm_cmpistri(__m128i Inxmm_A, __m128i Inxmm_B, const count_t Inint_Control);

    extern __m128i uX_ABI _uX_mm_cmpestrm(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const count_t Inint_Control);
    extern int uX_ABI _uX_mm_cmpestri(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const count_t Inint_Control);

/*
 * Intrinsics for text/string processing and reading values of EFlags.
 */
    extern int uX_ABI _uX_mm_cmpistrz(__m128i Inxmm_A, __m128i Inxmm_B, const count_t Inint_Control);
    extern int uX_ABI _uX_mm_cmpistrc(__m128i Inxmm_A, __m128i Inxmm_B, const count_t Inint_Control);
    extern int uX_ABI _uX_mm_cmpistrs(__m128i Inxmm_A, __m128i Inxmm_B, const count_t Inint_Control);
    extern int uX_ABI _uX_mm_cmpistro(__m128i Inxmm_A, __m128i Inxmm_B, const count_t Inint_Control);
    extern int uX_ABI _uX_mm_cmpistra(__m128i Inxmm_A, __m128i Inxmm_B, const count_t Inint_Control);

    extern int uX_ABI _uX_mm_cmpestrz(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const count_t Inint_Control);
    extern int uX_ABI _uX_mm_cmpestrc(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const count_t Inint_Control);
    extern int uX_ABI _uX_mm_cmpestrs(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const count_t Inint_Control);
    extern int uX_ABI _uX_mm_cmpestro(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const count_t Inint_Control);
    extern int uX_ABI _uX_mm_cmpestra(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const count_t Inint_Control);

/*
 * Calculate a number of bits set to 1
 */
    extern int32_t uX_ABI _uX_mm_popcnt_u32(uint32_t Inint_A);

#if defined(uX_X64)
    extern int64_t uX_ABI _uX_mm_popcnt_u64(uint64_t Inint_A);
#endif // uX_X64

/*
 * Accumulate CRC32(polynomial 0x11EDC6F41) value
 */
    extern uint32_t uX_ABI _uX_mm_crc32_u8(uint32_t Inint_A, uint8_t Inint_B);
    extern uint32_t uX_ABI _uX_mm_crc32_u16(uint32_t Inint_A, uint16_t Inint_B);
    extern uint32_t uX_ABI _uX_mm_crc32_u32(uint32_t Inint_A, uint32_t Inint_B);

#if defined(uX_X64)
    extern uint64_t uX_ABI _uX_mm_crc32_u64(uint64_t Inint_A, uint64_t Inint_B);
#endif // uX_X64

uX_PACK_POP
uX_EXTERNC_END

#ifndef uX_NMM_CMPESTR_H
#include "uXnmmcmpestr.h"
#endif

#endif // uX_SSE42

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_NMM_INTRIN_H
