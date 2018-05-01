
#pragma once

#ifndef uXm64_XMM_INTRIN_H
#define uXm64_XMM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#if defined(uXm_SSE) && defined(uXm_X86)

#ifndef uXm_MMX_STRUCTS_H
#include "../../MMX/uXmMMXStructs.h"
#endif  /* uXm_MMX_STRUCTS_H */

#if defined (uXm_X86)
/*******************************************************/
/* MACRO for use _uXm_m64_pshufw_****().				*/
/* Argument word3 is a digit[0123] that represents the word*/
/* from argument "b" of _uXm_m64_pshufw_**** that will be     */
/* placed in word3 of result. word2 is the same for word2 in */
/* result. word1 is a digit[0123] that represents the word */
/* from argument "a" of _uXm_m64_pshufw_**** that will be     */
/* places in word1 of result. word0 is the same for word0 of */
/* result                                              */
/* const __uXm64 temp = _uXm_M64_PSHUFW_IMR(InXmm_A, InXmm_B, 0, 1, 2, 3); */
/*******************************************************/
#define _uXm_M64_PSHUFW_IM(VA,VB,word3,word2,word1,word0) _uXm_m64_pshufw_##word3##word2##word1##word0##(VA,VB)
#define _uXm_M64_PSHUFW_IMR(VA,VB,word0,word1,word2,word3) _uXm_m64_pshufw_##word3##word2##word1##word0##(VA,VB)
#endif  /* defined (uXm_X86) */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH8
/*
 * Integer (MMX) extensions
 */
extern int _uXm_m64_pextrw(__uXm64 Inmm_A, int _Imm8);
extern __uXm64 _uXm_m64_pinsrw(__uXm64 Inmm_A, int InInt_B, int _Imm8);
extern __uXm64 _uXm_m64_pmaxsw(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 _uXm_m64_pmaxub(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 _uXm_m64_pminsw(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 _uXm_m64_pminub(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern int _uXm_m64_pmovmskb(__uXm64 Inmm_A);
extern __uXm64 _uXm_m64_pmulhuw(__uXm64 Inmm_A, __uXm64 Inmm_B);

extern __uXm64 _uXm_m64_pshufw(__uXm64 Inmm_A, int _Imm8);
extern void _uXm_m64_maskmovq(__uXm64 Inmm_A, __uXm64 Inmm_B, __int8*  OutPInt8_C);
extern __uXm64 _uXm_m64_pavgb(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 _uXm_m64_pavgw(__uXm64 Inmm_A, __uXm64 Inmm_B);
extern __uXm64 _uXm_m64_psadbw(__uXm64 Inmm_A, __uXm64 Inmm_B);

extern void _uXm_m64_stream_pi(__uXm64* OutPmm_A, __uXm64 Inmm_B);

uXm_PACK_POP

uXm_EXTERNC_END

#include "uXm64pshufw.h"

#endif // uXm_SSE uXm_X86

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm64_XMM_INTRIN_H
