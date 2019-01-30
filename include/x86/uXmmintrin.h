
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

uX_EXTERNC_BEGIN

uX_PACK_PUSH8

/* General support intrinsics */
	extern __m64 uX_callconv _uX_mm_from_int(int _I);
	extern __m64 uX_callconv _uX_mm_from_int64(__int64 _I);
	extern int uX_callconv _uX_mm_to_int(__m64 _M);
	extern __int64 uX_callconv _uX_mm_to_int64(__m64 _M);
	extern __m64 uX_callconv _uX_mm_packsswb(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_packssdw(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_packuswb(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_punpckhbw(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_punpckhwd(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_punpckhdq(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_punpcklbw(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_punpcklwd(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_punpckldq(__m64 _MM1, __m64 _MM2);

/* Packed arithmetic intrinsics */
	extern __m64 uX_callconv _uX_mm_paddb(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_paddw(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_paddd(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_paddsb(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_paddsw(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_paddusb(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_paddusw(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_psubb(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_psubw(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_psubd(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_psubsb(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_psubsw(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_psubusb(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_psubusw(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_pmaddwd(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_pmulhw(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_pmullw(__m64 _MM1, __m64 _MM2);

/* Shift intrinsics */
	extern __m64 uX_callconv _uX_mm_psllw(__m64 _M, __m64 _Count);
	extern __m64 uX_callconv _uX_mm_psllwi(__m64 _M, const unsigned int _Count);
	extern __m64 uX_callconv _uX_mm_pslld(__m64 _M, __m64 _Count);
	extern __m64 uX_callconv _uX_mm_pslldi(__m64 _M, const unsigned int _Count);
	extern __m64 uX_callconv _uX_mm_psllq(__m64 _M, __m64 _Count);
	extern __m64 uX_callconv _uX_mm_psllqi(__m64 _M, const unsigned int _Count);
	extern __m64 uX_callconv _uX_mm_psraw(__m64 _M, __m64 _Count);
	extern __m64 uX_callconv _uX_mm_psrawi(__m64 _M, const unsigned int _Count);
	extern __m64 uX_callconv _uX_mm_psrad(__m64 _M, __m64 _Count);
	extern __m64 uX_callconv _uX_mm_psradi(__m64 _M, const unsigned int _Count);
	extern __m64 uX_callconv _uX_mm_psrlw(__m64 _M, __m64 _Count);
	extern __m64 uX_callconv _uX_mm_psrlwi(__m64 _M, const unsigned int _Count);
	extern __m64 uX_callconv _uX_mm_psrld(__m64 _M, __m64 _Count);
	extern __m64 uX_callconv _uX_mm_psrldi(__m64 _M, const unsigned int _Count);
	extern __m64 uX_callconv _uX_mm_psrlq(__m64 _M, __m64 _Count);
	extern __m64 uX_callconv _uX_mm_psrlqi(__m64 _M, const unsigned int _Count);

/* Logical intrinsics */
	extern __m64 uX_callconv _uX_mm_pand(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_pandn(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_por(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_pxor(__m64 _MM1, __m64 _MM2);

/* Comparison intrinsics */
	extern __m64 uX_callconv _uX_mm_pcmpeqb(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_pcmpeqw(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_pcmpeqd(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_pcmpgtb(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_pcmpgtw(__m64 _MM1, __m64 _MM2);
	extern __m64 uX_callconv _uX_mm_pcmpgtd(__m64 _MM1, __m64 _MM2);

/* Utility intrinsics */
	extern __m64 uX_callconv _uX_mm_setzero_si64(void);
	extern __m64 uX_callconv _uX_mm_set_pi32(int _I1, int _I0);
	extern __m64 uX_callconv _uX_mm_set_pi16(short _S3, short _S2, short _S1, short _S0);
	extern __m64 uX_callconv _uX_mm_set_pi8(char _B7, char _B6, char _B5, char _B4,
											  char _B3, char _B2, char _B1, char _B0);
	extern __m64 uX_callconv _uX_mm_set1_pi32(int _I);
	extern __m64 uX_callconv _uX_mm_set1_pi16(short _S);
	extern __m64 uX_callconv _uX_mm_set1_pi8(char _B);
	extern __m64 uX_callconv _uX_mm_setr_pi32(int _I1, int _I0);
	extern __m64 uX_callconv _uX_mm_setr_pi16(short _S3, short _S2, short _S1, short _S0);
	extern __m64 uX_callconv _uX_mm_setr_pi8(char _B7, char _B6, char _B5, char _B4,
											   char _B3, char _B2, char _B1, char _B0);

uX_PACK_POP

uX_EXTERNC_END

/* Alternate intrinsic name definitions */
#define _uX_mm_cvtsi32_si64  _uX_mm_from_int
#define _uX_mm_cvtsi64_si32  _uX_mm_to_int
#define _uX_mm_packs_pi16    _uX_mm_packsswb
#define _uX_mm_packs_pi32    _uX_mm_packssdw
#define _uX_mm_packs_pu16    _uX_mm_packuswb
#define _uX_mm_unpackhi_pi8  _uX_mm_punpckhbw
#define _uX_mm_unpackhi_pi16 _uX_mm_punpckhwd
#define _uX_mm_unpackhi_pi32 _uX_mm_punpckhdq
#define _uX_mm_unpacklo_pi8  _uX_mm_punpcklbw
#define _uX_mm_unpacklo_pi16 _uX_mm_punpcklwd
#define _uX_mm_unpacklo_pi32 _uX_mm_punpckldq
#define _uX_mm_add_pi8       _uX_mm_paddb
#define _uX_mm_add_pi16      _uX_mm_paddw
#define _uX_mm_add_pi32      _uX_mm_paddd
#define _uX_mm_adds_pi8      _uX_mm_paddsb
#define _uX_mm_adds_pi16     _uX_mm_paddsw
#define _uX_mm_adds_pu8      _uX_mm_paddusb
#define _uX_mm_adds_pu16     _uX_mm_paddusw
#define _uX_mm_sub_pi8       _uX_mm_psubb
#define _uX_mm_sub_pi16      _uX_mm_psubw
#define _uX_mm_sub_pi32      _uX_mm_psubd
#define _uX_mm_subs_pi8      _uX_mm_psubsb
#define _uX_mm_subs_pi16     _uX_mm_psubsw
#define _uX_mm_subs_pu8      _uX_mm_psubusb
#define _uX_mm_subs_pu16     _uX_mm_psubusw
#define _uX_mm_madd_pi16     _uX_mm_pmaddwd
#define _uX_mm_mulhi_pi16    _uX_mm_pmulhw
#define _uX_mm_mullo_pi16    _uX_mm_pmullw
#define _uX_mm_sll_pi16      _uX_mm_psllw
#define _uX_mm_slli_pi16     _uX_mm_psllwi
#define _uX_mm_sll_pi32      _uX_mm_pslld
#define _uX_mm_slli_pi32     _uX_mm_pslldi
#define _uX_mm_sll_si64      _uX_mm_psllq
#define _uX_mm_slli_si64     _uX_mm_psllqi
#define _uX_mm_sra_pi16      _uX_mm_psraw
#define _uX_mm_srai_pi16     _uX_mm_psrawi
#define _uX_mm_sra_pi32      _uX_mm_psrad
#define _uX_mm_srai_pi32     _uX_mm_psradi
#define _uX_mm_srl_pi16      _uX_mm_psrlw
#define _uX_mm_srli_pi16     _uX_mm_psrlwi
#define _uX_mm_srl_pi32      _uX_mm_psrld
#define _uX_mm_srli_pi32     _uX_mm_psrldi
#define _uX_mm_srl_si64      _uX_mm_psrlq
#define _uX_mm_srli_si64     _uX_mm_psrlqi
#define _uX_mm_and_si64      _uX_mm_pand
#define _uX_mm_andnot_si64   _uX_mm_pandn
#define _uX_mm_or_si64       _uX_mm_por
#define _uX_mm_xor_si64      _uX_mm_pxor
#define _uX_mm_cmpeq_pi8     _uX_mm_pcmpeqb
#define _uX_mm_cmpeq_pi16    _uX_mm_pcmpeqw
#define _uX_mm_cmpeq_pi32    _uX_mm_pcmpeqd
#define _uX_mm_cmpgt_pi8     _uX_mm_pcmpgtb
#define _uX_mm_cmpgt_pi16    _uX_mm_pcmpgtw
#define _uX_mm_cmpgt_pi32    _uX_mm_pcmpgtd

#endif // uX_MMX uX_X86

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_MM_INTRIN_H
