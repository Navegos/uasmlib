
#pragma once

#ifndef uXm64_MM_INTRIN_H
#define uXm64_MM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#if defined(uXm_MMX) && defined(uXm_X86)

#ifndef uXm_MMX_STRUCTS_H
#include "../uXmMMXStructs.h"
#endif  /* uXm_MMX_STRUCTS_H */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH8

/* General support intrinsics */
__uXm64 _uXm_m64_from_int(int _I);
__uXm64 _uXm_m64_from_int64(__int64 _I);
int _uXm_m64_to_int(__uXm64 _M);
__int64 _uXm_m64_to_int64(__uXm64 _M);
__uXm64 _uXm_m64_packsswb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_packssdw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_packuswb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_punpckhbw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_punpckhwd(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_punpckhdq(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_punpcklbw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_punpcklwd(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_punpckldq(__uXm64 _MM1, __uXm64 _MM2);

/* Packed arithmetic intrinsics */
__uXm64 _uXm_m64_paddb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_paddw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_paddd(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_paddsb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_paddsw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_paddusb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_paddusw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_psubb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_psubw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_psubd(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_psubsb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_psubsw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_psubusb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_psubusw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_pmaddwd(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_pmulhw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_pmullw(__uXm64 _MM1, __uXm64 _MM2);

/* Shift intrinsics */
__uXm64 _uXm_m64_psllw(__uXm64 _M, __uXm64 _Count);
__uXm64 _uXm_m64_psllwi(__uXm64 _M, int _Count);
__uXm64 _uXm_m64_pslld(__uXm64 _M, __uXm64 _Count);
__uXm64 _uXm_m64_pslldi(__uXm64 _M, int _Count);
__uXm64 _uXm_m64_psllq(__uXm64 _M, __uXm64 _Count);
__uXm64 _uXm_m64_psllqi(__uXm64 _M, int _Count);
__uXm64 _uXm_m64_psraw(__uXm64 _M, __uXm64 _Count);
__uXm64 _uXm_m64_psrawi(__uXm64 _M, int _Count);
__uXm64 _uXm_m64_psrad(__uXm64 _M, __uXm64 _Count);
__uXm64 _uXm_m64_psradi(__uXm64 _M, int _Count);
__uXm64 _uXm_m64_psrlw(__uXm64 _M, __uXm64 _Count);
__uXm64 _uXm_m64_psrlwi(__uXm64 _M, int _Count);
__uXm64 _uXm_m64_psrld(__uXm64 _M, __uXm64 _Count);
__uXm64 _uXm_m64_psrldi(__uXm64 _M, int _Count);
__uXm64 _uXm_m64_psrlq(__uXm64 _M, __uXm64 _Count);
__uXm64 _uXm_m64_psrlqi(__uXm64 _M, int _Count);

/* Logical intrinsics */
__uXm64 _uXm_m64_pand(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_pandn(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_por(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_pxor(__uXm64 _MM1, __uXm64 _MM2);

/* Comparison intrinsics */
__uXm64 _uXm_m64_pcmpeqb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_pcmpeqw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_pcmpeqd(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_pcmpgtb(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_pcmpgtw(__uXm64 _MM1, __uXm64 _MM2);
__uXm64 _uXm_m64_pcmpgtd(__uXm64 _MM1, __uXm64 _MM2);

/* Utility intrinsics */
__uXm64 _uXm_m64_setzero_si64(void);
__uXm64 _uXm_m64_set_pi32(int _I1, int _I0);
__uXm64 _uXm_m64_set_pi16(short _S3, short _S2, short _S1, short _S0);
__uXm64 _uXm_m64_set_pi8(char _B7, char _B6, char _B5, char _B4,
				  char _B3, char _B2, char _B1, char _B0);
__uXm64 _uXm_m64_set1_pi32(int _I);
__uXm64 _uXm_m64_set1_pi16(short _S);
__uXm64 _uXm_m64_set1_pi8(char _B);
__uXm64 _uXm_m64_setr_pi32(int _I1, int _I0);
__uXm64 _uXm_m64_setr_pi16(short _S3, short _S2, short _S1, short _S0);
__uXm64 _uXm_m64_setr_pi8(char _B7, char _B6, char _B5, char _B4,
				   char _B3, char _B2, char _B1, char _B0);

uXm_PACK_POP

uXm_EXTERNC_END

/* Alternate intrinsic name definitions */
#define _uXm_m64_cvtsi32_si64  _uXm_m64_from_int
#define _uXm_m64_cvtsi64_si32  _uXm_m64_to_int
#define _uXm_m64_packs_pi16    _uXm_m64_packsswb
#define _uXm_m64_packs_pi32    _uXm_m64_packssdw
#define _uXm_m64_packs_pu16    _uXm_m64_packuswb
#define _uXm_m64_unpackhi_pi8  _uXm_m64_punpckhbw
#define _uXm_m64_unpackhi_pi16 _uXm_m64_punpckhwd
#define _uXm_m64_unpackhi_pi32 _uXm_m64_punpckhdq
#define _uXm_m64_unpacklo_pi8  _uXm_m64_punpcklbw
#define _uXm_m64_unpacklo_pi16 _uXm_m64_punpcklwd
#define _uXm_m64_unpacklo_pi32 _uXm_m64_punpckldq
#define _uXm_m64_add_pi8       _uXm_m64_paddb
#define _uXm_m64_add_pi16      _uXm_m64_paddw
#define _uXm_m64_add_pi32      _uXm_m64_paddd
#define _uXm_m64_adds_pi8      _uXm_m64_paddsb
#define _uXm_m64_adds_pi16     _uXm_m64_paddsw
#define _uXm_m64_adds_pu8      _uXm_m64_paddusb
#define _uXm_m64_adds_pu16     _uXm_m64_paddusw
#define _uXm_m64_sub_pi8       _uXm_m64_psubb
#define _uXm_m64_sub_pi16      _uXm_m64_psubw
#define _uXm_m64_sub_pi32      _uXm_m64_psubd
#define _uXm_m64_subs_pi8      _uXm_m64_psubsb
#define _uXm_m64_subs_pi16     _uXm_m64_psubsw
#define _uXm_m64_subs_pu8      _uXm_m64_psubusb
#define _uXm_m64_subs_pu16     _uXm_m64_psubusw
#define _uXm_m64_madd_pi16     _uXm_m64_pmaddwd
#define _uXm_m64_mulhi_pi16    _uXm_m64_pmulhw
#define _uXm_m64_mullo_pi16    _uXm_m64_pmullw
#define _uXm_m64_sll_pi16      _uXm_m64_psllw
#define _uXm_m64_slli_pi16     _uXm_m64_psllwi
#define _uXm_m64_sll_pi32      _uXm_m64_pslld
#define _uXm_m64_slli_pi32     _uXm_m64_pslldi
#define _uXm_m64_sll_si64      _uXm_m64_psllq
#define _uXm_m64_slli_si64     _uXm_m64_psllqi
#define _uXm_m64_sra_pi16      _uXm_m64_psraw
#define _uXm_m64_srai_pi16     _uXm_m64_psrawi
#define _uXm_m64_sra_pi32      _uXm_m64_psrad
#define _uXm_m64_srai_pi32     _uXm_m64_psradi
#define _uXm_m64_srl_pi16      _uXm_m64_psrlw
#define _uXm_m64_srli_pi16     _uXm_m64_psrlwi
#define _uXm_m64_srl_pi32      _uXm_m64_psrld
#define _uXm_m64_srli_pi32     _uXm_m64_psrldi
#define _uXm_m64_srl_si64      _uXm_m64_psrlq
#define _uXm_m64_srli_si64     _uXm_m64_psrlqi
#define _uXm_m64_and_si64      _uXm_m64_pand
#define _uXm_m64_andnot_si64   _uXm_m64_pandn
#define _uXm_m64_or_si64       _uXm_m64_por
#define _uXm_m64_xor_si64      _uXm_m64_pxor
#define _uXm_m64_cmpeq_pi8     _uXm_m64_pcmpeqb
#define _uXm_m64_cmpeq_pi16    _uXm_m64_pcmpeqw
#define _uXm_m64_cmpeq_pi32    _uXm_m64_pcmpeqd
#define _uXm_m64_cmpgt_pi8     _uXm_m64_pcmpgtb
#define _uXm_m64_cmpgt_pi16    _uXm_m64_pcmpgtw
#define _uXm_m64_cmpgt_pi32    _uXm_m64_pcmpgtd

#endif // uXm_MMX uXm_X86

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm64_MM_INTRIN_H
