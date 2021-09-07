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

#ifndef uX_XMM_VECQWORD2_H
#define uX_XMM_VECQWORD2_H 1

/**
 * \defgroup uX_XMM_VECQWORD2 2 64bit integer SSE SIMD Vector
 * \ingroup uX_NAMESPACE_XMM
 * \file uXxmmvecqword2.h
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
#endif  /* uX_XMM_INTRIN_H	 */

#ifndef uX_EMM_INTRIN_H
#include "uXemmintrin.h"
#endif  /* uX_EMM_INTRIN_H */

#ifndef uX_SMM_INTRIN_H
#include "uXsmmintrin.h"
#endif  /* uX_SMM_INTRIN_H	 */

#ifndef uX_XMM_VECDOUBLE2_H
#include "uXxmmvecdouble2.h"
#endif  /* uX_XMM_VECDOUBLE2_H */

#ifndef uX_XMM_VECFLOAT4_H
#include "uXxmmvecfloat4.h"
#endif  /* uX_XMM_VECFLOAT2_H */

#ifndef uX_XMM_VECQWORD4_H
#include "uXxmmvecqword4.h"
#endif  /* uX_XMM_VECQWORD4_H */

#ifndef uX_XMM_VECQWORD3_H
#include "uXxmmvecqword3.h"
#endif  /* uX_XMM_VECQWORD3_H */

#ifndef uX_XMM_VECQWORD1_H
#include "uXxmmvecqword1.h"
#endif  /* uX_XMM_VECQWORD1_H */

#ifndef uX_XMM_VECUQWORD2_H
#include "uXxmmvecuqword2.h"
#endif  /* uX_XMM_VECUQWORD2_H */

#ifndef uX_XMM_VECDWORD4_H
#include "uXxmmvecdword4.h"
#endif  /* uX_XMM_VECDWORD4_H */

#ifndef uX_XMM_VECUDWORD4_H
#include "uXxmmvecudword4.h"
#endif  /* uX_XMM_VECUDWORD4_H */

#ifndef uX_XMM_VECDWORD2_H
#include "uXxmmvecdword2.h"
#endif  /* uX_XMM_VECDWORD2_H */

/**
 * \defgroup uX_XMM_VECQWORD2_CLASS 2 64bit integer SSE SIMD Vector Class
 * \ingroup uX_XMM_VECQWORD2
 * To use these class include the header file \p uXxmmvecqword2.h in your program
 */

namespace_uX
namespace_XMM
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
/**
 * \ingroup uX_XMM_VECQWORD2_CLASS
 * \class vecqword2
 * \brief SSE SIMD class with the size of 2 64bit integer element
 * \details The \p vecqword2 class is an 2 element wide 64bit integer element where
 *	it provides interoperability between %vecdouble2 and steel return different integer type
 */
typedef class vecqword2
{
public:
	vecqword2()uX_default;
	~vecqword2()uX_default;
	
	/**
	 * \fn uX::xmm::vecqword2::vecqword2(vecqword2 const& InVecxmmi)
	 * \brief Default constructor initialization from vecqword2 type
	 * \details Default constructor copies /p vecqword2
	 * \param[in] InVecxmmi - vecqword2 Read only
	 */
	uX_constexpr vecqword2(vecqword2 const& InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi._m128_xmmi) {}

	/**
	 * \fn uX::xmm::vecqword2::vecqword2(vecqword2&& InVecxmmi)
	 * \brief Default constructor initialization from vecqword2 type
	 * \details Default constructor copies /p vecqword2
	 * \param[in] InVecxmmi - vecqword2 Read only
	 */
	uX_constexpr vecqword2(vecqword2&& InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi._m128_xmmi) {}

	/**
	 * \fn uX::xmm::vecqword2::vecqword2(__m128i const Inxmmi)
	 * \brief Constructor initialization from __m128i type
	 * \details Constructor copies _x _y elements from /p __m128i
	 * \param[in] Inxmmi - __m128i Read only
	 */
	uX_constexpr vecqword2(__m128i const Inxmmi) uX_noexcept : _m128_xmmi(Inxmmi) {}

	/**
	 * \fn uX::xmm::vecqword2::vecqword2(vecqword4 const& InVecxmmi)
	 * \brief Constructor initialization from vecqword4 type
	 * \details Constructor copies _x _y elements from /p vecqword4
	 * \param[in] InVecxmmi - vecqword4 Read only
	 */
	uX_constexpr vecqword2(vecqword4 const InHxmmi_a) uX_noexcept : _m128_xmmi(InHxmmi_a.get_xmmi_0()) {}

	/**
	 * \fn uX::xmm::vecqword2::vecqword2(vecqword3 const InVecxmmi)
	 * \brief Constructor initialization from vecqword3 type
	 * \details Constructor copies _x _y elements from /p vecqword3
	 * \param[in] InVecxmmi - vecqword3 Read only
	 */
	uX_constexpr vecqword2(vecqword3 const InHxmmi_a) uX_noexcept : _m128_xmmi(InHxmmi_a.get_xmmi_0()) {}

	/**
	 * \fn uX::xmm::vecqword2::vecqword2(vecqword1 const InVecxmmi)
	 * \brief Constructor initialization from vecqword1 type
	 * \details Constructor copies _x element from /p vecqword1 and maintains _y element from /p vecqword2
	 * \param[in] InVecxmmi - vecqword1 Read only
	 */
	uX_constexpr vecqword2(vecqword1 const Inxmmi_a) uX_noexcept : _m128_xmmi(_uX_mm_select_si128(_uX_mm_const_i64_select10_si128(), Inxmmi_a, _m128_xmmi)) {}
	
	/**
	 * \fn uX::xmm::vecqword2::vecqword2(vecqword1 const InVecxmmi)
	 * \brief Constructor initialization from 2 vecqword1 types
	 * \details Constructor copies 2 _x elements from 2 /p vecqword1
	 * \param[in] InVecxmmi_a - vecqword1 Read only
	 * \param[in] InVecxmmi_b - vecqword1 Read only
	 */
	uX_constexpr vecqword2(vecqword1 const InVecxmmi_a, vecqword1 const InVecxmmi_b) uX_noexcept : _m128_xmmi(_uX_mm_unpacklo_epi64(InVecxmmi_a, InVecxmmi_b)) {}

	/**
	 * \fn uX::xmm::vecqword2::vecqword2(vecuqword2 const InVecxmmi)
	 * \brief Constructor initialization from vecuqword2 type
	 * \details Constructor copies _x _y elements from /p vecuqword2
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 */
	uX_constexpr vecqword2(vecuqword2 const Inxmmi_a) uX_noexcept : _m128_xmmi(Inxmmi_a) {}

	/**
	 * \fn uX::xmm::vecqword2::vecqword2(vecdouble2 const InVecxmmd)
	 * \brief Constructor initialization from type vecdouble2
	 * \details Constructor copies double _x _y elements from /p vecdouble2
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 * \warning Only cast's the value, no conversion is made
	 */
	uX_constexpr vecqword2(vecdouble2 const Inxmmd_a) uX_noexcept : _m128_xmmi(_uX_mm_castpd_si128(Inxmmd_a)) {}

	/**
	 * \fn uX::xmm::vecqword2::vecqword2(vecfloat4 const InVecxmm)
	 * \brief Constructor initialization from vecfloat4 type
	 * \details Constructor copies float _x _y _z _w elements from /p vecfloat4 to _x _y int64_t elements
	 * \param[in] InVecxmm - vecfloat4 Read only
	 * \warning Only cast's the value, no conversion is made
	 */
	uX_constexpr vecqword2(vecfloat4 const Inxmm_a) uX_noexcept : _m128_xmmi(_uX_mm_castps_si128(Inxmm_a)) {}
	
	/**
	 * \fn uX::xmm::vecqword2::vecqword2(vecdword4 const InVecxmmi)
	 * \brief Constructor initialization from vecdword4 type
	 * \details Constructor copies int32 _x _y _z _w elements from /p vecdword4 to _x _y element
	 * \param[in] InVecxmmi - vecdword4 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x _y int64_t elements
	 */
	uX_constexpr vecqword2(vecdword4 const InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi) {}
	
	/**
	 * \fn uX::xmm::vecqword2::vecqword2(vecudword4 const InVecxmmi)
	 * \brief Constructor initialization from vecudword4 type
	 * \details Constructor copies uint32 _x _y _z _w elements from /p vecudword4 to _x _y element
	 * \param[in] InVecxmmi - vecudword4 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x _y int64_t elements
	 */
	uX_constexpr vecqword2(vecudword4 const InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi) {}

	/**
	 * \fn uX::xmm::vecqword2::vecqword2(vecdword2 const InVecxmmi)
	 * \brief Constructor initialization from vecdword2 type
	 * \details Constructor converts int32_t _x _y elements from /p vecdword2 and sign extend to int64_t _x _y elements
	 * \param[in] InVecxmmi - vecdword2 Read only
	 * \warning Converts the value from int32_t to int64_t with sign extend
	 * \Note Sets the _x _y int64_t elements
	 */
	uX_constexpr vecqword2(vecdword2 const InVecxmmi) uX_noexcept : _m128_xmmi(_uX_mm_cvtepi32_epi64(InVecxmmi)) {}
	
	/**
	 * \fn uX::xmm::vecqword2::vecqword2(int64_t const Inint)
	 * \brief Constructor initialization from int64_t type
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inint - int64_t Read only
	 * \warning Broadcast the same value into all elements
	 */
	uX_explicit uX_constexpr vecqword2(int64_t const Inint) uX_noexcept : _m128_xmmi(_uX_mm_set1_epi64x(Inint)) {}
	
	/**
	 * \fn uX::xmm::vecqword2::vecqword2(int64_t const Inint_X, int64_t const Inint_Y)
	 * \brief Constructor initialization from 2 int64_t types
	 * \details Constructor copies 2 int64_t to _x _y elements
	 * \param[in] Inint_X - int64_t Read only
	 * \param[in] Inint_Y - int64_t Read only
	 */
	uX_constexpr vecqword2(int64_t const Inint_X, int64_t const Inint_Y) uX_noexcept : _m128_xmmi(_uX_mm_setr_epi64x(Inint_X, Inint_Y)) {}
	
	/**
	 * \fn uX::xmm::vecqword2::vecqword2(bool_t const Inbool)
	 * \brief Constructor initialization from type bool_t
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inbool - bool_t Read only
	 */
	uX_explicit uX_constexpr vecqword2(bool_t const Inbool) uX_noexcept : _m128_xmmi(_uX_mm_set1_epi64x(Inbool.to_true_int64())) {}

	/**
	 * \fn uX::xmm::vecqword2::vecqword2(bool_t const Inbool_X, bool_t const Inbool_Y)
	 * \brief Constructor initialization from 2 bool_t types
	 * \details Constructor initialization from 2 bool_t types
	 * \param[in] Inbool_X - bool_t Read only
	 * \param[in] Inbool_Y - bool_t Read only
	 */
	uX_constexpr vecqword2(bool_t const Inbool_X, bool_t const Inbool_Y) uX_noexcept : _m128_xmmi(_uX_mm_setr_epi64x(Inbool_X.to_true_int64(), Inbool_Y.to_true_int64())) {}

	/**
	 * \fn uX::xmm::vecqword2::vecqword2(bool const Inbool)
	 * \brief Constructor initialization from type bool
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inbool - bool Read only
	 */
	uX_explicit uX_constexpr vecqword2(bool const Inbool) uX_noexcept : _m128_xmmi(vecqword2(bool_t(Inbool))) {}

	/**
	 * \fn uX::xmm::vecqword2::vecqword2(bool const Inbool_X, bool const Inbool_Y)
	 * \brief Constructor initialization from 2 bool types
	 * \details Constructor initialization from 2 bool types
	 * \param[in] Inbool_X - bool Read only
	 * \param[in] Inbool_Y - bool Read only
	 */
	uX_constexpr vecqword2(bool const Inbool_X, bool const Inbool_Y) uX_noexcept : _m128_xmmi(vecqword2(bool_t(Inbool_X), bool_t(Inbool_Y))) {}
	
	/**
	 * \fn uX::xmm::vecqword2::vecqword2(int64_t const* const Inpint64)
	 * \brief Constructor initialization from int64_t pointer type
	 * \details Constructor initialization from int64_t pointer type with size of 2 int64_t types
	 * \param[in] Inpint64 - int64_t* Read only
	 * \Note The int64_t pointer is expected to be unaligned
	 */
	uX_explicit uX_constexpr vecqword2(uX_InReads(2) const int64_t* Inpint64) uX_noexcept : _m128_xmmi(_uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64))) {}
	
	/**
	 * \brief __m128i type cast operator
	 * \details To convert to __m128i
	 * \returns __m128i
	 */
	uX_constexpr operator __m128i(void) const uX_noexcept
	{
		return _m128_xmmi;
	}
	
	/**
	 * \brief vecqword2 default assignment operator
	 * \details To convert from vecqword2 type
	 * \param[in] InVecxmmi - vecqword2 Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(vecqword2 const& InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecqword2 default assignment operator
	 * \details To convert from vecqword2 type
	 * \param[in] InVecxmmi - vecqword2 Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(vecqword2&& InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief __m128i assignment operator
	 * \details To convert from __m128i type
	 * \param[in] Inxmmi - __m128i Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(__m128i const Inxmmi) uX_noexcept
	{
		_m128_xmmi = Inxmmi;
		return *this;
	}

	/**
	 * \brief vecqword4 assignment operator
	 * \details To convert from vecqword4 type
	 * \param[in] InVecxmmi - vecqword4 Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(vecqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi.get_xmmi_0();
		return *this;
	}

	/**
	 * \brief vecqword3 assignment operator
	 * \details To convert from vecqword3 type
	 * \param[in] InVecxmmi - vecqword3 Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(vecqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi.get_xmmi_0();
		return *this;
	}

	/**
	 * \brief vecqword1 assignment operator
	 * \details To convert from vecqword1 type
	 * \param[in] InVecxmmi - vecqword1 Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(vecqword1 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = _uX_mm_select_si128(_uX_mm_const_i64_select10_si128(), InVecxmmi, _m128_xmmi);
		return *this;
	}

	/**
	 * \brief vecuqword2 assignment operator
	 * \details To convert from vecqword1 type
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecdouble2 assignment operator
	 * \details To convert from vecdouble2 type
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmi = _uX_mm_castpd_si128(InVecxmmd);
		return *this;
	}

	/**
	 * \brief vecfloat4 assignment operator
	 * \details To convert from vecfloat4 type
	 * \param[in] InVecxmm - vecfloat4 Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(vecfloat4 const InVecxmm) uX_noexcept
	{
		_m128_xmmi = _uX_mm_castps_si128(InVecxmm);
		return *this;
	}

	/**
	 * \brief vecdword4 assignment operator
	 * \details To convert from vecdword4 type
	 * \param[in] InVecxmmi - vecdword4 Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(vecdword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecudword4 assignment operator
	 * \details To convert from vecudword4 type
	 * \param[in] InVecxmmi - vecudword4 Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(vecudword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecdword2 assignment operator
	 * \details To converts int32_t _x _y elements from /p vecdword2 and sign extend to int64_t _x _y elements
	 * \param[in] InVecxmmi - vecdword2 Read only
	 * \warning Converts the value from int32_t to int64_t with sign extend
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(vecdword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = _uX_mm_cvtepi32_epi64(InVecxmmi);
		return *this;
	}

	/**
	 * \brief int64_t assignment operator
	 * \details To broadcast the same int64_t value into all elements
	 * \param[in] Inint - int64_t Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(int64_t const Inint) uX_noexcept
	{
		_m128_xmmi = _uX_mm_set1_epi64x(Inint);
		return *this;
	}

	/**
	 * \brief bool_t assignment operator
	 * \details To broadcast the same bool_t value into all elements
	 * \param[in] Inbool - bool_t Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(bool_t const Inbool) uX_noexcept
	{
		_m128_xmmi = _uX_mm_set1_epi64x(Inbool.to_true_int64());
		return *this;
	}

	/**
	 * \brief bool assignment operator
	 * \details To broadcast the same bool value into all elements
	 * \param[in] Inbool - bool Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI operator=(bool const Inbool) uX_noexcept
	{
		_m128_xmmi = vecqword2(bool_t(Inbool));
		return *this;
	}

	/**
	 * \brief Get vector
	 * \details Gets __m128i vector
	 * \returns __m128i
	 */
	uX_constexpr __m128i uX_ABI get(void) const uX_noexcept
	{
		return _m128_xmmi;
	}

	/**
	 * \brief Get _x
	 * \details Gets _x element from vector
	 * \returns int64_t
	 */
	uX_constexpr int64_t uX_ABI get_x(void) const uX_noexcept
	{
		return _qw_x;
	}

	/**
	 * \brief Get _x _y vector
	 * \details Gets vecqword2 _x _y vector
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2 uX_ABI get_xy(void) const uX_noexcept
	{
		return _m128_xmmi;
	}

	/**
	 * \brief Get _y
	 * \details Gets _y element from vector
	 * \returns int64_t
	 */
	uX_constexpr int64_t uX_ABI get_y(void) const uX_noexcept
	{
		return _qw_y;
	}

	/**
	 * \brief Get _y _x vector
	 * \details Gets vecqword2 _y _x vector
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2 uX_ABI get_yx(void) const uX_noexcept
	{
		return vecqword2(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi, 1, 0));
	}

	/**
	 * \brief Get reference to vector
	 * \details Gets reference to __m128i vector
	 * \returns __m128i
	 */
	uX_constexpr __m128i& uX_ABI ref(void) uX_noexcept
	{
		return _m128_xmmi;
	}

	/**
	 * \brief Get reference to _x
	 * \details Gets reference to _x element from vector
	 * \returns int64_t
	 */
	uX_constexpr int64_t& uX_ABI ref_x(void) uX_noexcept
	{
		return _qw_x;
	}

	/**
	 * \brief Get reference to _x _y vector
	 * \details Gets reference to vecqword2 _x _y vector
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI ref_xy(void) uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get reference to _y
	 * \details Gets reference to _y element from vector
	 * \returns int64_t
	 */
	uX_constexpr int64_t& uX_ABI ref_y(void) uX_noexcept
	{
		return _qw_y;
	}

	/**
	 * \brief Get reference to _y _x vector
	 * \details Gets reference to vecqword2 _y _x vector
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI ref_yx(void) uX_noexcept
	{
		*this = get_yx();
		return *this;
	}

	/**
	 * \brief Set the vector
	 * \details Sets the vector elements
	 * \param[in] Inxmmi - __m128i Read only
	 */
	uX_constexpr void uX_ABI set(__m128i const Inxmmi) uX_noexcept
	{
		_m128_xmmi = Inxmmi;
	}

	/**
	 * \brief Set the vector _x
	 * \details Sets the vector _x element
	 * \param[in] Inint - int64_t Read only
	 */
	uX_constexpr void uX_ABI set_x(int64_t const Inint) uX_noexcept
	{
		_m128_xmmi = _uX_MM_SETEPI64X_SI128_IM(_m128_xmmi, Inint, 0);
	}

	/**
	 * \brief Set the vector _x _y
	 * \details Sets the vector _x _y elements
	 * \param[in] InVecxmmi - vecqword2 Read only
	 */
	uX_constexpr void uX_ABI set_xy(vecqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
	}

	/**
	 * \brief Set the vector _y
	 * \details Sets the vector _y element
	 * \param[in] Inint - int64_t Read only
	 */
	uX_constexpr void uX_ABI set_y(int64_t const Inint) uX_noexcept
	{
		_m128_xmmi = _uX_MM_SETEPI64X_SI128_IM(_m128_xmmi, Inint, 1);
	}

	/**
	 * \brief Set the vector _y _x
	 * \details Sets the vector _y _x elements
	 * \param[in] InVecxmmi - vecqword2 Read only
	 */
	uX_constexpr void uX_ABI set_yx(vecqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi, 1, 0);
	}

	/**
	 * \brief Generates a constant vector of 2 int64_t integer at compile time
	 * \details Generates a constant vector at compile time stored in memory
	 * \param[in] i0 - int64_t
	 * \param[in] i1 - int64_t
	 * \returns vecqword2
	 * \retval the constant \p i0 \p i1 stored in the _x _y elements
	 */
	template <int64_t i0, int64_t i1>
	uX_constexpr vecqword2 const uX_ABI constant(void) const uX_noexcept
	{
		return vecqword2(i0, i1);
	}

	/* Bitwise Operators */

	/**
	 * \brief Bitwise function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a andnot \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI andnot(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_andnot_epi64(InVecxmmi_b, InVecxmmi_a));
	}

	/**
	 * \brief Bitwise operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a and \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator&(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_and_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Bitwise operator OR
	 * \details Performs the compute or from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a or \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator|(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_or_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Bitwise operator XOR
	 * \details Performs the compute xor from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a xor \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator^(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_xor_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Bitwise operator NOT
	 * \details Performs the compute not from the parameter
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a not
	 */
	friend uX_constexpr vecqword2 uX_ABI operator~(vecqword2 const InVecxmmi_a) uX_noexcept
	{
		return vecqword2(_uX_mm_not_epi64(InVecxmmi_a));
	}

	/* Logical Operators */

	/**
	 * \brief Logical function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a andnot \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_ABI bandnot(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_iandnot_epi64(InVecxmmi_b, InVecxmmi_a);
	}

	/**
	 * \brief Logical operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a && \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_ABI operator&&(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_iand_epi64(InVecxmmi_a, InVecxmmi_b);
	}

	/**
	 * \brief Logical operator OR
	 * \details Performs the compute OR from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a || \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_ABI operator||(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_ior_epi64(InVecxmmi_a, InVecxmmi_b);
	}

	/**
	 * \brief Logical operator NOT
	 * \details Performs the compute not from the 1 parameter
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \returns bool_t
	 * \retval the computed boolean not \p InVecxmmi_a
	 */
	friend uX_constexpr bool_t uX_ABI operator!(vecqword2 const InVecxmmi_a) uX_noexcept
	{
		return _uX_mm_inot_epi64(InVecxmmi_a);
	}

	/**
	 * \brief Logical operator assignment AND
	 * \details Performs the compute and from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a &= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2& uX_ABI operator&=(vecqword2& InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword2(_uX_mm_and_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Logical operator assignment OR
	 * \details Performs the compute or from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a |= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2& uX_ABI operator|=(vecqword2& InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword2(_uX_mm_or_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Logical operator assignment XOR
	 * \details Performs the compute xor from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a ^= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2& uX_ABI operator^=(vecqword2& InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword2(_uX_mm_xor_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/* Arithmetic Operators */

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] Inint_b - int64_t broadcast same value to all elements
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a + \p Inint_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator+(vecqword2 const InVecxmmi_a, int64_t Inint_b) uX_noexcept
	{
		return vecqword2(_uX_mm_add_epi64(InVecxmmi_a, _uX_mm_set1_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] Inint_a - int64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p Inint_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator+(int64_t Inint_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_add_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator+(vecqword2 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_add_epi64(InVecxmmi_a, Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator+(__m128i const Inxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_add_epi64(Inxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator+(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_add_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] Inint_b - int64_t broadcast same value to all elements
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a - \p Inint_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator-(vecqword2 const InVecxmmi_a, int64_t Inint_b) uX_noexcept
	{
		return vecqword2(_uX_mm_sub_epi64(InVecxmmi_a, _uX_mm_set1_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] Inint_a - int64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p Inint_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator-(int64_t Inint_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_sub_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b));
	}
	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator-(vecqword2 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_sub_epi64(InVecxmmi_a, Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator-(__m128i const Inxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_sub_epi64(Inxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator-(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_sub_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] Inint_b - int64_t broadcast same value to all elements
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a * \p Inint_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator*(vecqword2 const InVecxmmi_a, int64_t Inint_b) uX_noexcept
	{
		return vecqword2(_uX_mm_mule_epi64(InVecxmmi_a, _uX_mm_set1_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] Inint_a - int64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p Inint_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator*(int64_t Inint_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_mule_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator*(vecqword2 const InVecxmmi_a, __m128i const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator*(__m128i const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator*(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] Inint_a_b - int64_t broadcast same value to all elements
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a / \p Inint_a_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator/(vecqword2 const InVecxmmi_a, int64_t Inint_b) uX_noexcept
	{
		return vecqword2(_uX_mm_div_epi64(InVecxmmi_a, _uX_mm_set1_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] Inint_a - int64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p Inint_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator/(int64_t Inint_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_div_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator/(vecqword2 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_div_epi64(InVecxmmi_a, Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator/(__m128i const Inxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_div_epi64(Inxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator/(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_div_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator assignment addition
	 * \details Performs the compute addition from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a += \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2& uX_ABI operator+=(vecqword2& InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword2(_uX_mm_add_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment subtraction
	 * \details Performs the compute subtraction from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a -= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2& uX_ABI operator-=(vecqword2& InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword2(_uX_mm_sub_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment multiplication
	 * \details Performs the compute multiplication from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a *= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2& uX_ABI operator*=(vecqword2& InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword2(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment division
	 * \details Performs the compute division from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a /= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2& uX_ABI operator/=(vecqword2& InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword2(_uX_mm_div_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/* Unary Operators */

	/**
	 * \brief Unary prefix increment operator
	 * \details Performs the compute prefix increment
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed prefix increment \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword2& uX_ABI operator++(vecqword2& InVecxmmi_a) uX_noexcept
	{
		InVecxmmi_a = InVecxmmi_a + _uX_mm_const_i64_1_si128();
		return InVecxmmi_a;
	}

	/**
	 * \brief Unary prefix decrement operator
	 * \details Performs the compute prefix decrement
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed prefix decrement \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword2& uX_ABI operator--(vecqword2& InVecxmmi_a) uX_noexcept
	{
		InVecxmmi_a = InVecxmmi_a - _uX_mm_const_i64_1_si128();
		return InVecxmmi_a;
	}

	/**
	 * \brief Unary postfix increment operator
	 * \details Performs the compute postfix increment
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed postfix increment \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword2 uX_ABI operator++(vecqword2& InVecxmmi_a, int) uX_noexcept
	{
		vecqword2 tmpxmm_a0 = InVecxmmi_a;
		InVecxmmi_a = InVecxmmi_a + _uX_mm_const_i64_1_si128();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary postfix decrement operator
	 * \details Performs the compute postfix decrement
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed postfix decrement \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword2 uX_ABI operator--(vecqword2& InVecxmmi_a, int) uX_noexcept
	{
		vecqword2 tmpxmm_a0 = InVecxmmi_a;
		InVecxmmi_a = InVecxmmi_a - _uX_mm_const_i64_1_si128();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary minus operator
	 * \details Performs the compute minus change sign bit, even for 0, INF and NAN
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed minus \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword2 uX_ABI operator-(vecqword2 const InVecxmmi_a) uX_noexcept
	{
		return vecqword2(_uX_mm_negate_sepi64(InVecxmmi_a));
	}

	/* Comparison Operators */

	/**
	 * \brief Comparison operator equal
	 * \details Performs the compute equality from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a == \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator==(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_cmpeq_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator less than
	 * \details Performs the compute less than from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a < \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator<(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_cmplt_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator less than or equal
	 * \details Performs the compute less than or equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a <= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator<=(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_cmple_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator greater than
	 * \details Performs the compute greater than from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a > \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator>(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_cmpgt_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator greater than or equal
	 * \details Performs the compute greater than or equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a >= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator>=(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_cmpge_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator not equal
	 * \details Performs the compute not equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a != \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator!=(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_cmpneq_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/* Shift Operators	*/

	/**
	 * \brief Left shifting operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a << \p InIntCount
	 */
	friend uX_constexpr vecqword2 uX_ABI operator<<(vecqword2 const InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		return vecqword2(_uX_mm_slli_epi64(InVecxmmi_a, InIntCount));
	}

	/**
	 * \brief Left shifting operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a << \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator<<(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_Count) uX_noexcept
	{
		return vecqword2(_uX_mm_sll_epi64(InVecxmmi_a, InVecxmmi_Count));
	}

	/**
	 * \brief Right shifting operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a >> \p InIntCount
	 */
	friend uX_constexpr vecqword2 uX_ABI operator>>(vecqword2 const InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		return vecqword2(_uX_mm_srai_epi64(InVecxmmi_a, InIntCount));
	}

	/**
	 * \brief Right shifting operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a >> \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI operator>>(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_Count) uX_noexcept
	{
		return vecqword2(_uX_mm_sra_epi64(InVecxmmi_a, InVecxmmi_Count));
	}

	/**
	 * \brief Left shifting assignment operator
	 * \details Performs the left shifting from the 2 parameters and assigns to
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a <<= \p InIntCount
	 */
	friend uX_constexpr vecqword2& uX_ABI operator<<=(vecqword2& InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		InVecxmmi_a = vecqword2(_uX_mm_slli_epi64(InVecxmmi_a, InIntCount));
		return InVecxmmi_a;
	}

	/**
	 * \brief Left shifting assignment operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a <<= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2& uX_ABI operator<<=(vecqword2& InVecxmmi_a, vecqword2 const InVecxmmi_Count) uX_noexcept
	{
		InVecxmmi_a = vecqword2(_uX_mm_sll_epi64(InVecxmmi_a, InVecxmmi_Count));
		return InVecxmmi_a;
	}

	/**
	 * \brief Right shifting assignment operator
	 * \details Performs the right shifting from the 2 parameters and assigns to
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a >>= \p InIntCount
	 */
	friend uX_constexpr vecqword2& uX_ABI operator>>=(vecqword2& InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		InVecxmmi_a = vecqword2(_uX_mm_srai_epi64(InVecxmmi_a, InIntCount));
		return InVecxmmi_a;
	}

	/**
	 * \brief Right shifting assignment operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a >>= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2& uX_ABI operator>>=(vecqword2& InVecxmmi_a, vecqword2 const InVecxmmi_Count) uX_noexcept
	{
		InVecxmmi_a = vecqword2(_uX_mm_sra_epi64(InVecxmmi_a, InVecxmmi_Count));
		return InVecxmmi_a;
	}

	/**
	 * \brief Index operator
	 * \details Performs element access only, no modification to elements
	 * \param[in] Nindex - count_t
	 * \returns int64_t
	 */
	uX_constexpr int64_t const& uX_ABI operator[](count_t Nindex) const uX_noexcept
	{
		return extract(Nindex);
	}

	/**
	 * \brief Index operator
	 * \details Performs element access and modification to elements
	 * \param[in] Nindex - count_t
	 * \returns int64_t
	 */
	uX_constexpr int64_t& uX_ABI operator[](count_t Nindex) uX_noexcept
	{
		qwrettype = extract(Nindex);
		return qwrettype;
	}

	/**
	 * \brief Load unaligned
	 * \details load from type int64_t* unaligned
	 * \param[in] Inpint64 - int64_t* Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI load(uX_InReads(2) int64_t const* const Inpint64) uX_noexcept
	{
		_m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<__m128i const* const>(Inpint64));
		return *this;
	}

	/**
	 * \brief Load aligned
	 * \details load from type int64_t* aligned
	 * \param[in] Inpint64 - int64_t* Read only
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI load_a(uX_InReads(2) int64_t const* const Inpint64) uX_noexcept
	{
		_m128_xmmi = _uX_mm_load_si128(reinterpret_cast<__m128i const* const>(Inpint64));
		return *this;
	}

	/**
	 * \brief Store unaligned
	 * \details store to type int64_t* unaligned
	 * \param[out] Outpint64 - int64_t* Write only
	 */
	uX_constexpr void uX_ABI store(uX_OutWrites(2) int64_t* Outpint64) const uX_noexcept
	{
		_uX_mm_storeu_si128(reinterpret_cast<__m128i*>(Outpint64), _m128_xmmi);
	}

	/**
	 * \brief Store aligned
	 * \details store to type int64_t* aligned
	 * \param[out] Outpint64 - int64_t* Write only
	 * \warning Outpint64 must be aligned by 16
	 */
	uX_constexpr void uX_ABI store_a(uX_OutWrites(2) int64_t* Outpint64) const uX_noexcept
	{
		_uX_mm_store_si128(reinterpret_cast<__m128i*>(Outpint64), _m128_xmmi);
	}

	/**
	 * \brief Insert function
	 * \details Performs the insert element from mask index
	 * \param[in] Nindex - int64_t the value
	 * \param[in] Nindex - count_t the index element to set
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2 const uX_ABI insert(int64_t value, count_t Nindex) uX_noexcept
	{
		if(Nindex > 1) return *this;
		_m128_xmmi = _uX_mm_setelts_epi64x(_m128_xmmi, value, Nindex);
		return *this;
	}

	/**
	 * \brief Extract function
	 * \details Performs the extract element from mask index
	 * \param[in] Nindex - count_t the index element to get
	 * \returns int64_t
	 */
	uX_constexpr int64_t uX_ABI extract(count_t Nindex) const uX_noexcept
	{
		if(Nindex > 1) return 0;
		return _uX_mm_cvtelts_epi64x(_m128_xmmi, Nindex);
	}

	/**
	 * \brief Set all elements to zero
	 * \details Sets all elements to zero
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI zero(void) uX_noexcept
	{
		_m128_xmmi = _uX_mm_setzero_si128();
		return *this;
	}

	/**
	 * \brief Cut off vector to n elements
	 * \details Performs the Cut off vector to n elements
	 * \param[in] Nindex - count_t the N element's to cut
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI cutoff(count_t Nindex) uX_noexcept
	{
		switch(Nindex)
		{
			case 1:
				_m128_xmmi = _uX_mm_unpacklo_epi64(_m128_xmmi, _uX_mm_const_i64_false_si128());
			case 0:
				_m128_xmmi = _uX_mm_const_i64_false_si128();
				break;
			default:
				break;
		}
		return *this;
	}

	/**
	 * \brief Select between two operands
	 * \details Performs the selection between two operands
		The first vector is boolean vector mask that chooses between the elements of the second and the third vector
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return s[i] ? a[i] : b[i];
	 * \param[in] InVecxmmi_f - vecqword2 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecqword2 Read only the a vector
	 * \param[in] InVecxmmi_b - vecqword2 Read only the b vector
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_b : \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword2 uX_ABI select(vecqword2 const InVecxmmi_f, vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_select_si128(InVecxmmi_f, InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Conditional add
	 * \details Performs the conditional add in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] + b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecqword2 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecqword2 Read only the a vector
	 * \param[in] InVecxmmi_b - vecqword2 Read only the b vector
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a + \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword2 uX_ABI if_add(vecqword2 const InVecxmmi_f, vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return InVecxmmi_a + (InVecxmmi_f & InVecxmmi_b);
	}

	/**
	 * \brief Conditional subtract
	 * \details Performs the conditional subtract in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] - b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecqword2 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecqword2 Read only the a vector
	 * \param[in] InVecxmmi_b - vecqword2 Read only the b vector
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a - \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword2 uX_ABI if_sub(vecqword2 const InVecxmmi_f, vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return InVecxmmi_a - (InVecxmmi_f & InVecxmmi_b);
	}

	/**
	 * \brief Conditional multiply
	 * \details Performs the conditional multiply in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] * b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecqword2 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecqword2 Read only the a vector
	 * \param[in] InVecxmmi_b - vecqword2 Read only the b vector
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a * \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword2 uX_ABI if_mul(vecqword2 const InVecxmmi_f, vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return select(InVecxmmi_f, InVecxmmi_a * InVecxmmi_b, InVecxmmi_a);
	}

	/**
	 * \brief Conditional division
	 * \details Performs the conditional divide in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] / b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecqword2 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecqword2 Read only the a vector
	 * \param[in] InVecxmmi_b - vecqword2 Read only the b vector
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a / \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword2 uX_ABI if_div(vecqword2 const InVecxmmi_f, vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return select(InVecxmmi_f, InVecxmmi_a / InVecxmmi_b, InVecxmmi_a);
	}

	/**
	 * \brief Max
	 * \details Computes the max a > b ? a : b
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed max \p InVecxmmi_a > \p InVecxmmi_b ? \p InVecxmmi_a: \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI max(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_max_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Min
	 * \details Computes the min a < b ? a : b
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed min \p InVecxmmi_a < \p InVecxmmi_b ? \p InVecxmmi_a: \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI min(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_min_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Abs
	 * \details Computes the absolute value a >= 0 ? a : -a
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed abs \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword2 uX_ABI abs(vecqword2 const InVecxmmi_a) uX_noexcept
	{
		return vecqword2(_uX_mm_abs_epi64(InVecxmmi_a));
	}

	/**
	 * \brief Abs saturate
	 * \details Computes the absolute value saturate if overflow a >= 0 ? a : -a
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed abs \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword2 uX_ABI abs_sat(vecqword2 const InVecxmmi_a) uX_noexcept
	{
		return vecqword2(_uX_mm_abssat_epi64(InVecxmmi_a));
	}

	/**
	 * \brief Square
	 * \details Computes the a * a
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword2 uX_ABI square(vecqword2 const InVecxmmi_a) uX_noexcept
	{
		return vecqword2(_uX_mm_square_epi64(InVecxmmi_a));
	}

	/**
	 * \brief Scale
	 * \details Computes the a * s
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] Inint_s - int64_t Read only
	 * \returns vecqword2
	 * \retval the computed \p InVecxmmi_a * \p Inint_s
	 */
	friend uX_constexpr vecqword2 uX_ABI scale(vecqword2 const InVecxmmi_a, int64_t Inint_s) uX_noexcept
	{
		return vecqword2(_uX_mm_scale_epi64(InVecxmmi_a, Inint_s));
	}

	/**
	 * \brief Rotate Left
	 * \details Computes the a rotate s
		Positive for left rotation
		Negative for right rotation
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] Inint_s - count_t Read only
	 * \returns vecqword2
	 * \retval the computed rotation \p InVecxmmi_a rotate \p Inint_s
	 */
	friend uX_constexpr vecqword2 uX_ABI rotate(vecqword2 const InVecxmmi_a, count_t Inint_s) uX_noexcept
	{
		return vecqword2(_uX_mm_roti_epi64(InVecxmmi_a, Inint_s));
	}

	/**
	 * \brief Max
	 * \details Computes the a rotate b
		Positive for left rotation
		Negative for right rotation
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 * \returns vecqword2
	 * \retval the computed rotation \p InVecxmmi_a rotate \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword2 uX_ABI rotate(vecqword2 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecqword2(_uX_mm_rot_epi64(InVecxmmi_a, InVecxmmi_b));
	}

protected:

private:
	union
	{
		__m128i				_m128_xmmi;
		struct
		{
			int64_t			_qw_x, _qw_y;
		};
		struct
		{
			int32_t			_dw0_0, _dw0_1,
							_dw1_0, _dw1_1;
		};
		struct
		{
			int16_t			_w0_0, _w0_1, _w0_2, _w0_3,
							_w1_0, _w1_1, _w1_2, _w1_3;
		};
		struct
		{
			int8_t			_b0_0, _b0_1, _b0_2, _b0_3, _b0_4, _b0_5, _b0_6, _b0_7,
							_b1_0, _b1_1, _b1_2, _b1_3, _b1_4, _b1_5, _b1_6, _b1_7;
		};
		int64_t				_m128_qw[2];
		int32_t				_m128_dw[4];
		int16_t				_m128_w[8];
		int8_t				_m128_b[16];
	};
	int64_t				qwrettype;

public:
	/**
	 * \brief vecqword2 size
	 * \details Gets the vecqword2 vector size
	 * \returns count_t
	 * \retval the vecqword2 size
	 */
	uX_constexpr count_t const uX_ABI size(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief vecqword2 length
	 * \details Gets the vecqword2 vector length
	 * \returns count_t
	 * \retval the vecqword2 length
	 */
	uX_constexpr count_t const uX_ABI length(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief xmm size
	 * \details Gets the xmm vector size
	 * \returns count_t
	 * \retval the xmm size
	 */
	uX_constexpr count_t const uX_ABI xmm_size(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief xmm elements
	 * \details Gets the quantity of xmm vector elements
	 * \returns count_t
	 * \retval the quantity of xmm elements
	 */
	uX_constexpr count_t const uX_ABI xmm_elements(void) const uX_noexcept
	{
		return 1;
	}

	/**
	 * \brief xmm int64_t elements
	 * \details Gets the quantity of xmm vector int64_t elements
	 * \returns count_t
	 * \retval the quantity of xmm int64_t elements
	 */
	uX_constexpr count_t const uX_ABI xmm_i64_elements(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief xmm int32_t elements
	 * \details Gets the quantity of xmm vector int32_t elements
	 * \returns count_t
	 * \retval the quantity of xmm int32_t elements
	 */
	uX_constexpr count_t const uX_ABI xmm_i32_elements(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief xmm int16_t elements
	 * \details Gets the quantity of xmm vector int16_t elements
	 * \returns count_t
	 * \retval the quantity of xmm int16_t elements
	 */
	uX_constexpr count_t const uX_ABI xmm_i16_elements(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief xmm int8_t elements
	 * \details Gets the quantity of xmm vector int8_t elements
	 * \returns count_t
	 * \retval the quantity of xmm int8_t elements
	 */
	uX_constexpr count_t const uX_ABI xmm_i8_elements(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief uin64_t size
	 * \details Gets the uin64_t size
	 * \returns count_t
	 * \retval the xmm uin64_t size
	 */
	uX_constexpr count_t const uX_ABI i64_size(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief uin32_t size
	 * \details Gets the uin32_t size
	 * \returns count_t
	 * \retval the xmm uin32_t size
	 */
	uX_constexpr count_t const uX_ABI i32_size(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief uin16_t size
	 * \details Gets the uin16_t size
	 * \returns count_t
	 * \retval the xmm uin16_t size
	 */
	uX_constexpr count_t const uX_ABI i16_size(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief uin8_t size
	 * \details Gets the uin8_t size
	 * \returns count_t
	 * \retval the xmm uin8_t size
	 */
	uX_constexpr count_t const uX_ABI i8_size(void) const uX_noexcept
	{
		return 1;
	}

	/**
	 * \brief int64_t elements
	 * \details Gets the quantity of int64_t elements
	 * \returns count_t
	 * \retval the quantity of int64_t elements
	 */
	uX_constexpr count_t const uX_ABI i64_elements(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief int32_t elements
	 * \details Gets the quantity of int32_t elements
	 * \returns count_t
	 * \retval the quantity of int32_t elements
	 */
	uX_constexpr count_t const uX_ABI i32_elements(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief int16_t elements
	 * \details Gets the quantity of int16_t elements
	 * \returns count_t
	 * \retval the quantity of int16_t elements
	 */
	uX_constexpr count_t const uX_ABI i16_elements(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief int8_t elements
	 * \details Gets the quantity of int8_t elements
	 * \returns count_t
	 * \retval the quantity of int8_t elements
	 */
	uX_constexpr count_t const uX_ABI i8_elements(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief int64_t ptr length
	 * \details Gets the length of int64_t elements
	 * \returns count_t
	 * \retval the length of int64_t elements
	 */
	uX_constexpr count_t const uX_ABI i64_ptr_length(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief int32_t ptr length
	 * \details Gets the length of int32_t elements
	 * \returns count_t
	 * \retval the length of int32_t elements
	 */
	uX_constexpr count_t const uX_ABI i32_ptr_length(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief int16_t ptr length
	 * \details Gets the length of int16_t elements
	 * \returns count_t
	 * \retval the length of int16_t elements
	 */
	uX_constexpr count_t const uX_ABI i16_ptr_length(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief int8_t ptr length
	 * \details Gets the length of int8_t elements
	 * \returns count_t
	 * \retval the length of int8_t elements
	 */
	uX_constexpr count_t const uX_ABI i8_ptr_length(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief int64_t ptr size
	 * \details Gets the ptr size of int64_t elements
	 * \returns count_t
	 * \retval the size of int64_t elements
	 */
	uX_constexpr count_t const uX_ABI i64_ptr_size(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief int32_t ptr size
	 * \details Gets the ptr size of int32_t elements
	 * \returns count_t
	 * \retval the size of int32_t elements
	 */
	uX_constexpr count_t const uX_ABI i32_ptr_size(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief int16_t ptr size
	 * \details Gets the ptr size of int16_t elements
	 * \returns count_t
	 * \retval the size of int16_t elements
	 */
	uX_constexpr count_t const uX_ABI i16_ptr_size(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief int8_t ptr size
	 * \details Gets the ptr size of int8_t elements
	 * \returns count_t
	 * \retval the size of int8_t elements
	 */
	uX_constexpr count_t const uX_ABI i8_ptr_size(void) const uX_noexcept
	{
		return 16;
	}

	using types = vector2types;
}vecqword2_t;
#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECQWORD2_H
