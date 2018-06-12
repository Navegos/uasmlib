
#pragma once

#ifndef uXm_MM_INTRIN_H
#define uXm_MM_INTRIN_H

#ifndef uXm_TYPES_H
#include "uXmTypes.h"
#endif  /* uXm_TYPES_H */

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifndef _MMINTRIN_H_INCLUDED
#include <mmintrin.h>
#endif  /* _MMINTRIN_H_INCLUDED */

#if defined(uXm_MMX) && defined(uXm_X86)

#ifndef uXm_MMX_STRUCTS_H
#include "uXmMMXStructs.h"
#endif  /* uXm_MMX_STRUCTS_H */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH8

/* General support intrinsics */
	extern __m64 uXm_callconv _uXm_mm_from_int(int _I);
	extern __m64 uXm_callconv _uXm_mm_from_int64(__int64 _I);
	extern int uXm_callconv _uXm_mm_to_int(__m64 _M);
	extern __int64 uXm_callconv _uXm_mm_to_int64(__m64 _M);
	extern __m64 uXm_callconv _uXm_mm_packsswb(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_packssdw(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_packuswb(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_punpckhbw(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_punpckhwd(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_punpckhdq(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_punpcklbw(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_punpcklwd(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_punpckldq(__m64 _MM1, __m64 _MM2);

/* Packed arithmetic intrinsics */
	extern __m64 uXm_callconv _uXm_mm_paddb(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_paddw(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_paddd(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_paddsb(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_paddsw(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_paddusb(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_paddusw(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_psubb(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_psubw(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_psubd(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_psubsb(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_psubsw(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_psubusb(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_psubusw(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_pmaddwd(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_pmulhw(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_pmullw(__m64 _MM1, __m64 _MM2);

/* Shift intrinsics */
	extern __m64 uXm_callconv _uXm_mm_psllw(__m64 _M, __m64 _Count);
	extern __m64 uXm_callconv _uXm_mm_psllwi(__m64 _M, int _Count);
	extern __m64 uXm_callconv _uXm_mm_pslld(__m64 _M, __m64 _Count);
	extern __m64 uXm_callconv _uXm_mm_pslldi(__m64 _M, int _Count);
	extern __m64 uXm_callconv _uXm_mm_psllq(__m64 _M, __m64 _Count);
	extern __m64 uXm_callconv _uXm_mm_psllqi(__m64 _M, int _Count);
	extern __m64 uXm_callconv _uXm_mm_psraw(__m64 _M, __m64 _Count);
	extern __m64 uXm_callconv _uXm_mm_psrawi(__m64 _M, int _Count);
	extern __m64 uXm_callconv _uXm_mm_psrad(__m64 _M, __m64 _Count);
	extern __m64 uXm_callconv _uXm_mm_psradi(__m64 _M, int _Count);
	extern __m64 uXm_callconv _uXm_mm_psrlw(__m64 _M, __m64 _Count);
	extern __m64 uXm_callconv _uXm_mm_psrlwi(__m64 _M, int _Count);
	extern __m64 uXm_callconv _uXm_mm_psrld(__m64 _M, __m64 _Count);
	extern __m64 uXm_callconv _uXm_mm_psrldi(__m64 _M, int _Count);
	extern __m64 uXm_callconv _uXm_mm_psrlq(__m64 _M, __m64 _Count);
	extern __m64 uXm_callconv _uXm_mm_psrlqi(__m64 _M, int _Count);

/* Logical intrinsics */
	extern __m64 uXm_callconv _uXm_mm_pand(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_pandn(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_por(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_pxor(__m64 _MM1, __m64 _MM2);

/* Comparison intrinsics */
	extern __m64 uXm_callconv _uXm_mm_pcmpeqb(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_pcmpeqw(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_pcmpeqd(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_pcmpgtb(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_pcmpgtw(__m64 _MM1, __m64 _MM2);
	extern __m64 uXm_callconv _uXm_mm_pcmpgtd(__m64 _MM1, __m64 _MM2);

/* Utility intrinsics */
	extern __m64 uXm_callconv _uXm_mm_setzero_si64(void);
	extern __m64 uXm_callconv _uXm_mm_set_pi32(int _I1, int _I0);
	extern __m64 uXm_callconv _uXm_mm_set_pi16(short _S3, short _S2, short _S1, short _S0);
	extern __m64 uXm_callconv _uXm_mm_set_pi8(char _B7, char _B6, char _B5, char _B4,
											  char _B3, char _B2, char _B1, char _B0);
	extern __m64 uXm_callconv _uXm_mm_set1_pi32(int _I);
	extern __m64 uXm_callconv _uXm_mm_set1_pi16(short _S);
	extern __m64 uXm_callconv _uXm_mm_set1_pi8(char _B);
	extern __m64 uXm_callconv _uXm_mm_setr_pi32(int _I1, int _I0);
	extern __m64 uXm_callconv _uXm_mm_setr_pi16(short _S3, short _S2, short _S1, short _S0);
	extern __m64 uXm_callconv _uXm_mm_setr_pi8(char _B7, char _B6, char _B5, char _B4,
											   char _B3, char _B2, char _B1, char _B0);

uXm_PACK_POP

uXm_EXTERNC_END

/* Alternate intrinsic name definitions */
#define _uXm_mm_cvtsi32_si64  _uXm_mm_from_int
#define _uXm_mm_cvtsi64_si32  _uXm_mm_to_int
#define _uXm_mm_packs_pi16    _uXm_mm_packsswb
#define _uXm_mm_packs_pi32    _uXm_mm_packssdw
#define _uXm_mm_packs_pu16    _uXm_mm_packuswb
#define _uXm_mm_unpackhi_pi8  _uXm_mm_punpckhbw
#define _uXm_mm_unpackhi_pi16 _uXm_mm_punpckhwd
#define _uXm_mm_unpackhi_pi32 _uXm_mm_punpckhdq
#define _uXm_mm_unpacklo_pi8  _uXm_mm_punpcklbw
#define _uXm_mm_unpacklo_pi16 _uXm_mm_punpcklwd
#define _uXm_mm_unpacklo_pi32 _uXm_mm_punpckldq
#define _uXm_mm_add_pi8       _uXm_mm_paddb
#define _uXm_mm_add_pi16      _uXm_mm_paddw
#define _uXm_mm_add_pi32      _uXm_mm_paddd
#define _uXm_mm_adds_pi8      _uXm_mm_paddsb
#define _uXm_mm_adds_pi16     _uXm_mm_paddsw
#define _uXm_mm_adds_pu8      _uXm_mm_paddusb
#define _uXm_mm_adds_pu16     _uXm_mm_paddusw
#define _uXm_mm_sub_pi8       _uXm_mm_psubb
#define _uXm_mm_sub_pi16      _uXm_mm_psubw
#define _uXm_mm_sub_pi32      _uXm_mm_psubd
#define _uXm_mm_subs_pi8      _uXm_mm_psubsb
#define _uXm_mm_subs_pi16     _uXm_mm_psubsw
#define _uXm_mm_subs_pu8      _uXm_mm_psubusb
#define _uXm_mm_subs_pu16     _uXm_mm_psubusw
#define _uXm_mm_madd_pi16     _uXm_mm_pmaddwd
#define _uXm_mm_mulhi_pi16    _uXm_mm_pmulhw
#define _uXm_mm_mullo_pi16    _uXm_mm_pmullw
#define _uXm_mm_sll_pi16      _uXm_mm_psllw
#define _uXm_mm_slli_pi16     _uXm_mm_psllwi
#define _uXm_mm_sll_pi32      _uXm_mm_pslld
#define _uXm_mm_slli_pi32     _uXm_mm_pslldi
#define _uXm_mm_sll_si64      _uXm_mm_psllq
#define _uXm_mm_slli_si64     _uXm_mm_psllqi
#define _uXm_mm_sra_pi16      _uXm_mm_psraw
#define _uXm_mm_srai_pi16     _uXm_mm_psrawi
#define _uXm_mm_sra_pi32      _uXm_mm_psrad
#define _uXm_mm_srai_pi32     _uXm_mm_psradi
#define _uXm_mm_srl_pi16      _uXm_mm_psrlw
#define _uXm_mm_srli_pi16     _uXm_mm_psrlwi
#define _uXm_mm_srl_pi32      _uXm_mm_psrld
#define _uXm_mm_srli_pi32     _uXm_mm_psrldi
#define _uXm_mm_srl_si64      _uXm_mm_psrlq
#define _uXm_mm_srli_si64     _uXm_mm_psrlqi
#define _uXm_mm_and_si64      _uXm_mm_pand
#define _uXm_mm_andnot_si64   _uXm_mm_pandn
#define _uXm_mm_or_si64       _uXm_mm_por
#define _uXm_mm_xor_si64      _uXm_mm_pxor
#define _uXm_mm_cmpeq_pi8     _uXm_mm_pcmpeqb
#define _uXm_mm_cmpeq_pi16    _uXm_mm_pcmpeqw
#define _uXm_mm_cmpeq_pi32    _uXm_mm_pcmpeqd
#define _uXm_mm_cmpgt_pi8     _uXm_mm_pcmpgtb
#define _uXm_mm_cmpgt_pi16    _uXm_mm_pcmpgtw
#define _uXm_mm_cmpgt_pi32    _uXm_mm_pcmpgtd

#endif // uXm_MMX uXm_X86

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_MM_INTRIN_H
