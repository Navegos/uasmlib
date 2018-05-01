
#pragma once

#ifndef uXm_SSE_INTRIN_H
#define uXm_SSE_INTRIN_H

#include "uXmTypes.h"

#if defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT) && !defined(uXm_MIC)

#ifndef uXm_SSE_STRUCTS_H
#include "uxmSSEStructs.h"
#endif  /* uXm_SSE_STRUCTS_H */

#ifdef uXm_SSE
#include "uXmxmmintrin.h"
#endif

uXm_EXTERNC_BEGIN

uXm_PACK_PUSH16

uXm_PACK_POP

uXm_EXTERNC_END

#endif /*defined(uXm_INTRINSICS_SUPPORT) && defined(uXm_X86_OR_X64_CPU) && !defined(uXm_NO_INTRINSICS_SUPPORT)*/

#endif // uXm_SSE_INTRIN_H
