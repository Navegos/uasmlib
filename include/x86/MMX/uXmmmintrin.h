
#pragma once

#ifndef uXm_MM_INTRIN_H
#define uXm_MM_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#if defined(uXm_MMX) && defined(uXm_X86)

#ifndef uXm64_XMM_INTRIN_H
#include "uXm64/uXm64mmintrin.h"
#endif  /* uXm64_XMM_INTRIN_H */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH8

/* General support intrinsics */
void  uXm_mm_empty(void);

uXm_PACK_POP

uXm_EXTERNC_END

#endif // uXm_MMX uXm_X86

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_MM_INTRIN_H
