
#pragma once

#ifndef uXm_MM_INTRIN_H
#define uXm_MM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)

#ifndef uXm_MMX_STRUCTS_H
#include "uxmmmxStructs.h"
#endif  /* uXm_MMX_STRUCTS_H */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH8

#if defined(uXm_X86)
/* General support intrinsics */
void  uXm_mm_empty(void);
__uXm64 uXm_mm_from_int(int _I);
__uXm64 uXm_mm_from_int64(__int64 _I);
int uXm_mm_to_int(__uXm64 _M);
__int64 uXm_mm_to_int64(__uXm64 _M);
__uXm64 uXm_mm_packsswb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_packssdw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_packuswb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_punpckhbw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_punpckhwd(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_punpckhdq(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_punpcklbw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_punpcklwd(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_punpckldq(__uXm64 _MM1, __uXm64 _MM2);

/* Packed arithmetic intrinsics */
__uXm64 uXm_mm_paddb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_paddw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_paddd(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_paddsb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_paddsw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_paddusb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_paddusw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_psubb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_psubw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_psubd(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_psubsb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_psubsw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_psubusb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_psubusw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_pmaddwd(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_pmulhw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_pmullw(__uXm64 _MM1, __uXm64 _MM2);

/* Shift intrinsics */
__uXm64 uXm_mm_psllw(__uXm64 _M, __uXm64 _Count);
__uXm64 uXm_mm_psllwi(__uXm64 _M, int _Count);
__uXm64 uXm_mm_pslld(__uXm64 _M, __uXm64 _Count);
__uXm64 uXm_mm_pslldi(__uXm64 _M, int _Count);
__uXm64 uXm_mm_psllq(__uXm64 _M, __uXm64 _Count);
__uXm64 uXm_mm_psllqi(__uXm64 _M, int _Count);
__uXm64 uXm_mm_psraw(__uXm64 _M, __uXm64 _Count);
__uXm64 uXm_mm_psrawi(__uXm64 _M, int _Count);
__uXm64 uXm_mm_psrad(__uXm64 _M, __uXm64 _Count);
__uXm64 uXm_mm_psradi(__uXm64 _M, int _Count);
__uXm64 uXm_mm_psrlw(__uXm64 _M, __uXm64 _Count);
__uXm64 uXm_mm_psrlwi(__uXm64 _M, int _Count);
__uXm64 uXm_mm_psrld(__uXm64 _M, __uXm64 _Count);
__uXm64 uXm_mm_psrldi(__uXm64 _M, int _Count);
__uXm64 uXm_mm_psrlq(__uXm64 _M, __uXm64 _Count);
__uXm64 uXm_mm_psrlqi(__uXm64 _M, int _Count);

/* Logical intrinsics */
__uXm64 uXm_mm_pand(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_pandn(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_por(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_pxor(__uXm64 _MM1, __uXm64 _MM2);

/* Comparison intrinsics */
__uXm64 uXm_mm_pcmpeqb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_pcmpeqw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_pcmpeqd(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_pcmpgtb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_pcmpgtw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 uXm_mm_pcmpgtd(__uXm64 _MM1, __uXm64 _MM2);

/* Utility intrinsics */
__uXm64 uXm_mm_setzero_si64(void);
__uXm64 uXm_mm_set_pi32(int _I1, int _I0);
__uXm64 uXm_mm_set_pi16(short _S3, short _S2, short _S1, short _S0);
__uXm64 uXm_mm_set_pi8(char _B7, char _B6, char _B5, char _B4,
				  char _B3, char _B2, char _B1, char _B0);
__uXm64 uXm_mm_set1_pi32(int _I);
__uXm64 uXm_mm_set1_pi16(short _S);
__uXm64 uXm_mm_set1_pi8(char _B);
__uXm64 uXm_mm_setr_pi32(int _I1, int _I0);
__uXm64 uXm_mm_setr_pi16(short _S3, short _S2, short _S1, short _S0);
__uXm64 uXm_mm_setr_pi8(char _B7, char _B6, char _B5, char _B4,
				   char _B3, char _B2, char _B1, char _B0);

/* Alternate intrinsic name definitions */
#define uXm_mm_cvtsi32_si64  uXm_mm_from_int
#define uXm_mm_cvtsi64_si32  uXm_mm_to_int
#define uXm_mm_packs_pi16    uXm_mm_packsswb
#define uXm_mm_packs_pi32    uXm_mm_packssdw
#define uXm_mm_packs_pu16    uXm_mm_packuswb
#define uXm_mm_unpackhi_pi8  uXm_mm_punpckhbw
#define uXm_mm_unpackhi_pi16 uXm_mm_punpckhwd
#define uXm_mm_unpackhi_pi32 uXm_mm_punpckhdq
#define uXm_mm_unpacklo_pi8  uXm_mm_punpcklbw
#define uXm_mm_unpacklo_pi16 uXm_mm_punpcklwd
#define uXm_mm_unpacklo_pi32 uXm_mm_punpckldq
#define uXm_mm_add_pi8       uXm_mm_paddb
#define uXm_mm_add_pi16      uXm_mm_paddw
#define uXm_mm_add_pi32      uXm_mm_paddd
#define uXm_mm_adds_pi8      uXm_mm_paddsb
#define uXm_mm_adds_pi16     uXm_mm_paddsw
#define uXm_mm_adds_pu8      uXm_mm_paddusb
#define uXm_mm_adds_pu16     uXm_mm_paddusw
#define uXm_mm_sub_pi8       uXm_mm_psubb
#define uXm_mm_sub_pi16      uXm_mm_psubw
#define uXm_mm_sub_pi32      uXm_mm_psubd
#define uXm_mm_subs_pi8      uXm_mm_psubsb
#define uXm_mm_subs_pi16     uXm_mm_psubsw
#define uXm_mm_subs_pu8      uXm_mm_psubusb
#define uXm_mm_subs_pu16     uXm_mm_psubusw
#define uXm_mm_madd_pi16     uXm_mm_pmaddwd
#define uXm_mm_mulhi_pi16    uXm_mm_pmulhw
#define uXm_mm_mullo_pi16    uXm_mm_pmullw
#define uXm_mm_sll_pi16      uXm_mm_psllw
#define uXm_mm_slli_pi16     uXm_mm_psllwi
#define uXm_mm_sll_pi32      uXm_mm_pslld
#define uXm_mm_slli_pi32     uXm_mm_pslldi
#define uXm_mm_sll_si64      uXm_mm_psllq
#define uXm_mm_slli_si64     uXm_mm_psllqi
#define uXm_mm_sra_pi16      uXm_mm_psraw
#define uXm_mm_srai_pi16     uXm_mm_psrawi
#define uXm_mm_sra_pi32      uXm_mm_psrad
#define uXm_mm_srai_pi32     uXm_mm_psradi
#define uXm_mm_srl_pi16      uXm_mm_psrlw
#define uXm_mm_srli_pi16     uXm_mm_psrlwi
#define uXm_mm_srl_pi32      uXm_mm_psrld
#define uXm_mm_srli_pi32     uXm_mm_psrldi
#define uXm_mm_srl_si64      uXm_mm_psrlq
#define uXm_mm_srli_si64     uXm_mm_psrlqi
#define uXm_mm_and_si64      uXm_mm_pand
#define uXm_mm_andnot_si64   uXm_mm_pandn
#define uXm_mm_or_si64       uXm_mm_por
#define uXm_mm_xor_si64      uXm_mm_pxor
#define uXm_mm_cmpeq_pi8     uXm_mm_pcmpeqb
#define uXm_mm_cmpeq_pi16    uXm_mm_pcmpeqw
#define uXm_mm_cmpeq_pi32    uXm_mm_pcmpeqd
#define uXm_mm_cmpgt_pi8     uXm_mm_pcmpgtb
#define uXm_mm_cmpgt_pi16    uXm_mm_pcmpgtw
#define uXm_mm_cmpgt_pi32    uXm_mm_pcmpgtd
#endif // defined(uXm_X86)

uXm_PACK_POP

uXm_EXTERNC_END

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_MM_INTRIN_H
