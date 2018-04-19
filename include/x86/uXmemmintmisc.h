
#pragma once

#ifndef uXm_EMM_INTMISC_H
#define uXm_EMM_INTMISC_H

#ifndef uXm_TYPES_H
#include "uXmTypes.h"
#endif  /* uXm_TYPES_H */

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

#ifndef uXm_SSE_STRUCTS_H
#include "uXmSSEStructs.h"
#endif  /* uXm_MMX_STRUCTS_H */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

/*
* Integer, misc
*/

extern __uXm128i uXm_mm_extract_epi16_0(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_extract_epi16_1(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_extract_epi16_2(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_extract_epi16_3(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_extract_epi16_4(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_extract_epi16_5(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_extract_epi16_6(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_extract_epi16_7(__uXm128i InXmm_A);

extern __uXm128i uXm_mm_insert_epi16_0(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_insert_epi16_1(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_insert_epi16_2(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_insert_epi16_3(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_insert_epi16_4(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_insert_epi16_5(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_insert_epi16_6(__uXm128i InXmm_A);
extern __uXm128i uXm_mm_insert_epi16_7(__uXm128i InXmm_A);

uXm_PACK_POP

uXm_EXTERNC_END

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_EMM_INTMISC_H
