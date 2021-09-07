/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - UASM assembly library             / /
; / /                                                                               / /
; / /    Licensed under the Apache License, Version 2.0 (the "License");            / /
; / /    you may not use this file except in compliance with the License.           / /
; / /    You may obtain a copy of the License at                                    / /
; / /                                                                               / /
; / /        http://www.apache.org/licenses/LICENSE-2.0                             / /
; / /                                                                               / /
; / /    Unless required by applicable law or agreed to in writing, software        / /
; / /    distributed under the License is distributed on an "AS IS" BASIS,          / /
; / /    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   / /
; / /    See the License for the specific language governing permissions and        / /
; / /    limitations under the License.                                             / /
; / /                                                                               / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
*/

#pragma once

#ifndef uX_XMM_VECINT32_H
#define uX_XMM_VECINT32_H 1

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
namespace_XMM
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
class vecint8;
class vecuint8;
class vecint16;
class vecuint16;
class vecint32;
class vecuint32;
class vecint64;
class vecuint64;
class vecdouble;
class vecdouble1;
class vecdouble2;
class vecdouble3;
class vecdouble4;
class vecdouble3x3;
class vecdouble4x3;
class vecdouble4x4;
#endif

#ifdef uX_SSE2
typedef class uX_API vecint32
{
public:
	vecint32()uX_default;
	~vecint32()uX_default;

#ifdef uX_DEFAULT_CTOR_SUPPORT
	vecint32(const vecint32&)uX_default;
	vecint32& uX_callconv operator=(const vecint32&)uX_default;

	vecint32(vecint32&&)uX_default;
	vecint32& uX_callconv operator=(vecint32&&)uX_default;
#else
	vecint32(const vecint32& Invecint32);
	vecint32& uX_callconv operator=(const vecint32& Invecint32);

	vecint32(vecint32&& Invecint32);
	vecint32& uX_callconv operator=(vecint32&& Invecint32);
#endif
	/**
	 * Constructor initialization from type __m128i.
	 *
	 * @param Inxmmi value to copy from.
	 */
	uX_constexpr vecint32(const __m128i Inxmmi) : m128_xmmi{Inxmmi} {}

	/**
	 * Constructor initialization from type __int32*.
	 *
	 * @param Inpint32 value to copy from.
	 */
	uX_explicit vecint32(uX_InReads(4) const __int32* Inpint32);

	/** Type cast operator to convert to __m128i. */
	operator __m128i() const;

	/** Type cast operator to convert to __int32*. */
	/*operator __int32*() const;*/

	/**
	 * Assignment operator to convert from type __m128i.
	 *
	 * @param Inxmmi value to copy from.
	 */
	vecint32& uX_callconv operator=(const __m128i Inxmmi);

	/**
	 * Assignment operator to convert from type __int32*.
	 *
	 * @param Inpint32 value to copy from.
	 */
	vecint32& uX_callconv operator=(uX_InReads(4) const __int32* Inpint32);

protected:

private:
	union
	{
		__m128i          m128_xmmi;
		struct
		{
			__int32 _0, _1, _2, _3;
		};
		__int32         m128_id[4];
	};

	static uX_const uint32_t m128_xmm_size = 16;
	static uX_const uint32_t m128_i32_ptr_length = 4;
	static uX_const uint32_t m128_i32_ptr_size = 16;
	static uX_const uint32_t m128_i32_size = 4;
}vecint32_t;
#endif // uX_SSE2

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECINT32_H
