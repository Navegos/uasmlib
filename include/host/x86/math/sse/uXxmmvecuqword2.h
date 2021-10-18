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

#ifndef uX_XMM_VECUQWORD2_H
#define uX_XMM_VECUQWORD2_H 1

/**
 * \defgroup uX_XMM_VECUQWORD2 2 64bit unsigned integer SSE SIMD Vector
 * \ingroup uX_NAMESPACE_XMM
 * \file uXxmmvecuqword2.h
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
#endif  /* uX_XMM_VECFLOAT4_H */

#ifndef uX_XMM_VECUQWORD4_H
#include "uXxmmvecuqword4.h"
#endif  /* uX_XMM_VECUQWORD4_H */

#ifndef uX_XMM_VECUQWORD3_H
#include "uXxmmvecuqword3.h"
#endif  /* uX_XMM_VECUQWORD3_H */

#ifndef uX_XMM_VECUQWORD1_H
#include "uXxmmvecuqword1.h"
#endif  /* uX_XMM_VECUQWORD1_H */

#ifndef uX_XMM_VECQWORD2_H
#include "uXxmmvecqword2.h"
#endif  /* uX_XMM_VECQWORD2_H */

#ifndef uX_XMM_VECUDWORD4_H
#include "uXxmmvecudword4.h"
#endif  /* uX_XMM_VECUDWORD4_H */

#ifndef uX_XMM_VECDWORD4_H
#include "uXxmmvecdword4.h"
#endif  /* uX_XMM_VECDWORD4_H */

#ifndef uX_XMM_VECUDWORD2_H
#include "uXxmmvecudword2.h"
#endif  /* uX_XMM_VECUDWORD2_H */

/**
 * \defgroup uX_XMM_VECUQWORD2_CLASS 2 64bit unsigned integer SSE SIMD Vector Class
 * \ingroup uX_XMM_VECUQWORD2
 * To use these class include the header file \p uXxmmvecuqword2.h in your program
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

#ifdef uX_SSE2
/**
 * \ingroup uX_XMM_VECUQWORD2_CLASS
 * \class vecuqword2
 * \brief SSE SIMD class with the size of 2 64bit unsigned integer element
 * \details The \p vecuqword2 class is an 2 element wide 64bit unsigned integer element where
 *	it provides interoperability between %vecdouble2 and steel return different integer type
 */
typedef class vecuqword2
{
public:
	vecuqword2()uX_default;
	~vecuqword2()uX_default;
	
	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(vecuqword2 const& InVecxmmi)
	 * \brief Default constructor initialization from vecuqword2 type
	 * \details Default constructor copies /p vecuqword2
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 */
	uX_constexpr vecuqword2(vecuqword2 const& InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi._m128_xmmi) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(vecuqword2&& InVecxmmi)
	 * \brief Default constructor initialization from vecuqword2 type
	 * \details Default constructor copies /p vecuqword2
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 */
	uX_constexpr vecuqword2(vecuqword2&& InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi._m128_xmmi) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(__m128i const Inxmmi)
	 * \brief Constructor initialization from __m128i type
	 * \details Constructor copies _x _y elements from /p __m128i
	 * \param[in] Inxmmi - __m128i Read only
	 */
	uX_constexpr vecuqword2(__m128i const Inxmmi) uX_noexcept : _m128_xmmi(Inxmmi) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(vecuqword4 const InVecxmmi)
	 * \brief Constructor initialization from vecuqword4 type
	 * \details Constructor copies _x _y elements from /p vecuqword4
	 * \param[in] InVecxmmi - vecuqword4 Read only
	 */
	uX_constexpr vecuqword2(vecuqword4 const InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi.get_xmmi_0()) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(vecuqword3 const InVecxmmi)
	 * \brief Constructor initialization from vecuqword3 type
	 * \details Constructor copies _x _y elements from /p vecuqword3
	 * \param[in] InVecxmmi - vecuqword3 Read only
	 */
	uX_constexpr vecuqword2(vecuqword3 const InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi.get_xmmi_0()) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(vecuqword1 const InVecxmmi)
	 * \brief Constructor initialization from vecuqword1 type
	 * \details Constructor copies _x element from /p vecuqword1 and maintains _y element from /p vecuqword2
	 * \param[in] InVecxmmi - vecuqword1 Read only
	 */
	uX_constexpr vecuqword2(vecuqword1 const InVecxmmi) uX_noexcept : _m128_xmmi(_uX_mm_select_si128(_uX_mm_const_i64_select10_si128(), InVecxmmi, _m128_xmmi)) {}
	
	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(vecuqword1 const InVecxmmi)
	 * \brief Constructor initialization from 2 vecuqword1 types
	 * \details Constructor copies 2 _x elements from 2 /p vecuqword1
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 */
	uX_constexpr vecuqword2(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept : _m128_xmmi(_uX_mm_unpacklo_epi64(InVecxmmi_a, InVecxmmi_b)) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(vecqword2 const InVecxmmi)
	 * \brief Constructor initialization from vecqword2 type
	 * \details Constructor copies _x _y elements from /p vecqword2
	 * \param[in] InVecxmmi - vecqword2 Read only
	 */
	uX_constexpr vecuqword2(vecqword2 const InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(vecdouble2 const InVecxmmd)
	 * \brief Constructor initialization from type vecdouble2
	 * \details Constructor copies double _x _y elements from /p vecdouble2
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 * \warning Only cast's the value, no conversion is made
	 */
	uX_constexpr vecuqword2(vecdouble2 const InVecxmmd) uX_noexcept : _m128_xmmi(_uX_mm_castpd_si128(InVecxmmd)) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(vecfloat4 const InVecxmm)
	 * \brief Constructor initialization from vecfloat4 type
	 * \details Constructor copies float _x _y _z _w elements from /p vecfloat4 to _x _y uint64_t elements
	 * \param[in] InVecxmm - vecfloat4 Read only
	 * \warning Only cast's the value, no conversion is made
	 */
	uX_constexpr vecuqword2(vecfloat4 const InVecxmm) uX_noexcept : _m128_xmmi(_uX_mm_castps_si128(InVecxmm)) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(vecudword4 const InVecxmmi)
	 * \brief Constructor initialization from vecudword4 type
	 * \details Constructor copies uint32 _x _y _z _w elements from /p vecudword4 to _x _y element
	 * \param[in] InVecxmmi - vecudword4 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x _y uint64_t elements
	 */
	uX_constexpr vecuqword2(vecudword4 const InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi) {}
	
	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(vecdword4 const InVecxmmi)
	 * \brief Constructor initialization from vecdword4 type
	 * \details Constructor copies int32_t _x _y _z _w elements from /p vecdword4 to _x _y uint64_t elements
	 * \param[in] InVecxmmi - vecdword4 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x _y uint64_t elements
	 */
	uX_constexpr vecuqword2(vecdword4 const InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(vecudword2 const InVecxmmi)
	 * \brief Constructor initialization from vecudword2 type
	 * \details Constructor converts uint32_t _x _y elements from /p vecudword2 and zero extend to uint64_t _x _y elements
	 * \param[in] InVecxmmi - vecudword2 Read only
	 * \warning Converts the value from uint32_t to uint64_t with zero extend
	 * \Note Sets the _x _y uint64_t elements
	 */
	uX_constexpr vecuqword2(vecudword2 const InVecxmmi) uX_noexcept : _m128_xmmi(_uX_mm_cvtepu32_epi64(InVecxmmi)) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(uint64_t const Inint)
	 * \brief Constructor initialization from uint64_t type
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inint - uint64_t Read only
	 * \warning Broadcast the same value into all elements
	 */
	uX_explicit uX_constexpr vecuqword2(uint64_t const Inint) uX_noexcept : _m128_xmmi(_uX_mm_set1_epi64x(Inint)) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(uint64_t const Inint_X, uint64_t const Inint_Y)
	 * \brief Constructor initialization from 2 uint64_t types
	 * \details Constructor copies 2 uint64_t to _x _y elements
	 * \param[in] Inint_X - uint64_t Read only
	 * \param[in] Inint_Y - uint64_t Read only
	 */
	uX_constexpr vecuqword2(uint64_t const Inint_X, uint64_t const Inint_Y) uX_noexcept : _m128_xmmi(_uX_mm_setr_epi64x(Inint_X, Inint_Y)) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(bool_t const Inbool)
	 * \brief Constructor initialization from type bool_t
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inbool - bool_t Read only
	 */
	uX_explicit uX_constexpr vecuqword2(bool_t const Inbool) uX_noexcept : _m128_xmmi(_uX_mm_set1_epi64x(Inbool.to_true_uint64())) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(bool_t const Inbool_X, bool_t const Inbool_Y)
	 * \brief Constructor initialization from 2 bool_t types
	 * \details Constructor initialization from 2 bool_t types
	 * \param[in] Inbool_X - bool_t Read only
	 * \param[in] Inbool_Y - bool_t Read only
	 */
	uX_constexpr vecuqword2(bool_t const Inbool_X, bool_t const Inbool_Y) uX_noexcept : _m128_xmmi(_uX_mm_setr_epi64x(Inbool_X.to_true_uint64(), Inbool_Y.to_true_uint64())) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(bool const Inbool)
	 * \brief Constructor initialization from type bool
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inbool - bool Read only
	 */
	uX_explicit uX_constexpr vecuqword2(bool const Inbool) uX_noexcept : _m128_xmmi(vecuqword2(bool_t(Inbool))) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(bool const Inbool_X, bool const Inbool_Y)
	 * \brief Constructor initialization from 2 bool types
	 * \details Constructor initialization from 2 bool types
	 * \param[in] Inbool_X - bool Read only
	 * \param[in] Inbool_Y - bool Read only
	 */
	uX_constexpr vecuqword2(bool const Inbool_X, bool const Inbool_Y) uX_noexcept : _m128_xmmi(vecuqword2(bool_t(Inbool_X), bool_t(Inbool_Y))) {}

	/**
	 * \fn uX::xmm::vecuqword2::vecuqword2(uint64_t const* const Inpint64)
	 * \brief Constructor initialization from uint64_t pointer type
	 * \details Constructor initialization from uint64_t pointer type with size of 2 uint64_t types
	 * \param[in] Inpint64 - uint64_t* Read only
	 * \Note The uint64_t pointer is expected to be unaligned
	 */
	uX_explicit uX_constexpr vecuqword2(uX_InReads(2) const uint64_t* Inpint64) uX_noexcept : _m128_xmmi(_uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64))) {}

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
	 * \brief vecuqword2 default assignment operator
	 * \details To convert from vecuqword2 type
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(vecuqword2 const& InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecuqword2 default assignment operator
	 * \details To convert from vecuqword2 type
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(vecuqword2&& InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief __m128i assignment operator
	 * \details To convert from __m128i type
	 * \param[in] Inxmmi - __m128i Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(__m128i const Inxmmi) uX_noexcept
	{
		_m128_xmmi = Inxmmi;
		return *this;
	}

	/**
	 * \brief vecuqword4 assignment operator
	 * \details To convert from vecuqword4 type
	 * \param[in] InVecxmmi - vecuqword4 Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi.get_xmmi_0();
		return *this;
	}

	/**
	 * \brief vecuqword3 assignment operator
	 * \details To convert from vecuqword3 type
	 * \param[in] InVecxmmi - vecuqword3 Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi.get_xmmi_0();
		return *this;
	}

	/**
	 * \brief vecuqword1 assignment operator
	 * \details To convert from vecuqword1 type
	 * \param[in] InVecxmmi - vecuqword1 Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(vecuqword1 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = _uX_mm_select_si128(_uX_mm_const_i64_select10_si128(), InVecxmmi, _m128_xmmi);
		return *this;
	}

	/**
	 * \brief vecqword2 assignment operator
	 * \details To convert from vecqword1 type
	 * \param[in] InVecxmmi - vecqword2 Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(vecqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecdouble2 assignment operator
	 * \details To convert from vecdouble2 type
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmi = _uX_mm_castpd_si128(InVecxmmd);
		return *this;
	}

	/**
	 * \brief vecfloat4 assignment operator
	 * \details To convert from vecfloat4 type
	 * \param[in] InVecxmm - vecfloat4 Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(vecfloat4 const InVecxmm) uX_noexcept
	{
		_m128_xmmi = _uX_mm_castps_si128(InVecxmm);
		return *this;
	}

	/**
	 * \brief vecudword4 assignment operator
	 * \details To convert from vecudword4 type
	 * \param[in] InVecxmmi - vecudword4 Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(vecudword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecdword4 assignment operator
	 * \details To convert from vecdword4 type
	 * \param[in] InVecxmmi - vecdword4 Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(vecdword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecudword2 assignment operator
	 * \details To converts uint32_t _x _y elements from /p vecudword2 and zero extend to uint64_t _x _y elements
	 * \param[in] InVecxmmi - vecudword2 Read only
	 * \warning Converts the value from uint32_t to uint64_t with zero extend
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(vecudword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = _uX_mm_cvtepu32_epi64(InVecxmmi);
		return *this;
	}

	/**
	 * \brief uint64_t assignment operator
	 * \details To broadcast the same uint64_t value into all elements
	 * \param[in] Inint - uint64_t Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(uint64_t const Inint) uX_noexcept
	{
		_m128_xmmi = _uX_mm_set1_epi64x(Inint);
		return *this;
	}

	/**
	 * \brief bool_t assignment operator
	 * \details To broadcast the same bool_t value into all elements
	 * \param[in] Inbool - bool_t Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(bool_t const Inbool) uX_noexcept
	{
		_m128_xmmi = _uX_mm_set1_epi64x(Inbool.to_true_uint64());
		return *this;
	}

	/**
	 * \brief bool assignment operator
	 * \details To broadcast the same bool value into all elements
	 * \param[in] Inbool - bool Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi operator=(bool const Inbool) uX_noexcept
	{
		_m128_xmmi = vecuqword2(bool_t(Inbool));
		return *this;
	}

	/**
	 * \brief Get vector
	 * \details Gets __m128i vector
	 * \returns __m128i
	 */
	uX_constexpr __m128i uX_abi get(void) const uX_noexcept
	{
		return _m128_xmmi;
	}

	/**
	 * \brief Get _x
	 * \details Gets _x element from vector
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t uX_abi get_x(void) const uX_noexcept
	{
		return _qw_x;
	}

	/**
	 * \brief Get _x _y vector
	 * \details Gets vecuqword2 _x _y vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_abi get_xy(void) const uX_noexcept
	{
		return _m128_xmmi;
	}

	/**
	 * \brief Get _y
	 * \details Gets _y element from vector
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t uX_abi get_y(void) const uX_noexcept
	{
		return _qw_y;
	}

	/**
	 * \brief Get _y _x vector
	 * \details Gets vecuqword2 _y _x vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_abi get_yx(void) const uX_noexcept
	{
		return vecuqword2(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi, 1, 0));
	}

	/**
	 * \brief Get reference to vector
	 * \details Gets reference to __m128i vector
	 * \returns __m128i
	 */
	uX_constexpr __m128i& uX_abi ref(void) uX_noexcept
	{
		return _m128_xmmi;
	}

	/**
	 * \brief Get reference to _x
	 * \details Gets reference to _x element from vector
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t& uX_abi ref_x(void) uX_noexcept
	{
		return _qw_x;
	}

	/**
	 * \brief Get reference to _x _y vector
	 * \details Gets reference to vecuqword2 _x _y vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi ref_xy(void) uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get reference to _y
	 * \details Gets reference to _y element from vector
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t& uX_abi ref_y(void) uX_noexcept
	{
		return _qw_y;
	}

	/**
	 * \brief Get reference to _y _x vector
	 * \details Gets reference to vecuqword2 _y _x vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi ref_yx(void) uX_noexcept
	{
		*this = get_yx();
		return *this;
	}

	/**
	 * \brief Set the vector
	 * \details Sets the vector elements
	 * \param[in] Inxmmi - __m128i Read only
	 */
	uX_constexpr void uX_abi set(__m128i const Inxmmi) uX_noexcept
	{
		_m128_xmmi = Inxmmi;
	}

	/**
	 * \brief Set the vector _x
	 * \details Sets the vector _x element
	 * \param[in] Inint - uint64_t Read only
	 */
	uX_constexpr void uX_abi set_x(uint64_t const Inint) uX_noexcept
	{
		_m128_xmmi = _uX_MM_SETEPI64X_SI128_IM(_m128_xmmi, Inint, 0);
	}

	/**
	 * \brief Set the vector _x _y
	 * \details Sets the vector _x _y elements
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 */
	uX_constexpr void uX_abi set_xy(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
	}

	/**
	 * \brief Set the vector _y
	 * \details Sets the vector _y element
	 * \param[in] Inint - uint64_t Read only
	 */
	uX_constexpr void uX_abi set_y(uint64_t const Inint) uX_noexcept
	{
		_m128_xmmi = _uX_MM_SETEPI64X_SI128_IM(_m128_xmmi, Inint, 1);
	}

	/**
	 * \brief Set the vector _y _x
	 * \details Sets the vector _y _x elements
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 */
	uX_constexpr void uX_abi set_yx(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi, 1, 0);
	}

	/**
	 * \brief Generates a constant vector of 2 uint64_t integer at compile time
	 * \details Generates a constant vector at compile time stored in memory
	 * \param[in] i0 - uint64_t
	 * \param[in] i1 - uint64_t
	 * \returns vecuqword2
	 * \retval the constant \p i0 \p i1 stored in the _x _y elements
	 */
	template <uint64_t i0, uint64_t i1>
	uX_constexpr vecuqword2 const uX_abi constant(void) const uX_noexcept
	{
		return vecuqword2(i0, i1);
	}

	/* Bitwise Operators */

	/**
	 * \brief Bitwise function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a andnot \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi andnot(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_andnot_epi64(InVecxmmi_b, InVecxmmi_a));
	}

	/**
	 * \brief Bitwise operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a and \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator&(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_and_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Bitwise operator OR
	 * \details Performs the compute or from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a or \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator|(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_or_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Bitwise operator XOR
	 * \details Performs the compute xor from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a xor \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator^(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_xor_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Bitwise operator NOT
	 * \details Performs the compute not from the parameter
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a not
	 */
	friend uX_constexpr vecuqword2 uX_abi operator~(vecuqword2 const InVecxmmi_a) uX_noexcept
	{
		return vecuqword2(_uX_mm_not_epi64(InVecxmmi_a));
	}

	/* Logical Operators */

	/**
	 * \brief Logical function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a andnot \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_abi bandnot(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_iandnot_epi64(InVecxmmi_b, InVecxmmi_a);
	}

	/**
	 * \brief Logical operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a && \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_abi operator&&(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_iand_epi64(InVecxmmi_a, InVecxmmi_b);
	}

	/**
	 * \brief Logical operator OR
	 * \details Performs the compute OR from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a || \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_abi operator||(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_ior_epi64(InVecxmmi_a, InVecxmmi_b);
	}

	/**
	 * \brief Logical operator NOT
	 * \details Performs the compute not from the 1 parameter
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \returns bool_t
	 * \retval the computed boolean not \p InVecxmmi_a
	 */
	friend uX_constexpr bool_t uX_abi operator!(vecuqword2 const InVecxmmi_a) uX_noexcept
	{
		return _uX_mm_inot_epi64(InVecxmmi_a);
	}

	/**
	 * \brief Logical operator assignment AND
	 * \details Performs the compute and from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a &= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2& uX_abi operator&=(vecuqword2& InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword2(_uX_mm_and_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Logical operator assignment OR
	 * \details Performs the compute or from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a |= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2& uX_abi operator|=(vecuqword2& InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword2(_uX_mm_or_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Logical operator assignment XOR
	 * \details Performs the compute xor from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a ^= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2& uX_abi operator^=(vecuqword2& InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword2(_uX_mm_xor_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/* Arithmetic Operators */

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] Inint_b - uint64_t broadcast same value to all elements
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a + \p Inint_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator+(vecuqword2 const InVecxmmi_a, uint64_t Inint_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_add_epi64(InVecxmmi_a, _uX_mm_set1_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] Inint_a - uint64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p Inint_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator+(uint64_t Inint_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_add_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator+(vecuqword2 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_add_epi64(InVecxmmi_a, Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator+(__m128i const Inxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_add_epi64(Inxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator+(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_add_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] Inint_b - uint64_t broadcast same value to all elements
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a - \p Inint_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator-(vecuqword2 const InVecxmmi_a, uint64_t Inint_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_sub_epi64(InVecxmmi_a, _uX_mm_set1_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] Inint_a - uint64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p Inint_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator-(uint64_t Inint_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_sub_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b));
	}
	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator-(vecuqword2 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_sub_epi64(InVecxmmi_a, Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator-(__m128i const Inxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_sub_epi64(Inxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator-(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_sub_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] Inint_b - uint64_t broadcast same value to all elements
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a * \p Inint_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator*(vecuqword2 const InVecxmmi_a, uint64_t Inint_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_mule_epi64(InVecxmmi_a, _uX_mm_set1_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] Inint_a - uint64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p Inint_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator*(uint64_t Inint_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_mule_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator*(vecuqword2 const InVecxmmi_a, __m128i const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator*(__m128i const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator*(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] Inint_a_b - uint64_t broadcast same value to all elements
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a / \p Inint_a_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator/(vecuqword2 const InVecxmmi_a, uint64_t Inint_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_div_epu64(InVecxmmi_a, _uX_mm_set1_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] Inint_a - uint64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p Inint_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator/(uint64_t Inint_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_div_epu64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator/(vecuqword2 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_div_epu64(InVecxmmi_a, Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator/(__m128i const Inxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_div_epu64(Inxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator/(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_div_epu64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator assignment addition
	 * \details Performs the compute addition from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a += \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2& uX_abi operator+=(vecuqword2& InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword2(_uX_mm_add_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment subtraction
	 * \details Performs the compute subtraction from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a -= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2& uX_abi operator-=(vecuqword2& InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword2(_uX_mm_sub_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment multiplication
	 * \details Performs the compute multiplication from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a *= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2& uX_abi operator*=(vecuqword2& InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword2(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment division
	 * \details Performs the compute division from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a /= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2& uX_abi operator/=(vecuqword2& InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword2(_uX_mm_div_epu64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/* Unary Operators */

	/**
	 * \brief Unary prefix increment operator
	 * \details Performs the compute prefix increment
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed prefix increment \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword2& uX_abi operator++(vecuqword2& InVecxmmi_a) uX_noexcept
	{
		InVecxmmi_a = InVecxmmi_a + _uX_mm_const_i64_1_si128();
		return InVecxmmi_a;
	}

	/**
	 * \brief Unary prefix decrement operator
	 * \details Performs the compute prefix decrement
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed prefix decrement \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword2& uX_abi operator--(vecuqword2& InVecxmmi_a) uX_noexcept
	{
		InVecxmmi_a = InVecxmmi_a - _uX_mm_const_i64_1_si128();
		return InVecxmmi_a;
	}

	/**
	 * \brief Unary postfix increment operator
	 * \details Performs the compute postfix increment
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed postfix increment \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword2 uX_abi operator++(vecuqword2& InVecxmmi_a, int) uX_noexcept
	{
		vecuqword2 tmpxmm_a0 = InVecxmmi_a;
		InVecxmmi_a = InVecxmmi_a + _uX_mm_const_i64_1_si128();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary postfix decrement operator
	 * \details Performs the compute postfix decrement
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed postfix decrement \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword2 uX_abi operator--(vecuqword2& InVecxmmi_a, int) uX_noexcept
	{
		vecuqword2 tmpxmm_a0 = InVecxmmi_a;
		InVecxmmi_a = InVecxmmi_a - _uX_mm_const_i64_1_si128();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary minus operator
	 * \details Performs the compute minus change sign bit, even for 0, INF and NAN
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed minus \p InVecxmmi_a
	 */
	/*friend uX_constexpr vecuqword2 uX_abi operator-(vecuqword2 const InVecxmmi_a) uX_noexcept
	{
		return vecuqword2(_uX_mm_negate_sepi64(InVecxmmi_a));
	}*/

	/* Comparison Operators */

	/**
	 * \brief Comparison operator equal
	 * \details Performs the compute equality from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a == \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator==(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_cmpeq_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator less than
	 * \details Performs the compute less than from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a < \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator<(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_cmplt_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator less than or equal
	 * \details Performs the compute less than or equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a <= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator<=(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_cmple_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator greater than
	 * \details Performs the compute greater than from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a > \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator>(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_cmpgt_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator greater than or equal
	 * \details Performs the compute greater than or equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a >= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator>=(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_cmpge_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator not equal
	 * \details Performs the compute not equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a != \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator!=(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_cmpneq_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/* Shift Operators	*/

	/**
	 * \brief Left shifting operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a << \p InIntCount
	 */
	friend uX_constexpr vecuqword2 uX_abi operator<<(vecuqword2 const InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		return vecuqword2(_uX_mm_slli_epi64(InVecxmmi_a, InIntCount));
	}

	/**
	 * \brief Left shifting operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a << \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator<<(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_Count) uX_noexcept
	{
		return vecuqword2(_uX_mm_sll_epi64(InVecxmmi_a, InVecxmmi_Count));
	}

	/**
	 * \brief Right shifting operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a >> \p InIntCount
	 */
	friend uX_constexpr vecuqword2 uX_abi operator>>(vecuqword2 const InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		return vecuqword2(_uX_mm_srli_epi64(InVecxmmi_a, InIntCount));
	}

	/**
	 * \brief Right shifting operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a >> \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi operator>>(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_Count) uX_noexcept
	{
		return vecuqword2(_uX_mm_srl_epi64(InVecxmmi_a, InVecxmmi_Count));
	}

	/**
	 * \brief Left shifting assignment operator
	 * \details Performs the left shifting from the 2 parameters and assigns to
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a <<= \p InIntCount
	 */
	friend uX_constexpr vecuqword2& uX_abi operator<<=(vecuqword2& InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		InVecxmmi_a = vecuqword2(_uX_mm_slli_epi64(InVecxmmi_a, InIntCount));
		return InVecxmmi_a;
	}

	/**
	 * \brief Left shifting assignment operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a <<= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2& uX_abi operator<<=(vecuqword2& InVecxmmi_a, vecuqword2 const InVecxmmi_Count) uX_noexcept
	{
		InVecxmmi_a = vecuqword2(_uX_mm_sll_epi64(InVecxmmi_a, InVecxmmi_Count));
		return InVecxmmi_a;
	}

	/**
	 * \brief Right shifting assignment operator
	 * \details Performs the right shifting from the 2 parameters and assigns to
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a >>= \p InIntCount
	 */
	friend uX_constexpr vecuqword2& uX_abi operator>>=(vecuqword2& InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		InVecxmmi_a = vecuqword2(_uX_mm_srli_epi64(InVecxmmi_a, InIntCount));
		return InVecxmmi_a;
	}

	/**
	 * \brief Right shifting assignment operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_a >>= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2& uX_abi operator>>=(vecuqword2& InVecxmmi_a, vecuqword2 const InVecxmmi_Count) uX_noexcept
	{
		InVecxmmi_a = vecuqword2(_uX_mm_srl_epi64(InVecxmmi_a, InVecxmmi_Count));
		return InVecxmmi_a;
	}

	/**
	 * \brief Index operator
	 * \details Performs element access only, no modification to elements
	 * \param[in] Nindex - count_t
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t const& uX_abi operator[](count_t Nindex) const uX_noexcept
	{
		return extract(Nindex);
	}

	/**
	 * \brief Index operator
	 * \details Performs element access and modification to elements
	 * \param[in] Nindex - count_t
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t& uX_abi operator[](count_t Nindex) uX_noexcept
	{
		qwrettype = extract(Nindex);
		return qwrettype;
	}

	/**
	 * \brief Load unaligned
	 * \details load from type uint64_t* unaligned
	 * \param[in] Inpint64 - uint64_t* Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi load(uX_InReads(2) uint64_t const* const Inpint64) uX_noexcept
	{
		_m128_xmmi = _uX_mm_loadu_si128(reinterpret_cast<__m128i const* const>(Inpint64));
		return *this;
	}

	/**
	 * \brief Load aligned
	 * \details load from type uint64_t* aligned
	 * \param[in] Inpint64 - uint64_t* Read only
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi load_a(uX_InReads(2) uint64_t const* const Inpint64) uX_noexcept
	{
		_m128_xmmi = _uX_mm_load_si128(reinterpret_cast<__m128i const* const>(Inpint64));
		return *this;
	}

	/**
	 * \brief Store unaligned
	 * \details store to type uint64_t* unaligned
	 * \param[out] Outpint64 - uint64_t* Write only
	 */
	uX_constexpr void uX_abi store(uX_OutWrites(2) uint64_t* Outpint64) const uX_noexcept
	{
		_uX_mm_storeu_si128(reinterpret_cast<__m128i*>(Outpint64), _m128_xmmi);
	}

	/**
	 * \brief Store aligned
	 * \details store to type uint64_t* aligned
	 * \param[out] Outpint64 - uint64_t* Write only
	 * \warning Outpint64 must be aligned by 16
	 */
	uX_constexpr void uX_abi store_a(uX_OutWrites(2) uint64_t* Outpint64) const uX_noexcept
	{
		_uX_mm_store_si128(reinterpret_cast<__m128i*>(Outpint64), _m128_xmmi);
	}

	/**
	 * \brief Insert function
	 * \details Performs the insert element from mask index
	 * \param[in] value - uint64_t the value
	 * \param[in] Nindex - count_t the index element to set
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 const uX_abi insert(uint64_t value, count_t Nindex) uX_noexcept
	{
		if(Nindex > 1) return *this;
		_m128_xmmi = _uX_mm_setelts_epi64x(_m128_xmmi, value, Nindex);
		return *this;
	}

	/**
	 * \brief Extract function
	 * \details Performs the extract element from mask index
	 * \param[in] Nindex - count_t the index element to get
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t uX_abi extract(count_t Nindex) const uX_noexcept
	{
		if(Nindex > 1) return 0;
		return _uX_mm_cvtelts_epi64x(_m128_xmmi, Nindex);
	}

	/**
	 * \brief Set all elements to zero
	 * \details Sets all elements to zero
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi zero(void) uX_noexcept
	{
		_m128_xmmi = _uX_mm_setzero_si128();
		return *this;
	}

	/**
	 * \brief Cut off vector to n elements
	 * \details Performs the Cut off vector to n elements
	 * \param[in] Nindex - count_t the N element's to cut
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_abi cutoff(count_t Nindex) uX_noexcept
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
	 * \param[in] InVecxmmi_f - vecuqword2 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword2 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword2 Read only the b vector
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_b : \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword2 uX_abi select(vecuqword2 const InVecxmmi_f, vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_select_si128(InVecxmmi_f, InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Conditional add
	 * \details Performs the conditional add in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] + b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecuqword2 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword2 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword2 Read only the b vector
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a + \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword2 uX_abi if_add(vecuqword2 const InVecxmmi_f, vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return InVecxmmi_a + (InVecxmmi_f & InVecxmmi_b);
	}

	/**
	 * \brief Conditional subtract
	 * \details Performs the conditional subtract in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] - b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecuqword2 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword2 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword2 Read only the b vector
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a - \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword2 uX_abi if_sub(vecuqword2 const InVecxmmi_f, vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return InVecxmmi_a - (InVecxmmi_f & InVecxmmi_b);
	}

	/**
	 * \brief Conditional multiply
	 * \details Performs the conditional multiply in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] * b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecuqword2 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword2 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword2 Read only the b vector
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a * \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword2 uX_abi if_mul(vecuqword2 const InVecxmmi_f, vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return select(InVecxmmi_f, InVecxmmi_a * InVecxmmi_b, InVecxmmi_a);
	}

	/**
	 * \brief Conditional division
	 * \details Performs the conditional divide in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] / b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecuqword2 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword2 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword2 Read only the b vector
	 * \returns vecuqword2
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a / \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword2 uX_abi if_div(vecuqword2 const InVecxmmi_f, vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return select(InVecxmmi_f, InVecxmmi_a / InVecxmmi_b, InVecxmmi_a);
	}

	/**
	 * \brief Max
	 * \details Computes the max a > b ? a : b
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed max \p InVecxmmi_a > \p InVecxmmi_b ? \p InVecxmmi_a: \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi max(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_max_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Min
	 * \details Computes the min a < b ? a : b
	 * \param[in] InVecxmmi_a - vecuqword2 Read only
	 * \param[in] InVecxmmi_b - vecuqword2 Read only
	 * \returns vecuqword2
	 * \retval the computed min \p InVecxmmi_a < \p InVecxmmi_b ? \p InVecxmmi_a: \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword2 uX_abi min(vecuqword2 const InVecxmmi_a, vecuqword2 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword2(_uX_mm_min_epi64(InVecxmmi_a, InVecxmmi_b));
	}

protected:

private:
	union
	{
		__m128i				_m128_xmmi;
		struct
		{
			uint64_t		_qw_x, _qw_y;
		};
		struct
		{
			uint32_t		_dw0_0, _dw0_1,
							_dw1_0, _dw1_1;
		};
		struct
		{
			uint16_t		_w0_0, _w0_1, _w0_2, _w0_3,
							_w1_0, _w1_1, _w1_2, _w1_3;
		};
		struct
		{
			uint8_t			_b0_0, _b0_1, _b0_2, _b0_3, _b0_4, _b0_5, _b0_6, _b0_7,
							_b1_0, _b1_1, _b1_2, _b1_3, _b1_4, _b1_5, _b1_6, _b1_7;
		};
		uint64_t			_m128_qw[2];
		uint32_t			_m128_dw[4];
		uint16_t			_m128_w[8];
		uint8_t				_m128_b[16];
	};
	uint64_t				qwrettype;

public:
	/**
	 * \brief vecuqword2 size
	 * \details Gets the vecuqword2 vector size
	 * \returns count_t
	 * \retval the vecuqword2 size
	 */
	uX_constexpr count_t const uX_abi size(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief vecuqword2 length
	 * \details Gets the vecuqword2 vector length
	 * \returns count_t
	 * \retval the vecuqword2 length
	 */
	uX_constexpr count_t const uX_abi length(void) const uX_noexcept
	{
		return 2;
	}

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
	 * \brief xmm elements
	 * \details Gets the quantity of xmm vector elements
	 * \returns count_t
	 * \retval the quantity of xmm elements
	 */
	uX_constexpr count_t const uX_abi xmm_elements(void) const uX_noexcept
	{
		return 1;
	}

	/**
	 * \brief xmm uint64_t elements
	 * \details Gets the quantity of xmm vector uint64_t elements
	 * \returns count_t
	 * \retval the quantity of xmm uint64_t elements
	 */
	uX_constexpr count_t const uX_abi xmm_i64_elements(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief xmm uint32_t elements
	 * \details Gets the quantity of xmm vector uint32_t elements
	 * \returns count_t
	 * \retval the quantity of xmm uint32_t elements
	 */
	uX_constexpr count_t const uX_abi xmm_i32_elements(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief xmm uint16_t elements
	 * \details Gets the quantity of xmm vector uint16_t elements
	 * \returns count_t
	 * \retval the quantity of xmm uint16_t elements
	 */
	uX_constexpr count_t const uX_abi xmm_i16_elements(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief xmm uint8_t elements
	 * \details Gets the quantity of xmm vector uint8_t elements
	 * \returns count_t
	 * \retval the quantity of xmm uint8_t elements
	 */
	uX_constexpr count_t const uX_abi xmm_i8_elements(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief uin64_t size
	 * \details Gets the uin64_t size
	 * \returns count_t
	 * \retval the xmm uin64_t size
	 */
	uX_constexpr count_t const uX_abi i64_size(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief uin32_t size
	 * \details Gets the uin32_t size
	 * \returns count_t
	 * \retval the xmm uin32_t size
	 */
	uX_constexpr count_t const uX_abi i32_size(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief uin16_t size
	 * \details Gets the uin16_t size
	 * \returns count_t
	 * \retval the xmm uin16_t size
	 */
	uX_constexpr count_t const uX_abi i16_size(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief uin8_t size
	 * \details Gets the uin8_t size
	 * \returns count_t
	 * \retval the xmm uin8_t size
	 */
	uX_constexpr count_t const uX_abi i8_size(void) const uX_noexcept
	{
		return 1;
	}

	/**
	 * \brief uint64_t elements
	 * \details Gets the quantity of uint64_t elements
	 * \returns count_t
	 * \retval the quantity of uint64_t elements
	 */
	uX_constexpr count_t const uX_abi i64_elements(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief uint32_t elements
	 * \details Gets the quantity of uint32_t elements
	 * \returns count_t
	 * \retval the quantity of uint32_t elements
	 */
	uX_constexpr count_t const uX_abi i32_elements(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief uint16_t elements
	 * \details Gets the quantity of uint16_t elements
	 * \returns count_t
	 * \retval the quantity of uint16_t elements
	 */
	uX_constexpr count_t const uX_abi i16_elements(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief uint8_t elements
	 * \details Gets the quantity of uint8_t elements
	 * \returns count_t
	 * \retval the quantity of uint8_t elements
	 */
	uX_constexpr count_t const uX_abi i8_elements(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief uint64_t ptr length
	 * \details Gets the length of uint64_t elements
	 * \returns count_t
	 * \retval the length of uint64_t elements
	 */
	uX_constexpr count_t const uX_abi i64_ptr_length(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief uint32_t ptr length
	 * \details Gets the length of uint32_t elements
	 * \returns count_t
	 * \retval the length of uint32_t elements
	 */
	uX_constexpr count_t const uX_abi i32_ptr_length(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief uint16_t ptr length
	 * \details Gets the length of uint16_t elements
	 * \returns count_t
	 * \retval the length of uint16_t elements
	 */
	uX_constexpr count_t const uX_abi i16_ptr_length(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief uint8_t ptr length
	 * \details Gets the length of uint8_t elements
	 * \returns count_t
	 * \retval the length of uint8_t elements
	 */
	uX_constexpr count_t const uX_abi i8_ptr_length(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief uint64_t ptr size
	 * \details Gets the ptr size of uint64_t elements
	 * \returns count_t
	 * \retval the size of uint64_t elements
	 */
	uX_constexpr count_t const uX_abi i64_ptr_size(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief uint32_t ptr size
	 * \details Gets the ptr size of uint32_t elements
	 * \returns count_t
	 * \retval the size of uint32_t elements
	 */
	uX_constexpr count_t const uX_abi i32_ptr_size(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief uint16_t ptr size
	 * \details Gets the ptr size of uint16_t elements
	 * \returns count_t
	 * \retval the size of uint16_t elements
	 */
	uX_constexpr count_t const uX_abi i16_ptr_size(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief uint8_t ptr size
	 * \details Gets the ptr size of uint8_t elements
	 * \returns count_t
	 * \retval the size of uint8_t elements
	 */
	uX_constexpr count_t const uX_abi i8_ptr_size(void) const uX_noexcept
	{
		return 16;
	}

	using types = vector2types;
}vecuqword2_t;
#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_xmm_end
namespace_uX_end

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECUQWORD2_H
