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

#ifndef uX_XMM_VECUQWORD1_H
#define uX_XMM_VECUQWORD1_H 1

/**
 * \defgroup uX_XMM_VECUQWORD1 1 64bit unsigned integer SSE SIMD Vector
 * \ingroup uX_NAMESPACE_XMM
 * \file uXxmmvecuqword1.h
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

#ifndef uX_XMM_VECDOUBLE1_H
#include "uXxmmvecdouble1.h"
#endif  /* uX_XMM_VECDOUBLE1_H */

#ifndef uX_XMM_VECFLOAT2_H
#include "uXxmmvecfloat2.h"
#endif  /* uX_XMM_VECFLOAT2_H */

#ifndef uX_XMM_VECUQWORD4_H
#include "uXxmmvecuqword4.h"
#endif  /* uX_XMM_VECUQWORD4_H */

#ifndef uX_XMM_VECUQWORD3_H
#include "uXxmmvecuqword3.h"
#endif  /* uX_XMM_VECUQWORD3_H */

#ifndef uX_XMM_VECUQWORD2_H
#include "uXxmmvecuqword2.h"
#endif  /* uX_XMM_VECUQWORD2_H */

#ifndef uX_XMM_VECQWORD1_H
#include "uXxmmvecqword1.h"
#endif  /* uX_XMM_VECQWORD1_H */

#ifndef uX_XMM_VECUDWORD2_H
#include "uXxmmvecudword2.h"
#endif  /* uX_XMM_VECUDWORD2_H */

#ifndef uX_XMM_VECDWORD2_H
#include "uXxmmvecdword2.h"
#endif  /* uX_XMM_VECDWORD2_H */

#ifndef uX_XMM_VECUDWORD1_H
#include "uXxmmvecudword1.h"
#endif  /* uX_XMM_VECUDWORD1_H */

/**
 * \defgroup uX_XMM_VECUQWORD1_CLASS 1 64bit unsigned integer SSE SIMD Vector Class
 * \ingroup uX_XMM_VECUQWORD1
 * To use these class include the header file \p uXxmmvecuqword1.h in your program
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
 * \ingroup uX_XMM_VECUQWORD1_CLASS
 * \class vecuqword1
 * \brief SSE SIMD class with the size of 1 64bit unsigned integer element
 * \details The \p vecuqword1 class is an 1 element wide 64bit unsigned integer element where
 *	it provides interoperability between %vecdouble1 and steel return different integer type
 */
typedef class vecuqword1
{
public:
	vecuqword1()uX_default;
	~vecuqword1()uX_default;
	
	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(vecuqword1 const& InVecxmmi)
	 * \brief Default constructor initialization from vecuqword1 type
	 * \details Default constructor copies /p vecuqword1
	 * \param[in] InVecxmmi - vecuqword1 Read only
	 */
	uX_constexpr vecuqword1(vecuqword1 const& InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi._m128_xmmi) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(vecuqword1&& InVecxmmi)
	 * \brief Default constructor initialization from vecuqword1 type
	 * \details Default constructor copies /p vecuqword1
	 * \param[in] InVecxmmi - vecuqword1 Read only
	 */
	uX_constexpr vecuqword1(vecuqword1&& InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi._m128_xmmi) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(__m128i const Inxmmi)
	 * \brief Constructor initialization from __m128i type
	 * \details Constructor copies low _x element from /p __m128i and clears high _y element
	 * \param[in] Inxmmi - __m128i Read only
	 * \warning Only sets the lower _x uint64_t element, higher elements gets cleared
	 * \Note Sets the _x uint64_t element
	 */
	uX_constexpr vecuqword1(__m128i const Inxmmi) uX_noexcept : _m128_xmmi(_uX_mm_unpacklo_epi64(Inxmmi, _uX_mm_const_i64_false_si128())) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(vecuqword4 const InVecxmmi)
	 * \brief Constructor initialization from vecuqword4 type
	 * \details Constructor copies low _x element from /p vecuqword4 and clears high _y element
	 * \param[in] InVecxmmi - vecuqword4 Read only
	 * \warning Only sets the lower _x uint64_t element, higher elements gets cleared
	 * \Note Sets the _x uint64_t element
	 */
	uX_constexpr vecuqword1(vecuqword4 const InVecxmmi) uX_noexcept : _m128_xmmi(_uX_mm_unpacklo_epi64(InVecxmmi.get_xmmi_0(), _uX_mm_const_i64_false_si128())) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(vecuqword3 const InVecxmmi)
	 * \brief Constructor initialization from vecuqword3 type
	 * \details Constructor copies low _x element from /p vecuqword3 and clears high _y element
	 * \param[in] InVecxmmi - vecuqword3 Read only
	 * \warning Only sets the lower _x uint64_t element, higher elements gets cleared
	 * \Note Sets the _x uint64_t element
	 */
	uX_constexpr vecuqword1(vecuqword3 const InVecxmmi) uX_noexcept : _m128_xmmi(_uX_mm_unpacklo_epi64(InVecxmmi.get_xmmi_0(), _uX_mm_const_i64_false_si128())) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(vecuqword2 const InVecxmmi)
	 * \brief Constructor initialization from vecuqword2 type
	 * \details Constructor copies low _x element from /p vecuqword2 and clears high _y element
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 * \warning Only sets the lower _x uint64_t element, higher elements gets cleared
	 * \Note Sets the _x uint64_t element
	 */
	uX_constexpr vecuqword1(vecuqword2 const InVecxmmi) uX_noexcept : _m128_xmmi(_uX_mm_unpacklo_epi64(InVecxmmi, _uX_mm_const_i64_false_si128())) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(vecqword1 const InVecxmmi)
	 * \brief Constructor initialization from vecqword1 type
	 * \details Constructor copies int64_t _x element from /p vecqword1 to low _x element
	 * \param[in] InVecxmmi - vecqword1 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x uint64_t element
	 */
	uX_constexpr vecuqword1(vecqword1 const InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(vecdouble1 const InVecxmmd)
	 * \brief Constructor initialization from vecdouble1 type
	 * \details Constructor copies double _x element from /p vecdouble1 to low _x element
	 * \param[in] InVecxmmd - vecdouble1 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x uint64_t element
	 */
	uX_constexpr vecuqword1(vecdouble1 const InVecxmmd) uX_noexcept : _m128_xmmi(_uX_mm_castpd_si128(InVecxmmd)) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(vecfloat2 const InVecxmm)
	 * \brief Constructor initialization from vecfloat2 type
	 * \details Constructor copies float _x _y elements from /p vecfloat2 to low _x double element
	 * \param[in] InVecxmm - vecfloat2 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x uint64_t element
	 */
	uX_constexpr vecuqword1(vecfloat2 const InVecxmm) uX_noexcept : _m128_xmmi(_uX_mm_castps_si128(InVecxmm)) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(vecudword2 const InVecxmmi)
	 * \brief Constructor initialization from vecudword2 type
	 * \details Constructor copies uint32 _x _y elements from /p vecudword2 to low _x uint64_t element
	 * \param[in] InVecxmmi - vecudword2 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x uint64_t element
	 */
	uX_constexpr vecuqword1(vecudword2 const InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(vecdword2 const InVecxmmi)
	 * \brief Constructor initialization from vecdword2 type
	 * \details Constructor copies int32_t _x _y elements from /p vecdword2 to low _x uint64_t element
	 * \param[in] InVecxmmi - vecdword2 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x uint64_t element
	 */
	uX_constexpr vecuqword1(vecdword2 const InVecxmmi) uX_noexcept : _m128_xmmi(InVecxmmi) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(vecudword1 const InVecxmmi)
	 * \brief Constructor initialization from vecudword1 type
	 * \details Constructor converts low uint32_t _x element from /p vecudword1 and zero extend to low uint64_t _x element
	 * \param[in] InVecxmmi - vecudword1 Read only
	 * \warning Converts the value from uint32_t to uint64_t with zero extend
	 * \Note Sets the _x uint64_t element
	 */
	uX_constexpr vecuqword1(vecudword1 const InVecxmmi) uX_noexcept : _m128_xmmi(_uX_mm_cvtepu32_epi64(InVecxmmi)) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(uint64_t Inint)
	 * \brief Constructor initialization from uint64_t type
	 * \details Constructor copies uint64_t to low _x element and clears high _y element
	 * \param[in] Inint - uint64_t Read only
	 * \warning Only sets the lower _x uint64_t element, higher elements gets cleared
	 * \Note Sets the _x uint64_t element
	 */
	uX_constexpr vecuqword1(uint64_t const Inint) uX_noexcept : _m128_xmmi(_uX_mm_setl_epi64x(Inint)) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(bool_t const Inbool)
	 * \brief Constructor initialization from bool_t type
	 * \details Constructor copies bool_t to low _x element
	 * \param[in] Inbool - bool_t Read only
	 * \Note Sets the _x uint64_t element
	 */
	uX_constexpr vecuqword1(bool_t const Inbool) uX_noexcept : _m128_xmmi(_uX_mm_setl_epi64x(Inbool.to_true_uint64())) {}

	/**
	 * \fn uX::xmm::vecuqword1::vecuqword1(bool const Inbool)
	 * \brief Constructor initialization from bool type
	 * \details Constructor copies bool to low _x element
	 * \param[in] Inbool - bool Read only
	 * \Note Sets the _x uint64_t element
	 */
	uX_constexpr vecuqword1(bool const Inbool) uX_noexcept : _m128_xmmi(vecuqword1(bool_t(Inbool))) {}

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
	 * \brief vecuqword1 default assignment operator
	 * \details To convert from vecuqword1 type
	 * \param[in] InVecxmmi - vecuqword1 Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(vecuqword1 const& InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecuqword1 default assignment operator
	 * \details To convert from vecuqword1 type
	 * \param[in] InVecxmmi - vecuqword1 Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(vecuqword1&& InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief __m128i assignment operator
	 * \details To convert from __m128i type
	 * \param[in] Inxmmi - __m128i Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(__m128i const Inxmmi) uX_noexcept
	{
		_m128_xmmi = _uX_mm_unpacklo_epi64(Inxmmi, _uX_mm_const_i64_false_si128());
		return *this;
	}

	/**
	 * \brief vecuqword4 assignment operator
	 * \details To convert from vecuqword4 type
	 * \param[in] InVecxmmi - vecuqword4 Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = _uX_mm_unpacklo_epi64(InVecxmmi.get_xmmi_0(), _uX_mm_const_i64_false_si128());
		return *this;
	}

	/**
	 * \brief vecuqword3 assignment operator
	 * \details To convert from vecuqword3 type
	 * \param[in] InVecxmmi - vecuqword3 Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = _uX_mm_unpacklo_epi64(InVecxmmi.get_xmmi_0(), _uX_mm_const_i64_false_si128());
		return *this;
	}

	/**
	 * \brief vecuqword2 assignment operator
	 * \details To convert from vecuqword2 type
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = _uX_mm_unpacklo_epi64(InVecxmmi, _uX_mm_const_i64_false_si128());
		return *this;
	}

	/**
	 * \brief vecqword1 assignment operator
	 * \details To convert from vecqword1 type
	 * \param[in] InVecxmmi - vecqword1 Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(vecqword1 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecdouble1 assignment operator
	 * \details To convert from vecdouble1 type
	 * \param[in] InVecxmmd - vecdouble1 Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(vecdouble1 const InVecxmmd) uX_noexcept
	{
		_m128_xmmi = _uX_mm_castpd_si128(InVecxmmd);
		return *this;
	}

	/**
	 * \brief vecfloat2 assignment operator
	 * \details To convert from vecfloat2 type
	 * \param[in] InVecxmm - vecfloat2 Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(vecfloat2 const InVecxmm) uX_noexcept
	{
		_m128_xmmi = _uX_mm_castps_si128(InVecxmm);
		return *this;
	}

	/**
	 * \brief vecudword2 assignment operator
	 * \details To convert from vecudword2 type
	 * \param[in] InVecxmmi - vecudword2 Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(vecudword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecdword2 assignment operator
	 * \details To convert from vecdword2 type
	 * \param[in] InVecxmmi - vecdword2 Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(vecdword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecudword1 assignment operator
	 * \details To convert from vecudword1 type
	 * \param[in] InVecxmmi - vecudword1 Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(vecudword1 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi = _uX_mm_cvtepu32_epi64(InVecxmmi);
		return *this;
	}

	/**
	 * \brief uint64_t assignment operator
	 * \details To convert from uint64_t type
	 * \param[in] Inint - uint64_t Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(uint64_t const Inint) uX_noexcept
	{
		_m128_xmmi = _uX_mm_setl_epi64x(Inint);
		return *this;
	}

	/**
	 * \brief bool_t assignment operator
	 * \details To convert from bool_t type
	 * \param[in] Inbool - bool_t Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(bool_t const Inbool) uX_noexcept
	{
		_m128_xmmi = _uX_mm_setl_epi64x(Inbool.to_true_uint64());
		return *this;
	}

	/**
	 * \brief bool assignment operator
	 * \details To convert from bool type
	 * \param[in] Inbool - bool Read only
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi operator=(bool const Inbool) uX_noexcept
	{
		_m128_xmmi = vecuqword1(bool_t(Inbool));
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
	 * \brief Set the vector
	 * \details Sets the vector elements
	 * \param[in] Inxmmi - __m128i Read only
	 * \warning Only sets the lower _x uint64_t element, higher elements gets cleared
	 */
	uX_constexpr void uX_abi set(__m128i const Inxmmi) uX_noexcept
	{
		_m128_xmmi = vecuqword1(Inxmmi);
	}

	/**
	 * \brief Set the vector _x
	 * \details Sets the vector _x element
	 * \param[in] Inint - uint64_t Read only
	 * \warning Only sets the lower _x uint64_t element, higher elements gets cleared
	 */
	uX_constexpr void uX_abi set_x(uint64_t const Inint) uX_noexcept
	{
		_m128_xmmi = _uX_MM_SETEPI64X_SI128_IM(_uX_mm_const_i64_false_si128(), Inint, 0);
	}

	/**
	 * \brief Generates a constant vector of 1 uint64_t integer at compile time
	 * \details Generates a constant vector at compile time stored in memory
	 * \param[in] i0 - uint64_t
	 * \returns vecuqword1
	 * \retval the constant \p i0 stored in the _x element
	 */
	template <uint64_t i0>
	uX_constexpr vecuqword1 const uX_abi constant(void) const uX_noexcept
	{
		return vecuqword1(i0);
	}

	/* Bitwise Operators */

	/**
	 * \brief Bitwise function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a andnot \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi andnot(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_andnot_sepi64(InVecxmmi_b, InVecxmmi_a));
	}

	/**
	 * \brief Bitwise operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a and \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator&(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_and_sepi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Bitwise operator OR
	 * \details Performs the compute or from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a or \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator|(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_or_sepi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Bitwise operator XOR
	 * \details Performs the compute xor from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a xor \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator^(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_xor_sepi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Bitwise operator NOT
	 * \details Performs the compute not from the parameter
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a not
	 */
	friend uX_constexpr vecuqword1 uX_abi operator~(vecuqword1 const InVecxmmi_a) uX_noexcept
	{
		return vecuqword1(_uX_mm_not_sepi64(InVecxmmi_a));
	}

	/* Logical Operators */

	/**
	 * \brief Logical function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a andnot \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_abi bandnot(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_iandnot_sepi64(InVecxmmi_b, InVecxmmi_a);
	}

	/**
	 * \brief Logical operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a && \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_abi operator&&(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_iand_sepi64(InVecxmmi_a, InVecxmmi_b);
	}

	/**
	 * \brief Logical operator OR
	 * \details Performs the compute OR from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a || \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_abi operator||(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_ior_sepi64(InVecxmmi_a, InVecxmmi_b);
	}

	/**
	 * \brief Logical operator NOT
	 * \details Performs the compute not from the 1 parameter
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \returns bool_t
	 * \retval the computed boolean not \p InVecxmmi_a
	 */
	friend uX_constexpr bool_t uX_abi operator!(vecuqword1 const InVecxmmi_a) uX_noexcept
	{
		return _uX_mm_inot_epi64(InVecxmmi_a);
	}

	/**
	 * \brief Logical operator assignment AND
	 * \details Performs the compute and from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a &= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1& uX_abi operator&=(vecuqword1& InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword1(_uX_mm_and_sepi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Logical operator assignment OR
	 * \details Performs the compute or from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a |= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1& uX_abi operator|=(vecuqword1& InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword1(_uX_mm_or_sepi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Logical operator assignment XOR
	 * \details Performs the compute xor from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a ^= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1& uX_abi operator^=(vecuqword1& InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword1(_uX_mm_xor_sepi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/* Arithmetic Operators */

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] Inint_b - uint64_t broadcast same value to all elements
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a + \p Inint_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator+(vecuqword1 const InVecxmmi_a, uint64_t Inint_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_add_sepi64(InVecxmmi_a, _uX_mm_setl_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] Inint_a - uint64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p Inint_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator+(uint64_t Inint_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_add_sepi64(_uX_mm_setl_epi64x(Inint_a), InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator+(vecuqword1 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_add_sepi64(InVecxmmi_a, Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator+(__m128i const Inxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_add_sepi64(Inxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator+(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_add_sepi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] Inint_b - uint64_t broadcast same value to all elements
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a - \p Inint_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator-(vecuqword1 const InVecxmmi_a, uint64_t Inint_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_sub_sepi64(InVecxmmi_a, _uX_mm_setl_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] Inint_a - uint64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p Inint_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator-(uint64_t Inint_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_sub_sepi64(_uX_mm_setl_epi64x(Inint_a), InVecxmmi_b));
	}
	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator-(vecuqword1 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_sub_sepi64(InVecxmmi_a, Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator-(__m128i const Inxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_sub_sepi64(Inxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator-(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_sub_sepi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] Inint_b - uint64_t broadcast same value to all elements
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a * \p Inint_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator*(vecuqword1 const InVecxmmi_a, uint64_t Inint_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_mule_epi64(InVecxmmi_a, _uX_mm_setl_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] Inint_a - uint64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p Inint_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator*(uint64_t Inint_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_mule_epi64(_uX_mm_setl_epi64x(Inint_a), InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator*(vecuqword1 const InVecxmmi_a, __m128i const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator*(__m128i const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator*(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] Inint_a_b - uint64_t broadcast same value to all elements
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a / \p Inint_a_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator/(vecuqword1 const InVecxmmi_a, uint64_t Inint_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_div_sepu64(InVecxmmi_a, _uX_mm_setl_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] Inint_a - uint64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p Inint_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator/(uint64_t Inint_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_div_sepu64(_uX_mm_setl_epi64x(Inint_a), InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator/(vecuqword1 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_div_sepu64(InVecxmmi_a, Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator/(__m128i const Inxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_div_sepu64(Inxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator/(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_div_sepu64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator assignment addition
	 * \details Performs the compute addition from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a += \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1& uX_abi operator+=(vecuqword1& InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword1(_uX_mm_add_sepi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment subtraction
	 * \details Performs the compute subtraction from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a -= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1& uX_abi operator-=(vecuqword1& InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword1(_uX_mm_sub_sepi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment multiplication
	 * \details Performs the compute multiplication from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a *= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1& uX_abi operator*=(vecuqword1& InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword1(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment division
	 * \details Performs the compute division from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a /= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1& uX_abi operator/=(vecuqword1& InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword1(_uX_mm_div_sepu64(InVecxmmi_a, InVecxmmi_b));
		return InVecxmmi_a;
	}

	/* Unary Operators */

	/**
	 * \brief Unary prefix increment operator
	 * \details Performs the compute prefix increment
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed prefix increment \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword1& uX_abi operator++(vecuqword1& InVecxmmi_a) uX_noexcept
	{
		InVecxmmi_a = InVecxmmi_a + _uX_mm_const_i64_0e_1_si128();
		return InVecxmmi_a;
	}

	/**
	 * \brief Unary prefix decrement operator
	 * \details Performs the compute prefix decrement
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed prefix decrement \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword1& uX_abi operator--(vecuqword1& InVecxmmi_a) uX_noexcept
	{
		InVecxmmi_a = InVecxmmi_a - _uX_mm_const_i64_0e_1_si128();
		return InVecxmmi_a;
	}

	/**
	 * \brief Unary postfix increment operator
	 * \details Performs the compute postfix increment
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed postfix increment \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword1 uX_abi operator++(vecuqword1& InVecxmmi_a, int) uX_noexcept
	{
		vecuqword1 tmpxmm_a0 = InVecxmmi_a;
		InVecxmmi_a = InVecxmmi_a + _uX_mm_const_i64_0e_1_si128();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary postfix decrement operator
	 * \details Performs the compute postfix decrement
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed postfix decrement \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword1 uX_abi operator--(vecuqword1& InVecxmmi_a, int) uX_noexcept
	{
		vecuqword1 tmpxmm_a0 = InVecxmmi_a;
		InVecxmmi_a = InVecxmmi_a - _uX_mm_const_i64_0e_1_si128();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary minus operator
	 * \details Performs the compute minus change sign bit, even for 0, INF and NAN
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed minus \p InVecxmmi_a
	 */
	/*friend uX_constexpr vecuqword1 uX_abi operator-(vecuqword1 const InVecxmmi_a) uX_noexcept
	{
		return vecuqword1(_uX_mm_negate_sepi64(InVecxmmi_a));
	}*/

	/* Comparison Operators */

	/**
	 * \brief Comparison operator equal
	 * \details Performs the compute equality from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a == \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator==(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_cmpeq_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator less than
	 * \details Performs the compute less than from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a < \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator<(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_cmplt_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator less than or equal
	 * \details Performs the compute less than or equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a <= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator<=(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_cmple_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator greater than
	 * \details Performs the compute greater than from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a > \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator>(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_cmpgt_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator greater than or equal
	 * \details Performs the compute greater than or equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a >= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator>=(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_cmpge_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Comparison operator not equal
	 * \details Performs the compute not equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a != \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator!=(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_cmpneq_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/* Shift Operators	*/

	/**
	 * \brief Left shifting operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a << \p InIntCount
	 */
	friend uX_constexpr vecuqword1 uX_abi operator<<(vecuqword1 const InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		return vecuqword1(_uX_mm_slli_epi64(InVecxmmi_a, InIntCount));
	}

	/**
	 * \brief Left shifting operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a << \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator<<(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_Count) uX_noexcept
	{
		return vecuqword1(_uX_mm_sll_epi64(InVecxmmi_a, InVecxmmi_Count));
	}

	/**
	 * \brief Right shifting operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a >> \p InIntCount
	 */
	friend uX_constexpr vecuqword1 uX_abi operator>>(vecuqword1 const InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		return vecuqword1(_uX_mm_srli_epi64(InVecxmmi_a, InIntCount));
	}

	/**
	 * \brief Right shifting operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a >> \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi operator>>(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_Count) uX_noexcept
	{
		return vecuqword1(_uX_mm_srl_epi64(InVecxmmi_a, InVecxmmi_Count));
	}

	/**
	 * \brief Left shifting assignment operator
	 * \details Performs the left shifting from the 2 parameters and assigns to
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a <<= \p InIntCount
	 */
	friend uX_constexpr vecuqword1& uX_abi operator<<=(vecuqword1& InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		InVecxmmi_a = vecuqword1(_uX_mm_slli_epi64(InVecxmmi_a, InIntCount));
		return InVecxmmi_a;
	}

	/**
	 * \brief Left shifting assignment operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a <<= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1& uX_abi operator<<=(vecuqword1& InVecxmmi_a, vecuqword1 const InVecxmmi_Count) uX_noexcept
	{
		InVecxmmi_a = vecuqword1(_uX_mm_sll_epi64(InVecxmmi_a, InVecxmmi_Count));
		return InVecxmmi_a;
	}

	/**
	 * \brief Right shifting assignment operator
	 * \details Performs the right shifting from the 2 parameters and assigns to
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a >>= \p InIntCount
	 */
	friend uX_constexpr vecuqword1& uX_abi operator>>=(vecuqword1& InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		InVecxmmi_a = vecuqword1(_uX_mm_srli_epi64(InVecxmmi_a, InIntCount));
		return InVecxmmi_a;
	}

	/**
	 * \brief Right shifting assignment operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_a >>= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1& uX_abi operator>>=(vecuqword1& InVecxmmi_a, vecuqword1 const InVecxmmi_Count) uX_noexcept
	{
		InVecxmmi_a = vecuqword1(_uX_mm_srl_epi64(InVecxmmi_a, InVecxmmi_Count));
		return InVecxmmi_a;
	}

	/**
	 * \brief Set all elements to zero
	 * \details Sets all elements to zero
	 * \returns vecuqword1
	 */
	uX_constexpr vecuqword1& uX_abi zero(void) uX_noexcept
	{
		_m128_xmmi = _uX_mm_setzero_si128();
		return *this;
	}

	/**
	 * \brief Select between two operands
	 * \details Performs the selection between two operands
		The first vector is boolean vector mask that chooses between the elements of the second and the third vector
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return s[i] ? a[i] : b[i];
	 * \param[in] InVecxmmi_f - vecuqword1 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword1 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword1 Read only the b vector
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a : \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi select(vecuqword1 const InVecxmmi_f, vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_select_si128(InVecxmmi_f, InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Conditional add
	 * \details Performs the conditional add in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] + b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecuqword1 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword1 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword1 Read only the b vector
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a + \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword1 uX_abi if_add(vecuqword1 const InVecxmmi_f, vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return InVecxmmi_a + (InVecxmmi_f & InVecxmmi_b);
	}

	/**
	 * \brief Conditional subtract
	 * \details Performs the conditional subtract in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] - b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecuqword1 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword1 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword1 Read only the b vector
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a - \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword1 uX_abi if_sub(vecuqword1 const InVecxmmi_f, vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return InVecxmmi_a - (InVecxmmi_f & InVecxmmi_b);
	}

	/**
	 * \brief Conditional multiply
	 * \details Performs the conditional multiply in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] * b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecuqword1 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword1 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword1 Read only the b vector
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a * \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword1 uX_abi if_mul(vecuqword1 const InVecxmmi_f, vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return select(InVecxmmi_f, InVecxmmi_a * InVecxmmi_b, InVecxmmi_a);
	}

	/**
	 * \brief Conditional division
	 * \details Performs the conditional divide in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] / b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecuqword1 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword1 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword1 Read only the b vector
	 * \returns vecuqword1
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a / \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword1 uX_abi if_div(vecuqword1 const InVecxmmi_f, vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return select(InVecxmmi_f, InVecxmmi_a / InVecxmmi_b, InVecxmmi_a);
	}

	/**
	 * \brief Max
	 * \details Computes the max a > b ? a : b
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed max \p InVecxmmi_a > \p InVecxmmi_b ? \p InVecxmmi_a: \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi max(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_max_epi64(InVecxmmi_a, InVecxmmi_b));
	}

	/**
	 * \brief Min
	 * \details Computes the min a < b ? a : b
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 * \returns vecuqword1
	 * \retval the computed min \p InVecxmmi_a < \p InVecxmmi_b ? \p InVecxmmi_a: \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword1 uX_abi min(vecuqword1 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword1(_uX_mm_min_epi64(InVecxmmi_a, InVecxmmi_b));
	}

protected:

private:
	union
	{
		__m128i				_m128_xmmi;
		struct
		{
			uint64_t		_qw_x;
		};
		struct
		{
			uint32_t		_dw_0, _dw_1;
		};
		struct
		{
			uint16_t		_w_0, _w_1, _w_2, _w_3;
		};
		struct
		{
			uint8_t			_b_0, _b_1, _b_2, _b_3, _b_4, _b_5, _b_6, _b_7;
		};
		uint32_t			_m128_dw[2];
		uint16_t			_m128_w[4];
		uint8_t				_m128_b[8];
	};

public:
	/**
	 * \brief vecuqword1 size
	 * \details Gets the vecuqword1 vector size
	 * \returns count_t
	 * \retval the vecuqword1 size
	 */
	uX_constexpr count_t const uX_abi size(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief vecuqword1 length
	 * \details Gets the vecuqword1 vector length
	 * \returns count_t
	 * \retval the vecuqword1 length
	 */
	uX_constexpr count_t const uX_abi length(void) const uX_noexcept
	{
		return 1;
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
		return 1;
	}

	/**
	 * \brief uint32_t elements
	 * \details Gets the quantity of uint32_t elements
	 * \returns count_t
	 * \retval the quantity of uint32_t elements
	 */
	uX_constexpr count_t const uX_abi i32_elements(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief uint16_t elements
	 * \details Gets the quantity of uint16_t elements
	 * \returns count_t
	 * \retval the quantity of uint16_t elements
	 */
	uX_constexpr count_t const uX_abi i16_elements(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief uint8_t elements
	 * \details Gets the quantity of uint8_t elements
	 * \returns count_t
	 * \retval the quantity of uint8_t elements
	 */
	uX_constexpr count_t const uX_abi i8_elements(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief uint32_t ptr length
	 * \details Gets the length of uint32_t elements
	 * \returns count_t
	 * \retval the length of uint32_t elements
	 */
	uX_constexpr count_t const uX_abi i32_ptr_length(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief uint16_t ptr length
	 * \details Gets the length of uint16_t elements
	 * \returns count_t
	 * \retval the length of uint16_t elements
	 */
	uX_constexpr count_t const uX_abi i16_ptr_length(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief uint8_t ptr length
	 * \details Gets the length of uint8_t elements
	 * \returns count_t
	 * \retval the length of uint8_t elements
	 */
	uX_constexpr count_t const uX_abi i8_ptr_length(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief uint32_t ptr size
	 * \details Gets the ptr size of uint32_t elements
	 * \returns count_t
	 * \retval the size of uint32_t elements
	 */
	uX_constexpr count_t const uX_abi i32_ptr_size(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief uint16_t ptr size
	 * \details Gets the ptr size of uint16_t elements
	 * \returns count_t
	 * \retval the size of uint16_t elements
	 */
	uX_constexpr count_t const uX_abi i16_ptr_size(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief uint8_t ptr size
	 * \details Gets the ptr size of uint8_t elements
	 * \returns count_t
	 * \retval the size of uint8_t elements
	 */
	uX_constexpr count_t const uX_abi i8_ptr_size(void) const uX_noexcept
	{
		return 8;
	}

	using types = vector1types;
}vecuqword1_t;
#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_xmm_end
namespace_uX_end

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECUQWORD1_H
