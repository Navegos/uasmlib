
#pragma once

#ifndef uXm_NMM_INTRIN_H
#define uXm_NMM_INTRIN_H

#ifndef uXm_TYPES_H
#include "uXmTypes.h"
#endif  /* uXm_TYPES_H */

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE42

#ifndef uXm_SMM_INTRIN_H
#include "uXmsmmintrin.h"
#endif  /* uXm_uXm_MM_INTRIN_H */

#ifndef _INCLUDED_NMM
#include <nmmintrin.h>
#endif  /* _INCLUDED_SMM */

/*
 * MACRO functions for setting and reading the ULE bit in the MXCSR
 */
#define _uXm_MM_ULE_MASK   0x20000
#define _uXm_MM_ULE_ON     0x20000
#define _uXm_MM_ULE_OFF    0x00000

#define _uXm_MM_SET_ULE_MODE(mode) _uXm_mm_setcsr((_uXm_mm_getcsr() & ~_uXm_MM_ULE_MASK) | (mode))
#define _uXm_MM_GET_ULE_MODE() (_uXm_mm_getcsr() & _uXm_MM_ULE_MASK)

/*
 * These defines are used to determine the kind of units to be compared
 */
#define _uXm_SIDD_UBYTE_OPS                0x00
#define _uXm_SIDD_UWORD_OPS                0x01
#define _uXm_SIDD_SBYTE_OPS                0x02
#define _uXm_SIDD_SWORD_OPS                0x03

/*
 * These defines are used to determine the comparison operation
 */
#define _uXm_SIDD_CMP_EQUAL_ANY            0x00
#define _uXm_SIDD_CMP_RANGES               0x04
#define _uXm_SIDD_CMP_EQUAL_EACH           0x08
#define _uXm_SIDD_CMP_EQUAL_ORDERED        0x0C

/*
 * These defines are used to determine the polarity
 */
#define _uXm_SIDD_POSITIVE_POLARITY        0x00
#define _uXm_SIDD_NEGATIVE_POLARITY        0x10
#define _uXm_SIDD_MASKED_POSITIVE_POLARITY 0x20
#define _uXm_SIDD_MASKED_NEGATIVE_POLARITY 0x30

/*
 * These defines are used in_uXm_mm_cmpXstri()
 */
#define _uXm_SIDD_LEAST_SIGNIFICANT        0x00
#define _uXm_SIDD_MOST_SIGNIFICANT         0x40

/*
 * These defines are used_uXm_mm_cmpXstrm()
 */
#define _uXm_SIDD_BIT_MASK                 0x00
#define _uXm_SIDD_UNIT_MASK                0x40

 /*******************************************************/
 /* MACRO for use _uXm_mm_cmpistrm_*().				*/
 /* result                                              */
 /* const __m128i temp = _uXm_MM_CMPISTRM_IM(Inxmm_A, Inxmm_B, 127); */
 /*******************************************************/
#define _uXm_MM_CMPISTRM_IM(VA,VB,IMM) _uXm_mm_cmpistrm_##IMM##(VA,VB)

 /*******************************************************/
 /* MACRO for use _uXm_mm_cmpistri_*().				*/
 /* result                                              */
 /* const int temp = _uXm_MM_CMPISTRI_IM(Inxmm_A, Inxmm_B, 127); */
 /*******************************************************/
#define _uXm_MM_CMPISTRI_IM(VA,VB,IMM) _uXm_mm_cmpistri_##IMM##(VA,VB)

 /*******************************************************/
 /* MACRO for use _uXm_mm_cmpestrm_*().				*/
 /* result                                              */
 /* const __m128i temp = _uXm_MM_CMPESTRM_IM(Inxmm_A, InintA, Inxmm_B, InintB, 127); */
 /*******************************************************/
#define _uXm_MM_CMPESTRM_IM(VA,LA,VB,LB,IMM) _uXm_mm_cmpestrm_##IMM##(VA,LA,VB,LB)

 /*******************************************************/
 /* MACRO for use _uXm_mm_cmpestri_*().				*/
 /* result                                              */
 /* const int temp = _uXm_MM_CMPESTRI_IM(Inxmm_A, InintA, Inxmm_B, InintB, 127); */
 /*******************************************************/
#define _uXm_MM_CMPESTRI_IM(VA,LA,VB,LB,IMM) _uXm_mm_cmpestri_##IMM##(VA,LA,VB,LB)

 /*******************************************************/
 /* MACRO for use _uXm_mm_cmpistrz_*().				*/
 /* result                                              */
 /* const int temp = _uXm_MM_CMPISTRZ_IM(Inxmm_A, Inxmm_B, 127); */
 /*******************************************************/
#define _uXm_MM_CMPISTRZ_IM(VA,VB,IMM) _uXm_mm_cmpistrz_##IMM##(VA,VB)
#define _uXm_MM_CMPISTRC_IM(VA,VB,IMM) _uXm_mm_cmpistrc_##IMM##(VA,VB)
#define _uXm_MM_CMPISTRS_IM(VA,VB,IMM) _uXm_mm_cmpistrs_##IMM##(VA,VB)
#define _uXm_MM_CMPISTRO_IM(VA,VB,IMM) _uXm_mm_cmpistro_##IMM##(VA,VB)
#define _uXm_MM_CMPISTRA_IM(VA,VB,IMM) _uXm_mm_cmpistra_##IMM##(VA,VB)

 /*******************************************************/
 /* MACRO for use _uXm_mm_cmpestrz_*().				*/
 /* result                                              */
 /* const int temp = _uXm_MM_CMPESTRZ_IM(Inxmm_A, InintA, Inxmm_B, InintB, 127); */
 /*******************************************************/
#define _uXm_MM_CMPESTRZ_IM(VA,LA,VB,LB,IMM) _uXm_mm_cmpestrz_##IMM##(VA,LA,VB,LB)
#define _uXm_MM_CMPESTRC_IM(VA,LA,VB,LB,IMM) _uXm_mm_cmpestrc_##IMM##(VA,LA,VB,LB)
#define _uXm_MM_CMPESTRS_IM(VA,LA,VB,LB,IMM) _uXm_mm_cmpestrs_##IMM##(VA,LA,VB,LB)
#define _uXm_MM_CMPESTRO_IM(VA,LA,VB,LB,IMM) _uXm_mm_cmpestro_##IMM##(VA,LA,VB,LB)
#define _uXm_MM_CMPESTRA_IM(VA,LA,VB,LB,IMM) _uXm_mm_cmpestra_##IMM##(VA,LA,VB,LB)

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * Intrinsics for text/string processing.
 */
	extern __m128i uXm_callconv _uXm_mm_cmpistrm(__m128i Inxmm_A, __m128i Inxmm_B, const int Inint_Control);
	extern int uXm_callconv _uXm_mm_cmpistri(__m128i Inxmm_A, __m128i Inxmm_B, const int Inint_Control);

	extern __m128i uXm_callconv _uXm_mm_cmpestrm(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const int Inint_Control);
	extern int uXm_callconv _uXm_mm_cmpestri(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const int Inint_Control);

/*
 * Intrinsics for text/string processing and reading values of EFlags.
 */
	extern int uXm_callconv _uXm_mm_cmpistrz(__m128i Inxmm_A, __m128i Inxmm_B, const int Inint_Control);
	extern int uXm_callconv _uXm_mm_cmpistrc(__m128i Inxmm_A, __m128i Inxmm_B, const int Inint_Control);
	extern int uXm_callconv _uXm_mm_cmpistrs(__m128i Inxmm_A, __m128i Inxmm_B, const int Inint_Control);
	extern int uXm_callconv _uXm_mm_cmpistro(__m128i Inxmm_A, __m128i Inxmm_B, const int Inint_Control);
	extern int uXm_callconv _uXm_mm_cmpistra(__m128i Inxmm_A, __m128i Inxmm_B, const int Inint_Control);

	extern int uXm_callconv _uXm_mm_cmpestrz(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const int Inint_Control);
	extern int uXm_callconv _uXm_mm_cmpestrc(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const int Inint_Control);
	extern int uXm_callconv _uXm_mm_cmpestrs(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const int Inint_Control);
	extern int uXm_callconv _uXm_mm_cmpestro(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const int Inint_Control);
	extern int uXm_callconv _uXm_mm_cmpestra(__m128i Inxmm_A, int Inint_LA, __m128i Inxmm_B, int Inint_LB, const int Inint_Control);

/*
 * Packed integer 64-bit comparison, zeroing or filling with ones corresponding parts of result
 */
	extern __m128i uXm_callconv _uXm_mm_cmpgt_epi64(__m128i Inxmm_A, __m128i Inxmm_B);

/*
 * Calculate a number of bits set to 1
 */
	extern int uXm_callconv _uXm_mm_popcnt_u32(unsigned int Inint_A);

#if defined(uXm_X64)
	extern __int64 uXm_callconv _uXm_mm_popcnt_u64(unsigned __int64 Inint_A);
#endif // uXm_X64

/*
 * Accumulate CRC32(polynomial 0x11EDC6F41) value
 */
	extern unsigned int uXm_callconv _uXm_mm_crc32_u8(unsigned int Inint_A, unsigned char Inint_B);
	extern unsigned int uXm_callconv _uXm_mm_crc32_u16(unsigned int Inint_A, unsigned short Inint_B);
	extern unsigned int uXm_callconv _uXm_mm_crc32_u32(unsigned int Inint_A, unsigned int Inint_B);

#if defined(uXm_X64)
	extern unsigned __int64 uXm_callconv _uXm_mm_crc32_u64(unsigned __int64 Inint_A, unsigned __int64 Inint_B);
#endif // uXm_X64

uXm_PACK_POP

uXm_EXTERNC_END

#ifndef uXm_NMM_CMPESTR_H
#include "uXmnmmcmpestr.h"
#endif

#endif // uXm_SSE42

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_NMM_INTRIN_H
