
#pragma once

#ifndef uXm_MMX_INTRIN_H
#define uXm_MMX_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#if defined(uXm_MMX) && defined(uXm_X86)

#ifndef uXm_MMX_STRUCTS_H
#include "uXmMMXStructs.h"
#endif  /* uXm_MMX_STRUCTS_H */

#ifndef uXm_MM_INTRIN_H
#include "uXmmmintrin.h"
#endif  /* uXm_MM_INTRIN_H */

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

uXm_PACK_POP

uXm_EXTERNC_END

#endif // uXm_MMX uXm_X86

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_MMX_INTRIN_H
