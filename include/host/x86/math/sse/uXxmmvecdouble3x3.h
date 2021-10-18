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

#ifndef uX_XMM_VECDOUBLE3x3_H
#define uX_XMM_VECDOUBLE3x3_H 1

/**
 * \defgroup uX_XMM_VECDOUBLE3x3 9 Double Precision SSE SIMD Vector
 * \ingroup uX_NAMESPACE_XMM
 * \file uXxmmvecdouble3x3.h
 */

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

#ifndef uX_EMM_INTRIN_H
#include "uXemmintrin.h"
#endif  /* uX_EMM_INTRIN_H */

/**
 * \defgroup uX_XMM_VECDOUBLE3x3_CLASS 9 Double Precision SSE SIMD Vector Class
 * \ingroup uX_XMM_VECDOUBLE3x3
 * To use these class include the header file \p uXxmmvecdouble3x3.h in your program
 */

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

#ifdef uX_SSE2
/**
 * \ingroup uX_XMM_VECDOUBLE3x3_CLASS
 * \class vecdouble3x3
 * \brief SSE SIMD class with the size of 9 double elements
 * \details The \p vecdouble3x3 class is an 9 elements wide 64bit double element where
	it provides interoperability between \p vecqword3x3, \p vecuqword3x3 class's
 */
typedef class uX_API vecdouble3x3
{
public:
	vecdouble3x3() uX_default;
	~vecdouble3x3() uX_default;
	
	/**
	 * \brief Default constructor initialization from vecdouble3x3.
	 *
	 * @param InHxmmd_a value to copy from.
	 */
	uX_constexpr vecdouble3x3(vecdouble3x3 const& InHxmmd_a) uX_noexcept : m128_xmmd_0(InHxmmd_a.m128_xmmd_0), m128_xmmd_1(InHxmmd_a.m128_xmmd_1)
																		, m128_xmmd_2(InHxmmd_a.m128_xmmd_2), m128_xmmd_3(InHxmmd_a.m128_xmmd_3)
																		, m128_xmmd_4(InHxmmd_a.m128_xmmd_4), m128_xmmd_5(InHxmmd_a.m128_xmmd_5) {}

	/**
	 * \brief Default constructor initialization from vecdouble3x3.
	 *
	 * @param InHxmmd_a value to copy from.
	 */
	uX_constexpr vecdouble3x3(vecdouble3x3&& InHxmmd_a) uX_noexcept : m128_xmmd_0(InHxmmd_a.m128_xmmd_0), m128_xmmd_1(InHxmmd_a.m128_xmmd_1)
																	, m128_xmmd_2(InHxmmd_a.m128_xmmd_2), m128_xmmd_3(InHxmmd_a.m128_xmmd_3)
																	, m128_xmmd_4(InHxmmd_a.m128_xmmd_4), m128_xmmd_5(InHxmmd_a.m128_xmmd_5) {}

	/**
	 * \brief Constructor initialization from type __m128d, broadcast the same value into all elements.
	 *
	 * \param Inxmmd value to copy from.
	 */
	uX_explicit uX_constexpr vecdouble3x3(__m128d const Inxmmd) uX_noexcept : m128_xmmd_0(Inxmmd), m128_xmmd_1(Inxmmd)
																			, m128_xmmd_2(Inxmmd), m128_xmmd_3(Inxmmd)
																			, m128_xmmd_4(Inxmmd), m128_xmmd_5(Inxmmd) {}

	/**
	 * \brief Constructor initialization from 6 type __m128d.
	 *
	 * @param Inxmmd_0 value to copy from.
	 * @param Inxmmd_1 value to copy from.
	 * @param Inxmmd_2 value to copy from.
	 * @param Inxmmd_3 value to copy from.
	 * @param Inxmmd_4 value to copy from.
	 * @param Inxmmd_5 value to copy from.
	 */
	uX_constexpr vecdouble3x3(const __m128d Inxmmd_0, const __m128d Inxmmd_1, const __m128d Inxmmd_2,
							const __m128d Inxmmd_3, const __m128d Inxmmd_4, const __m128d Inxmmd_5) uX_noexcept: m128_xmmd_0(Inxmmd_0), m128_xmmd_1(Inxmmd_1)
																												, m128_xmmd_2(Inxmmd_2) , m128_xmmd_3(Inxmmd_3)
																												, m128_xmmd_4(Inxmmd_4), m128_xmmd_5(Inxmmd_5) {}

	/**
	 * \brief Constructor initialization from type vecdouble3, broadcast the same value into all elements.
	 *
	 * \param InVecxmmd value to copy from.
	 */
	uX_explicit uX_constexpr vecdouble3x3(vecdouble3 const InVecxmmd) uX_noexcept : m128_xmmd_0(InVecxmmd.get_xmmd_0()), m128_xmmd_1(InVecxmmd.get_xmmd_1())
																					, m128_xmmd_2(InVecxmmd.get_xmmd_0()) , m128_xmmd_3(InVecxmmd.get_xmmd_1())
																					, m128_xmmd_4(InVecxmmd.get_xmmd_0()), m128_xmmd_5(InVecxmmd.get_xmmd_1()) {}

	/**
	 * \brief Constructor initialization from 3 type vecdouble3.
	 *
	 * @param InVecxmmd_0 value to copy from.
	 * @param InVecxmmd_1 value to copy from.
	 * @param InVecxmmd_2 value to copy from.
	 */
	uX_constexpr vecdouble3x3(const vecdouble3 InVecxmmd_0, const vecdouble3 InVecxmmd_1, const vecdouble3 InVecxmmd_2) uX_noexcept: m128_xmmd_0(InVecxmmd_0.get_xmmd_0()), m128_xmmd_1(InVecxmmd_0.get_xmmd_1())
																																	, m128_xmmd_2(InVecxmmd_1.get_xmmd_0()), m128_xmmd_3(InVecxmmd_1.get_xmmd_1())
																																	, m128_xmmd_4(InVecxmmd_2.get_xmmd_0()), m128_xmmd_5(InVecxmmd_2.get_xmmd_1()) {}

	/**
	 * Constructor initialization from type __m128d*.
	 *
	 * @param Inpxmmd value to copy from.
	 * @param idxbegin pointer start index.
	 * @param idxend pointer end index.
	 * @warning No internall checks. Inpxmmd assumes 1*1 __m128d in the max range off 1*6.
	 */
	uX_explicit vecdouble3x3(const __m128d* Inpxmmd, uint32_t idxbegin = 0, uint32_t idxend = m128_xmmd_ptr_length) uX_noexcept;

	/**
	 * Constructor initialization from 4x4 type doubles.
	 *
	 * @param Indouble_X0 value to copy from.
	 * @param Indouble_X1 value to copy from.
	 * @param Indouble_X2 value to copy from.
	 * @param Indouble_Y0 value to copy from.
	 * @param Indouble_Y1 value to copy from.
	 * @param Indouble_Y2 value to copy from.
	 * @param Indouble_Z0 value to copy from.
	 * @param Indouble_Z1 value to copy from.
	 * @param Indouble_Z2 value to copy from.
	 */
	vecdouble3x3(const double Indouble_X0, const double Indouble_X1, const double Indouble_X2,
				 const double Indouble_Y0, const double Indouble_Y1, const double Indouble_Y2,
				 const double Indouble_Z0, const double Indouble_Z1, const double Indouble_Z2) uX_noexcept;

	/**
	 * Constructor initialization from type double*.
	 *
	 * @param Inpdouble value to copy from.
	 * @param idxbegin pointer start index.
	 * @param idxend pointer end index.
	 * @warning No internall checks. Inpdouble assumes multiples off double in the max range off 3*3, last unused odd simd double element gets cleared.
	 */
	uX_explicit vecdouble3x3(const double* Inpdouble, uint32_t idxbegin = 0, uint32_t idxend = m128_xmmd_ptr_length) uX_noexcept;

	/** Type cast operator to convert to __m128d*. */
	/*operator __m128d*() const;*/ //security undesired

	/** Type cast operator to convert to double*. */
	/*operator double*() const;*/ //security undesired

	/**
	 * Assignment operator to convert from type __m128d*.
	 *
	 * @param Inpxmmd value to copy from.
	 */
	/*vecdouble3x3& uX_callconv operator=(const __m128d* Inpxmmd);*/ //security undesired

	/**
	 * Assignment operator to convert from type double*.
	 *
	 * @param Inpdouble value to copy from.
	 */
	/*vecdouble3x3& uX_callconv operator=(const double* Inpdouble);*/ //security undesired

protected:

private:
	union
	{
		struct
		{
			__m128d			m128_xmmd_0;
			__m128d			m128_xmmd_1;
			__m128d			m128_xmmd_2;
			__m128d			m128_xmmd_3;
			__m128d			m128_xmmd_4;
			__m128d			m128_xmmd_5;
		};
		__m128d				m128_xmmd[6];
		struct
		{
			double			_11, _12, _13;
			double			_21, _22, _23;
			double			_31, _32, _33;
		};
		double				m128_dm[3][3];
		double				m128_d[9];
	};

	static uX_const uint32_t m128_xmmd_ptr_length = 6;
	static uX_const uint32_t m128_xmmd_ptr_size = 96;
	static uX_const uint32_t m128_xmmd_size = 16;
	static uX_const uint32_t m128_xmmd_elements = 2;
	static uX_const uint32_t m128_row_length = 3;
	static uX_const uint32_t m128_column_length = 3;
	static uX_const uint32_t m128_dbl_ptr_length = 9;
	static uX_const uint32_t m128_dbl_ptr_size = 72;
	static uX_const uint32_t m128_dbl_size = 8;
}vecdouble3x3_t;

#endif // uX_SSE2

uX_PACK_POP
namespace_xmm_end
namespace_uX_end

#ifndef uX_XMM_VECDOUBLE3_H
#include "uXxmmvecdouble3.h"
#endif  /* uX_XMM_VECDOUBLE3_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECDOUBLE3x3_H
