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

#ifndef uX_XMM_VECUDWORD3_H
#define uX_XMM_VECUDWORD3_H 1

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
/** \class vecudword3
  *
  * \brief SSE SIMD class with the size of 3 uint32_t elements.
  *
  * The %vecudword3 class is an 3 elements wide 32bit integer.
  * It provides interoperability between %vecfloat3 and steel return different unsigned integer types.
  *
  */
typedef class uX_API vecudword3
{
public:
	vecudword3()uX_default;
	~vecudword3()uX_default;

	vecudword3(const vecudword3&)uX_default;
	vecudword3& uX_abi operator=(const vecudword3&)uX_default;

	vecudword3(vecudword3&&)uX_default;
	vecudword3& uX_abi operator=(vecudword3&&)uX_default;

	/**
	 * \brief Constructor initialization from type __m128i.
	 *
	 * @param Inxmmi value to copy from.
	 */
	uX_constexpr vecudword3(const __m128i Inxmmi) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i32_select1110, Inxmmi, __m128i_i32_false)) {}

	/**
	 * \brief Constructor initialization from type vecudword4.
	 *
	 * @param Inxmmi_a value to copy from.
	 */
	uX_constexpr vecudword3(const vecudword4 Inxmmi_a) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i32_select1110, Inxmmi_a, __m128i_i32_false)) {}

	/**
	 * \brief Constructor initialization from type vecudword2.
	 *
	 * @param Inxmmi_a value to copy from.
	 */
	uX_constexpr vecudword3(const vecudword2 Inxmmi_a) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i32_select1100, Inxmmi_a, m128_xmmi)) {}

	/**
	 * \brief Constructor initialization from type vecudword1.
	 *
	 * @param Inxmmi_a value to copy from.
	 */
	uX_constexpr vecudword3(const vecudword1 Inxmmi_a) uX_noexcept : m128_xmmi(_uX_mm_select_si128(__m128i_i32_select1000, Inxmmi_a, m128_xmmi)) {}

	/**
	 * \brief Constructor initialization from type vecudword3.
	 *
	 * @param Inxmmi_a value to copy from.
	 */
	uX_constexpr vecudword3(const vecdword3 Inxmmi_a) uX_noexcept : m128_xmmi(Inxmmi_a) {}

	/**
	 * \brief Constructor initialization from type vecfloat3.
	 *
	 * @param Inxmm_a value to copy from.
	 */
	uX_constexpr vecudword3(const vecfloat3 Inxmm_a) uX_noexcept : m128_xmmi(_uX_mm_castps_si128(Inxmm_a)) {}

	/**
	 * \brief Constructor to broadcast the same uint32_t value into all elements.
	 *
	 * \param Inint_a uint32_t value to copy from.
	 */
	uX_explicit uX_constexpr vecudword3(const uint32_t Inint_a) uX_noexcept : m128_xmmi(_uX_mm_setr_epi32(Inint_a, Inint_a, Inint_a, 0)) {}

	/**
	 * \brief Constructor initialization from 3 type uint32_t.
	 *
	 * \param Inint_X value to copy from.
	 * \param Inint_Y value to copy from.
	 * \param Inint_Z value to copy from.
	 */
	uX_constexpr vecudword3(const uint32_t Inint_X, const uint32_t Inint_Y, const uint32_t Inint_Z) uX_noexcept : m128_xmmi(_uX_mm_setr_epi32(Inint_X, Inint_Y, Inint_Z, 0)) {}

	/**
	 * \brief Constructor to broadcast the same bool value into all elements.
	 *
	 * \param Inbool_a value to copy from.
	 */
	uX_explicit uX_constexpr vecudword3(const bool_t Inbool_a) uX_noexcept : m128_xmmi(_uX_mm_setr_epi32(Inbool_a.to_trueint(), Inbool_a.to_trueint(), Inbool_a.to_trueint(), 0)) {}

	/**
	 * \brief Constructor initialization from 3 type bool.
	 *
	 * \param Inbool_X value to copy from.
	 * \param Inbool_Y value to copy from.
	 * \param Inbool_Z value to copy from.
	 */
	uX_constexpr vecudword3(const bool_t Inbool_X, const bool_t Inbool_Y, const bool_t Inbool_Z) uX_noexcept
		: m128_xmmi(_uX_mm_setr_epi32(Inbool_X.to_trueint(), Inbool_Y.to_trueint(), Inbool_Z.to_trueint(), 0))
	{
	}

	  /**
	   * \brief Constructor to broadcast the same bool value into all elements.
	   *
	   * \param Inbool_a value to copy from.
	   */
	uX_explicit uX_constexpr vecudword3(const bool Inbool_a) uX_noexcept : m128_xmmi(vecudword3(bool_t(Inbool_a))) {}

	/**
	 * \brief Constructor initialization from 3 type bool.
	 *
	 * \param Inbool_X value to copy from.
	 * \param Inbool_Y value to copy from.
	 * \param Inbool_Z value to copy from.
	 */
	uX_constexpr vecudword3(const bool Inbool_X, const bool Inbool_Y, const bool Inbool_Z) uX_noexcept : m128_xmmi(vecudword3(bool_t(Inbool_X), bool_t(Inbool_Y), bool_t(Inbool_Z))) {}

	/**
	 * \brief Constructor initialization from type uint32_t*.
	 *
	 * @param Inpint32 value to copy from.
	 */
	uX_explicit uX_constexpr vecudword3(uX_InReads(3) const uint32_t* Inpint32) uX_noexcept : m128_xmmi(_uX_mm_setr_epi32(Inpint32[0], Inpint32[1], Inpint32[2], 0)) {}

	/** \brief __m128i type cast operator.
	 *
	 * To convert to __m128i.
	 */
	uX_constexpr operator __m128i() const uX_noexcept { return m128_xmmi; }

	/** Type cast operator to convert to uint32_t*. */
	/*operator uint32_t*() const;*/ //security undesired

	/**
	 * \brief Assignment operator to convert from type __m128i.
	 *
	 * @param Inxmmi value to copy from.
	 */
	vecudword3& uX_abi operator=(const __m128i Inxmmi) uX_noexcept;

	/**
	 * \brief vecudword4 assignment operator.
	 *
	 * To convert from type vecudword4.
	 *
	 * \param Inxmmi_a value to copy from.
	 */
	vecudword3& uX_abi operator=(const vecudword4 Inxmmi_a) uX_noexcept;

	/**
	 * \brief vecudword2 assignment operator.
	 *
	 * To convert from type vecudword2.
	 *
	 * \param Inxmmi_a value to copy from.
	 */
	vecudword3& uX_abi operator=(const vecudword2 Inxmmi_a) uX_noexcept;

	/**
	 * \brief vecudword1 assignment operator.
	 *
	 * To convert from type vecudword1.
	 *
	 * \param Inxmmi_a value to copy from.
	 */
	vecudword3& uX_abi operator=(const vecudword1 Inxmmi_a) uX_noexcept;

	/**
	 * \brief vecudword3 assignment operator.
	 *
	 * To convert from type vecudword3.
	 *
	 * \param Inxmmi_a value to copy from.
	 */
	vecudword3& uX_abi operator=(const vecudword3 Inxmmi_a) uX_noexcept;

	/**
	 * \brief vecfloat3 assignment operator.
	 *
	 * To convert from type vecfloat3.
	 *
	 * \param Inxmm_a value to copy from.
	 */
	vecudword3& uX_abi operator=(const vecfloat3 Inxmm_a) uX_noexcept;

	/**
	 * \brief uint32_t assignment operator
	 *
	 * To broadcast the same uint32_t value into all elements.
	 *
	 * \param Inint_a uint32_t value to copy from.
	 */
	vecudword3& uX_abi operator=(const uint32_t Inint_a) uX_noexcept;

	/**
	 * \brief bool_t assignment operator.
	 *
	 * To broadcast the same bool value into all elements.
	 *
	 * \param Inbool_a value to copy from.
	 */
	vecudword3& uX_abi operator=(const bool_t Inbool_a) uX_noexcept;

	/**
	 * \brief bool assignment operator.
	 *
	 * To broadcast the same bool value into all elements.
	 *
	 * \param Inbool_a value to copy from.
	 */
	vecudword3& uX_abi operator=(const bool Inbool_a) uX_noexcept;

	/**
	 * Assignment operator to convert from type uint32_t*.
	 *
	 * @param Inpint32 value to copy from.
	 */
	 /*vecudword3& uX_abi operator=(uX_InReads(3) const uint32_t* Inpint32);*/ //security undesired

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

	/**
	 * \brief Generate a constant vector of 3 32bits unsigned integer at compile time.
	 *
	 * Generate a constant vector of 3 32bits unsigned integer at compile time stored in memory.
	 *
	 */
	template <uint32_t i0, uint32_t i1, uint32_t i2>
	uX_constexpr vecudword3 const uX_abi constant(void) const uX_noexcept
	{
		return vecudword3(i0, i1, i2);
	}

protected:

private:
	union
	{
		__m128i          m128_xmmi;
		struct
		{
			uint32_t     _dw_x, _dw_y, _dw_z;
		};
		struct
		{
			uint16_t     _w0_0, _w0_1,
				_w1_0, _w1_1,
				_w2_0, _w2_1;
		};
		struct
		{
			uint8_t      _b0_0, _b0_1, _b0_2, _b0_3,
				_b1_0, _b1_1, _b1_2, _b1_3,
				_b2_0, _b2_1, _b2_2, _b2_3;
		};
		uint32_t         m128_dw[3];
		uint16_t          m128_w[6];
		uint8_t          m128_b[12];
	};

public:
	uX_const uint32_t uX_abi m128_xmm_size() const uX_noexcept { return 16; }
	uX_const uint32_t uX_abi m128_xmm_i64_elements() const uX_noexcept { return 2; }
	uX_const uint32_t uX_abi m128_xmm_i32_elements() const uX_noexcept { return 4; }
	uX_const uint32_t uX_abi m128_xmm_i16_elements() const uX_noexcept { return 8; }
	uX_const uint32_t uX_abi m128_xmm_i8_elements() const uX_noexcept { return 18; }
	uX_const uint32_t uX_abi m128_i32_ptr_length() const uX_noexcept { return 3; }
	uX_const uint32_t uX_abi m128_i16_ptr_length() const uX_noexcept { return 6; }
	uX_const uint32_t uX_abi m128_i8_ptr_length() const uX_noexcept { return 12; }
	uX_const uint32_t uX_abi m128_i32_ptr_size() const uX_noexcept { return 12; }
	uX_const uint32_t uX_abi m128_i16_ptr_size() const uX_noexcept { return 12; }
	uX_const uint32_t uX_abi m128_i8_ptr_size() const uX_noexcept { return 12; }
	uX_const uint32_t uX_abi m128_i64_size() const uX_noexcept { return 8; }
	uX_const uint32_t uX_abi m128_i32_size() const uX_noexcept { return 4; }
	uX_const uint32_t uX_abi m128_i16_size() const uX_noexcept { return 2; }
	uX_const uint32_t uX_abi m128_i8_size() const uX_noexcept { return 1; }
}vecudword3_t;
#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_xmm_end
namespace_uX_end

#ifndef uX_XMM_VECFLOAT3_H
#include "uXxmmvecfloat3.h"
#endif  /* uX_XMM_VECFLOAT3_H */

#ifndef uX_XMM_VECUDWORD4_H
#include "uXxmmvecudword4.h"
#endif  /* uX_XMM_VECUDWORD4_H */

#ifndef uX_XMM_VECUDWORD2_H
#include "uXxmmvecudword2.h"
#endif  /* uX_XMM_VECUDWORD2_H */

#ifndef uX_XMM_VECUDWORD1_H
#include "uXxmmvecudword1.h"
#endif  /* uX_XMM_VECUDWORD1_H */

#ifndef uX_XMM_VECDWORD3_H
#include "uXxmmvecdword3.h"
#endif  /* uX_XMM_VECDWORD3_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECUDWORD3_H
