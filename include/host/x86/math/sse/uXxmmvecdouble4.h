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

#ifndef uX_XMM_VECDOUBLE4_H
#define uX_XMM_VECDOUBLE4_H 1

/**
 * \defgroup uX_XMM_VECDOUBLE4 4 Double Precision SSE SIMD Vector
 * \ingroup uX_NAMESPACE_XMM
 * \file uXxmmvecdouble4.h
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

#ifndef uX_XMM_VECDOUBLE3_H
#include "uXxmmvecdouble3.h"
#endif  /* uX_XMM_VECDOUBLE3_H */

#ifndef uX_XMM_VECDOUBLE2_H
#include "uXxmmvecdouble2.h"
#endif  /* uX_XMM_VECDOUBLE2_H */

#ifndef uX_XMM_VECDOUBLE1_H
#include "uXxmmvecdouble1.h"
#endif  /* uX_XMM_VECDOUBLE1_H */

#ifndef uX_XMM_VECFLOAT4_H
#include "uXxmmvecfloat4.h"
#endif  /* uX_XMM_VECFLOAT4_H */

#ifndef uX_XMM_VECQWORD4_H
#include "uXxmmvecqword4.h"
#endif  /* uX_XMM_VECQWORD4_H */

#ifndef uX_XMM_VECUQWORD4_H
#include "uXxmmvecuqword4.h"
#endif  /* uX_XMM_VECUQWORD4_H */

/**
 * \defgroup uX_XMM_VECDOUBLE4_CLASS 4 Double Precision SSE SIMD Vector Class
 * \ingroup uX_XMM_VECDOUBLE4
 * To use these class include the header file \p uXxmmvecdouble4.h in your program
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
 * \ingroup uX_XMM_VECDOUBLE4_CLASS
 * \class vecdouble4
 * \brief SSE SIMD class with the size of 4 double elements
 * \details The \p vecdouble4 class is an 4 elements wide 64bit double element where
 *  it provides interoperability between \p vecqword4 and \p vecuqword4 class's
 */
typedef class vecdouble4
{
public:
	vecdouble4()uX_default;
	~vecdouble4()uX_default;

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(vecdouble4 const& InVecxmmd)
	 * \brief Default constructor initialization from vecdouble4
	 * \details Default constructor copies /p vecdouble4
	 * \param[in] InVecxmmd - vecdouble4 Read only
	 */
	uX_constexpr vecdouble4(vecdouble4 const& InVecxmmd) uX_noexcept : _m128_xmmd_0(InVecxmmd._m128_xmmd_0), _m128_xmmd_1(InVecxmmd._m128_xmmd_1) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(vecdouble4&& InVecxmmd)
	 * \brief Default constructor initialization from vecdouble4
	 * \details Default constructor copies /p vecdouble4
	 * \param[in] InVecxmmd - vecdouble4 Read only
	 */
	uX_constexpr vecdouble4(vecdouble4&& InVecxmmd) uX_noexcept : _m128_xmmd_0(InVecxmmd._m128_xmmd_0), _m128_xmmd_1(InVecxmmd._m128_xmmd_1) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(__m128d const Inxmmd)
	 * \brief Constructor initialization from __m128d type
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inxmmd - __m128d Read only
	 * \warning Broadcast the same value into all elements
	 * \Note Sets the _x _y _z double elements in 128bit copy replacement
	 */
	uX_explicit uX_constexpr vecdouble4(__m128d const Inxmmd) uX_noexcept : _m128_xmmd_0(Inxmmd), _m128_xmmd_1(Inxmmd) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(__m128d const Inxmmd_0, __m128d const Inxmmd_1)
	 * \brief Constructor initialization from 2 __m128d types
	 * \details Constructor copies _x _y _z elements from 2 /p __m128d
	 * \param[in] Inxmmd_0 - __m128d Read only
	 * \param[in] Inxmmd_1 - __m128d Read only
	 */
	uX_constexpr vecdouble4(__m128d const Inxmmd_0, __m128d const Inxmmd_1) uX_noexcept : _m128_xmmd_0(Inxmmd_0), _m128_xmmd_1(Inxmmd_1) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(vecdouble3 const InVecxmmd)
	 * \brief Constructor initialization from vecdouble3 type
	 * \details Constructor copies _x _y _z elements from /p vecdouble3 and maintains _z element from /p vecdouble4
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 * \Note Sets the _x  _y _z double elements
	 */
	uX_constexpr vecdouble4(vecdouble3 const InVecxmmd) uX_noexcept : _m128_xmmd_0(InVecxmmd.get_xmmd_0()), _m128_xmmd_1(_uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_xmmd_1(), _m128_xmmd_1, 0, 1)) {}
	
	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(vecdouble3 const InVecxmmd_a, vecdouble1 const InVecxmmd_b)
	 * \brief Constructor initialization from vecdouble3 and vecdouble1 types
	 * \details Constructor copies _x _y _z elements from /p vecdouble3 and copies _w element from /p vecdouble1
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble1 Read only
	 */
	uX_constexpr vecdouble4(vecdouble3 const InVecxmmd_a, vecdouble1 const InVecxmmd_b) uX_noexcept : _m128_xmmd_0(InVecxmmd_a.get_xmmd_0())
																									, _m128_xmmd_1(_uX_mm_unpacklo_pd(InVecxmmd_a.get_xmmd_1(), InVecxmmd_b)) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(vecdouble1 const InVecxmmd_a, vecdouble3 const InVecxmmd_b)
	 * \brief Constructor initialization from vecdouble1 and vecdouble3 types
	 * \details Constructor copies _x element from /p vecdouble1 and copies _y _z _w elements from /p vecdouble3
	 * \param[in] InVecxmmd_a - vecdouble1 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 */
	uX_constexpr vecdouble4(vecdouble1 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept : _m128_xmmd_0(_uX_mm_unpacklo_pd(InVecxmmd_a, InVecxmmd_b.get_xmmd_0()))
																									, _m128_xmmd_1(_uX_MM_SHUFFLER_PD_IM(InVecxmmd_b.get_xmmd_0(), InVecxmmd_b.get_xmmd_1(), 1, 0)) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(vecdouble2 const InVecxmmd)
	 * \brief Constructor initialization from vecdouble2 type
	 * \details Constructor copies _x _y elements from /p vecdouble2 and maintains _z _w element from /p vecdouble4
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 * \Note Sets the _x  _y double elements
	 */
	uX_constexpr vecdouble4(vecdouble2 const InVecxmmd) uX_noexcept : _m128_xmmd_0(InVecxmmd) {}
	
	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(vecdouble2 const InVecxmmd_0, vecdouble2 const InVecxmmd_1)
	 * \brief Constructor initialization from 2 vecdouble2 types
	 * \details Constructor copies _x _y _z _w elements from 2 /p vecdouble2
	 * \param[in] InVecxmmd_0 - vecdouble2 Read only
	 * \param[in] InVecxmmd_1 - vecdouble2 Read only
	 */
	uX_constexpr vecdouble4(vecdouble2 const InVecxmmd_0, vecdouble2 const InVecxmmd_1) uX_noexcept : _m128_xmmd_0(InVecxmmd_0), _m128_xmmd_1(InVecxmmd_1) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(vecdouble1 const InVecxmmd)
	 * \brief Constructor initialization from vecdouble1 type
	 * \details Constructor copies _x element from /p vecdouble1 and maintains _y _z _w elements from /p vecdouble4
	 * \param[in] InVecxmmd - vecdouble1 Read only
	 */
	uX_constexpr vecdouble4(vecdouble1 const InVecxmmd) uX_noexcept : _m128_xmmd_0(_uX_mm_move_sd(_m128_xmmd_0, InVecxmmd)) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(vecfloat4 const InVecxmm) uX_noexcept
	 * \brief Constructor initialization from type vecfloat4
	 * \details Constructor converts float _x _y _z _w elements from /p vecfloat4 to _x _y _z _w elements
	 * \param[in] InVecxmm - vecfloat4 Read only
	 * \warning Converts the value from float to double.
	 * \Note Sets the _x _y _z _w double elements
	 */
	uX_constexpr vecdouble4(vecfloat4 const InVecxmm) uX_noexcept : _m128_xmmd_0(_uX_mm_cvtps_pd(InVecxmm)), _m128_xmmd_1(_uX_mm_cvtps_pd(InVecxmm.get_zwxy())) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(vecqword4 const InVecxmmi)
	 * \brief Constructor initialization from vecqword4 type
	 * \details Constructor copies _x _y _z _w elements from /p vecqword4
	 * \param[in] InVecxmmi - vecqword4 Read only
	 */
	uX_constexpr vecdouble4(vecqword4 const InVecxmmi) uX_noexcept : _m128_xmmd_0(_uX_mm_castsi128_pd(InVecxmmi.get_xmmi_0())), _m128_xmmd_1(_uX_mm_castsi128_pd(InVecxmmi.get_xmmi_1())) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(vecuqword4 const InVecxmmi)
	 * \brief Constructor initialization from vecuqword4 type
	 * \details Constructor copies _x _y _z _w elements from /p vecuqword4
	 * \param[in] InVecxmmi - vecuqword4 Read only
	 */
	uX_constexpr vecdouble4(vecuqword4 const InVecxmmi) uX_noexcept : _m128_xmmd_0(_uX_mm_castsi128_pd(InVecxmmi.get_xmmi_0())), _m128_xmmd_1(_uX_mm_castsi128_pd(InVecxmmi.get_xmmi_1())) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(double const Indouble)
	 * \brief Constructor initialization from double type
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Indouble - double Read only
	 * \warning Broadcast the same value into all elements
	 */
	uX_explicit uX_constexpr vecdouble4(double Indouble) uX_noexcept : _m128_xmmd_0(_uX_mm_set1_pd(Indouble)), _m128_xmmd_1(_uX_mm_set1_pd(Indouble)) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(double const Indouble_x, double const Indouble_y, double const Indouble_z, double const Indouble_w)
	 * \brief Constructor initialization from 4 double types
	 * \details Constructor initialization from 4 double types
	 * \param[in] Indouble_x - double Read only
	 * \param[in] Indouble_y - double Read only
	 * \param[in] Indouble_z - double Read only
	 * \param[in] Indouble_w - double Read only
	 */
	uX_constexpr vecdouble4(double Indouble_x, double Indouble_y, double Indouble_z, double Indouble_w) uX_noexcept : _m128_xmmd_0(_uX_mm_setr_pd(Indouble_x, Indouble_y)), _m128_xmmd_1(_uX_mm_setr_pd(Indouble_z, Indouble_w)) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(bool_t const Inbool)
	 * \brief Constructor initialization from type bool_t
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inbool - bool_t Read only
	 */
	uX_explicit uX_constexpr vecdouble4(bool_t const Inbool) uX_noexcept : _m128_xmmd_0(vecdouble2(vecuqword2(Inbool))), _m128_xmmd_1(vecdouble2(vecuqword2(Inbool))) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(bool_t const Inbool_x, bool_t const Inbool_y, bool_t const Inbool_z, bool_t const Inbool_w)
	 * \brief Constructor initialization from 4 bool_t types
	 * \details Constructor initialization from 4 bool_t types
	 * \param[in] Inbool_x - bool_t Read only
	 * \param[in] Inbool_y - bool_t Read only
	 * \param[in] Inbool_z - bool_t Read only
	 * \param[in] Inbool_w - bool_t Read only
	 */
	uX_constexpr vecdouble4(bool_t const Inbool_x, bool_t const Inbool_y, bool_t const Inbool_z, bool_t const Inbool_w) uX_noexcept : _m128_xmmd_0(vecdouble2(vecuqword2(Inbool_x, Inbool_y)))
																																	, _m128_xmmd_1(vecdouble2(vecuqword2(Inbool_z, Inbool_w))) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(bool const Inbool)
	 * \brief Constructor initialization from type bool
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inbool - bool Read only
	 */
	uX_explicit uX_constexpr vecdouble4(bool const Inbool) uX_noexcept : _m128_xmmd_0(vecdouble2(vecuqword2(Inbool))), _m128_xmmd_1(vecdouble2(vecuqword2(Inbool))) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(bool const Inbool_x, bool const Inbool_y, bool const Inbool_z, bool const Inbool_w)
	 * \brief Constructor initialization from 4 bool types
	 * \details Constructor initialization from 4 bool types
	 * \param[in] Inbool_x - bool Read only
	 * \param[in] Inbool_y - bool Read only
	 * \param[in] Inbool_z - bool Read only
	 * \param[in] Inbool_w - bool Read only
	 */
	uX_constexpr vecdouble4(bool const Inbool_x, bool const Inbool_y, bool const Inbool_z, bool const Inbool_w) uX_noexcept : _m128_xmmd_0(vecdouble2(vecuqword2(Inbool_x, Inbool_y)))
																															, _m128_xmmd_1(vecdouble2(vecuqword2(Inbool_z, Inbool_w))) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(__m128d const* const Inpxmmd)
	 * \brief Constructor initialization from __m128d pointer type
	 * \details Constructor initialization from __m128d pointer type with size of 2 __m128d
	 * \param[in] Inpxmmd - __m128d* Read only
	 * \Note The __m128d pointer is expected to be unaligned
	 */
	uX_explicit uX_constexpr vecdouble4(uX_InReads(2) __m128d const* const Inpxmmd) uX_noexcept : _m128_xmmd_0(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpxmmd)))
																								, _m128_xmmd_1(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpxmmd+1))) {}

	/**
	 * \fn uX::xmm::vecdouble4::vecdouble4(double const* const Inpdouble)
	 * \brief Constructor initialization from double pointer type
	 * \details Constructor initialization from double pointer type with size of 4 double types
	 * \param[in] Inpdouble - double* Read only
	 * \Note The double pointer is expected to be unaligned
	 */
	uX_explicit uX_constexpr vecdouble4(uX_InReads(4) double const* const Inpdouble) uX_noexcept : _m128_xmmd_0(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble)))
																								, _m128_xmmd_1(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble+2))) {}

	/**
	 * \brief vecdouble4 default assignment operator
	 * \details To convert from vecdouble4 type
	 * \param[in] InVecxmmd - vecdouble4 Read only
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi operator=(vecdouble4 const& InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd._m128_xmmd_0;
		_m128_xmmd_1 = InVecxmmd._m128_xmmd_1;
		return *this;
	}

	/**
	 * \brief vecdouble4 default assignment operator
	 * \details To convert from vecdouble4 type
	 * \param[in] InVecxmmd - vecdouble4 Read only
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi operator=(vecdouble4&& InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd._m128_xmmd_0;
		_m128_xmmd_1 = InVecxmmd._m128_xmmd_1;
		return *this;
	}

	/**
	 * \brief __m128d assignment operator
	 * \details To convert from __m128d type
	 * \param[in] Inxmmd - __m128d Read only
	 * \returns vecdouble4
	 * \warning Broadcast the same value into all elements
	 */
	uX_constexpr vecdouble4& uX_abi operator=(__m128d const Inxmmd) uX_noexcept
	{
		_m128_xmmd_0 = Inxmmd;
		_m128_xmmd_1 = Inxmmd;
		return *this;
	}

	/**
	 * \brief vecdouble3 assignment operator
	 * \details To convert from vecdouble3 type
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi operator=(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_xmmd_0();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_xmmd_1(), _m128_xmmd_1, 0, 1);
		return *this;
	}

	/**
	 * \brief vecdouble2 assignment operator
	 * \details To convert from vecdouble2 type
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi operator=(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd;
		return *this;
	}

	/**
	 * \brief vecdouble1 assignment operator
	 * \details To convert from vecdouble1 type
	 * \param[in] InVecxmmd - vecdouble1 Read only
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi operator=(vecdouble1 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_move_sd(_m128_xmmd_0, InVecxmmd);
		return *this;
	}

	/**
	 * \brief vecfloat4 assignment operator
	 * \details To convert from vecfloat4 type
	 * \param[in] InVecxmm - vecfloat4 Read only
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi operator=(vecfloat4 const InVecxmm) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_cvtps_pd(InVecxmm);
		_m128_xmmd_1 = _uX_mm_cvtps_pd(InVecxmm.get_zwxy());
		return *this;
	}

	/**
	 * \brief vecqword4 assignment operator
	 * \details To convert from vecqword4 type
	 * \param[in] InVecxmmi - vecqword4 Read only
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi operator=(vecqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_castsi128_pd(InVecxmmi.get_xmmi_0());
		_m128_xmmd_1 = _uX_mm_castsi128_pd(InVecxmmi.get_xmmi_1());
		return *this;
	}

	/**
	 * \brief vecuqword4 assignment operator
	 * \details To convert from vecuqword4 type
	 * \param[in] InVecxmmi - vecuqword4 Read only
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi operator=(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_castsi128_pd(InVecxmmi.get_xmmi_0());
		_m128_xmmd_1 = _uX_mm_castsi128_pd(InVecxmmi.get_xmmi_1());
		return *this;
	}

	/**
	 * \brief double assignment operator
	 * \details To broadcast the same double value into all elements
	 * \param[in] Indouble - double Read only
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi operator=(double Indouble) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_set1_pd(Indouble);
		_m128_xmmd_1 = _uX_mm_set1_pd(Indouble);
		return *this;
	}

	/**
	 * \brief bool_t assignment operator
	 * \details To broadcast the same bool_t value into all elements
	 * \param[in] Inbool - bool_t Read only
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi operator=(bool_t const Inbool) uX_noexcept
	{
		_m128_xmmd_0 = vecdouble2(vecuqword2(Inbool, Inbool));
		_m128_xmmd_1 = vecdouble2(vecuqword2(Inbool, Inbool));
		return *this;
	}

	/**
	 * \brief bool assignment operator
	 * \details To broadcast the same bool value into all elements
	 * \param[in] Inbool - bool Read only
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi operator=(bool const Inbool) uX_noexcept
	{
		_m128_xmmd_0 = vecdouble2(vecuqword2(Inbool, Inbool));
		_m128_xmmd_1 = vecdouble2(vecuqword2(Inbool, Inbool));
		return *this;
	}

	/**
	 * \brief Get vector 0
	 * \details Gets __m128d 0 vector
	 * \returns __m128d
	 */
	uX_constexpr __m128d uX_abi get_xmmd_0(void) const uX_noexcept
	{
		return _m128_xmmd_0;
	}

	/**
	 * \brief Get vector 1
	 * \details Gets __m128d 1 vector
	 * \returns __m128d
	 */
	uX_constexpr __m128d uX_abi get_xmmd_1(void) const uX_noexcept
	{
		return _m128_xmmd_1;
	}

	/**
	 * \brief Get reference to vector 0
	 * \details Gets __m128d reference to vector 1
	 * \returns __m128d
	 */
	uX_constexpr __m128d& uX_abi ref_xmmd_0(void) uX_noexcept
	{
		return _m128_xmmd_0;
	}

	/**
	 * \brief Get reference to vector 1
	 * \details Gets __m128d reference to vector 1
	 * \returns __m128d
	 */
	uX_constexpr __m128d& uX_abi ref_xmmd_1(void) uX_noexcept
	{
		return _m128_xmmd_1;
	}

	/**
	 * \brief Set the vector 0
	 * \details Sets the vector 0 elements
	 * \param[in] Inxmmd - __m128d Read only
	 */
	uX_constexpr void uX_abi set_xmmd_0(__m128d const Inxmmd) uX_noexcept
	{
		_m128_xmmd_0 = Inxmmd;
	}

	/**
	 * \brief Set the vector 1
	 * \details Sets the vector 1 elements
	 * \param[in] Inxmmd - __m128d Read only
	 */
	uX_constexpr void uX_abi set_xmmd_1(__m128d const Inxmmd) uX_noexcept
	{
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(Inxmmd, __m128d_false, 0, 0);
	}

	/**
	 * \brief Get vector
	 * \details Gets vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get(void) const uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get _x
	 * \details Gets _x element from vector
	 * \returns double
	 */
	uX_constexpr double uX_abi get_x(void) const uX_noexcept
	{
		return _x;
	}

	/**
	 * \brief Get _x _y vector
	 * \details Gets _x _y vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_xy(void) const uX_noexcept
	{
		return vecdouble2(_m128_xmmd_0);
	}

	/**
	 * \brief Get _x _y _z vector
	 * \details Gets _x _y _z vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_xyz(void) const uX_noexcept
	{
		return vecdouble3(_m128_xmmd_0, _m128_xmmd_1);
	}

	/**
	 * \brief Get _x _y _z _w vector
	 * \details Gets _x _y _z _w elements vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_xyzw(void) const uX_noexcept
	{
		return vecdouble4(_m128_xmmd_0, _m128_xmmd_1);
	}

	/**
	 * \brief Get _x _y _w
	 * \details Gets _x _y _w elements vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_xyw(void) const uX_noexcept
	{
		return vecdouble3(_m128_xmmd_0, _uX_MM_PERMUTER_PD_IM(_m128_xmmd_1, 1, 1));
	}

	/**
	 * \brief Get _x _y _w _z
	 * \details Gets _x _y _w _z elements vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_xywz(void) const uX_noexcept
	{
		return vecdouble4(_m128_xmmd_0, _uX_MM_PERMUTER_PD_IM(_m128_xmmd_1, 1, 0));
	}

	/**
	 * \brief Get _x _z
	 * \details Gets _x _z elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_xz(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 0));
	}

	/**
	 * \brief Get _x _z _y
	 * \details Gets _x _z _y elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_xzy(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 0), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 1));
	}

	/**
	 * \brief Get _x _z _y _w
	 * \details Gets _x _z _y _w elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_xzyw(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 0), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 1));
	}

	/**
	 * \brief Get _x _z _w
	 * \details Gets _x _z _w elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_xzw(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 0), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_1, 1, 1));
	}

	/**
	 * \brief Get _x _z _w _y
	 * \details Gets _x _z _w _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_xzwy(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 0), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 1));
	}

	/**
	 * \brief Get _x _w
	 * \details Gets _x _w elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_xw(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 1));
	}

	/**
	 * \brief Get _x _w _y
	 * \details Gets _x _w _y elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_xwy(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 1), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 1));
	}

	/**
	 * \brief Get _x _w _y _z
	 * \details Gets _x _w _y _z elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_xwyz(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 1), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 0));
	}

	/**
	 * \brief Get _x _w _z
	 * \details Gets _x _w _z elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_xwz(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 1), _m128_xmmd_1);
	}

	/**
	 * \brief Get _x _w _z _y
	 * \details Gets _x _w _z _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_xwzy(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 1), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 1));
	}

	/**
	 * \brief Get _y
	 * \details Gets _y element from vector
	 * \returns double
	 */
	uX_constexpr double uX_abi get_y(void) const uX_noexcept
	{
		return _y;
	}

	/**
	 * \brief Get _y _x
	 * \details Gets _y _x elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_yx(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 0));
	}

	/**
	 * \brief Get _y _x _z
	 * \details Gets _y _x _z elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_yxz(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 0), _m128_xmmd_1);
	}

	/**
	 * \brief Get _y _x _z _w
	 * \details Gets _y _x _z _w elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_yxzw(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 0), _m128_xmmd_1);
	}

	/**
	 * \brief Get _y _x _w
	 * \details Gets _y _x _w elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_yxw(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_1, 1, 1));
	}

	/**
	 * \brief Get _y _x _w _z
	 * \details Gets _y _x _w _z elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_yxwz(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_1, 1, 0));
	}

	/**
	 * \brief Get _y _z
	 * \details Gets _y _z elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_yz(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 0));
	}

	/**
	 * \brief Get _y _z _x
	 * \details Gets _y _z _x elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_yzx(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 0), _m128_xmmd_0);
	}

	/**
	 * \brief Get _y _z _x _w
	 * \details Gets _y _z _x _w elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_yzxw(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 0), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 1));
	}

	/**
	 * \brief Get _y _z _w
	 * \details Gets _y _z _w elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_yzw(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_1, 1, 1));
	}

	/**
	 * \brief Get _y _z _w _x
	 * \details Gets _y _z _w _x elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_yzwx(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 0), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 0));
	}

	/**
	 * \brief Get _y _w
	 * \details Gets _y _w elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_yw(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 1));
	}

	/**
	 * \brief Get _y _w _x
	 * \details Gets _y _w _x elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_ywx(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 1), _m128_xmmd_0);
	}

	/**
	 * \brief Get _y _w _y _z
	 * \details Gets _y _w _y _z elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_ywxz(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 1), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 0));
	}

	/**
	 * \brief Get _y _w _z
	 * \details Gets _y _w _z elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_ywz(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 1), _m128_xmmd_1);
	}

	/**
	 * \brief Get _y _w _z _y
	 * \details Gets _y _w _z _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_ywzx(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 1), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 0));
	}

	/**
	 * \brief Get _z
	 * \details Gets _z element from vector
	 * \returns double
	 */
	uX_constexpr double uX_abi get_z(void) const uX_noexcept
	{
		return _z;
	}

	/**
	 * \brief Get _z _x
	 * \details Gets _z _x elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_zx(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 0));
	}

	/**
	 * \brief Get _z _x _y
	 * \details Gets _z _x _y elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_zxy(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 0), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 1));
	}

	/**
	 * \brief Get _z _x _y _w
	 * \details Gets _z _x _y _w elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_zxyw(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 0), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 1));
	}

	/**
	 * \brief Get _z _x _w
	 * \details Gets _z _x _w elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_zxw(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 0), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_1, 1, 1));
	}

	/**
	 * \brief Get _z _x _w _y
	 * \details Gets _z _x _w _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_zxwy(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 0), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 1));
	}

	/**
	 * \brief Get _z _y
	 * \details Gets _z _y elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_zy(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 1));
	}

	/**
	 * \brief Get _z _y _x
	 * \details Gets _z _y _x elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_zyx(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 1), _m128_xmmd_0);
	}

	/**
	 * \brief Get _z _y _x _w
	 * \details Gets _z _y _x _w elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_zyxw(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 1), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 1));
	}

	/**
	 * \brief Get _z _y _w
	 * \details Gets _z _y _w elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_zyw(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 1), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_1, 1, 1));
	}

	/**
	 * \brief Get _z _y _w _x
	 * \details Gets _z _y _w _x elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_zywx(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 1), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 0));
	}

	/**
	 * \brief Get _z _w
	 * \details Gets _z _w elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_zw(void) const uX_noexcept
	{
		return vecdouble2(_m128_xmmd_1);
	}

	/**
	 * \brief Get _z _w _x
	 * \details Gets _z _w _x elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_zwx(void) const uX_noexcept
	{
		return vecdouble3(_m128_xmmd_1, _m128_xmmd_0);
	}

	/**
	 * \brief Get _z _w _x _y
	 * \details Gets _z _w _x _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_zwxy(void) const uX_noexcept
	{
		return vecdouble4(_m128_xmmd_1, _m128_xmmd_0);
	}

	/**
	 * \brief Get _z _w _y
	 * \details Gets _z _w _y elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_zwy(void) const uX_noexcept
	{
		return vecdouble3(_m128_xmmd_1, _uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 1));
	}

	/**
	 * \brief Get _z _w _y _x
	 * \details Gets _z _w _y _x elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_zwyx(void) const uX_noexcept
	{
		return vecdouble4(_m128_xmmd_1, _uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 0));
	}

	/**
	 * \brief Get _w
	 * \details Gets _w element from vector
	 * \returns double
	 */
	uX_constexpr double uX_abi get_w(void) const uX_noexcept
	{
		return _w;
	}

	/**
	 * \brief Get _w _x
	 * \details Gets _w _x elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_wx(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 0));
	}

	/**
	 * \brief Get _w _x _y
	 * \details Gets _w _x _y elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_wxy(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 1));
	}

	/**
	 * \brief Get _w _x _y _z
	 * \details Gets _w _x _y _z elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_wxyz(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 0), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 0));
	}

	/**
	 * \brief Get _w _x _z
	 * \details Gets _w _x _z elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_wxz(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 0), _m128_xmmd_1);
	}

	/**
	 * \brief Get _w _x _z _y
	 * \details Gets _w _x _z _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_wxzy(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 0), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 1));
	}

	/**
	 * \brief Get _w _y
	 * \details Gets _w _y elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_wy(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 1));
	}

	/**
	 * \brief Get _w _y _x
	 * \details Gets _w _y _x elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_wyx(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 1), _m128_xmmd_0);
	}

	/**
	 * \brief Get _w _y _x _z
	 * \details Gets _w _y _x _z elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_wyxz(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 1), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 0));
	}

	/**
	 * \brief Get _w _y _z
	 * \details Gets _w _y _z elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_wyz(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 1), _m128_xmmd_1);
	}

	/**
	 * \brief Get _w _y _z _x
	 * \details Gets _w _y _z _x elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_wyzx(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 1, 1), _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 0));
	}

	/**
	 * \brief Get _w _z
	 * \details Gets _w _z elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_wz(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_PERMUTER_PD_IM(_m128_xmmd_1, 1, 0));
	}

	/**
	 * \brief Get _w _z _x
	 * \details Gets _w _z _x elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_wzx(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_PERMUTER_PD_IM(_m128_xmmd_1, 1, 0), _m128_xmmd_0);
	}

	/**
	 * \brief Get _w _z _x _y
	 * \details Gets _w _z _x _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_wzxy(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_PERMUTER_PD_IM(_m128_xmmd_1, 1, 0), _m128_xmmd_0);
	}

	/**
	 * \brief Get _w _z _y
	 * \details Gets _w _z _y elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_wzy(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_PERMUTER_PD_IM(_m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 1));
	}

	/**
	 * \brief Get _w _z _y _x
	 * \details Gets _w _z _y _x elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4 uX_abi get_wzyx(void) const uX_noexcept
	{
		return vecdouble4(_uX_MM_PERMUTER_PD_IM(_m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 0));
	}

	/**
	 * \brief Get reference to vector
	 * \details Gets reference to vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref(void) uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get reference to _x
	 * \details Gets reference to _x element from vector
	 * \returns double
	 */
	uX_constexpr double& uX_abi ref_x(void) uX_noexcept
	{
		return _x;
	}

	/**
	 * \brief Get reference to _x _y
	 * \details Gets reference to _x _y elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_xy(void) uX_noexcept
	{
		vecdbl2rettype = get_xy();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _x _y _z
	 * \details Gets reference to _x _y _z elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_xyz(void) uX_noexcept
	{
		vecdbl3rettype = get_xyz();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _x _y _z _w
	 * \details Gets reference to _x _y _z _w elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_xyzw(void) uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get reference to _x _y _w
	 * \details Gets reference too _x _y _w elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_xyw(void) uX_noexcept
	{
		vecdbl3rettype = get_xyw();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _x _y _w _z
	 * \details Gets reference to _x _y _w _z elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_xywz(void) uX_noexcept
	{
		*this = get_xywz();
		return *this;
	}

	/**
	 * \brief Get reference to _x _z
	 * \details Gets reference to _x _z elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_xz(void) uX_noexcept
	{
		vecdbl2rettype = get_xz();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _x _z _y
	 * \details Gets reference to _x _z _y elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_xzy(void) uX_noexcept
	{
		vecdbl3rettype = get_xzy();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _x _z _y _w
	 * \details Gets reference to _x _z _y _w elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_xzyw(void) uX_noexcept
	{
		*this = get_xzyw();
		return *this;
	}

	/**
	 * \brief Get reference to _x _z _w
	 * \details Gets reference to _x _z _w elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_xzw(void) uX_noexcept
	{
		vecdbl3rettype = get_xzw();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _x _z _w _y
	 * \details Gets reference to _x _z _w _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_xzwy(void) uX_noexcept
	{
		*this = get_xzwy();
		return *this;
	}

	/**
	 * \brief Get reference to _x _w
	 * \details Gets reference to _x _w elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_xw(void) uX_noexcept
	{
		vecdbl2rettype = get_xw();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _x _w _y
	 * \details Gets reference to _x _w _y elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_xwy(void) uX_noexcept
	{
		vecdbl3rettype = get_xwy();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _x _w _y _z
	 * \details Gets reference to _x _w _y _z elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_xwyz(void) uX_noexcept
	{
		*this = get_xwyz();
		return *this;
	}

	/**
	 * \brief Get reference to _x _w _z
	 * \details Gets reference to _x _w _z elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_xwz(void) uX_noexcept
	{
		vecdbl3rettype = get_xwz();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _x _w _z _y
	 * \details Gets reference to _x _w _z _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_xwzy(void) uX_noexcept
	{
		*this = get_xwzy();
		return *this;
	}

	/**
	 * \brief Get reference to _y
	 * \details Gets reference to _y elements from vector
	 * \returns double
	 */
	uX_constexpr double& uX_abi ref_y(void) uX_noexcept
	{
		return _y;
	}

	/**
	 * \brief Get reference to _y _x
	 * \details Gets reference to _y _x elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_yx(void) uX_noexcept
	{
		vecdbl2rettype = get_yx();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _y _x _z
	 * \details Gets reference to _y _x _z elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_yxz(void) uX_noexcept
	{
		vecdbl3rettype = get_yxz();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _y _x _z _w
	 * \details Gets reference to _y _x _z _w elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_yxzw(void) uX_noexcept
	{
		*this = get_yxzw();
		return *this;
	}

	/**
	 * \brief Get reference to _y _x _w
	 * \details Gets reference to _y _x _w elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_yxw(void) uX_noexcept
	{
		vecdbl3rettype = get_yxw();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _y _x _w _z
	 * \details Gets reference to _y _x _w _z elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_yxwz(void) uX_noexcept
	{
		*this = get_yxwz();
		return *this;
	}

	/**
	 * \brief Get reference to _y _z
	 * \details Gets reference to _y _z elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_yz(void) uX_noexcept
	{
		vecdbl2rettype = get_yz();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _y _z _x
	 * \details Gets reference to _y _z _x elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_yzx(void) uX_noexcept
	{
		vecdbl3rettype = get_yzx();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _y _z _x _w
	 * \details Gets reference to _y _z _x _w elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_yzxw(void) uX_noexcept
	{
		*this = get_yzxw();
		return *this;
	}

	/**
	 * \brief Get reference to _y _z _w
	 * \details Gets reference to _y _z _w elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_yzw(void) uX_noexcept
	{
		vecdbl3rettype = get_yzw();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _y _z _w _x
	 * \details Gets reference to _y _z _w _x elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_yzwx(void) uX_noexcept
	{
		*this = get_yzwx();
		return *this;
	}

	/**
	 * \brief Get reference to _y _w
	 * \details Gets reference to _y _w elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_yw(void) uX_noexcept
	{
		vecdbl2rettype = get_yw();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _y _w _x
	 * \details Gets reference to _y _w _x elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_ywx(void) uX_noexcept
	{
		vecdbl3rettype = get_ywx();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _y _w _y _z
	 * \details Gets reference to _y _w _y _z elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_ywxz(void) uX_noexcept
	{
		*this = get_ywxz();
		return *this;
	}

	/**
	 * \brief Get reference to _y _w _z
	 * \details Gets reference to _y _w _z elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_ywz(void) uX_noexcept
	{
		vecdbl3rettype = get_ywz();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _y _w _z _y
	 * \details Gets reference to _y _w _z _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_ywzx(void) uX_noexcept
	{
		*this = get_ywzx();
		return *this;
	}

	/**
	 * \brief Get reference to _z
	 * \details Gets reference to _z element from vector
	 * \returns double
	 */
	uX_constexpr double& uX_abi ref_z(void) uX_noexcept
	{
		return _z;
	}

	/**
	 * \brief Get reference to _z _x
	 * \details Gets reference to _z _x elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_zx(void) uX_noexcept
	{
		vecdbl2rettype = get_zx();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _z _x _y
	 * \details Gets reference to _z _x _y elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_zxy(void) uX_noexcept
	{
		vecdbl3rettype = get_zxy();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _z _x _y _w
	 * \details Gets reference to _z _x _y _w elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_zxyw(void) uX_noexcept
	{
		*this = get_zxyw();
		return *this;
	}

	/**
	 * \brief Get reference to _z _x _w
	 * \details Gets reference to _z _x _w elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_zxw(void) uX_noexcept
	{
		vecdbl3rettype = get_zxw();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _z _x _w _y
	 * \details Gets reference to _z _x _w _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_zxwy(void) uX_noexcept
	{
		*this = get_zxwy();
		return *this;
	}

	/**
	 * \brief Get reference to _z _y
	 * \details Gets reference to _z _y elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_zy(void) uX_noexcept
	{
		vecdbl2rettype = get_zy();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _z _y _x
	 * \details Gets reference to _z _y _x elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_zyx(void) uX_noexcept
	{
		vecdbl3rettype = get_zyx();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _z _y _x _w
	 * \details Gets reference to _z _y _x _w elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_zyxw(void) uX_noexcept
	{
		*this = get_zyxw();
		return *this;
	}

	/**
	 * \brief Get reference to _z _y _w
	 * \details Gets reference to _z _y _w elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_zyw(void) uX_noexcept
	{
		vecdbl3rettype = get_zyw();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _z _y _w _x
	 * \details Gets reference to _z _y _w _xelements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_zywx(void) uX_noexcept
	{
		*this = get_zywx();
		return *this;
	}

	/**
	 * \brief Get reference to _z _w
	 * \details Gets reference to _z _w elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_zw(void) uX_noexcept
	{
		vecdbl2rettype = get_zw();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _z _w _x
	 * \details Gets reference to _z _w _x elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_zwx(void) uX_noexcept
	{
		vecdbl3rettype = get_zwx();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _z _w _x _y
	 * \details Gets reference to _z _w _x _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_zwxy(void) uX_noexcept
	{
		*this = get_zwxy();
		return *this;
	}

	/**
	 * \brief Get reference to _z _w _y
	 * \details Gets reference to _z _w _y elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_zwy(void) uX_noexcept
	{
		vecdbl3rettype = get_zwy();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _z _w _y _x
	 * \details Gets reference to _z _w _y _x elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_zwyx(void) uX_noexcept
	{
		*this = get_zwyx();
		return *this;
	}

	/**
	 * \brief Get reference to _w
	 * \details Gets reference to _w element from vector
	 * \returns double
	 */
	uX_constexpr double& uX_abi ref_w(void) uX_noexcept
	{
		return _w;
	}

	/**
	 * \brief Get reference to _w _x
	 * \details Gets reference to _w _x elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_wx(void) uX_noexcept
	{
		vecdbl2rettype = get_wx();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _w _x _y
	 * \details Gets reference to _w _x _y elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_wxy(void) uX_noexcept
	{
		vecdbl3rettype = get_wxy();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _w _x _y _z
	 * \details Gets reference to _w _x _y _z elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_wxyz(void) uX_noexcept
	{
		*this = get_wxyz();
		return *this;
	}

	/**
	 * \brief Get reference to _w _x _z
	 * \details Gets reference to _w _x _z elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_wxz(void) uX_noexcept
	{
		vecdbl3rettype = get_wxz();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _w _x _z _y
	 * \details Gets reference to _w _x _z _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_wxzy(void) uX_noexcept
	{
		*this = get_wxzy();
		return *this;
	}

	/**
	 * \brief Get reference to _w _y
	 * \details Gets reference to _w _y elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_wy(void) uX_noexcept
	{
		vecdbl2rettype = get_wy();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _w _y _x
	 * \details Gets reference to _w _y _x elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_wyx(void) uX_noexcept
	{
		vecdbl3rettype = get_wyx();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _w _y _x _z
	 * \details Gets reference to _w _y _x _z elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_wyxz(void) uX_noexcept
	{
		*this = get_wyxz();
		return *this;
	}

	/**
	 * \brief Get reference to _w _y _z
	 * \details Gets reference to _w _y _z elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_wyz(void) uX_noexcept
	{
		vecdbl3rettype = get_wyz();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _w _y _z _x
	 * \details Gets reference to _w _y _z _x elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_wyzx(void) uX_noexcept
	{
		*this = get_wyzx();
		return *this;
	}

	/**
	 * \brief Get reference to _w _z
	 * \details Gets reference to _w _z elements from vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_wz(void) uX_noexcept
	{
		vecdbl2rettype = get_wz();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _w _z _x
	 * \details Gets reference to _w _z _x elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_wzx(void) uX_noexcept
	{
		vecdbl3rettype = get_wzx();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _w _z _x _y
	 * \details Gets reference to _w _z _x _y elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_wzxy(void) uX_noexcept
	{
		*this = get_wzxy();
		return *this;
	}

	/**
	 * \brief Get reference to _w _z _y
	 * \details Gets reference to _w _z _y elements from vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_wzy(void) uX_noexcept
	{
		vecdbl3rettype = get_wzy();
		return vecdbl3rettype;
	}

	/**
	 * \brief Get reference to _w _z _y _x
	 * \details Gets reference to _w _z _y _x elements from vector
	 * \returns vecdouble4
	 */
	uX_constexpr vecdouble4& uX_abi ref_wzyx(void) uX_noexcept
	{
		*this = get_wzyx();
		return *this;
	}

	/**
	 * \brief Set the vector
	 * \details Sets all vector elements
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd._m128_xmmd_0;
		_m128_xmmd_1 = InVecxmmd._m128_xmmd_1;
	}

	/**
	 * \brief Set the vector _x
	 * \details Sets the vector _x element
	 * \param[in] Indouble
	 */
	uX_constexpr void uX_abi set_x(double Indouble) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SETDBL_PD_IM(_m128_xmmd_0, Indouble, 0);
	}

	/**
	 * \brief Set the vector _x _y
	 * \details Sets the vector _x _y elements with _x _y
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xy(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd;
	}

	/**
	 * \brief Set the vector _x _y _z
	 * \details Sets the vector _x _y _z elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xyz(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_xy();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_zx(), _m128_xmmd_1, 0, 1);
	}

	/**
	 * \brief Set the vector _x _y _z _w
	 * \details Sets the vector _x _y _z _w elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xyzw(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd._m128_xmmd_0;
		_m128_xmmd_1 = InVecxmmd._m128_xmmd_1;
	}

	/**
	 * \brief Set the vector _x _y _w
	 * \details Sets the vector _x _y _w elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xyw(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_xy();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, InVecxmmd.get_zx(), 0, 0);
	}

	/**
	 * \brief Set the vector _x _y _w _z
	 * \details Sets the vector _x _y _w _z elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xywz(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd._m128_xmmd_0;
		_m128_xmmd_1 = InVecxmmd.get_wz();
	}

	/**
	 * \brief Set the vector _x _z
	 * \details Sets the vector _x _z elements with _x _y
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xz(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_0, 0, 1);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_1, 1, 1);
	}

	/**
	 * \brief Set the vector _x _z _y
	 * \details Sets the vector _x _z _y elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xzy(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_xz();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_xy(), _m128_xmmd_1, 1, 1);
	}

	/**
	 * \brief Set the vector _x _z _y _w
	 * \details Sets the vector _x _z _y _w elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xzyw(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_xz();
		_m128_xmmd_1 = InVecxmmd.get_yw();
	}

	/**
	 * \brief Set the vector _x _z _w
	 * \details Sets the vector _x _z _w elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xzw(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_xy(), _m128_xmmd_0, 0, 1);
		_m128_xmmd_1 = InVecxmmd.get_yz();
	}

	/**
	 * \brief Set the vector _x _z _w _y
	 * \details Sets the vector _x _z _w _y elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xzwy(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_xw();
		_m128_xmmd_1 = InVecxmmd.get_yz();
	}

	/**
	 * \brief Set the vector _x _w
	 * \details Sets the vector _x _w elements with _x _y
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xw(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_0, 0, 1);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, InVecxmmd, 0, 1);
	}

	/**
	 * \brief Set the vector _x _w _y
	 * \details Sets the vector _x _w _y elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xwy(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_xz();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, InVecxmmd.get_xy(), 0, 1);
	}

	/**
	 * \brief Set the vector _x _w _y _z
	 * \details Sets the vector _x _w _y _z elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xwyz(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_xz();
		_m128_xmmd_1 = InVecxmmd.get_wy();
	}

	/**
	 * \brief Set the vector _x _w _z
	 * \details Sets the vector _x _w _z elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xwz(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_xy(), _m128_xmmd_0, 0, 1);
		_m128_xmmd_1 = InVecxmmd.get_zy();
	}

	/**
	 * \brief Set the vector _x _w _z _y
	 * \details Sets the vector _x _w _z _y elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_xwzy(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_xw();
		_m128_xmmd_1 = InVecxmmd.get_zy();
	}

	/**
	 * \brief Set the vector _y
	 * \details Sets the vector _y element
	 * \param[in] Indouble
	 */
	uX_constexpr void uX_abi set_y(double Indouble) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SETDBL_PD_IM(_m128_xmmd_0, Indouble, 1);
	}

	/**
	 * \brief Set the vector _y _x
	 * \details Sets the vector _y _x elements with _x _y
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_yx(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_yx();
	}

	/**
	 * \brief Set the vector _y _x _z
	 * \details Sets the vector _y _x _z elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_yxz(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_yx();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_zx(), _m128_xmmd_1, 0, 1);
	}

	/**
	 * \brief Set the vector _y _x _z _w
	 * \details Sets the vector _y _x _z _w elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_yxzw(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_yx();
		_m128_xmmd_1 = InVecxmmd._m128_xmmd_1;
	}

	/**
	 * \brief Set the vector _y _x _w
	 * \details Sets the vector _y _x _w elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_yxw(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_yx();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, InVecxmmd.get_zx(), 0, 0);
	}

	/**
	 * \brief Set the vector _y _x _w _z
	 * \details Sets the vector _y _x _w _z elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_yxwz(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_yx();
		_m128_xmmd_1 = InVecxmmd.get_wz();
	}

	/**
	 * \brief Set the vector _y _z
	 * \details Sets the vector _y _z elements with _x _y
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_yz(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, InVecxmmd, 0, 0);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_1, 1, 1);
	}

	/**
	 * \brief Set the vector _y _z _x
	 * \details Sets the vector _y _z _x elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_yzx(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_zx();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_xy(), _m128_xmmd_1, 1, 1);
	}

	/**
	 * \brief Set the vector _y _z _x _w
	 * \details Sets the vector _y _z _x _w elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_yzxw(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_zx();
		_m128_xmmd_1 = InVecxmmd.get_yw();
	}

	/**
	 * \brief Set the vector _y _z _w
	 * \details Sets the vector _y _z _w elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_yzw(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, InVecxmmd.get_xy(), 0, 0);
		_m128_xmmd_1 = InVecxmmd.get_yz();
	}

	/**
	 * \brief Set the vector _y _z _w _x
	 * \details Sets the vector _y _z _w _x elements with _x _y _z _w
	 *
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_yzwx(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_wx();
		_m128_xmmd_1 = InVecxmmd.get_yz();
	}

	/**
	 * \brief Set the vector _y _w
	 * \details Sets the vector _y _w elements with _x _y
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_yw(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, InVecxmmd, 0, 0);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, InVecxmmd, 0, 1);
	}

	/**
	 * \brief Set the vector _y _w _x
	 * \details Sets the vector _y _w _x elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_ywx(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_zx();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, InVecxmmd.get_xy(), 0, 1);
	}

	/**
	 * \brief Set the vector _y _w _y _z
	 * \details Sets the vector _y _w _y _z elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_ywxz(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_zx();
		_m128_xmmd_1 = InVecxmmd.get_wy();
	}

	/**
	 * \brief Set the vector _y _w _z
	 * \details Sets the vector _y _w _z elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_ywz(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, InVecxmmd.get_xy(), 0, 0);
		_m128_xmmd_1 = InVecxmmd.get_zy();
	}

	/**
	 * \brief Set the vector _y _w _z _y
	 * \details Sets the vector _y _w _z _y elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_ywzx(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_wx();
		_m128_xmmd_1 = InVecxmmd.get_zy();
	}

	/**
	 * \brief Set the vector _z
	 * \details Sets the vector _z element
	 * \param[in] Indouble
	 */
	uX_constexpr void uX_abi set_z(double Indouble) uX_noexcept
	{
		_m128_xmmd_1 = _uX_MM_SETDBL_PD_IM(_m128_xmmd_1, Indouble, 0);
	}

	/**
	 * \brief Set the vector _z _x
	 * \details Sets the vector _z _x elements with _x _y
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zx(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_0, 1, 1);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_1, 0, 1);
	}

	/**
	 * \brief Set the vector _z _x _y
	 * \details Sets the vector _z _x _y elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zxy(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_yz();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_xz(), _m128_xmmd_1, 0, 1);
	}

	/**
	 * \brief Set the vector _z _x _y _w
	 * \details Sets the vector _z _x _y _w elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zxyw(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_yz();
		_m128_xmmd_1 = InVecxmmd.get_xw();
	}

	/**
	 * \brief Set the vector _z _x _w
	 * \details Sets the vector _z _x _w elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zxw(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_xy(), _m128_xmmd_0, 1, 1);
		_m128_xmmd_1 = InVecxmmd.get_xz();
	}

	/**
	 * \brief Set the vector _z _x _w _y
	 * \details Sets the vector _z _x _w _y elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zxwy(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_yw();
		_m128_xmmd_1 = InVecxmmd.get_xz();
	}

	/**
	 * \brief Set the vector _z _y
	 * \details Sets the vector _z _y elements with _x _y
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zy(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, InVecxmmd, 0, 1);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_1, 0, 1);
	}

	/**
	 * \brief Set the vector _z _y _x
	 * \details Sets the vector _z _y _x elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zyx(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_zy();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_xy(), _m128_xmmd_1, 0, 1);
	}

	/**
	 * \brief Set the vector _z _y _x _w
	 * \details Sets the vector _z _y _x _w elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zyxw(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_zy();
		_m128_xmmd_1 = InVecxmmd.get_xw();
	}

	/**
	 * \brief Set the vector _z _y _w
	 * \details Sets the vector _z _y _w elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zyw(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, InVecxmmd.get_xy(), 0, 1);
		_m128_xmmd_1 = InVecxmmd.get_xz();
	}

	/**
	 * \brief Set the vector _z _y _w
	 * \details Sets the vector _z _y _w _x elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zywx(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_wy();
		_m128_xmmd_1 = InVecxmmd.get_xz();
	}

	/**
	 * \brief Set the vector _z _w
	 * \details Sets the vector _z _w elements with _x _y
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zw(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_1 = InVecxmmd;
	}

	/**
	 * \brief Set the vector _z _w _x
	 * \details Sets the vector _z _w _x elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zwx(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_zy(), _m128_xmmd_0, 0, 1);
		_m128_xmmd_1 = InVecxmmd.get_xy();
	}

	/**
	 * \brief Set the vector _z _w _x _y
	 * \details Sets the vector _z _w _x _y elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zwxy(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_zw();
		_m128_xmmd_1 = InVecxmmd.get_xy();
	}

	/**
	 * \brief Set the vector _z _w _y
	 * \details Sets the vector _z _w _y elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zwy(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, InVecxmmd.get_zx(), 0, 0);
		_m128_xmmd_1 = InVecxmmd.get_xy();
	}

	/**
	 * \brief Set the vector _z _w _y _x
	 * \details Sets the vector _z _w _y _x elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_zwyx(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_wz();
		_m128_xmmd_1 = InVecxmmd.get_xy();
	}

	/**
	 * \brief Set the vector _w
	 * \details Sets the vector _w element
	 * \param[in] Indouble
	 */
	uX_constexpr void uX_abi set_w(double Indouble) uX_noexcept
	{
		_m128_xmmd_1 = _uX_MM_SETDBL_PD_IM(_m128_xmmd_1, Indouble, 1);
	}

	/**
	 * \brief Set the vector _w _x
	 * \details Sets the vector _w _x elements with _x _y
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wx(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_0, 1, 1);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, InVecxmmd, 0, 0);
	}

	/**
	 * \brief Set the vector _w _x _y
	 * \details Sets the vector _w _x _y elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wxy(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_yz();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, InVecxmmd.get_xy(), 0, 0);
	}

	/**
	 * \brief Set the vector _w _x _y _z
	 * \details Sets the vector _w _x _y _z elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wxyz(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_yz();
		_m128_xmmd_1 = InVecxmmd.get_wx();
	}

	/**
	 * \brief Set the vector _w _x _z
	 * \details Sets the vector _w _x _z elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wxz(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_xy(), _m128_xmmd_0, 1, 1);
		_m128_xmmd_1 = InVecxmmd.get_zx();
	}

	/**
	 * \brief Set the vector _w _x _z _y
	 * \details Sets the vector _w _x _z _y elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wxzy(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_yw();
		_m128_xmmd_1 = InVecxmmd.get_zx();
	}

	/**
	 * \brief Set the vector _w _y
	 * \details Sets the vector _w _y elements with _x _y
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wy(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, InVecxmmd, 0, 1);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, InVecxmmd, 0, 0);
	}

	/**
	 * \brief Set the vector _w _y _x
	 * \details Sets the vector _w _y _x elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wyx(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_zy();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, InVecxmmd.get_xy(), 0, 0);
	}

	/**
	 * \brief Set the vector _w _y _x _z
	 * \details Sets the vector _w _y _x _z elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wyxz(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_zy();
		_m128_xmmd_1 = InVecxmmd.get_wx();
	}

	/**
	 * \brief Set the vector _w _y _z
	 * \details Sets the vector _w _y _z elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wyz(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, InVecxmmd.get_xy(), 0, 1);
		_m128_xmmd_1 = InVecxmmd.get_zx();
	}

	/**
	 * \brief Set the vector _w _y _z _x
	 * \details Sets the vector _w _y _z _x elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wyzx(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_wy();
		_m128_xmmd_1 = InVecxmmd.get_zx();
	}

	/**
	 * \brief Set the vector _w _z
	 * \details Sets the vector _w _z elements with _x _y
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wz(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_1 = _uX_MM_PERMUTER_PD_IM(InVecxmmd, 1, 0);
	}

	/**
	 * \brief Set the vector _w _z _x
	 * \details Sets the vector _w _z _x elements with _x _y _z
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wzx(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_zy(), _m128_xmmd_0, 0, 1);
		_m128_xmmd_1 = InVecxmmd.get_yx();
	}

	/**
	 * \brief Set the vector _w _z _x _y
	 * \details Sets the vector _w _z _x _y elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wzxy(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_zw();
		_m128_xmmd_1 = InVecxmmd.get_yx();
	}

	/**
	 * \brief Set the vector _w _z _y
	 * \details Sets the vector _w _z _y elements with _x _y _z)
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wzy(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, InVecxmmd.get_zy(), 0, 0);
		_m128_xmmd_1 = InVecxmmd.get_yx();
	}

	/**
	 * \brief Set the vector _w _z _y _x
	 * \details Sets the vector _w _z _y _x elements with _x _y _z _w
	 * \param[in] InVecxmmd
	 */
	uX_constexpr void uX_abi set_wzyx(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_wz();
		_m128_xmmd_1 = InVecxmmd.get_yx();
	}

	/* Bitwise Operators */

	/**
	 * \brief Bitwise function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble4 Read only
	 * \param[in] InVecxmmd_b - vecdouble4 Read only
	 * \returns vecdouble4
	 * \retval the computed \p InVecxmmd_a andnot \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi andnot(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_andnot_pd(InVecxmmd_b._m128_xmmd_0, InVecxmmd_a._m128_xmmd_0), _uX_mm_andnot_pd(InVecxmmd_b._m128_xmmd_1, InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Bitwise operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble4 Read only
	 * \param[in] InVecxmmd_b - vecdouble4 Read only
	 * \returns vecdouble4
	 * \retval the computed \p InVecxmmd_a and \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator&(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_and_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_and_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Bitwise operator OR
	 * \details Performs the compute or from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a or \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator|(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_or_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_or_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Bitwise operator XOR
	 * \details Performs the compute xor from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a xor \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator^(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_xor_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_xor_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Bitwise operator NOT
	 * \details Performs the compute not from the parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a not \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator~(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_not_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_not_pd(InVecxmmd_a._m128_xmmd_1));
	}

	/* Logical Operators */
	
	/**
	 * \brief Logical function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmd_a andnot \p InVecxmmd_b
	 */
	friend uX_constexpr bool_t uX_abi bandnot(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return _uX_mm_iandnot_pd(InVecxmmd_b._m128_xmmd_0, InVecxmmd_a._m128_xmmd_0) && _uX_mm_iandnot_pd(InVecxmmd_b._m128_xmmd_1, InVecxmmd_a._m128_xmmd_1);
	}

	/**
	 * \brief Logical operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmd_a && \p InVecxmmd_b
	 */
	friend uX_constexpr bool_t uX_abi operator&&(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return _uX_mm_iand_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0) && _uX_mm_iand_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1);
	}

	/**
	 * \brief Logical operator OR
	 * \details Performs the compute OR from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmd_a || \p InVecxmmd_b
	 */
	friend uX_constexpr bool_t uX_abi operator||(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return _uX_mm_ior_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0) || _uX_mm_ior_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1);
	}

	/**
	 * \brief Logical operator NOT
	 * \details Performs the compute not from the 1 parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns bool_t
	 * \retval the computed boolean not \p InVecxmmd_a
	 */
	friend uX_constexpr bool_t uX_abi operator!(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_inot_pd(InVecxmmd_a._m128_xmmd_0) && _uX_mm_inot_pd(InVecxmmd_a._m128_xmmd_1);
	}

	/**
	 * \brief Logical function HORIZONTAL AND
	 * \details Performs the compute horizontal and in all bits from the parameter. Returns true if all bits are 1
	 * \param[in] InVecxmmd_a.
	 * \returns boolean integer
	 */
	friend uX_constexpr bool_t uX_abi horizontal_and(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_ihand_pd(InVecxmmd_a._m128_xmmd_0) && _uX_mm_ihand_pd(InVecxmmd_a._m128_xmmd_1);
	}

	/**
	 * \brief Logical function HORIZONTAL OR
	 * \details Performs the compute horizontal or in all bits from the parameter. Returns true if at least one bit is 1
	 * \param[in] InVecxmmd_a.
	 * \returns boolean integer.
	 */
	friend uX_constexpr bool_t uX_abi horizontal_or(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_ihor_pd(InVecxmmd_a._m128_xmmd_0) || _uX_mm_ihor_pd(InVecxmmd_a._m128_xmmd_1);
	}

	/**
	 * \brief Logical operator assignment AND
	 * \details Performs the compute and from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a &= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4& uX_abi operator&=(vecdouble4& InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble4(_uX_mm_and_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_and_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Logical operator assignment OR
	 * \details Performs the compute or from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a |= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4& uX_abi operator|=(vecdouble4& InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble4(_uX_mm_or_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_or_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Logical operator assignment XOR
	 * \details Performs the compute xor from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a ^= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4& uX_abi operator^=(vecdouble4& InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble4(_uX_mm_xor_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_xor_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/* Arithmetic Operators */

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] Indouble_b - double broadcast same value to all elements
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a + \p Indouble_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator+(vecdouble4 const InVecxmmd_a, double Indouble_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_add_pd(InVecxmmd_a._m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_add_pd(InVecxmmd_a._m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] Indouble_a - double broadcast same value to all elements
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p Indouble_a + \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator+(double Indouble_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_add_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_0), _uX_mm_add_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - __m128d Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a + \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator+(vecdouble4 const InVecxmmd_a, __m128d const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_add_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b), _uX_mm_add_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmd_a - __m128d Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a + \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator+(__m128d const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_add_pd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_0), _uX_mm_add_pd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a + \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator+(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_add_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_add_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] Indouble_b - double broadcast same value to all elements
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a - \p Indouble_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator-(vecdouble4 const InVecxmmd_a, double Indouble_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_sub_pd(InVecxmmd_a._m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_sub_pd(InVecxmmd_a._m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] Indouble_a - double broadcast same value to all elements
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p Indouble_a - \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator-(double Indouble_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_sub_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_0), _uX_mm_sub_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - __m128d Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a - \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator-(vecdouble4 const InVecxmmd_a, __m128d const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_sub_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b), _uX_mm_sub_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmd_a - __m128d Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a - \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator-(__m128d const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_sub_pd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_0), _uX_mm_sub_pd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a - \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator-(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_sub_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_sub_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] Indouble_b - double broadcast same value to all elements
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a * \p Indouble_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator*(vecdouble4 const InVecxmmd_a, double Indouble_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_mul_pd(InVecxmmd_a._m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_mul_pd(InVecxmmd_a._m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] Indouble_a - double broadcast same value to all elements
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p Indouble_a * \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator*(double Indouble_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_mul_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_0), _uX_mm_mul_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - __m128d Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a * \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator*(vecdouble4 const InVecxmmd_a, __m128d const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_mul_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b), _uX_mm_mul_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmd_a - __m128d Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a * \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator*(__m128d const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_mul_pd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_0), _uX_mm_mul_pd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a * \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator*(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_mul_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_mul_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] Indouble_b - double broadcast same value to all elements
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a / \p Indouble_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator/(vecdouble4 const InVecxmmd_a, double Indouble_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_div_pd(InVecxmmd_a._m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_div_pd(InVecxmmd_a._m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] Indouble_a - double broadcast same value to all elements
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p Indouble_a / \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator/(double Indouble_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_div_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_0), _uX_mm_div_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - __m128d Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a / \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator/(vecdouble4 const InVecxmmd_a, __m128d const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_div_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b), _uX_mm_div_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmd_a - __m128d Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a / \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator/(__m128d const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_div_pd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_0), _uX_mm_div_pd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a / \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator/(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_div_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_div_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator assignment addition
	 * \details Performs the compute addition from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a += \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4& uX_abi operator+=(vecdouble4& InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble4(_uX_mm_add_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_add_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator assignment subtraction
	 * \details Performs the compute subtraction from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a -= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4& uX_abi operator-=(vecdouble4& InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble4(_uX_mm_sub_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_sub_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator assignment multiplication
	 * \details Performs the compute multiplication from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a *= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4& uX_abi operator*=(vecdouble4& InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble4(_uX_mm_mul_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_mul_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator assignment division
	 * \details Performs the compute division from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a /= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4& uX_abi operator/=(vecdouble4& InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble4(_uX_mm_div_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_div_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/* Unary Operators */

	/**
	 * \brief Unary prefix increment operator
	 * \details Performs the compute prefix increment
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed prefix increment \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4& uX_abi operator++(vecdouble4& InVecxmmd_a) uX_noexcept
	{
		InVecxmmd_a = InVecxmmd_a + __m128d_1;
		return InVecxmmd_a;
	}

	/**
	 * \brief Unary prefix decrement operator
	 * \details Performs the compute prefix decrement
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed prefix decrement \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4& uX_abi operator--(vecdouble4& InVecxmmd_a) uX_noexcept
	{
		InVecxmmd_a = InVecxmmd_a - __m128d_1;
		return InVecxmmd_a;
	}

	/**
	 * \brief Unary postfix increment operator
	 * \details Performs the compute postfix increment
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed postfix increment \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi operator++(vecdouble4& InVecxmmd_a, int) uX_noexcept
	{
		vecdouble4 tmpxmm_a0 = InVecxmmd_a;
		InVecxmmd_a = InVecxmmd_a + __m128d_1;
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary postfix decrement operator
	 * \details Performs the compute postfix decrement
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed postfix decrement \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi operator--(vecdouble4& InVecxmmd_a, int) uX_noexcept
	{
		vecdouble4 tmpxmm_a0 = InVecxmmd_a;
		InVecxmmd_a = InVecxmmd_a - __m128d_1;
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary minus operator
	 * \details Performs the compute minus change sign bit, even for 0, INF and NAN
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed minus \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi operator-(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_negate_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_negate_pd(InVecxmmd_a._m128_xmmd_1));
	}

	/* Comparison Operators */

	/**
	 * \brief Comparison operator equal
	 * \details Performs the compute equality from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a == \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator==(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_cmpeq_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_cmpeq_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Comparison operator less than
	 * \details Performs the compute less than from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a < \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator<(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_cmplt_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_cmplt_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Comparison operator less than or equal
	 * \details Performs the compute less than or equal from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a <= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator<=(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_cmple_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_cmple_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Comparison operator greater than
	 * \details Performs the compute greater than from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a > \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator>(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_cmpgt_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_cmpgt_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Comparison operator greater than or equal
	 * \details Performs the compute greater than or equal from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a >= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator>=(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_cmpge_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_cmpge_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Comparison operator not equal
	 * \details Performs the compute not equal from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a != \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi operator!=(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_cmpneq_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_cmpneq_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Index operator
	 * \details Performs element access only, no modification to elements
	 * \param[in] Nindex - count_t
	 * \returns double
	 */
	uX_constexpr double const& uX_abi operator[](count_t index) const uX_noexcept
	{
		return extract(index);
	}

	/**
	 * \brief Index operator
	 * \details Performs element access and modification to elements
	 * \param[in] Nindex - count_t
	 * \returns double
	 */
	uX_constexpr double& uX_abi operator[](count_t index) uX_noexcept
	{
		dblrettype = extract(index);
		return dblrettype;
	}

	/**
	 * \brief Load m128 unaligned
	 * \details load from type __m128d* unaligned
	 * \param[in] Inpxmmd - __m128d* Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble4& uX_abi load_m128(uX_InReads(2) __m128d const* const Inpdouble) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_loadu_pd(Inpdouble);
		_m128_xmmd_1 = _uX_mm_loadu_pd(Inpdouble + 1);
		return *this;
	}

	/**
	 * \brief Load m128 aligned
	 * \details load from type __m128d* aligned
	 * \param[in] Inpxmmd - __m128d* Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble4& uX_abi load_a_m128(uX_InReads(2) __m128d const* const Inpdouble) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_load_pd(Inpdouble);
		_m128_xmmd_1 = _uX_mm_load_pd(Inpdouble + 1);
		return *this;
	}

	/**
	 * \brief Load unaligned
	 * \details load from type double* unaligned
	 * \param[in] Inpdouble - double* Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble4& uX_abi load(uX_InReads(4) double const* const Inpdouble) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble));
		_m128_xmmd_1 = _uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble + 2));
		return *this;
	}

	/**
	 * \brief Load aligned
	 * \details load from type double* aligned
	 * \param[in] Inpdouble - double* Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble4& uX_abi load_a(uX_InReads(4) double const* const Inpdouble) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_load_pd(reinterpret_cast<__m128d const* const>(Inpdouble));
		_m128_xmmd_1 = _uX_mm_load_pd(reinterpret_cast<__m128d const* const>(Inpdouble + 2));
		return *this;
	}

	/**
	 * \brief Store m128 unaligned
	 * \details store to type __m128d* unaligned
	 * \param[out] Outpxmmd - __m128d* Write only
	 */
	uX_constexpr void uX_abi store_m128(uX_OutWrites(2) __m128d* Outpdouble) const uX_noexcept
	{
		_uX_mm_storeu_pd(Outpdouble, _m128_xmmd_0);
		_uX_mm_storeu_pd(Outpdouble + 1, _m128_xmmd_1);
	}

	/**
	 * \brief Store m128 aligned
	 * \details store to type __m128d* aligned
	 * \param[out] Outpxmmd - __m128d* Write only
	 * \warning Outpxmmd must be aligned by 16
	 */
	uX_constexpr void uX_abi store_a_m128(uX_OutWrites(2) __m128d* Outpdouble) const uX_noexcept
	{
		_uX_mm_store_pd(Outpdouble, _m128_xmmd_0);
		_uX_mm_store_pd(Outpdouble + 1, _m128_xmmd_1);
	}

	/**
	 * \brief Store unaligned
	 * \details store to type double* unaligned
	 * \param[out] Outpdouble - double* Write only
	 */
	uX_constexpr void uX_abi store(uX_OutWrites(4) double* Outpdouble) const uX_noexcept
	{
		_uX_mm_storeu_pd(reinterpret_cast<__m128d*>(Outpdouble), _m128_xmmd_0);
		_uX_mm_storeu_pd(reinterpret_cast<__m128d*>(Outpdouble + 2), _m128_xmmd_1);
	}

	/**
	 * \brief Store aligned
	 * \details store to type double* aligned
	 * \param[out] Outpdouble - double* Write only
	 * \warning Outpdouble must be aligned by 16
	 */
	uX_constexpr void uX_abi store_a(uX_OutWrites(4) double* Outpdouble) const uX_noexcept
	{
		_uX_mm_store_pd(reinterpret_cast<__m128d*>(Outpdouble), _m128_xmmd_0);
		_uX_mm_store_pd(reinterpret_cast<__m128d*>(Outpdouble + 2), _m128_xmmd_1);
	}

	/**
	 * \brief Insert function
	 * \details Performs the insert element from mask index
	 * \param[in] value - double the value
	 * \param[in] Nindex - count_t the index element to set
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble4 const uX_abi insert(double value, count_t index) uX_noexcept
	{
		if(index > 3) return *this;
		if(index > 1)
		{
			_m128_xmmd_1 = _uX_mm_setelts_pd(_m128_xmmd_1, value, index - 2);
		}
		else
		{
			_m128_xmmd_0 = _uX_mm_setelts_pd(_m128_xmmd_0, value, index);
		}
		return *this;
	}
	
	/**
	 * \brief Extract function
	 * \details Performs the extract element from mask index
	 * \param[in] Nindex - count_t the index element to get
	 * \returns double
	 */
	uX_constexpr double uX_abi extract(count_t index) const uX_noexcept
	{
		if(index > 3) return 0.0;
		return index > 1 ? _uX_mm_cvtelts_dbl(_m128_xmmd_1, index - 2) : _uX_mm_cvtelts_dbl(_m128_xmmd_0, index);
	}

	/**
	 * \brief Set all elements to zero
	 * \details Sets all elements to zero
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble4& uX_abi zero(void) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_setzero_pd();
		_m128_xmmd_1 = _uX_mm_setzero_pd();
		return *this;
	}

	/**
	 * \brief Cut off vector to n elements
	 * \details Performs the Cut off vector to n elements
	 * \param[in] Nindex - count_t the N element's to cut
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble4& uX_abi cutoff(count_t indexN) uX_noexcept
	{
		switch(indexN)
		{
			case 3:
				_m128_xmmd_1 = _uX_mm_move_sd(__m128d_0, _m128_xmmd_1);
				break;
			case 2:
				_m128_xmmd_1 = __m128d_0;
				break;
			case 1:
				_m128_xmmd_0 = _uX_mm_move_sd(__m128d_0, _m128_xmmd_0);
				_m128_xmmd_1 = __m128d_0;
				break;
			case 0:
				_m128_xmmd_0 = __m128d_0;
				_m128_xmmd_1 = __m128d_0;
				break;
			default:
				break;
		}
		return *this;
	}

	/**
	 * \brief Flip Sign function
	 * \details Performs the flip sign off vector on all elements
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a ^ \p m128d_sign
	 */
	friend uX_constexpr vecdouble4 uX_abi flip_sign(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_xor_pd(InVecxmmd_a._m128_xmmd_0, __m128d_sign), _uX_mm_xor_pd(InVecxmmd_a._m128_xmmd_1, __m128d_sign));
	}

	/**
	 * \brief Test if all elements if is zero
	 * \details Performs the test if all elements are zero
	 * \param[in] InVecxmmd_a - vecdouble4 Read only
	 * \returns vecdouble4
	 * \retval the computed \p InVecxmmd_a == 0.0
	 */
	friend uX_constexpr vecdouble4 uX_abi is_zero(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_cmpeq_sd(InVecxmmd_a._m128_xmmd_0, _uX_mm_const_0_pd()), _uX_mm_cmpeq_sd(InVecxmmd_a._m128_xmmd_1, _uX_mm_const_0_pd()));
	}

	/**
	 * \brief Test if all elements if is zero
	 * \details Performs the test if all elements are zero
	 * \param[in] InVecxmmd_a - vecdouble4 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmd_a == 0.0
	 */
	friend uX_constexpr bool_t uX_abi bis_zero(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_iszero_pd(InVecxmmd_a._m128_xmmd_0) && _uX_mm_iszero_pd(InVecxmmd_a._m128_xmmd_1);
	}

	/**
	 * \brief Select between two operands
	 * \details Performs the selection between two operands
		The first vector is boolean vector mask that chooses between the elements of the second and the third vector
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return s[i] ? a[i] : b[i];
	 * \param[in] InVecxmmd_f - vecdouble3 Read only the boolean vector mask
	 * \param[in] InVecxmmd_a - vecdouble3 Read only the a vector
	 * \param[in] InVecxmmd_b - vecdouble3 Read only the b vector
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_f ? \p InVecxmmd_a : \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi select(vecdouble4 const InVecxmmd_f, vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_select_pd(InVecxmmd_f._m128_xmmd_0, InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_select_pd(InVecxmmd_f._m128_xmmd_1, InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Conditional add
	 * \details Performs the conditional add in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] + b[i]) : a[i]
	 * \param[in] InVecxmmd_f - vecdouble3 Read only the boolean vector mask
	 * \param[in] InVecxmmd_a - vecdouble3 Read only the a vector
	 * \param[in] InVecxmmd_b - vecdouble3 Read only the b vector
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_f ? \p InVecxmmd_a + InVecxmmd_b: \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi if_add(vecdouble4 const InVecxmmd_f, vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a + (InVecxmmd_f & InVecxmmd_b);
	}

	/**
	 * \brief Conditional subtract
	 * \details Performs the conditional subtract in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] - b[i]) : a[i]
	 * \param[in] InVecxmmd_f - vecdouble3 Read only the boolean vector mask
	 * \param[in] InVecxmmd_a - vecdouble3 Read only the a vector
	 * \param[in] InVecxmmd_b - vecdouble3 Read only the b vector
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_f ? \p InVecxmmd_a - InVecxmmd_b: \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi if_sub(vecdouble4 const InVecxmmd_f, vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a - (InVecxmmd_f & InVecxmmd_b);
	}

	/**
	 * \brief Conditional multiply
	 * \details Performs the conditional multiply in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] * b[i]) : a[i]
	 * \param[in] InVecxmmd_f - vecdouble3 Read only the boolean vector mask
	 * \param[in] InVecxmmd_a - vecdouble3 Read only the a vector
	 * \param[in] InVecxmmd_b - vecdouble3 Read only the b vector
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_f ? \p InVecxmmd_a * InVecxmmd_b: \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi if_mul(vecdouble4 const InVecxmmd_f, vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a * select(InVecxmmd_f, InVecxmmd_b, vecdouble4(__m128d_1));
	}

	/**
	 * \brief Conditional division
	 * \details Performs the conditional divide in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] / b[i]) : a[i]
	 * \param[in] InVecxmmd_f - vecdouble3 Read only the boolean vector mask
	 * \param[in] InVecxmmd_a - vecdouble3 Read only the a vector
	 * \param[in] InVecxmmd_b - vecdouble3 Read only the b vector
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_f ? \p InVecxmmd_a / InVecxmmd_b: \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi if_div(vecdouble4 const InVecxmmd_f, vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a / select(InVecxmmd_f, InVecxmmd_b, vecdouble4(__m128d_1));
	}

	/**
	 * \brief Change signs on vector at compile time
	 * \details Generates a constant vector at compile time stored in memory, and changes the sign of parameter
		Each index i0 is 1 for changing sign on the corresponding element, 0 for no change
	 * \param[in] i0 - int
	 * \param[in] i1 - int
	 * \param[in] i2 - int
	 * \param[in] i3 - int
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p i0 ? \p InVecxmmd_a ^ 0x8000000000000000: \p InVecxmmd_a
	 */
	template <int i0, int i1, int i2, int i3>
	friend uX_constexpr vecdouble4 uX_abi change_sign(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		if((i0 | i1 | i2 | i3) == 0) return InVecxmmd_a;
		return InVecxmmd_a ^ vecdouble4(vecuqword4::constant<i0 ? 0x8000000000000000 : 0, i1 ? 0x8000000000000000 : 0, i2 ? 0x8000000000000000 : 0, i3 ? 0x8000000000000000 : 0>());
	}

	/**
	 * \brief Sign bit
	 * \details Gives true for elements that have the sign bit set even for -0.0, -INF and -NAN
		Note that sign_bit(vecdouble3(-00f)) gives true, while vecdouble3(-00f) < vecdouble3(00f) gives false
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed sign_bit(InVecxmmd_a)
	 */
	friend uX_constexpr vecdouble4 uX_abi sign_bit(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_signbit_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_signbit_pd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Sign combine
	 * \details Changes the sign of a when b has the sign bit set
		Same as select(sign_bit(b), -a, a)
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p sign_bit(InVecxmmd_b) ? \p -InVecxmmd_a: \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi sign_combine(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_signcombine_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_signcombine_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Is finite
	 * \details Gives true for elements that are normal, denormal or zero, false for INF and NAN
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed isfinite \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi is_finite(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_isfinite_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_isfinite_pd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Is inf
	 * \details Gives true for elements that are +INF or -INF, false for finite numbers and NAN
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed isinf \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi is_inf(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_isinf_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_isinf_pd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Is nan
	 * \details Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed isnan \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi is_nan(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_isnan_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_isnan_pd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Is subnormal
	 * \details Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed issubnormal \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi is_subnormal(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_issubnormal_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_issubnormal_pd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Is zero or subnormal
	 * \details Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed iszeroorsubnormal \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi is_zero_or_subnormal(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_iszeroorsubnormal_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_iszeroorsubnormal_pd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Infinite
	 * \details A vector where all elements are +INF
	 * \returns vecdouble3
	 * \retval +INF
	 */
	uX_constexpr vecdouble4& uX_abi infinite(void) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_infinite_pd();
		_m128_xmmd_1 = _uX_mm_infinite_pd();
		return *this;
	}

	/**
	 * \brief Nan
	 * \details A vector where all elements are NAN (quiet)
	 * \returns vecdouble3
	 * \retval NAN (quiet)
	 */
	uX_constexpr vecdouble4& uX_abi nan(void) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_nan_pd();
		_m128_xmmd_1 = _uX_mm_nan_pd();
		return *this;
	}

	/**
	 * \brief Is Horizontal add
	 * \details Calculates the sum of all vector elements horizontally
	 * \param InVecxmmd_a the a vector
	 * \return double
	 * \retval _x + _y
	 */
	friend uX_constexpr double uX_abi horizontal_add(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return horizontal_add(vecdouble2(_uX_mm_horizontaladd_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_horizontaladd_pd(InVecxmmd_a._m128_xmmd_1)));
	}

	/**
	 * \brief Horizontal sub.
	 * \details Calculates the subtraction of all vector elements horizontally
	 * \param InVecxmmd_a the a vector
	 * \return double
	 * \retval _x - _y
	 */
	friend uX_constexpr double uX_abi horizontal_sub(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return horizontal_sub(vecdouble2(_uX_mm_horizontalsub_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_horizontalsub_pd(InVecxmmd_a._m128_xmmd_1)));
	}

	/**
	 * \brief Horizontal mull
	 * \details Calculates the multiplication of all vector elements horizontally
	 * \param InVecxmmd_a the a vector
	 * \return double
	 * \retval _x * _y
	 */
	friend uX_constexpr double uX_abi horizontal_mul(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return horizontal_mul(vecdouble2(_uX_mm_horizontalmul_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_horizontalmul_pd(InVecxmmd_a._m128_xmmd_1)));
	}

	/**
	 * \brief Max
	 * \details Computes the max a > b ? a : b
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed max \p InVecxmmd_a > InVecxmmd_b ? \p InVecxmmd_a: \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi max(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_max_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_max_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Min
	 * \details Computes the min a < b ? a : b
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed min \p InVecxmmd_a < InVecxmmd_b ? \p InVecxmmd_a: \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble4 uX_abi min(vecdouble4 const InVecxmmd_a, vecdouble4 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble4(_uX_mm_min_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_min_pd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Abs
	 * \details Computes the absolute value
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed abs \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi abs(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_abs_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_abs_pd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Square
	 * \details Computes the a * a
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a * \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi square(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_square_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_square_pd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Scale
	 * \details Computes the a * s
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] Indouble_s - double Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a * \p Indouble_s
	 */
	friend uX_constexpr vecdouble4 uX_abi scale(vecdouble4 const InVecxmmd_a, double Indouble_s) uX_noexcept
	{
		return vecdouble4(_uX_mm_scale_pd(InVecxmmd_a._m128_xmmd_0, Indouble_s), _uX_mm_scale_pd(InVecxmmd_a._m128_xmmd_1, Indouble_s));
	}

	/**
	 * \brief rcp
	 * \details Computes the reciprocal
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed rcp \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi rcp(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_rcp_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_rcp_pd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief sqrt
	 * \details Computes the square root
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed sqrt \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi sqrt(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_sqrt_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_sqrt_pd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief rsqrt
	 * \details Computes the reciprocal square root
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed rsqrt \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble4 uX_abi rsqrt(vecdouble4 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble4(_uX_mm_rsqrt_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_rsqrt_pd(InVecxmmd_a._m128_xmmd_1));
	}

protected:

private:
	union
	{
		struct
		{
			__m128d			_m128_xmmd_0,
							_m128_xmmd_1;
		};
		struct
		{
			double			_x, _y, _z, _w;
		};
		__m128d				_m128_xmmd[2];
		double				_m128_dbl[4];
	};
	vecdouble3				vecdbl3rettype;
	vecdouble2				vecdbl2rettype;
	double					dblrettype;

public:
	/**
	 * \brief vecdouble4 size
	 * \details Gets the vecdouble4 vector size
	 * \returns count_t
	 * \retval the vecdouble4 size
	 */
	uX_constexpr count_t const uX_abi size(void) const uX_noexcept
	{
		return 32;
	}

	/**
	 * \brief vecdouble4 length
	 * \details Gets the vecdouble4 vector length
	 * \returns count_t
	 * \retval the vecdouble4 length
	 */
	uX_constexpr count_t const uX_abi length(void) const uX_noexcept
	{
		return 4;
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
		return 2;
	}

	/**
	 * \brief xmm double elements
	 * \details Gets the quantity of xmm vector double elements
	 * \returns count_t
	 * \retval the quantity of xmm double elements
	 */
	uX_constexpr count_t const uX_abi xmm_dbl_elements(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief double size
	 * \details Gets the double size
	 * \returns count_t
	 * \retval the xmm double size
	 */
	uX_constexpr count_t const uX_abi dbl_size(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief double elements
	 * \details Gets the quantity of double elements
	 * \returns count_t
	 * \retval the quantity of double elements
	 */
	uX_constexpr count_t const uX_abi dbl_elements(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief __m128d pointer length
	 * \details Gets the length of __m128d pointer
	 * \returns count_t
	 * \retval the length of __m128d pointer
	 */
	uX_constexpr count_t const uX_abi xmm_ptr_length(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief __m128d pointer size
	 * \details Gets the size of __m128d pointer
	 * \returns count_t
	 * \retval the size of __m128d pointer
	 */
	uX_constexpr count_t const uX_abi xmm_ptr_size(void) const uX_noexcept
	{
		return 32;
	}

	/**
	 * \brief double pointer length
	 * \details Gets the length of double pointer
	 * \returns count_t
	 * \retval the length of double pointer
	 */
	uX_constexpr count_t const uX_abi dbl_ptr_length(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief double pointer size
	 * \details Gets the size of double pointer
	 * \returns count_t
	 * \retval the size of double pointer
	 */
	uX_constexpr count_t const uX_abi dbl_ptr_size(void) const uX_noexcept
	{
		return 32;
	}

	using types = vector4types;
}vecdouble4_t;

#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_xmm_end
namespace_uX_end

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECDOUBLE4_H
