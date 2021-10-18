/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /																				/ /
; / /			Copyright 2021 (c) Navegos QA - optimized library					/ /
; / /																				/ /
; / /	Licensed under the Apache License, Version 2.0 (the "License");				/ /
; / /	you may not use this file except in compliance with the License.			/ /
; / /	You may obtain a copy of the License at										/ /
; / /																				/ /
; / /		http://www.apache.org/licenses/LICENSE-2.0								/ /
; / /																				/ /
; / /	Unless required by applicable law or agreed to in writing, software			/ /
; / /	distributed under the License is distributed on an "AS IS" BASIS,			/ /
; / /	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.	/ /
; / /	See the License for the specific language governing permissions and			/ /
; / /	limitations under the License.												/ /
; / /																				/ /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#pragma once

#ifndef uX_XMM_MATH_H
#define uX_XMM_MATH_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

#ifndef __cplusplus
#error ERROR: This file is only supported in C++ compilations!
#endif /* !__cplusplus */

#ifndef _INCLUDED_MM2
#include <xmmintrin.h>
#endif  /* _INCLUDED_MM2 */

#ifdef uX_SSE2
#ifndef _INCLUDED_EMM
#include <emmintrin.h>
#endif  /* _INCLUDED_EMM */
#endif // uX_SSE2

#ifndef uX_XMM_INTRIN_H
#include "uXxmmintrin.h"
#endif  /* uX_XMM_INTRIN_H */

namespace_uX
namespace_xmm
uX_PACK_PUSH_XMM

// VECTORS'S

/*class vecfloat;*/
class vecfloat1;
class vecfloat2;
class vecfloat3;
class vecfloat4;
class vecfloat3x3;
class vecfloat4x3;
class vecfloat4x4;
#ifdef uX_SSE2
/*class vecint8;*/
/*class vecuint8;*/
/*class vecint16;*/
/*class vecuint16;*/
/*class vecint32;*/
/*class vecuint32;*/
/*class vecint64;*/
/*class vecuint64;*/
class vecbyte1;
class vecubyte1;
class vecbyte2;
class vecubyte2;
class vecbyte3;
class vecubyte3;
class vecbyte4;
class vecubyte4;
class vecword1;
class vecuword1;
class vecword2;
class vecuword2;
class vecword3;
class vecuword3;
class vecword4;
class vecuword4;
class vecdword1;
class vecudword1;
class vecdword2;
class vecudword2;
class vecdword3;
class vecudword3;
class vecdword4;
class vecudword4;
class vecqword1;
class vecuqword1;
class vecqword2;
class vecuqword2;
class vecqword3;
class vecuqword3;
class vecqword4;
class vecuqword4;
/*class vecdouble;*/
class vecdouble1;
class vecdouble2;
class vecdouble3;
class vecdouble4;
class vecdouble3x3;
class vecdouble4x3;
class vecdouble4x4;
#endif

uX_PACK_POP
namespace_xmm_end
namespace_uX_end

#ifdef uX_DIRECTXMATH_SUPPORT
namespace_DirectX
uX_PACK_PUSH_XMM
using XMVECTORF32 = uX::xmm::vecfloat4;
uX_PACK_POP
namespace_DirectX_end
#endif

#ifndef uX_XMM_VECDOUBLE4x4_H
#include "math/sse/uXxmmvecdouble4x4.h"
#endif  /* uX_XMM_VECDOUBLE4x4_H */

#ifndef uX_XMM_VECDOUBLE4x3_H
#include "math/sse/uXxmmvecdouble4x3.h"
#endif  /* uX_XMM_VECDOUBLE4x3_H */

#ifndef uX_XMM_VECDOUBLE3x3_H
#include "math/sse/uXxmmvecdouble3x3.h"
#endif  /* uX_XMM_VECDOUBLE3x3_H */

#ifndef uX_XMM_VECDOUBLE4_H
#include "math/sse/uXxmmvecdouble4.h"
#endif  /* uX_XMM_VECDOUBLE4_H */

#ifndef uX_XMM_VECDOUBLE3_H
#include "math/sse/uXxmmvecdouble3.h"
#endif  /* uX_XMM_VECDOUBLE3_H */

#ifndef uX_XMM_VECDOUBLE2_H
#include "math/sse/uXxmmvecdouble2.h"
#endif  /* uX_XMM_VECDOUBLE2_H */

#ifndef uX_XMM_VECDOUBLE1_H
#include "math/sse/uXxmmvecdouble1.h"
#endif  /* uX_XMM_VECDOUBLE1_H */

#ifndef uX_XMM_VECDOUBLE_H
#include "math/sse/uXxmmvecdouble.h"
#endif  /* uX_XMM_VECDOUBLE_H */

#ifndef uX_XMM_VECFLOAT4x4_H
#include "math/sse/uXxmmvecfloat4x4.h"
#endif  /* uX_XMM_VECFLOAT4x4_H */

#ifndef uX_XMM_VECFLOAT4x3_H
#include "math/sse/uXxmmvecfloat4x3.h"
#endif  /* uX_XMM_VECFLOAT4x3_H */

#ifndef uX_XMM_VECFLOAT3x3_H
#include "math/sse/uXxmmvecfloat3x3.h"
#endif  /* uX_XMM_VECFLOAT3x3_H */

#ifndef uX_XMM_VECFLOAT4_H
#include "math/sse/uXxmmvecfloat4.h"
#endif  /* uX_XMM_VECFLOAT4_H */

#ifndef uX_XMM_VECFLOAT3_H
#include "math/sse/uXxmmvecfloat3.h"
#endif  /* uX_XMM_VECFLOAT3_H */

#ifndef uX_XMM_VECFLOAT2_H
#include "math/sse/uXxmmvecfloat2.h"
#endif  /* uX_XMM_VECFLOAT2_H */

#ifndef uX_XMM_VECFLOAT1_H
#include "math/sse/uXxmmvecfloat1.h"
#endif  /* uX_XMM_VECFLOAT1_H */

#ifndef uX_XMM_VECFLOAT_H
#include "math/sse/uXxmmvecfloat.h"
#endif  /* uX_XMM_VECFLOAT_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_MATH_H
