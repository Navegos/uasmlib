/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - optimized library                 / /
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

#ifndef uX_XMM_VECFLOAT3_H
#define uX_XMM_VECFLOAT3_H 1

/**
 * \defgroup uX_XMM_VECFLOAT3 3 Single Precision SSE SIMD Vector
 * \ingroup uX_NAMESPACE_XMM
 * \file uXxmmvecfloat3.h
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
  * \defgroup uX_XMM_VECFLOAT3_CLASS 3 Single Precision SSE SIMD Vector Class
  * \ingroup uX_XMM_VECFLOAT3
  * To use these class include the header file \p uXxmmvecfloat3.h in your program
  */

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

/**
 * \ingroup uX_XMM_VECFLOAT3_CLASS
 * \class vecfloat3
 * \brief SSE SIMD class with the size of 3 float elements
 * \details The \p vecfloat3 class is an 3 elements wide 32bit float element where
	it provides interoperability between \p vecdword3 \p vecudword3 \p vecdouble3 class's
 */
typedef class vecfloat3
{
public:
	vecfloat3()uX_default;
	~vecfloat3()uX_default;

	/**
	 * \fn uX::xmm::vecfloat3::vecfloat3(vecfloat3 const& Inxmm_a) uX_noexcept
	 * \brief Default constructor initialization from vecfloat3
	 * \details Default constructor copies /p vecfloat3
	 * \param[in] Inxmm_a - vecfloat3 Read only
	 */
	uX_constexpr vecfloat3(vecfloat3 const& Inxmm_a) uX_noexcept : m128_xmm(Inxmm_a.m128_xmm) {}

	/**
	 * \fn uX::xmm::vecfloat3::vecfloat3(vecfloat3&& Inxmm_a) uX_noexcept
	 * \brief Default constructor initialization from vecfloat3
	 * \details Default constructor copies /p vecfloat3
	 * \param[in] Inxmm_a - vecfloat3 Read only
	 */
	uX_constexpr vecfloat3(vecfloat3&& Inxmm_a) uX_noexcept : m128_xmm(Inxmm_a.m128_xmm) {}

	/**
	 * \brief Constructor initialization from type __m128.
	 *
	 * @param Inxmm value to copy from.
	 */
	uX_constexpr vecfloat3(const __m128 Inxmm) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_PS_IM(Inxmm, _uX_MM_SHUFFLER_PS_IM(Inxmm, __m128_false, 2, 1, 3, 3), 0, 1, 0, 3)) {}

	/**
	 * \brief Constructor initialization from type vecfloat4.
	 *
	 * @param Inxmm_a value to copy from.
	 */
	uX_constexpr vecfloat3(const vecfloat4 Inxmm_a) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_PS_IM(Inxmm_a, _uX_MM_SHUFFLER_PS_IM(Inxmm_a, __m128_false, 2, 1, 3, 3), 0, 1, 0, 3)) {}

	/**
	 * \brief Constructor initialization from type vecfloat2.
	 *
	 * @param Inxmm_a value to copy from.
	 */
	uX_constexpr vecfloat3(const vecfloat2 Inxmm_a) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 1, 2, 3)) {}

	/**
	 * \brief Constructor initialization from type vecfloat1.
	 *
	 * @param Inxmm_a value to copy from.
	 */
	uX_constexpr vecfloat3(const vecfloat1 Inxmm_a) uX_noexcept : m128_xmm(_uX_mm_move_ss(m128_xmm, Inxmm_a)) {}

	/**
	 * \fn uX::xmm::vecfloat3::vecfloat3(vecdouble3 const InHxmmd_a) uX_noexcept
	 * \brief Constructor initialization from type vecdouble3
	 * \details Constructor converts double _x _y _z elements from /p vecdouble3 to float _x _y _z elements
	 * \param[in] InHxmmd_a - vecdouble3 Read only
	 * \warning Converts the value from double to float
	 * \Note Sets the _x _y _z float elements
	 */
	uX_constexpr vecfloat3(vecdouble3 const InHxmmd_a) uX_noexcept : m128_xmm(_uX_MM_SHUFFLER_PS_IM(_uX_mm_cvtpd_ps(InHxmmd_a.get_xmmd_0()), _uX_mm_cvtpd_ps(InHxmmd_a.get_xmmd_1()), 0, 1, 2, 3)) {}

	/**
	 * \brief Constructor initialization from type vecdword3.
	 *
	 * @param Inxmmi_a value to copy from.
	 */
	uX_constexpr vecfloat3(const vecdword3 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

	/**
	 * \brief Constructor initialization from type vecudword3.
	 *
	 * @param Inxmmi_a value to copy from.
	 */
	uX_constexpr vecfloat3(const vecudword3 Inxmmi_a) uX_noexcept : m128_xmm(_uX_mm_castsi128_ps(Inxmmi_a)) {}

	/**
	 * \brief Constructor to broadcast the same float value into all elements.
	 *
	 * @param Infloat_a float value to copy from.
	 */
	uX_explicit uX_constexpr vecfloat3(float Infloat_a) uX_noexcept : m128_xmm(_uX_mm_set_ps(0.0f, Infloat_a, Infloat_a, Infloat_a)) {}

	/**
	 * \brief Constructor initialization from 3 type float.
	 *
	 * @param Infloat_x value to copy from.
	 * @param Infloat_y value to copy from.
	 * @param Infloat_Z value to copy from.
	 */
	uX_constexpr vecfloat3(float Infloat_x, float Infloat_y, float Infloat_Z) uX_noexcept : m128_xmm(_uX_mm_set_ps(0.0f, Infloat_Z, Infloat_y, Infloat_x)) {}

	/**
	 * \brief Constructor to broadcast the same bool value into all elements.
	 *
	 * \param Inbool_a value to copy from.
	 */
	uX_explicit uX_constexpr vecfloat3(const bool_t Inbool_a) uX_noexcept : m128_xmm(vecfloat3(vecudword3(Inbool_a))) {}

	/**
	 * \brief Constructor initialization from 3 type bool.
	 *
	 * \param Inbool_x value to copy from.
	 * \param Inbool_y value to copy from.
	 * \param Inbool_z value to copy from.
	 */
	uX_constexpr vecfloat3(const bool_t Inbool_x, const bool_t Inbool_y, const bool_t Inbool_z) uX_noexcept : m128_xmm(vecfloat3(vecudword3(Inbool_x, Inbool_y, Inbool_z))) {}

	/**
	 * \brief Constructor to broadcast the same bool value into all elements.
	 *
	 * \param Inbool_a value to copy from.
	 */
	uX_explicit uX_constexpr vecfloat3(const bool Inbool_a) uX_noexcept : m128_xmm(vecfloat3(vecudword3(Inbool_a))) {}

	/**
	 * \brief Constructor initialization from 3 type bool.
	 *
	 * \param Inbool_x value to copy from.
	 * \param Inbool_y value to copy from.
	 * \param Inbool_z value to copy from.
	 */
	uX_constexpr vecfloat3(const bool Inbool_x, const bool Inbool_y, const bool Inbool_z) uX_noexcept : m128_xmm(vecfloat3(vecudword3(Inbool_x, Inbool_y, Inbool_z))) {}

	/**
	 * \brief Constructor initialization from type float*.
	 *
	 * @param Inpfloat value to copy from.
	 */
	uX_explicit uX_constexpr vecfloat3(uX_InReads(3) const float* Inpfloat) uX_noexcept : m128_xmm(_uX_mm_loadu_ps(reinterpret_cast<__m128 const* const>(Inpfloat))) {}

	/** \brief __m128 type cast operator.
	 *
	 * To convert to __m128.
	 */
	uX_constexpr operator __m128() const uX_noexcept
	{
		return m128_xmm;
	}

	/** Type cast operator to convert to float*. */
	/*operator float*() const uX_noexcept;*/ //security undesired

	/**
	 * \brief vecfloat3 default assignment operator.
	 *
	 * To convert from type vecfloat3.
	 *
	 * \param Inxmmd_a value to copy from.
	 */
	uX_constexpr vecfloat3& uX_abi operator=(vecfloat3 const& Inxmm_a) uX_noexcept
	{
		m128_xmm = Inxmm_a;
		return *this;
	}

	/**
	 * \brief vecfloat3 default assignment operator.
	 *
	 * To convert from type vecfloat3.
	 *
	 * \param Inxmmd_a value to copy from.
	 */
	uX_constexpr vecfloat3& uX_abi operator=(vecfloat3&& Inxmm_a) uX_noexcept
	{
		m128_xmm = Inxmm_a;
		return *this;
	}

	/**
	 * \brief __m128 assignment operator.
	 *
	 * To convert from type __m128.
	 *
	 * \param Inxmm value to copy from.
	 */
	uX_constexpr vecfloat3& uX_abi operator=(const __m128 Inxmm) uX_noexcept
	{
		m128_xmm = vecfloat3(Inxmm);
		return *this;
	}

	/**
	 * \brief vecfloat4 assignment operator.
	 *
	 * To convert from type vecfloat4.
	 *
	 * \param Inxmm_a value to copy from.
	 */
	uX_constexpr vecfloat3& uX_abi operator=(const vecfloat4 Inxmm_a) uX_noexcept
	{
		m128_xmm = vecfloat3(Inxmm_a);
		return *this;
	}

	/**
	 * \brief vecfloat2 assignment operator.
	 *
	 * To convert from type vecfloat2.
	 *
	 * \param Inxmm_a value to copy from.
	 */
	uX_constexpr vecfloat3& uX_abi operator=(const vecfloat2 Inxmm_a) uX_noexcept
	{
		m128_xmm = vecfloat3(Inxmm_a);
		return *this;
	}

	/**
	 * \brief vecfloat1 assignment operator.
	 *
	 * To convert from type vecfloat1.
	 *
	 * \param Inxmm_a value to copy from.
	 */
	uX_constexpr vecfloat3& uX_abi operator=(const vecfloat1 Inxmm_a) uX_noexcept
	{
		m128_xmm = vecfloat3(Inxmm_a);
		return *this;
	}

	/**
	 * \brief vecdouble3 assignment operator.
	 *
	 * To convert from type vecdouble3.
	 *
	 * \param Inxmmd_a value to convert from.
	 */
	uX_constexpr vecfloat3& uX_abi operator=(vecdouble3 const InHxmmd_a) uX_noexcept
	{
		m128_xmm = vecfloat3(InHxmmd_a);
		return *this;
	}

	/**
	 * \brief vecdword3 assignment operator.
	 *
	 * To convert from type vecdword3.
	 *
	 * \param Inxmmi_a value to copy from.
	 */
	uX_constexpr vecfloat3& uX_abi operator=(const vecdword3 Inxmmi_a) uX_noexcept
	{
		m128_xmm = vecfloat3(Inxmmi_a);
		return *this;
	}

	/**
	 * \brief vecudword3 assignment operator.
	 *
	 * To convert from type vecudword3.
	 *
	 * \param Inxmmi_a value to copy from.
	 */
	uX_constexpr vecfloat3& uX_abi operator=(const vecudword3 Inxmmi_a) uX_noexcept
	{
		m128_xmm = vecfloat3(Inxmmi_a);
		return *this;
	}

	/**
	 * \brief float assignment operator
	 *
	 * To broadcast the same float value into all elements.
	 *
	 * \param Infloat_a float value to copy from.
	 */
	uX_constexpr vecfloat3& uX_abi operator=(float Infloat_a) uX_noexcept
	{
		m128_xmm = vecfloat3(Infloat_a);
		return *this;
	}

	/**
	 * \brief bool_t assignment operator.
	 *
	 * To broadcast the same bool value into all elements.
	 *
	 * \param Inbool_a value to copy from.
	 */
	uX_constexpr vecfloat3& uX_abi operator=(const bool_t Inbool_a) uX_noexcept
	{
		m128_xmm = vecfloat3(Inbool_a);
		return *this;
	}

	/**
	 * \brief bool assignment operator.
	 *
	 * To broadcast the same bool value into all elements.
	 *
	 * \param Inbool_a value to copy from.
	 */
	uX_constexpr vecfloat3& uX_abi operator=(const bool Inbool_a) uX_noexcept
	{
		m128_xmm = vecfloat3(Inbool_a);
		return *this;
	}

	/**
	 * \brief Assignment operator to convert from type float*.
	 *
	 * @param Inpfloat value to copy from.
	 */
	/*vecfloat3& uX_abi operator=(uX_InReads(3) const float* Inpfloat) uX_noexcept;*/ //security undesired

	/**
	 * \brief Get vector.
	 *
	 * Gets vector.
	 * \return vector.
	 */
	uX_constexpr __m128 uX_abi get() const uX_noexcept
	{
		return m128_xmm;
	}

	/**
	 * \brief Get _x.
	 *
	 * Gets _x element from vector.
	 * \return float.
	 */
	uX_constexpr float uX_abi get_x() const uX_noexcept
	{
		return _x;
	}

	/**
	 * \brief Get _x _y.
	 *
	 * Gets _x _y elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat2 uX_abi get_xy() const uX_noexcept
	{
		return vecfloat2(m128_xmm);
	}

	/**
	 * \brief Get _x _y _z.
	 *
	 * Gets _x _y _z elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat3 uX_abi get_xyz() const uX_noexcept
	{
		return vecfloat3(m128_xmm);
	}

	/**
	 * \brief Get _x _z.
	 *
	 * Gets _x _z elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat2 uX_abi get_xz() const uX_noexcept
	{
		return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 0, 2, 2, 3));
	}

	/**
	 * \brief Get _x _z _y.
	 *
	 * Gets _x _z _y elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat3 uX_abi get_xzy() const uX_noexcept
	{
		return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 0, 2, 1, 3));
	}

	/**
	 * \brief Get _y.
	 *
	 * Gets _y element from vector.
	 * \return float.
	 */
	uX_constexpr float uX_abi get_y() const uX_noexcept
	{
		return _y;
	}

	/**
	 * \brief Get _y _x.
	 *
	 * Gets _y _x elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat2 uX_abi get_yx() const uX_noexcept
	{
		return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 0, 2, 3));
	}

	/**
	 * \brief Get _y _x _z.
	 *
	 * Gets _y _x _z elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat3 uX_abi get_yxz() const uX_noexcept
	{
		return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 0, 2, 3));
	}

	/**
	 * \brief Get _y _z.
	 *
	 * Gets _y _z elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat2 uX_abi get_yz() const uX_noexcept
	{
		return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 2, 2, 3));
	}

	/**
	 * \brief Get _y _z _x.
	 *
	 * Gets _y _z _x elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat3 uX_abi get_yzx() const uX_noexcept
	{
		return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 1, 2, 0, 3));
	}

	/**
	 * \brief Get _z.
	 *
	 * Gets _z element from vector.
	 * \return float.
	 */
	uX_constexpr float uX_abi get_z() const uX_noexcept
	{
		return _z;
	}

	/**
	 * \brief Get _z _x.
	 *
	 * Gets _z _x elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat2 uX_abi get_zx() const uX_noexcept
	{
		return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 2, 0, 2, 3));
	}

	/**
	 * \brief Get _z _x _y.
	 *
	 * Gets _z _x _y elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat3 uX_abi get_zxy() const uX_noexcept
	{
		return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 2, 0, 1, 3));
	}

	/**
	 * \brief Get _z _y.
	 *
	 * Gets _z _y elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat2 uX_abi get_zy() const uX_noexcept
	{
		return vecfloat2(_uX_MM_PERMUTER_PS_IM(m128_xmm, 2, 1, 2, 3));
	}

	/**
	 * \brief Get _z _y _x.
	 *
	 * Gets _z _y _x elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat3 uX_abi get_zyx() const uX_noexcept
	{
		return vecfloat3(_uX_MM_PERMUTER_PS_IM(m128_xmm, 2, 1, 0, 3));
	}

	/**
	 * \brief Get reference to vector.
	 *
	 * Gets reference to vector.
	 * \return vector.
	 */
	uX_constexpr __m128& uX_abi ref() uX_noexcept
	{
		return m128_xmm;
	}

	/**
	 * \brief Get reference to _x.
	 *
	 * Gets reference to _x element from vector.
	 * \return float.
	 */
	uX_constexpr float& uX_abi ref_x() uX_noexcept
	{
		return _x;
	}

	/**
	 * \brief Get reference to _x _y.
	 *
	 * Gets reference to _x _y elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat2& uX_abi ref_xy() uX_noexcept
	{
		vecflt2rettype = get_xy();
		return vecflt2rettype;
	}

	/**
	 * \brief Get reference to _x _y _z.
	 *
	 * Gets reference to _x _y _z elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat3& uX_abi ref_xyz() uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get reference to _x _z.
	 *
	 * Gets reference to _x _z elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat2& uX_abi ref_xz() uX_noexcept
	{
		vecflt2rettype = get_xz();
		return vecflt2rettype;
	}

	/**
	 * \brief Get reference to _x _z _y.
	 *
	 * Gets reference to _x _z _y elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat3& uX_abi ref_xzy() uX_noexcept
	{
		*this = get_xzy();
		return *this;
	}

	/**
	 * \brief Get reference to _y.
	 *
	 * Gets reference to _y elements from vector.
	 * \return float.
	 */
	uX_constexpr float& uX_abi ref_y() uX_noexcept
	{
		return _y;
	}

	/**
	 * \brief Get reference to _y _x.
	 *
	 * Gets reference to _y _x elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat2& uX_abi ref_yx() uX_noexcept
	{
		vecflt2rettype = get_yx();
		return vecflt2rettype;
	}

	/**
	 * \brief Get reference to _y _x _z.
	 *
	 * Gets reference to _y _x _z elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat3& uX_abi ref_yxz() uX_noexcept
	{
		*this = get_yxz();
		return *this;
	}

	/**
	 * \brief Get reference to _y _z.
	 *
	 * Gets reference to _y _z elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat2& uX_abi ref_yz() uX_noexcept
	{
		vecflt2rettype = get_yz();
		return vecflt2rettype;
	}

	/**
	 * \brief Get reference to _y _z _x.
	 *
	 * Gets reference to _y _z _x elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat3& uX_abi ref_yzx() uX_noexcept
	{
		*this = get_yzx();
		return *this;
	}

	/**
	 * \brief Get reference to _z.
	 *
	 * Gets reference to _z element from vector.
	 * \return float.
	 */
	uX_constexpr float& uX_abi ref_z() uX_noexcept
	{
		return _z;
	}

	/**
	 * \brief Get reference to _z _x.
	 *
	 * Gets reference to _z _x elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat2& uX_abi ref_zx() uX_noexcept
	{
		vecflt2rettype = get_zx();
		return vecflt2rettype;
	}

	/**
	 * \brief Get reference to _z _x _y.
	 *
	 * Gets reference to _z _x _y elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat3& uX_abi ref_zxy() uX_noexcept
	{
		*this = get_zxy();
		return *this;
	}

	/**
	 * \brief Get reference to _z _y.
	 *
	 * Gets reference to _z _y elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat2& uX_abi ref_zy() uX_noexcept
	{
		vecflt2rettype = get_zy();
		return vecflt2rettype;
	}

	/**
	 * \brief Get reference to _z _y _x.
	 *
	 * Gets reference to _z _y _x elements from vector.
	 * \return vector.
	 */
	uX_constexpr vecfloat3& uX_abi ref_zyx() uX_noexcept
	{
		*this = get_zyx();
		return *this;
	}

	/**
	 * \brief Set the vector.
	 *
	 * Sets all vector elements.
	 *
	 * \param Inxmm.
	 */
	uX_constexpr void uX_abi set(const __m128 Inxmm) uX_noexcept
	{
		m128_xmm = vecfloat3(Inxmm);
	}

	/**
	 * \brief Set the vector _x.
	 *
	 * Sets the vector _x element.
	 *
	 * \param Infloat_a.
	 */
	uX_constexpr void uX_abi set_x(float Infloat_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SETFLT_PS_IM(m128_xmm, Infloat_a, 0);
	}

	/**
	 * \brief Set the vector _x _y.
	 *
	 * Sets the vector _x _y elements with vecfloat2(_x,_y).
	 *
	 * \param Inxmm_a.
	 */
	uX_constexpr void uX_abi set_xy(const vecfloat2 Inxmm_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 1, 2, 3);
	}

	/**
	 * \brief Set the vector _x _y _z.
	 *
	 * Sets the vector _x _y _z elements with vecfloat3(_x,_y,_z).
	 *
	 * \param Inxmm_a.
	 */
	uX_constexpr void uX_abi set_xyz(const vecfloat3 Inxmm_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 2, 2, 3, 3), 0, 1, 0, 3);
	}

	/**
	 * \brief Set the vector _x _z.
	 *
	 * Sets the vector _x _z elements with vecfloat2(_x,_y).
	 *
	 * \param Inxmm_a.
	 */
	uX_constexpr void uX_abi set_xz(const vecfloat2 Inxmm_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SHUFFLER_PS_IM(_uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 0, 1, 1), _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 1, 1, 3, 3), 0, 2, 0, 3);
	}

	/**
	 * \brief Set the vector _x _z _y.
	 *
	 * Sets the vector _x _z _y elements with vecfloat3(_x,_y,_z).
	 *
	 * \param Inxmm_a.
	 */
	uX_constexpr void uX_abi set_xzy(const vecfloat3 Inxmm_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 1, 1, 3, 3), 0, 2, 1, 3);
	}

	/**
	 * \brief Set the vector _y.
	 *
	 * Sets the vector _y element.
	 *
	 * \param Infloat_a.
	 */
	uX_constexpr void uX_abi set_y(float Infloat_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SETFLT_PS_IM(m128_xmm, Infloat_a, 1);
	}

	/**
	 * \brief Set the vector _y _x.
	 *
	 * Sets the vector _y _x elements with vecfloat2(_x,_y).
	 *
	 * \param Inxmm_a.
	 */
	uX_constexpr void uX_abi set_yx(const vecfloat2 Inxmm_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 1, 0, 2, 3);
	}

	/**
	 * \brief Set the vector _y _x _z.
	 *
	 * Sets the vector _y _x _z elements with vecfloat3(_x,_y,_z).
	 *
	 * \param Inxmm_a.
	 */
	uX_constexpr void uX_abi set_yxz(const vecfloat3 Inxmm_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 2, 2, 3, 3), 1, 0, 0, 3);
	}

	/**
	 * \brief Set the vector _y _z.
	 *
	 * Sets the vector _y _z elements with vecfloat2(_x,_y).
	 *
	 * \param Inxmm_a.
	 */
	uX_constexpr void uX_abi set_yz(const vecfloat2 Inxmm_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SHUFFLER_PS_IM(_uX_MM_SHUFFLER_PS_IM(m128_xmm, Inxmm_a, 0, 0, 0, 0), _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 1, 1, 3, 3), 0, 2, 0, 3);
	}

	/**
	 * \brief Set the vector _y _z _x.
	 *
	 * Sets the vector _y _z _x elements with vecfloat3(_x,_y,_z).
	 *
	 * \param Inxmm_a.
	 */
	uX_constexpr void uX_abi set_yzx(const vecfloat3 Inxmm_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 1, 2, 3), 2, 0, 1, 3);
	}

	/**
	 * \brief Set the vector _z.
	 *
	 * Sets the vector _z element.
	 *
	 * \param Infloat_a.
	 */
	uX_constexpr void uX_abi set_z(float Infloat_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SETFLT_PS_IM(m128_xmm, Infloat_a, 2);
	}

	/**
	 * \brief Set the vector _z _x.
	 *
	 * Sets the vector _z _x elements with vecfloat2(_x,_y).
	 *
	 * \param Inxmm_a.
	 */
	uX_constexpr void uX_abi set_zx(const vecfloat2 Inxmm_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SHUFFLER_PS_IM(_uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 1, 1, 1, 1), _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 0, 3, 3), 0, 2, 0, 3);
	}

	/**
	 * \brief Set the vector _z _x _y.
	 *
	 * Sets the vector _z _x _y elements with vecfloat3(_x,_y,_z).
	 *
	 * \param Inxmm_a.
	 */
	uX_constexpr void uX_abi set_zxy(const vecfloat3 Inxmm_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 0, 3, 3), 1, 2, 0, 3);
	}

	/**
	 * \brief Set the vector _z _y.
	 *
	 * Sets the vector _z _y elements with vecfloat2(_x,_y).
	 *
	 * \param Inxmm_a.
	 */
	uX_constexpr void uX_abi set_zy(const vecfloat2 Inxmm_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SHUFFLER_PS_IM(_uX_MM_SHUFFLER_PS_IM(m128_xmm, Inxmm_a, 0, 0, 1, 1), _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 0, 3, 3), 0, 1, 0, 3);
	}

	/**
	 * \brief Set the vector _z _y _x.
	 *
	 * Sets the vector _z _y _x elements with vecfloat3(_x,_y,_z).
	 *
	 * \param Inxmm_a.
	 */
	uX_constexpr void uX_abi set_zyx(const vecfloat3 Inxmm_a) uX_noexcept
	{
		m128_xmm = _uX_MM_SHUFFLER_PS_IM(Inxmm_a, _uX_MM_SHUFFLER_PS_IM(Inxmm_a, m128_xmm, 0, 0, 3, 3), 2, 1, 0, 3);
	}

	/* Bitwise Operators */

	/**
	 * \brief Bitwise function ANDNOT.
	 *
	 * Performs the compute and not from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi andnot(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_andnot_ps(Inxmm_b, Inxmm_a));
	}

	/**
	 * \brief Bitwise operator AND.
	 *
	 * Performs the compute and from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator&(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_and_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Bitwise operator OR.
	 *
	 * Performs the compute or from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator|(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_or_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Bitwise operator XOR.
	 *
	 * Performs the compute xor from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator^(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_xor_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Bitwise operator NOT.
	 *
	 * Performs the compute not from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator~(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_not_ps(Inxmm_a));
	}

	/* Logical Operators */

	/**
	 * \brief Logical function ANDNOT.
	 *
	 * Performs the compute and not from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 * \return boolean integer.
	 */
	friend uX_constexpr bool_t uX_abi bandnot(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return _uX_mm_iandnot_ps(Inxmm_b, Inxmm_a);
	}

	/**
	 * \brief Logical operator AND.
	 *
	 * Performs the compute and from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 * \return boolean integer.
	 */
	friend uX_constexpr bool_t uX_abi operator&&(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return _uX_mm_iand_ps(Inxmm_a, Inxmm_b);
	}

	/**
	 * \brief Logical operator OR.
	 *
	 * Performs the compute OR from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 * \return boolean integer.
	 */
	friend uX_constexpr bool_t uX_abi operator||(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return _uX_mm_ior_ps(Inxmm_a, Inxmm_b);
	}

	/**
	 * \brief Logical operator NOT.
	 *
	 * Performs the compute not from the 1 parameter.
	 *
	 * \param Inxmm_a.
	 * \return boolean integer.
	 */
	friend uX_constexpr bool_t uX_abi operator!(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return _uX_mm_inot_ps(Inxmm_a);
	}

	/**
	 * \brief Logical function HORIZONTAL AND.
	 *
	 * Performs the compute horizontal and in all bits from the parameter. Returns true if all bits are 1.
	 *
	 * \param Inxmm_a.
	 * \return boolean integer.
	 */
	friend uX_constexpr bool_t uX_abi horizontal_and(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return _uX_mm_ihand_ps(Inxmm_a);
	}

	/**
	 * \brief Logical function HORIZONTAL OR.
	 *
	 * Performs the compute horizontal or in all bits from the parameter. Returns true if at least one bit is 1.
	 *
	 * \param Inxmm_a.
	 * \return boolean integer.
	 */
	friend uX_constexpr bool_t uX_abi horizontal_or(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return _uX_mm_ihor_ps(Inxmm_a);
	}

	/**
	 * \brief Logical operator assignment AND.
	 *
	 * Performs the compute and from the 2 parameters, and assigns to first parameter.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3& uX_abi operator&=(vecfloat3& Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return Inxmm_a = vecfloat3(_uX_mm_and_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Logical operator assignment OR.
	 *
	 * Performs the compute or from the 2 parameters, and assigns to first parameter.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3& uX_abi operator|=(vecfloat3& Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return Inxmm_a = vecfloat3(_uX_mm_or_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Logical operator assignment XOR.
	 *
	 * Performs the compute xor from the 2 parameters, and assigns to first parameter.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3& uX_abi operator^=(vecfloat3& Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return Inxmm_a = vecfloat3(_uX_mm_xor_ps(Inxmm_a, Inxmm_b));
	}

	/* Arithmetic Operators */

	/**
	 * \brief Arithmetic operator addition.
	 *
	 * Performs the compute addition from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Infloat_b, broadcast same value to all elements.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator+(vecfloat3 const Inxmm_a, float Infloat_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_add_ps(Inxmm_a, _uX_mm_set1_ps(Infloat_b)));
	}

	/**
	 * \brief Arithmetic operator addition.
	 *
	 * Performs the compute addition from the 2 parameters.
	 *
	 * \param Infloat_a, broadcast same value to all elements.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator+(float Infloat_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_add_ps(_uX_mm_set1_ps(Infloat_a), Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator addition.
	 *
	 * Performs the compute addition from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b, broadcast same value to all elements.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator+(vecfloat3 const Inxmm_a, __m128 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_add_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator addition.
	 *
	 * Performs the compute addition from the 2 parameters.
	 *
	 * \param Inxmm_a, broadcast same value to all elements.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator+(__m128 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_add_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator addition.
	 *
	 * Performs the compute addition from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator+(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_add_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator subtraction.
	 *
	 * Performs the compute subtraction from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Infloat_b, broadcast same value to all elements.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator-(vecfloat3 const Inxmm_a, float Infloat_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_sub_ps(Inxmm_a, _uX_mm_set1_ps(Infloat_b)));
	}

	/**
	 * \brief Arithmetic operator subtraction.
	 *
	 * Performs the compute subtraction from the 2 parameters.
	 *
	 * \param Infloat_a, broadcast same value to all elements.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator-(float Infloat_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_sub_ps(_uX_mm_set1_ps(Infloat_a), Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator subtraction.
	 *
	 * Performs the compute subtraction from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b, broadcast same value to all elements.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator-(vecfloat3 const Inxmm_a, __m128 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_sub_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator subtraction.
	 *
	 * Performs the compute subtraction from the 2 parameters.
	 *
	 * \param Inxmm_a, broadcast same value to all elements.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator-(__m128 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_sub_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator subtraction.
	 *
	 * Performs the compute subtraction from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator-(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_sub_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator multiplication.
	 *
	 * Performs the compute multiplication from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Infloat_b, broadcast same value to all elements.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator*(vecfloat3 const Inxmm_a, float Infloat_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_mul_ps(Inxmm_a, _uX_mm_set1_ps(Infloat_b)));
	}

	/**
	 * \brief Arithmetic operator multiplication.
	 *
	 * Performs the compute multiplication from the 2 parameters.
	 *
	 * \param Infloat_a, broadcast same value to all elements.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator*(float Infloat_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_mul_ps(_uX_mm_set1_ps(Infloat_a), Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator multiplication.
	 *
	 * Performs the compute multiplication from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b, broadcast same value to all elements.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator*(vecfloat3 const Inxmm_a, __m128 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_mul_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator multiplication.
	 *
	 * Performs the compute multiplication from the 2 parameters.
	 *
	 * \param Inxmm_a, broadcast same value to all elements.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator*(__m128 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_mul_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator multiplication.
	 *
	 * Performs the compute multiplication from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator*(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_mul_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator division.
	 *
	 * Performs the compute division from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Infloat_b, broadcast same value to all elements.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator/(vecfloat3 const Inxmm_a, float Infloat_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_div_ps(Inxmm_a, _uX_mm_set1_ps(Infloat_b)));
	}

	/**
	 * \brief Arithmetic operator division.
	 *
	 * Performs the compute division from the 2 parameters.
	 *
	 * \param Infloat_a, broadcast same value to all elements.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator/(float Infloat_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_div_ps(_uX_mm_set1_ps(Infloat_a), Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator division.
	 *
	 * Performs the compute division from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b, broadcast same value to all elements.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator/(vecfloat3 const Inxmm_a, __m128 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_div_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator division.
	 *
	 * Performs the compute division from the 2 parameters.
	 *
	 * \param Inxmm_a, broadcast same value to all elements.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator/(__m128 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_div_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator division.
	 *
	 * Performs the compute division from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator/(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_div_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator addition.
	 *
	 * Performs the compute addition from the 2 parameters, and assigns to first parameter.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3& uX_abi operator+=(vecfloat3& Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return Inxmm_a = vecfloat3(_uX_mm_add_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator subtraction.
	 *
	 * Performs the compute subtraction from the 2 parameters, and assigns to first parameter.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3& uX_abi operator-=(vecfloat3& Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return Inxmm_a = vecfloat3(_uX_mm_sub_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator multiplication.
	 *
	 * Performs the compute multiplication from the 2 parameters, and assigns to first parameter.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3& uX_abi operator*=(vecfloat3& Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return Inxmm_a = vecfloat3(_uX_mm_mul_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Arithmetic operator division.
	 *
	 * Performs the compute division from the 2 parameters, and assigns to first parameter.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3& uX_abi operator/=(vecfloat3& Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return Inxmm_a = vecfloat3(_uX_mm_div_ps(Inxmm_a, Inxmm_b));
	}

	/* Unary Operators */

	/**
	 * \brief Unary prefix increment operator.
	 *
	 * Performs the compute prefix increment.
	 *
	 * \param Inxmm_a.
	 */
	friend uX_constexpr vecfloat3& uX_abi operator++(vecfloat3& Inxmm_a) uX_noexcept
	{
		Inxmm_a = Inxmm_a + __m128_1;
		return Inxmm_a;
	}

	/**
	 * \brief Unary prefix decrement operator.
	 *
	 * Performs the compute prefix increment.
	 *
	 * \param Inxmm_a.
	 */
	friend uX_constexpr vecfloat3& uX_abi operator--(vecfloat3& Inxmm_a) uX_noexcept
	{
		Inxmm_a = Inxmm_a - __m128_1;
		return Inxmm_a;
	}

	/**
	 * \brief Unary postfix increment operator.
	 *
	 * Performs the compute postfix increment.
	 *
	 * \param Inxmm_a.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator++(vecfloat3& Inxmm_a, int) uX_noexcept
	{
		vecfloat3 tmpxmm_a0 = Inxmm_a;
		Inxmm_a = Inxmm_a + __m128_1;
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary postfix decrement operator.
	 *
	 * Performs the compute postfix increment.
	 *
	 * \param Inxmm_a.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator--(vecfloat3& Inxmm_a, int) uX_noexcept
	{
		vecfloat3 tmpxmm_a0 = Inxmm_a;
		Inxmm_a = Inxmm_a - __m128_1;
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary minus operator.
	 *
	 * Performs the compute minus. Change sign bit, even for 0, INF and NAN.
	 *
	 * \param Inxmm_a.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator-(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_negate_ps(Inxmm_a));
	}

	/* Comparison Operators */

	/**
	 * \brief Comparison operator equal.
	 *
	 * Performs the compute equality from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator==(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_cmpeq_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Comparison operator less than.
	 *
	 * Performs the compute less than from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator<(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_cmplt_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Comparison operator less than or equal.
	 *
	 * Performs the compute less than or equal from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator<=(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_cmple_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Comparison operator greater than.
	 *
	 * Performs the compute greater than from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator>(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_cmpgt_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Comparison operator greater than or equal.
	 *
	 * Performs the compute greater than or equal from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator>=(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_cmpge_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Comparison operator not equal.
	 *
	 * Performs the compute not equal from the 2 parameters.
	 *
	 * \param Inxmm_a.
	 * \param Inxmm_b.
	 */
	friend uX_constexpr vecfloat3 uX_abi operator!=(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_cmpneq_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Index operator.
	 *
	 * Element Access Only, no modifications to elements.
	 *
	 * \param index element to get.
	 * \return float
	 */
	uX_constexpr float const& uX_abi operator[](count_t index) const uX_noexcept
	{
		return extract(index);
	}

	/**
	 * \brief Index operator.
	 *
	 * Element Access and Modification.
	 *
	 * \param index element to get.
	 * \return float
	 */
	uX_constexpr float& uX_abi operator[](count_t index) uX_noexcept
	{
		fltrettype = extract(index);
		return fltrettype;
	}

	/**
	 * \brief Load unaligned.
	 *
	 * Performs load from type float* unaligned.
	 *
	 * \param Inpfloat pointer value to copy from.
	 */
	uX_constexpr vecfloat3& uX_abi load(uX_InReads(2) float const* const Inpfloat) uX_noexcept
	{
		m128_xmm = _uX_mm_loadu_ps(reinterpret_cast<__m128 const* const>(Inpfloat));
		return *this;
	}

	/**
	 * \brief Load aligned.
	 *
	 * Performs load from type float* aligned.
	 *
	 * \warning It must be aligned by 16.
	 *
	 * \param Inpfloat pointer value to copy from.
	 */
	uX_constexpr vecfloat3& uX_abi load_a(uX_InReads(2) float const* const Inpfloat) uX_noexcept
	{
		m128_xmm = _uX_mm_load_ps(reinterpret_cast<__m128 const* const>(Inpfloat));
		return *this;
	}

	/**
	 * \brief Store function unaligned.
	 *
	 * Performs store to type float* unaligned.
	 *
	 * \param Outpfloat pointer value to store to.
	 */
	uX_constexpr void uX_abi store(uX_OutWrites(2) float* Outpfloat) const uX_noexcept
	{
		_uX_mm_storeu_ps(reinterpret_cast<__m128*>(Outpfloat), m128_xmm);
	}

	/**
	 * \brief Store function aligned.
	 *
	 * Performs store to type float* aligned.
	 *
	 * \warning It must be aligned by 16.
	 *
	 * \param Outpfloat pointer value to store to.
	 */
	uX_constexpr void uX_abi store_a(uX_OutWrites(2) float* Outpfloat) const uX_noexcept
	{
		_uX_mm_store_ps(reinterpret_cast<__m128*>(Outpfloat), m128_xmm);
	}

	/**
	 * \brief Insert function.
	 *
	 * Performs insert from type float on the mask index.
	 *
	 * \param value float to copy from.
	 * \param index element to set.
	 * \return vector
	 */
	uX_constexpr vecfloat3 const uX_abi insert(float value, count_t index) uX_noexcept
	{
		if(index > 2) return *this;
		m128_xmm = _uX_mm_setelts_ps(m128_xmm, value, index);
		return *this;
	}

	/**
	 * \brief Extract function.
	 *
	 * Performs extract element from mask index.
	 *
	 * \param index element to get.
	 * \return float
	 */
	uX_constexpr float uX_abi extract(count_t index) const uX_noexcept
	{
		if(index > 2) return 0.0;
		return _uX_mm_cvtelts_flt(m128_xmm, index);
	}

	/**
	 * \brief Set all elements to zero.
	 */
	uX_constexpr vecfloat3& uX_abi zero(void) uX_noexcept
	{
		m128_xmm = _uX_mm_setzero_ps();
		return *this;
	}

	/**
	 * \brief Cut off vector to n elements.
	 *
	 * Performs the cut off vector to n elements.
	 * The last 4-n elements are set to zero.
	 *
	 * \param indexN element's to cut.
	 */
	uX_constexpr vecfloat3& uX_abi cutoff(count_t indexN) uX_noexcept
	{
		switch(indexN)
		{
			case 2:
				m128_xmm = _uX_MM_SHUFFLER_PS_IM(m128_xmm, __m128_0, 0, 1, 2, 3);
				break;
			case 1:
				m128_xmm = _uX_mm_move_ss(__m128_0, m128_xmm);
				break;
			case 0:
				m128_xmm = __m128_0;
				break;
			default:
				break;
		}
		return *this;
	}

	/**
	 * \brief Flip Sign function.
	 *
	 * Performs the flip sign off vector on all elements.
	 *
	 * \param Inxmm_a the vector to flip sign.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi flip_sign(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_xor_ps(Inxmm_a, __m128_sign));
	}

	/**
	 * \brief Test if all elements if is zero.
	 *
	 * Performs the test if all elements are zero.
	 *
	 * \param Inxmm_a the vector to test.
	 * \return boolean integer.
	 */
	friend uX_constexpr bool_t uX_abi is_zero(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return _uX_mm_iszero_ps(Inxmm_a);
	}

	/**
	 * \brief Select between two operands.
	 *
	 * Performs the selection between two operands.
	 * The first vector is boolean vector mask that chooses between the elements of the second and the third vector.
	 * Corresponds to this pseudo code:
	 *  for (int i () { return 0; i < 4; i++) result[i] () { return s[i] ? a[i] : b[i];
	 *
	 * \param Inxmm_f the boolean vector mask.
	 * \param Inxmm_a the a vector to select.
	 * \param Inxmm_b the b vector to select.
	 * \return the selected vector elements.
	 */
	friend uX_constexpr vecfloat3 uX_abi select(vecfloat3 const Inxmm_f, vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_select_ps(Inxmm_f, Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Conditional add.
	 *
	 * Performs the conditional add in all elements selected by the first boolean vector mask on the second and third vector elements.
	 * Corresponds to this pseudo code:
	 *  result[i] () { return f[i] ? (a[i] + b[i]) : a[i]
	 *
	 * \param Inxmm_f the boolean vector mask.
	 * \param Inxmm_a the a vector to add.
	 * \param Inxmm_b the b vector to add.
	 * \return the selected vector addition.
	 */
	friend uX_constexpr vecfloat3 uX_abi if_add(vecfloat3 const Inxmm_f, vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return Inxmm_a + (Inxmm_f & Inxmm_b);
	}

	/**
	 * \brief Conditional subtract.
	 *
	 * Performs the conditional subtract in all elements selected by the first boolean vector mask on the second and third vector elements.
	 * Corresponds to this pseudo code:
	 *  result[i] () { return f[i] ? (a[i] - b[i]) : a[i]
	 *
	 * \param Inxmm_f the boolean vector mask.
	 * \param Inxmm_a the a vector to subtract.
	 * \param Inxmm_b the b vector to subtract.
	 * \return the selected vector subtraction.
	 */
	friend uX_constexpr vecfloat3 uX_abi if_sub(vecfloat3 const Inxmm_f, vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return Inxmm_a - (Inxmm_f & Inxmm_b);
	}

	/**
	 * \brief Conditional multiply.
	 *
	 * Performs the conditional multiply in all elements selected by the first boolean vector mask on the second and third vector elements.
	 * Corresponds to this pseudo code:
	 *  result[i] () { return f[i] ? (a[i] * b[i]) : a[i]
	 *
	 * \param Inxmm_f the boolean vector mask.
	 * \param Inxmm_a the a vector to multiply.
	 * \param Inxmm_b the b vector to multiply.
	 * \return the selected vector multiplication.
	 */
	friend uX_constexpr vecfloat3 uX_abi if_mul(vecfloat3 const Inxmm_f, vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return Inxmm_a * select(Inxmm_f, Inxmm_b, vecfloat3(__m128_1));
	}

	/**
	 * \brief Conditional multiply.
	 *
	 * Performs the conditional divide in all elements selected by the first boolean vector mask on the second and third vector elements.
	 * Corresponds to this pseudo code:
	 *  result[i] () { return f[i] ? (a[i] / b[i]) : a[i]
	 *
	 * \param Inxmm_f the boolean vector mask.
	 * \param Inxmm_a the a vector to divide.
	 * \param Inxmm_b the b vector to divide.
	 * \return the selected vector division.
	 */
	friend uX_constexpr vecfloat3 uX_abi if_div(vecfloat3 const Inxmm_f, vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return Inxmm_a / select(Inxmm_f, Inxmm_b, vecfloat3(__m128_1));
	}

	/**
	 * \brief Change signs on vector at compile time.
	 *
	 * Generate a constant vector at compile time stored in memory, and changes the sign of parameter.
	 * Each index i0 - i2 is 1 for changing sign on the corresponding element, 0 for no change.
	 *
	 * \param Inxmm_a the vector to change.
	 *
	 */
	template <int i0, int i1, int i2>
	friend uX_constexpr vecfloat3 uX_abi change_sign(vecfloat3 const Inxmm_a) uX_noexcept
	{
		if((i0 | i1 | i2) == 0) return Inxmm_a;
		return Inxmm_a ^ vecfloat3(vecudword3::constant<i0 ? 0x80000000 : 0, i1 ? 0x80000000 : 0, i2 ? 0x80000000 : 0>());
	}

	/**
	 * \brief Sign bit.
	 *
	 * Gives true for elements that have the sign bit set.
	 * Note that sign_bit(vecfloat3(-0.0f)) gives true, while vecfloat3(-0.0f) < vecfloat3(0.0f) gives false.
	 *
	 * \param Inxmm_a the a vector.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi sign_bit(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_signbit_ps(Inxmm_a));
	}

	/**
	 * \brief Sign combine.
	 *
	 * Changes the sign of a when b has the sign bit set.
	 * Same as select(sign_bit(b), -a, a)
	 *
	 * \param Inxmm_a the a vector.
	 * \param Inxmm_b the b vector.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi sign_combine(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_signcombine_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Is finite.
	 *
	 * Gives true for elements that are normal, denormal or zero, false for INF and NAN.
	 *
	 * \param Inxmm_a the a vector.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi is_finite(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_isfinite_ps(Inxmm_a));
	}

	/**
	 * \brief Is inf.
	 *
	 * Gives true for elements that are +INF or -INF, false for finite numbers and NAN.
	 *
	 * \param Inxmm_a the a vector.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi is_inf(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_isinf_ps(Inxmm_a));
	}

	/**
	 * \brief Is nan.
	 *
	 * Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF.
	 *
	 * \param Inxmm_a the a vector.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi is_nan(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_isnan_ps(Inxmm_a));
	}

	/**
	 * \brief Is subnormal.
	 *
	 * Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF.
	 *
	 * \param Inxmm_a the a vector.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi is_subnormal(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_issubnormal_ps(Inxmm_a));
	}

	/**
	 * \brief Is zero or subnormal.
	 *
	 * Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF.
	 *
	 * \param Inxmm_a the a vector.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi is_zero_or_subnormal(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_iszeroorsubnormal_ps(Inxmm_a));
	}

	/**
	 * \brief Infinite.
	 *
	 * \return a vector where all elements are +INF.
	 */
	uX_constexpr vecfloat3& uX_abi infinite(void) uX_noexcept
	{
		m128_xmm = vecfloat3(_uX_mm_infinite_ps());
		return *this;
	}

	/**
	 * \brief Nan.
	 *
	 * \return a vector where all elements are NAN (quiet).
	 */
	uX_constexpr vecfloat3& uX_abi nan(void) uX_noexcept
	{
		m128_xmm = vecfloat3(_uX_mm_nan_ps());
		return *this;
	}

	/**
	 * \brief Is Horizontal add.
	 *
	 * Calculates the sum of all vector elements.
	 *
	 * \param Inxmm_a the a vector.
	 * \return float.
	 */
	friend uX_constexpr float uX_abi horizontal_add(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return _uX_mm_horizontaladd_ps(Inxmm_a);
	}

	/**
	 * \brief Horizontal sub.
	 *
	 * Calculates the subtraction of all vector elements.
	 *
	 * \param Inxmm_a the a vector.
	 * \return float.
	 */
	friend uX_constexpr float uX_abi horizontal_sub(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return _uX_mm_horizontalsub_ps(Inxmm_a);
	}

	/**
	 * \brief Horizontal mull.
	 *
	 * Calculates the multiplication of all vector elements.
	 *
	 * \param Inxmm_a the a vector.
	 * \return float.
	 */
	friend uX_constexpr float uX_abi horizontal_mul(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return _uX_mm_horizontalmul_ps(Inxmm_a);
	}

	/**
	 * \brief Max.
	 *
	 * Computes the max a > b ? a : b.
	 *
	 * \param Inxmm_a the a vector.
	 * \param Inxmm_b the b vector.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi max(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_max_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Min.
	 *
	 * Computes the min a < b ? a : b.
	 *
	 * \param Inxmm_a the a vector.
	 * \param Inxmm_b the b vector.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi min(vecfloat3 const Inxmm_a, vecfloat3 const Inxmm_b) uX_noexcept
	{
		return vecfloat3(_uX_mm_min_ps(Inxmm_a, Inxmm_b));
	}

	/**
	 * \brief Abs.
	 *
	 * Computes the absolute value.
	 *
	 * \param Inxmm_a the a vector..
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi abs(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_abs_ps(Inxmm_a));
	}

	/**
	 * \brief Square.
	 *
	 * Computes the a * a.
	 *
	 * \param Inxmm_a the a vector.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi square(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_square_ps(Inxmm_a));
	}

	/**
	 * \brief Scale.
	 *
	 * Computes the a * s.
	 *
	 * \param Inxmm_a the a vector.
	 * \param Infloat_s the float scale factor.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi scale(vecfloat3 const Inxmm_a, float Infloat_s) uX_noexcept
	{
		return vecfloat3(_uX_mm_scale_ps(Inxmm_a, Infloat_s));
	}

	/**
	 * \brief rcp.
	 *
	 * Computes the reciprocal.
	 *
	 * \param Inxmm_a the a vector.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi rcp(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_rcp_ps(Inxmm_a));
	}

	/**
	 * \brief sqrt.
	 *
	 * Computes the square root.
	 *
	 * \param Inxmm_a the a vector.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi sqrt(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_sqrt_ps(Inxmm_a));
	}

	/**
	 * \brief rsqrt.
	 *
	 * Computes the reciprocal square root.
	 *
	 * \param Inxmm_a the a vector.
	 * \return vector.
	 */
	friend uX_constexpr vecfloat3 uX_abi rsqrt(vecfloat3 const Inxmm_a) uX_noexcept
	{
		return vecfloat3(_uX_mm_rsqrt_ps(Inxmm_a));
	}

protected:

private:
	union
	{
		__m128              m128_xmm;
		struct
		{
			float         _x, _y, _z;
		};
		float              m128_f[3];
	};
	vecfloat2         vecflt2rettype;
	float                 fltrettype;

public:

	/**
	 * \brief xmm size
	 * \details Gets the xmm vector size
	 * \returns count_t
	 * \retval the xmm size
	 */
	uX_constexpr count_t const uX_abi xmm_size(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief xmm float elements
	 * \details Gets the quantity of xmm vector float elements
	 * \returns count_t
	 * \retval the quantity of xmm float elements
	 */
	uX_constexpr count_t const uX_abi xmm_flt_elements(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief float size
	 * \details Gets the float size
	 * \returns count_t
	 * \retval the xmm float size
	 */
	uX_constexpr count_t const uX_abi flt_size(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief float elements
	 * \details Gets the quantity of float elements
	 * \returns count_t
	 * \retval the quantity of float elements
	 */
	uX_constexpr count_t const uX_abi flt_elements(void) const uX_noexcept
	{
		return 3;
	}

	/**
	 * \brief float pointer length
	 * \details Gets the length of float pointer
	 * \returns count_t
	 * \retval the length of float pointer
	 */
	uX_constexpr count_t const uX_abi flt_ptr_length(void) const uX_noexcept
	{
		return 3;
	}

	/**
	 * \brief float pointer size
	 * \details Gets the size of float pointer
	 * \returns count_t
	 * \retval the size of float pointer
	 */
	uX_constexpr count_t const uX_abi flt_ptr_size(void) const uX_noexcept
	{
		return 12;
	}
}vecfloat3_t;

uX_PACK_POP
EXTERN_CC_END
namespace_xmm_end
namespace_uX_end

#ifndef uX_XMM_VECFLOAT4_H
#include "uXxmmvecfloat4.h"
#endif  /* uX_XMM_VECFLOAT4_H */

#ifndef uX_XMM_VECFLOAT2_H
#include "uXxmmvecfloat2.h"
#endif  /* uX_XMM_VECFLOAT2_H */

#ifndef uX_XMM_VECFLOAT1_H
#include "uXxmmvecfloat1.h"
#endif  /* uX_XMM_VECFLOAT1_H */

#ifndef uX_XMM_VECDOUBLE3_H
#include "uXxmmvecdouble3.h"
#endif  /* uX_XMM_VECDOUBLE3_H */

#ifndef uX_XMM_VECDWORD3_H
#include "uXxmmvecdword3.h"
#endif  /* uX_XMM_VECDWORD3_H */

#ifndef uX_XMM_VECUDWORD3_H
#include "uXxmmvecudword3.h"
#endif  /* uX_XMM_VECUDWORD3_H */

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECFLOAT3_H
