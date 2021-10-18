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

#ifndef uX_XMM_VECDWORD1_H
#define uX_XMM_VECDWORD1_H 1

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

#ifndef uX_SMM_INTRIN_H
#include "uXsmmintrin.h"
#endif  /* uX_SMM_INTRIN_H */

namespace_uX
namespace_xmm
EXTERN_CC_BEGIN
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
class vecchar1;
class vecuchar1;
class vecchar2;
class vecuchar2;
class vecchar3;
class vecuchar3;
class vecchar4;
class vecuchar4;
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
/** \class vecdword1
  *
  * \brief SSE SIMD class with the size of 1 int32_t element.
  *
  * The %vecdword1 class is an 1 element wide 32bit integer.
  * It provides interoperability between %vecfloat1 and steel return different integer type.
  *
  */
typedef class uX_API vecdword1
{
public:
	vecdword1()uX_default;
	~vecdword1()uX_default;

	vecdword1(const vecdword1&)uX_default;
	vecdword1& uX_abi operator=(const vecdword1&)uX_default;

	vecdword1(vecdword1&&)uX_default;
	vecdword1& uX_abi operator=(vecdword1&&)uX_default;

	/**
	 * \brief Constructor initialization from type __m128i.
	 *
	 * @param Inxmmi value to copy from.
	 */
	uX_constexpr vecdword1(const __m128i Inxmmi) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i32_select1000, Inxmmi, __m128i_i32_false)) {}

	/**
	 * \brief Constructor initialization from type vecdword4.
	 *
	 * @param Inxmmi_a value to copy from.
	 */
	uX_constexpr vecdword1(const vecdword4 Inxmmi_a) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i32_select1000, Inxmmi_a, __m128i_i32_false)) {}

	/**
	 * \brief Constructor initialization from type vecdword3.
	 *
	 * @param Inxmmi_a value to copy from.
	 */
	uX_constexpr vecdword1(const vecdword3 Inxmmi_a) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i32_select1000, Inxmmi_a, __m128i_i32_false)) {}

	/**
	 * \brief Constructor initialization from type vecdword2.
	 *
	 * @param Inxmmi_a value to copy from.
	 */
	uX_constexpr vecdword1(const vecdword2 Inxmmi_a) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i32_select1000, Inxmmi_a, __m128i_i32_false)) {}

	/**
	 * \brief Constructor initialization from type vecudword1.
	 *
	 * @param Inxmmi_a value to copy from.
	 */
	uX_constexpr vecdword1(const vecudword1 Inxmmi_a) uX_noexcept : m128_xmmi(Inxmmi_a) {}

	/**
	 * \brief Constructor initialization from type vecfloat1.
	 *
	 * @param Inxmm_a value to copy from.
	 */
	uX_constexpr vecdword1(const vecfloat1 Inxmm_a) uX_noexcept : m128_xmmi(_uX_mm_castps_si128(Inxmm_a)) {}

	/**
	 * \brief Constructor initialization from 1 type int32_t.
	 *
	 * \param Inint_X value to copy from.
	 */
	uX_constexpr vecdword1(const int32_t Inint_X) uX_noexcept : m128_xmmi(_uX_mm_setr_epi32(Inint_X, 0, 0, 0)) {}

	/**
	 * \brief Constructor initialization from 1 type bool_t.
	 *
	 * \param Inbool_X value to copy from.
	 */
	uX_constexpr vecdword1(const bool_t Inbool_X) uX_noexcept : m128_xmmi(_uX_mm_setr_epi32(Inbool_X.to_trueint(), 0, 0, 0)) {}

	/**
	 * \brief Constructor initialization from 1 type bool.
	 *
	 * \param Inbool_X value to copy from.
	 */
	uX_constexpr vecdword1(const bool Inbool_X) uX_noexcept : m128_xmmi(vecdword1(bool_t(Inbool_X))) {}

	/** \brief __m128i type cast operator.
	 *
	 * To convert to __m128i.
	 */
	uX_constexpr operator __m128i() const uX_noexcept { return m128_xmmi; }

	/**
	 * \brief Assignment operator to convert from type __m128i.
	 *
	 * @param Inxmmi value to copy from.
	 */
	vecdword1& uX_abi operator=(const __m128i Inxmmi) uX_noexcept;

	/**
	 * \brief vecdword4 assignment operator.
	 *
	 * To convert from type vecdword4.
	 *
	 * \param Inxmmi_a value to copy from.
	 */
	vecdword1& uX_abi operator=(const vecdword4 Inxmmi_a) uX_noexcept;

	/**
	 * \brief vecdword3 assignment operator.
	 *
	 * To convert from type vecdword3.
	 *
	 * \param Inxmmi_a value to copy from.
	 */
	vecdword1& uX_abi operator=(const vecdword3 Inxmmi_a) uX_noexcept;

	/**
	 * \brief vecdword2 assignment operator.
	 *
	 * To convert from type vecdword2.
	 *
	 * \param Inxmmi_a value to copy from.
	 */
	vecdword1& uX_abi operator=(const vecdword2 Inxmmi_a) uX_noexcept;

	/**
	 * \brief vecudword1 assignment operator.
	 *
	 * To convert from type vecudword1.
	 *
	 * \param Inxmmi_a value to copy from.
	 */
	vecdword1& uX_abi operator=(const vecudword1 Inxmmi_a) uX_noexcept;

	/**
	 * \brief vecfloat1 assignment operator.
	 *
	 * To convert from type vecfloat1.
	 *
	 * \param Inxmm_a value to copy from.
	 */
	vecdword1& uX_abi operator=(const vecfloat1 Inxmm_a) uX_noexcept;

	/**
	 * \brief int32_t assignment operator
	 *
	 * To convert from type int32_t.
	 *
	 * \param Inint_a int32_t value to copy from.
	 */
	vecdword1& uX_abi operator=(const int32_t Inint_a) uX_noexcept;

	/**
	 * \brief bool_t assignment operator.
	 *
	 * To convert from type bool_t.
	 *
	 * \param Inbool_a value to copy from.
	 */
	vecdword1& uX_abi operator=(const bool_t Inbool_a) uX_noexcept;

	/**
	 * \brief bool assignment operator.
	 *
	 * To convert from type bool.
	 *
	 * \param Inbool_a value to copy from.
	 */
	vecdword1& uX_abi operator=(const bool Inbool_a) uX_noexcept;

	/**
	 * \brief Get vector.
	 *
	 * Gets vector.
	 * \return vector.
	 */
	__m128i uX_abi get() const uX_noexcept;

	/**
	 * \brief Get reference to vector.
	 *
	 * Gets reference to vector.
	 * \return vector.
	 */
	__m128i& uX_abi ref() uX_noexcept;

	/**
	 * \brief Set the vector.
	 *
	 * Sets all vector elements.
	 *
	 * \param Inxmmi.
	 */
	void uX_abi set(const __m128i Inxmmi) uX_noexcept;

protected:

private:
	union
	{
		__m128i         m128_xmmi;
		struct
		{
			int32_t     _dw_x;
		};
		struct
		{
			int16_t     _w_0, _w_1;
		};
		struct
		{
			int8_t      _b_0, _b_1, _b_2, _b_3;
		};
		int32_t         m128_dw[1];
		int16_t          m128_w[2];
		int8_t           m128_b[4];
	};

public:
	uX_const uint32_t uX_abi m128_xmm_size() const uX_noexcept { return 16; }
	uX_const uint32_t uX_abi m128_xmm_i64_elements() const uX_noexcept { return 2; }
	uX_const uint32_t uX_abi m128_xmm_i32_elements() const uX_noexcept { return 4; }
	uX_const uint32_t uX_abi m128_xmm_i16_elements() const uX_noexcept { return 8; }
	uX_const uint32_t uX_abi m128_xmm_i8_elements() const uX_noexcept { return 16; }
	uX_const uint32_t uX_abi m128_i32_ptr_length() const uX_noexcept { return 1; }
	uX_const uint32_t uX_abi m128_i16_ptr_length() const uX_noexcept { return 2; }
	uX_const uint32_t uX_abi m128_i8_ptr_length() const uX_noexcept { return 4; }
	uX_const uint32_t uX_abi m128_i32_ptr_size() const uX_noexcept { return 4; }
	uX_const uint32_t uX_abi m128_i16_ptr_size() const uX_noexcept { return 4; }
	uX_const uint32_t uX_abi m128_i8_ptr_size() const uX_noexcept { return 4; }
	uX_const uint32_t uX_abi m128_i64_size() const uX_noexcept { return 8; }
	uX_const uint32_t uX_abi m128_i32_size() const uX_noexcept { return 4; }
	uX_const uint32_t uX_abi m128_i16_size() const uX_noexcept { return 2; }
	uX_const uint32_t uX_abi m128_i8_size() const uX_noexcept { return 1; }
}vecdword1_t;
#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_xmm_end
namespace_uX_end

#ifndef uX_XMM_VECFLOAT1_H
#include "uXxmmvecfloat1.h"
#endif  /* uX_XMM_VECFLOAT1_H */

#ifndef uX_XMM_VECDWORD4_H
#include "uXxmmvecdword4.h"
#endif  /* uX_XMM_VECDWORD4_H */

#ifndef uX_XMM_VECDWORD3_H
#include "uXxmmvecdword3.h"
#endif  /* uX_XMM_VECDWORD3_H */

#ifndef uX_XMM_VECDWORD2_H
#include "uXxmmvecdword2.h"
#endif  /* uX_XMM_VECDWORD2_H */

#ifndef uX_XMM_VECUDWORD1_H
#include "uXxmmvecudword1.h"
#endif  /* uX_XMM_VECUDWORD1_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECDWORD1_H
