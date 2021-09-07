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

#ifndef uX_XMM_VECDOUBLE2_H
#define uX_XMM_VECDOUBLE2_H 1

/**
 * \defgroup uX_XMM_VECDOUBLE2 2 Double Precision SSE SIMD Vector
 * \ingroup uX_NAMESPACE_XMM
 * \file uXxmmvecdouble2.h
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

#ifndef uX_SMM_INTRIN_H
#include "uXsmmintrin.h"
#endif  /* uX_SMM_INTRIN_H */

#ifndef uX_XMM_VECDOUBLE4_H
#include "uXxmmvecdouble4.h"
#endif  /* uX_XMM_VECDOUBLE4_H */

#ifndef uX_XMM_VECDOUBLE3_H
#include "uXxmmvecdouble3.h"
#endif  /* uX_XMM_VECDOUBLE3_H */

#ifndef uX_XMM_VECDOUBLE1_H
#include "uXxmmvecdouble1.h"
#endif  /* uX_XMM_VECDOUBLE1_H */

#ifndef uX_XMM_VECFLOAT4_H
#include "uXxmmvecfloat4.h"
#endif  /* uX_XMM_VECFLOAT4_H */

#ifndef uX_XMM_VECFLOAT2_H
#include "uXxmmvecfloat2.h"
#endif  /* uX_XMM_VECFLOAT2_H */

#ifndef uX_XMM_VECQWORD2_H
#include "uXxmmvecqword2.h"
#endif  /* uX_XMM_VECQWORD2_H */

#ifndef uX_XMM_VECUQWORD2_H
#include "uXxmmvecuqword2.h"
#endif  /* uX_XMM_VECUQWORD2_H */

#ifndef uX_XMM_VECDWORD4_H
#include "uXxmmvecdword4.h"
#endif  /* uX_XMM_VECDWORD4_H */

#ifndef uX_XMM_VECUDWORD4_H
#include "uXxmmvecudword4.h"
#endif  /* uX_XMM_VECUDWORD4_H */

/**
 * \defgroup uX_XMM_VECDOUBLE2_CLASS 2 Double Precision SSE SIMD Vector Class
 * \ingroup uX_XMM_VECDOUBLE2
 * To use these class include the header file \p uXxmmvecdouble2.h in your program
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
 * \ingroup uX_XMM_VECDOUBLE2_CLASS
 * \class vecdouble2
 * \brief SSE SIMD class with the size of 2 double elements
 * \details The \p vecdouble2 class is an 2 elements wide 64bit double element where
	it provides interoperability between \p vecqword2, \p vecuqword2, \p vecfloat4, \p vecdword4 and \p vecudword4 class's
 */
typedef class vecdouble2
{
public:
	vecdouble2()uX_default;
	~vecdouble2()uX_default;

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(vecdouble2 const& InVecxmmd)
	 * \brief Default constructor initialization from vecdouble2
	 * \details Default constructor copies /p vecdouble2
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 */
	uX_constexpr vecdouble2(vecdouble2 const& InVecxmmd) uX_noexcept : _m128_xmmd(InVecxmmd._m128_xmmd) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(vecdouble2&& InVecxmmd)
	 * \brief Default constructor initialization from vecdouble2
	 * \details Default constructor copies /p vecdouble2
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 */
	uX_constexpr vecdouble2(vecdouble2&& InVecxmmd) uX_noexcept : _m128_xmmd(InVecxmmd._m128_xmmd) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(__m128d const Inxmmd)
	 * \brief Constructor initialization from type __m128d
	 * \details Constructor copies _x _y elements from /p __m128d
	 * \param[in] Inxmmd - __m128d Read only
	 * \Note Sets the _x  _y double elements
	 */
	uX_constexpr vecdouble2(__m128d const Inxmmd) uX_noexcept : _m128_xmmd(Inxmmd) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(vecdouble4 const& InVecxmmd)
	 * \brief Constructor initialization from type vecdouble4
	 * \details Constructor copies low _x _y elements from /p vecdouble4
	 * \param[in] InVecxmmd - vecdouble4 Read only
	 * \Note Sets the _x _y double elements
	 */
	uX_constexpr vecdouble2(vecdouble4 const InVecxmmd) uX_noexcept : _m128_xmmd(InVecxmmd.get_xmmd_0()) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(vecdouble3 const& InVecxmmd)
	 * \brief Constructor initialization from type vecdouble3
	 * \details Constructor copies low _x _y elements from /p vecdouble3
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 * \Note Sets the _x _y double elements
	 */
	uX_constexpr vecdouble2(vecdouble3 const InVecxmmd) uX_noexcept : _m128_xmmd(InVecxmmd.get_xmmd_0()) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(vecdouble1 const InVecxmmd)
	 * \brief Constructor initialization from type vecdouble1
	 * \details Constructor copies low _x element from /p vecdouble1 and maintains the high _y element
	 * \param[in] InVecxmmd - vecdouble1 Read only
	 * \Note Sets the _x double element _y element gets copied
	 */
	uX_constexpr vecdouble2(vecdouble1 const InVecxmmd) uX_noexcept : _m128_xmmd(_uX_mm_move_sd(_m128_xmmd, InVecxmmd)) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(vecfloat4 const InVecxmm)
	 * \brief Constructor initialization from type vecfloat4
	 * \details Constructor copies float _x _y _z _w elements from /p vecfloat4
	 * \param[in] InVecxmm - vecfloat4 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x _y double elements
	 */
	uX_constexpr vecdouble2(vecfloat4 const InVecxmm) uX_noexcept : _m128_xmmd(_uX_mm_castps_pd(InVecxmm)) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(vecfloat2 const InVecxmm)
	 * \brief Constructor initialization from type vecfloat2
	 * \details Constructor converts float _x _y elements from /p vecfloat2 to _x _y elements
	 * \param[in] InVecxmm - vecfloat2 Read only
	 * \warning Converts the value from float to double.
	 * \Note Sets the _x _y double elements
	 */
	uX_constexpr vecdouble2(vecfloat2 const InVecxmm) uX_noexcept : _m128_xmmd(_uX_mm_cvtps_pd(InVecxmm)) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(vecqword2 const InVecxmmi)
	 * \brief Constructor initialization from type vecqword2
	 * \details Constructor copies int64 _x _y elements from /p vecqword2 to _x _y elements
	 * \param[in] InVecxmmi - vecqword2 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x _y double elements
	 */
	uX_constexpr vecdouble2(vecqword2 const InVecxmmi) uX_noexcept : _m128_xmmd(_uX_mm_castsi128_pd(InVecxmmi)) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(vecuqword2 const InVecxmmi)
	 * \brief Constructor initialization from type vecuqword2
	 * \details Constructor copies uint64 _x _y elements from /p vecuqword2 to _x _y elements
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x _y double elements
	 */
	uX_constexpr vecdouble2(vecuqword2 const InVecxmmi) uX_noexcept : _m128_xmmd(_uX_mm_castsi128_pd(InVecxmmi)) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(vecdword4 const InVecxmmi)
	 * \brief Constructor initialization from type vecdword2
	 * \details Constructor copies int32 _x _y _z _w elements from /p vecdword4 to _x _y elements
	 * \param[in] InVecxmmi - vecdword4 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x _y double elements
	 */
	uX_constexpr vecdouble2(vecdword4 const InVecxmmi) uX_noexcept : _m128_xmmd(_uX_mm_castsi128_pd(InVecxmmi)) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(vecdword4 const InVecxmmi)
	 * \brief Constructor initialization from type vecdword2
	 * \details Constructor copies uint32 _x _y _z _w elements from /p vecdword4 to _x _y elements
	 * \param[in] InVecxmmi - vecdword4 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x _y double elements
	 */
	uX_constexpr vecdouble2(vecudword4 const InVecxmmi) uX_noexcept : _m128_xmmd(_uX_mm_castsi128_pd(InVecxmmi)) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(double Indouble) uX_noexcept
	 * \brief Constructor initialization from type double
	 * \details Constructor to broadcast the same double value into all elements
	 * \param[in] Indouble - double Read only
	 * \warning Broadcasts same float value to all elements
	 * \Note Sets the _x _y double elements
	 */
	uX_explicit uX_constexpr vecdouble2(double Indouble) uX_noexcept : _m128_xmmd(_uX_mm_set1_pd(Indouble)) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(double Indouble_x, double Indouble_y)
	 * \brief Constructor initialization from 2 double types
	 * \details Constructor copies p/ Indouble_x p/ Indouble_y to _x _y elements respectively
	 * \param[in] Indouble_x - double Read only
	 * \param[in] Indouble_y - double Read only
	 * \Note Sets the _x _y double elements
	 */
	uX_constexpr vecdouble2(double Indouble_x, double Indouble_y) uX_noexcept : _m128_xmmd(_uX_mm_setr_pd(Indouble_x, Indouble_y)) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(bool_t const Inbool)
	 * \brief Constructor initialization from type bool_t
	 * \details Constructor to broadcast the same bool_t value into all elements
	 * \param[in] Inbool - bool_t Read only
	 * \warning Broadcasts same value to all elements
	 * \Note Sets the _x _y double elements
	 */
	uX_explicit uX_constexpr vecdouble2(bool_t const Inbool) uX_noexcept : _m128_xmmd(vecdouble2(vecuqword2(Inbool))) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(bool_t const Inbool_x, bool_t const Inbool_y)
	 * \brief Constructor initialization from 2 bool_t types
	 * \details Constructor copies p/ Inbool_x p/ Inbool_y to _x _y elements respectively
	 * \param[in] Inbool_x - bool_t Read only
	 * \param[in] Inbool_y - bool_t Read only
	 * \Note Sets the _x _y double elements
	 */
	uX_constexpr vecdouble2(bool_t const Inbool_x, bool_t const Inbool_y) uX_noexcept : _m128_xmmd(vecdouble2(vecuqword2(Inbool_x, Inbool_y))) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(bool const Inbool)
	 * \brief Constructor initialization from type bool
	 * \details Constructor to broadcast the same bool value into all elements
	 * \param[in] Inbool - bool Read only
	 * \warning Broadcasts same value to all elements
	 * \Note Sets the _x _y double elements
	 */
	uX_explicit uX_constexpr vecdouble2(bool const Inbool) uX_noexcept : _m128_xmmd(vecdouble2(vecuqword2(Inbool))) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(bool const Inbool_x, bool const Inbool_y)
	 * \brief Constructor initialization from 2 bool types
	 * \details Constructor copies p/ Inbool_x p/ Inbool_y to _x _y elements respectively
	 * \param[in] Inbool_x - bool Read only
	 * \param[in] Inbool_y - bool Read only
	 * \Note Sets the _x _y double elements
	 */
	uX_constexpr vecdouble2(bool const Inbool_x, bool const Inbool_y) uX_noexcept : _m128_xmmd(vecdouble2(vecuqword2(Inbool_x, Inbool_y))) {}

	/**
	 * \fn uX::xmm::vecdouble2::vecdouble2(double const* const Inpdouble)
	 * \brief Constructor initialization from type double*
	 * \details Constructor unaligned copies p/ double[0] p/ double[1] to _x _y elements respectively
	 * \param[in] Inpdouble - double* address Read only
	 * \Note Sets the _x _y double elements
	 */
	uX_explicit uX_constexpr vecdouble2(uX_InReads(2) double const* const Inpdouble) uX_noexcept : _m128_xmmd(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble))) {}

	/**
	 * \brief __m128d type cast operator
	 * \details To convert to __m128d
	 * \returns __m128d
	 */
	uX_constexpr operator __m128d() const uX_noexcept
	{
		return _m128_xmmd;
	}

	/**
	 * \brief vecdouble2 default assignment operator
	 * \details To convert from type vecdouble2
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(vecdouble2 const& InVecxmmd) uX_noexcept
	{
		_m128_xmmd = InVecxmmd;
		return *this;
	}

	/**
	 * \brief vecdouble2 default assignment operator
	 * \details To convert from type vecdouble2
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(vecdouble2&& InVecxmmd) uX_noexcept
	{
		_m128_xmmd = InVecxmmd;
		return *this;
	}

	/**
	 * \brief __m128d assignment operator
	 * \details To convert from type __m128d
	 * \param[in] Inxmmd - __m128d Read only
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(__m128d const Inxmmd) uX_noexcept
	{
		_m128_xmmd = Inxmmd;
		return *this;
	}

	/**
	 * \brief vecdouble4 assignment operator
	 * \details To convert from type vecdouble4
	 * \param[in] InVecxmmd - vecdouble4 Read only
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd = vecdouble2(InVecxmmd);
		return *this;
	}

	/**
	 * \brief vecdouble3 assignment operator
	 * \details To convert from type vecdouble3
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd = vecdouble2(InVecxmmd);
		return *this;
	}

	/**
	 * \brief vecdouble1 assignment operator
	 * \details To convert from type vecdouble1
	 * \param[in] InVecxmmd - vecdouble1 Read only
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(vecdouble1 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd = vecdouble2(InVecxmmd);
		return *this;
	}

	/**
	 * \brief vecfloat4 assignment operator
	 * \details To convert from type vecfloat4
	 * \param[in] InVecxmm - vecfloat4 Read only
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(vecfloat4 const InVecxmm) uX_noexcept
	{
		_m128_xmmd = vecdouble2(InVecxmm);
		return *this;
	}

	/**
	 * \brief vecfloat2 assignment operator
	 * \details To convert from type vecfloat2
	 * \param[in] InVecxmm - vecfloat2 Read only
	 * \returns vecdouble2
	 * \warning Converts the value from float to double.
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(vecfloat2 const InVecxmm) uX_noexcept
	{
		_m128_xmmd = vecdouble2(InVecxmm);
		return *this;
	}

	/**
	 * \brief vecqword2 assignment operator
	 * \details To convert from type vecqword2
	 * \param[in] InVecxmmi - vecqword2 Read only
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(vecqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmd = vecdouble2(InVecxmmi);
		return *this;
	}

	/**
	 * \brief vecuqword2 assignment operator
	 * \details To convert from type vecuqword2
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmd = vecdouble2(InVecxmmi);
		return *this;
	}

	/**
	 * \brief vecdword4 assignment operator
	 * \details To convert from type vecdword4
	 * \param[in] InVecxmmi - vecdword4 Read only
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(vecdword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmd = vecdouble2(InVecxmmi);
		return *this;
	}

	/**
	 * \brief vecudword4 assignment operator
	 * \details To convert from type vecudword4
	 * \param[in] InVecxmmi - vecudword4 Read only
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(vecudword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmd = vecdouble2(InVecxmmi);
		return *this;
	}

	/**
	 * \brief double assignment operator
	 * \details To convert from type double
	 * \param[in] Indouble - double Read only
	 * \returns vecdouble2
	 * \warning Broadcasts same float value to all elements
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(double Indouble) uX_noexcept
	{
		_m128_xmmd = vecdouble2(Indouble);
		return *this;
	}

	/**
	 * \brief bool_t assignment operator
	 * \details To convert from type bool_t
	 * \param[in] Inbool - bool_t Read only
	 * \returns vecdouble2
	 * \warning Broadcasts same float value to all elements
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(bool_t const Inbool) uX_noexcept
	{
		_m128_xmmd = vecdouble2(Inbool);
		return *this;
	}

	/**
	 * \brief bool assignment operator
	 * \details To convert from type bool
	 * \param[in] Inbool - bool Read only
	 * \returns vecdouble2
	 * \warning Broadcasts same float value to all elements
	 */
	uX_constexpr vecdouble2& uX_ABI operator=(bool const Inbool) uX_noexcept
	{
		_m128_xmmd = vecdouble2(Inbool);
		return *this;
	}

	/**
	 * \brief Get vector
	 * \details Gets __m128d vector
	 * \returns __m128d
	 */
	uX_constexpr __m128d uX_ABI get(void) const uX_noexcept
	{
		return _m128_xmmd;
	}

	/**
	 * \brief Get _x
	 * \details Gets _x element from vector
	 * \returns double
	 */
	uX_constexpr double uX_ABI get_x(void) const uX_noexcept
	{
		return _x;
	}

	/**
	 * \brief Get _x _y vector
	 * \details Gets vecdouble2 _x _y vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_ABI get_xy(void) const uX_noexcept
	{
		return vecdouble2(_m128_xmmd);
	}

	/**
	 * \brief Get _y
	 * \details Gets _y element from vector
	 * \returns double
	 */
	uX_constexpr double uX_ABI get_y(void) const uX_noexcept
	{
		return _y;
	}

	/**
	 * \brief Get _y _x vector
	 * \details Gets vecdouble2 _y _x vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_ABI get_yx(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_PERMUTER_PD_IM(_m128_xmmd, 1, 0));
	}

	/**
	 * \brief Get reference to vector
	 * \details Gets reference to __m128d vector
	 * \returns __m128d
	 */
	uX_constexpr __m128d& uX_ABI ref(void) uX_noexcept
	{
		return _m128_xmmd;
	}

	/**
	 * \brief Get reference to _x
	 * \details Gets reference to _x element from vector
	 * \returns double
	 */
	uX_constexpr double& uX_ABI ref_x(void) uX_noexcept
	{
		return _x;
	}

	/**
	 * \brief Get reference to _x _y vector
	 * \details Gets reference to vecdouble2 _x _y vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI ref_xy(void) uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get reference to _y
	 * \details Gets reference to _y element from vector
	 * \returns double
	 */
	uX_constexpr double& uX_ABI ref_y(void) uX_noexcept
	{
		return _y;
	}

	/**
	 * \brief Get reference to _y _x vector
	 * \details Gets reference to vecdouble2 _y _x vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI ref_yx(void) uX_noexcept
	{
		*this = get_yx();
		return *this;
	}

	/**
	 * \brief Set the vector
	 * \details Sets the vector elements
	 * \param[in] Inxmmd - __m128d Read only
	 */
	uX_constexpr void uX_ABI set(__m128d const Inxmmd) uX_noexcept
	{
		_m128_xmmd = Inxmmd;
	}

	/**
	 * \brief Set the vector _x
	 * \details Sets the vector _x element
	 * \param[in] Indouble - double Read only
	 */
	uX_constexpr void uX_ABI set_x(double Indouble) uX_noexcept
	{
		_m128_xmmd = _uX_MM_SETDBL_PD_IM(_m128_xmmd, Indouble, 0);
	}

	/**
	 * \brief Set the vector _x _y
	 * \details Sets the vector _x _y elements
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 */
	uX_constexpr void uX_ABI set_xy(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd = InVecxmmd;
	}

	/**
	 * \brief Set the vector _y
	 * \details Sets the vector _y element
	 * \param[in] Indouble - double Read only
	 */
	uX_constexpr void uX_ABI set_y(double Indouble) uX_noexcept
	{
		_m128_xmmd = _uX_MM_SETDBL_PD_IM(_m128_xmmd, Indouble, 1);
	}

	/**
	 * \brief Set the vector _y _x
	 * \details Sets the vector _y _x elements
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 */
	uX_constexpr void uX_ABI set_yx(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd = _uX_MM_PERMUTER_PD_IM(InVecxmmd, 1, 0);
	}

	/* Bitwise Operators */

	/**
	 * \brief Bitwise function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a andnot \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI andnot(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_andnot_pd(InVecxmmd_b, InVecxmmd_a));
	}

	/**
	 * \brief Bitwise operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a and \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator&(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_and_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Bitwise operator OR
	 * \details Performs the compute or from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a or \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator|(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_or_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Bitwise operator XOR
	 * \details Performs the compute xor from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a xor \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator^(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_xor_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Bitwise operator NOT
	 * \details Performs the compute not from the parameter
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a not \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator~(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_not_pd(InVecxmmd_a));
	}

	/* Logical Operators */

	/**
	 * \brief Logical function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmd_a andnot \p InVecxmmd_b
	 */
	friend uX_constexpr bool_t uX_ABI bandnot(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return _uX_mm_iandnot_pd(InVecxmmd_b, InVecxmmd_a);
	}

	/**
	 * \brief Logical operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmd_a && \p InVecxmmd_b
	 */
	friend uX_constexpr bool_t uX_ABI operator&&(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return _uX_mm_iand_pd(InVecxmmd_a, InVecxmmd_b);
	}

	/**
	 * \brief Logical operator OR
	 * \details Performs the compute OR from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmd_a || \p InVecxmmd_b
	 */
	friend uX_constexpr bool_t uX_ABI operator||(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return _uX_mm_ior_pd(InVecxmmd_a, InVecxmmd_b);
	}

	/**
	 * \brief Logical operator NOT
	 * \details Performs the compute not from the 1 parameter
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns bool_t
	 * \retval the computed boolean not \p InVecxmmd_a
	 */
	friend uX_constexpr bool_t uX_ABI operator!(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_inot_pd(InVecxmmd_a);
	}

	/**
	 * \brief Logical function HORIZONTAL AND
	 * \details Performs the compute horizontal and in all bits from the parameter. Returns true if all bits are 1
	 * \param[in] InVecxmmd_a.
	 * \returns boolean integer
	 */
	friend uX_constexpr bool_t uX_ABI horizontal_and(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_ihand_pd(InVecxmmd_a);
	}

	/**
	 * \brief Logical function HORIZONTAL OR
	 * \details Performs the compute horizontal or in all bits from the parameter. Returns true if at least one bit is 1
	 * \param[in] InVecxmmd_a.
	 * \returns boolean integer.
	 */
	friend uX_constexpr bool_t uX_ABI horizontal_or(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_ihor_pd(InVecxmmd_a);
	}

	/**
	 * \brief Logical operator assignment AND
	 * \details Performs the compute and from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a &= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2& uX_ABI operator&=(vecdouble2& InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble2(_uX_mm_and_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Logical operator assignment OR
	 * \details Performs the compute or from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a |= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2& uX_ABI operator|=(vecdouble2& InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble2(_uX_mm_or_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Logical operator assignment XOR
	 * \details Performs the compute xor from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a ^= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2& uX_ABI operator^=(vecdouble2& InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble2(_uX_mm_xor_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/* Arithmetic Operators */

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] Indouble_b - double broadcast same value to all elements
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a + \p Indouble_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator+(vecdouble2 const InVecxmmd_a, double Indouble_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_add_pd(InVecxmmd_a, _uX_mm_set1_pd(Indouble_b)));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] Indouble_a - double broadcast same value to all elements
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p Indouble_a + \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator+(double Indouble_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_add_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - __m128d Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a + \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator+(vecdouble2 const InVecxmmd_a, __m128d const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_add_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmd_a - __m128d Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a + \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator+(__m128d const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_add_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a + \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator+(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_add_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] Indouble_b - double broadcast same value to all elements
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a - \p Indouble_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator-(vecdouble2 const InVecxmmd_a, double Indouble_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_sub_pd(InVecxmmd_a, _uX_mm_set1_pd(Indouble_b)));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] Indouble_a - double broadcast same value to all elements
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p Indouble_a - \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator-(double Indouble_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_sub_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - __m128d Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a - \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator-(vecdouble2 const InVecxmmd_a, __m128d const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_sub_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmd_a - __m128d Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a - \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator-(__m128d const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_sub_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a - \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator-(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_sub_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] Indouble_b - double broadcast same value to all elements
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a * \p Indouble_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator*(vecdouble2 const InVecxmmd_a, double Indouble_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_mul_pd(InVecxmmd_a, _uX_mm_set1_pd(Indouble_b)));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] Indouble_a - double broadcast same value to all elements
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p Indouble_a * \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator*(double Indouble_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_mul_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - __m128d Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a * \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator*(vecdouble2 const InVecxmmd_a, __m128d const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_mul_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmd_a - __m128d Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a * \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator*(__m128d const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_mul_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a * \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator*(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_mul_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] Indouble_b - double broadcast same value to all elements
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a / \p Indouble_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator/(vecdouble2 const InVecxmmd_a, double Indouble_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_div_pd(InVecxmmd_a, _uX_mm_set1_pd(Indouble_b)));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] Indouble_a - double broadcast same value to all elements
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p Indouble_a / \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator/(double Indouble_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_div_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - __m128d Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a / \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator/(vecdouble2 const InVecxmmd_a, __m128d const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_div_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmd_a - __m128d Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a / \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator/(__m128d const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_div_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a / \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator/(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_div_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator assignment addition
	 * \details Performs the compute addition from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a += \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2& uX_ABI operator+=(vecdouble2& InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble2(_uX_mm_add_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator assignment subtraction
	 * \details Performs the compute subtraction from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a -= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2& uX_ABI operator-=(vecdouble2& InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble2(_uX_mm_sub_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator assignment multiplication
	 * \details Performs the compute multiplication from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a *= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2& uX_ABI operator*=(vecdouble2& InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble2(_uX_mm_mul_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator assignment division
	 * \details Performs the compute division from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a /= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2& uX_ABI operator/=(vecdouble2& InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble2(_uX_mm_div_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/* Unary Operators */

	/**
	 * \brief Unary prefix increment operator
	 * \details Performs the compute prefix increment
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed prefix increment \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2& uX_ABI operator++(vecdouble2& InVecxmmd_a) uX_noexcept
	{
		InVecxmmd_a = InVecxmmd_a + _uX_mm_const_1_pd();
		return InVecxmmd_a;
	}

	/**
	 * \brief Unary prefix decrement operator
	 * \details Performs the compute prefix decrement
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed prefix decrement \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2& uX_ABI operator--(vecdouble2& InVecxmmd_a) uX_noexcept
	{
		InVecxmmd_a = InVecxmmd_a - _uX_mm_const_1_pd();
		return InVecxmmd_a;
	}

	/**
	 * \brief Unary postfix increment operator
	 * \details Performs the compute postfix increment
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed postfix increment \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator++(vecdouble2& InVecxmmd_a, int) uX_noexcept
	{
		vecdouble2 tmpxmm_a0 = InVecxmmd_a;
		InVecxmmd_a = InVecxmmd_a + _uX_mm_const_1_pd();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary postfix decrement operator
	 * \details Performs the compute postfix decrement
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed postfix decrement \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator--(vecdouble2& InVecxmmd_a, int) uX_noexcept
	{
		vecdouble2 tmpxmm_a0 = InVecxmmd_a;
		InVecxmmd_a = InVecxmmd_a - _uX_mm_const_1_pd();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary minus operator
	 * \details Performs the compute minus change sign bit, even for 0, INF and NAN
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed minus \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator-(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_negate_pd(InVecxmmd_a));
	}

	/* Comparison Operators */

	/**
	 * \brief Comparison operator equal
	 * \details Performs the compute equality from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a == \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator==(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_cmpeq_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Comparison operator less than
	 * \details Performs the compute less than from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a < \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator<(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_cmplt_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Comparison operator less than or equal
	 * \details Performs the compute less than or equal from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a <= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator<=(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_cmple_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Comparison operator greater than
	 * \details Performs the compute greater than from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a > \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator>(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_cmpgt_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Comparison operator greater than or equal
	 * \details Performs the compute greater than or equal from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a >= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator>=(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_cmpge_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Comparison operator not equal
	 * \details Performs the compute not equal from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a != \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI operator!=(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_cmpneq_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Index operator
	 * \details Performs element access only, no modification to elements
	 * \param[in] Nindex - count_t
	 * \returns double
	 */
	uX_constexpr double const& uX_ABI operator[](count_t Nindex) const uX_noexcept
	{
		return extract(Nindex);
	}

	/**
	 * \brief Index operator
	 * \details Performs element access and modification to elements
	 * \param[in] Nindex - count_t
	 * \returns double
	 */
	uX_constexpr double& uX_ABI operator[](count_t Nindex) uX_noexcept
	{
		dblrettype = extract(Nindex);
		return dblrettype;
	}

	/**
	 * \brief Load unaligned
	 * \details load from type double* unaligned
	 * \param[in] Inpdouble - double* Read only
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI load(uX_InReads(2) double const* const Inpdouble) uX_noexcept
	{
		_m128_xmmd = _uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble));
		return *this;
	}

	/**
	 * \brief Load aligned
	 * \details load from type double* aligned
	 * \param[in] Inpdouble - double* Read only
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI load_a(uX_InReads(2) double const* const Inpdouble) uX_noexcept
	{
		_m128_xmmd = _uX_mm_load_pd(reinterpret_cast<__m128d const* const>(Inpdouble));
		return *this;
	}

	/**
	 * \brief Store unaligned
	 * \details store to type double* unaligned
	 * \param[out] Outpdouble - double* Write only
	 */
	uX_constexpr void uX_ABI store(uX_OutWrites(2) double* Outpdouble) const uX_noexcept
	{
		_uX_mm_storeu_pd(reinterpret_cast<__m128d*>(Outpdouble), _m128_xmmd);
	}

	/**
	 * \brief Store aligned
	 * \details store to type double* aligned
	 * \param[out] Outpdouble - double* Write only
	 * \warning Outpdouble must be aligned by 16
	 */
	uX_constexpr void uX_ABI store_a(uX_OutWrites(2) double* Outpdouble) const uX_noexcept
	{
		_uX_mm_store_pd(reinterpret_cast<__m128d*>(Outpdouble), _m128_xmmd);
	}

	/**
	 * \brief Insert function
	 * \details Performs the insert element from mask index
	 * \param[in] value - double the value
	 * \param[in] Nindex - count_t the index element to set
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 const uX_ABI insert(double value, count_t Nindex) uX_noexcept
	{
		if(Nindex > 1) return *this;
		_m128_xmmd = _uX_mm_setelts_pd(_m128_xmmd, value, Nindex);
		return *this;
	}

	/**
	 * \brief Extract function
	 * \details Performs the extract element from mask index
	 * \param[in] Nindex - count_t the index element to get
	 * \returns double
	 */
	uX_constexpr double uX_ABI extract(count_t Nindex) const uX_noexcept
	{
		if(Nindex > 1) return 0.0;
		return _uX_mm_cvtelts_dbl(_m128_xmmd, Nindex);
	}

	/**
	 * \brief Set all elements to zero
	 * \details Sets all elements to zero
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI zero(void) uX_noexcept
	{
		_m128_xmmd = _uX_mm_setzero_pd();
		return *this;
	}

	/**
	 * \brief Cut off vector to n elements
	 * \details Performs the Cut off vector to n elements
	 * \param[in] Nindex - count_t the N element's to cut
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_ABI cutoff(count_t Nindex) uX_noexcept
	{
		switch(Nindex)
		{
			case 1:
				_m128_xmmd = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd, _uX_mm_const_0_pd(), 0, 1);
				break;
			case 0:
				_m128_xmmd = _uX_mm_const_0_pd();
				break;
			default:
				break;
		}
		return *this;
	}

	/**
	 * \brief Flip Sign function
	 * \details Performs the flip sign off vector on all elements
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a ^ \p m128d_sign
	 */
	friend uX_constexpr vecdouble2 uX_ABI flip_sign(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_xor_pd(InVecxmmd_a, _uX_mm_const_sign_pd()));
	}

	/**
	 * \brief Test if all elements if is zero
	 * \details Performs the test if all elements are zero
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a == 0.0
	 */
	friend uX_constexpr vecdouble2 uX_ABI is_zero(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_cmpeq_sd(InVecxmmd_a, _uX_mm_const_0_pd()));
	}

	/**
	 * \brief Test if all elements if is zero
	 * \details Performs the test if all elements are zero
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmd_a == 0.0
	 */
	friend uX_constexpr bool_t uX_ABI bis_zero(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_iszero_pd(InVecxmmd_a);
	}

	/**
	 * \brief Select between two operands
	 * \details Performs the selection between two operands
		The first vector is boolean vector mask that chooses between the elements of the second and the third vector
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return s[i] ? a[i] : b[i];
	 * \param[in] InVecxmmd_f - vecdouble2 Read only the boolean vector mask
	 * \param[in] InVecxmmd_a - vecdouble2 Read only the a vector
	 * \param[in] InVecxmmd_b - vecdouble2 Read only the b vector
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_f ? \p InVecxmmd_a : \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI select(vecdouble2 const InVecxmmd_f, vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_select_pd(InVecxmmd_f, InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Conditional add
	 * \details Performs the conditional add in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] + b[i]) : a[i]
	 * \param[in] InVecxmmd_f - vecdouble2 Read only the boolean vector mask
	 * \param[in] InVecxmmd_a - vecdouble2 Read only the a vector
	 * \param[in] InVecxmmd_b - vecdouble2 Read only the b vector
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_f ? \p InVecxmmd_a + InVecxmmd_b: \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI if_add(vecdouble2 const InVecxmmd_f, vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a + (InVecxmmd_f & InVecxmmd_b);
	}

	/**
	 * \brief Conditional subtract
	 * \details Performs the conditional subtract in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] - b[i]) : a[i]
	 * \param[in] InVecxmmd_f - vecdouble2 Read only the boolean vector mask
	 * \param[in] InVecxmmd_a - vecdouble2 Read only the a vector
	 * \param[in] InVecxmmd_b - vecdouble2 Read only the b vector
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_f ? \p InVecxmmd_a - InVecxmmd_b: \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI if_sub(vecdouble2 const InVecxmmd_f, vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a - (InVecxmmd_f & InVecxmmd_b);
	}

	/**
	 * \brief Conditional multiply
	 * \details Performs the conditional multiply in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] * b[i]) : a[i]
	 * \param[in] InVecxmmd_f - vecdouble2 Read only the boolean vector mask
	 * \param[in] InVecxmmd_a - vecdouble2 Read only the a vector
	 * \param[in] InVecxmmd_b - vecdouble2 Read only the b vector
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_f ? \p InVecxmmd_a * InVecxmmd_b: \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI if_mul(vecdouble2 const InVecxmmd_f, vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a * select(InVecxmmd_f, InVecxmmd_b, vecdouble2(_uX_mm_const_1_pd()));
	}

	/**
	 * \brief Conditional division
	 * \details Performs the conditional divide in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] / b[i]) : a[i]
	 * \param[in] InVecxmmd_f - vecdouble2 Read only the boolean vector mask
	 * \param[in] InVecxmmd_a - vecdouble2 Read only the a vector
	 * \param[in] InVecxmmd_b - vecdouble2 Read only the b vector
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_f ? \p InVecxmmd_a / InVecxmmd_b: \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI if_div(vecdouble2 const InVecxmmd_f, vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a / select(InVecxmmd_f, InVecxmmd_b, vecdouble2(_uX_mm_const_1_pd()));
	}

	/**
	 * \brief Change signs on vector at compile time
	 * \details Generates a constant vector at compile time stored in memory, and changes the sign of parameter
		Each index i0 is 1 for changing sign on the corresponding element, 0 for no change
	 * \param[in] i0 - int
	 * \param[in] i1 - int
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p i0 ? \p InVecxmmd_a ^ 0x8000000000000000: \p InVecxmmd_a
	 */
	template <int i0, int i1>
	friend uX_constexpr vecdouble2 uX_ABI change_sign(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		if((i0 | i1) == 0) return InVecxmmd_a;
		return InVecxmmd_a ^ vecdouble2(vecuqword2::constant<i0 ? 0x8000000000000000 : 0, i1 ? 0x8000000000000000 : 0>());
	}

	/**
	 * \brief Sign bit
	 * \details Gives true for elements that have the sign bit set even for -0.0, -INF and -NAN
		Note that sign_bit(vecdouble2(-00f)) gives true, while vecdouble2(-00f) < vecdouble2(00f) gives false
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed sign_bit(InVecxmmd_a)
	 */
	friend uX_constexpr vecdouble2 uX_ABI sign_bit(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_signbit_pd(InVecxmmd_a));
	}

	/**
	 * \brief Sign combine
	 * \details Changes the sign of a when b has the sign bit set
		Same as select(sign_bit(b), -a, a)
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p sign_bit(InVecxmmd_b) ? \p -InVecxmmd_a: \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI sign_combine(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_signcombine_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Is finite
	 * \details Gives true for elements that are normal, denormal or zero, false for INF and NAN
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed isfinite \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI is_finite(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_isfinite_pd(InVecxmmd_a));
	}

	/**
	 * \brief Is inf
	 * \details Gives true for elements that are +INF or -INF, false for finite numbers and NAN
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed isinf \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI is_inf(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_isinf_pd(InVecxmmd_a));
	}

	/**
	 * \brief Is nan
	 * \details Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed isnan \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI is_nan(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_isnan_pd(InVecxmmd_a));
	}

	/**
	 * \brief Is subnormal
	 * \details Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed issubnormal \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI is_subnormal(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_issubnormal_pd(InVecxmmd_a));
	}

	/**
	 * \brief Is zero or subnormal
	 * \details Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed iszeroorsubnormal \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI is_zero_or_subnormal(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_iszeroorsubnormal_pd(InVecxmmd_a));
	}

	/**
	 * \brief Infinite
	 * \details A vector where all elements are +INF
	 * \returns vecdouble2
	 * \retval +INF
	 */
	uX_constexpr vecdouble2& uX_ABI infinite(void) uX_noexcept
	{
		_m128_xmmd = _uX_mm_infinite_pd();
		return *this;
	}

	/**
	 * \brief Nan
	 * \details A vector where all elements are NAN (quiet)
	 * \returns vecdouble2
	 * \retval NAN (quiet)
	 */
	uX_constexpr vecdouble2& uX_ABI nan(void) uX_noexcept
	{
		_m128_xmmd = _uX_mm_nan_pd();
		return *this;
	}

	/**
	 * \brief Is Horizontal add
	 * \details Calculates the sum of all vector elements horizontally
	 * \param InVecxmmd_a the a vector
	 * \return double
	 * \retval _x + _y
	 */
	friend uX_constexpr double uX_ABI horizontal_add(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_horizontaladd_pd(InVecxmmd_a);
	}

	/**
	 * \brief Horizontal sub.
	 * \details Calculates the subtraction of all vector elements horizontally
	 * \param InVecxmmd_a the a vector
	 * \return double
	 * \retval _x - _y
	 */
	friend uX_constexpr double uX_ABI horizontal_sub(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_horizontalsub_pd(InVecxmmd_a);
	}

	/**
	 * \brief Horizontal mull
	 * \details Calculates the multiplication of all vector elements horizontally
	 * \param InVecxmmd_a the a vector
	 * \return double
	 * \retval _x * _y
	 */
	friend uX_constexpr double uX_ABI horizontal_mul(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_horizontalmul_pd(InVecxmmd_a);
	}

	/**
	 * \brief Max
	 * \details Computes the max a > b ? a : b
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed max \p InVecxmmd_a > InVecxmmd_b ? \p InVecxmmd_a: \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI max(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_max_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Min
	 * \details Computes the min a < b ? a : b
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed min \p InVecxmmd_a < InVecxmmd_b ? \p InVecxmmd_a: \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble2 uX_ABI min(vecdouble2 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble2(_uX_mm_min_pd(InVecxmmd_a, InVecxmmd_b));
	}

	/**
	 * \brief Abs
	 * \details Computes the absolute value
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed abs \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI abs(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_abs_pd(InVecxmmd_a));
	}

	/**
	 * \brief Square
	 * \details Computes the a * a
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a * \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI square(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_square_pd(InVecxmmd_a));
	}

	/**
	 * \brief Scale
	 * \details Computes the a * s
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] Indouble_s - double Read only
	 * \returns vecdouble2
	 * \retval the computed \p InVecxmmd_a * \p Indouble_s
	 */
	friend uX_constexpr vecdouble2 uX_ABI scale(vecdouble2 const InVecxmmd_a, double Indouble_s) uX_noexcept
	{
		return vecdouble2(_uX_mm_scale_pd(InVecxmmd_a, Indouble_s));
	}

	/**
	 * \brief rcp
	 * \details Computes the reciprocal
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed rcp \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI rcp(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_rcp_pd(InVecxmmd_a));
	}

	/**
	 * \brief sqrt
	 * \details Computes the square root
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed sqrt \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI sqrt(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_sqrt_pd(InVecxmmd_a));
	}

	/**
	 * \brief rsqrt
	 * \details Computes the reciprocal square root
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \returns vecdouble2
	 * \retval the computed rsqrt \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble2 uX_ABI rsqrt(vecdouble2 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble2(_uX_mm_rsqrt_pd(InVecxmmd_a));
	}

protected:

private:
	union
	{
		__m128d				_m128_xmmd;
		struct
		{
			double			_x, _y;
		};
		double				_m128_dbl[2];
	};
	double					dblrettype;

public:
	/**
	 * \brief vecdouble2 size
	 * \details Gets the vecdouble2 vector size
	 * \returns count_t
	 * \retval the vecdouble2 size
	 */
	uX_constexpr count_t const uX_ABI size(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief vecdouble2 length
	 * \details Gets the vecdouble2 vector length
	 * \returns count_t
	 * \retval the vecdouble2 length
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
	 * \brief xmm double elements
	 * \details Gets the quantity of xmm vector double elements
	 * \returns count_t
	 * \retval the quantity of xmm double elements
	 */
	uX_constexpr count_t const uX_ABI xmm_dbl_elements(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief double size
	 * \details Gets the double size
	 * \returns count_t
	 * \retval the xmm double size
	 */
	uX_constexpr count_t const uX_ABI dbl_size(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief double elements
	 * \details Gets the quantity of double elements
	 * \returns count_t
	 * \retval the quantity of double elements
	 */
	uX_constexpr count_t const uX_ABI dbl_elements(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief double pointer length
	 * \details Gets the length of double pointer
	 * \returns count_t
	 * \retval the length of double pointer
	 */
	uX_constexpr count_t const uX_ABI dbl_ptr_length(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief double pointer size
	 * \details Gets the size of double pointer
	 * \returns count_t
	 * \retval the size of double pointer
	 */
	uX_constexpr count_t const uX_ABI dbl_ptr_size(void) const uX_noexcept
	{
		return 16;
	}

	using types = vector2types;
}vecdouble2_t;
#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECDOUBLE2_H
