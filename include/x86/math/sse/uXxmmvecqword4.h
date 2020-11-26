
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

#ifndef uX_XMM_VECQWORD4_H
#define uX_XMM_VECQWORD4_H 1

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
/** \class vecqword4
  *
  * \brief SSE SIMD class with the size of 4 int64_t elements.
  *
  * The %vecqword4 class is an 4 elements wide 64bit integer.
  * It provides interoperability between %vecdouble4 and steel return different integer types.
  *
  */
typedef class uX_API vecqword4
{
public:
    vecqword4()uX_default;
    ~vecqword4()uX_default;

    /**
     * \brief Default constructor initialization from vecqword4.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecqword4(const vecqword4& InHxmmi_a) uX_noexcept : m128_xmmi_0(InHxmmi_a.m128_xmmi_0), m128_xmmi_1(InHxmmi_a.m128_xmmi_1) {}

    /**
     * \brief Default constructor initialization from vecqword4.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecqword4(vecqword4&& InHxmmi_a) uX_noexcept : m128_xmmi_0(InHxmmi_a.m128_xmmi_0), m128_xmmi_1(InHxmmi_a.m128_xmmi_1) {}

    /**
     * \brief Constructor initialization from 1 type __m128i, broadcast the same value into all elements.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_explicit uX_constexpr vecqword4(const __m128i Inxmmi_a) uX_noexcept : m128_xmmi_0(Inxmmi_a), m128_xmmi_1(Inxmmi_a) {}

    /**
     * \brief Constructor initialization from 2 type __m128i.
     *
     * @param Inxmmi_0 value to copy from.
     * @param Inxmmi_1 value to copy from.
     */
    uX_constexpr vecqword4(const __m128i Inxmmi_0, const __m128i Inxmmi_1) uX_noexcept : m128_xmmi_0(Inxmmi_0), m128_xmmi_1(Inxmmi_1) {}

    /**
     * \brief Constructor initialization from type vecqword3.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecqword4(const vecqword3 InHxmmi_a) uX_noexcept
                          : m128_xmmi_0(InHxmmi_a.get_xmmi_0()), m128_xmmi_1(_uX_mm_select_si128(__m128i_i64_select10, InHxmmi_a.get_xmmi_1(), m128_xmmi_1)) {}

    /**
     * \brief Constructor initialization from type vecqword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecqword4(const vecqword2 Inxmmi_a) uX_noexcept : m128_xmmi_0(Inxmmi_a) {}

    /**
     * \brief Constructor initialization from type vecqword1.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecqword4(const vecqword1 Inxmmi_a) uX_noexcept : m128_xmmi_0(_uX_mm_select_si128(__m128i_i64_select10, Inxmmi_a, m128_xmmi_0)) {}

    /**
     * \brief Constructor initialization from type vecuqword4.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecqword4(const vecuqword4 InHxmmi_a) uX_noexcept : m128_xmmi_0(InHxmmi_a.get_xmmi_0()), m128_xmmi_1(InHxmmi_a.get_xmmi_1()) {}

    /**
     * \brief Constructor initialization from type vecdouble4.
     *
     * @param InHxmmd_a value to copy from.
     */
    uX_constexpr vecqword4(const vecdouble4 InHxmmd_a) uX_noexcept
                          : m128_xmmi_0(_uX_mm_castpd_si128(InHxmmd_a.get_xmmd_0())), m128_xmmi_1(_uX_mm_castpd_si128(InHxmmd_a.get_xmmd_1())) {}

    /**
     * \brief Constructor to broadcast the same int64_t value into all elements.
     *
     * \param Inint_a int64_t value to copy from.
     */
    uX_explicit uX_constexpr vecqword4(const int64_t Inint_a) uX_noexcept : m128_xmmi_0(_uX_mm_set1_epi64x(Inint_a)), m128_xmmi_1(_uX_mm_set1_epi64x(Inint_a)) {}

    /**
     * \brief Constructor initialization from 4 type int64_t.
     *
     * \param Inint_X value to copy from.
     * \param Inint_Y value to copy from.
     * \param Inint_Z value to copy from.
     * \param Inint_W value to copy from.
     */
    uX_constexpr vecqword4(const int64_t Inint_X, const int64_t Inint_Y, const int64_t Inint_Z, const int64_t Inint_W) uX_noexcept
                          : m128_xmmi_0(_uX_mm_setr_epi64x(Inint_X, Inint_Y)), m128_xmmi_1(_uX_mm_setr_epi64x(Inint_Z, Inint_W)) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecqword4(const bool_t Inbool_a) uX_noexcept
                                      : m128_xmmi_0(_uX_mm_set1_epi64x(Inbool_a.to_trueint())), m128_xmmi_1(_uX_mm_set1_epi64x(Inbool_a.to_trueint())) {}

    /**
     * \brief Constructor initialization from 4 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     * \param Inbool_Z value to copy from.
     * \param Inbool_W value to copy from.
     */
    uX_constexpr vecqword4(const bool_t Inbool_X, const bool_t Inbool_Y, const bool_t Inbool_Z, const bool_t Inbool_W) uX_noexcept
                          : m128_xmmi_0(_uX_mm_setr_epi64x(Inbool_X.to_trueint(), Inbool_Y.to_trueint())), m128_xmmi_1(_uX_mm_setr_epi64x(Inbool_Z.to_trueint(), Inbool_W.to_trueint())) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecqword4(const bool Inbool_a) uX_noexcept : m128_xmmi_0(vecqword2(bool_t(Inbool_a))), m128_xmmi_1(vecqword2(bool_t(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 3 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     * \param Inbool_Z value to copy from.
     */
    uX_constexpr vecqword4(const bool Inbool_X, const bool Inbool_Y, const bool Inbool_Z, const bool Inbool_W) uX_noexcept
                          : m128_xmmi_0(vecqword2(bool_t(Inbool_X), bool_t(Inbool_Y))), m128_xmmi_1(vecqword2(bool_t(Inbool_Z), bool_t(Inbool_W))) {}

    /**
     * \brief Constructor initialization from type __m128i*.
     *
     * \param Inpm128_xmmi pointer value to copy from.
     */
    uX_explicit uX_constexpr vecqword4(uX_InReads(2) const __m128i* Inpm128_xmmi) uX_noexcept
                                       : m128_xmmi_0(_uX_mm_loadu_si128(Inpm128_xmmi)), m128_xmmi_1(_uX_mm_loadu_si128(Inpm128_xmmi+1)) {}

    /**
     * \brief Constructor initialization from type int64_t*.
     *
     * @param Inpint64 value to copy from.
     */
    uX_explicit uX_constexpr vecqword4(uX_InReads(4) const int64_t* Inpint64) uX_noexcept 
                                      : m128_xmmi_0(_uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64))), m128_xmmi_1(_uX_mm_loadu_si128(reinterpret_cast<const __m128i*>(Inpint64+2))) {}

    /** \brief __m128i type cast operator.
     *
     * To convert to __m128i.
     */
    /*uX_constexpr operator __m128i() const uX_noexcept { return m128_xmmi; }*/

    /** Type cast operator to convert to int64_t*. */
    /*operator int64_t*() const;*/ //security undesired

    /**
     * \brief vecqword4 default assignment operator.
     *
     * To convert from type vecqword4.
     *
     * \param InHxmmi_a value to copy from.
     */
    uX_constexpr vecqword4& uX_ABI operator=(const vecqword4& InHxmmi_a) uX_noexcept { return vecqword4(InHxmmi_a); }

    /**
     * \brief vecqword4 default assignment operator.
     *
     * To convert from type vecqword4.
     *
     * \param InHxmmi_a value to copy from.
     */
    uX_constexpr vecqword4& uX_ABI operator=(vecqword4&& InHxmmi_a) uX_noexcept { return vecqword4(InHxmmi_a); }

    /**
     * \brief Assignment operator to convert from type __m128i.
     *
     * @param Inxmmi value to copy from.
     */
    uX_constexpr vecqword4& uX_ABI operator=(const __m128i Inxmmi) uX_noexcept { return vecqword4(Inxmmi); }

    /**
     * \brief vecqword3 assignment operator.
     *
     * To convert from type vecqword3.
     *
     * \param InHxmmi_a value to copy from.
     */
    uX_constexpr vecqword4& uX_ABI operator=(const vecqword3 InHxmmi_a) uX_noexcept { return vecqword4(InHxmmi_a); }

    /**
     * \brief vecqword2 assignment operator.
     *
     * To convert from type vecqword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecqword4& uX_ABI operator=(const vecqword2 Inxmmi_a) uX_noexcept { return vecqword4(Inxmmi_a); }

    /**
     * \brief vecqword1 assignment operator.
     *
     * To convert from type vecqword1.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecqword4& uX_ABI operator=(const vecqword1 Inxmmi_a) uX_noexcept { return vecqword4(Inxmmi_a); }

    /**
     * \brief vecuqword4 assignment operator.
     *
     * To convert from type vecuqword4.
     *
     * \param InHxmmi_a value to copy from.
     */
    uX_constexpr vecqword4& uX_ABI operator=(const vecuqword4 InHxmmi_a) uX_noexcept { return vecqword4(InHxmmi_a); }

    /**
     * \brief vecdouble4 assignment operator.
     *
     * To convert from type vecdouble4.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecqword4& uX_ABI operator=(const vecdouble4 InHxmmd_a) uX_noexcept { return vecqword4(InHxmmd_a); }

    /**
     * \brief int64_t assignment operator
     *
     * To broadcast the same int64_t value into all elements.
     *
     * \param Inint_a int64_t value to copy from.
     */
    uX_constexpr vecqword4& uX_ABI operator=(const int64_t Inint_a) uX_noexcept { return vecqword4(Inint_a); }

    /**
     * \brief bool_t assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecqword4& uX_ABI operator=(const bool_t Inbool_a) uX_noexcept { return vecqword4(Inbool_a); }

    /**
     * \brief bool assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecqword4& uX_ABI operator=(const bool Inbool_a) uX_noexcept { return vecqword4(Inbool_a); }

    /**
     * Assignment operator to convert from type int64_t*.
     *
     * @param Inpint64 value to copy from.
     */
     /*vecqword4& uX_ABI operator=(uX_InReads(4) const int64_t* Inpint64);*/ //security undesired

    /**
     * \brief Get vector 0.
     *
     * Gets vector 0.
     * \return vector 0.
     */
    uX_constexpr __m128i uX_ABI get_xmmi_0() const uX_noexcept { return m128_xmmi_0; }

    /**
     * \brief Get vector 1.
     *
     * Gets vector 1.
     * \return vector 1.
     */
    uX_constexpr __m128i uX_ABI get_xmmi_1() const uX_noexcept { return m128_xmmi_1; }

    /**
     * \brief Get reference to vector 0.
     *
     * Gets reference to vector 0.
     * \return vector 0.
     */
    uX_constexpr __m128i& uX_ABI ref_xmmi_0() uX_noexcept { return m128_xmmi_0; }

    /**
     * \brief Get reference to vector 1.
     *
     * Gets reference to vector 1.
     * \return vector 1.
     */
    uX_constexpr __m128i& uX_ABI ref_xmmi_1() uX_noexcept { return m128_xmmi_0; }

    /**
     * \brief Set the vector 0.
     *
     * Sets vector 0 element.
     *
     * \param Inxmmi.
     */
    void uX_ABI set_xmmi_0(const __m128i Inxmmi) uX_noexcept;

    /**
     * \brief Set the vector 1.
     *
     * Sets vector 1 element.
     *
     * \param Inxmmi.
     */
    void uX_ABI set_xmmi_1(const __m128i Inxmmi) uX_noexcept;

    /**
     * \brief Get vector.
     *
     * Gets vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get() const uX_noexcept { return vecqword4(m128_xmmi_0, m128_xmmi_1); }

    /**
     * \brief Get _x.
     *
     * Gets _x element from vector.
     * \return int64_t.
     */
    uX_constexpr int64_t uX_ABI get_x() const uX_noexcept { return _qw_x; }

    /**
     * \brief Get _x _y.
     *
     * Gets _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2 uX_ABI get_xy() const uX_noexcept { return vecqword2(m128_xmmi_0); }

    /**
     * \brief Get _x _y _z.
     *
     * Gets _x _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_xyz() const uX_noexcept { return vecqword3(m128_xmmi_0, m128_xmmi_1); }

    /**
     * \brief Get _x _y _z _w.
     *
     * Gets _x _y _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_xyzw() const uX_noexcept { return vecqword4(m128_xmmi_0, m128_xmmi_1); }

    /**
     * \brief Get _x _y _w.
     *
     * Gets _x _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_xyw() const uX_noexcept { return vecqword3(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0)); }

    /**
     * \brief Get _x _y _w _z.
     *
     * Gets _x _y _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_xywz() const uX_noexcept { return vecqword4(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0)); }

    /**
     * \brief Get _x _z.
     *
     * Gets _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2 uX_ABI get_xz() const uX_noexcept { return vecqword2(_uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1)); }

    /**
     * \brief Get _x _z _y.
     *
     * Gets _x _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_xzy() const uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0)); }

    /**
     * \brief Get _x _z _y _w.
     *
     * Gets _x _z _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_xzyw() const uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1), _uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1)); }

    /**
     * \brief Get _x _z _w.
     *
     * Gets _x _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_xzw() const uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0)); }

    /**
     * \brief Get _x _z _w _y.
     *
     * Gets _x _z _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_xzwy() const uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1), _uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0)); }

    /**
     * \brief Get _x _w.
     *
     * Gets _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2 uX_ABI get_xw() const uX_noexcept { return vecqword2(_uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0))); }

    /**
     * \brief Get _x _w _y.
     *
     * Gets _x _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_xwy() const uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)); }

    /**
     * \brief Get _x _w _y _z.
     *
     * Gets _x _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_xwyz() const uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)), _uX_mm_unpackhi_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 0, 0))); }

    /**
     * \brief Get _x _w _z.
     *
     * Gets _x _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_xwz() const uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)), m128_xmmi_1); }

    /**
     * \brief Get _x _w _z _y.
     *
     * Gets _x _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_xwzy() const uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)), _uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1))); }

    /**
     * \brief Get _y.
     *
     * Gets _y element from vector.
     * \return int64_t.
     */
    uX_constexpr int64_t uX_ABI get_y() const uX_noexcept { return _qw_y; }

    /**
     * \brief Get _y _x.
     *
     * Gets _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2 uX_ABI get_yx() const uX_noexcept { return vecqword2(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0)); }

    /**
     * \brief Get _y _x _z.
     *
     * Gets _y _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_yxz() const uX_noexcept { return vecqword3(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0), m128_xmmi_1); }

    /**
     * \brief Get _y _x _z _w.
     *
     * Gets _y _x _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_yxzw() const uX_noexcept { return vecqword4(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0), m128_xmmi_1); }

    /**
     * \brief Get _y _x _w.
     *
     * Gets _y _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_yxw() const uX_noexcept { return vecqword3(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)); }

    /**
     * \brief Get _y _x _w _z.
     *
     * Gets _y _x _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_yxwz() const uX_noexcept { return vecqword4(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0)); }

    /**
     * \brief Get _y _z.
     *
     * Gets _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2 uX_ABI get_yz() const uX_noexcept { return vecqword2(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1), m128_xmmi_1)); }

    /**
     * \brief Get _y _z _x.
     *
     * Gets _y _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_yzx() const uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1), m128_xmmi_1), m128_xmmi_0); }

    /**
     * \brief Get _y _z _x _w.
     *
     * Gets _y _z _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_yzxw() const uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1), m128_xmmi_1), _uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1))); }

    /**
     * \brief Get _y _z _w.
     *
     * Gets _y _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_yzw() const uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1), m128_xmmi_1), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)); }

    /**
     * \brief Get _y _z _w _x.
     *
     * Gets _y _z _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_yzwx() const uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1), m128_xmmi_1), _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0)); }

    /**
     * \brief Get _y _w.
     *
     * Gets _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2 uX_ABI get_yw() const uX_noexcept { return vecqword2(_uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1)); }

    /**
     * \brief Get _y _w _x.
     *
     * Gets _y _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_ywx() const uX_noexcept { return vecqword3(_uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1), m128_xmmi_0); }

    /**
     * \brief Get _y _w _y _z.
     *
     * Gets _y _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_ywxz() const uX_noexcept { return vecqword4(_uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1), _uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1)); }

    /**
     * \brief Get _y _w _z.
     *
     * Gets _y _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_ywz() const uX_noexcept { return vecqword3(_uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1), m128_xmmi_1); }

    /**
     * \brief Get _y _w _z _y.
     *
     * Gets _y _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_ywzx() const uX_noexcept { return vecqword4(_uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1), _uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0)); }

    /**
     * \brief Get _z.
     *
     * Gets _z element from vector.
     * \return int64_t.
     */
    uX_constexpr int64_t uX_ABI get_z() const uX_noexcept { return _qw_z; }

    /**
     * \brief Get _z _x.
     *
     * Gets _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2 uX_ABI get_zx() const uX_noexcept { return vecqword2(_uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0)); }

    /**
     * \brief Get _z _x _y.
     *
     * Gets _z _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_zxy() const uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)); }

    /**
     * \brief Get _z _x _y _w.
     *
     * Gets _z _x _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_zxyw() const uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0), _uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1)); }

    /**
     * \brief Get _z _x _w.
     *
     * Gets _z _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_zxw() const uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)); }

    /**
     * \brief Get _z _x _w _y.
     *
     * Gets _z _x _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_zxwy() const uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0), _uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0)); }

    /**
     * \brief Get _z _y.
     *
     * Gets _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2 uX_ABI get_zy() const uX_noexcept { return vecqword2(_uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1))); }

    /**
     * \brief Get _z _y _x.
     *
     * Gets _z _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_zyx() const uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)), m128_xmmi_0); }

    /**
     * \brief Get _z _y _x _w.
     *
     * Gets _z _y _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_zyxw() const uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)), _uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1))); }

    /**
     * \brief Get _z _y _w.
     *
     * Gets _z _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_zyw() const uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)); }

    /**
     * \brief Get _z _y _w _x.
     *
     * Gets _z _y _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_zywx() const uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)), _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0)); }

    /**
     * \brief Get _z _w.
     *
     * Gets _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2 uX_ABI get_zw() const uX_noexcept { return vecqword2(m128_xmmi_1); }

    /**
     * \brief Get _z _w _x.
     *
     * Gets _z _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_zwx() const uX_noexcept { return vecqword3(m128_xmmi_1, m128_xmmi_0); }

    /**
     * \brief Get _z _w _x _y.
     *
     * Gets _z _w _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_zwxy() const uX_noexcept { return vecqword4(m128_xmmi_1, m128_xmmi_0); }

    /**
     * \brief Get _z _w _y.
     *
     * Gets _z _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_zwy() const uX_noexcept { return vecqword3(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)); }

    /**
     * \brief Get _z _w _y _x.
     *
     * Gets _z _w _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_zwyx() const uX_noexcept { return vecqword4(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0)); }

    /**
     * \brief Get _w.
     *
     * Gets _w element from vector.
     * \return int64_t.
     */
    uX_constexpr int64_t uX_ABI get_w() const uX_noexcept { return _qw_w; }

    /**
     * \brief Get _w _x.
     *
     * Gets _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2 uX_ABI get_wx() const uX_noexcept { return vecqword2(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0)); }

    /**
     * \brief Get _w _x _y.
     *
     * Gets _w _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_wxy() const uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)); }

    /**
     * \brief Get _w _x _y _z.
     *
     * Gets _w _x _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_wxyz() const uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0), _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1), m128_xmmi_1)); }

    /**
     * \brief Get _w _x _z.
     *
     * Gets _w _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_wxz() const uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0), m128_xmmi_1); }

    /**
     * \brief Get _w _x _z _y.
     *
     * Gets _w _x _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_wxzy() const uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0), _uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1))); }

    /**
     * \brief Get _w _y.
     *
     * Gets _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2 uX_ABI get_wy() const uX_noexcept { return vecqword2(_uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0)); }

    /**
     * \brief Get _w _y _x.
     *
     * Gets _w _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_wyx() const uX_noexcept { return vecqword3(_uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0), m128_xmmi_0); }

    /**
     * \brief Get _w _y _x _z.
     *
     * Gets _w _y _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_wyxz() const uX_noexcept { return vecqword4(_uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0), _uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1)); }

    /**
     * \brief Get _w _y _z.
     *
     * Gets _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_wyz() const uX_noexcept { return vecqword3(_uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0), m128_xmmi_1); }

    /**
     * \brief Get _w _y _z _x.
     *
     * Gets _w _y _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_wyzx() const uX_noexcept { return vecqword4(_uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0), _uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0)); }

    /**
     * \brief Get _w _z.
     *
     * Gets _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2 uX_ABI get_wz() const uX_noexcept { return vecqword2(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0)); }

    /**
     * \brief Get _w _z _x.
     *
     * Gets _w _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_wzx() const uX_noexcept { return vecqword3(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0), m128_xmmi_0); }

    /**
     * \brief Get _w _z _x _y.
     *
     * Gets _w _z _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_wzxy() const uX_noexcept { return vecqword4(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0), m128_xmmi_0); }

    /**
     * \brief Get _w _z _y.
     *
     * Gets _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3 uX_ABI get_wzy() const uX_noexcept { return vecqword3(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)); }

    /**
     * \brief Get _w _z _y _x.
     *
     * Gets _w _z _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4 uX_ABI get_wzyx() const uX_noexcept { return vecqword4(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0)); }

    /**
     * \brief Get reference to vector.
     *
     * Gets reference to vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref() uX_noexcept { return vecqword4(m128_xmmi_0, m128_xmmi_1); }

    /**
     * \brief Get reference to _x.
     *
     * Gets reference to _x element from vector.
     * \return int64_t.
     */
    uX_constexpr int64_t& uX_ABI ref_x() uX_noexcept { return _qw_x; }

    /**
     * \brief Get reference to _x _y.
     *
     * Gets reference to _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2& uX_ABI ref_xy() uX_noexcept { return vecqword2(m128_xmmi_0); }

    /**
     * \brief Get reference to _x _y _z.
     *
     * Gets reference to _x _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_xyz() uX_noexcept { return vecqword3(m128_xmmi_0, m128_xmmi_1); }

    /**
     * \brief Get reference to _x _y _z _w.
     *
     * Gets reference to _x _y _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_xyzw() uX_noexcept { return vecqword4(m128_xmmi_0, m128_xmmi_1); }

    /**
     * \brief Get reference to _x _y _w.
     *
     * Gets reference too _x _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_xyw() uX_noexcept { return vecqword3(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0)); }

    /**
     * \brief Get reference to _x _y _w _z.
     *
     * Gets reference to _x _y _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_xywz() uX_noexcept { return vecqword4(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0)); }

    /**
     * \brief Get reference to _x _z.
     *
     * Gets reference to _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2& uX_ABI ref_xz() uX_noexcept { return vecqword2(_uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1)); }

    /**
     * \brief Get reference to _x _z _y.
     *
     * Gets reference to _x _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_xzy() uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0)); }

    /**
     * \brief Get reference to _x _z _y _w.
     *
     * Gets reference to _x _z _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_xzyw() uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1), _uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1)); }

    /**
     * \brief Get reference to _x _z _w.
     *
     * Gets reference to _x _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_xzw() uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0)); }

    /**
     * \brief Get reference to _x _z _w _y.
     *
     * Gets reference to _x _z _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_xzwy() uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1), _uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0)); }

    /**
     * \brief Get reference to _x _w.
     *
     * Gets reference to _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2& uX_ABI ref_xw() uX_noexcept { return vecqword2(_uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0))); }

    /**
     * \brief Get reference to _x _w _y.
     *
     * Gets reference to _x _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_xwy() uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)); }

    /**
     * \brief Get reference to _x _w _y _z.
     *
     * Gets reference to _x _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_xwyz() uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)), _uX_mm_unpackhi_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 0, 0))); }

    /**
     * \brief Get reference to _x _w _z.
     *
     * Gets reference to _x _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_xwz() uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)), m128_xmmi_1); }

    /**
     * \brief Get reference to _x _w _z _y.
     *
     * Gets reference to _x _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_xwzy() uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)), _uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1))); }

    /**
     * \brief Get reference to _y.
     *
     * Gets reference to _y elements from vector.
     * \return int64_t.
     */
    uX_constexpr int64_t& uX_ABI ref_y() uX_noexcept { return _qw_y; }

    /**
     * \brief Get reference to _y _x.
     *
     * Gets reference to _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2& uX_ABI ref_yx() uX_noexcept { return vecqword2(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0)); }

    /**
     * \brief Get reference to _y _x _z.
     *
     * Gets reference to _y _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_yxz() uX_noexcept { return vecqword3(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0), m128_xmmi_1); }

    /**
     * \brief Get reference to _y _x _z _w.
     *
     * Gets reference to _y _x _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_yxzw() uX_noexcept { return vecqword4(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0), m128_xmmi_1); }

    /**
     * \brief Get reference to _y _x _w.
     *
     * Gets reference to _y _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_yxw() uX_noexcept { return vecqword3(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)); }

    /**
     * \brief Get reference to _y _x _w _z.
     *
     * Gets reference to _y _x _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_yxwz() uX_noexcept { return vecqword4(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0)); }

    /**
     * \brief Get reference to _y _z.
     *
     * Gets reference to _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2& uX_ABI ref_yz() uX_noexcept { return vecqword2(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1), m128_xmmi_1)); }

    /**
     * \brief Get reference to _y _z _x.
     *
     * Gets reference to _y _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_yzx() uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1), m128_xmmi_1), m128_xmmi_0); }

    /**
     * \brief Get reference to _y _z _x _w.
     *
     * Gets reference to _y _z _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_yzxw() uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1), m128_xmmi_1), _uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1))); }

    /**
     * \brief Get reference to _y _z _w.
     *
     * Gets reference to _y _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_yzw() uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1), m128_xmmi_1), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)); }

    /**
     * \brief Get reference to _y _z _w _x.
     *
     * Gets reference to _y _z _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_yzwx() uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1), m128_xmmi_1), _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0)); }

    /**
     * \brief Get reference to _y _w.
     *
     * Gets reference to _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2& uX_ABI ref_yw() uX_noexcept { return vecqword2(_uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1)); }

    /**
     * \brief Get reference to _y _w _x.
     *
     * Gets reference to _y _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_ywx() uX_noexcept { return vecqword3(_uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1), m128_xmmi_0); }

    /**
     * \brief Get reference to _y _w _y _z.
     *
     * Gets reference to _y _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_ywxz() uX_noexcept { return vecqword4(_uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1), _uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1)); }

    /**
     * \brief Get reference to _y _w _z.
     *
     * Gets reference to _y _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_ywz() uX_noexcept { return vecqword3(_uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1), m128_xmmi_1); }

    /**
     * \brief Get reference to _y _w _z _y.
     *
     * Gets reference to _y _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_ywzx() uX_noexcept { return vecqword4(_uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1), _uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0)); }

    /**
     * \brief Get reference to _z.
     *
     * Gets reference to _z element from vector.
     * \return int64_t.
     */
    uX_constexpr int64_t& uX_ABI ref_z() uX_noexcept { return _qw_z; }

    /**
     * \brief Get reference to _z _x.
     *
     * Gets reference to _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2& uX_ABI ref_zx() uX_noexcept { return vecqword2(_uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0)); }

    /**
     * \brief Get reference to _z _x _y.
     *
     * Gets reference to _z _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_zxy() uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)); }

    /**
     * \brief Get reference to _z _x _y _w.
     *
     * Gets reference to _z _x _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_zxyw() uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0), _uX_mm_unpackhi_epi64(m128_xmmi_0, m128_xmmi_1)); }

    /**
     * \brief Get reference to _z _x _w.
     *
     * Gets reference to _z _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_zxw() uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)); }

    /**
     * \brief Get reference to _z _x _w _y.
     *
     * Gets reference to _z _x _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_zxwy() uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0), _uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0)); }

    /**
     * \brief Get reference to _z _y.
     *
     * Gets reference to _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2& uX_ABI ref_zy() uX_noexcept { return vecqword2(_uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1))); }

    /**
     * \brief Get reference to _z _y _x.
     *
     * Gets reference to _z _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_zyx() uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)), m128_xmmi_0); }

    /**
     * \brief Get reference to _z _y _x _w.
     *
     * Gets reference to _z _y _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_zyxw() uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)), _uX_mm_unpacklo_epi64(m128_xmmi_0, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1))); }

    /**
     * \brief Get reference to _z _y _w.
     *
     * Gets reference to _z _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_zyw() uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1)); }

    /**
     * \brief Get reference to _z _y _w _x.
     *
     * Gets reference to _z _y _w _xelements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_zywx() uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)), _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0)); }

    /**
     * \brief Get reference to _z _w.
     *
     * Gets reference to _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2& uX_ABI ref_zw() uX_noexcept { return vecqword2(m128_xmmi_1); }

    /**
     * \brief Get reference to _z _w _x.
     *
     * Gets reference to _z _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_zwx() uX_noexcept { return vecqword3(m128_xmmi_1, m128_xmmi_0); }

    /**
     * \brief Get reference to _z _w _x _y.
     *
     * Gets reference to _z _w _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_zwxy() uX_noexcept { return vecqword4(m128_xmmi_1, m128_xmmi_0); }

    /**
     * \brief Get reference to _z _w _y.
     *
     * Gets reference to _z _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_zwy() uX_noexcept { return vecqword3(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)); }

    /**
     * \brief Get reference to _z _w _y _x.
     *
     * Gets reference to _z _w _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_zwyx() uX_noexcept { return vecqword4(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0)); }

    /**
     * \brief Get reference to _w.
     *
     * Gets reference to _w element from vector.
     * \return int64_t.
     */
    uX_constexpr int64_t& uX_ABI ref_w() uX_noexcept { return _qw_w; }

    /**
     * \brief Get reference to _w _x.
     *
     * Gets reference to _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2& uX_ABI ref_wx() uX_noexcept { return vecqword2(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0)); }

    /**
     * \brief Get reference to _w _x _y.
     *
     * Gets reference to _w _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_wxy() uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)); }

    /**
     * \brief Get reference to _w _x _y _z.
     *
     * Gets reference to _w _x _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_wxyz() uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0), _uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1), m128_xmmi_1)); }

    /**
     * \brief Get reference to _w _x _z.
     *
     * Gets reference to _w _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_wxz() uX_noexcept { return vecqword3(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0), m128_xmmi_1); }

    /**
     * \brief Get reference to _w _x _z _y.
     *
     * Gets reference to _w _x _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_wxzy() uX_noexcept { return vecqword4(_uX_mm_unpacklo_epi64(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 1), m128_xmmi_0), _uX_mm_unpacklo_epi64(m128_xmmi_1, _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1))); }

    /**
     * \brief Get reference to _w _y.
     *
     * Gets reference to _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2& uX_ABI ref_wy() uX_noexcept { return vecqword2(_uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0)); }

    /**
     * \brief Get reference to _w _y _x.
     *
     * Gets reference to _w _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_wyx() uX_noexcept { return vecqword3(_uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0), m128_xmmi_0); }

    /**
     * \brief Get reference to _w _y _x _z.
     *
     * Gets reference to _w _y _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_wyxz() uX_noexcept { return vecqword4(_uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0), _uX_mm_unpacklo_epi64(m128_xmmi_0, m128_xmmi_1)); }

    /**
     * \brief Get reference to _w _y _z.
     *
     * Gets reference to _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_wyz() uX_noexcept { return vecqword3(_uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0), m128_xmmi_1); }

    /**
     * \brief Get reference to _w _y _z _x.
     *
     * Gets reference to _w _y _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_wyzx() uX_noexcept { return vecqword4(_uX_mm_unpackhi_epi64(m128_xmmi_1, m128_xmmi_0), _uX_mm_unpacklo_epi64(m128_xmmi_1, m128_xmmi_0)); }

    /**
     * \brief Get reference to _w _z.
     *
     * Gets reference to _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword2& uX_ABI ref_wz() uX_noexcept { return vecqword2(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0)); }

    /**
     * \brief Get reference to _w _z _x.
     *
     * Gets reference to _w _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_wzx() uX_noexcept { return vecqword3(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0), m128_xmmi_0); }

    /**
     * \brief Get reference to _w _z _x _y.
     *
     * Gets reference to _w _z _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_wzxy() uX_noexcept { return vecqword4(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0), m128_xmmi_0); }

    /**
     * \brief Get reference to _w _z _y.
     *
     * Gets reference to _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword3& uX_ABI ref_wzy() uX_noexcept { return vecqword3(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 1)); }

    /**
     * \brief Get reference to _w _z _y _x
     *
     * Gets reference to _w _z _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecqword4& uX_ABI ref_wzyx() uX_noexcept { return vecqword4(_uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_1, 1, 0), _uX_MM_SHUFFLE_EPI64R_IM(m128_xmmi_0, 1, 0)); }

    /**
     * \brief Set the vector.
     *
     * Sets all vector elements.
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x.
     *
     * Sets the vector _x element.
     *
     * \param Inint_a.
     */
    void uX_ABI set_x(int64_t Inint_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y.
     *
     * Sets the vector _x _y elements with vecqword2(_x,_y).
     *
     * \param Inxmmi_a.
     */
    void uX_ABI set_xy(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y _z.
     *
     * Sets the vector _x _y _z elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_xyz(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y _z _w.
     *
     * Sets the vector _x _y _z _w elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_xyzw(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y _w.
     *
     * Sets the vector _x _y _w elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_xyw(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y _w _z.
     *
     * Sets the vector _x _y _w _z elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_xywz(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z.
     *
     * Sets the vector _x _z elements with vecqword2(_x,_y).
     *
     * \param Inxmmi_a.
     */
    void uX_ABI set_xz(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z _y.
     *
     * Sets the vector _x _z _y elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_xzy(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z _y _w.
     *
     * Sets the vector _x _z _y _w elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_xzyw(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z _w.
     *
     * Sets the vector _x _z _w elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_xzw(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z _w _y.
     *
     * Sets the vector _x _z _w _y elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_xzwy(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w.
     *
     * Sets the vector _x _w elements with vecqword2(_x,_y).
     *
     * \param Inxmmi_a.
     */
    void uX_ABI set_xw(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w _y.
     *
     * Sets the vector _x _w _y elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_xwy(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w _y _z.
     *
     * Sets the vector _x _w _y _z elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_xwyz(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w _z.
     *
     * Sets the vector _x _w _z elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_xwz(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w _z _y.
     *
     * Sets the vector _x _w _z _y elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_xwzy(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y.
     *
     * Sets the vector _y element.
     *
     * \param Inint_a.
     */
    void uX_ABI set_y(int64_t Inint_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x.
     *
     * Sets the vector _y _x elements with vecqword2(_x,_y).
     *
     * \param Inxmmi_a.
     */
    void uX_ABI set_yx(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x _z.
     *
     * Sets the vector _y _x _z elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_yxz(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x _z _w.
     *
     * Sets the vector _y _x _z _w elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_yxzw(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x _w.
     *
     * Sets the vector _y _x _w elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_yxw(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x _w _z.
     *
     * Sets the vector _y _x _w _z elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_yxwz(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z.
     *
     * Sets the vector _y _z elements with vecqword2(_x,_y).
     *
     * \param Inxmmi_a.
     */
    void uX_ABI set_yz(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z _x.
     *
     * Sets the vector _y _z _x elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_yzx(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z _x _w.
     *
     * Sets the vector _y _z _x _w elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_yzxw(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z _w.
     *
     * Sets the vector _y _z _w elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_yzw(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z _w _x.
     *
     * Sets the vector _y _z _w _x elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_yzwx(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w.
     *
     * Sets the vector _y _w elements with vecqword2(_x,_y).
     *
     * \param Inxmmi_a.
     */
    void uX_ABI set_yw(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w _x.
     *
     * Sets the vector _y _w _x elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_ywx(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w _y _z.
     *
     * Sets the vector _y _w _y _z elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_ywxz(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w _z.
     *
     * Sets the vector _y _w _z elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_ywz(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w _z _y.
     *
     * Sets the vector _y _w _z _y elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_ywzx(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z.
     *
     * Sets the vector _z element.
     *
     * \param Inint_a.
     */
    void uX_ABI set_z(int64_t Inint_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x.
     *
     * Sets the vector _z _x elements with vecqword2(_x,_y).
     *
     * \param Inxmmi_a.
     */
    void uX_ABI set_zx(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x _y.
     *
     * Sets the vector _z _x _y elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_zxy(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x _y _w.
     *
     * Sets the vector _z _x _y _w elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_zxyw(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x _w.
     *
     * Sets the vector _z _x _w elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_zxw(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x _w _y.
     *
     * Sets the vector _z _x _w _y elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_zxwy(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y.
     *
     * Sets the vector _z _y elements with vecqword2(_x,_y).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_zy(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y _x.
     *
     * Sets the vector _z _y _x elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_zyx(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y _x _w.
     *
     * Sets the vector _z _y _x _w elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_zyxw(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y _w.
     *
     * Sets the vector _z _y _w elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_zyw(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y _w.
     *
     * Sets the vector _z _y _w _x elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_zywx(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w.
     *
     * Sets the vector _z _w elements with vecqword2(_x,_y).
     *
     * \param Inxmmi_a.
     */
    void uX_ABI set_zw(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w _x.
     *
     * Sets the vector _z _w _x elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_zwx(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w _x _y.
     *
     * Sets the vector _z _w _x _y elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_zwxy(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w _y.
     *
     * Sets the vector _z _w _y elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_zwy(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w _y _x.
     *
     * Sets the vector _z _w _y _x elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_zwyx(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w.
     *
     * Sets the vector _w element.
     *
     * \param Inint_a.
     */
    void uX_ABI set_w(int64_t Inint_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x.
     *
     * Sets the vector _w _x elements with vecqword2(_x,_y).
     *
     * \param Inxmmi_a.
     */
    void uX_ABI set_wx(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x _y.
     *
     * Sets the vector _w _x _y elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_wxy(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x _y _z.
     *
     * Sets the vector _w _x _y _z elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_wxyz(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x _z.
     *
     * Sets the vector _w _x _z elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_wxz(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x _z _y.
     *
     * Sets the vector _w _x _z _y elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_wxzy(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y.
     *
     * Sets the vector _w _y elements with vecqword2(_x,_y).
     *
     * \param Inxmmi_a.
     */
    void uX_ABI set_wy(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y _x.
     *
     * Sets the vector _w _y _x elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_wyx(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y _x _z.
     *
     * Sets the vector _w _y _x _z elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_wyxz(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y _z.
     *
     * Sets the vector _w _y _z elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_wyz(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y _z _x.
     *
     * Sets the vector _w _y _z _x elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_wyzx(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z.
     *
     * Sets the vector _w _z elements with vecqword2(_x,_y).
     *
     * \param Inxmmi_a.
     */
    void uX_ABI set_wz(const vecqword2 Inxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z _x.
     *
     * Sets the vector _w _z _x elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_wzx(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z _x _y.
     *
     * Sets the vector _w _z _x _y elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_wzxy(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z _y.
     *
     * Sets the vector _w _z _y elements with vecqword3(_x,_y,_z).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_wzy(const vecqword3 InHxmmi_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z _y _x.
     *
     * Sets the vector _w _z _y _x elements with vecqword4(_x,_y,_z,_w).
     *
     * \param InHxmmi_a.
     */
    void uX_ABI set_wzyx(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Generate a constant vector of 4 integers at compile time.
     *
     * Generate a constant vector of 4 integers at compile time stored in memory.
     *
     */
    template <int64_t i0, int64_t i1, int64_t i2, int64_t i3>
    friend uX_constexpr vecqword4 uX_ABI constant4i64() {
        return vecqword4(i0, i1, i2, i3);
    }

    /* Bitwise Operators */

    /**
     * \brief Bitwise function ANDNOT.
     *
     * Performs the compute and not from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI andnot(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Bitwise operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator&(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Bitwise operator OR.
     *
     * Performs the compute or from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator|(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Bitwise operator XOR.
     *
     * Performs the compute xor from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator^(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Bitwise operator NOT.
     *
     * Performs the compute not from the 2 parameters.
     *
     * \param InHxmmi_a.
     */
    friend vecqword4 uX_ABI operator~(const vecqword4 InHxmmi_a) uX_noexcept;

    /* Logical Operators */

    /**
     * \brief Logical function ANDNOT.
     *
     * Performs the compute and not from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     * \return boolean integer.
     */
    friend bool_t uX_ABI bandnot(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Logical operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator&&(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Logical operator OR.
     *
     * Performs the compute OR from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator||(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Logical operator NOT.
     *
     * Performs the compute not from the 1 parameter.
     *
     * \param InHxmmi_a.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator!(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Logical function HORIZONTAL AND.
     *
     * Performs the compute horizontal and in all bits from the parameter. Returns true if all bits are 1.
     *
     * \param InHxmmi_a.
     * \return boolean integer.
     */
    friend bool_t uX_ABI horizontal_and(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Logical function HORIZONTAL OR.
     *
     * Performs the compute horizontal or in all bits from the parameter. Returns true if at least one bit is 1.
     *
     * \param InHxmmi_a.
     * \return boolean integer.
     */
    friend bool_t uX_ABI horizontal_or(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Logical operator assignment AND.
     *
     * Performs the compute and from the 2 parameters, and assigns to first parameter.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4& uX_ABI operator&=(vecqword4& InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Logical operator assignment OR.
     *
     * Performs the compute or from the 2 parameters, and assigns to first parameter.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4& uX_ABI operator|=(vecqword4& InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Logical operator assignment XOR.
     *
     * Performs the compute xor from the 2 parameters, and assigns to first parameter.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4& uX_ABI operator^=(vecqword4& InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /* Arithmetic Operators */

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param Inint_b, broadcast same value to all elements.
     */
    friend vecqword4 uX_ABI operator+(const vecqword4 InHxmmi_a, int64_t Inint_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inint_a, broadcast same value to all elements.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator+(int64_t Inint_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param Inxmmi_b, broadcast same value to all elements.
     */
    friend vecqword4 uX_ABI operator+(const vecqword4 InHxmmi_a, const __m128i Inxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmi_a, broadcast same value to all elements.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator+(const __m128i Inxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator+(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param Inint_b, broadcast same value to all elements.
     */
    friend vecqword4 uX_ABI operator-(const vecqword4 InHxmmi_a, int64_t Inint_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inint_a, broadcast same value to all elements.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator-(int64_t Inint_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param Inxmmi_b, broadcast same value to all elements.
     */
    friend vecqword4 uX_ABI operator-(const vecqword4 InHxmmi_a, const __m128i Inxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmi_a, broadcast same value to all elements.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator-(const __m128i Inxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator-(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param Inint_b, broadcast same value to all elements.
     */
    friend vecqword4 uX_ABI operator*(const vecqword4 InHxmmi_a, int64_t Inint_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inint_a, broadcast same value to all elements.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator*(int64_t Inint_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param Inxmmi_b, broadcast same value to all elements.
     */
    friend vecqword4 uX_ABI operator*(const vecqword4 InHxmmi_a, const __m128i Inxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmi_a, broadcast same value to all elements.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator*(const __m128i Inxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator*(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param Inint_b, broadcast same value to all elements.
     */
    /*friend vecqword4 uX_ABI operator/(const vecqword4 InHxmmi_a, int64_t Inint_b) uX_noexcept;*/

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inint_a, broadcast same value to all elements.
     * \param InHxmmi_b.
     */
    /*friend vecqword4 uX_ABI operator/(int64_t Inint_a, const vecqword4 InHxmmi_b) uX_noexcept;*/

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param Inxmmi_b, broadcast same value to all elements.
     */
    /*friend vecqword4 uX_ABI operator/(const vecqword4 InHxmmi_a, const __m128i Inxmmi_b) uX_noexcept;*/

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmi_a, broadcast same value to all elements.
     * \param InHxmmi_b.
     */
    /*friend vecqword4 uX_ABI operator/(const __m128i Inxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;*/

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    /*friend vecqword4 uX_ABI operator/(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;*/

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters, and assigns to first parameter.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4& uX_ABI operator+=(vecqword4& InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters, and assigns to first parameter.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4& uX_ABI operator-=(vecqword4& InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters, and assigns to first parameter.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4& uX_ABI operator*=(vecqword4& InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters, and assigns to first parameter.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    /*friend vecqword4& uX_ABI operator/=(vecqword4& InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;*/

    /* Unary Operators */

    /**
     * \brief Unary prefix increment operator.
     *
     * Performs the compute prefix increment.
     *
     * \param InHxmmi_a.
     */
    friend vecqword4& uX_ABI operator++(vecqword4& InHxmmi_a) uX_noexcept;

    /**
     * \brief Unary prefix decrement operator.
     *
     * Performs the compute prefix increment.
     *
     * \param InHxmmi_a.
     */
    friend vecqword4& uX_ABI operator--(vecqword4& InHxmmi_a) uX_noexcept;

    /**
     * \brief Unary postfix increment operator.
     *
     * Performs the compute postfix increment.
     *
     * \param InHxmmi_a.
     */
    friend vecqword4 uX_ABI operator++(vecqword4& InHxmmi_a, int) uX_noexcept;

    /**
     * \brief Unary postfix decrement operator.
     *
     * Performs the compute postfix increment.
     *
     * \param InHxmmi_a.
     */
    friend vecqword4 uX_ABI operator--(vecqword4& InHxmmi_a, int) uX_noexcept;

    /**
     * \brief Unary minus operator.
     *
     * Performs the compute minus. Change sign bit, even for 0, INF and NAN.
     *
     * \param InHxmmi_a.
     */
    friend vecqword4 uX_ABI operator-(const vecqword4 InHxmmi_a) uX_noexcept;

    /* Comparison Operators */

    /**
     * \brief Comparison operator equal.
     *
     * Performs the compute equality from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator==(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Comparison operator less than.
     *
     * Performs the compute less than from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator<(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Comparison operator less than or equal.
     *
     * Performs the compute less than or equal from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator<=(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Comparison operator greater than.
     *
     * Performs the compute greater than from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator>(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Comparison operator greater than or equal.
     *
     * Performs the compute greater than or equal from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator>=(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Comparison operator not equal.
     *
     * Performs the compute not equal from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_b.
     */
    friend vecqword4 uX_ABI operator!=(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /* Shift Operators */
    /**
     * \brief Shift left Operator.
     *
     * Performs the left shifting from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InIntCount.
     */
    friend vecqword4 uX_ABI operator<<(const vecqword4 InHxmmi_a, count_t InIntCount) uX_noexcept;

    /* Shift Operators */
    /**
     * \brief Shift left Operator.
     *
     * Performs the left shifting from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_Count.
     */
    friend vecqword4 uX_ABI operator<<(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_Count) uX_noexcept;

    /* Shift Operators */
    /**
     * \brief Shift right arithmetic Operator.
     *
     * Performs the right shifting from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InIntCount.
     */
    friend vecqword4 uX_ABI operator>>(const vecqword4 InHxmmi_a, count_t InIntCount) uX_noexcept;

    /* Shift Operators */
    /**
     * \brief Shift right arithmetic Operator.
     *
     * Performs the right shifting from the 2 parameters.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_Count.
     */
    friend vecqword4 uX_ABI operator>>(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_Count) uX_noexcept;

    /* Shift Operators */
    /**
     * \brief Shift left assignment Operator.
     *
     * Performs the left shifting from the 2 parameters and assigns to.
     *
     * \param InHxmmi_a.
     * \param InIntCount.
     */
    vecqword4& uX_ABI operator<<=(count_t InIntCount) uX_noexcept;

    /* Shift Operators */
    /**
     * \brief Shift left assignment Operator.
     *
     * Performs the left shifting from the 2 parameters and assigns to.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_Count.
     */
    vecqword4& uX_ABI operator<<=(const vecqword4 InHxmmi_Count) uX_noexcept;

    /* Shift Operators */
    /**
     * \brief Shift right arithmetic assignment Operator.
     *
     * Performs the right shifting from the 2 parameters and assigns to.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_Count.
     */
    vecqword4& uX_ABI operator>>=(count_t InIntCount) uX_noexcept;

    /* Shift Operators */
    /**
     * \brief Shift right arithmetic assignment Operator.
     *
     * Performs the right shifting from the 2 parameters and assigns to.
     *
     * \param InHxmmi_a.
     * \param InHxmmi_Count.
     */
    vecqword4& uX_ABI operator>>=(const vecqword4 InHxmmi_Count) uX_noexcept;

    /**
     * \brief Index operator.
     *
     * Element Access Only, no modifications to elements.
     *
     * \param index element to get.
     * \return int64_t
     */
    const int64_t& uX_ABI operator[](count_t index) const uX_noexcept;

    /**
     * \brief Index operator.
     *
     * Element Access and Modification.
     *
     * \param index element to get.
     * \return int64_t
     */
    int64_t& uX_ABI operator[](count_t index) uX_noexcept;

    /**
     * \brief Load unaligned.
     *
     * Performs load from type __m128i* unaligned.
     *
     * \param Inpint pointer value to copy from.
     */
    vecqword4& uX_ABI m128_load(uX_InReads(2) const __m128i* Inpint) uX_noexcept;

    /**
     * \brief Load aligned.
     *
     * Performs load from type __m128i* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Inpint pointer value to copy from.
     */
    vecqword4& uX_ABI m128_load_a(uX_InReads(2) const __m128i* Inpint) uX_noexcept;

    /**
     * \brief Load unaligned.
     *
     * Performs load from type int64_t* unaligned.
     *
     * \param Inpint pointer value to copy from.
     */
    vecqword4& uX_ABI load(uX_InReads(4) const int64_t* Inpint) uX_noexcept;

    /**
     * \brief Load aligned.
     *
     * Performs load from type int64_t* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Inpint pointer value to copy from.
     */
    vecqword4& uX_ABI load_a(uX_InReads(4) const int64_t* Inpint) uX_noexcept;

    /**
     * \brief Store function unaligned.
     *
     * Performs store to type __m128i* unaligned.
     *
     * \param Outpint pointer value to store to.
     */
    void uX_ABI m128_store(uX_OutWrites(2) __m128i* Outpint) const uX_noexcept;

    /**
     * \brief Store function aligned.
     *
     * Performs store to type __m128i* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Outpint pointer value to store to.
     */
    void uX_ABI m128_store_a(uX_OutWrites(2) __m128i* Outpint) const uX_noexcept;

    /**
     * \brief Store function unaligned.
     *
     * Performs store to type int64_t* unaligned.
     *
     * \param Outpint pointer value to store to.
     */
    void uX_ABI store(uX_OutWrites(4) int64_t* Outpint) const uX_noexcept;

    /**
     * \brief Store function aligned.
     *
     * Performs store to type int64_t* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Outpint pointer value to store to.
     */
    void uX_ABI store_a(uX_OutWrites(4) int64_t* Outpint) const uX_noexcept;

    /**
     * \brief Insert function.
     *
     * Performs insert from type int64_t on the mask index.
     *
     * \param value int64_t to copy from.
     * \param index element to set.
     * \return vector
     */
    const vecqword4 uX_ABI insert(int64_t value, count_t index) uX_noexcept;

    /**
     * \brief Extract function.
     *
     * Performs extract element from mask index.
     *
     * \param index element to get.
     * \return int64_t
     */
    int64_t uX_ABI extract(count_t index) const uX_noexcept;

    /**
     * \brief Set all elements to zero.
     */
    vecqword4& uX_ABI zero() uX_noexcept;

    /**
     * \brief Cut off vector to n elements.
     *
     * Performs the cut off vector to n elements.
     * The last 4-n elements are set to zero.
     *
     * \param indexN element's to cut.
     */
    vecqword4& uX_ABI cutoff(count_t indexN) uX_noexcept;

    /**
     * \brief Select between two operands.
     *
     * Performs the selection between two operands.
     * The first vector is boolean vector mask that chooses between the elements of the second and the third vector.
     * Corresponds to this pseudo code:
     *  for (int i () { return 0; i < 4; i++) result[i] () { return s[i] ? a[i] : b[i];
     *
     * \param InHxmmi_f the boolean vector mask.
     * \param InHxmmi_a the a vector to select.
     * \param InHxmmi_b the b vector to select.
     * \return the selected vector elements.
     */
    friend vecqword4 uX_ABI select(const vecqword4 InHxmmi_f, const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Conditional add.
     *
     * Performs the conditional add in all elements selected by the first boolean vector mask on the second and third vector elements.
     * Corresponds to this pseudo code:
     *  result[i] () { return f[i] ? (a[i] + b[i]) : a[i]
     *
     * \param InHxmmi_f the boolean vector mask.
     * \param InHxmmi_a the a vector to add.
     * \param InHxmmi_b the b vector to add.
     * \return the selected vector addition.
     */
    friend vecqword4 uX_ABI if_add(const vecqword4 InHxmmi_f, const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Conditional subtract.
     *
     * Performs the conditional subtract in all elements selected by the first boolean vector mask on the second and third vector elements.
     * Corresponds to this pseudo code:
     *  result[i] () { return f[i] ? (a[i] - b[i]) : a[i]
     *
     * \param InHxmmi_f the boolean vector mask.
     * \param InHxmmi_a the a vector to subtract.
     * \param InHxmmi_b the b vector to subtract.
     * \return the selected vector subtraction.
     */
    friend vecqword4 uX_ABI if_sub(const vecqword4 InHxmmi_f, const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Conditional multiply.
     *
     * Performs the conditional multiply in all elements selected by the first boolean vector mask on the second and third vector elements.
     * Corresponds to this pseudo code:
     *  result[i] () { return f[i] ? (a[i] * b[i]) : a[i]
     *
     * \param InHxmmi_f the boolean vector mask.
     * \param InHxmmi_a the a vector to multiply.
     * \param InHxmmi_b the b vector to multiply.
     * \return the selected vector multiplication.
     */
    friend vecqword4 uX_ABI if_mul(const vecqword4 InHxmmi_f, const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Conditional multiply.
     *
     * Performs the conditional divide in all elements selected by the first boolean vector mask on the second and third vector elements.
     * Corresponds to this pseudo code:
     *  result[i] () { return f[i] ? (a[i] / b[i]) : a[i]
     *
     * \param InHxmmi_f the boolean vector mask.
     * \param InHxmmi_a the a vector to divide.
     * \param InHxmmi_b the b vector to divide.
     * \return the selected vector division.
     */
    /*friend vecqword4 uX_ABI if_div(const vecqword4 InHxmmi_f, const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;*/

    /**
     * \brief Max.
     *
     * Computes the max a > b ? a : b.
     *
     * \param InHxmmi_a the a vector.
     * \param InHxmmi_b the b vector.
     * \return vector.
     */
    friend vecqword4 uX_ABI max(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Min.
     *
     * Computes the min a < b ? a : b.
     *
     * \param InHxmmi_a the a vector.
     * \param InHxmmi_b the b vector.
     * \return vector.
     */
    friend vecqword4 uX_ABI min(const vecqword4 InHxmmi_a, const vecqword4 InHxmmi_b) uX_noexcept;

    /**
     * \brief Abs.
     *
     * Computes the absolute value.
     *
     * \param InHxmmi_a the a vector..
     * \return vector.
     */
    friend vecqword4 uX_ABI abs(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Abs Sat.
     *
     * Computes the absolute value with saturation if overflow.
     *
     * \param InHxmmi_a the a vector..
     * \return vector.
     */
    friend vecqword4 uX_ABI abs_sat(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Square.
     *
     * Computes the a * a.
     *
     * \param InHxmmi_a the a vector.
     * \return vector.
     */
    friend vecqword4 uX_ABI square(const vecqword4 InHxmmi_a) uX_noexcept;

    /**
     * \brief Scale.
     *
     * Computes the a * s.
     *
     * \param InHxmmi_a the a vector.
     * \param Inint_s the int64_t scale factor.
     * \return vector.
     */
    friend vecqword4 uX_ABI scale(const vecqword4 InHxmmi_a, int64_t Inint_s) uX_noexcept;

protected:

private:
    union
    {
        struct
        {
            __m128i     m128_xmmi_0, m128_xmmi_1;
        };
        struct
        {
            int64_t     _qw_x, _qw_y, _qw_z, _qw_w;
        };
        struct
        {
            int32_t     _dw0_0, _dw0_1,
                        _dw1_0, _dw1_1,
                        _dw2_0, _dw2_1,
                        _dw3_0, _dw3_1;
        };
        struct
        {
            int16_t     _w0_0, _w0_1, _w0_2, _w0_3,
                        _w1_0, _w1_1, _w1_2, _w1_3,
                        _w2_0, _w2_1, _w2_2, _w2_3,
                        _w3_0, _w3_1, _w3_2, _w3_3;
        };
        struct
        {
            int8_t      _b0_0, _b0_1, _b0_2, _b0_3, _b0_4, _b0_5, _b0_6, _b0_7,
                        _b1_0, _b1_1, _b1_2, _b1_3, _b1_4, _b1_5, _b1_6, _b1_7,
                        _b2_0, _b2_1, _b2_2, _b2_3, _b2_4, _b2_5, _b2_6, _b2_7,
                        _b3_0, _b3_1, _b3_2, _b3_3, _b3_4, _b3_5, _b3_6, _b3_7;
        };
        __m128i         m128_xmmi[2];
        int64_t           m128_qw[4];
        int32_t           m128_dw[8];
        int16_t           m128_w[16];
        int8_t            m128_b[32];
    };

public:
    uX_const uint32_t uX_ABI m128_xmm_ptr_lenght     () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_xmm_ptr_size       () const uX_noexcept { return 32; }
    uX_const uint32_t uX_ABI m128_xmm_size           () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_xmm_i64_elements   () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_xmm_i32_elements   () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_xmm_i16_elements   () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_xmm_i8_elements    () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_i64_ptr_lenght     () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_i32_ptr_lenght     () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_i16_ptr_lenght     () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_i8_ptr_lenght      () const uX_noexcept { return 32; }
    uX_const uint32_t uX_ABI m128_i64_ptr_size       () const uX_noexcept { return 32; }
    uX_const uint32_t uX_ABI m128_i32_ptr_size       () const uX_noexcept { return 32; }
    uX_const uint32_t uX_ABI m128_i16_ptr_size       () const uX_noexcept { return 32; }
    uX_const uint32_t uX_ABI m128_i8_ptr_size        () const uX_noexcept { return 32; }
    uX_const uint32_t uX_ABI m128_i64_size           () const uX_noexcept { return 8; }
    uX_const uint32_t uX_ABI m128_i32_size           () const uX_noexcept { return 4; }
    uX_const uint32_t uX_ABI m128_i16_size           () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_i8_size            () const uX_noexcept { return 1; }

}vecqword4_t;
#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

#ifndef uX_XMM_VECDOUBLE4_H
#include "uXxmmvecdouble4.h"
#endif  /* uX_XMM_VECDOUBLE4_H */

#ifndef uX_XMM_VECQWORD3_H
#include "uXxmmvecqword3.h"
#endif  /* uX_XMM_VECQWORD3_H */

#ifndef uX_XMM_VECQWORD2_H
#include "uXxmmvecqword2.h"
#endif  /* uX_XMM_VECQWORD2_H */

#ifndef uX_XMM_VECQWORD1_H
#include "uXxmmvecqword1.h"
#endif  /* uX_XMM_VECQWORD1_H */

#ifndef uX_XMM_VECUQWORD4_H
#include "uXxmmvecuqword4.h"
#endif  /* uX_XMM_VECUQWORD4_H */

#ifdef uX_SSE2
#include "./inline/uXxmmvecqword4.inl"
#endif // uX_SSE2

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECQWORD4_H
