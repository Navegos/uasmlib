
#pragma once

#ifndef uXm_EMM_INTRIN_H
#define uXm_EMM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifdef uXm_SSE2

#ifndef uXm_XMM_INTRIN_H
#include "uXmxmmintrin.h"
#endif  /* uXm_XMM_INTRIN_H */

#ifndef uXm_SSE_STRUCTS_H
#include "uxmSSEStructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

/*******************************************************/
/* MACRO for shuffle parameter for _uXm_m128fid_shuffle_pd().*/
/* Argument fp1 is a digit[01] that represents the fp  */
/* from argument "b" of _uXm_m128fid_shuffle_pd that will be */
/* placed in fp1 of result. fp0 is the same for fp0 in */
/* result                                              */
/*******************************************************/
#define _uXm_MM_SHUFFLE2(fp1,fp0) (((fp1) << 1) | (fp0))
#define _uXm_MM_SHUFFLER2(fp0,fp1) ((fp0) | ((fp1) << 1))

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
 * Cacheability support
 */

extern void _uXm_mm_clflush(const void* _P);
extern void _uXm_mm_lfence(void);
extern void _uXm_mm_mfence(void);
extern void _uXm_mm_stream_si32(int* _P, __int32 InInt_D);
extern void _uXm_mm_pause(void);

/*
 * Support for casting between various SP, DP, INT vector types.
 * Note that these do no conversion of values, they just change
 * the type.
 */

extern __uXm128  _uXm_mm_castpd_ps(__uXm128d);
extern __uXm128i _uXm_mm_castpd_si128(__uXm128d);
extern __uXm128d _uXm_mm_castps_pd(__uXm128);
extern __uXm128i _uXm_mm_castps_si128(__uXm128);
extern __uXm128  _uXm_mm_castsi128_ps(__uXm128i);
extern __uXm128d _uXm_mm_castsi128_pd(__uXm128i);

uXm_PACK_POP

uXm_EXTERNC_END

#define _uXm_m128fid_set1_pd       _uXm_m128fid_set_pd1
#define _uXm_m128fid_load1_pd      _uXm_m128fid_load_pd1
#define _uXm_m128fid_store1_pd     _uXm_m128fid_store_pd1
#define _uXm_m128fid_storeu1_pd    _uXm_m128fid_storeu_pd1


//#define _uXm_m128fid_set_epi64     _uXm_m128fid_set_epi64x
#endif // uXm_SSE2

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_EMM_INTRIN_H
