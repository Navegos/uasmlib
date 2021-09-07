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

#ifndef uX_XMM_VECDOUBLE4x4_H
#define uX_XMM_VECDOUBLE4x4_H 1

#ifndef uX_TYPES_H
#include "uXtypes.h"
#endif  /* uX_TYPES_H */

#if defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT) && !defined(uX_MIC)

#ifdef uX_SSE

#ifdef uX_SSE2

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

#ifndef uX_EMM_INTRIN_H
#include "uXemmintrin.h"
#endif  /* uX_EMM_INTRIN_H */

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

typedef class uX_API vecdouble4x4
{
public:
	vecdouble4x4() uX_default;
	~vecdouble4x4() uX_default;

	vecdouble4x4(const vecdouble4x4&) uX_default;
	vecdouble4x4& uX_callconv operator=(const vecdouble4x4&) uX_default;

	vecdouble4x4(vecdouble4x4&&) uX_default;
	vecdouble4x4& uX_callconv operator=(vecdouble4x4&&) uX_default;

	/**
	 * Constructor initialization from 8 type __m128d.
	 *
	 * @param Inxmmd_0 value to copy from.
	 * @param Inxmmd_1 value to copy from.
	 * @param Inxmmd_2 value to copy from.
	 * @param Inxmmd_3 value to copy from.
	 * @param Inxmmd_4 value to copy from.
	 * @param Inxmmd_5 value to copy from.
	 * @param Inxmmd_6 value to copy from.
	 * @param Inxmmd_7 value to copy from.
	 */
	vecdouble4x4(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2, const __m128d Inxmmd_3,
				 const __m128d Inxmmd_4, const __m128d Inxmmd_5, const __m128d Inxmmd_6, const __m128d Inxmmd_7) uX_noexcept;

	/**
	 * Constructor initialization from type __m128d*.
	 *
	 * @param Inpxmmd __m128d pointer value to copy from.
	 * @param idxbegin pointer start index.
	 * @param idxend pointer end index.
	 * @warning No internall checks. Inpxmmd assumes 1*1 __m128d in the max range off 1*8.
	 */
	uX_explicit vecdouble4x4(const __m128d* Inpxmmd, uint32_t idxbegin = 0, uint32_t idxend = m128_xmmd_ptr_length) uX_noexcept;

	/**
	 * Constructor initialization from 4x4 type doubles.
	 *
	 * @param Indouble_X0 value to copy from.
	 * @param Indouble_X1 value to copy from.
	 * @param Indouble_X2 value to copy from.
	 * @param Indouble_X3 value to copy from.
	 * @param Indouble_Y0 value to copy from.
	 * @param Indouble_Y1 value to copy from.
	 * @param Indouble_Y2 value to copy from.
	 * @param Indouble_Y3 value to copy from.
	 * @param Indouble_Z0 value to copy from.
	 * @param Indouble_Z1 value to copy from.
	 * @param Indouble_Z2 value to copy from.
	 * @param Indouble_Z3 value to copy from.
	 * @param Indouble_W0 value to copy from.
	 * @param Indouble_W1 value to copy from.
	 * @param Indouble_W2 value to copy from.
	 * @param Indouble_W3 value to copy from.
	 */
	vecdouble4x4(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2, const double Indouble_X3,
				 const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2, const double Indouble_Y3,
				 const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2, const double Indouble_Z3,
				 const double Indouble_W0, const double Indouble_W1, const double Indouble_W2, const double Indouble_W3) uX_noexcept;

	/**
	 * Constructor initialization from type double*.
	 *
	 * @param Inpdouble double pointer value to copy from.
	 * @param idxbegin pointer start index.
	 * @param idxend pointer end index.
	 * @warning No internall checks. Inpdouble assumes multiples off double in the max range off 4*4.
	 */
	uX_explicit vecdouble4x4(const double* Inpdouble, uint32_t idxbegin = 0, uint32_t idxend = m128_xmmd_ptr_length) uX_noexcept;

	/** Type cast operator to convert to __m128d*. */
	/*operator __m128d*() const;*/ //security undesired

	/** Type cast operator to convert to double*. */
	/*operator double*() const;*/ //security undesired

	/**
	 * Assignment operator to convert from type __m128d*.
	 *
	 * @param Inpxmmd value to copy from.
	 */
	/*vecdouble4x4& uX_callconv operator=(const __m128d* Inpxmmd);*/ //security undesired

	/**
	 * Assignment operator to convert from type double*.
	 *
	 * @param Inpdouble value to copy from.
	 */
	/*vecdouble4x4& uX_callconv operator=(const double* Inpdouble);*/ //security undesired

protected:

private:
	union
	{
		struct
		{
			__m128d             m128_xmmd_0;
			__m128d             m128_xmmd_1;
			__m128d             m128_xmmd_2;
			__m128d             m128_xmmd_3;
			__m128d             m128_xmmd_4;
			__m128d             m128_xmmd_5;
			__m128d             m128_xmmd_6;
			__m128d             m128_xmmd_7;
		};
		__m128d                m128_xmmd[8];
		struct
		{
			double       _11, _12, _13, _14;
			double       _21, _22, _23, _24;
			double       _31, _32, _33, _34;
			double       _41, _42, _43, _44;
		};
		double                m128_dm[4][4];
		double                   m128_d[16];
	};

	static uX_const uint32_t m128_xmmd_ptr_length = 8;
	static uX_const uint32_t m128_xmmd_ptr_size = 128;
	static uX_const uint32_t m128_xmmd_size = 16;
	static uX_const uint32_t m128_xmmd_elements = 2;
	static uX_const uint32_t m128_row_length = 4;
	static uX_const uint32_t m128_column_length = 4;
	static uX_const uint32_t m128_dbl_ptr_length = 16;
	static uX_const uint32_t m128_dbl_ptr_size = 128;
	static uX_const uint32_t m128_dbl_size = 8;
}vecdouble4x4_t;

uX_PACK_POP
namespace_XMM_end
namespace_uX_end

#endif // uX_SSE2

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECDOUBLE4x4_H
