
#pragma once

#ifndef uX_MM_INTRIN_H
#define uX_MM_INTRIN_H

#ifndef uX_TYPES_H
#include "uXTypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#if defined(uX_MMX) && defined(uX_X86)

#ifndef _MMINTRIN_H_INCLUDED
#include <mmintrin.h>
#endif  /* _MMINTRIN_H_INCLUDED */

/*
 * Integer, Macros
 */

 /*******************************************************/
 /* MACRO for use _uX_m_psllwi_*().             */
 /* result                                              */
 /* const __m64 temp = _uX_MM_SLLI_PI16_IM(Inmm_A, 3); */
 /*******************************************************/
#define _uX_MM_SLLI_PI16_IM(VA,IMM) _uX_m_psllwi_##IMM##(VA)
#define _uX_MM_SLLI_PI32_IM(VA,IMM) _uX_m_pslldi_##IMM##(VA)
#define _uX_MM_SLLI_PI64_IM(VA,IMM) _uX_m_psllqi_##IMM##(VA)
#define _uX_MM_SRAI_PI16_IM(VA,IMM) _uX_m_psrawi_##IMM##(VA)
#define _uX_MM_SRAI_PI32_IM(VA,IMM) _uX_m_psradi_##IMM##(VA)
#define _uX_MM_SRLI_PI16_IM(VA,IMM) _uX_m_psrlwi_##IMM##(VA)
#define _uX_MM_SRLI_PI32_IM(VA,IMM) _uX_m_psrldi_##IMM##(VA)
#define _uX_MM_SRLI_PI64_IM(VA,IMM) _uX_m_psrlqi_##IMM##(VA)

uX_EXTERNC_BEGIN
uX_PACK_PUSH_MM

/* General support intrinsics */
    extern void uX_callconv _uX_m_empty(void);
    extern __m64 uX_callconv _uX_m_from_int(int _I);
    /*extern __m64 uX_callconv _uX_m_from_int64(__int64 _I);*/
    extern int uX_callconv _uX_m_to_int(__m64 _M);
    /*extern __int64 uX_callconv _uX_m_to_int64(__m64 _M);*/
    extern __m64 uX_callconv _uX_m_packsswb(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_packssdw(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_packuswb(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_punpckhbw(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_punpckhwd(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_punpckhdq(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_punpcklbw(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_punpcklwd(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_punpckldq(__m64 _MM1, __m64 _MM2);

/* Packed arithmetic intrinsics */
    extern __m64 uX_callconv _uX_m_paddb(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_paddw(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_paddd(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_paddsb(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_paddsw(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_paddusb(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_paddusw(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_psubb(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_psubw(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_psubd(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_psubsb(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_psubsw(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_psubusb(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_psubusw(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_pmaddwd(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_pmulhw(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_pmullw(__m64 _MM1, __m64 _MM2);

/* Shift intrinsics */
    extern __m64 uX_callconv _uX_m_psllw(__m64 _M, __m64 _Count);
    extern __m64 uX_callconv _uX_m_psllwi(__m64 _M, const unsigned int _Count);
    extern __m64 uX_callconv _uX_m_pslld(__m64 _M, __m64 _Count);
    extern __m64 uX_callconv _uX_m_pslldi(__m64 _M, const unsigned int _Count);
    extern __m64 uX_callconv _uX_m_psllq(__m64 _M, __m64 _Count);
    extern __m64 uX_callconv _uX_m_psllqi(__m64 _M, const unsigned int _Count);
    extern __m64 uX_callconv _uX_m_psraw(__m64 _M, __m64 _Count);
    extern __m64 uX_callconv _uX_m_psrawi(__m64 _M, const unsigned int _Count);
    extern __m64 uX_callconv _uX_m_psrad(__m64 _M, __m64 _Count);
    extern __m64 uX_callconv _uX_m_psradi(__m64 _M, const unsigned int _Count);
    extern __m64 uX_callconv _uX_m_psrlw(__m64 _M, __m64 _Count);
    extern __m64 uX_callconv _uX_m_psrlwi(__m64 _M, const unsigned int _Count);
    extern __m64 uX_callconv _uX_m_psrld(__m64 _M, __m64 _Count);
    extern __m64 uX_callconv _uX_m_psrldi(__m64 _M, const unsigned int _Count);
    extern __m64 uX_callconv _uX_m_psrlq(__m64 _M, __m64 _Count);
    extern __m64 uX_callconv _uX_m_psrlqi(__m64 _M, const unsigned int _Count);

/* Logical intrinsics */
    extern __m64 uX_callconv _uX_m_pand(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_pandn(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_por(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_pxor(__m64 _MM1, __m64 _MM2);

/* Comparison intrinsics */
    extern __m64 uX_callconv _uX_m_pcmpeqb(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_pcmpeqw(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_pcmpeqd(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_pcmpgtb(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_pcmpgtw(__m64 _MM1, __m64 _MM2);
    extern __m64 uX_callconv _uX_m_pcmpgtd(__m64 _MM1, __m64 _MM2);

/* Utility intrinsics */
    extern __m64 uX_callconv _uX_m_setzero_si64(void);
    extern __m64 uX_callconv _uX_m_set_pi32(int _I1, int _I0);
    extern __m64 uX_callconv _uX_m_set_pi16(short _S3, short _S2, short _S1, short _S0);
    extern __m64 uX_callconv _uX_m_set_pi8(char _B7, char _B6, char _B5, char _B4,
                                              char _B3, char _B2, char _B1, char _B0);
    extern __m64 uX_callconv _uX_m_set1_pi32(int _I);
    extern __m64 uX_callconv _uX_m_set1_pi16(short _S);
    extern __m64 uX_callconv _uX_m_set1_pi8(char _B);
    extern __m64 uX_callconv _uX_m_setr_pi32(int _I1, int _I0);
    extern __m64 uX_callconv _uX_m_setr_pi16(short _S3, short _S2, short _S1, short _S0);
    extern __m64 uX_callconv _uX_m_setr_pi8(char _B7, char _B6, char _B5, char _B4,
                                               char _B3, char _B2, char _B1, char _B0);

uX_PACK_POP
uX_EXTERNC_END

/* Alternate intrinsic name definitions */
#define _uX_mm_empty         _uX_m_empty
#define _uX_mm_cvtsi32_si64  _uX_m_from_int
#define _uX_mm_cvtsi64_si32  _uX_m_to_int
#define _uX_mm_packs_pi16    _uX_m_packsswb
#define _uX_mm_packs_pi32    _uX_m_packssdw
#define _uX_mm_packs_pu16    _uX_m_packuswb
#define _uX_mm_unpackhi_pi8  _uX_m_punpckhbw
#define _uX_mm_unpackhi_pi16 _uX_m_punpckhwd
#define _uX_mm_unpackhi_pi32 _uX_m_punpckhdq
#define _uX_mm_unpacklo_pi8  _uX_m_punpcklbw
#define _uX_mm_unpacklo_pi16 _uX_m_punpcklwd
#define _uX_mm_unpacklo_pi32 _uX_m_punpckldq
#define _uX_mm_add_pi8       _uX_m_paddb
#define _uX_mm_add_pi16      _uX_m_paddw
#define _uX_mm_add_pi32      _uX_m_paddd
#define _uX_mm_adds_pi8      _uX_m_paddsb
#define _uX_mm_adds_pi16     _uX_m_paddsw
#define _uX_mm_adds_pu8      _uX_m_paddusb
#define _uX_mm_adds_pu16     _uX_m_paddusw
#define _uX_mm_sub_pi8       _uX_m_psubb
#define _uX_mm_sub_pi16      _uX_m_psubw
#define _uX_mm_sub_pi32      _uX_m_psubd
#define _uX_mm_subs_pi8      _uX_m_psubsb
#define _uX_mm_subs_pi16     _uX_m_psubsw
#define _uX_mm_subs_pu8      _uX_m_psubusb
#define _uX_mm_subs_pu16     _uX_m_psubusw
#define _uX_mm_madd_pi16     _uX_m_pmaddwd
#define _uX_mm_mulhi_pi16    _uX_m_pmulhw
#define _uX_mm_mullo_pi16    _uX_m_pmullw
#define _uX_mm_sll_pi16      _uX_m_psllw
#define _uX_mm_slli_pi16     _uX_m_psllwi
#define _uX_mm_sll_pi32      _uX_m_pslld
#define _uX_mm_slli_pi32     _uX_m_pslldi
#define _uX_mm_sll_si64      _uX_m_psllq
#define _uX_mm_slli_si64     _uX_m_psllqi
#define _uX_mm_sra_pi16      _uX_m_psraw
#define _uX_mm_srai_pi16     _uX_m_psrawi
#define _uX_mm_sra_pi32      _uX_m_psrad
#define _uX_mm_srai_pi32     _uX_m_psradi
#define _uX_mm_srl_pi16      _uX_m_psrlw
#define _uX_mm_srli_pi16     _uX_m_psrlwi
#define _uX_mm_srl_pi32      _uX_m_psrld
#define _uX_mm_srli_pi32     _uX_m_psrldi
#define _uX_mm_srl_si64      _uX_m_psrlq
#define _uX_mm_srli_si64     _uX_m_psrlqi
#define _uX_mm_and_si64      _uX_m_pand
#define _uX_mm_andnot_si64   _uX_m_pandn
#define _uX_mm_or_si64       _uX_m_por
#define _uX_mm_xor_si64      _uX_m_pxor
#define _uX_mm_cmpeq_pi8     _uX_m_pcmpeqb
#define _uX_mm_cmpeq_pi16    _uX_m_pcmpeqw
#define _uX_mm_cmpeq_pi32    _uX_m_pcmpeqd
#define _uX_mm_cmpgt_pi8     _uX_m_pcmpgtb
#define _uX_mm_cmpgt_pi16    _uX_m_pcmpgtw
#define _uX_mm_cmpgt_pi32    _uX_m_pcmpgtd

#ifndef uX_MM_INTSHIFTS_H
#include "uXmmintshifts.h"
#endif

/*
#ifndef uX_MM_DATA_H
#include "uXmmdata.h"
#endif*/

#endif // uX_MMX uX_X86

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_MM_INTRIN_H