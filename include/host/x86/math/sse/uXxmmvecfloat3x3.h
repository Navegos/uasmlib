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

#ifndef uX_XMM_VECFLOAT3x3_H
#define uX_XMM_VECFLOAT3x3_H 1

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

typedef class uX_API vecfloat3x3
{
public:
	vecfloat3x3() uX_default;
	~vecfloat3x3() uX_default;

	vecfloat3x3(const vecfloat3x3&) uX_default;
	vecfloat3x3& uX_callconv operator=(const vecfloat3x3&) uX_default;

	vecfloat3x3(vecfloat3x3&&) uX_default;
	vecfloat3x3& uX_callconv operator=(vecfloat3x3&&) uX_default;

	/**
	 * Constructor initialization from 3 type __m128.
	 *
	 * @param Inxmm_0 value to copy from.
	 * @param Inxmm_1 value to copy from.
	 * @param Inxmm_2 value to copy from.
	 */
	vecfloat3x3(const __m128 Inxmm_0, const __m128 Inxmm_1, const __m128 Inxmm_2) uX_noexcept;

	/**
	 * Constructor initialization from type __m128*.
	 *
	 * @param Inpxmm value to copy from.
	 * @param idxbegin pointer start index.
	 * @param idxend pointer end index.
	 * @warning No internall checks. Inpxmmd assumes 1*1 __m128 in the max range off 1*3.
	 */
	uX_explicit vecfloat3x3(const __m128* Inpxmm, uint32_t idxbegin = 0, uint32_t idxend = m128_xmm_ptr_length) uX_noexcept;

	/**
	 * Constructor initialization from 4x4 type floats.
	 *
	 * @param Infloat_X0 value to copy from.
	 * @param Infloat_X1 value to copy from.
	 * @param Infloat_X2 value to copy from.
	 * @param Infloat_Y0 value to copy from.
	 * @param Infloat_Y1 value to copy from.
	 * @param Infloat_Y2 value to copy from.
	 * @param Infloat_Z0 value to copy from.
	 * @param Infloat_Z1 value to copy from.
	 * @param Infloat_Z2 value to copy from.
	 */
	vecfloat3x3(float Infloat_X0, float Infloat_X1, float Infloat_X2,
				float Infloat_Y0, float Infloat_Y1, float Infloat_Y2,
				float Infloat_Z0, float Infloat_Z1, float Infloat_Z2) uX_noexcept;

	/**
	 * Constructor initialization from type float*.
	 *
	 * @param Inpfloat value to copy from.
	 * @param idxbegin pointer start index.
	 * @param idxend pointer end index.
	 * @warning No internall checks. Inpdouble assumes multiples off double in the max range off 3*3, last unused odd simd float element gets cleared.
	 */
	uX_explicit vecfloat3x3(const float* Inpfloat, uint32_t idxbegin = 0, uint32_t idxend = m128_xmm_ptr_length) uX_noexcept;

	/** Type cast operator to convert to __m128*. */
	/*operator __m128*() const;*/ //security undesired

	/** Type cast operator to convert to float*. */
	/*operator float*() const;*/ //security undesired

	/**
	 * Assignment operator to convert from type __m128*.
	 *
	 * @param Inxmm value to copy from.
	 */
	/*vecfloat3x3& uX_callconv operator=(uX_InReads(3) const __m128* Inpxmm);*/ //security undesired

	/**
	 * Assignment operator to convert from type float*.
	 *
	 * @param Inpfloat value to copy from.
	 */
	/*vecfloat3x3& uX_callconv operator=(uX_InReads(9) const float* Inpfloat);*/ //security undesired

protected:

private:
	union
	{
		struct
		{
			__m128          m128_xmm_0;
			__m128          m128_xmm_1;
			__m128          m128_xmm_2;
		};
		__m128             m128_xmm[3];
		struct
		{
			float        _11, _12, _13;
			float        _21, _22, _23;
			float        _31, _32, _33;
		};
		float            m128_fm[3][3];
		float                m128_f[9];
	};

	static uX_const uint32_t m128_xmm_ptr_length = 3;
	static uX_const uint32_t m128_xmm_ptr_size = 48;
	static uX_const uint32_t m128_xmm_size = 16;
	static uX_const uint32_t m128_xmm_flt_elements = 4;
	static uX_const uint32_t m128_row_length = 3;
	static uX_const uint32_t m128_column_length = 3;
	static uX_const uint32_t m128_flt_ptr_length = 9;
	static uX_const uint32_t m128_flt_ptr_size = 36;
	static uX_const uint32_t m128_flt_size = 4;
}vecfloat3x3_t;

uX_PACK_POP
namespace_xmm_end
namespace_uX_end

#ifndef uX_XMM_VECFLOAT_H
#include "uXxmmvecfloat.h"
#endif  /* uX_XMM_VECFLOAT_H */

#ifndef uX_XMM_VECFLOAT4_H
#include "uXxmmvecfloat4.h"
#endif  /* uX_XMM_VECFLOAT4_H */

#ifndef uX_XMM_VECFLOAT2_H
#include "uXxmmvecfloat2.h"
#endif  /* uX_XMM_VECFLOAT2_H */

#ifndef uX_XMM_VECFLOAT3_H
#include "uXxmmvecfloat3.h"
#endif  /* uX_XMM_VECFLOAT3_H */

#ifndef uX_XMM_VECFLOAT1_H
#include "uXxmmvecfloat1.h"
#endif  /* uX_XMM_VECFLOAT1_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECFLOAT3x3_H
