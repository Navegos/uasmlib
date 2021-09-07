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

#ifndef uX_XMM_VECQWORD3_H
#define uX_XMM_VECQWORD3_H 1

/**
 * \defgroup uX_XMM_VECQWORD3 3 64bit integer SSE SIMD Vector
 * \ingroup uX_NAMESPACE_XMM
 * \file uXxmmvecqword3.h
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

#ifndef uX_XMM_VECDOUBLE3_H
#include "uXxmmvecdouble3.h"
#endif  /* uX_XMM_VECDOUBLE3_H */

#ifndef uX_XMM_VECQWORD4_H
#include "uXxmmvecqword4.h"
#endif  /* uX_XMM_VECQWORD4_H */

#ifndef uX_XMM_VECQWORD2_H
#include "uXxmmvecqword2.h"
#endif  /* uX_XMM_VECQWORD2_H */

#ifndef uX_XMM_VECQWORD1_H
#include "uXxmmvecqword1.h"
#endif  /* uX_XMM_VECQWORD1_H */

#ifndef uX_XMM_VECUQWORD3_H
#include "uXxmmvecuqword3.h"
#endif  /* uX_XMM_VECUQWORD3_H */

#ifndef uX_XMM_VECDWORD3_H
#include "uXxmmvecdword3.h"
#endif  /* uX_XMM_VECDWORD3_H */

/**
 * \defgroup uX_XMM_VECQWORD3_CLASS 3 64bit integer SSE SIMD Vector Class
 * \ingroup uX_XMM_VECQWORD3
 * To use these class include the header file \p uXxmmvecqword3.h in your program
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
 * \ingroup uX_XMM_VECQWORD3_CLASS
 * \class vecqword3
 * \brief SSE SIMD class with the size of 3 64bit integer element
 * \details The \p vecqword3 class is an 3 element wide 64bit integer element where
 *	it provides interoperability between %vecdouble3 and steel return different integer type
 */
typedef class uX_API vecqword3
{
public:
	vecqword3()uX_default;
	~vecqword3()uX_default;
	
	/**
	 * \fn uX::xmm::vecqword3::vecqword3(vecqword3 const& InVecxmmi)
	 * \brief Default constructor initialization from vecqword3 type
	 * \details Default constructor copies /p vecqword3
	 * \param[in] InVecxmmi - vecqword3 Read only
	 */
	uX_constexpr vecqword3(vecqword3 const& InVecxmmi) uX_noexcept : _m128_xmmi_0(InVecxmmi._m128_xmmi_0), _m128_xmmi_1(InVecxmmi._m128_xmmi_1) {}

	/**
	 * \fn uX::xmm::vecqword3::vecqword3(vecqword3&& InVecxmmi)
	 * \brief Default constructor initialization from vecqword3 type
	 * \details Default constructor copies /p vecqword3
	 * \param[in] InVecxmmi - vecqword3 Read only
	 */
	uX_constexpr vecqword3(vecqword3&& InVecxmmi) uX_noexcept : _m128_xmmi_0(InVecxmmi._m128_xmmi_0), _m128_xmmi_1(InVecxmmi._m128_xmmi_1) {}
	
	/**
	 * \fn uX::xmm::vecqword3::vecqword3(__m128i const Inxmmi)
	 * \brief Constructor initialization from __m128i type
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inxmmi - __m128i Read only
	 * \warning Broadcast the same value into all elements
	 * \Note Sets the _x _y _z int64_t elements in 128bit copy replacement
	 */
	uX_explicit uX_constexpr vecqword3(__m128i const Inxmmi) uX_noexcept : _m128_xmmi_0(Inxmmi), _m128_xmmi_1(_uX_mm_unpacklo_epi64(Inxmmi, _uX_mm_const_i64_false_si128())) {}

	/**
	 * \fn uX::xmm::vecqword3::vecqword3(__m128i const Inxmmi_0, __m128i const Inxmmi_1)
	 * \brief Constructor initialization from 2 __m128i types
	 * \details Constructor copies _x _y _z elements from 2 /p __m128i
	 * \param[in] Inxmmi_0 - __m128i Read only
	 * \param[in] Inxmmi_1 - __m128i Read only
	 */
	uX_constexpr vecqword3(__m128i const Inxmmi_0, __m128i const Inxmmi_1) uX_noexcept : _m128_xmmi_0(Inxmmi_0), _m128_xmmi_1(_uX_mm_unpacklo_epi64(Inxmmi_1, _uX_mm_const_i64_false_si128())) {}
	
	/**
	 * \fn uX::xmm::vecqword3::vecqword3(vecqword4 const InVecxmmi)
	 * \brief Constructor initialization from vecqword4 type
	 * \details Constructor copies _x _y _z elements from /p vecqword4
	 * \param[in] InVecxmmi - vecqword4 Read only
	 */
	uX_constexpr vecqword3(vecqword4 const InVecxmmi) uX_noexcept : _m128_xmmi_0(InVecxmmi.get_xmmi_0()), _m128_xmmi_1(_uX_mm_unpacklo_epi64(InVecxmmi.get_xmmi_1(), _uX_mm_const_i64_false_si128())) {}

	/**
	 * \fn uX::xmm::vecqword3::vecqword3(vecqword2 const InVecxmmi)
	 * \brief Constructor initialization from vecqword2 type
	 * \details Constructor copies _x _y elements from /p vecqword2 and maintains _z element from /p vecqword3
	 * \param[in] InVecxmmi - vecqword2 Read only
	 */
	uX_constexpr vecqword3(vecqword2 const InVecxmmi) uX_noexcept : _m128_xmmi_0(InVecxmmi) {}
	
	/**
	 * \fn uX::xmm::vecqword3::vecqword3(vecqword2 const InVecxmmi_a, vecqword1 const InVecxmmi_b)
	 * \brief Constructor initialization from vecqword2 and vecqword1 types
	 * \details Constructor copies _x _y elements from /p vecqword2 and copies _z element from /p vecqword1
	 * \param[in] InVecxmmi_a - vecqword2 Read only
	 * \param[in] InVecxmmi_b - vecqword1 Read only
	 */
	uX_constexpr vecqword3(vecqword2 const InVecxmmi_a, vecqword1 const InVecxmmi_b) uX_noexcept : _m128_xmmi_0(InVecxmmi_a)
																									, _m128_xmmi_1(_uX_mm_unpacklo_epi64(InVecxmmi_b, _uX_mm_const_i64_false_si128())) {}

	/**
	 * \fn uX::xmm::vecqword3::vecqword3(vecqword1 const InVecxmmi_a, vecqword2 const InVecxmmi_b)
	 * \brief Constructor initialization from vecqword1 and vecqword2 types
	 * \details Constructor copies _x element from /p vecqword1 and copies _y _z elements from /p vecqword2
	 * \param[in] InVecxmmi_a - vecqword1 Read only
	 * \param[in] InVecxmmi_b - vecqword2 Read only
	 */
	uX_constexpr vecqword3(vecqword1 const InVecxmmi_a, vecqword2 const InVecxmmi_b) uX_noexcept : _m128_xmmi_0(_uX_mm_unpacklo_epi64(InVecxmmi_a, InVecxmmi_b))
																									, _m128_xmmi_1(_uX_mm_unpackhi_epi64(InVecxmmi_b, _uX_mm_const_i64_false_si128())) {}

	/**
	 * \fn uX::xmm::vecqword3::vecqword3(vecqword1 const InVecxmmi)
	 * \brief Constructor initialization from vecqword1 type
	 * \details Constructor copies _x element from /p vecqword1 and maintains _y _z elements from /p vecqword3
	 * \param[in] InVecxmmi - vecqword1 Read only
	 */
	uX_constexpr vecqword3(vecqword1 const InVecxmmi) uX_noexcept : _m128_xmmi_0(_uX_mm_select_si128(_uX_mm_const_i64_select10_si128(), InVecxmmi, _m128_xmmi_0)) {}

	/**
	 * \fn uX::xmm::vecqword3::vecqword3(vecuqword3 const InVecxmmi)
	 * \brief Constructor initialization from vecuqword3 type
	 * \details Constructor copies _x _y _z elements from /p vecuqword3
	 * \param[in] InVecxmmi - vecuqword3 Read only
	 */
	uX_constexpr vecqword3(vecuqword3 const InVecxmmi) uX_noexcept : _m128_xmmi_0(InVecxmmi.get_xmmi_0()), _m128_xmmi_1(InVecxmmi.get_xmmi_1()) {}
	
	/**
	 * \fn uX::xmm::vecqword3::vecqword3(vecdouble3 const InVecxmmd)
	 * \brief Constructor initialization from type vecdouble3
	 * \details Constructor copies double _x _y _z elements from /p vecdouble3
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 * \warning Only cast's the value, no conversion is made
	 */
	uX_constexpr vecqword3(vecdouble3 const InVecxmmd) uX_noexcept : _m128_xmmi_0(_uX_mm_castpd_si128(InVecxmmd.get_xmmd_0())), _m128_xmmi_1(_uX_mm_castpd_si128(InVecxmmd.get_xmmd_1())) {}
	
	/**
	 * \fn uX::xmm::vecqword3::vecqword3(vecdword3 const InVecxmmi)
	 * \brief Constructor initialization from vecdword3 type
	 * \details Constructor converts int32_t _x _y _z elements from /p vecdword3 and sign extend to int64_t _x _y _z elements
	 * \param[in] InVecxmmi - vecdword3 Read only
	 * \warning Converts the value from int32_t to int64_t with sign extend
	 * \Note Sets the _x _y _z int64_t elements
	 */
	uX_constexpr vecqword3(vecdword3 const InVecxmmi) uX_noexcept : _m128_xmmi_0(_uX_mm_cvtepi32_epi64(InVecxmmi))
																	, _m128_xmmi_1(_uX_mm_unpacklo_epi64(_uX_mm_cvtepi32_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi, 1, 0)), _uX_mm_const_i64_false_si128())) {}

	/**
	 * \fn uX::xmm::vecqword3::vecqword3(int64_t const Inint)
	 * \brief Constructor initialization from int64_t type
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inint - int64_t Read only
	 * \warning Broadcast the same value into all elements
	 */
	uX_explicit uX_constexpr vecqword3(int64_t const Inint) uX_noexcept : _m128_xmmi_0(_uX_mm_set1_epi64x(Inint)), _m128_xmmi_1(_uX_mm_setr_epi64x(Inint, 0)) {}

	/**
	 * \fn uX::xmm::vecqword3::vecqword3(int64_t const Inint_X, int64_t const Inint_Y, int64_t const Inint_Z)
	 * \brief Constructor initialization from 3 int64_t types
	 * \details Constructor copies 3 int64_t to _x _y _z elements
	 * \param[in] Inint_X - int64_t Read only
	 * \param[in] Inint_Y - int64_t Read only
	 * \param[in] Inint_Z - int64_t Read only
	 */
	uX_constexpr vecqword3(int64_t const Inint_X, int64_t const Inint_Y, int64_t const Inint_Z) uX_noexcept : _m128_xmmi_0(_uX_mm_setr_epi64x(Inint_X, Inint_Y)), _m128_xmmi_1(_uX_mm_setr_epi64x(Inint_Z, 0)) {}
	
	/**
	 * \fn uX::xmm::vecqword3::vecqword3(bool_t const Inbool)
	 * \brief Constructor initialization from type bool_t
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inbool - bool_t Read only
	 */
	uX_explicit uX_constexpr vecqword3(bool_t const Inbool) uX_noexcept : _m128_xmmi_0(_uX_mm_set1_epi64x(Inbool.to_true_int64())), _m128_xmmi_1(_uX_mm_setr_epi64x(Inbool.to_true_int64(), 0)) {}

	/**
	 * \fn uX::xmm::vecqword3::vecqword3(bool_t const Inbool_X, bool_t const Inbool_Y)
	 * \brief Constructor initialization from 3 bool_t types
	 * \details Constructor initialization from 3 bool_t types
	 * \param[in] Inbool_X - bool_t Read only
	 * \param[in] Inbool_Y - bool_t Read only
	 * \param[in] Inbool_Z - bool_t Read only
	 */
	uX_constexpr vecqword3(bool_t const Inbool_X, bool_t const Inbool_Y, bool_t const Inbool_Z) uX_noexcept : _m128_xmmi_0(_uX_mm_setr_epi64x(Inbool_X.to_true_int64(), Inbool_Y.to_true_int64()))
																												, _m128_xmmi_1(_uX_mm_setr_epi64x(Inbool_Z.to_true_int64(), 0)) {}

	/**
	 * \fn uX::xmm::vecqword3::vecqword3(bool const Inbool)
	 * \brief Constructor initialization from type bool
	 * \details Constructor broadcast the same value into all elements
	 * \param[in] Inbool - bool Read only
	 */
	uX_explicit uX_constexpr vecqword3(bool const Inbool_a) uX_noexcept : _m128_xmmi_0(vecqword2(bool_t(Inbool_a))), _m128_xmmi_1(vecqword1(Inbool_a)) {}

	/**
	 * \fn uX::xmm::vecqword3::vecqword3(bool const Inbool_X, bool const Inbool_Y)
	 * \brief Constructor initialization from 3 bool types
	 * \details Constructor initialization from 3 bool types
	 * \param[in] Inbool_X - bool Read only
	 * \param[in] Inbool_Y - bool Read only
	 * \param[in] Inbool_Z - bool Read only
	 */
	uX_constexpr vecqword3(bool const Inbool_X, bool const Inbool_Y, bool const Inbool_Z) uX_noexcept : _m128_xmmi_0(vecqword2(bool_t(Inbool_X), bool_t(Inbool_Y))), _m128_xmmi_1(vecqword1(Inbool_Z)) {}
	
	/**
	 * \fn uX::xmm::vecqword3::vecqword3(int64_t const* const Inpint64)
	 * \brief Constructor initialization from int64_t pointer type
	 * \details Constructor initialization from int64_t pointer type with size of 3 int64_t types
	 * \param[in] Inpint64 - int64_t* Read only
	 * \Note The int64_t pointer is expected to be unaligned
	 */
	uX_explicit uX_constexpr vecqword3(uX_InReads(3) int64_t const* const Inpint64) uX_noexcept : _m128_xmmi_0(_uX_mm_loadu_si128(reinterpret_cast<__m128i const* const>(Inpint64)))
																			, _m128_xmmi_1(_uX_mm_unpacklo_epi64(_uX_mm_loadu_si128(reinterpret_cast<__m128i const* const>(Inpint64+2)), _uX_mm_const_i64_false_si128())) {}

	/**
	 * \brief vecqword3 default assignment operator
	 * \details To convert from vecqword3 type
	 * \param[in] InVecxmmi - vecqword3 Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI operator=(vecqword3 const& InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi._m128_xmmi_0;
		_m128_xmmi_1 = InVecxmmi._m128_xmmi_1;
		return *this;
	}

	/**
	 * \brief vecqword3 default assignment operator
	 * \details To convert from vecqword3 type
	 * \param[in] InVecxmmi - vecqword3 Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI operator=(vecqword3&& InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi._m128_xmmi_0;
		_m128_xmmi_1 = InVecxmmi._m128_xmmi_1;
		return *this;
	}

	/**
	 * \brief __m128i assignment operator
	 * \details To convert from __m128i type
	 * \param[in] Inxmmi - __m128i Read only
	 * \returns vecqword3
	 * \warning Broadcast the same value into all elements
	 */
	uX_constexpr vecqword3& uX_ABI operator=(__m128i const Inxmmi) uX_noexcept
	{
		_m128_xmmi_0 = Inxmmi;
		_m128_xmmi_1 = _uX_mm_unpacklo_epi64(Inxmmi, _uX_mm_const_i64_false_si128());
		return *this;
	}

	/**
	 * \brief vecqword4 assignment operator
	 * \details To convert from vecqword4 type
	 * \param[in] InVecxmmi - vecqword4 Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI operator=(vecqword4 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_xmmi_0();
		_m128_xmmi_1 = _uX_mm_unpacklo_epi64(InVecxmmi.get_xmmi_1(), _uX_mm_const_i64_false_si128());
		return *this;
	}

	/**
	 * \brief vecqword2 assignment operator
	 * \details To convert from vecqword2 type
	 * \param[in] InVecxmmi - vecqword2 Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI operator=(vecqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi;
		return *this;
	}

	/**
	 * \brief vecqword1 assignment operator
	 * \details To convert from vecqword1 type
	 * \param[in] InVecxmmi - vecqword1 Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI operator=(vecqword1 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_select_si128(_uX_mm_const_i64_select10_si128(), InVecxmmi, _m128_xmmi_0);
		return *this;
	}

	/**
	 * \brief vecuqword3 assignment operator
	 * \details To convert from vecuqword3 type
	 * \param[in] InVecxmmi - vecuqword3 Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI operator=(vecuqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_xmmi_0();
		_m128_xmmi_1 = InVecxmmi.get_xmmi_1();
		return *this;
	}

	/**
	 * \brief vecdouble3 assignment operator
	 * \details To convert from vecdouble3 type
	 * \param[in] InVecxmmd - vecdouble3 Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI operator=(vecdouble3 const InVecxmmd) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_castpd_si128(InVecxmmd.get_xmmd_0());
		_m128_xmmi_1 = _uX_mm_castpd_si128(InVecxmmd.get_xmmd_1());
		return *this;
	}

	/**
	 * \brief vecdword3 assignment operator
	 * \details To converts int32_t _x _y _z elements from /p vecdword3 and sign extend to int64_t _x _y _z elements
	 * \param[in] InVecxmmi - vecdword3 Read only
	 * \warning Converts the value from int32_t to int64_t with sign extend
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI operator=(vecdword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_cvtepi32_epi64(InVecxmmi);
		_m128_xmmi_1 = _uX_mm_unpacklo_epi64(_uX_mm_cvtepi32_epi64(_uX_MM_SHUFFLER_EPI64_IM(InVecxmmi, 1, 0)), _uX_mm_const_i64_false_si128());
		return *this;
	}

	/**
	 * \brief int64_t assignment operator
	 * \details To broadcast the same int64_t value into all elements
	 * \param[in] Inint - int64_t Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI operator=(int64_t const Inint) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_set1_epi64x(Inint);
		_m128_xmmi_1 = _uX_mm_setr_epi64x(Inint, 0);
		return *this;
	}

	/**
	 * \brief bool_t assignment operator
	 * \details To broadcast the same bool_t value into all elements
	 * \param[in] Inbool - bool_t Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI operator=(bool_t const Inbool) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_set1_epi64x(Inbool.to_true_int64());
		_m128_xmmi_1 = _uX_mm_setr_epi64x(Inbool.to_true_int64(), 0);
		return *this;
	}

	/**
	 * \brief bool assignment operator
	 * \details To broadcast the same bool value into all elements
	 * \param[in] Inbool - bool Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI operator=(bool const Inbool) uX_noexcept
	{
		_m128_xmmi_0 = vecqword2(bool_t(Inbool));
		_m128_xmmi_1 = vecqword1(bool_t(Inbool));
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
	 * \details Gets __m128i reference to vector 1
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
		_m128_xmmi_1 = _uX_mm_unpacklo_epi64(Inxmmi, _uX_mm_const_i64_false_si128());
	}

	/**
	 * \brief Get vector
	 * \details Gets vecqword3 vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3 uX_ABI get(void) const uX_noexcept
	{
		return *this;
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
		return _m128_xmmi_0;
	}

	/**
	 * \brief Get _x _y _z vector
	 * \details Gets vecqword3 _x _y _z vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3 uX_ABI get_xyz(void) const uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get _x _z vector
	 * \details Gets vecqword2 _x _z vector
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2 uX_ABI get_xz(void) const uX_noexcept
	{
		return vecqword2(_uX_mm_unpacklo_epi64(_m128_xmmi_0, _m128_xmmi_1));
	}

	/**
	 * \brief Get _x _z _y vector
	 * \details Gets vecqword3 _x _z _y vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3 uX_ABI get_xzy(void) const uX_noexcept
	{
		return vecqword3(_uX_mm_unpacklo_epi64(_m128_xmmi_0, _m128_xmmi_1), _uX_mm_unpackhi_epi64(_m128_xmmi_0, _m128_xmmi_1));
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
		return vecqword2(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0));
	}

	/**
	 * \brief Get _y _x _z vector
	 * \details Gets vecqword3 _y _x _z vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3 uX_ABI get_yxz(void) const uX_noexcept
	{
		return vecqword3(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0), _m128_xmmi_1);
	}

	/**
	 * \brief Get _y _z vector
	 * \details Gets vecqword2 _y _z vector
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2 uX_ABI get_yz(void) const uX_noexcept
	{
		return vecqword2(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0), _m128_xmmi_1);
	}

	/**
	 * \brief Get _y _z _x vector
	 * \details Gets vecqword3 _y _z _x vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3 uX_ABI get_yzx(void) const uX_noexcept
	{
		return vecqword3(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0), _m128_xmmi_1), _m128_xmmi_0);
	}

	/**
	 * \brief Get _z
	 * \details Gets _z element from vector
	 * \returns int64_t
	 */
	uX_constexpr int64_t uX_ABI get_z(void) const uX_noexcept
	{
		return _qw_z;
	}

	/**
	 * \brief Get _z _x vector
	 * \details Gets vecqword2 _z _x vector
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2 uX_ABI get_zx(void) const uX_noexcept
	{
		return vecqword2(_uX_mm_unpacklo_epi64(_m128_xmmi_1, _m128_xmmi_0));
	}

	/**
	 * \brief Get _z _x _y vector
	 * \details Gets vecqword3 _z _x _y vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3 uX_ABI get_zxy(void) const uX_noexcept
	{
		return vecqword3(_uX_mm_unpacklo_epi64(_m128_xmmi_1, _m128_xmmi_0), _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0));
	}

	/**
	 * \brief Get _z _y vector
	 * \details Gets vecqword2 _z _y vector
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2 uX_ABI get_zy(void) const uX_noexcept
	{
		return vecqword2(_m128_xmmi_1, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0));
	}

	/**
	 * \brief Get _z _y _x vector
	 * \details Gets vecqword3 _z _y _x vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3 uX_ABI get_zyx(void) const uX_noexcept
	{
		return vecqword3(_uX_mm_unpacklo_epi64(_m128_xmmi_1, _uX_MM_SHUFFLER_EPI64_IM(_m128_xmmi_0, 1, 0)), _m128_xmmi_0);
	}

	/**
	 * \brief Get reference to vector
	 * \details Gets reference to vecqword3 vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI ref(void) uX_noexcept
	{
		return *this;
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
		vecqw2rettype = get_xy();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _x _y _z vector
	 * \details Gets reference to vecqword3 _x _y _z vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI ref_xyz(void) uX_noexcept
	{
		return *this;
	}

	/**
	 * \brief Get reference to _x _z vector
	 * \details Gets reference to vecqword2 _x _z vector
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI ref_xz(void) uX_noexcept
	{
		vecqw2rettype = get_xz();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _x _z _y vector
	 * \details Gets reference to vecqword3 _x _z _y vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI ref_xzy(void) uX_noexcept
	{
		*this = get_xzy();
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
		vecqw2rettype = get_yx();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _y _x _z vector
	 * \details Gets reference to vecqword3 _y _x _z vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI ref_yxz(void) uX_noexcept
	{
		*this = get_yxz();
		return *this;
	}

	/**
	 * \brief Get reference to _y _z vector
	 * \details Gets reference to vecqword2 _y _z vector
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI ref_yz(void) uX_noexcept
	{
		vecqw2rettype = get_yz();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _y _z _x vector
	 * \details Gets reference to vecqword3 _y _z _x vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI ref_yzx(void) uX_noexcept
	{
		*this = get_yzx();
		return *this;
	}

	/**
	 * \brief Get reference to _z
	 * \details Gets reference to _z element from vector
	 * \returns int64_t
	 */
	uX_constexpr int64_t& uX_ABI ref_z(void) uX_noexcept
	{
		return _qw_z;
	}

	/**
	 * \brief Get reference to _z _x vector
	 * \details Gets reference to vecqword2 _z _x vector
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI ref_zx(void) uX_noexcept
	{
		vecqw2rettype = get_zx();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _z _x _y vector
	 * \details Gets reference to vecqword3 _z _x _y vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI ref_zxy(void) uX_noexcept
	{
		*this = get_zxy();
		return *this;
	}

	/**
	 * \brief Get reference to _z _y vector
	 * \details Gets reference to vecqword2 _z _y vector
	 * \returns vecqword2
	 */
	uX_constexpr vecqword2& uX_ABI ref_zy(void) uX_noexcept
	{
		vecqw2rettype = get_zy();
		return vecqw2rettype;
	}

	/**
	 * \brief Get reference to _z _y _x vector
	 * \details Gets reference to vecqword3 _z _y _x vector
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI ref_zyx(void) uX_noexcept
	{
		*this = get_zyx();
		return *this;
	}

	/**
	 * \brief Set the vector
	 * \details Sets the vector elements
	 * \param[in] InVecxmmi - vecqword3 Read only
	 */
	uX_constexpr vecqword3 uX_ABI set(vecqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi._m128_xmmi_0;
		_m128_xmmi_1 = InVecxmmi._m128_xmmi_1;
	}

	/**
	 * \brief Set the vector _x
	 * \details Sets the vector _x elements
	 * \param[in] Inint - int64_t Read only
	 */
	uX_constexpr void uX_ABI set_x(int64_t const Inint) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64X_SI128_IM(_m128_xmmi_0, Inint, 0);
	}

	/**
	 * \brief Set the vector _x _y
	 * \details Sets the vector _x _y elements
	 * \param[in] InVecxmmi - vecqword2 Read only
	 */
	uX_constexpr void uX_ABI set_xy(vecqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi;
	}

	/**
	 * \brief Set the vector _x _y _z
	 * \details Sets the vector _x _y _z elements
	 * \param[in] InVecxmmi - vecqword3 Read only
	 */
	uX_constexpr void uX_ABI set_xyz(vecqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi._m128_xmmi_0;
		_m128_xmmi_1 = InVecxmmi._m128_xmmi_1; // _w hallways cleared 
	}

	/**
	 * \brief Set the vector _x _z
	 * \details Sets the vector _x _z elements
	 * \param[in] InVecxmmi - vecqword2 Read only
	 */
	uX_constexpr void uX_ABI set_xz(vecqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_xy(), 0);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_yx(), 0);
	}

	/**
	 * \brief Set the vector _x _z _y
	 * \details Sets the vector _x _z _y elements
	 * \param[in] InVecxmmi - vecqword3 Read only
	 */
	uX_constexpr void uX_ABI set_xzy(vecqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_xz();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_yx(), 0);
	}

	/**
	 * \brief Set the vector _y
	 * \details Sets the vector _y elements
	 * \param[in] Inint - int64_t Read only
	 */
	uX_constexpr void uX_ABI set_y(int64_t const Inint) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64X_SI128_IM(_m128_xmmi_0, Inint, 1);
	}

	/**
	 * \brief Set the vector _y _x
	 * \details Sets the vector _y _x elements
	 * \param[in] InVecxmmi - vecqword2 Read only
	 */
	uX_constexpr void uX_ABI set_yx(vecqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_yx();
	}

	/**
	 * \brief Set the vector _y _x _z
	 * \details Sets the vector _y _x _z elements
	 * \param[in] InVecxmmi - vecqword3 Read only
	 */
	uX_constexpr void uX_ABI set_yxz(vecqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = InVecxmmi.get_yx();
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_zx(), 0);
	}

	/**
	 * \brief Set the vector _y _z
	 * \details Sets the vector _y _z elements
	 * \param[in] InVecxmmi - vecqword2 Read only
	 */
	uX_constexpr void uX_ABI set_yz(vecqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_xy(), 1);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_yx(), 0);
	}

	/**
	 * \brief Set the vector _y _z _x
	 * \details Sets the vector _y _z _x elements
	 * \param[in] InVecxmmi - vecqword3 Read only
	 */
	uX_constexpr void uX_ABI set_yzx(vecqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(InVecxmmi.get_zx(), InVecxmmi.get_xy(), 1);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_yx(), 0);
	}

	/**
	 * \brief Set the vector _z
	 * \details Sets the vector _z elements
	 * \param[in] Inint - int64_t Read only
	 */
	uX_constexpr void uX_ABI set_z(int64_t const Inint) uX_noexcept
	{
		_m128_xmmi_1 = _uX_MM_SETEPI64X_SI128_IM(_m128_xmmi_1, Inint, 0);
	}

	/**
	 * \brief Set the vector _z _x
	 * \details Sets the vector _z _x elements
	 * \param[in] InVecxmmi - vecqword2 Read only
	 */
	uX_constexpr void uX_ABI set_zx(vecqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_yx(), 0);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_xy(), 0);
	}

	/**
	 * \brief Set the vector _z _x _y
	 * \details Sets the vector _z _x _y elements
	 * \param[in] InVecxmmi - vecqword3 Read only
	 */
	uX_constexpr void uX_ABI set_zxy(vecqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(InVecxmmi.get_yx(), InVecxmmi.get_zx(), 1);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_xy(), 0);
	}

	/**
	 * \brief Set the vector _z _y
	 * \details Sets the vector _z _y elements
	 * \param[in] InVecxmmi - vecqword2 Read only
	 */
	uX_constexpr void uX_ABI set_zy(vecqword2 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_0, InVecxmmi.get_yx(), 1);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_xy(), 0);
	}

	/**
	 * \brief Set the vector _z _y _x
	 * \details Sets the vector _z _y _x elements
	 * \param[in] InVecxmmi - vecqword3 Read only
	 */
	uX_constexpr void uX_ABI set_zyx(vecqword3 const InVecxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_MM_SETEPI64_SI128_IM(InVecxmmi.get_zx(), InVecxmmi.get_yx(), 1);
		_m128_xmmi_1 = _uX_MM_SETEPI64_SI128_IM(_m128_xmmi_1, InVecxmmi.get_xy(), 0);
	}

	/**
	 * \brief Generates a constant vector of 3 int64_t integer at compile time
	 * \details Generates a constant vector at compile time stored in memory
	 * \param[in] i0 - int64_t
	 * \param[in] i1 - int64_t
	 * \param[in] i2 - int64_t
	 * \returns vecqword3
	 * \retval the constant \p i0 \p i1 \p i2 stored in the _x _y _z elements
	 */
	template <int64_t i0, int64_t i1, int64_t i2>
	uX_constexpr vecqword3 const uX_ABI constant(void) const
	{
		return vecqword3(i0, i1, i2);
	}

	/* Bitwise Operators */

	/**
	 * \brief Bitwise function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a andnot \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI andnot(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_andnot_epi64(InVecxmmi_b.get_xmmi_0(), InVecxmmi_a.get_xmmi_0()), _uX_mm_andnot_sepi64(InVecxmmi_b.get_xmmi_1(), InVecxmmi_a.get_xmmi_1()));
	}

	/**
	 * \brief Bitwise operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a and \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator&(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_and_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_and_sepi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Bitwise operator OR
	 * \details Performs the compute or from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a or \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator|(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_or_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_or_sepi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Bitwise operator XOR
	 * \details Performs the compute xor from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a xor \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator^(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_xor_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_xor_sepi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Bitwise operator NOT
	 * \details Performs the compute not from the parameter
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a not
	 */
	friend uX_constexpr vecqword3 uX_ABI operator~(vecqword3 const InVecxmmi_a) uX_noexcept
	{
		return vecqword3(_uX_mm_not_epi64(InVecxmmi_a.get_xmmi_0()), _uX_mm_not_sepi64(InVecxmmi_a.get_xmmi_1()));
	}

	/* Logical Operators */

	/**
	 * \brief Logical function ANDNOT
	 * \details Performs the compute and not from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a andnot \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_ABI bandnot(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_iandnot_epi64(InVecxmmi_b.get_xmmi_0(), InVecxmmi_a.get_xmmi_0()) && _uX_mm_iandnot_sepi64(InVecxmmi_b.get_xmmi_1(), InVecxmmi_a.get_xmmi_1());
	}

	/**
	 * \brief Logical operator AND
	 * \details Performs the compute and from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a && \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_ABI operator&&(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_iand_epi64(InVecxmmi_b.get_xmmi_0(), InVecxmmi_a.get_xmmi_0()) && _uX_mm_iand_sepi64(InVecxmmi_b.get_xmmi_1(), InVecxmmi_a.get_xmmi_1());
	}

	/**
	 * \brief Logical operator OR
	 * \details Performs the compute OR from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns bool_t
	 * \retval the computed boolean \p InVecxmmi_a || \p InVecxmmi_b
	 */
	friend uX_constexpr bool_t uX_ABI operator||(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return _uX_mm_ior_epi64(InVecxmmi_b.get_xmmi_0(), InVecxmmi_a.get_xmmi_0()) || _uX_mm_ior_sepi64(InVecxmmi_b.get_xmmi_1(), InVecxmmi_a.get_xmmi_1());
	}

	/**
	 * \brief Logical operator NOT
	 * \details Performs the compute not from the 1 parameter
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \returns bool_t
	 * \retval the computed boolean not \p InVecxmmi_a
	 */
	friend uX_constexpr bool_t uX_ABI operator!(vecqword3 const InVecxmmi_a) uX_noexcept
	{
		return _uX_mm_inot_epi64(InVecxmmi_a.get_xmmi_0()) && _uX_mm_inot_epi64(InVecxmmi_a.get_xmmi_1());
	}

	/**
	 * \brief Logical operator assignment AND
	 * \details Performs the compute and from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a &= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3& uX_ABI operator&=(vecqword3& InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword3(_uX_mm_and_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_and_sepi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/**
	 * \brief Logical operator assignment OR
	 * \details Performs the compute or from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a |= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3& uX_ABI operator|=(vecqword3& InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword3(_uX_mm_or_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_or_sepi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/**
	 * \brief Logical operator assignment XOR
	 * \details Performs the compute xor from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a ^= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3& uX_ABI operator^=(vecqword3& InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword3(_uX_mm_xor_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_xor_sepi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/* Arithmetic Operators */

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] Inint_b - int64_t broadcast same value to all elements
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a + \p Inint_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator+(vecqword3 const InVecxmmi_a, int64_t Inint_b) uX_noexcept
	{
		return vecqword3(_uX_mm_add_epi64(InVecxmmi_a.get_xmmi_0(), _uX_mm_set1_epi64x(Inint_b)), _uX_mm_add_sepi64(InVecxmmi_a.get_xmmi_1(), _uX_mm_setl_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] Inint_a - int64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p Inint_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator+(int64_t Inint_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_add_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.get_xmmi_0()), _uX_mm_add_sepi64(_uX_mm_setl_epi64x(Inint_a), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator+(vecqword3 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_add_epi64(InVecxmmi_a.get_xmmi_0(), Inxmmi_b), _uX_mm_add_sepi64(InVecxmmi_a.get_xmmi_1(), Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator+(__m128i const Inxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_add_epi64(Inxmmi_a, InVecxmmi_b.get_xmmi_0()), _uX_mm_add_sepi64(Inxmmi_a, InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator addition
	 * \details Performs the compute addition from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a + \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator+(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_add_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_add_sepi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] Inint_b - int64_t broadcast same value to all elements
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a - \p Inint_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator-(vecqword3 const InVecxmmi_a, int64_t Inint_b) uX_noexcept
	{
		return vecqword3(_uX_mm_sub_epi64(InVecxmmi_a.get_xmmi_0(), _uX_mm_set1_epi64x(Inint_b)), _uX_mm_sub_sepi64(InVecxmmi_a.get_xmmi_1(), _uX_mm_setl_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] Inint_a - int64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p Inint_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator-(int64_t Inint_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_sub_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.get_xmmi_0()), _uX_mm_sub_sepi64(_uX_mm_setl_epi64x(Inint_a), InVecxmmi_b.get_xmmi_1()));
	}
	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator-(vecqword3 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_sub_epi64(InVecxmmi_a.get_xmmi_0(), Inxmmi_b), _uX_mm_sub_sepi64(InVecxmmi_a.get_xmmi_1(), Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator-(__m128i const Inxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_sub_epi64(Inxmmi_a, InVecxmmi_b.get_xmmi_0()), _uX_mm_sub_sepi64(Inxmmi_a, InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator subtraction
	 * \details Performs the compute subtraction from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a - \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator-(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_sub_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_sub_sepi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] Inint_b - int64_t broadcast same value to all elements
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a * \p Inint_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator*(vecqword3 const InVecxmmi_a, int64_t Inint_b) uX_noexcept
	{
		return vecqword3(_uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_0(), _uX_mm_set1_epi64x(Inint_b)), _uX_mm_move_epi64(_uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_1(), _uX_mm_setl_epi64x(Inint_b))));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] Inint_a - int64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p Inint_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator*(int64_t Inint_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_mule_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_mule_epi64(_uX_mm_setl_epi64x(Inint_a), InVecxmmi_b.get_xmmi_1())));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator*(vecqword3 const InVecxmmi_a, __m128i const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b), _uX_mm_move_epi64(_uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b)));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator*(__m128i const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_mule_epi64(InVecxmmi_a, InVecxmmi_b.get_xmmi_1())));
	}

	/**
	 * \brief Arithmetic operator multiplication
	 * \details Performs the compute multiplication from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator*(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1())));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] Inint_a_b - int64_t broadcast same value to all elements
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a / \p Inint_a_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator/(vecqword3 const InVecxmmi_a, int64_t Inint_b) uX_noexcept
	{
		return vecqword3(_uX_mm_div_epi64(InVecxmmi_a.get_xmmi_0(), _uX_mm_set1_epi64x(Inint_b)), _uX_mm_div_sepi64(InVecxmmi_a.get_xmmi_1(), _uX_mm_setl_epi64x(Inint_b)));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] Inint_a - int64_t broadcast same value to all elements
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p Inint_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator/(int64_t Inint_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_div_epi64(_uX_mm_set1_epi64x(Inint_a), InVecxmmi_b.get_xmmi_0()), _uX_mm_div_sepi64(_uX_mm_setl_epi64x(Inint_a), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - __m128i Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator/(vecqword3 const InVecxmmi_a, __m128i const Inxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_div_epi64(InVecxmmi_a.get_xmmi_0(), Inxmmi_b), _uX_mm_div_sepi64(InVecxmmi_a.get_xmmi_1(), Inxmmi_b));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - __m128i Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator/(__m128i const Inxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_div_epi64(Inxmmi_a, InVecxmmi_b.get_xmmi_0()), _uX_mm_div_sepi64(Inxmmi_a, InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator division
	 * \details Performs the compute division from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a / \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator/(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_div_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_div_sepi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Arithmetic operator assignment addition
	 * \details Performs the compute addition from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a += \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3& uX_ABI operator+=(vecqword3& InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword3(_uX_mm_add_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_add_sepi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment subtraction
	 * \details Performs the compute subtraction from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a -= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3& uX_ABI operator-=(vecqword3& InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword3(_uX_mm_sub_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_sub_sepi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment multiplication
	 * \details Performs the compute multiplication from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a *= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3& uX_ABI operator*=(vecqword3& InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword3(_uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_mule_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1())));
		return InVecxmmi_a;
	}

	/**
	 * \brief Arithmetic operator assignment division
	 * \details Performs the compute division from the 2 parameters, and assigns to the first parameter
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a /= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3& uX_ABI operator/=(vecqword3& InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		InVecxmmi_a = vecqword3(_uX_mm_div_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_div_sepi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
		return InVecxmmi_a;
	}

	/* Unary Operators */

	/**
	 * \brief Unary prefix increment operator
	 * \details Performs the compute prefix increment
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed prefix increment \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword3& uX_ABI operator++(vecqword3& InVecxmmi_a) uX_noexcept
	{
		InVecxmmi_a = InVecxmmi_a + _uX_mm_const_i64_1_si128();
		return InVecxmmi_a;
	}

	/**
	 * \brief Unary prefix decrement operator
	 * \details Performs the compute prefix decrement
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed prefix decrement \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword3& uX_ABI operator--(vecqword3& InVecxmmi_a) uX_noexcept
	{
		InVecxmmi_a = InVecxmmi_a - _uX_mm_const_i64_1_si128();
		return InVecxmmi_a;
	}

	/**
	 * \brief Unary postfix increment operator
	 * \details Performs the compute postfix increment
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed postfix increment \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword3 uX_ABI operator++(vecqword3& InVecxmmi_a, int) uX_noexcept
	{
		vecqword3 tmpxmm_a0 = InVecxmmi_a;
		InVecxmmi_a = InVecxmmi_a + _uX_mm_const_i64_1_si128();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary postfix decrement operator
	 * \details Performs the compute postfix decrement
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed postfix decrement \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword3 uX_ABI operator--(vecqword3& InVecxmmi_a, int) uX_noexcept
	{
		vecqword3 tmpxmm_a0 = InVecxmmi_a;
		InVecxmmi_a = InVecxmmi_a - _uX_mm_const_i64_1_si128();
		return tmpxmm_a0;
	}

	/**
	 * \brief Unary minus operator
	 * \details Performs the compute minus change sign bit, even for 0, INF and NAN
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed minus \p InVecxmmi_a
	 */
	/*friend uX_constexpr vecqword3 uX_ABI operator-(vecqword3 const InVecxmmi_a) uX_noexcept
	{
		return vecqword3(_uX_mm_negate_sepi64(InVecxmmi_a));
	}*/

	/* Comparison Operators */

	/**
	 * \brief Comparison operator equal
	 * \details Performs the compute equality from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a == \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator==(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_cmpeq_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_cmpeq_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1())));
	}

	/**
	 * \brief Comparison operator less than
	 * \details Performs the compute less than from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a < \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator<(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_cmplt_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_cmplt_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1())));
	}

	/**
	 * \brief Comparison operator less than or equal
	 * \details Performs the compute less than or equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a <= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator<=(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_cmple_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_cmple_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1())));
	}

	/**
	 * \brief Comparison operator greater than
	 * \details Performs the compute greater than from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a > \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator>(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_cmpgt_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_cmpgt_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1())));
	}

	/**
	 * \brief Comparison operator greater than or equal
	 * \details Performs the compute greater than or equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a >= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator>=(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_cmpge_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_cmpge_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1())));
	}

	/**
	 * \brief Comparison operator not equal
	 * \details Performs the compute not equal from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a != \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator!=(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_cmpneq_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_cmpneq_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1())));
	}

	/* Shift Operators	*/

	/**
	 * \brief Left shifting operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a << \p InIntCount
	 */
	friend uX_constexpr vecqword3 uX_ABI operator<<(vecqword3 const InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		return vecqword3(_uX_mm_slli_epi64(InVecxmmi_a.get_xmmi_0(), InIntCount), _uX_mm_move_epi64(_uX_mm_slli_epi64(InVecxmmi_a.get_xmmi_1(), InIntCount)));
	}

	/**
	 * \brief Left shifting operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a << \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator<<(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_Count) uX_noexcept
	{
		return vecqword3(_uX_mm_sll_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_Count.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_sll_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_Count.get_xmmi_1())));
	}

	/**
	 * \brief Right shifting operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a >> \p InIntCount
	 */
	friend uX_constexpr vecqword3 uX_ABI operator>>(vecqword3 const InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		return vecqword3(_uX_mm_srai_epi64(InVecxmmi_a.get_xmmi_0(), InIntCount), _uX_mm_move_epi64(_uX_mm_srai_epi64(InVecxmmi_a.get_xmmi_1(), InIntCount)));
	}

	/**
	 * \brief Right shifting operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a >> \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI operator>>(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_Count) uX_noexcept
	{
		return vecqword3(_uX_mm_sra_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_Count.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_sra_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_Count.get_xmmi_1())));
	}

	/**
	 * \brief Left shifting assignment operator
	 * \details Performs the left shifting from the 2 parameters and assigns to
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a <<= \p InIntCount
	 */
	friend uX_constexpr vecqword3& uX_ABI operator<<=(vecqword3& InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		InVecxmmi_a = vecqword3(_uX_mm_slli_epi64(InVecxmmi_a.get_xmmi_0(), InIntCount), _uX_mm_move_epi64(_uX_mm_slli_epi64(InVecxmmi_a.get_xmmi_1(), InIntCount)));
		return InVecxmmi_a;
	}

	/**
	 * \brief Left shifting assignment operator
	 * \details Performs the left shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a <<= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3& uX_ABI operator<<=(vecqword3& InVecxmmi_a, vecqword3 const InVecxmmi_Count) uX_noexcept
	{
		InVecxmmi_a = vecqword3(_uX_mm_sll_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_Count.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_sll_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_Count.get_xmmi_1())));
		return InVecxmmi_a;
	}

	/**
	 * \brief Right shifting assignment operator
	 * \details Performs the right shifting from the 2 parameters and assigns to
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InIntCount - count_t Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a >>= \p InIntCount
	 */
	friend uX_constexpr vecqword3& uX_ABI operator>>=(vecqword3& InVecxmmi_a, count_t InIntCount) uX_noexcept
	{
		InVecxmmi_a = vecqword3(_uX_mm_srai_epi64(InVecxmmi_a.get_xmmi_0(), InIntCount), _uX_mm_move_epi64(_uX_mm_srai_epi64(InVecxmmi_a.get_xmmi_1(), InIntCount)));
		return InVecxmmi_a;
	}

	/**
	 * \brief Right shifting assignment operator
	 * \details Performs the right shifting from the 2 parameters
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a >>= \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3& uX_ABI operator>>=(vecqword3& InVecxmmi_a, vecqword3 const InVecxmmi_Count) uX_noexcept
	{
		InVecxmmi_a = vecqword3(_uX_mm_sra_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_Count.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_sra_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_Count.get_xmmi_1())));
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
	 * \brief Load m128 unaligned
	 * \details load from type __m128i* unaligned
	 * \param[in] Inpxmmi - __m128i* Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI load_m128(uX_InReads(2) __m128i const* const Inpxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_loadu_si128(Inpxmmi);
		_m128_xmmi_1 = _uX_mm_unpacklo_epi64(_uX_mm_loadu_si128(Inpxmmi+1), _uX_mm_const_i64_false_si128());
		return *this;
	}

	/**
	 * \brief Load m128 aligned
	 * \details load from type __m128i* aligned
	 * \param[in] Inpxmmi - __m128i* Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI load_a_m128(uX_InReads(2) __m128i const* const Inpxmmi) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_load_si128(Inpxmmi);
		_m128_xmmi_1 = _uX_mm_unpacklo_epi64(_uX_mm_loadu_si128(Inpxmmi+1), _uX_mm_const_i64_false_si128());
		return *this;
	}

	/**
	 * \brief Load unaligned
	 * \details load from type int64_t* unaligned
	 * \param[in] Inpint64 - int64_t* Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI load(uX_InReads(3) int64_t const* const Inpint64) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_loadu_si128(reinterpret_cast<__m128i const* const>(Inpint64));
		_m128_xmmi_1 = _uX_mm_unpacklo_epi64(_uX_mm_loadu_si128(reinterpret_cast<__m128i const* const>(Inpint64 + 2)), _uX_mm_const_i64_false_si128());
		return *this;
	}

	/**
	 * \brief Load aligned
	 * \details load from type int64_t* aligned
	 * \param[in] Inpint64 - int64_t* Read only
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI load_a(uX_InReads(3) int64_t const* const Inpint64) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_load_si128(reinterpret_cast<__m128i const* const>(Inpint64));
		_m128_xmmi_1 = _uX_mm_unpacklo_epi64(_uX_mm_loadu_si128(reinterpret_cast<__m128i const* const>(Inpint64 + 2)), _uX_mm_const_i64_false_si128());
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
		_uX_mm_storeu_si128(Outpxmmi +1, _m128_xmmi_1);
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
		_uX_mm_storeu_si128(Outpxmmi +1, _m128_xmmi_1);
	}

	/**
	 * \brief Store unaligned
	 * \details store to type int64_t* unaligned
	 * \param[out] Outpint64 - int64_t* Write only
	 */
	uX_constexpr void uX_ABI store(uX_OutWrites(3) int64_t* Outpint64) const uX_noexcept
	{
		_uX_mm_storeu_si128(reinterpret_cast<__m128i*>(Outpint64), _m128_xmmi_0);
		_uX_mm_storeu_si128(reinterpret_cast<__m128i*>(Outpint64 + 2), _m128_xmmi_1);
	}

	/**
	 * \brief Store aligned
	 * \details store to type int64_t* aligned
	 * \param[out] Outpint64 - int64_t* Write only
	 * \warning Outpint64 must be aligned by 16
	 */
	uX_constexpr void uX_ABI store_a(uX_OutWrites(3) int64_t* Outpint64) const uX_noexcept
	{
		_uX_mm_store_si128(reinterpret_cast<__m128i*>(Outpint64), _m128_xmmi_0);
		_uX_mm_storeu_si128(reinterpret_cast<__m128i*>(Outpint64 + 2), _m128_xmmi_1);
	}

	/**
	 * \brief Insert function
	 * \details Performs the insert element from mask index
	 * \param[in] Nindex - int64_t the value
	 * \param[in] Nindex - count_t the index element to set
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3 const uX_ABI insert(int64_t value, count_t Nindex) uX_noexcept
	{
		if(Nindex > 2) return *this;
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
	 * \returns int64_t
	 */
	uX_constexpr int64_t uX_ABI extract(count_t Nindex) const uX_noexcept
	{
		if(Nindex > 2) return 0;
		return Nindex > 1 ? _uX_mm_cvtelts_epi64x(_m128_xmmi_1, Nindex - 2) : _uX_mm_cvtelts_epi64x(_m128_xmmi_0, Nindex);
	}

	/**
	 * \brief Set all elements to zero
	 * \details Sets all elements to zero
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI zero(void) uX_noexcept
	{
		_m128_xmmi_0 = _uX_mm_setzero_si128();
		_m128_xmmi_1 = _uX_mm_setzero_si128();
		return *this;
	}

	/**
	 * \brief Cut off vector to n elements
	 * \details Performs the Cut off vector to n elements
	 * \param[in] Nindex - count_t the N element's to cut
	 * \returns vecqword3
	 */
	uX_constexpr vecqword3& uX_ABI cutoff(count_t Nindex) uX_noexcept
	{
		switch(Nindex)
		{
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
	 * \param[in] InVecxmmi_f - vecqword3 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecqword3 Read only the a vector
	 * \param[in] InVecxmmi_b - vecqword3 Read only the b vector
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_b : \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword3 uX_ABI select(vecqword3 const InVecxmmi_f, vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_select_si128(InVecxmmi_f.get_xmmi_0(), InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_select_si128(InVecxmmi_f.get_xmmi_1(), InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1()));
	}

	/**
	 * \brief Conditional add
	 * \details Performs the conditional add in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] + b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecqword3 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecqword3 Read only the a vector
	 * \param[in] InVecxmmi_b - vecqword3 Read only the b vector
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a + \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword3 uX_ABI if_add(vecqword3 const InVecxmmi_f, vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return InVecxmmi_a + (InVecxmmi_f & InVecxmmi_b);
	}

	/**
	 * \brief Conditional subtract
	 * \details Performs the conditional subtract in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] - b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecqword3 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecqword3 Read only the a vector
	 * \param[in] InVecxmmi_b - vecqword3 Read only the b vector
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a - \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword3 uX_ABI if_sub(vecqword3 const InVecxmmi_f, vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return InVecxmmi_a - (InVecxmmi_f & InVecxmmi_b);
	}

	/**
	 * \brief Conditional multiply
	 * \details Performs the conditional multiply in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] * b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecqword3 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecqword3 Read only the a vector
	 * \param[in] InVecxmmi_b - vecqword3 Read only the b vector
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a * \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword3 uX_ABI if_mul(vecqword3 const InVecxmmi_f, vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return select(InVecxmmi_f, InVecxmmi_a * InVecxmmi_b, InVecxmmi_a);
	}

	/**
	 * \brief Conditional division
	 * \details Performs the conditional divide in all elements selected by the first boolean vector mask on the second and third vector elements
		Corresponds to this pseudo code:
		 for (int i () { return 0; i < 4; i++) result[i] () { return f[i] ? (a[i] / b[i]) : a[i]
	 * \param[in] InVecxmmi_f - vecqword3 Read only the boolean vector mask
	 * \param[in] InVecxmmi_a - vecqword3 Read only the a vector
	 * \param[in] InVecxmmi_b - vecqword3 Read only the b vector
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_f ? \p InVecxmmi_a / \p InVecxmmi_b: \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword3 uX_ABI if_div(vecqword3 const InVecxmmi_f, vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return select(InVecxmmi_f, InVecxmmi_a / InVecxmmi_b, InVecxmmi_a);
	}

	/**
	 * \brief Max
	 * \details Computes the max a > b ? a : b
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed max \p InVecxmmi_a > \p InVecxmmi_b ? \p InVecxmmi_a: \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI max(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_max_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_max_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1())));
	}

	/**
	 * \brief Min
	 * \details Computes the min a < b ? a : b
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed min \p InVecxmmi_a < \p InVecxmmi_b ? \p InVecxmmi_a: \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI min(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_min_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_min_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1())));
	}

	/**
	 * \brief Abs
	 * \details Computes the absolute value a >= 0 ? a : -a
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed abs \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword3 uX_ABI abs(vecqword3 const InVecxmmi_a) uX_noexcept
	{
		return vecqword3(_uX_mm_abs_epi64(InVecxmmi_a.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_abs_epi64(InVecxmmi_a.get_xmmi_1())));
	}

	/**
	 * \brief Abs saturate
	 * \details Computes the absolute value saturate if overflow a >= 0 ? a : -a
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed abs \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword3 uX_ABI abs_sat(vecqword3 const InVecxmmi_a) uX_noexcept
	{
		return vecqword3(_uX_mm_abssat_epi64(InVecxmmi_a.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_abssat_epi64(InVecxmmi_a.get_xmmi_1())));
	}

	/**
	 * \brief Square
	 * \details Computes the a * a
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a * \p InVecxmmi_a
	 */
	friend uX_constexpr vecqword3 uX_ABI square(vecqword3 const InVecxmmi_a) uX_noexcept
	{
		return vecqword3(_uX_mm_square_epi64(InVecxmmi_a.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_square_epi64(InVecxmmi_a.get_xmmi_1())));
	}

	/**
	 * \brief Scale
	 * \details Computes the a * s
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] Inint_s - int64_t Read only
	 * \returns vecqword3
	 * \retval the computed \p InVecxmmi_a * \p Inint_s
	 */
	friend uX_constexpr vecqword3 uX_ABI scale(vecqword3 const InVecxmmi_a, int64_t Inint_s) uX_noexcept
	{
		return vecqword3(_uX_mm_scale_epi64(InVecxmmi_a.get_xmmi_0(), Inint_s), _uX_mm_move_epi64(_uX_mm_scale_epi64(InVecxmmi_a.get_xmmi_1(), Inint_s)));
	}

	/**
	 * \brief Rotate Left
	 * \details Computes the a rotate s
		Positive for left rotation
		Negative for right rotation
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] Inint_s - count_t Read only
	 * \returns vecqword3
	 * \retval the computed rotation \p InVecxmmi_a rotate \p Inint_s
	 */
	friend uX_constexpr vecqword3 uX_ABI rotate(vecqword3 const InVecxmmi_a, count_t Inint_s) uX_noexcept
	{
		return vecqword3(_uX_mm_roti_epi64(InVecxmmi_a.get_xmmi_0(), Inint_s), _uX_mm_move_epi64(_uX_mm_roti_epi64(InVecxmmi_a.get_xmmi_1(), Inint_s)));
	}

	/**
	 * \brief Max
	 * \details Computes the a rotate b
		Positive for left rotation
		Negative for right rotation
	 * \param[in] InVecxmmi_a - vecqword3 Read only
	 * \param[in] InVecxmmi_b - vecqword3 Read only
	 * \returns vecqword3
	 * \retval the computed rotation \p InVecxmmi_a rotate \p InVecxmmi_b
	 */
	friend uX_constexpr vecqword3 uX_ABI rotate(vecqword3 const InVecxmmi_a, vecqword3 const InVecxmmi_b) uX_noexcept
	{
		return vecqword3(_uX_mm_rot_epi64(InVecxmmi_a.get_xmmi_0(), InVecxmmi_b.get_xmmi_0()), _uX_mm_move_epi64(_uX_mm_rot_epi64(InVecxmmi_a.get_xmmi_1(), InVecxmmi_b.get_xmmi_1())));
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
			int64_t			_qw_x, _qw_y, _qw_z;
		};
		struct
		{
			int32_t			_dw0_0, _dw0_1,
							_dw1_0, _dw1_1,
							_dw2_0, _dw2_1;
		};
		struct
		{
			int16_t			_w0_0, _w0_1, _w0_2, _w0_3,
							_w1_0, _w1_1, _w1_2, _w1_3,
							_w2_0, _w2_1, _w2_2, _w2_3;
		};
		struct
		{
			int8_t			_b0_0, _b0_1, _b0_2, _b0_3, _b0_4, _b0_5, _b0_6, _b0_7,
							_b1_0, _b1_1, _b1_2, _b1_3, _b1_4, _b1_5, _b1_6, _b1_7,
							_b2_0, _b2_1, _b2_2, _b2_3, _b2_4, _b2_5, _b2_6, _b2_7;
		};
		__m128i				_m128_xmmi[2];
		int64_t				_m128_qw[3];
		int32_t				_m128_dw[6];
		int16_t				_m128_w[12];
		int8_t				_m128_b[24];
	};
	vecqword2				vecqw2rettype;
	int64_t					qwrettype;

public:
	/**
	 * \brief vecuqword3 size
	 * \details Gets the vecuqword3 vector size
	 * \returns count_t
	 * \retval the vecuqword3 size
	 */
	uX_constexpr count_t const uX_ABI size(void) const uX_noexcept
	{
		return 24;
	}

	/**
	 * \brief vecuqword3 length
	 * \details Gets the vecuqword3 vector length
	 * \returns count_t
	 * \retval the vecuqword3 length
	 */
	uX_constexpr count_t const uX_ABI length(void) const uX_noexcept
	{
		return 3;
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
		return 3;
	}

	/**
	 * \brief uint32_t elements
	 * \details Gets the quantity of uint32_t elements
	 * \returns count_t
	 * \retval the quantity of uint32_t elements
	 */
	uX_constexpr count_t const uX_ABI i32_elements(void) const uX_noexcept
	{
		return 6;
	}

	/**
	 * \brief uint16_t elements
	 * \details Gets the quantity of uint16_t elements
	 * \returns count_t
	 * \retval the quantity of uint16_t elements
	 */
	uX_constexpr count_t const uX_ABI i16_elements(void) const uX_noexcept
	{
		return 12;
	}

	/**
	 * \brief uint8_t elements
	 * \details Gets the quantity of uint8_t elements
	 * \returns count_t
	 * \retval the quantity of uint8_t elements
	 */
	uX_constexpr count_t const uX_ABI i8_elements(void) const uX_noexcept
	{
		return 24;
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
		return 3;
	}

	/**
	 * \brief uint32_t ptr length
	 * \details Gets the length of uint32_t elements
	 * \returns count_t
	 * \retval the length of uint32_t elements
	 */
	uX_constexpr count_t const uX_ABI i32_ptr_length(void) const uX_noexcept
	{
		return 6;
	}

	/**
	 * \brief uint16_t ptr length
	 * \details Gets the length of uint16_t elements
	 * \returns count_t
	 * \retval the length of uint16_t elements
	 */
	uX_constexpr count_t const uX_ABI i16_ptr_length(void) const uX_noexcept
	{
		return 12;
	}

	/**
	 * \brief uint8_t ptr length
	 * \details Gets the length of uint8_t elements
	 * \returns count_t
	 * \retval the length of uint8_t elements
	 */
	uX_constexpr count_t const uX_ABI i8_ptr_length(void) const uX_noexcept
	{
		return 24;
	}

	/**
	 * \brief uint64_t ptr size
	 * \details Gets the ptr size of uint64_t elements
	 * \returns count_t
	 * \retval the size of uint64_t elements
	 */
	uX_constexpr count_t const uX_ABI i64_ptr_size(void) const uX_noexcept
	{
		return 24;
	}

	/**
	 * \brief uint32_t ptr size
	 * \details Gets the ptr size of uint32_t elements
	 * \returns count_t
	 * \retval the size of uint32_t elements
	 */
	uX_constexpr count_t const uX_ABI i32_ptr_size(void) const uX_noexcept
	{
		return 24;
	}

	/**
	 * \brief uint16_t ptr size
	 * \details Gets the ptr size of uint16_t elements
	 * \returns count_t
	 * \retval the size of uint16_t elements
	 */
	uX_constexpr count_t const uX_ABI i16_ptr_size(void) const uX_noexcept
	{
		return 24;
	}

	/**
	 * \brief uint8_t ptr size
	 * \details Gets the ptr size of uint8_t elements
	 * \returns count_t
	 * \retval the size of uint8_t elements
	 */
	uX_constexpr count_t const uX_ABI i8_ptr_size(void) const uX_noexcept
	{
		return 24;
	}

	using types = vector3types;
}vecqword3_t;
#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECQWORD3_H
