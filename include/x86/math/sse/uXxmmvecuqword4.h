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

#ifndef uX_XMM_VECUQWORD4_H
#define uX_XMM_VECUQWORD4_H 1

/**
 * \defgroup uX_XMM_VECUQWORD4 4 64bit unsigned integers SSE SIMD Vector
 * \ingroup uX_NAMESPACE_XMM
 * \file uXxmmvecuqword4.h
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

#ifndef uX_XMM_VECDOUBLE4_H
#include "uXxmmvecdouble4.h"
#endif  /* uX_XMM_VECDOUBLE4_H */

#ifndef uX_XMM_VECUQWORD3_H
#include "uXxmmvecuqword3.h"
#endif  /* uX_XMM_VECUQWORD3_H */

#ifndef uX_XMM_VECUQWORD2_H
#include "uXxmmvecuqword2.h"
#endif  /* uX_XMM_VECUQWORD2_H */

#ifndef uX_XMM_VECUQWORD1_H
#include "uXxmmvecuqword1.h"
#endif  /* uX_XMM_VECUQWORD1_H */

#ifndef uX_XMM_VECQWORD4_H
#include "uXxmmvecqword4.h"
#endif  /* uX_XMM_VECQWORD4_H */

#ifndef uX_XMM_VECUDWORD4_H
#include "uXxmmvecudword4.h"
#endif  /* uX_XMM_VECUDWORD4_H */

/**
 * \defgroup uX_XMM_VECUQWORD4_CLASS 4 64bit unsigned integers SSE SIMD Vector Class
 * \ingroup uX_XMM_VECUQWORD4
 * To use these class include the header file \p uXxmmvecuqword4.h in your program
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
 * \ingroup uX_XMM_VECUQWORD4_CLASS
 * \class vecuqword4
 * \brief SSE SIMD class with the size of 4 64bit unsigned integer4 element4
 * \details The \p vecuqword4 class is an 4 elements wide 64bit unsigned integers elements where
 *	it provides interoperability between %vecdouble4 and steel return different integers types
 */
typedef class vecuqword4
{
public:
	vecuqword4()uX_default;
	~vecuqword4()uX_default;

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(vecuqword4 const& InVecxmmi)
	 * \brief Default constructor initialization from vecuqword4 type
	 * \details Default constructor copies /p vecuqword4
	 * \param[in] InVecxmmi - vecuqword4 Read only
	 */
	uX_constexpr vecuqword4(vecuqword4 const& InVecxmmi) uX_noexcept : _m128_xmmi_0(InVecxmmi._m128_xmmi_0), _m128_xmmi_1(InVecxmmi._m128_xmmi_1) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(vecuqword4&& InVecxmmi)
	 * \brief Default constructor initialization from vecuqword4 type
	 * \details Default constructor copies /p vecuqword4
	 * \param[in] InVecxmmi - vecuqword4 Read only
	 */
	uX_constexpr vecuqword4(vecuqword4&& InVecxmmi) uX_noexcept : _m128_xmmi_0(InVecxmmi._m128_xmmi_0), _m128_xmmi_1(InVecxmmi._m128_xmmi_1) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(__m128i const Inxmmi)
	 * \brief Constructor initialization from __m128i type 
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inxmmi - __m128i Read only
	 * \warning Broadcast the same value into all elements
	 * \Note Sets the _x _y _z _w uint64_t elements in 128bit copy replacement
	 */
	uX_explicit uX_constexpr vecuqword4(__m128i const Inxmmi) uX_noexcept : _m128_xmmi_0(Inxmmi), _m128_xmmi_1(Inxmmi) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(__m128i const Inxmmi_0, __m128i const Inxmmi_1)
	 * \brief Constructor initialization from 2 __m128i types
	 * \details Constructor copies _x _y _z _w elements from 2 /p __m128i
	 * \param[in] Inxmmi_0 - __m128i Read only
	 * \param[in] Inxmmi_1 - __m128i Read only
	 */
	uX_constexpr vecuqword4(__m128i const Inxmmi_0, __m128i const Inxmmi_1) uX_noexcept : _m128_xmmi_0(Inxmmi_0), _m128_xmmi_1(Inxmmi_1) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(vecuqword3 const InVecxmmi)
	 * \brief Constructor initialization from vecuqword3 type
	 * \details Constructor copies _x _y _z elements from /p vecuqword3 and maintain _w element from /p vecuqword4
	 * \param[in] InVecxmmi - vecuqword3 Read only
	 */
	uX_constexpr vecuqword4(vecuqword3 const InVecxmmi) uX_noexcept : _m128_xmmi_0(InVecxmmi.get_xmmi_0()), _m128_xmmi_1(_uX_mm_select_si128(_uX_mm_const_i64_select10_si128(), InVecxmmi.get_xmmi_1(), _m128_xmmi_1)) {}
	
	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(vecuqword3 const InVecxmmi_a, vecuqword1 const InVecxmmi_b)
	 * \brief Constructor initialization from vecuqword3 and vecuqword1 types
	 * \details Constructor copies _x _y _z elements from /p vecuqword3 and copies _w element from /p vecuqword1
	 * \param[in] InVecxmmi_a - vecuqword3 Read only
	 * \param[in] InVecxmmi_b - vecuqword1 Read only
	 */
	uX_constexpr vecuqword4(vecuqword3 const InVecxmmi_a, vecuqword1 const InVecxmmi_b) uX_noexcept : _m128_xmmi_0(InVecxmmi_a.get_xmmi_0())
																									, _m128_xmmi_1(_uX_mm_unpacklo_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b)) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(vecuqword1 const InVecxmmi_a, vecuqword3 const InVecxmmi_b)
	 * \brief Constructor initialization from vecuqword1 and vecuqword3 types
	 * \details Constructor copies _x element from /p vecuqword1 and copies _y _z _w elements from /p vecuqword3
	 * \param[in] InVecxmmi_a - vecuqword1 Read only
	 * \param[in] InVecxmmi_b - vecuqword3 Read only
	 */
	uX_constexpr vecuqword4(vecuqword1 const InVecxmmi_a, vecuqword3 const InVecxmmi_b) uX_noexcept : _m128_xmmi_0(_uX_mm_unpacklo_epi64(InVecxmmi_a, InVecxmmi_b.get_xmmi_0()))
																									, _m128_xmmi_1(_uX_mm_unpackhi_epi64(InVecxmmi_b.get_xmmi_0(), _uX_MM_SHUFFLER_EPI64_IM(InVecxmmi_b.get_xmmi_1(), 1, 0))) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(vecuqword2 const InVecxmmi)
	 * \brief Constructor initialization from vecuqword2 type
	 * \details Constructor copies _x _y elements from /p vecuqword2 and maintains _z _w elements from /p vecuqword4
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 */
	uX_constexpr vecuqword4(vecuqword2 const InVecxmmi) uX_noexcept : _m128_xmmi_0(InVecxmmi) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(vecuqword2 const InVecxmmi_0, vecuqword2 const InVecxmmi_1)
	 * \brief Constructor initialization from 2 vecuqword2 types
	 * \details Constructor copies _x _y _z _w elements from 2 /p vecuqword2
	 * \param[in] InVecxmmi_0 - vecuqword2 Read only
	 * \param[in] InVecxmmi_1 - vecuqword2 Read only
	 */
	uX_constexpr vecuqword4(vecuqword2 const InVecxmmi_0, vecuqword2 const InVecxmmi_1) uX_noexcept : _m128_xmmi_0(InVecxmmi_0), _m128_xmmi_1(InVecxmmi_1) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(vecuqword1 const InVecxmmi)
	 * \brief Constructor initialization from vecuqword1 type
	 * \details Constructor copies _x element from /p vecuqword1 and maintains _y _z _w elements from /p vecuqword4
	 * \param[in] InVecxmmi - vecuqword1 Read only
	 */
	uX_constexpr vecuqword4(vecuqword1 const InVecxmmi) uX_noexcept : _m128_xmmi_0(_uX_mm_select_si128(_uX_mm_const_i64_select10_si128(), InVecxmmi, _m128_xmmi_0)) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(vecqword4 const InVecxmmi)
	 * \brief Constructor initialization from vecqword4 type
	 * \details Constructor copies _x _y _z _w elements from /p vecqword4
	 * \param[in] InVecxmmi - vecqword4 Read only
	 */
	uX_constexpr vecuqword4(vecqword4 const InVecxmmi) uX_noexcept : _m128_xmmi_0(InVecxmmi.get_xmmi_0()), _m128_xmmi_1(InVecxmmi.get_xmmi_1()) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(vecdouble4 const InVecxmmd)
	 * \brief Constructor initialization from vecdouble4 type
	 * \details Constructor copies _x _y _z _w elements from /p vecdouble4
	 * \param[in] InVecxmmi - vecdouble4 Read only
	 * \warning Only cast's the value, no conversion is made
	 */
	uX_constexpr vecuqword4(vecdouble4 const InVecxmmd) uX_noexcept : _m128_xmmi_0(_uX_mm_castpd_si128(InVecxmmd.get_xmmd_0())), _m128_xmmi_1(_uX_mm_castpd_si128(InVecxmmd.get_xmmd_1())) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(vecudword4 const InVecxmmi)
	 * \brief Constructor initialization from vecudword4 type
	 * \details Constructor converts uint32_t _x _y _z _w elements from /p vecudword4 and zero extend to uint64_t _x _y _z _w elements
	 * \param[in] InVecxmmi - vecudword4 Read only
	 * \warning Converts the value from uint32_t to uint64_t with zero extend
	 * \Note Sets the _x _y _z _w elements with 4 32bits unsigned integers zero extended to 64bits unsigned integers
	 */
	uX_constexpr vecuqword4(vecudword4 const InVecxmmi) uX_noexcept : _m128_xmmi_0(_uX_mm_cvtepu32_epi64(InVecxmmi)), _m128_xmmi_1(_uX_mm_cvtepu32_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi, 1, 0))) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(uint64_t const Inint)
	 * \brief Constructor initialization from uint64_t type
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inint - uint64_t Read only
	 * \warning Broadcast the same value into all elements
	 */
	uX_explicit uX_constexpr vecuqword4(uint64_t const Inint) uX_noexcept : _m128_xmmi_0(_uX_mm_set1_epi64x(Inint)), _m128_xmmi_1(_uX_mm_set1_epi64x(Inint)) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(uint64_t const Inint_X, uint64_t const Inint_Y, uint64_t const Inint_Z, uint64_t const Inint_W)
	 * \brief Constructor initialization from 4 uint64_t types
	 * \details Constructor initialization from 4 uint64_t types
	 * \param[in] Inint_X - uint64_t Read only
	 * \param[in] Inint_Y - uint64_t Read only
	 * \param[in] Inint_Z - uint64_t Read only
	 * \param[in] Inint_W - uint64_t Read only
	 */
	uX_constexpr vecuqword4(uint64_t const Inint_X, uint64_t const Inint_Y, uint64_t const Inint_Z, uint64_t const Inint_W) uX_noexcept : _m128_xmmi_0(_uX_mm_setr_epi64x(Inint_X, Inint_Y))
																																		, _m128_xmmi_1(_uX_mm_setr_epi64x(Inint_Z, Inint_W)) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(bool_t const Inbool)
	 * \brief Constructor initialization from type bool_t
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inbool - bool_t Read only
	 */
	uX_explicit uX_constexpr vecuqword4(bool_t const Inbool) uX_noexcept : _m128_xmmi_0(_uX_mm_set1_epi64x(Inbool.to_true_uint64())), _m128_xmmi_1(_uX_mm_set1_epi64x(Inbool.to_true_uint64())) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(bool_t const Inbool_X, bool_t const Inbool_Y, bool_t const Inbool_Z, bool_t const Inbool_W)
	 * \brief Constructor initialization from 4 bool_t types
	 * \details Constructor initialization from 4 bool_t types
	 * \param[in] Inbool_X - bool_t Read only
	 * \param[in] Inbool_Y - bool_t Read only
	 * \param[in] Inbool_Z - bool_t Read only
	 * \param[in] Inbool_W - bool_t Read only
	 */
	uX_constexpr vecuqword4(bool_t const Inbool_X, bool_t const Inbool_Y, bool_t const Inbool_Z, bool_t const Inbool_W) uX_noexcept : _m128_xmmi_0(_uX_mm_setr_epi64x(Inbool_X.to_true_uint64(), Inbool_Y.to_true_uint64()))
																																	, _m128_xmmi_1(_uX_mm_setr_epi64x(Inbool_Z.to_true_uint64(), Inbool_W.to_true_uint64())) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(bool const Inbool)
	 * \brief Constructor initialization from type bool
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inbool - bool Read only
	 */
	uX_explicit uX_constexpr vecuqword4(bool const Inbool) uX_noexcept : _m128_xmmi_0(vecuqword2(bool_t(Inbool))), _m128_xmmi_1(vecuqword2(bool_t(Inbool))) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(bool const Inbool_X, bool const Inbool_Y, bool const Inbool_Z, bool const Inbool_W)
	 * \brief Constructor initialization from 4 bool types
	 * \details Constructor initialization from 4 bool types
	 * \param[in] Inbool_X - bool Read only
	 * \param[in] Inbool_Y - bool Read only
	 * \param[in] Inbool_Z - bool Read only
	 * \param[in] Inbool_W - bool Read only
	 */
	uX_constexpr vecuqword4(bool const Inbool_X, bool const Inbool_Y, bool const Inbool_Z, bool const Inbool_W) uX_noexcept : _m128_xmmi_0(vecuqword2(bool_t(Inbool_X), bool_t(Inbool_Y)))
																															, _m128_xmmi_1(vecuqword2(bool_t(Inbool_Z), bool_t(Inbool_W))) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(__m128i const* const Inpxmmi)
	 * \brief Constructor initialization from __m128i pointer type
	 * \details Constructor initialization from __m128i pointer type with size of 2 __m128i
	 * \param[in] Inpxmmi - __m128i* Read only
	 * \Note The __m128i pointer is expected to be unaligned
	 */
	uX_explicit uX_constexpr vecuqword4(uX_InReads(2) __m128i const* const Inpxmmi) uX_noexcept : _m128_xmmi_0(_uX_mm_loadu_si128(Inpxmmi))
																								, _m128_xmmi_1(_uX_mm_loadu_si128(Inpxmmi+1)) {}

	/**
	 * \fn uX::xmm::vecuqword4::vecuqword4(uint64_t const* const Inpint64)
	 * \brief Constructor initialization from uint64_t pointer type
	 * \details Constructor initialization from uint64_t pointer type with size of 4 uint64_t types
	 * \param[in] Inpint64 - uint64_t* Read only
	 * \Note The uint64_t pointer is expected to be unaligned
	 */
	uX_explicit uX_constexpr vecuqword4(uX_InReads(4) uint64_t const* const Inpint64) uX_noexcept : _m128_xmmi_0(_uX_mm_loadu_si128(reinterpret_cast<__m128i const* const>(Inpint64)))
																								, _m128_xmmi_1(_uX_mm_loadu_si128(reinterpret_cast<__m128i const* const>(Inpint64+2))) {}

	/**
	 * \brief vecuqword4 default assignment operator
	 * \details To convert from vecuqword4 type
	 * \param[in] InVecxmmi - vecuqword4 Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI operator=(vecuqword4 const& InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi._m128_xmmi_0;
		_m128_xmmi_1 = InVecxmmi._m128_xmmi_1;
		return *this;
	}

	/**
	 * \brief vecuqword4 default assignment operator
	 * \details To convert from vecuqword4 type
	 * \param[in] InVecxmmi - vecuqword4 Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI operator=(vecuqword4&& InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi._m128_xmmi_0;
		_m128_xmmi_1 = InVecxmmi._m128_xmmi_1;
		return *this;
	}

	/**
	 * \brief __m128i assignment operator
	 * \details To convert from __m128i type
	 * \param[in] Inxmmi - __m128i Read only
	 * \returns vecuqword4
	 * \warning Broadcast the same value into all elements
	 */
	uX_constexpr vecuqword4& uX_ABI operator=(__m128i const Inxmmi) uX_noexcept
	{
		_m128_xmmi_0 = Inxmmi;
		_m128_xmmi_1 = Inxmmi;
		return *this;
	}

	/**
	 * \brief vecuqword3 assignment operator
	 * \details To convert from vecuqword3 type
	 * \param[in] InVecxmmi - vecuqword3 Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI operator=(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_xmmi_0();
		_m128_xmmi_1 = _uX_mm_select_si128(_uX_mm_const_i64_select10_si128(), InVecxmmi.get_xmmi_1(), _m128_xmmi_1);
		return *this;
	}

	/**
	 * \brief vecuqword2 assignment operator
	 * \details To convert from vecuqword2 type
	 * \param[in] InVecxmmi - vecuqword2 Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI operator=(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecuqword1 assignment operator
	 * \details To convert from vecuqword1 type
	 * \param[in] InVecxmmi - vecuqword1 Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI operator=(vecuqword1 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_select_si128(_uX_mm_const_i64_select10_si128(), InVecxmmi, _m128_xmmi_0);
		return *this;
	}

	/**
	 * \brief vecqword4 assignment operator
	 * \details To convert from vecqword4 type
	 * \param[in] InVecxmmi - vecqword4 Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI operator=(vecqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_xmmi_0();
		_m128_xmmi_1 = InVecxmmi.get_xmmi_1();
		return *this;
	}

	/**
	 * \brief vecdouble4 assignment operator
	 * \details To convert from vecdouble4 type
	 * \param[in] InVecxmmd - vecdouble4 Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI operator=(vecdouble4 const InVecxmmd) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_castpd_si128(InVecxmmd.get_xmmd_0());
		_m128_xmmi_1 = _uX_mm_castpd_si128(InVecxmmd.get_xmmd_1());
		return *this;
	}

	/**
	 * \brief vecudword4 assignment operator
	 * \details To converts uint32_t _x _y _z _w elements from /p vecudword4 and zero extend to uint64_t _x _y _z _w elements
	 * \param[in] InVecxmmi - vecudword4 Read only
	 * \warning Converts the value from uint32_t to uint64_t with zero extend
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI operator=(vecudword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_cvtepu32_epi64(InVecxmmi);
		_m128_xmmi_1 = _uX_mm_cvtepu32_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi, 1, 0));
		return *this;
	}

	/**
	 * \brief uint64_t assignment operator
	 * \details To broadcast the same uint64_t value into all elements
	 * \param[in] Inint - uint64_t Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI operator=(uint64_t const Inint) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_set1_epi64x(Inint);
		_m128_xmmi_1 = _uX_mm_set1_epi64x(Inint);
		return *this;
	}

	/**
	 * \brief bool_t assignment operator
	 * \details To broadcast the same bool_t value into all elements
	 * \param[in] Inbool - bool_t Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI operator=(bool_t const Inbool) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_set1_epi64x(Inbool.to_true_uint64());
		_m128_xmmi_1 = _uX_mm_set1_epi64x(Inbool.to_true_uint64());
		return *this;
	}

	/**
	 * \brief bool assignment operator
	 * \details To broadcast the same bool value into all elements
	 * \param[in] Inbool - bool Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI operator=(bool const Inbool) uX_noexcept
	{
		_m128_xmmi_0 = vecuqword2(bool_t(Inbool));
		_m128_xmmi_1 = vecuqword2(bool_t(Inbool));
		return *this;
	}

	/**
	 * \brief Get vector 0
	 * \details Gets __m128i 0 vector
	 * \returns __m128i
	 */
	uX_constexpr __m128i uX_ABI get_xmmi_0(void) const uX_noexcept
	{
		return _m128_xmmi_0;
	}

	/**
	 * \brief Get vector 1
	 * \details Gets __m128i 1 vector
	 * \returns __m128i
	 */
	uX_constexpr __m128i uX_ABI get_xmmi_1(void) const uX_noexcept
	{
		return _m128_xmmi_1;
	}

	/**
	 * \brief Get reference to vector 0
	 * \details Gets __m128i reference to vector 0
	 * \returns __m128i
	 */
	uX_constexpr __m128i& uX_ABI ref_xmmi_0(void) uX_noexcept
	{
		return _m128_xmmi_0;
	}

	/**
	 * \brief Get reference to vector 1
	 * \details Gets __m128i reference to vector 1
	 * \returns __m128i
	 */
	uX_constexpr __m128i& uX_ABI ref_xmmi_1(void) uX_noexcept
	{
		return _m128_xmmi_1;
	}

	/**
	 * \brief Set the vector 0
	 * \details Sets the vector 0 elements
	 * \param[in] Inxmmi - __m128i Read only
	 */
	uX_constexpr void uX_ABI set_xmmi_0(__m128i const Inxmmi) uX_noexcept
	{
		_m128_xmmi_0 = Inxmmi;
	}

	/**
	 * \brief Set the vector 1
	 * \details Sets the vector 1 elements
	 * \param[in] Inxmmi - __m128i Read only
	 */
	uX_constexpr void uX_ABI set_xmmi_1(__m128i const Inxmmi) uX_noexcept
	{
		_m128_xmmi_1 = Inxmmi;
	}

	/**
	 * \brief Get vector
	 * \details Gets vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get(void) const uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get _x
	 * \details Gets _x element from vector
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t uX_ABI get_x(void) const uX_noexcept
	{
		return _qw_x;
	}

	/**
	 * \brief Get _x _y vector
	 * \details Gets _x _y vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_ABI get_xy(void) const uX_noexcept
	{
		return _m128_xmmi_0;
	}

	/**
	 * \brief Get _x _y _z vector
	 * \details Gets _x _y _z vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_xyz(void) const uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get _x _y _z _w vector
	 * \details Gets _x _y _z _w elements vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_xyzw(void) const uX_noexcept
	{
		return vecuqword4(_m128_xmmi_0, _m128_xmmi_1);
	}

	/**
	 * \brief Get _x _y _w
	 * \detailsGets _x _y _w elements vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_xyw(void) const uX_noexcept
	{
		return vecuqword3(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1));
	}

	/**
	 * \brief Get _x _y _w _z
	 * \details Gets _x _y _w _z elements vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_xywz(void) const uX_noexcept
	{
		return vecuqword4(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 0));
	}

	/**
	 * \brief Get _x _z
	 * \details Gets _x _z elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_ABI get_xz(void) const uX_noexcept
	{
		return vecuqword2(_uX_mm_unpacklo_epi64(_m128_xmmi_0, _m128_xmmi_1));
	}

	/**
	 * \brief Get _x _z _y
	 * \details Gets _x _z _y elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_xzy(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpacklo_epi64(_m128_xmmi_0, _m128_xmmi_1), _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 1));
	}

	/**
	 * \brief Get _x _z _y _w
	 * \details Gets _x _z _y _w elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_xzyw(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpacklo_epi64(_m128_xmmi_0, _m128_xmmi_1), _uX_mm_unpackhi_epi64(_m128_xmmi_0, _m128_xmmi_1));
	}

	/**
	 * \brief Get _x _z _w
	 * \details Gets _x _z _w elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_xzw(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpacklo_epi64(_m128_xmmi_0, _m128_xmmi_1), _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1));
	}

	/**
	 * \brief Get _x _z _w _y
	 * \details Gets _x _z _w _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_xzwy(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpacklo_epi64(_m128_xmmi_0, _m128_xmmi_1), _uX_mm_unpackhi_epi64(_m128_xmmi_1, _m128_xmmi_0));
	}

	/**
	 * \brief Get _x _w
	 * \details Gets _x _w elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_ABI get_xw(void) const uX_noexcept
	{
		return vecuqword2(_uX_mm_unpacklo_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1)));
	}

	/**
	 * \brief Get _x _w _y
	 * \details Gets _x _w _y elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_xwy(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpacklo_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1)), _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 1));
	}

	/**
	 * \brief Get _x _w _y _z
	 * \details Gets _x _w _y _z elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_xwyz(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpacklo_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1)), _uX_mm_unpackhi_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0)));
	}

	/**
	 * \brief Get _x _w _z
	 * \details Gets _x _w _z elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_xwz(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpacklo_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1)), _m128_xmmi_1);
	}

	/**
	 * \brief Get _x _w _z _y
	 * \details Gets _x _w _z _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_xwzy(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpacklo_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1)), _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0), _m128_xmmi_0));
	}

	/**
	 * \brief Get _y
	 * \details Gets _y element from vector
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t uX_ABI get_y(void) const uX_noexcept
	{
		return _qw_y;
	}

	/**
	 * \brief Get _y _x
	 * \details Gets _y _x elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_ABI get_yx(void) const uX_noexcept
	{
		return vecuqword2(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0));
	}

	/**
	 * \brief Get _y _x _z
	 * \details Gets _y _x _z elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_yxz(void) const uX_noexcept
	{
		return vecuqword3(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0), _m128_xmmi_1);
	}

	/**
	 * \brief Get _y _x _z _w
	 * \details Gets _y _x _z _w elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_yxzw(void) const uX_noexcept
	{
		return vecuqword4(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0), _m128_xmmi_1);
	}

	/**
	 * \brief Get _y _x _w
	 * \details Gets _y _x _w elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_yxw(void) const uX_noexcept
	{
		return vecuqword3(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0), _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1));
	}

	/**
	 * \brief Get _y _x _w _z
	 * \details Gets _y _x _w _z elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_yxwz(void) const uX_noexcept
	{
		return vecuqword4(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0), _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 0));
	}

	/**
	 * \brief Get _y _z
	 * \details Gets _y _z elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_ABI get_yz(void) const uX_noexcept
	{
		return vecuqword2(_uX_mm_unpackhi_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0)));
	}

	/**
	 * \brief Get _y _z _x
	 * \details Gets _y _z _x elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_yzx(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpackhi_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0)), _m128_xmmi_0);
	}

	/**
	 * \brief Get _y _z _x _w
	 * \details Gets _y _z _x _w elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_yzxw(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpackhi_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0)), _uX_mm_unpacklo_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1)));
	}

	/**
	 * \brief Get _y _z _w
	 * \details Gets _y _z _w elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_yzw(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpackhi_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0)), _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1));
	}

	/**
	 * \brief Get _y _z _w _x
	 * \details Gets _y _z _w _x elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_yzwx(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpackhi_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0)), _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1), _m128_xmmi_0));
	}

	/**
	 * \brief Get _y _w
	 * \details Gets _y _w elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_ABI get_yw(void) const uX_noexcept
	{
		return vecuqword2(_uX_mm_unpackhi_epi64(_m128_xmmi_0, _m128_xmmi_1));
	}

	/**
	 * \brief Get _y _w _x
	 * \details Gets _y _w _x elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_ywx(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpackhi_epi64(_m128_xmmi_0, _m128_xmmi_1), _m128_xmmi_0);
	}

	/**
	 * \brief Get _y _w _y _z
	 * \details Gets _y _w _y _z elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_ywxz(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpackhi_epi64(_m128_xmmi_0, _m128_xmmi_1), _uX_mm_unpacklo_epi64(_m128_xmmi_0, _m128_xmmi_1));
	}

	/**
	 * \brief Get _y _w _z
	 * \details Gets _y _w _z elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_ywz(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpackhi_epi64(_m128_xmmi_0, _m128_xmmi_1), _m128_xmmi_1);
	}

	/**
	 * \brief Get _y _w _z _y
	 * \details Gets _y _w _z _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_ywzx(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpackhi_epi64(_m128_xmmi_0, _m128_xmmi_1), _uX_mm_unpacklo_epi64(_m128_xmmi_1, _m128_xmmi_0));
	}

	/**
	 * \brief Get _z
	 * \details Gets _z element from vector
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t uX_ABI get_z(void) const uX_noexcept
	{
		return _qw_z;
	}

	/**
	 * \brief Get _z _x
	 * \details Gets _z _x elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_ABI get_zx(void) const uX_noexcept
	{
		return vecuqword2(_uX_mm_unpacklo_epi64(_m128_xmmi_1, _m128_xmmi_0));
	}

	/**
	 * \brief Get _z _x _y
	 * \details Gets _z _x _y elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_zxy(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpacklo_epi64(_m128_xmmi_1, _m128_xmmi_0), _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 1));
	}

	/**
	 * \brief Get _z _x _y _w
	 * \details Gets _z _x _y _w elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_zxyw(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpacklo_epi64(_m128_xmmi_1, _m128_xmmi_0), _uX_mm_unpackhi_epi64(_m128_xmmi_0, _m128_xmmi_1));
	}

	/**
	 * \brief Get _z _x _w
	 * \details Gets _z _x _w elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_zxw(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpacklo_epi64(_m128_xmmi_1, _m128_xmmi_0), _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1));
	}

	/**
	 * \brief Get _z _x _w _y
	 * \details Gets _z _x _w _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_zxwy(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpacklo_epi64(_m128_xmmi_1, _m128_xmmi_0), _uX_mm_unpackhi_epi64(_m128_xmmi_1, _m128_xmmi_0));
	}

	/**
	 * \brief Get _z _y
	 * \details Gets _z _y elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_ABI get_zy(void) const uX_noexcept
	{
		return vecuqword2(_uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0), _m128_xmmi_0));
	}

	/**
	 * \brief Get _z _y _x
	 * \details Gets _z _y _x elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_zyx(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0), _m128_xmmi_0), _m128_xmmi_0);
	}

	/**
	 * \brief Get _z _y _x _w
	 * \details Gets _z _y _x _w elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_zyxw(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0), _m128_xmmi_0), _uX_mm_unpacklo_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1)));
	}

	/**
	 * \brief Get _z _y _w
	 * \details Gets _z _y _w elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_zyw(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0), _m128_xmmi_0), _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1));
	}

	/**
	 * \brief Get _z _y _w _x
	 * \details Gets _z _y _w _x elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_zywx(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0), _m128_xmmi_0), _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1), _m128_xmmi_0));
	}

	/**
	 * \brief Get _z _w
	 * \details Gets _z _w elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_ABI get_zw(void) const uX_noexcept
	{
		return vecuqword2(_m128_xmmi_1);
	}

	/**
	 * \brief Get _z _w _x
	 * \details Gets _z _w _x elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_zwx(void) const uX_noexcept
	{
		return vecuqword3(_m128_xmmi_1, _m128_xmmi_0);
	}

	/**
	 * \brief Get _z _w _x _y
	 * \details Gets _z _w _x _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_zwxy(void) const uX_noexcept
	{
		return vecuqword4(_m128_xmmi_1, _m128_xmmi_0);
	}

	/**
	 * \brief Get _z _w _y
	 * \details Gets _z _w _y elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_zwy(void) const uX_noexcept
	{
		return vecuqword3(_m128_xmmi_1, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 1));
	}

	/**
	 * \brief Get _z _w _y _x
	 * \details Gets _z _w _y _x elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_zwyx(void) const uX_noexcept
	{
		return vecuqword4(_m128_xmmi_1, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0));
	}

	/**
	 * \brief Get _w
	 * \details Gets _w element from vector
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t uX_ABI get_w(void) const uX_noexcept
	{
		return _qw_w;
	}

	/**
	 * \brief Get _w _x
	 * \details Gets _w _x elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_ABI get_wx(void) const uX_noexcept
	{
		return vecuqword2(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1), _m128_xmmi_0));
	}

	/**
	 * \brief Get _w _x _y
	 * \details Gets _w _x _y elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_wxy(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1), _m128_xmmi_0), _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 1));
	}

	/**
	 * \brief Get _w _x _y _z
	 * \details Gets _w _x _y _z elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_wxyz(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1), _m128_xmmi_0), _uX_mm_unpackhi_epi64(_m128_xmmi_0, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0)));
	}

	/**
	 * \brief Get _w _x _z
	 * \details Gets _w _x _z elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_wxz(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1), _m128_xmmi_0), _m128_xmmi_1);
	}

	/**
	 * \brief Get _w _x _z _y
	 * \details Gets _w _x _z _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_wxzy(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 1), _m128_xmmi_0), _uX_mm_unpackhi_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 0, 0), _m128_xmmi_0));
	}

	/**
	 * \brief Get _w _y
	 * \details Gets _w _y elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_ABI get_wy(void) const uX_noexcept
	{
		return vecuqword2(_uX_mm_unpackhi_epi64(_m128_xmmi_1, _m128_xmmi_0));
	}

	/**
	 * \brief Get _w _y _x
	 * \details Gets _w _y _x elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_wyx(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpackhi_epi64(_m128_xmmi_1, _m128_xmmi_0), _m128_xmmi_0);
	}

	/**
	 * \brief Get _w _y _x _z
	 * \details Gets _w _y _x _z elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_wyxz(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpackhi_epi64(_m128_xmmi_1, _m128_xmmi_0), _uX_mm_unpacklo_epi64(_m128_xmmi_0, _m128_xmmi_1));
	}

	/**
	 * \brief Get _w _y _z
	 * \details Gets _w _y _z elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_wyz(void) const uX_noexcept
	{
		return vecuqword3(_uX_mm_unpackhi_epi64(_m128_xmmi_1, _m128_xmmi_0), _m128_xmmi_1);
	}

	/**
	 * \brief Get _w _y _z _x
	 * \details Gets _w _y _z _x elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_wyzx(void) const uX_noexcept
	{
		return vecuqword4(_uX_mm_unpackhi_epi64(_m128_xmmi_1, _m128_xmmi_0), _uX_mm_unpacklo_epi64(_m128_xmmi_1, _m128_xmmi_0));
	}

	/**
	 * \brief Get _w _z
	 * \details Gets _w _z elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2 uX_ABI get_wz(void) const uX_noexcept
	{
		return vecuqword2(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 0));
	}

	/**
	 * \brief Get _w _z _x
	 * \details Gets _w _z _x elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_wzx(void) const uX_noexcept
	{
		return vecuqword3(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 0), _m128_xmmi_0);
	}

	/**
	 * \brief Get _w _z _x _y
	 * \details Gets _w _z _x _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_wzxy(void) const uX_noexcept
	{
		return vecuqword4(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 0), _m128_xmmi_0);
	}

	/**
	 * \brief Get _w _z _y
	 * \details Gets _w _z _y elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3 uX_ABI get_wzy(void) const uX_noexcept
	{
		return vecuqword3(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 0), _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 1));
	}

	/**
	 * \brief Get _w _z _y _x
	 * \details Gets _w _z _y _x elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 uX_ABI get_wzyx(void) const uX_noexcept
	{
		return vecuqword4(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_1, 1, 0), _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0));
	}

	/**
	 * \brief Get reference to vector
	 * \details Gets reference to vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref(void) uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get reference to _x
	 * \details Gets reference to _x element from vector
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t& uX_ABI ref_x(void) uX_noexcept
	{
		return _qw_x;
	}

	/**
	 * \brief Get reference to _x _y
	 * \details Gets reference to _x _y elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_ABI ref_xy(void) uX_noexcept
	{
		vecqw2rettype = get_xy();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _x _y _z
	 * \details Gets reference to _x _y _z elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_xyz(void) uX_noexcept
	{
		vecqw3rettype = get_xyz();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _x _y _z _w
	 * \details Gets reference to _x _y _z _w elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_xyzw(void) uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get reference to _x _y _w
	 * \details Gets reference too _x _y _w elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_xyw(void) uX_noexcept
	{
		vecqw3rettype = get_xyw();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _x _y _w _z
	 * \details Gets reference to _x _y _w _z elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_xywz(void) uX_noexcept
	{
		*this = get_xywz();
		return *this;
	}

	/**
	 * \brief Get reference to _x _z
	 * \details Gets reference to _x _z elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_ABI ref_xz(void) uX_noexcept
	{
		vecqw2rettype = get_xz();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _x _z _y
	 * \details Gets reference to _x _z _y elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_xzy(void) uX_noexcept
	{
		vecqw3rettype = get_xzy();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _x _z _y _w
	 * \details Gets reference to _x _z _y _w elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_xzyw(void) uX_noexcept
	{
		*this = get_xzyw();
		return *this;
	}

	/**
	 * \brief Get reference to _x _z _w
	 * \details Gets reference to _x _z _w elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_xzw(void) uX_noexcept
	{
		vecqw3rettype = get_xzw();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _x _z _w _y
	 * \details Gets reference to _x _z _w _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_xzwy(void) uX_noexcept
	{
		*this = get_xzwy();
		return *this;
	}

	/**
	 * \brief Get reference to _x _w
	 * \details Gets reference to _x _w elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_ABI ref_xw(void) uX_noexcept
	{
		vecqw2rettype = get_xw();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _x _w _y
	 * \details Gets reference to _x _w _y elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_xwy(void) uX_noexcept
	{
		vecqw3rettype = get_xwy();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _x _w _y _z
	 * \details Gets reference to _x _w _y _z elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_xwyz(void) uX_noexcept
	{
		*this = get_xwyz();
		return *this;
	}

	/**
	 * \brief Get reference to _x _w _z
	 * \details Gets reference to _x _w _z elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_xwz(void) uX_noexcept
	{
		vecqw3rettype = get_xwz();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _x _w _z _y
	 * \details Gets reference to _x _w _z _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_xwzy(void) uX_noexcept
	{
		*this = get_xwzy();
		return *this;
	}

	/**
	 * \brief Get reference to _y
	 * \details Gets reference to _y elements from vector
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t& uX_ABI ref_y(void) uX_noexcept
	{
		return _qw_y;
	}

	/**
	 * \brief Get reference to _y _x
	 * \details Gets reference to _y _x elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_ABI ref_yx(void) uX_noexcept
	{
		vecqw2rettype = get_yx();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _y _x _z
	 * \details Gets reference to _y _x _z elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_yxz(void) uX_noexcept
	{
		vecqw3rettype = get_yxz();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _y _x _z _w
	 * \details Gets reference to _y _x _z _w elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_yxzw(void) uX_noexcept
	{
		*this = get_yxzw();
		return *this;
	}

	/**
	 * \brief Get reference to _y _x _w
	 * \details Gets reference to _y _x _w elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_yxw(void) uX_noexcept
	{
		vecqw3rettype = get_yxw();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _y _x _w _z
	 * \details Gets reference to _y _x _w _z elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_yxwz(void) uX_noexcept
	{
		*this = get_yxwz();
		return *this;
	}

	/**
	 * \brief Get reference to _y _z
	 * \details Gets reference to _y _z elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_ABI ref_yz(void) uX_noexcept
	{
		vecqw2rettype = get_yz();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _y _z _x
	 * \details Gets reference to _y _z _x elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_yzx(void) uX_noexcept
	{
		vecqw3rettype = get_yzx();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _y _z _x _w
	 * \details Gets reference to _y _z _x _w elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_yzxw(void) uX_noexcept
	{
		*this = get_yzxw();
		return *this;
	}

	/**
	 * \brief Get reference to _y _z _w
	 * \details Gets reference to _y _z _w elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_yzw(void) uX_noexcept
	{
		vecqw3rettype = get_yzw();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _y _z _w _x
	 * \details Gets reference to _y _z _w _x elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_yzwx(void) uX_noexcept
	{
		*this = get_yzwx();
		return *this;
	}

	/**
	 * \brief Get reference to _y _w
	 * \details Gets reference to _y _w elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_ABI ref_yw(void) uX_noexcept
	{
		vecqw2rettype = get_yw();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _y _w _x
	 * \details Gets reference to _y _w _x elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_ywx(void) uX_noexcept
	{
		vecqw3rettype = get_ywx();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _y _w _y _z
	 * \details Gets reference to _y _w _y _z elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_ywxz(void) uX_noexcept
	{
		*this = get_ywxz();
		return *this;
	}

	/**
	 * \brief Get reference to _y _w _z
	 * \details Gets reference to _y _w _z elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_ywz(void) uX_noexcept
	{
		vecqw3rettype = get_ywz();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _y _w _z _y
	 * \details Gets reference to _y _w _z _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_ywzx(void) uX_noexcept
	{
		*this = get_ywzx();
		return *this;
	}

	/**
	 * \brief Get reference to _z
	 * \details Gets reference to _z element from vector
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t& uX_ABI ref_z(void) uX_noexcept
	{
		return _qw_z;
	}

	/**
	 * \brief Get reference to _z _x
	 * \details Gets reference to _z _x elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_ABI ref_zx(void) uX_noexcept
	{
		vecqw2rettype = get_zx();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _z _x _y
	 * \details Gets reference to _z _x _y elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_zxy(void) uX_noexcept
	{
		vecqw3rettype = get_zxy();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _z _x _y _w
	 * \details Gets reference to _z _x _y _w elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_zxyw(void) uX_noexcept
	{
		*this = get_zxyw();
		return *this;
	}

	/**
	 * \brief Get reference to _z _x _w
	 * \details Gets reference to _z _x _w elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_zxw(void) uX_noexcept
	{
		vecqw3rettype = get_zxw();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _z _x _w _y
	 * \details Gets reference to _z _x _w _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_zxwy(void) uX_noexcept
	{
		*this = get_zxwy();
		return *this;
	}

	/**
	 * \brief Get reference to _z _y
	 * \details Gets reference to _z _y elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_ABI ref_zy(void) uX_noexcept
	{
		vecqw2rettype = get_zy();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _z _y _x
	 * \details Gets reference to _z _y _x elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_zyx(void) uX_noexcept
	{
		vecqw3rettype = get_zyx();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _z _y _x _w
	 * \details Gets reference to _z _y _x _w elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_zyxw(void) uX_noexcept
	{
		*this = get_zyxw();
		return *this;
	}

	/**
	 * \brief Get reference to _z _y _w
	 * \details Gets reference to _z _y _w elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_zyw(void) uX_noexcept
	{
		vecqw3rettype = get_zyw();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _z _y _w _x
	 * \details Gets reference to _z _y _w _xelements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_zywx(void) uX_noexcept
	{
		*this = get_zywx();
		return *this;
	}

	/**
	 * \brief Get reference to _z _w
	 * \details Gets reference to _z _w elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_ABI ref_zw(void) uX_noexcept
	{
		vecqw2rettype = get_zw();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _z _w _x
	 * \details Gets reference to _z _w _x elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_zwx(void) uX_noexcept
	{
		vecqw3rettype = get_zwx();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _z _w _x _y
	 * \details Gets reference to _z _w _x _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_zwxy(void) uX_noexcept
	{
		*this = get_zwxy();
		return *this;
	}

	/**
	 * \brief Get reference to _z _w _y
	 * \details Gets reference to _z _w _y elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_zwy(void) uX_noexcept
	{
		vecqw3rettype = get_zwy();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _z _w _y _x
	 * \details Gets reference to _z _w _y _x elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_zwyx(void) uX_noexcept
	{
		*this = get_zwyx();
		return *this;
	}

	/**
	 * \brief Get reference to _w
	 * \details Gets reference to _w element from vector
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t& uX_ABI ref_w(void) uX_noexcept
	{
		return _qw_w;
	}

	/**
	 * \brief Get reference to _w _x
	 * \details Gets reference to _w _x elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_ABI ref_wx(void) uX_noexcept
	{
		vecqw2rettype = get_wx();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _w _x _y
	 * \details Gets reference to _w _x _y elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_wxy(void) uX_noexcept
	{
		vecqw3rettype = get_wxy();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _w _x _y _z
	 * \details Gets reference to _w _x _y _z elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_wxyz(void) uX_noexcept
	{
		*this = get_wxyz();
		return *this;
	}

	/**
	 * \brief Get reference to _w _x _z
	 * \details Gets reference to _w _x _z elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_wxz(void) uX_noexcept
	{
		vecqw3rettype = get_wxz();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _w _x _z _y
	 * \details Gets reference to _w _x _z _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_wxzy(void) uX_noexcept
	{
		*this = get_wxzy();
		return *this;
	}

	/**
	 * \brief Get reference to _w _y
	 * \details Gets reference to _w _y elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_ABI ref_wy(void) uX_noexcept
	{
		vecqw2rettype = get_wy();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _w _y _x
	 * \details Gets reference to _w _y _x elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_wyx(void) uX_noexcept
	{
		vecqw3rettype = get_wyx();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _w _y _x _z
	 * \details Gets reference to _w _y _x _z elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_wyxz(void) uX_noexcept
	{
		*this = get_wyxz();
		return *this;
	}

	/**
	 * \brief Get reference to _w _y _z
	 * \details Gets reference to _w _y _z elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_wyz(void) uX_noexcept
	{
		vecqw3rettype = get_wyz();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _w _y _z _x
	 * \details Gets reference to _w _y _z _x elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_wyzx(void) uX_noexcept
	{
		*this = get_wyzx();
		return *this;
	}

	/**
	 * \brief Get reference to _w _z
	 * \details Gets reference to _w _z elements from vector
	 * \returns vecuqword2
	 */
	uX_constexpr vecuqword2& uX_ABI ref_wz(void) uX_noexcept
	{
		vecqw2rettype = get_wz();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _w _z _x
	 * \details Gets reference to _w _z _x elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_wzx(void) uX_noexcept
	{
		vecqw3rettype = get_wzx();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _w _z _x _y
	 * \details Gets reference to _w _z _x _y elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_wzxy(void) uX_noexcept
	{
		*this = get_wzxy();
		return *this;
	}

	/**
	 * \brief Get reference to _w _z _y
	 * \details Gets reference to _w _z _y elements from vector
	 * \returns vecuqword3
	 */
	uX_constexpr vecuqword3& uX_ABI ref_wzy(void) uX_noexcept
	{
		vecqw3rettype = get_wzy();
		return vecqw3rettype;
	}

	/**
	 * \brief Get reference to _w _z _y _x
	 * \details Gets reference to _w _z _y _x elements from vector
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI ref_wzyx(void) uX_noexcept
	{
		*this = get_wzyx();
		return *this;
	}

	/**
	 * \brief Set the vector
	 * \details Sets all vector elements
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi._m128_xmmi_0;
		_m128_xmmi_1 = InVecxmmi._m128_xmmi_1;
	}

	/**
	 * \brief Set the vector _x
	 * \details Sets the vector _x element
	 * \param[in] Inint
	 */
	uX_constexpr void uX_ABI set_x(uint64_t Inint) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64X_SI128_IM(_m128_xmmi_0, Inint, 0);
	}

	/**
	 * \brief Set the vector _x _y
	 * \details Sets the vector _x _y elements with _x _y
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xy(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi;
	}

	/**
	 * \brief Set the vector _x _y _z
	 * \details Sets the vector _x _y _z elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xyz(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_xy();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_zx(), 0);
	}

	/**
	 * \brief Set the vector _x _y _z _w
	 * \details Sets the vector _x _y _z _w elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xyzw(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi._m128_xmmi_0;
		_m128_xmmi_1 = InVecxmmi._m128_xmmi_1;
	}

	/**
	 * \brief Set the vector _x _y _w
	 * \details Sets the vector _x _y _w elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xyw(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_xy();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_zx(), 1);
	}

	/**
	 * \brief Set the vector _x _y _w _z
	 * \details Sets the vector _x _y _w _z elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xywz(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi._m128_xmmi_0;
		_m128_xmmi_1 = InVecxmmi.get_wz();
	}

	/**
	 * \brief Set the vector _x _z
	 * \details Sets the vector _x _z elements with _x _y
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xz(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_xy(), 0);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_yx(), 0);
	}

	/**
	 * \brief Set the vector _x _z _y
	 * \details Sets the vector _x _z _y elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xzy(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_xz();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_yx(), 0);
	}

	/**
	 * \brief Set the vector _x _z _y _w
	 * \details Sets the vector _x _z _y _w elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xzyw(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_xz();
		_m128_xmmi_1 = InVecxmmi.get_yw();
	}

	/**
	 * \brief Set the vector _x _z _w
	 * \details Sets the vector _x _z _w elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xzw(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_xy(), 0);
		_m128_xmmi_1 = InVecxmmi.get_yz();
	}

	/**
	 * \brief Set the vector _x _z _w _y
	 * \details Sets the vector _x _z _w _y elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xzwy(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_xw();
		_m128_xmmi_1 = InVecxmmi.get_yz();
	}

	/**
	 * \brief Set the vector _x _w
	 * \details Sets the vector _x _w elements with _x _y
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xw(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_xy(), 0);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_yx(), 1);
	}

	/**
	 * \brief Set the vector _x _w _y
	 * \details Sets the vector _x _w _y elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xwy(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_xz();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_yx(), 1);
	}

	/**
	 * \brief Set the vector _x _w _y _z
	 * \details Sets the vector _x _w _y _z elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xwyz(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_xz();
		_m128_xmmi_1 = InVecxmmi.get_wy();
	}

	/**
	 * \brief Set the vector _x _w _z
	 * \details Sets the vector _x _w _z elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xwz(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_xy(), 0);
		_m128_xmmi_1 = InVecxmmi.get_zy();
	}

	/**
	 * \brief Set the vector _x _w _z _y
	 * \details Sets the vector _x _w _z _y elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_xwzy(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_xw();
		_m128_xmmi_1 = InVecxmmi.get_zy();
	}

	/**
	 * \brief Set the vector _y
	 * \details Sets the vector _y element
	 * \param[in] Inint
	 */
	uX_constexpr void uX_ABI set_y(uint64_t Inint) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64X_SI128_IM(_m128_xmmi_0, Inint, 1);
	}

	/**
	 * \brief Set the vector _y _x
	 * \details Sets the vector _y _x elements with _x _y
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_yx(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_yx();
	}

	/**
	 * \brief Set the vector _y _x _z
	 * \details Sets the vector _y _x _z elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_yxz(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_yx();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_zx(), 0);
	}

	/**
	 * \brief Set the vector _y _x _z _w
	 * \details Sets the vector _y _x _z _w elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_yxzw(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_yx();
		_m128_xmmi_1 = InVecxmmi._m128_xmmi_1;
	}

	/**
	 * \brief Set the vector _y _x _w
	 * \details Sets the vector _y _x _w elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_yxw(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_yx();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_zx(), 1);
	}

	/**
	 * \brief Set the vector _y _x _w _z
	 * \details Sets the vector _y _x _w _z elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_yxwz(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_yx();
		_m128_xmmi_1 = InVecxmmi.get_wz();
	}

	/**
	 * \brief Set the vector _y _z
	 * \details Sets the vector _y _z elements with _x _y
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_yz(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_xy(), 1);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_yx(), 0);
	}

	/**
	 * \brief Set the vector _y _z _x
	 * \details Sets the vector _y _z _x elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_yzx(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_zx();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_yx(), 0);
	}

	/**
	 * \brief Set the vector _y _z _x _w
	 * \details Sets the vector _y _z _x _w elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_yzxw(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_zx();
		_m128_xmmi_1 = InVecxmmi.get_yw();
	}

	/**
	 * \brief Set the vector _y _z _w
	 * \details Sets the vector _y _z _w elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_yzw(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_xy(), 1);
		_m128_xmmi_1 = InVecxmmi.get_yz();
	}

	/**
	 * \brief Set the vector _y _z _w _x
	 * \details Sets the vector _y _z _w _x elements with _x _y _z _w
	 *
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_yzwx(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_wx();
		_m128_xmmi_1 = InVecxmmi.get_yz();
	}

	/**
	 * \brief Set the vector _y _w
	 * \details Sets the vector _y _w elements with _x _y
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_yw(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_xy(), 1);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_yx(), 1);
	}

	/**
	 * \brief Set the vector _y _w _x
	 * \details Sets the vector _y _w _x elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_ywx(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_zx();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_yx(), 1);
	}

	/**
	 * \brief Set the vector _y _w _y _z
	 * \details Sets the vector _y _w _y _z elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_ywxz(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_zx();
		_m128_xmmi_1 = InVecxmmi.get_wy();
	}

	/**
	 * \brief Set the vector _y _w _z
	 * \details Sets the vector _y _w _z elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_ywz(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_xy(), 1);
		_m128_xmmi_1 = InVecxmmi.get_zy();
	}

	/**
	 * \brief Set the vector _y _w _z _y
	 * \details Sets the vector _y _w _z _y elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_ywzx(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_wx();
		_m128_xmmi_1 = InVecxmmi.get_zy();
	}

	/**
	 * \brief Set the vector _z
	 * \details Sets the vector _z element
	 * \param[in] Inint
	 */
	uX_constexpr void uX_ABI set_z(uint64_t Inint) uX_noexcept
	{
		_m128_xmmi_1 = _uX_MM_SETEPI64X_SI128_IM(_m128_xmmi_1, Inint, 0);
	}

	/**
	 * \brief Set the vector _z _x
	 * \details Sets the vector _z _x elements with _x _y
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zx(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_yx(), 0);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_xy(), 0);
	}

	/**
	 * \brief Set the vector _z _x _y
	 * \details Sets the vector _z _x _y elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zxy(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_yz();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_xy(), 0);
	}

	/**
	 * \brief Set the vector _z _x _y _w
	 * \details Sets the vector _z _x _y _w elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zxyw(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_yz();
		_m128_xmmi_1 = InVecxmmi.get_xw();
	}

	/**
	 * \brief Set the vector _z _x _w
	 * \details Sets the vector _z _x _w elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zxw(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_yx(), 0);
		_m128_xmmi_1 = InVecxmmi.get_xz();
	}

	/**
	 * \brief Set the vector _z _x _w _y
	 * \details Sets the vector _z _x _w _y elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zxwy(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_yw();
		_m128_xmmi_1 = InVecxmmi.get_xz();
	}

	/**
	 * \brief Set the vector _z _y
	 * \details Sets the vector _z _y elements with _x _y
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zy(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_yx(), 1);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_xy(), 0);
	}

	/**
	 * \brief Set the vector _z _y _x
	 * \details Sets the vector _z _y _x elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zyx(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_zy();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_xy(), 0);
	}

	/**
	 * \brief Set the vector _z _y _x _w
	 * \details Sets the vector _z _y _x _w elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zyxw(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_zy();
		_m128_xmmi_1 = InVecxmmi.get_xw();
	}

	/**
	 * \brief Set the vector _z _y _w
	 * \details Sets the vector _z _y _w elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zyw(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_yx(), 1);
		_m128_xmmi_1 = InVecxmmi.get_xz();
	}

	/**
	 * \brief Set the vector _z _y _w
	 * \details Sets the vector _z _y _w _x elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zywx(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_wy();
		_m128_xmmi_1 = InVecxmmi.get_xz();
	}

	/**
	 * \brief Set the vector _z _w
	 * \details Sets the vector _z _w elements with _x _y
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zw(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_1 = InVecxmmi;
	}

	/**
	 * \brief Set the vector _z _w _x
	 * \details Sets the vector _z _w _x elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zwx(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_zx(), 0);
		_m128_xmmi_1 = InVecxmmi.get_xy();
	}

	/**
	 * \brief Set the vector _z _w _x _y
	 * \details Sets the vector _z _w _x _y elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zwxy(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_zw();
		_m128_xmmi_1 = InVecxmmi.get_xy();
	}

	/**
	 * \brief Set the vector _z _w _y
	 * \details Sets the vector _z _w _y elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zwy(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_zx(), 1);
		_m128_xmmi_1 = InVecxmmi.get_xy();
	}

	/**
	 * \brief Set the vector _z _w _y _x
	 * \details Sets the vector _z _w _y _x elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_zwyx(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_wz();
		_m128_xmmi_1 = InVecxmmi.get_xy();
	}

	/**
	 * \brief Set the vector _w
	 * \details Sets the vector _w element
	 * \param[in] Inint
	 */
	uX_constexpr void uX_ABI set_w(uint64_t Inint) uX_noexcept
	{
		_m128_xmmi_1 = _uX_MM_SETEPI64X_SI128_IM(_m128_xmmi_1, Inint, 1);
	}

	/**
	 * \brief Set the vector _w _x
	 * \details Sets the vector _w _x elements with _x _y
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wx(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_yx(), 0);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_xy(), 1);
	}

	/**
	 * \brief Set the vector _w _x _y
	 * \details Sets the vector _w _x _y elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wxy(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_yz();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_xy(), 1);
	}

	/**
	 * \brief Set the vector _w _x _y _z
	 * \details Sets the vector _w _x _y _z elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wxyz(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_yz();
		_m128_xmmi_1 = InVecxmmi.get_wx();
	}

	/**
	 * \brief Set the vector _w _x _z
	 * \details Sets the vector _w _x _z elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wxz(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_yx(), 0);
		_m128_xmmi_1 = InVecxmmi.get_zx();
	}

	/**
	 * \brief Set the vector _w _x _z _y
	 * \details Sets the vector _w _x _z _y elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wxzy(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_yw();
		_m128_xmmi_1 = InVecxmmi.get_zx();
	}

	/**
	 * \brief Set the vector _w _y
	 * \details Sets the vector _w _y elements with _x _y
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wy(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_yx(), 1);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_xy(), 1);
	}

	/**
	 * \brief Set the vector _w _y _x
	 * \details Sets the vector _w _y _x elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wyx(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_zy();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_xy(), 1);
	}

	/**
	 * \brief Set the vector _w _y _x _z
	 * \details Sets the vector _w _y _x _z elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wyxz(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_zy();
		_m128_xmmi_1 = InVecxmmi.get_wx();
	}

	/**
	 * \brief Set the vector _w _y _z
	 * \details Sets the vector _w _y _z elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wyz(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_yx(), 1);
		_m128_xmmi_1 = InVecxmmi.get_zx();
	}

	/**
	 * \brief Set the vector _w _y _z _x
	 * \details Sets the vector _w _y _z _x elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wyzx(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_wy();
		_m128_xmmi_1 = InVecxmmi.get_zx();
	}

	/**
	 * \brief Set the vector _w _z
	 * \details Sets the vector _w _z elements with _x _y
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wz(vecuqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_1 = InVecxmmi.get_yx();
	}

	/**
	 * \brief Set the vector _w _z _x
	 * \details Sets the vector _w _z _x elements with _x _y _z
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wzx(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_zx(), 0);
		_m128_xmmi_1 = InVecxmmi.get_yx();
	}

	/**
	 * \brief Set the vector _w _z _x _y
	 * \details Sets the vector _w _z _x _y elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wzxy(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_zw();
		_m128_xmmi_1 = InVecxmmi.get_yx();
	}

	/**
	 * \brief Set the vector _w _z _y
	 * \details Sets the vector _w _z _y elements with _x _y _z)
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wzy(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_zx(), 1);
		_m128_xmmi_1 = InVecxmmi.get_yx();
	}

	/**
	 * \brief Set the vector _w _z _y _x
	 * \details Sets the vector _w _z _y _x elements with _x _y _z _w
	 * \param[in] InVecxmmi
	 */
	uX_constexpr void uX_ABI set_wzyx(vecuqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_wz();
		_m128_xmmi_1 = InVecxmmi.get_yx();
	}

	/**
	 * \brief Generates a constant vector of 4 uint64_t integer at compile time
	 * \details Generates a constant vector at compile time stored in memory
	 * \param[in] i0 - uint64_t
	 * \param[in] i1 - uint64_t
	 * \param[in] i2 - uint64_t
	 * \param[in] i3 - uint64_t
	 * \returns vecuqword4
	 * \retval the constant \p i0 \p i1 \p i2 \p i3 stored in the _x _y _z _w elements
	 */
	template <uint64_t i0, uint64_t i1, uint64_t i2, uint64_t i3>
	uX_constexpr vecuqword4 const uX_ABI constant() const
	{
		return vecuqword4(i0, i1, i2, i3);
	}

	/* Bitwise Operators */

	/**
	 * \brief Bitwise function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a andnot \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI andnot(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_andnot_epi64(InVecxmmi_b.get_xmmi_0(), InVecxmmi_a.get_xmmi_0()), _uX_mm_andnot_epi64(InVecxmmi_b.get_xmmi_1(), InVecxmmi_a.get_xmmi_1()));
	}

	/**
	 * \brief Bitwise operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a and \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator&(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_and_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_and_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Bitwise operator OR
	 * \details Performs the compute or from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a or \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator|(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_or_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_or_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Bitwise operator XOR
	 * \details Performs the compute xor from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a xor \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator^(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_xor_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_xor_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Bitwise operator NOT
	 * \details Performs the compute not from the parameter
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a not
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator~(vecuqword4 const InVecxmmi_a) uX_noexcept
	{
		return vecuqword4(_uX_mm_not_epi64(InVecxmmi_a.get_xmmi_0()), _uX_mm_not_epi64(InVecxmmi_a.get_xmmi_1()));
	}

	/* Logical Operators */

	/**
	 * \brief Logical function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a andnot \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_ABI bandnot(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_iandnot_epi64(InVecxmmi_b.get_xmmi_0(), InVecxmmi_a.get_xmmi_0()) && _uX_mm_iandnot_epi64(InVecxmmi_b.get_xmmi_1(), InVecxmmi_a.get_xmmi_1());
	}

	/**
	 * \brief Logical operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a && \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_ABI operator&&(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_iand_epi64(InVecxmmi_b.get_xmmi_0(), InVecxmmi_a.get_xmmi_0()) && _uX_mm_iand_epi64(InVecxmmi_b.get_xmmi_1(), InVecxmmi_a.get_xmmi_1());
	}

	/**
	 * \brief Logical operator OR
	 * \details Performs the compute OR from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a || \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_ABI operator||(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_ior_epi64(InVecxmmi_b.get_xmmi_0(), InVecxmmi_a.get_xmmi_0()) || _uX_mm_ior_epi64(InVecxmmi_b.get_xmmi_1(), InVecxmmi_a.get_xmmi_1());
	}

	/**
	 * \brief Logical operator NOT
	 * \details Performs the compute not from the 1 parameter
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \returns bool_t
	 * \retval the computed boolean not \p InVecxmmi_a
	 */
	friend uX_constexpr bool_t uX_ABI operator!(vecuqword4 const InVecxmmi_a) uX_noexcept
	{
		return _uX_mm_inot_epi64(InVecxmmi_a.get_xmmi_0()) && _uX_mm_inot_epi64(InVecxmmi_a.get_xmmi_1());
	}

	/**
	 * \brief Logical operator assignment AND
	 * \details Performs the compute and from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a &= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4& uX_ABI operator&=(vecuqword4& InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword4(_uX_mm_and_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_and_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/**
	 * \brief Logical operator assignment OR
	 * \details Performs the compute or from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a |= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4& uX_ABI operator|=(vecuqword4& InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword4(_uX_mm_or_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_or_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/**
	 * \brief Logical operator assignment XOR
	 * \details Performs the compute xor from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a ^= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4& uX_ABI operator^=(vecuqword4& InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword4(_uX_mm_xor_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_xor_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/* Arithmetic Operators */

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] Inint_b - uint64_t broadcast same value to all elements
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a + \p Inint_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator+(vecuqword4 const InVecxmmi_a, uint64_t Inint_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_add_epi64(InVecxmmi_a.get_xmmi_0(), _uX_mm_set1_epi64x(Inint_b)), _uX_mm_add_epi64(InVecxmmi_a.get_xmmi_1(), _uX_mm_set1_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] Inint_a - uint64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p Inint_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator+(uint64_t Inint_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_add_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.get_xmmi_0()), _uX_mm_add_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator+(vecuqword4 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_add_epi64(InVecxmmi_a.get_xmmi_0(), Inxmmi_b), _uX_mm_add_epi64(InVecxmmi_a.get_xmmi_1(), Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator+(__m128i const Inxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_add_epi64(Inxmmi_a, InVecxmmi_b.get_xmmi_0()), _uX_mm_add_epi64(Inxmmi_a, InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator+(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_add_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_add_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] Inint_b - uint64_t broadcast same value to all elements
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a - \p Inint_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator-(vecuqword4 const InVecxmmi_a, uint64_t Inint_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_sub_epi64(InVecxmmi_a.get_xmmi_0(), _uX_mm_set1_epi64x(Inint_b)), _uX_mm_sub_epi64(InVecxmmi_a.get_xmmi_1(), _uX_mm_set1_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] Inint_a - uint64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p Inint_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator-(uint64_t Inint_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_sub_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.get_xmmi_0()), _uX_mm_sub_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.get_xmmi_1()));
	}
	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator-(vecuqword4 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_sub_epi64(InVecxmmi_a.get_xmmi_0(), Inxmmi_b), _uX_mm_sub_epi64(InVecxmmi_a.get_xmmi_1(), Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator-(__m128i const Inxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_sub_epi64(Inxmmi_a, InVecxmmi_b.get_xmmi_0()), _uX_mm_sub_epi64(Inxmmi_a, InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator-(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_sub_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_sub_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] Inint_b - uint64_t broadcast same value to all elements
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a * \p Inint_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator*(vecuqword4 const InVecxmmi_a, uint64_t Inint_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_0(), _uX_mm_set1_epi64x(Inint_b)), _uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_1(), _uX_mm_set1_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] Inint_a - uint64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p Inint_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator*(uint64_t Inint_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_mule_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.get_xmmi_0()), _uX_mm_mule_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator*(vecuqword4 const InVecxmmi_a, __m128i const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b), _uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator*(__m128i const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b.get_xmmi_0()), _uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator*(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] Inint_a_b - uint64_t broadcast same value to all elements
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a / \p Inint_a_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator/(vecuqword4 const InVecxmmi_a, uint64_t Inint_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_div_epu64(InVecxmmi_a.get_xmmi_0(), _uX_mm_set1_epi64x(Inint_b)), _uX_mm_div_epu64(InVecxmmi_a.get_xmmi_1(), _uX_mm_set1_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] Inint_a - uint64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p Inint_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator/(uint64_t Inint_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_div_epu64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.get_xmmi_0()), _uX_mm_div_epu64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator/(vecuqword4 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_div_epu64(InVecxmmi_a.get_xmmi_0(), Inxmmi_b), _uX_mm_div_epu64(InVecxmmi_a.get_xmmi_1(), Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator/(__m128i const Inxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_div_epu64(Inxmmi_a, InVecxmmi_b.get_xmmi_0()), _uX_mm_div_epu64(Inxmmi_a, InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator/(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_div_epu64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_div_epu64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator assignment addition
	 * \details Performs the compute addition from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a += \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4& uX_ABI operator+=(vecuqword4& InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword4(_uX_mm_add_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_add_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment subtraction
	 * \details Performs the compute subtraction from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a -= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4& uX_ABI operator-=(vecuqword4& InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword4(_uX_mm_sub_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_sub_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment multiplication
	 * \details Performs the compute multiplication from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a *= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4& uX_ABI operator*=(vecuqword4& InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword4(_uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment division
	 * \details Performs the compute division from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a /= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4& uX_ABI operator/=(vecuqword4& InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecuqword4(_uX_mm_div_epu64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_div_epu64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/* Unary Operators */

	/**
	 * \brief Unary prefix increment operator
	 * \details Performs the compute prefix increment
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed prefix increment \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword4& uX_ABI operator++(vecuqword4& InVecxmmi_a) uX_noexcept
	{
		InVecxmmi_a = InVecxmmi_a + _uX_mm_const_i64_1_si128();
		return InVecxmmi_a;
	}

	/**
	 * \brief Unary prefix decrement operator
	 * \details Performs the compute prefix decrement
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed prefix decrement \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword4& uX_ABI operator--(vecuqword4& InVecxmmi_a) uX_noexcept
	{
		InVecxmmi_a = InVecxmmi_a - _uX_mm_const_i64_1_si128();
		return InVecxmmi_a;
	}

	/**
	 * \brief Unary postfix increment operator
	 * \details Performs the compute postfix increment
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed postfix increment \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator++(vecuqword4& InVecxmmi_a, int) uX_noexcept
	{
		vecuqword4 tmpxmm_a0 = InVecxmmi_a;
		InVecxmmi_a = InVecxmmi_a + _uX_mm_const_i64_1_si128();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary postfix decrement operator
	 * \details Performs the compute postfix decrement
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed postfix decrement \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator--(vecuqword4& InVecxmmi_a, int) uX_noexcept
	{
		vecuqword4 tmpxmm_a0 = InVecxmmi_a;
		InVecxmmi_a = InVecxmmi_a - _uX_mm_const_i64_1_si128();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary minus operator
	 * \details Performs the compute minus change sign bit, even for 0, INF and NAN
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed minus \p InVecxmmi_a
	 */
	/*friend uX_constexpr vecuqword4 uX_ABI operator-(vecuqword4 const InVecxmmi_a) uX_noexcept
	{
		return vecuqword4(_uX_mm_negate_epi64(InVecxmmi_a));
	}*/

	/* Comparison Operators */

	/**
	 * \brief Comparison operator equal
	 * \details Performs the compute equality from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a == \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator==(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_cmpeq_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_cmpeq_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Comparison operator less than
	 * \details Performs the compute less than from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a < \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator<(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_cmplt_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_cmplt_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Comparison operator less than or equal
	 * \details Performs the compute less than or equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a <= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator<=(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_cmple_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_cmple_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Comparison operator greater than
	 * \details Performs the compute greater than from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a > \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator>(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_cmpgt_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_cmpgt_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Comparison operator greater than or equal
	 * \details Performs the compute greater than or equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a >= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator>=(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_cmpge_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_cmpge_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Comparison operator not equal
	 * \details Performs the compute not equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a != \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator!=(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_cmpneq_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_cmpneq_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/* Shift Operators	*/

	/**
	 * \brief Left shifting operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a << \p InIntCount
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator<<(vecuqword4 const InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		return vecuqword4(_uX_mm_slli_epi64(InVecxmmi_a.get_xmmi_0(), InIntCount), _uX_mm_slli_epi64(InVecxmmi_a.get_xmmi_1(), InIntCount));
	}

	/**
	 * \brief Left shifting operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a << \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator<<(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_Count) uX_noexcept
	{
		return vecuqword4(_uX_mm_sll_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_Count.get_xmmi_0()), _uX_mm_sll_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_Count.get_xmmi_1()));
	}

	/**
	 * \brief Right shifting operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a >> \p InIntCount
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator>>(vecuqword4 const InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		return vecuqword4(_uX_mm_srli_epi64(InVecxmmi_a.get_xmmi_0(), InIntCount), _uX_mm_srli_epi64(InVecxmmi_a.get_xmmi_1(), InIntCount));
	}

	/**
	 * \brief Right shifting operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a >> \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI operator>>(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_Count) uX_noexcept
	{
		return vecuqword4(_uX_mm_srl_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_Count.get_xmmi_0()), _uX_mm_srl_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_Count.get_xmmi_1()));
	}

	/**
	 * \brief Left shifting assignment operator
	 * \details Performs the left shifting from the 2 parameters and assigns to
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a <<= \p InIntCount
	 */
	friend uX_constexpr vecuqword4& uX_ABI operator<<=(vecuqword4& InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		InVecxmmi_a = vecuqword4(_uX_mm_slli_epi64(InVecxmmi_a.get_xmmi_0(), InIntCount), _uX_mm_slli_epi64(InVecxmmi_a.get_xmmi_1(), InIntCount));
		return InVecxmmi_a;
	}

	/**
	 * \brief Left shifting assignment operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a <<= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4& uX_ABI operator<<=(vecuqword4& InVecxmmi_a, vecuqword4 const InVecxmmi_Count) uX_noexcept
	{
		InVecxmmi_a = vecuqword4(_uX_mm_sll_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_Count.get_xmmi_0()), _uX_mm_sll_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_Count.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/**
	 * \brief Right shifting assignment operator
	 * \details Performs the right shifting from the 2 parameters and assigns to
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a >>= \p InIntCount
	 */
	friend uX_constexpr vecuqword4& uX_ABI operator>>=(vecuqword4& InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		InVecxmmi_a = vecuqword4(_uX_mm_srli_epi64(InVecxmmi_a.get_xmmi_0(), InIntCount), _uX_mm_srli_epi64(InVecxmmi_a.get_xmmi_1(), InIntCount));
		return InVecxmmi_a;
	}

	/**
	 * \brief Right shifting assignment operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_a >>= \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4& uX_ABI operator>>=(vecuqword4& InVecxmmi_a, vecuqword4 const InVecxmmi_Count) uX_noexcept
	{
		InVecxmmi_a = vecuqword4(_uX_mm_srl_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_Count.get_xmmi_0()), _uX_mm_srl_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_Count.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/**
	 * \brief Index operator
	 * \details Performs element access only, no modification to elements
	 * \param[in] Nindex - count_t
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t const& uX_ABI operator[](count_t Nindex) const uX_noexcept
	{
		return extract(Nindex);
	}

	/**
	 * \brief Index operator
	 * \details Performs element access and modification to elements
	 * \param[in] Nindex - count_t
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t& uX_ABI operator[](count_t Nindex) uX_noexcept
	{
		qwrettype = extract(Nindex);
		return qwrettype;
	}

	/**
	 * \brief Load m128 unaligned
	 * \details load from type __m128i* unaligned
	 * \param[in] Inpxmmi - __m128i* Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI load_m128(uX_InReads(2) __m128i const* const Inpxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_loadu_si128(Inpxmmi);
		_m128_xmmi_1 = _uX_mm_loadu_si128(Inpxmmi+1);
		return *this;
	}

	/**
	 * \brief Load m128 aligned
	 * \details load from type __m128i* aligned
	 * \param[in] Inpxmmi - __m128i* Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI load_a_m128(uX_InReads(2) __m128i const* const Inpxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_load_si128(Inpxmmi);
		_m128_xmmi_1 = _uX_mm_load_si128(Inpxmmi+1);
		return *this;
	}

	/**
	 * \brief Load unaligned
	 * \details load from type uint64_t* unaligned
	 * \param[in] Inpint64 - uint64_t* Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI load(uX_InReads(3) uint64_t const* const Inpint64) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_loadu_si128(reinterpret_cast<__m128i const* const>(Inpint64));
		_m128_xmmi_1 = _uX_mm_loadu_si128(reinterpret_cast<__m128i const* const>(Inpint64+2));
		return *this;
	}

	/**
	 * \brief Load aligned
	 * \details load from type uint64_t* aligned
	 * \param[in] Inpint64 - uint64_t* Read only
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI load_a(uX_InReads(3) uint64_t const* const Inpint64) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_load_si128(reinterpret_cast<__m128i const* const>(Inpint64));
		_m128_xmmi_1 = _uX_mm_load_si128(reinterpret_cast<__m128i const* const>(Inpint64+2));
		return *this;
	}

	/**
	 * \brief Store m128 unaligned
	 * \details store to type __m128i* unaligned
	 * \param[out] Outpxmmi - __m128i* Write only
	 */
	uX_constexpr void uX_ABI store_m128(uX_OutWrites(3) __m128i* Outpxmmi) const uX_noexcept
	{
		_uX_mm_storeu_si128(Outpxmmi, _m128_xmmi_0);
		_uX_mm_storeu_si128(Outpxmmi+1, _m128_xmmi_1);
	}

	/**
	 * \brief Store m128 aligned
	 * \details store to type __m128i* aligned
	 * \param[out] Outpxmmi - __m128i* Write only
	 * \warning Outpxmmi must be aligned by 16
	 */
	uX_constexpr void uX_ABI store_a_m128(uX_OutWrites(3) __m128i* Outpxmmi) const uX_noexcept
	{
		_uX_mm_store_si128(Outpxmmi, _m128_xmmi_0);
		_uX_mm_store_si128(Outpxmmi+1, _m128_xmmi_1);
	}

	/**
	 * \brief Store unaligned
	 * \details store to type uint64_t* unaligned
	 * \param[out] Outpint64 - uint64_t* Write only
	 */
	uX_constexpr void uX_ABI store(uX_OutWrites(3) uint64_t* Outpint64) const uX_noexcept
	{
		_uX_mm_storeu_si128(reinterpret_cast<__m128i*>(Outpint64), _m128_xmmi_0);
		_uX_mm_storeu_si128(reinterpret_cast<__m128i*>(Outpint64+2), _m128_xmmi_1);
	}

	/**
	 * \brief Store aligned
	 * \details store to type uint64_t* aligned
	 * \param[out] Outpint64 - uint64_t* Write only
	 * \warning Outpint64 must be aligned by 16
	 */
	uX_constexpr void uX_ABI store_a(uX_OutWrites(3) uint64_t* Outpint64) const uX_noexcept
	{
		_uX_mm_store_si128(reinterpret_cast<__m128i*>(Outpint64), _m128_xmmi_0);
		_uX_mm_store_si128(reinterpret_cast<__m128i*>(Outpint64+2), _m128_xmmi_1);
	}

	/**
	 * \brief Insert function
	 * \details Performs the insert element from mask index
	 * \param[in] Nindex - uint64_t the value
	 * \param[in] Nindex - count_t the index element to set
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4 const uX_ABI insert(uint64_t value, count_t Nindex) uX_noexcept
	{
		if(Nindex > 3) return *this;
		if(Nindex > 1)
		{
			_m128_xmmi_1 = _uX_mm_setelts_epi64x(_m128_xmmi_1, value, Nindex - 2);
		}
		else
		{
			_m128_xmmi_0 = _uX_mm_setelts_epi64x(_m128_xmmi_0, value, Nindex);
		}
		return *this;
	}

	/**
	 * \brief Extract function
	 * \details Performs the extract element from mask index
	 * \param[in] Nindex - count_t the index element to get
	 * \returns uint64_t
	 */
	uX_constexpr uint64_t uX_ABI extract(count_t Nindex) const uX_noexcept
	{
		if(Nindex > 3) return 0;
		return Nindex > 1 ? _uX_mm_cvtelts_epi64x(_m128_xmmi_1, Nindex - 2) : _uX_mm_cvtelts_epi64x(_m128_xmmi_0, Nindex);
	}

	/**
	 * \brief Set all elements to zero
	 * \details Sets all elements to zero
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI zero(void) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_setzero_si128();
		_m128_xmmi_1 = _uX_mm_setzero_si128();
		return *this;
	}

	/**
	 * \brief Cut off vector to n elements
	 * \details Performs the Cut off vector to n elements
	 * \param[in] Nindex - count_t the N element's to cut
	 * \returns vecuqword4
	 */
	uX_constexpr vecuqword4& uX_ABI cutoff(count_t Nindex) uX_noexcept
	{
		switch(Nindex)
		{
			case 3:
				_m128_xmmi_1 = _uX_mm_unpacklo_epi64(_m128_xmmi_1, _uX_mm_const_i64_false_si128());
				break;
			case 2:
				_m128_xmmi_1 = _uX_mm_const_i64_false_si128();
				break;
			case 1:
				_m128_xmmi_0 = _uX_mm_unpacklo_epi64(_m128_xmmi_0, _uX_mm_const_i64_false_si128());
				_m128_xmmi_1 = _uX_mm_const_i64_false_si128();
			case 0:
				_m128_xmmi_0 = _uX_mm_const_i64_false_si128();
				_m128_xmmi_1 = _uX_mm_const_i64_false_si128();
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
	 * \param[in] InVecxmmi_f - vecuqword4 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword4 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword4 Read only the b vector
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_b : \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword4 uX_ABI select(vecuqword4 const InVecxmmi_f, vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_select_si128(InVecxmmi_f.get_xmmi_0(), InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_select_si128(InVecxmmi_f.get_xmmi_1(), InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Conditional add
	 * \details Performs the conditional add in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] + b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecuqword4 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword4 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword4 Read only the b vector
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a + \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword4 uX_ABI if_add(vecuqword4 const InVecxmmi_f, vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return InVecxmmi_a + (InVecxmmi_f & InVecxmmi_b);
	}

	/**
	 * \brief Conditional subtract
	 * \details Performs the conditional subtract in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] - b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecuqword4 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword4 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword4 Read only the b vector
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a - \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword4 uX_ABI if_sub(vecuqword4 const InVecxmmi_f, vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return InVecxmmi_a - (InVecxmmi_f & InVecxmmi_b);
	}

	/**
	 * \brief Conditional multiply
	 * \details Performs the conditional multiply in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] * b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecuqword4 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword4 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword4 Read only the b vector
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a * \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword4 uX_ABI if_mul(vecuqword4 const InVecxmmi_f, vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return select(InVecxmmi_f, InVecxmmi_a * InVecxmmi_b, InVecxmmi_a);
	}

	/**
	 * \brief Conditional division
	 * \details Performs the conditional divide in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] / b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecuqword4 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecuqword4 Read only the a vector
	 * \param[in] InVecxmmi_b - vecuqword4 Read only the b vector
	 * \returns vecuqword4
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a / \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecuqword4 uX_ABI if_div(vecuqword4 const InVecxmmi_f, vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return select(InVecxmmi_f, InVecxmmi_a / InVecxmmi_b, InVecxmmi_a);
	}

	/**
	 * \brief Max
	 * \details Computes the max a > b ? a : b
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed max \p InVecxmmi_a > \p InVecxmmi_b ? \p InVecxmmi_a: \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI max(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_max_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_max_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Min
	 * \details Computes the min a < b ? a : b
	 * \param[in] InVecxmmi_a - vecuqword4 Read only
	 * \param[in] InVecxmmi_b - vecuqword4 Read only
	 * \returns vecuqword4
	 * \retval the computed min \p InVecxmmi_a < \p InVecxmmi_b ? \p InVecxmmi_a: \p InVecxmmi_b
	 */
	friend uX_constexpr vecuqword4 uX_ABI min(vecuqword4 const InVecxmmi_a, vecuqword4 const InVecxmmi_b) uX_noexcept
	{
		return vecuqword4(_uX_mm_min_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_min_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

protected:

private:
	union
	{
		struct
		{
			__m128i			_m128_xmmi_0, _m128_xmmi_1;
		};
		struct
		{
			uint64_t		_qw_x, _qw_y, _qw_z, _qw_w;
		};
		struct
		{
			uint32_t		_dw0_0, _dw0_1,
							_dw1_0, _dw1_1,
							_dw2_0, _dw2_1,
							_dw3_0, _dw3_1;
		};
		struct
		{
			uint16_t		_w0_0, _w0_1, _w0_2, _w0_3,
							_w1_0, _w1_1, _w1_2, _w1_3,
							_w2_0, _w2_1, _w2_2, _w2_3,
							_w3_0, _w3_1, _w3_2, _w3_3;
		};
		struct
		{
			uint8_t			_b0_0, _b0_1, _b0_2, _b0_3, _b0_4, _b0_5, _b0_6, _b0_7,
							_b1_0, _b1_1, _b1_2, _b1_3, _b1_4, _b1_5, _b1_6, _b1_7,
							_b2_0, _b2_1, _b2_2, _b2_3, _b2_4, _b2_5, _b2_6, _b2_7,
							_b3_0, _b3_1, _b3_2, _b3_3, _b3_4, _b3_5, _b3_6, _b3_7;
		};
		__m128i				_m128_xmmi[2];
		uint64_t			_m128_qw[4];
		uint32_t			_m128_dw[8];
		uint16_t			_m128_w[16];
		uint8_t				_m128_b[32];
	};
	vecuqword3				vecqw3rettype;
	vecuqword2				vecqw2rettype;
	uint64_t				qwrettype;

public:
	/**
	 * \brief vecuqword4 size
	 * \details Gets the vecuqword4 vector size
	 * \returns count_t
	 * \retval the vecuqword4 size
	 */
	uX_constexpr count_t const uX_ABI size(void) const uX_noexcept
	{
		return 32;
	}

	/**
	 * \brief vecuqword4 length
	 * \details Gets the vecuqword4 vector length
	 * \returns count_t
	 * \retval the vecuqword4 length
	 */
	uX_constexpr count_t const uX_ABI length(void) const uX_noexcept
	{
		return 4;
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
		return 2;
	}

	/**
	 * \brief xmm uint64_t elements
	 * \details Gets the quantity of xmm vector uint64_t elements
	 * \returns count_t
	 * \retval the quantity of xmm uint64_t elements
	 */
	uX_constexpr count_t const uX_ABI xmm_i64_elements(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief xmm uint32_t elements
	 * \details Gets the quantity of xmm vector uint32_t elements
	 * \returns count_t
	 * \retval the quantity of xmm uint32_t elements
	 */
	uX_constexpr count_t const uX_ABI xmm_i32_elements(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief xmm uint16_t elements
	 * \details Gets the quantity of xmm vector uint16_t elements
	 * \returns count_t
	 * \retval the quantity of xmm uint16_t elements
	 */
	uX_constexpr count_t const uX_ABI xmm_i16_elements(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief xmm uint8_t elements
	 * \details Gets the quantity of xmm vector uint8_t elements
	 * \returns count_t
	 * \retval the quantity of xmm uint8_t elements
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
	 * \brief uint64_t elements
	 * \details Gets the quantity of uint64_t elements
	 * \returns count_t
	 * \retval the quantity of uint64_t elements
	 */
	uX_constexpr count_t const uX_ABI i64_elements(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief uint32_t elements
	 * \details Gets the quantity of uint32_t elements
	 * \returns count_t
	 * \retval the quantity of uint32_t elements
	 */
	uX_constexpr count_t const uX_ABI i32_elements(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief uint16_t elements
	 * \details Gets the quantity of uint16_t elements
	 * \returns count_t
	 * \retval the quantity of uint16_t elements
	 */
	uX_constexpr count_t const uX_ABI i16_elements(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief uint8_t elements
	 * \details Gets the quantity of uint8_t elements
	 * \returns count_t
	 * \retval the quantity of uint8_t elements
	 */
	uX_constexpr count_t const uX_ABI i8_elements(void) const uX_noexcept
	{
		return 32;
	}

	/**
	 * \brief xmm ptr length
	 * \details Gets the xmm ptr vector length
	 * \returns count_t
	 * \retval the xmm ptr length
	 */
	uX_constexpr count_t const uX_ABI xmm_ptr_length(void) const uX_noexcept
	{
		return 2;
	}

	/**
	 * \brief xmm ptr size
	 * \details Gets the xmm ptr vector size
	 * \returns count_t
	 * \retval the xmm ptr size
	 */
	uX_constexpr count_t const uX_ABI xmm_ptr_size(void) const uX_noexcept
	{
		return 32;
	}

	/**
	 * \brief uint64_t ptr length
	 * \details Gets the length of uint64_t elements
	 * \returns count_t
	 * \retval the length of uint64_t elements
	 */
	uX_constexpr count_t const uX_ABI i64_ptr_length(void) const uX_noexcept
	{
		return 4;
	}

	/**
	 * \brief uint32_t ptr length
	 * \details Gets the length of uint32_t elements
	 * \returns count_t
	 * \retval the length of uint32_t elements
	 */
	uX_constexpr count_t const uX_ABI i32_ptr_length(void) const uX_noexcept
	{
		return 8;
	}

	/**
	 * \brief uint16_t ptr length
	 * \details Gets the length of uint16_t elements
	 * \returns count_t
	 * \retval the length of uint16_t elements
	 */
	uX_constexpr count_t const uX_ABI i16_ptr_length(void) const uX_noexcept
	{
		return 16;
	}

	/**
	 * \brief uint8_t ptr length
	 * \details Gets the length of uint8_t elements
	 * \returns count_t
	 * \retval the length of uint8_t elements
	 */
	uX_constexpr count_t const uX_ABI i8_ptr_length(void) const uX_noexcept
	{
		return 32;
	}

	/**
	 * \brief uint64_t ptr size
	 * \details Gets the ptr size of uint64_t elements
	 * \returns count_t
	 * \retval the size of uint64_t elements
	 */
	uX_constexpr count_t const uX_ABI i64_ptr_size(void) const uX_noexcept
	{
		return 32;
	}

	/**
	 * \brief uint32_t ptr size
	 * \details Gets the ptr size of uint32_t elements
	 * \returns count_t
	 * \retval the size of uint32_t elements
	 */
	uX_constexpr count_t const uX_ABI i32_ptr_size(void) const uX_noexcept
	{
		return 32;
	}

	/**
	 * \brief uint16_t ptr size
	 * \details Gets the ptr size of uint16_t elements
	 * \returns count_t
	 * \retval the size of uint16_t elements
	 */
	uX_constexpr count_t const uX_ABI i16_ptr_size(void) const uX_noexcept
	{
		return 32;
	}

	/**
	 * \brief uint8_t ptr size
	 * \details Gets the ptr size of uint8_t elements
	 * \returns count_t
	 * \retval the size of uint8_t elements
	 */
	uX_constexpr count_t const uX_ABI i8_ptr_size(void) const uX_noexcept
	{
		return 32;
	}

	using types = vector4types;
}vecuqword4_t;
#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECUQWORD4_H
