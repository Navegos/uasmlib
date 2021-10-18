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

#ifndef uX_XMM_VECDOUBLE3_H
#define uX_XMM_VECDOUBLE3_H 1

/**
 * \defgroup uX_XMM_VECDOUBLE3 3 Double Precision SSE SIMD Vector
 * \ingroup uX_NAMESPACE_XMM
 * \file uXxmmvecdouble3.h
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

#ifndef uX_XMM_VECDOUBLE2_H
#include "uXxmmvecdouble2.h"
#endif  /* uX_XMM_VECDOUBLE2_H */

#ifndef uX_XMM_VECDOUBLE1_H
#include "uXxmmvecdouble1.h"
#endif  /* uX_XMM_VECDOUBLE1_H */

#ifndef uX_XMM_VECFLOAT3_H
#include "uXxmmvecfloat3.h"
#endif  /* uX_XMM_VECFLOAT3_H */

#ifndef uX_XMM_VECQWORD3_H
#include "uXxmmvecqword3.h"
#endif  /* uX_XMM_VECQWORD3_H */

#ifndef uX_XMM_VECUQWORD3_H
#include "uXxmmvecuqword3.h"
#endif  /* uX_XMM_VECUQWORD3_H */

/**
 * \defgroup uX_XMM_VECDOUBLE3_CLASS 3 Double Precision SSE SIMD Vector Class
 * \ingroup uX_XMM_VECDOUBLE3
 * To use these class include the header file \p uXxmmvecdouble3.h in your program
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
 * \ingroup uX_XMM_VECDOUBLE3_CLASS
 * \class vecdouble3
 * \brief SSE SIMD class with the size of 3 double elements
 * \details The \p vecdouble3 class is an 3 elements wide 64bit double element where
	it provides interoperability between \p vecqword3, \p vecuqword3 class's
 */
typedef class vecdouble3
{
public:
	vecdouble3()uX_default;
	~vecdouble3()uX_default;

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(vecdouble3 const& InVecxmmd)
	 * \brief Default constructor initialization from vecdouble3
	 * \details Default constructor copies /p vecdouble3
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 */
	uX_constexpr vecdouble3(vecdouble3 const& InVecxmmd) uX_noexcept : _m128_xmmd_0(InVecxmmd._m128_xmmd_0), _m128_xmmd_1(InVecxmmd._m128_xmmd_1) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(vecdouble3&& InVecxmmd)
	 * \brief Default constructor initialization from vecdouble3
	 * \details Default constructor copies /p vecdouble3
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 */
	uX_constexpr vecdouble3(vecdouble3&& InVecxmmd) uX_noexcept : _m128_xmmd_0(InVecxmmd._m128_xmmd_0), _m128_xmmd_1(InVecxmmd._m128_xmmd_1) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(__m128d const Inxmmd)
	 * \brief Constructor initialization from __m128d type
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inxmmd - __m128d Read only
	 * \warning Broadcast the same value into all elements
	 * \Note Sets the _x _y _z double elements in 128bit copy replacement
	 */
	uX_explicit uX_constexpr vecdouble3(__m128d const Inxmmd) uX_noexcept : _m128_xmmd_0(Inxmmd), _m128_xmmd_1(_uX_MM_SHUFFLER_PD_IM(Inxmmd, _uX_mm_const_false_pd(), 0, 0)) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(__m128d const Inxmmd_0, __m128d const Inxmmd_1)
	 * \brief Constructor initialization from 2 __m128d types
	 * \details Constructor copies _x _y _z elements from 2 /p __m128d
	 * \param[in] Inxmmd_0 - __m128d Read only
	 * \param[in] Inxmmd_1 - __m128d Read only
	 */
	uX_constexpr vecdouble3(__m128d const Inxmmd_0, __m128d const Inxmmd_1) uX_noexcept : _m128_xmmd_0(Inxmmd_0), _m128_xmmd_1(_uX_MM_SHUFFLER_PD_IM(Inxmmd_1, _uX_mm_const_false_pd(), 0, 0)) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(vecdouble4 const InVecxmmd)
	 * \brief Constructor initialization from vecdouble4 type
	 * \details Constructor copies _x _y _z elements from /p vecdouble4
	 * \param[in] InVecxmmd - vecdouble4 Read only
	 * \Note Sets the _x  _y _z double elements
	 */
	uX_constexpr vecdouble3(vecdouble4 const InVecxmmd) uX_noexcept : _m128_xmmd_0(InVecxmmd.get_xmmd_0()), _m128_xmmd_1(_uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_xmmd_1(), _uX_mm_const_false_pd(), 0, 0)) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(vecdouble2 const InVecxmmd)
	 * \brief Constructor initialization from vecdouble2 type
	 * \details Constructor copies _x _y elements from /p vecdouble2 and maintains _z element from /p vecdouble3
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 * \Note Sets the _x  _y double elements
	 */
	uX_constexpr vecdouble3(vecdouble2 const InVecxmmd) uX_noexcept : _m128_xmmd_0(InVecxmmd) {}
	
	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(vecdouble2 const InVecxmmd_a, vecdouble1 const InVecxmmd_b)
	 * \brief Constructor initialization from vecdouble2 and vecdouble1 types
	 * \details Constructor copies _x _y elements from /p vecdouble2 and copies _z element from /p vecdouble1
	 * \param[in] InVecxmmd_a - vecdouble2 Read only
	 * \param[in] InVecxmmd_b - vecdouble1 Read only
	 */
	uX_constexpr vecdouble3(vecdouble2 const InVecxmmd_a, vecdouble1 const InVecxmmd_b) uX_noexcept : _m128_xmmd_0(InVecxmmd_a)
																									, _m128_xmmd_1(_uX_mm_unpacklo_pd(InVecxmmd_b, _uX_mm_const_false_pd())) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(vecdouble1 const InVecxmmd_a, vecdouble2 const InVecxmmi_b)
	 * \brief Constructor initialization from vecdouble1 and vecdouble2 types
	 * \details Constructor copies _x element from /p vecdouble1 and copies _y _z elements from /p vecdouble2
	 * \param[in] InVecxmmd_a - vecdouble1 Read only
	 * \param[in] InVecxmmd_b - vecdouble2 Read only
	 */
	uX_constexpr vecdouble3(vecdouble1 const InVecxmmd_a, vecdouble2 const InVecxmmd_b) uX_noexcept : _m128_xmmd_0(_uX_mm_unpacklo_pd(InVecxmmd_a, InVecxmmd_b))
																									, _m128_xmmd_1(_uX_mm_unpackhi_pd(InVecxmmd_b, _uX_mm_const_false_pd())) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(vecdouble1 const InVecxmmd)
	 * \brief Constructor initialization from vecdouble1 type
	 * \details Constructor copies _x element from /p vecdouble1 and maintains _y _z elements from /p vecdouble3
	 * \param[in] InVecxmmd - vecdouble1 Read only
	 */
	uX_constexpr vecdouble3(vecdouble1 const InVecxmmd) uX_noexcept : _m128_xmmd_0(_uX_mm_move_sd(_m128_xmmd_0, InVecxmmd)) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(vecfloat3 const InVecxmm)
	 * \brief Constructor initialization from type vecfloat3
	 * \details Constructor converts float _x _y _z elements from /p vecfloat3 to _x _y _z elements
	 * \param[in] InVecxmm - vecfloat3 Read only
	 * \warning Converts the value from float to double.
	 * \Note Sets the _x _y _z double elements
	 */
	uX_constexpr vecdouble3(vecfloat3 const InVecxmm) uX_noexcept : _m128_xmmd_0(_uX_mm_cvtps_pd(InVecxmm)), _m128_xmmd_1(_uX_MM_SHUFFLER_PD_IM(_uX_mm_cvtps_pd(InVecxmm.get_zxy()), _uX_mm_const_false_pd(), 0, 0)) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(vecqword3 const InVecxmmi)
	 * \brief Constructor initialization from type vecqword3
	 * \details Constructor copies int64 _x _y _z elements from /p vecqword3 to _x _y _z elements
	 * \param[in] InVecxmmi - vecqword3 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x _y _z double elements
	 */
	uX_constexpr vecdouble3(vecqword3 const InVecxmmi) uX_noexcept : _m128_xmmd_0(_uX_mm_castsi128_pd(InVecxmmi.get_xmmi_0())), _m128_xmmd_1(_uX_mm_castsi128_pd(InVecxmmi.get_xmmi_1())) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(vecuqword3 const InVecxmmi)
	 * \brief Constructor initialization from type vecuqword3
	 * \details Constructor copies uint64 _x _y _z elements from /p vecuqword3 to _x _y _z elements
	 * \param[in] InVecxmmi - vecuqword3 Read only
	 * \warning Only cast's the value, no conversion is made
	 * \Note Sets the _x _y _z double elements
	 */
	uX_constexpr vecdouble3(vecuqword3 const InVecxmmi) uX_noexcept : _m128_xmmd_0(_uX_mm_castsi128_pd(InVecxmmi.get_xmmi_0())), _m128_xmmd_1(_uX_mm_castsi128_pd(InVecxmmi.get_xmmi_1())) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(double Indouble)
	 * \brief Constructor initialization from type double
	 * \details Constructor to broadcast the same double value into all elements
	 * \param[in] Indouble - double Read only
	 * \warning Broadcasts same float value to all elements
	 * \Note Sets the _x _y _y double elements
	 */
	uX_explicit uX_constexpr vecdouble3(double Indouble) uX_noexcept : _m128_xmmd_0(_uX_mm_set1_pd(Indouble)), _m128_xmmd_1(_uX_mm_setr_pd(Indouble, 0.0)) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(double const Indouble_x, double const Indouble_y, double const Indouble_z)
	 * \brief Constructor initialization from 3 double types
	 * \details Constructor copies 3 double to _x _y _z elements
	 * \param[in] Indouble_x - double Read only
	 * \param[in] Indouble_y - double Read only
	 * \param[in] Indouble_z - double Read only
	 */
	uX_constexpr vecdouble3(double Indouble_x, double Indouble_y, double Indouble_z) uX_noexcept : _m128_xmmd_0(_uX_mm_setr_pd(Indouble_x, Indouble_y)), _m128_xmmd_1(_uX_mm_setr_pd(Indouble_z, 0.0)) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(bool_t const Inbool)
	 * \brief Constructor initialization from type bool_t
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inbool - bool_t Read only
	 */
	uX_explicit uX_constexpr vecdouble3(bool_t const Inbool) uX_noexcept : _m128_xmmd_0(vecdouble2(vecuqword2(Inbool))), _m128_xmmd_1(vecdouble1(vecuqword1(Inbool))) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(bool_t const Inbool_X, bool_t const Inbool_Y)
	 * \brief Constructor initialization from 3 bool_t types
	 * \details Constructor initialization from 3 bool_t types
	 * \param[in] Inbool_X - bool_t Read only
	 * \param[in] Inbool_Y - bool_t Read only
	 * \param[in] Inbool_Z - bool_t Read only
	 */
	uX_constexpr vecdouble3(bool_t const Inbool_X, bool_t const Inbool_Y, bool_t const Inbool_Z) uX_noexcept : _m128_xmmd_0(vecdouble2(vecuqword2(Inbool_X, Inbool_Y))), _m128_xmmd_1(vecdouble1(vecuqword1(Inbool_Z))) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(bool const Inbool)
	 * \brief Constructor initialization from type bool
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inbool - bool Read only
	 */
	uX_explicit uX_constexpr vecdouble3(bool const Inbool) uX_noexcept : _m128_xmmd_0(vecdouble2(vecuqword2(Inbool, Inbool))), _m128_xmmd_1(vecdouble1(vecuqword1(Inbool))) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(bool const Inbool_X, bool const Inbool_Y)
	 * \brief Constructor initialization from 3 bool types
	 * \details Constructor initialization from 2 bool types
	 * \param[in] Inbool_X - bool Read only
	 * \param[in] Inbool_Y - bool Read only
	 * \param[in] Inbool_Z - bool Read only
	 */
	uX_constexpr vecdouble3(bool const Inbool_X, bool const Inbool_Y, bool const Inbool_Z) uX_noexcept : _m128_xmmd_0(vecdouble2(vecuqword2(Inbool_X, Inbool_Y))), _m128_xmmd_1(vecdouble1(vecuqword1(Inbool_Z))) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(__m128d const* const Inpxmmi)
	 * \brief Constructor initialization from __m128d pointer type
	 * \details Constructor initialization from __m128d pointer type with size of 2 __m128d
	 * \param[in] Inpxmmi - __m128d* Read only
	 * \Note The __m128d pointer is expected to be unaligned
	 */
	uX_explicit uX_constexpr vecdouble3(uX_InReads(2) __m128d const* const Inpm128_xmmd) uX_noexcept : _m128_xmmd_0(_uX_mm_loadu_pd(Inpm128_xmmd))
																									, _m128_xmmd_1(_uX_MM_SHUFFLER_PD_IM(_uX_mm_loadu_pd(Inpm128_xmmd+1), _uX_mm_const_false_pd(), 0, 0)) {}

	/**
	 * \fn uX::xmm::vecdouble3::vecdouble3(double const* const Inpdouble)
	 * \brief Constructor initialization from double pointer type
	 * \details Constructor initialization from double pointer type with size of 3 double types
	 * \param[in] Inpdouble - double* Read only
	 * \Note The double pointer is expected to be unaligned
	 */
	uX_explicit uX_constexpr vecdouble3(uX_InReads(3) double const* const Inpdouble) uX_noexcept : _m128_xmmd_0(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble))), _m128_xmmd_1(_uX_mm_load_sd(Inpdouble+2)) {}

	/**
	 * \brief vecdouble3 default assignment operator
	 * \details To convert from vecdouble3 type
	 * \param[in] InVecxmmi - vecdouble3 Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi operator=(vecdouble3 const& InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd._m128_xmmd_0;
		_m128_xmmd_1 = InVecxmmd._m128_xmmd_1;
		return *this;
	}

	/**
	 * \brief vecdouble3 default assignment operator
	 * \details To convert from vecdouble3 type
	 * \param[in] InVecxmmi - vecdouble3 Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi operator=(vecdouble3&& InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd._m128_xmmd_0;
		_m128_xmmd_1 = InVecxmmd._m128_xmmd_1;
		return *this;
	}

	/**
	 * \brief __m128d assignment operator
	 * \details To convert from __m128d type
	 * \param[in] Inxmmd - __m128d Read only
	 * \returns vecdouble3
	 * \warning Broadcast the same value into all elements
	 */
	uX_constexpr vecdouble3& uX_abi operator=(__m128d const Inxmmd) uX_noexcept
	{
		_m128_xmmd_0 = Inxmmd;
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(Inxmmd, _uX_mm_const_false_pd(), 0, 0);
		return *this;
	}

	/**
	 * \brief vecdouble4 assignment operator
	 * \details To convert from vecdouble4 type
	 * \param[in] InVecxmmd - vecdouble4 Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi operator=(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd.get_xmmd_0();
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd.get_xmmd_1(), _uX_mm_const_false_pd(), 0, 0);
		return *this;
	}

	/**
	 * \brief vecdouble2 assignment operator
	 * \details To convert from vecdouble2 type
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi operator=(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd;
		return *this;
	}

	/**
	 * \brief vecdouble1 assignment operator
	 * \details To convert from vecdouble1 type
	 * \param[in] InVecxmmd - vecdouble1 Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi operator=(vecdouble1 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_move_sd(_m128_xmmd_0, InVecxmmd);
		return *this;
	}

	/**
	 * \brief vecfloat3 assignment operator
	 * \details To convert from vecfloat3 type
	 * \param[in] InVecxmm - vecfloat3 Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi operator=(vecfloat3 const InVecxmm) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_cvtps_pd(InVecxmm);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_uX_mm_cvtps_pd(InVecxmm.get_zxy()), _uX_mm_const_false_pd(), 0, 0);
		return *this;
	}

	/**
	 * \brief vecqword3 assignment operator
	 * \details To convert from vecqword3 type
	 * \param[in] InVecxmmi - vecqword3 Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi operator=(vecqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_castsi128_pd(InVecxmmi.get_xmmi_0());
		_m128_xmmd_1 = _uX_mm_castsi128_pd(InVecxmmi.get_xmmi_1());
		return *this;
	}

	/**
	 * \brief vecuqword3 assignment operator
	 * \details To convert from vecuqword3 type
	 * \param[in] InVecxmmi - vecuqword3 Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi operator=(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_castsi128_pd(InVecxmmi.get_xmmi_0());
		_m128_xmmd_1 = _uX_mm_castsi128_pd(InVecxmmi.get_xmmi_1());
		return *this;
	}

	/**
	 * \brief double assignment operator
	 * \details To broadcast the same double value into all elements
	 * \param[in] Indouble - double Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi operator=(double Indouble) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_set1_pd(Indouble);
		_m128_xmmd_1 = _uX_mm_setr_pd(Indouble, 0.0);
		return *this;
	}

	/**
	 * \brief bool_t assignment operator
	 * \details To broadcast the same bool_t value into all elements
	 * \param[in] Inbool - bool_t Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi operator=(bool_t const Inbool) uX_noexcept
	{
		_m128_xmmd_0 = vecdouble2(vecuqword2(Inbool, Inbool));
		_m128_xmmd_1 = vecdouble1(vecuqword1(Inbool));
		return *this;
	}

	/**
	 * \brief bool assignment operator
	 * \details To broadcast the same bool value into all elements
	 * \param[in] Inbool - bool Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi operator=(bool const Inbool) uX_noexcept
	{
		_m128_xmmd_0 = vecdouble2(vecuqword2(Inbool, Inbool));
		_m128_xmmd_1 = vecdouble1(vecuqword1(Inbool));
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
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(Inxmmd, _uX_mm_const_false_pd(), 0, 0);
	}

	/**
	 * \brief Get vector
	 * \details Gets vecdouble3 vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get(void) const uX_noexcept
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
	 * \details Gets vecdouble2 _x _y vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_xy(void) const uX_noexcept
	{
		return vecdouble2(_m128_xmmd_0);
	}

	/**
	 * \brief Get _x _y _z vector
	 * \details Gets vecdouble3 _x _y _z vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_xyz(void) const uX_noexcept
	{
		return vecdouble3(_m128_xmmd_0, _m128_xmmd_1);
	}

	/**
	 * \brief Get _x _z vector
	 * \details Gets vecdouble2 _x _z vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_xz(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 0));
	}

	/**
	 * \brief Get _x _z _y vector
	 * \details Gets vecdouble3 _x _z _y vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_xzy(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 0, 0), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 1));
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
	 * \brief Get _y _x vector
	 * \details Gets vecdouble2 _y _x vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_yx(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 0));
	}

	/**
	 * \brief Get _y _x _z vector
	 * \details Gets vecdouble3 _y _x _z vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_yxz(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 0), _m128_xmmd_1);
	}

	/**
	 * \brief Get _y _z vector
	 * \details Gets vecdouble2 _y _z vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_yz(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 0));
	}

	/**
	 * \brief Get _y _z _x vector
	 * \details Gets vecdouble3 _y _z _x vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_yzx(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _m128_xmmd_1, 1, 0), _m128_xmmd_0);
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
	 * \brief Get _z _x vector
	 * \details Gets vecdouble2 _z _x vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_zx(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 0));
	}

	/**
	 * \brief Get _z _x _y vector
	 * \details Gets vecdouble3 _z _x _y vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_zxy(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 0), _uX_MM_PERMUTER_PD_IM(_m128_xmmd_0, 1, 1));
	}

	/**
	 * \brief Get _z _y vector
	 * \details Gets vecdouble2 _z _y vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2 uX_abi get_zy(void) const uX_noexcept
	{
		return vecdouble2(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 1));
	}

	/**
	 * \brief Get _z _y _x vector
	 * \details Gets vecdouble3 _z _y _x vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 uX_abi get_zyx(void) const uX_noexcept
	{
		return vecdouble3(_uX_MM_SHUFFLER_PD_IM(_m128_xmmd_1, _m128_xmmd_0, 0, 1), _m128_xmmd_0);
	}

	/**
	 * \brief Get reference to vector
	 * \details Gets reference to vecdouble3 vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref(void) uX_noexcept
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
	 * \brief Get reference to _x _y vector
	 * \details Gets reference to vecdouble2 _x _y vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_xy(void) uX_noexcept
	{
		vecdbl2rettype = get_xy();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _x _y _z vector
	 * \details Gets reference to vecdouble3 _x _y _z vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_xyz(void) uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get reference to _x _z vector
	 * \details Gets reference to vecdouble2 _x _z vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_xz(void) uX_noexcept
	{
		vecdbl2rettype = get_xz();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _x _z _y vector
	 * \details Gets reference to vecdouble3 _x _z _y vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_xzy(void) uX_noexcept
	{
		*this = get_xzy();
		return *this;
	}

	/**
	 * \brief Get reference to _y
	 * \details Gets reference to _y element from vector
	 * \returns double
	 */
	uX_constexpr double& uX_abi ref_y(void) uX_noexcept
	{
		return _y;
	}

	/**
	 * \brief Get reference to _y _x vector
	 * \details Gets reference to vecdouble2 _y _x vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_yx(void) uX_noexcept
	{
		vecdbl2rettype = get_yx();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _y _x _z vector
	 * \details Gets reference to vecdouble3 _y _x _z vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_yxz(void) uX_noexcept
	{
		*this = get_yxz();
		return *this;
	}

	/**
	 * \brief Get reference to _y _z vector
	 * \details Gets reference to vecdouble2 _y _z vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_yz(void) uX_noexcept
	{
		vecdbl2rettype = get_yz();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _y _z _x vector
	 * \details Gets reference to vecdouble3 _y _z _x vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_yzx(void) uX_noexcept
	{
		*this = get_yzx();
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
	 * \brief Get reference to _z _x vector
	 * \details Gets reference to vecdouble2 _z _x vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_zx(void) uX_noexcept
	{
		vecdbl2rettype = get_zx();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _z _x _y vector
	 * \details Gets reference to vecdouble3 _z _x _y vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_zxy(void) uX_noexcept
	{
		*this = get_zxy();
		return *this;
	}

	/**
	 * \brief Get reference to _z _y vector
	 * \details Gets reference to vecdouble2 _z _y vector
	 * \returns vecdouble2
	 */
	uX_constexpr vecdouble2& uX_abi ref_zy(void) uX_noexcept
	{
		vecdbl2rettype = get_zy();
		return vecdbl2rettype;
	}

	/**
	 * \brief Get reference to _z _y _x vector
	 * \details Gets reference to vecdouble3 _z _y _x vector
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi ref_zyx(void) uX_noexcept
	{
		*this = get_zyx();
		return *this;
	}

	/**
	 * \brief Set the vector
	 * \details Sets the vector elements
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 */
	uX_constexpr void uX_abi set(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd._m128_xmmd_0;
		_m128_xmmd_1 = InVecxmmd._m128_xmmd_1;
	}

	/**
	 * \brief Set the vector _x
	 * \details Sets the vector _x elements
	 * \param[in] Indouble - double Read only
	 */
	uX_constexpr void uX_abi set_x(double Indouble) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SETDBL_PD_IM(_m128_xmmd_0, Indouble, 0);
	}

	/**
	 * \brief Set the vector _x _y
	 * \details Sets the vector _x _y elements
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 */
	uX_constexpr void uX_abi set_xy(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd;
	}

	/**
	 * \brief Set the vector _x _y _z
	 * \details Sets the vector _x _y _z elements
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 */
	uX_constexpr void uX_abi set_xyz(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = InVecxmmd._m128_xmmd_0;
		_m128_xmmd_1 = InVecxmmd._m128_xmmd_1;
	}

	/**
	 * \brief Set the vector _x _z
	 * \details Sets the vector _x _z elements
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 */
	uX_constexpr void uX_abi set_xz(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_0, 0, 1);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_1, 1, 1);
	}

	/**
	 * \brief Set the vector _x _z _y
	 * \details Sets the vector _x _z _y elements
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 */
	uX_constexpr void uX_abi set_xzy(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd._m128_xmmd_0, InVecxmmd._m128_xmmd_1, 0, 0);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd._m128_xmmd_0, _m128_xmmd_1, 1, 1);
	}

	/**
	 * \brief Set the vector _y
	 * \details Sets the vector _y elements
	 * \param[in] Indouble - double Read only
	 */
	uX_constexpr void uX_abi set_y(double Indouble) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SETDBL_PD_IM(_m128_xmmd_0, Indouble, 1);
	}

	/**
	 * \brief Set the vector _y _x
	 * \details Sets the vector _y _x elements
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 */
	uX_constexpr void uX_abi set_yx(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_PERMUTER_PD_IM(InVecxmmd, 1, 0);
	}

	/**
	 * \brief Set the vector _y _x _z
	 * \details Sets the vector _y _x _z elements
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 */
	uX_constexpr void uX_abi set_yxz(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_PERMUTER_PD_IM(InVecxmmd._m128_xmmd_0, 1, 0);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd._m128_xmmd_1, _m128_xmmd_1, 0, 1);
	}

	/**
	 * \brief Set the vector _y _z
	 * \details Sets the vector _y _z elements
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 */
	uX_constexpr void uX_abi set_yz(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, InVecxmmd, 0, 0);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_1, 1, 1);
	}

	/**
	 * \brief Set the vector _y _z _x
	 * \details Sets the vector _y _z _x elements
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 */
	uX_constexpr void uX_abi set_yzx(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd._m128_xmmd_1, InVecxmmd._m128_xmmd_0, 0, 0);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd._m128_xmmd_0, _m128_xmmd_1, 1, 1);
	}

	/**
	 * \brief Set the vector _z
	 * \details Sets the vector _z elements
	 * \param[in] Indouble - double Read only
	 */
	uX_constexpr void uX_abi set_z(double Indouble) uX_noexcept
	{
		_m128_xmmd_1 = _uX_MM_SETDBL_PD_IM(_m128_xmmd_1, Indouble, 0);
	}

	/**
	 * \brief Set the vector _z _x
	 * \details Sets the vector _z _x elements
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 */
	uX_constexpr void uX_abi set_zx(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_0, 1, 1);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_1, 0, 1);
	}

	/**
	 * \brief Set the vector _z _x _y
	 * \details Sets the vector _z _x _y elements
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 */
	uX_constexpr void uX_abi set_zxy(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd._m128_xmmd_0, InVecxmmd._m128_xmmd_1, 1, 0);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd._m128_xmmd_0, _m128_xmmd_1, 0, 1);
	}

	/**
	 * \brief Set the vector _z _y
	 * \details Sets the vector _z _y elements
	 * \param[in] InVecxmmd - vecdouble2 Read only
	 */
	uX_constexpr void uX_abi set_zy(vecdouble2 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, InVecxmmd, 0, 1);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd, _m128_xmmd_1, 0, 1);
	}

	/**
	 * \brief Set the vector _z _y _x
	 * \details Sets the vector _z _y _x elements
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 */
	uX_constexpr void uX_abi set_zyx(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd._m128_xmmd_1, InVecxmmd._m128_xmmd_0, 0, 1);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(InVecxmmd._m128_xmmd_0, _m128_xmmd_1, 0, 1);
	}

	/* Bitwise Operators */

	/**
	 * \brief Bitwise function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a andnot \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi andnot(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_andnot_pd(InVecxmmd_b._m128_xmmd_0, InVecxmmd_a._m128_xmmd_0), _uX_mm_andnot_sd(InVecxmmd_b._m128_xmmd_1, InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Bitwise operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a and \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator&(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_and_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_and_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Bitwise operator OR
	 * \details Performs the compute or from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a or \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator|(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_or_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_or_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Bitwise operator XOR
	 * \details Performs the compute xor from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a xor \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator^(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_xor_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_xor_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Bitwise operator NOT
	 * \details Performs the compute not from the parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a not \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator~(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_not_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_not_sd(InVecxmmd_a._m128_xmmd_1));
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
	friend uX_constexpr bool_t uX_abi bandnot(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return _uX_mm_iandnot_pd(InVecxmmd_b._m128_xmmd_0, InVecxmmd_a._m128_xmmd_0) && _uX_mm_iandnot_sd(InVecxmmd_b._m128_xmmd_1, InVecxmmd_a._m128_xmmd_1);
	}

	/**
	 * \brief Logical operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmd_a && \p InVecxmmd_b
	 */
	friend uX_constexpr bool_t uX_abi operator&&(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return _uX_mm_iand_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0) && _uX_mm_iand_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1);
	}

	/**
	 * \brief Logical operator OR
	 * \details Performs the compute OR from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmd_a || \p InVecxmmd_b
	 */
	friend uX_constexpr bool_t uX_abi operator||(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return _uX_mm_ior_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0) || _uX_mm_ior_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1);
	}

	/**
	 * \brief Logical operator NOT
	 * \details Performs the compute not from the 1 parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns bool_t
	 * \retval the computed boolean not \p InVecxmmd_a
	 */
	friend uX_constexpr bool_t uX_abi operator!(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_inot_pd(InVecxmmd_a._m128_xmmd_0) && _uX_mm_inot_sd(InVecxmmd_a._m128_xmmd_1);
	}

	/**
	 * \brief Logical function HORIZONTAL AND
	 * \details Performs the compute horizontal and in all bits from the parameter. Returns true if all bits are 1
	 * \param[in] InVecxmmd_a.
	 * \returns boolean integer
	 */
	friend uX_constexpr bool_t uX_abi horizontal_and(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_ihand_pd(InVecxmmd_a._m128_xmmd_0) && _uX_mm_ihand_pd(InVecxmmd_a._m128_xmmd_1);
	}

	/**
	 * \brief Logical function HORIZONTAL OR
	 * \details Performs the compute horizontal or in all bits from the parameter. Returns true if at least one bit is 1
	 * \param[in] InVecxmmd_a.
	 * \returns boolean integer.
	 */
	friend uX_constexpr bool_t uX_abi horizontal_or(vecdouble3 const InVecxmmd_a) uX_noexcept
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
	friend uX_constexpr vecdouble3& uX_abi operator&=(vecdouble3& InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble3(_uX_mm_and_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_and_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Logical operator assignment OR
	 * \details Performs the compute or from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a |= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3& uX_abi operator|=(vecdouble3& InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble3(_uX_mm_or_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_or_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Logical operator assignment XOR
	 * \details Performs the compute xor from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a ^= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3& uX_abi operator^=(vecdouble3& InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble3(_uX_mm_xor_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_xor_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
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
	friend uX_constexpr vecdouble3 uX_abi operator+(vecdouble3 const InVecxmmd_a, double Indouble_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_add_pd(InVecxmmd_a._m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_add_sd(InVecxmmd_a._m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] Indouble_a - double broadcast same value to all elements
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p Indouble_a + \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator+(double Indouble_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_add_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_0), _uX_mm_add_sd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - __m128d Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a + \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator+(vecdouble3 const InVecxmmd_a, __m128d const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_add_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b), _uX_mm_add_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmd_a - __m128d Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a + \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator+(__m128d const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_add_pd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_0), _uX_mm_add_sd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a + \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator+(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_add_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_add_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] Indouble_b - double broadcast same value to all elements
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a - \p Indouble_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator-(vecdouble3 const InVecxmmd_a, double Indouble_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_sub_pd(InVecxmmd_a._m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_sub_sd(InVecxmmd_a._m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] Indouble_a - double broadcast same value to all elements
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p Indouble_a - \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator-(double Indouble_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_sub_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_0), _uX_mm_sub_sd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - __m128d Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a - \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator-(vecdouble3 const InVecxmmd_a, __m128d const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_sub_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b), _uX_mm_sub_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmd_a - __m128d Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a - \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator-(__m128d const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_sub_pd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_0), _uX_mm_sub_sd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a - \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator-(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_sub_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_sub_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] Indouble_b - double broadcast same value to all elements
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a * \p Indouble_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator*(vecdouble3 const InVecxmmd_a, double Indouble_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_mul_pd(InVecxmmd_a._m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_mul_sd(InVecxmmd_a._m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] Indouble_a - double broadcast same value to all elements
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p Indouble_a * \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator*(double Indouble_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_mul_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_0), _uX_mm_mul_sd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - __m128d Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a * \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator*(vecdouble3 const InVecxmmd_a, __m128d const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_mul_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b), _uX_mm_mul_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmd_a - __m128d Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a * \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator*(__m128d const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_mul_pd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_0), _uX_mm_mul_sd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a * \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator*(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_mul_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_mul_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] Indouble_b - double broadcast same value to all elements
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a / \p Indouble_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator/(vecdouble3 const InVecxmmd_a, double Indouble_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_div_pd(InVecxmmd_a._m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_div_sd(InVecxmmd_a._m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] Indouble_a - double broadcast same value to all elements
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p Indouble_a / \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator/(double Indouble_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_div_pd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_0), _uX_mm_div_sd(_uX_mm_set1_pd(Indouble_a), InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - __m128d Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a / \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator/(vecdouble3 const InVecxmmd_a, __m128d const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_div_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b), _uX_mm_div_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmd_a - __m128d Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a / \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator/(__m128d const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_div_pd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_0), _uX_mm_div_sd(InVecxmmd_a, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a / \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator/(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_div_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_div_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator assignment addition
	 * \details Performs the compute addition from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a += \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3& uX_abi operator+=(vecdouble3& InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble3(_uX_mm_add_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_add_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator assignment subtraction
	 * \details Performs the compute subtraction from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a -= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3& uX_abi operator-=(vecdouble3& InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble3(_uX_mm_sub_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_sub_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator assignment multiplication
	 * \details Performs the compute multiplication from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a *= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3& uX_abi operator*=(vecdouble3& InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble3(_uX_mm_mul_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_mul_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Arithmetic operator assignment division
	 * \details Performs the compute division from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a /= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3& uX_abi operator/=(vecdouble3& InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a = vecdouble3(_uX_mm_div_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_div_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/* Unary Operators */

	/**
	 * \brief Unary prefix increment operator
	 * \details Performs the compute prefix increment
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed prefix increment \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3& uX_abi operator++(vecdouble3& InVecxmmd_a) uX_noexcept
	{
		InVecxmmd_a = InVecxmmd_a + _uX_mm_const_1_pd();
		return InVecxmmd_a;
	}

	/**
	 * \brief Unary prefix decrement operator
	 * \details Performs the compute prefix decrement
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed prefix decrement \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3& uX_abi operator--(vecdouble3& InVecxmmd_a) uX_noexcept
	{
		InVecxmmd_a = InVecxmmd_a - _uX_mm_const_1_pd();
		return InVecxmmd_a;
	}

	/**
	 * \brief Unary postfix increment operator
	 * \details Performs the compute postfix increment
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed postfix increment \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3 uX_abi operator++(vecdouble3& InVecxmmd_a, int) uX_noexcept
	{
		vecdouble3 tmpxmm_a0 = InVecxmmd_a;
		InVecxmmd_a = InVecxmmd_a + _uX_mm_const_1_pd();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary postfix decrement operator
	 * \details Performs the compute postfix decrement
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed postfix decrement \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3 uX_abi operator--(vecdouble3& InVecxmmd_a, int) uX_noexcept
	{
		vecdouble3 tmpxmm_a0 = InVecxmmd_a;
		InVecxmmd_a = InVecxmmd_a - _uX_mm_const_1_pd();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary minus operator
	 * \details Performs the compute minus change sign bit, even for 0, INF and NAN
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed minus \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3 uX_abi operator-(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_negate_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_negate_sd(InVecxmmd_a._m128_xmmd_1));
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
	friend uX_constexpr vecdouble3 uX_abi operator==(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_cmpeq_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_cmpeq_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Comparison operator less than
	 * \details Performs the compute less than from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a < \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator<(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_cmplt_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_cmplt_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Comparison operator less than or equal
	 * \details Performs the compute less than or equal from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a <= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator<=(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_cmple_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_cmple_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Comparison operator greater than
	 * \details Performs the compute greater than from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a > \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator>(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_cmpgt_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_cmpgt_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Comparison operator greater than or equal
	 * \details Performs the compute greater than or equal from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a >= \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator>=(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_cmpge_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_cmpge_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Comparison operator not equal
	 * \details Performs the compute not equal from the 2 parameters
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a != \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi operator!=(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_cmpneq_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_cmpneq_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Index operator
	 * \details Performs element access only, no modification to elements
	 * \param[in] Nindex - count_t
	 * \returns double
	 */
	uX_constexpr double const& uX_abi operator[](count_t Nindex) const uX_noexcept
	{
		return extract(Nindex);
	}

	/**
	 * \brief Index operator
	 * \details Performs element access and modification to elements
	 * \param[in] Nindex - count_t
	 * \returns double
	 */
	uX_constexpr double& uX_abi operator[](count_t Nindex) uX_noexcept
	{
		dblrettype = extract(Nindex);
		return dblrettype;
	}

	/**
	 * \brief Load m128 unaligned
	 * \details load from type __m128d* unaligned
	 * \param[in] Inpxmmd - __m128d* Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi load_m128(uX_InReads(2) __m128d const* const Inpxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpxmmd));
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpxmmd + 2)), _uX_mm_const_false_pd(), 0, 0);
		return *this;
	}

	/**
	 * \brief Load m128 aligned
	 * \details load from type __m128d* aligned
	 * \param[in] Inpxmmd - __m128d* Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi load_a_m128(uX_InReads(2) __m128d const* const Inpxmmd) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_load_pd(Inpxmmd);
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_uX_mm_loadu_pd(Inpxmmd+1), _uX_mm_const_false_pd(), 0, 0);
		return *this;
	}

	/**
	 * \brief Load unaligned
	 * \details load from type double* unaligned
	 * \param[in] Inpdouble - double* Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi load(uX_InReads(3) double const* const Inpdouble) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble));
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble+2)), _uX_mm_const_false_pd(), 0, 0);
		return *this;
	}

	/**
	 * \brief Load aligned
	 * \details load from type double* aligned
	 * \param[in] Inpdouble - double* Read only
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi load_a(uX_InReads(3) double const* const Inpdouble) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_load_pd(reinterpret_cast<__m128d const* const>(Inpdouble));
		_m128_xmmd_1 = _uX_MM_SHUFFLER_PD_IM(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble+2)), _uX_mm_const_false_pd(), 0, 0);
		return *this;
	}

	/**
	 * \brief Store m128 unaligned
	 * \details store to type __m128d* unaligned
	 * \param[out] Outpxmmd - __m128d* Write only
	 */
	uX_constexpr void uX_abi store_m128(uX_OutWrites(3) __m128d* Outpxmmd) const uX_noexcept
	{
		_uX_mm_storeu_pd(reinterpret_cast<__m128d*>(Outpxmmd), _m128_xmmd_0);
		_uX_mm_storeu_pd(reinterpret_cast<__m128d*>(Outpxmmd+1), _m128_xmmd_1);
	}

	/**
	 * \brief Store m128 aligned
	 * \details store to type __m128d* aligned
	 * \param[out] Outpxmmd - __m128d* Write only
	 * \warning Outpxmmd must be aligned by 16
	 */
	uX_constexpr void uX_abi store_a_m128(uX_OutWrites(3) __m128d* Outpxmmd) const uX_noexcept
	{
		_uX_mm_store_pd(reinterpret_cast<__m128d*>(Outpxmmd), _m128_xmmd_0);
		_uX_mm_storeu_pd(reinterpret_cast<__m128d*>(Outpxmmd+1), _m128_xmmd_1);
	}

	/**
	 * \brief Store unaligned
	 * \details store to type double* unaligned
	 * \param[out] Outpdouble - double* Write only
	 */
	uX_constexpr void uX_abi store(uX_OutWrites(3) double* Outpdouble) const uX_noexcept
	{
		_uX_mm_storeu_pd(reinterpret_cast<__m128d*>(Outpdouble), _m128_xmmd_0);
		_uX_mm_storeu_pd(reinterpret_cast<__m128d*>(Outpdouble+2), _m128_xmmd_1);
	}

	/**
	 * \brief Store aligned
	 * \details store to type double* aligned
	 * \param[out] Outpdouble - double* Write only
	 * \warning Outpdouble must be aligned by 16
	 */
	uX_constexpr void uX_abi store_a(uX_OutWrites(3) double* Outpdouble) const uX_noexcept
	{
		_uX_mm_store_pd(reinterpret_cast<__m128d*>(Outpdouble), _m128_xmmd_0);
		_uX_mm_storeu_pd(reinterpret_cast<__m128d*>(Outpdouble+2), _m128_xmmd_1);
	}

	/**
	 * \brief Insert function
	 * \details Performs the insert element from mask index
	 * \param[in] value - double the value
	 * \param[in] Nindex - count_t the index element to set
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3 const uX_abi insert(double value, count_t Nindex) uX_noexcept
	{
		if(Nindex > 2) return *this;
		if(Nindex > 1)
		{
			_m128_xmmd_1 = _uX_mm_setelts_pd(_m128_xmmd_1, value, Nindex-2);
		}
		else
		{
			_m128_xmmd_0 = _uX_mm_setelts_pd(_m128_xmmd_0, value, Nindex);
		}
		return *this;
	}

	/**
	 * \brief Extract function
	 * \details Performs the extract element from mask index
	 * \param[in] Nindex - count_t the index element to get
	 * \returns double
	 */
	uX_constexpr double uX_abi extract(count_t Nindex) const uX_noexcept
	{
		if(Nindex > 2) return 0.0;
		return Nindex > 1 ? _uX_mm_cvtelts_dbl(_m128_xmmd_1, Nindex-2) : _uX_mm_cvtelts_dbl(_m128_xmmd_0, Nindex);
	}

	/**
	 * \brief Set all elements to zero
	 * \details Sets all elements to zero
	 * \returns vecdouble3
	 */
	uX_constexpr vecdouble3& uX_abi zero(void) uX_noexcept
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
	uX_constexpr vecdouble3& uX_abi cutoff(count_t Nindex) uX_noexcept
	{
		switch(Nindex)
		{
			case 2:
				_m128_xmmd_1 = _uX_mm_const_0_pd();
				break;
			case 1:
				_m128_xmmd_0 = _uX_MM_SHUFFLER_PD_IM(_m128_xmmd_0, _uX_mm_const_0_pd(), 0, 1);
				_m128_xmmd_1 = _uX_mm_const_0_pd();
			case 0:
				_m128_xmmd_0 = _uX_mm_const_0_pd();
				_m128_xmmd_1 = _uX_mm_const_0_pd();
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
	friend uX_constexpr vecdouble3 uX_abi flip_sign(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_xor_pd(InVecxmmd_a._m128_xmmd_0, _uX_mm_const_sign_pd()), _uX_mm_xor_sd(InVecxmmd_a._m128_xmmd_1, _uX_mm_const_0e_sign_sd()));
	}

	/**
	 * \brief Test if all elements if is zero
	 * \details Performs the test if all elements are zero
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a == 0.0
	 */
	friend uX_constexpr vecdouble3 uX_abi is_zero(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_cmpeq_sd(InVecxmmd_a._m128_xmmd_0, _uX_mm_const_0_pd()), _uX_mm_cmpeq_sd(InVecxmmd_a._m128_xmmd_1, _uX_mm_const_0e_0_sd()));
	}

	/**
	 * \brief Test if all elements if is zero
	 * \details Performs the test if all elements are zero
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmd_a == 0.0
	 */
	friend uX_constexpr bool_t uX_abi bis_zero(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_iszero_pd(InVecxmmd_a._m128_xmmd_0) && _uX_mm_iszero_sd(InVecxmmd_a._m128_xmmd_1);
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
	friend uX_constexpr vecdouble3 uX_abi select(vecdouble3 const InHxmmd_f, vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_select_pd(InHxmmd_f._m128_xmmd_0, InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_select_pd(InHxmmd_f._m128_xmmd_1, InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
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
	friend uX_constexpr vecdouble3 uX_abi if_add(vecdouble3 const InHxmmd_f, vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a + (InHxmmd_f & InVecxmmd_b);
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
	friend uX_constexpr vecdouble3 uX_abi if_sub(vecdouble3 const InHxmmd_f, vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a - (InHxmmd_f & InVecxmmd_b);
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
	friend uX_constexpr vecdouble3 uX_abi if_mul(vecdouble3 const InHxmmd_f, vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a * select(InHxmmd_f, InVecxmmd_b, vecdouble3(_uX_mm_const_1_pd()));
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
	friend uX_constexpr vecdouble3 uX_abi if_div(vecdouble3 const InHxmmd_f, vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return InVecxmmd_a / select(InHxmmd_f, InVecxmmd_b, vecdouble3(_uX_mm_const_1_pd()));
	}

	/**
	 * \brief Change signs on vector at compile time
	 * \details Generates a constant vector at compile time stored in memory, and changes the sign of parameter
		Each index i0 is 1 for changing sign on the corresponding element, 0 for no change
	 * \param[in] i0 - int
	 * \param[in] i1 - int
	 * \param[in] i2 - int
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p i0 ? \p InVecxmmd_a ^ 0x8000000000000000: \p InVecxmmd_a
	 */
	template <int i0, int i1, int i2>
	friend uX_constexpr vecdouble3 uX_abi change_sign(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		if((i0 | i1 | i2) == 0) return InVecxmmd_a;
		return InVecxmmd_a ^ vecdouble3(vecuqword3::constant<i0 ? 0x8000000000000000 : 0, i1 ? 0x8000000000000000 : 0, i2 ? 0x8000000000000000 : 0>());
	}

	/**
	 * \brief Sign bit
	 * \details Gives true for elements that have the sign bit set even for -0.0, -INF and -NAN
		Note that sign_bit(vecdouble3(-00f)) gives true, while vecdouble3(-00f) < vecdouble3(00f) gives false
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed sign_bit(InVecxmmd_a)
	 */
	friend uX_constexpr vecdouble3 uX_abi sign_bit(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_signbit_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_signbit_sd(InVecxmmd_a._m128_xmmd_1));
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
	friend uX_constexpr vecdouble3 uX_abi sign_combine(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_signcombine_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_signcombine_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Is finite
	 * \details Gives true for elements that are normal, denormal or zero, false for INF and NAN
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed isfinite \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3 uX_abi is_finite(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_isfinite_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_isfinite_sd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Is inf
	 * \details Gives true for elements that are +INF or -INF, false for finite numbers and NAN
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed isinf \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3 uX_abi is_inf(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_isinf_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_isinf_sd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Is nan
	 * \details Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed isnan \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3 uX_abi is_nan(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_isnan_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_isnan_sd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Is subnormal
	 * \details Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed issubnormal \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3 uX_abi is_subnormal(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_issubnormal_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_issubnormal_sd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Is zero or subnormal
	 * \details Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed iszeroorsubnormal \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3 uX_abi is_zero_or_subnormal(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_iszeroorsubnormal_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_iszeroorsubnormal_sd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Infinite
	 * \details A vector where all elements are +INF
	 * \returns vecdouble3
	 * \retval +INF
	 */
	uX_constexpr vecdouble3& uX_abi infinite(void) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_infinite_pd();
		_m128_xmmd_1 = _uX_mm_infinite_sd();
		return *this;
	}

	/**
	 * \brief Nan
	 * \details A vector where all elements are NAN (quiet)
	 * \returns vecdouble3
	 * \retval NAN (quiet)
	 */
	uX_constexpr vecdouble3& uX_abi nan(void) uX_noexcept
	{
		_m128_xmmd_0 = _uX_mm_nan_pd();
		_m128_xmmd_1 = _uX_mm_nan_sd();
		return *this;
	}

	/**
	 * \brief Is Horizontal add
	 * \details Calculates the sum of all vector elements horizontally
	 * \param InVecxmmd_a the a vector
	 * \return double
	 * \retval _x + _y
	 */
	friend uX_constexpr double uX_abi horizontal_add(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_horizontaladd_pd(vecdouble2(_uX_mm_horizontaladd_pd(InVecxmmd_a._m128_xmmd_0), _uX_MM_CVTPD_DBL_IM(InVecxmmd_a._m128_xmmd_1, 0)));
	}

	/**
	 * \brief Horizontal sub.
	 * \details Calculates the subtraction of all vector elements horizontally
	 * \param InVecxmmd_a the a vector
	 * \return double
	 * \retval _x - _y
	 */
	friend uX_constexpr double uX_abi horizontal_sub(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_horizontalsub_pd(vecdouble2(_uX_mm_horizontalsub_pd(InVecxmmd_a._m128_xmmd_0), _uX_MM_CVTPD_DBL_IM(InVecxmmd_a._m128_xmmd_1, 0)));
	}

	/**
	 * \brief Horizontal mull
	 * \details Calculates the multiplication of all vector elements horizontally
	 * \param InVecxmmd_a the a vector
	 * \return double
	 * \retval _x * _y
	 */
	friend uX_constexpr double uX_abi horizontal_mul(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return _uX_mm_horizontalmul_pd(vecdouble2(_uX_mm_horizontalmul_pd(InVecxmmd_a._m128_xmmd_0), _uX_MM_CVTPD_DBL_IM(InVecxmmd_a._m128_xmmd_1, 0)));
	}

	/**
	 * \brief Max
	 * \details Computes the max a > b ? a : b
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed max \p InVecxmmd_a > InVecxmmd_b ? \p InVecxmmd_a: \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi max(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_max_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_max_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Min
	 * \details Computes the min a < b ? a : b
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] InVecxmmd_b - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed min \p InVecxmmd_a < InVecxmmd_b ? \p InVecxmmd_a: \p InVecxmmd_b
	 */
	friend uX_constexpr vecdouble3 uX_abi min(vecdouble3 const InVecxmmd_a, vecdouble3 const InVecxmmd_b) uX_noexcept
	{
		return vecdouble3(_uX_mm_min_pd(InVecxmmd_a._m128_xmmd_0, InVecxmmd_b._m128_xmmd_0), _uX_mm_min_sd(InVecxmmd_a._m128_xmmd_1, InVecxmmd_b._m128_xmmd_1));
	}

	/**
	 * \brief Abs
	 * \details Computes the absolute value
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed abs \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3 uX_abi abs(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_abs_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_abs_sd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Square
	 * \details Computes the a * a
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a * \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3 uX_abi square(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_square_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_square_sd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief Scale
	 * \details Computes the a * s
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \param[in] Indouble_s - double Read only
	 * \returns vecdouble3
	 * \retval the computed \p InVecxmmd_a * \p Indouble_s
	 */
	friend uX_constexpr vecdouble3 uX_abi scale(vecdouble3 const InVecxmmd_a, double Indouble_s) uX_noexcept
	{
		return vecdouble3(_uX_mm_scale_pd(InVecxmmd_a._m128_xmmd_0, Indouble_s), _uX_mm_scale_sd(InVecxmmd_a._m128_xmmd_1, Indouble_s));
	}

	/**
	 * \brief rcp
	 * \details Computes the reciprocal
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed rcp \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3 uX_abi rcp(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_rcp_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_rcp_sd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief sqrt
	 * \details Computes the square root
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed sqrt \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3 uX_abi sqrt(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_sqrt_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_sqrt_sd(InVecxmmd_a._m128_xmmd_1));
	}

	/**
	 * \brief rsqrt
	 * \details Computes the reciprocal square root
	 * \param[in] InVecxmmd_a - vecdouble3 Read only
	 * \returns vecdouble3
	 * \retval the computed rsqrt \p InVecxmmd_a
	 */
	friend uX_constexpr vecdouble3 uX_abi rsqrt(vecdouble3 const InVecxmmd_a) uX_noexcept
	{
		return vecdouble3(_uX_mm_rsqrt_pd(InVecxmmd_a._m128_xmmd_0), _uX_mm_rsqrt_sd(InVecxmmd_a._m128_xmmd_1));
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
			double			_x, _y, _z;
		};
		__m128d				_m128_xmmd[2];
		double				_m128_dbl[3];
	};
	vecdouble2				vecdbl2rettype;
	double					dblrettype;

public:
	/**
	 * \brief vecdouble3 size
	 * \details Gets the vecdouble3 vector size
	 * \returns count_t
	 * \retval the vecdouble3 size
	 */
	uX_constexpr count_t const uX_abi size(void) const uX_noexcept
	{
		return 24;
	}

	/**
	 * \brief vecdouble3 length
	 * \details Gets the vecdouble3 vector length
	 * \returns count_t
	 * \retval the vecdouble3 length
	 */
	uX_constexpr count_t const uX_abi length(void) const uX_noexcept
	{
		return 3;
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
		return 3;
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
		return 3;
	}

	/**
	 * \brief double pointer size
	 * \details Gets the size of double pointer
	 * \returns count_t
	 * \retval the size of double pointer
	 */
	uX_constexpr count_t const uX_abi dbl_ptr_size(void) const uX_noexcept
	{
		return 24;
	}

	using types = vector3types;
}vecdouble3_t;

#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_xmm_end
namespace_uX_end

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECDOUBLE3_H
