
#pragma once

#ifndef uXm128i_EMM_INTRIN_H
#define uXm128i_EMM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE2

#ifndef uXm_XMM_INTRIN_H
#include "../uXmxmmintrin.h"
#endif  /* uXm_XMM_INTRIN_H */

#ifndef uXm_SSE_STRUCTS_H
#include "../uxmSSEStructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

/*
* Integer, Macros
*/

/*******************************************************/
/* MACRO for use _uXm_m128i_slli_si128_*().				*/
/* result                                              */
/* const __uXm128i temp = _uXm_m128i_SLLI_SI128_IM(InXmm_A, 3); */
/*******************************************************/
#define _uXm_M128I_SLLI_SI128_IM(VA,IMM) _uXm_m128i_slli_si128_##IMM##(VA)
#define _uXm_M128I_SLLI_EPI16_IM(VA,IMM) _uXm_m128i_slli_epi16_##IMM##(VA)
#define _uXm_M128I_SLLI_EPI32_IM(VA,IMM) _uXm_m128i_slli_epi32_##IMM##(VA)
#define _uXm_M128I_SLLI_EPI64_IM(VA,IMM) _uXm_m128i_slli_epi64_##IMM##(VA)
#define _uXm_M128I_SRAI_EPI16_IM(VA,IMM) _uXm_m128i_srai_epi16_##IMM##(VA)
#define _uXm_M128I_SRAI_EPI32_IM(VA,IMM) _uXm_m128i_srai_epi32_##IMM##(VA)
#define _uXm_M128I_SRLI_SI128_IM(VA,IMM) _uXm_m128i_srli_si128_##IMM##(VA)
#define _uXm_M128I_SRLI_EPI16_IM(VA,IMM) _uXm_m128i_srli_epi16_##IMM##(VA)
#define _uXm_M128I_SRLI_EPI32_IM(VA,IMM) _uXm_m128i_srli_epi32_##IMM##(VA)
#define _uXm_M128I_SRLI_EPI64_IM(VA,IMM) _uXm_m128i_srli_epi64_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_m128i_extract_epi16_*(). from 0 to 7 */
/* result                                              */
/* const __uXm128i temp = _uXm_m128i_extract_epi16_(InXmm_A, 3); */
/*******************************************************/
#define _uXm_M128I_EXTRACT_EPI16_IM(VA,IMM) _uXm_m128i_extract_epi16_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_m128i_insert_epi16_*(). from 0 to 7 */
/* result                                              */
/* const __uXm128i temp = _uXm_m128i_insert_epi16_(InXmm_A, 3); */
/*******************************************************/
#define _uXm_M128I_INSERT_EPI16_IM(VA,IMM) _uXm_m128i_insert_epi16_##IMM##(VA)

/*******************************************************/
/* MACRO for use _uXm_m128i_shuffle_epi32_****().				*/
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of _uXm_m128i_shuffle_epi32_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of _uXm_m128i_shuffle_epi32_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __uXm128i temp = _uXm_m128i_SHUFFLE_EPI32_IMR(InXmm_A, InXmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_M128I_SHUFFLE_EPI32_IM(VA,it3,it2,it1,it0) _uXm_m128i_shuffle_epi32_##it3##it2##it1##it0##(VA)
#define _uXm_M128I_SHUFFLE_EPI32_IMR(VA,it0,it1,it2,it3) _uXm_m128i_shuffle_epi32_##it3##it2##it1##it0##(VA)

/*******************************************************/
/* MACRO for use _uXm_m128i_shufflehi_epi16_****().				*/
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of _uXm_m128i_shufflehi_epi16_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of _uXm_m128i_shufflehi_epi16_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __uXm128i temp = _uXm_m128i_SHUFFLEHI_EPI16_IMR(InXmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_M128I_SHUFFLEHI_EPI16_IM(VA,it3,it2,it1,it0) _uXm_m128i_shufflehi_epi16_##it3##it2##it1##it0##(VA)
#define _uXm_M128I_SHUFFLEHI_EPI16_IMR(VA,it0,it1,it2,it3) _uXm_m128i_shufflehi_epi16_##it3##it2##it1##it0##(VA)

/*******************************************************/
/* MACRO for use _uXm_m128i_shufflelo_epi16_****().				*/
/* Argument it3 is a digit[0123] that represents the it*/
/* from argument "b" of _uXm_m128i_shufflelo_epi16_**** that will be     */
/* placed in it3 of result. it2 is the same for it2 in */
/* result. it1 is a digit[0123] that represents the it */
/* from argument "a" of _uXm_m128i_shufflelo_epi16_**** that will be     */
/* places in it1 of result. it0 is the same for it0 of */
/* result                                              */
/* const __uXm128i temp = _uXm_m128i_SHUFFLELO_EPI16_IMR(InXmm_A, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_M128I_SHUFFLELO_EPI16_IM(VA,it3,it2,it1,it0) _uXm_m128i_shufflelo_epi16_##it3##it2##it1##it0##(VA)
#define _uXm_M128I_SHUFFLELO_EPI16_IMR(VA,it0,it1,it2,it3) _uXm_m128i_shufflelo_epi16_##it3##it2##it1##it0##(VA)

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * Integer, arithmetic
 */

extern __uXm128i _uXm_m128i_add_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_add_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_add_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
#if defined(uXm_X86)
extern __uXm64 _uXm_m64_add_si64(__uXm64 Inmm_A, __uXm64 Inmm_B);
#endif
extern __uXm128i _uXm_m128i_add_epi64(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_adds_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_adds_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_adds_epu8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_adds_epu16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_avg_epu8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_avg_epu16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_madd_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_max_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_max_epu8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_min_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_min_epu8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_mulhi_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_mulhi_epu16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_mullo_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
#if defined(uXm_X86)
extern __uXm64 _uXm_m64_mul_su32(__uXm64 Inmm_A, __uXm64 Inmm_B);
#endif
extern __uXm128i _uXm_m128i_mul_epu32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_sad_epu8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_sub_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_sub_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_sub_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
#if defined(uXm_X86)
extern __uXm64 _uXm_m64_sub_si64(__uXm64 Inmm_A, __uXm64 Inmm_B);
#endif
extern __uXm128i _uXm_m128i_sub_epi64(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_subs_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_subs_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_subs_epu8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_subs_epu16(__uXm128i InXmm_A, __uXm128i InXmm_B);

/*
 * Integer, logicals
 */

extern __uXm128i _uXm_m128i_and_si128(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_andnot_si128(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_or_si128(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_xor_si128(__uXm128i InXmm_A, __uXm128i InXmm_B);

/*
 * Integer, shifts
 */

#include "uXm128iemmintshifts.h"
extern __uXm128i _uXm_m128i_slli_si128(__uXm128i InXmm_A, int InInt_Imm);
#define _uXm_m128i_bslli_si128 _uXm_m128i_slli_si128
extern __uXm128i _uXm_m128i_slli_epi16(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i _uXm_m128i_sll_epi16(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i _uXm_m128i_slli_epi32(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i _uXm_m128i_sll_epi32(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i _uXm_m128i_slli_epi64(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i _uXm_m128i_sll_epi64(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i _uXm_m128i_srai_epi16(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i _uXm_m128i_sra_epi16(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i _uXm_m128i_srai_epi32(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i _uXm_m128i_sra_epi32(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i _uXm_m128i_srli_si128(__uXm128i InXmm_A, int InInt_Imm);
#define _uXm_m128i_bsrli_si128 _uXm_m128i_srli_si128
extern __uXm128i _uXm_m128i_srli_epi16(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i _uXm_m128i_srl_epi16(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i _uXm_m128i_srli_epi32(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i _uXm_m128i_srl_epi32(__uXm128i InXmm_A, __uXm128i InXmm_Count);
extern __uXm128i _uXm_m128i_srli_epi64(__uXm128i InXmm_A, int InInt_Count);
extern __uXm128i _uXm_m128i_srl_epi64(__uXm128i InXmm_A, __uXm128i InXmm_Count);

/*
 * Integer, comparisons
 */

extern __uXm128i _uXm_m128i_cmpeq_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_cmpeq_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_cmpeq_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_cmpgt_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_cmpgt_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_cmpgt_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_cmplt_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_cmplt_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_cmplt_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);

/*
 * Integer, converts
 */

extern __uXm128i _uXm_m128i_cvtsi32_si128(int InInt_A);
extern int _uXm_m128i_cvtsi128_si32(__uXm128i InXmm_A);

/*
 * Integer, misc
 */

extern __uXm128i _uXm_m128i_packs_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_packs_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_packus_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
#include "uXm128iemmintmisc.h"
extern int _uXm_m128i_extract_epi16(__uXm128i InXmm_A, int InInt_Imm);
extern __uXm128i _uXm_m128i_insert_epi16(__uXm128i InXmm_A, int InInt_B, int InInt_Imm);
extern int _uXm_m128i_movemask_epi8(__uXm128i InXmm_A);
#include "uXm128iemmintshuffle.h"
extern __uXm128i _uXm_m128i_shuffle_epi32(__uXm128i InXmm_A, int InInt_Imm);
extern __uXm128i _uXm_m128i_shufflehi_epi16(__uXm128i InXmm_A, int InInt_Imm);
extern __uXm128i _uXm_m128i_shufflelo_epi16(__uXm128i InXmm_A, int InInt_Imm);
extern __uXm128i _uXm_m128i_unpackhi_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_unpackhi_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_unpackhi_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_unpackhi_epi64(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_unpacklo_epi8(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_unpacklo_epi16(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_unpacklo_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern __uXm128i _uXm_m128i_unpacklo_epi64(__uXm128i InXmm_A, __uXm128i InXmm_B);

/*
 * Integer, loads
 */

extern __uXm128i _uXm_m128i_load1_epi64(const __uXm128i* InPXmm_A);
extern __uXm128i _uXm_m128i_load1_epi32(const __uXm128i* InPXmm_A);
extern __uXm128i _uXm_m128i_load_si128(const __uXm128i* InPXmm_A);
extern __uXm128i _uXm_m128i_loadr_epi64(const __uXm128i* InPXmm_A);
extern __uXm128i _uXm_m128i_loadr_epi32(const __uXm128i* InPXmm_A);
extern __uXm128i _uXm_m128i_loadu_si128(const __uXm128i* InPXmm_A);
extern __uXm128i _uXm_m128i_loadur_epi64(const __uXm128i* InPXmm_A);
extern __uXm128i _uXm_m128i_loadur_epi32(const __uXm128i* InPXmm_A);
extern __uXm128i _uXm_m128i_loadh_epi64(const __uXm128i* InPXmm_A);
extern __uXm128i _uXm_m128i_loadl_epi64(const __uXm128i* InPXmm_A);
extern __uXm128i _uXm_m128i_loadh_epi32(const __uXm128i* InPXmm_A);
extern __uXm128i _uXm_m128i_loadl_epi32(const __uXm128i* InPXmm_A);

/*
 * Integer, sets
 */

#if defined(uXm_X86)
extern __uXm128i _uXm_m128i_set_pi64(__uXm64 Inmm_Q1, __uXm64 Inmm_Q0);
extern __uXm128i _uXm_m128i_setr_pi64(__uXm64 Inmm_Q0, __uXm64 Inmm_Q1);
extern __uXm128i _uXm_m128i_set1_pi64(__uXm64 Inmm_Q);
#endif

extern __uXm128i _uXm_m128i_set_epi64(__uXm128i InXmm_Q1, __uXm128i InXmm_Q0);
extern __uXm128i _uXm_m128i_set_epi64x(__int64 InInt_Q1, __int64 InInt_Q0);
extern __uXm128i _uXm_m128i_set_epi32(__int32 InInt_D3, __int32 InInt_D2, __int32 InInt_D1, __int32 InInt_D0);
extern __uXm128i _uXm_m128i_set_epi16(__int16 InInt_W7, __int16 InInt_W6, __int16 InInt_W5, __int16 InInt_W4,
								  __int16 InInt_W3, __int16 InInt_W2, __int16 InInt_W1, __int16 InInt_W0);
extern __uXm128i _uXm_m128i_set_epi8(__int8 InInt_B15, __int8 InInt_B14, __int8 InInt_B13, __int8 InInt_B12,
								 __int8 InInt_B11, __int8 InInt_B10, __int8 InInt_B9, __int8 InInt_B8,
								 __int8 InInt_B7, __int8 InInt_B6, __int8 InInt_B5, __int8 InInt_B4,
								 __int8 InInt_B3, __int8 InInt_B2, __int8 InInt_B1, __int8 InInt_B0);

extern __uXm128i _uXm_m128i_setr_epi64(__uXm128i InXmm_Q0, __uXm128i InXmm_Q1);
extern __uXm128i _uXm_m128i_setr_epi64x(__int64 InInt_Q0, __int64 InInt_Q1);
extern __uXm128i _uXm_m128i_setr_epi32(__int32 InInt_D0, __int32 InInt_D1, __int32 InInt_D2, __int32 InInt_D3);
extern __uXm128i _uXm_m128i_setr_epi16(__int16 InInt_W0, __int16 InInt_W1, __int16 InInt_W2, __int16 InInt_W3,
								   __int16 InInt_W4, __int16 InInt_W5, __int16 InInt_W6, __int16 InInt_W7);
extern __uXm128i _uXm_m128i_setr_epi8(__int8 InInt_B15, __int8 InInt_B14, __int8 InInt_B13, __int8 InInt_B12,
								  __int8 InInt_B11, __int8 InInt_B10, __int8 InInt_B9, __int8 InInt_B8,
								  __int8 InInt_B7, __int8 InInt_B6, __int8 InInt_B5, __int8 InInt_B4,
								  __int8 InInt_B3, __int8 InInt_B2, __int8 InInt_B1, __int8 InInt_B0);

extern __uXm128i _uXm_m128i_setl_epi64(__uXm128i InXmm_Q);
extern __uXm128i _uXm_m128i_set1_epi64x(__int64 InInt_Q);
extern __uXm128i _uXm_m128i_set1_epi32(__int32 InInt_D);
extern __uXm128i _uXm_m128i_set1_epi16(__int16 InInt_W);
extern __uXm128i _uXm_m128i_set1_epi8(__int8 InInt_B);

extern __uXm128i _uXm_m128i_setzero_si128(void);

/*
 * Integer, stores
 */

extern void _uXm_m128i_store1_epi64(__uXm128i* OutPXmm_A, __uXm128i InXmm_Q);
extern void _uXm_m128i_store1_epi32(__uXm128i* OutPXmm_A, __uXm128i InXmm_D);
extern void _uXm_m128i_store_si128(__uXm128i* OutPXmm_A, __uXm128i InXmm_B);
extern void _uXm_m128i_storer_epi64(__uXm128i* OutPXmm_A, __uXm128i InXmm_Q);
extern void _uXm_m128i_storer_epi32(__uXm128i* OutPXmm_A, __uXm128i InXmm_D);
extern void _uXm_m128i_storeu_si128(__uXm128i* OutPXmm_A, __uXm128i InXmm_B);
extern void _uXm_m128i_storeur_epi64(__uXm128i* OutPXmm_A, __uXm128i InXmm_Q);
extern void _uXm_m128i_storeur_epi32(__uXm128i* OutPXmm_A, __uXm128i InXmm_D);
extern void _uXm_m128i_storeh_epi64(__uXm128i* OutPXmm_A, __uXm128i InXmm_Q);
extern void _uXm_m128i_storel_epi64(__uXm128i* OutPXmm_A, __uXm128i InXmm_Q);
extern void _uXm_m128i_storeh_epi32(__uXm128i* OutPXmm_A, __uXm128i InXmm_D);
extern void _uXm_m128i_storel_epi32(__uXm128i* OutPXmm_A, __uXm128i InXmm_D);
extern void _uXm_m128i_maskmoveu_si128(__uXm128i InXmm_D, __uXm128i InXmm_N, __int8* OutPint_P);

/*
 * Integer, moves
 */

extern void _uXm_m128i_move_epi64(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern void _uXm_m128i_mover_epi64(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern void _uXm_m128i_move_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern void _uXm_m128i_mover_epi32(__uXm128i InXmm_A, __uXm128i InXmm_B);
extern void _uXm_m128i_move_si128(__uXm128i InXmm_A, __uXm128i InXmm_B);
#if defined(uXm_X86)
extern __uXm128i _uXm_m128i_movpi64_epi64(__uXm64 Inmm_Q);
extern __uXm64 _uXm_m128i_movepi64_pi64(__uXm128i InXmm_Q);
#endif

/*
 * Integers, conversions
 */

extern __uXm128i _uXm_m128i_cvtpd_epi32(__uXm128i InXmm_A);
extern __uXm128i _uXm_m128i_cvttpd_epi32(__uXm128i InXmm_A);

extern __uXm128i _uXm_m128i_cvtps_epi32(__uXm128 InXmm_A);
extern __uXm128i _uXm_m128i_cvttps_epi32(__uXm128 InXmm_A);

/*
 * Support for 64-bit extension intrinsics
 */

#if defined (uXm_X64)
extern __uXm128i _uXm_m128i_cvtsi64_si128(__int64);
extern __int64 _uXm_m128i_cvtsi128_si64(__uXm128i);
#endif  /* defined (uXm_X64) */

/*
 * Cacheability support
 */

extern void _uXm_m128i_stream_si128(__uXm128i* OutPXmm_A, __uXm128i InXmm_A);

/*
 * Support for casting between various SP, DP, INT vector types.
 * Note that these do no conversion of values, they just change
 * the type.
 */

extern __uXm128i _uXm_m128i_castpd_si128(__uXm128i);
extern __uXm128i _uXm_m128i_castps_si128(__uXm128);

uXm_PACK_POP

uXm_EXTERNC_END

#endif // uXm_SSE2

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm128i_EMM_INTRIN_H
