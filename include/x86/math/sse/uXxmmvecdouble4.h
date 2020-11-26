
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

#ifndef uX_XMM_VECDOUBLE4_H
#define uX_XMM_VECDOUBLE4_H 1

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
/** \class vecdouble4
  *
  * \brief SSE SIMD class with the size of 4 double elements.
  *
  * The %vecdouble4 class is an 4 elements wide 64bit double.
  * It provides interoperability between %vecdouble2, %vecdword4 and %vecudword4.
  *
  */
typedef class vecdouble4
{
public:
    vecdouble4()uX_default;
    ~vecdouble4()uX_default;

    /**
     * \brief Default constructor initialization from vecdouble4.
     *
     * @param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4(const vecdouble4& InHxmmd_a) uX_noexcept : m128_xmmd_0(InHxmmd_a.m128_xmmd_0), m128_xmmd_1(InHxmmd_a.m128_xmmd_1) {}

    /**
     * \brief Default constructor initialization from vecdouble4.
     *
     * @param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4(vecdouble4&& InHxmmd_a) uX_noexcept : m128_xmmd_0(InHxmmd_a.m128_xmmd_0), m128_xmmd_1(InHxmmd_a.m128_xmmd_1) {}

    /**
     * \brief Constructor initialization from type __m128d, broadcast the same value into all elements.
     *
     * \param Inxmmd value to copy from.
     */
    uX_explicit uX_constexpr vecdouble4(const __m128d Inxmmd) uX_noexcept : m128_xmmd_0(Inxmmd), m128_xmmd_1(Inxmmd) {}

    /**
     * \brief Constructor initialization from 2 type __m128d.
     *
     * @param Inxmmd_0 value to copy from.
     * @param Inxmmd_1 value to copy from.
     */
    uX_constexpr vecdouble4(const __m128d Inxmmd_0, const __m128d Inxmmd_1) uX_noexcept : m128_xmmd_0(Inxmmd_0), m128_xmmd_1(Inxmmd_1) {}

    /**
     * \brief Constructor initialization from type vecdouble3.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4(const vecdouble3 InHxmmd_a) uX_noexcept
                           : m128_xmmd_0(InHxmmd_a.get_xmmd_0()), m128_xmmd_1(_uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), m128_xmmd_1, 0, 1)) {}

    /**
     * \brief Constructor initialization from type vecdouble2.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4(const vecdouble2 Inxmmd_a) uX_noexcept : m128_xmmd_0(Inxmmd_a) {}

    /**
     * \brief Constructor initialization from type vecdouble1.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4(const vecdouble1 Inxmmd_a) uX_noexcept : m128_xmmd_0(_uX_mm_move_sd(m128_xmmd_0, Inxmmd_a)) {}

    /**
     * \brief Constructor initialization from type vecqword4.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecdouble4(const vecqword4 InHxmmi_a) uX_noexcept
                           : m128_xmmd_0(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_0())), m128_xmmd_1(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_1())) {}

    /**
     * \brief Constructor initialization from type vecuqword4.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecdouble4(const vecuqword4 InHxmmi_a) uX_noexcept
                           : m128_xmmd_0(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_0())), m128_xmmd_1(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_1())) {}

    /**
     * \brief Constructor to broadcast the same double value into all elements.
     *
     * \param Indouble_a double value to copy from.
     */
    uX_explicit uX_constexpr vecdouble4(double Indouble_a) uX_noexcept : m128_xmmd_0(_uX_mm_set1_pd(Indouble_a)), m128_xmmd_1(_uX_mm_set1_pd(Indouble_a)) {}

    /**
     * \brief Constructor initialization from 4 type double.
     *
     * \param Indouble_X value to copy from.
     * \param Indouble_Y value to copy from.
     * \param Indouble_Z value to copy from.
     * \param Indouble_W value to copy from.
     */
    uX_constexpr vecdouble4(double Indouble_X, double Indouble_Y, double Indouble_Z, double Indouble_W) uX_noexcept
                           : m128_xmmd_0(_uX_mm_setr_pd(Indouble_X, Indouble_Y)), m128_xmmd_1(_uX_mm_setr_pd(Indouble_Z, Indouble_W)) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecdouble4(const bool_t Inbool_a) uX_noexcept : m128_xmmd_0(vecdouble2(vecqword2(Inbool_a))), m128_xmmd_1(vecdouble2(vecqword2(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 4 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     * \param Inbool_Z value to copy from.
     * \param Inbool_W value to copy from.
     */
    uX_constexpr vecdouble4(const bool_t Inbool_X, const bool_t Inbool_Y, const bool_t Inbool_Z, const bool_t Inbool_W) uX_noexcept 
                           : m128_xmmd_0(vecdouble2(vecqword2(Inbool_X, Inbool_Y))), m128_xmmd_1(vecdouble2(vecqword2(Inbool_Z, Inbool_W))) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecdouble4(const bool Inbool_a) uX_noexcept : m128_xmmd_0(vecdouble2(vecqword2(Inbool_a))), m128_xmmd_1(vecdouble2(vecqword2(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 4 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     * \param Inbool_Z value to copy from.
     * \param Inbool_W value to copy from.
     */
    uX_constexpr vecdouble4(const bool Inbool_X, const bool Inbool_Y, const bool Inbool_Z, const bool Inbool_W) uX_noexcept
                           : m128_xmmd_0(vecdouble2(vecqword2(Inbool_X, Inbool_Y))), m128_xmmd_1(vecdouble2(vecqword2(Inbool_Z, Inbool_W))) {}

    /**
     * \brief Constructor initialization from type __m128d*.
     *
     * \param Inpm128_xmmd pointer value to copy from.
     */
    uX_explicit uX_constexpr vecdouble4(uX_InReads(2) const __m128d* Inpm128_xmmd) uX_noexcept
                                       /*: m128_xmmd_0(Inpm128_xmmd[0]), m128_xmmd_1(Inpm128_xmmd[1]) {}*/
                                       : m128_xmmd_0(_uX_mm_loadu_pd(reinterpret_cast<const double*>(Inpm128_xmmd))), m128_xmmd_1(_uX_mm_loadu_pd(reinterpret_cast<const double*>(Inpm128_xmmd+1))) {}

    /**
     * \brief Constructor initialization from type double*.
     *
     * \param Inpdouble pointer value to copy from.
     */
    uX_explicit uX_constexpr vecdouble4(uX_InReads(4) const double* Inpdouble) uX_noexcept
                                       : m128_xmmd_0(_uX_mm_loadu_pd(Inpdouble)), m128_xmmd_1(_uX_mm_loadu_pd(Inpdouble+2)) {}

    /** \brief __m128d type cast operator.
     *
     * To convert to __m128d.
     */
    /*uX_constexpr operator __m128d() const uX_noexcept { return m128_xmm; }*/

    /** Type cast operator to convert to double*. */
    /*operator double*() const uX_noexcept;*/ //security undesired

    /**
     * \brief vecdouble4 default assignment operator.
     *
     * To convert from type vecdouble4.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(const vecdouble4& InHxmmd_a) uX_noexcept { return vecdouble4(InHxmmd_a); }

    /**
     * \brief vecdouble4 default assignment operator.
     *
     * To convert from type vecdouble4.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(vecdouble4&& InHxmmd_a) uX_noexcept { return vecdouble4(InHxmmd_a); }

    /**
     * \brief __m128d assignment operator.
     *
     * To convert from type __m128d.
     *
     * \param Inxmmd value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(const __m128d Inxmmd) uX_noexcept { return vecdouble4(Inxmmd); }

    /**
     * \brief vecdouble3 assignment operator.
     *
     * To convert from type vecdouble3.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(const vecdouble3 InHxmmd_a) uX_noexcept { return vecdouble4(InHxmmd_a); }

    /**
     * \brief vecdouble2 assignment operator.
     *
     * To convert from type vecdouble2.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(const vecdouble2 Inxmmd_a) uX_noexcept { return vecdouble4(Inxmmd_a); }

    /**
     * \brief vecdouble1 assignment operator.
     *
     * To convert from type vecdouble1.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(const vecdouble1 Inxmmd_a) uX_noexcept { return vecdouble4(Inxmmd_a); }

    /**
     * \brief vecqword4 assignment operator.
     *
     * To convert from type vecqword4.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(const vecqword4 InHxmmi_a) uX_noexcept { return vecdouble4(InHxmmi_a); }

    /**
     * \brief vecuqword4 assignment operator.
     *
     * To convert from type vecuqword4.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(const vecuqword4 InHxmmi_a) uX_noexcept { return vecdouble4(InHxmmi_a); }

    /**
     * \brief double assignment operator
     *
     * To broadcast the same double value into all elements.
     *
     * \param Indouble_a double value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(double Indouble_a) uX_noexcept { return vecdouble4(Indouble_a); }

    /**
     * \brief bool_t assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(const bool_t Inbool_a) uX_noexcept { return vecdouble4(Inbool_a); }

    /**
     * \brief bool assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(const bool Inbool_a) uX_noexcept { return vecdouble4(Inbool_a); }

    /**
     * \brief Assignment operator to convert from type double*.
     *
     * \param Inpdouble value to copy from.
     */
    /*vecdouble4& uX_ABI operator=(uX_InReads(4) const double* Inpdouble) uX_noexcept;*/ //security undesired

    /**
     * \brief Get vector 0.
     *
     * Gets vector 0.
     * \return vector 0.
     */
    uX_constexpr __m128d uX_ABI get_xmmd_0() const uX_noexcept { return m128_xmmd_0; }

    /**
     * \brief Get vector 1.
     *
     * Gets vector 1.
     * \return vector 1.
     */
    uX_constexpr __m128d uX_ABI get_xmmd_1() const uX_noexcept { return m128_xmmd_1; }

    /**
     * \brief Get reference to vector 0.
     *
     * Gets reference to vector 0.
     * \return vector 0.
     */
    uX_constexpr __m128d& uX_ABI ref_xmmd_0() uX_noexcept { return m128_xmmd_0; }

    /**
     * \brief Get reference to vector 1.
     *
     * Gets reference to vector 1.
     * \return vector 1.
     */
    uX_constexpr __m128d& uX_ABI ref_xmmd_1() uX_noexcept { return m128_xmmd_1; }

    /**
     * \brief Set the vector 0.
     *
     * Sets vector 0 element.
     *
     * \param Inxmmd.
     */
    void uX_ABI set_xmmd_0(const __m128d Inxmmd) uX_noexcept;

    /**
     * \brief Set the vector 1.
     *
     * Sets vector 1 element.
     *
     * \param Inxmmd.
     */
    void uX_ABI set_xmmd_1(const __m128d Inxmmd) uX_noexcept;

    /**
     * \brief Get vector.
     *
     * Gets vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get() const uX_noexcept { return vecdouble4(m128_xmmd_0, m128_xmmd_1); }

    /**
     * \brief Get _x.
     *
     * Gets _x element from vector.
     * \return double.
     */
    uX_constexpr double uX_ABI get_x() const uX_noexcept { return _x; }

    /**
     * \brief Get _x _y.
     *
     * Gets _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_xy() const uX_noexcept { return vecdouble2(m128_xmmd_0); }

    /**
     * \brief Get _x _y _z.
     *
     * Gets _x _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_xyz() const uX_noexcept { return vecdouble3(m128_xmmd_0, m128_xmmd_1); }

    /**
     * \brief Get _x _y _z _w.
     *
     * Gets _x _y _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_xyzw() const uX_noexcept { return vecdouble4(m128_xmmd_0, m128_xmmd_1); }

    /**
     * \brief Get _x _y _w.
     *
     * Gets _x _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_xyw() const uX_noexcept { return vecdouble3(m128_xmmd_0, _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get _x _y _w _z.
     *
     * Gets _x _y _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_xywz() const uX_noexcept { return vecdouble4(m128_xmmd_0, _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0)); }

    /**
     * \brief Get _x _z.
     *
     * Gets _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_xz() const uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0)); }

    /**
     * \brief Get _x _z _y.
     *
     * Gets _x _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_xzy() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get _x _z _y _w.
     *
     * Gets _x _z _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_xzyw() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get _x _z _w.
     *
     * Gets _x _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_xzw() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), m128_xmmd_1); }

    /**
     * \brief Get _x _z _w _y.
     *
     * Gets _x _z _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_xzwy() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get _x _w.
     *
     * Gets _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_xw() const uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1)); }

    /**
     * \brief Get _x _w _y.
     *
     * Gets _x _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_xwy() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get _x _w _y _z.
     *
     * Gets _x _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_xwyz() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0)); }

    /**
     * \brief Get _x _w _z.
     *
     * Gets _x _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_xwz() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), m128_xmmd_1); }

    /**
     * \brief Get _x _w _z _y.
     *
     * Gets _x _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_xwzy() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1)); }

    /**
     * \brief Get _y.
     *
     * Gets _y element from vector.
     * \return double.
     */
    uX_constexpr double uX_ABI get_y() const uX_noexcept { return _y; }

    /**
     * \brief Get _y _x.
     *
     * Gets _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_yx() const uX_noexcept { return vecdouble2(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0)); }

    /**
     * \brief Get _y _x _z.
     *
     * Gets _y _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_yxz() const uX_noexcept { return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), m128_xmmd_1); }

    /**
     * \brief Get _y _x _z _w.
     *
     * Gets _y _x _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_yxzw() const uX_noexcept { return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), m128_xmmd_1); }

    /**
     * \brief Get _y _x _w.
     *
     * Gets _y _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_yxw() const uX_noexcept { return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get _y _x _w _z.
     *
     * Gets _y _x _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_yxwz() const uX_noexcept { return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0)); }

    /**
     * \brief Get _y _z.
     *
     * Gets _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_yz() const uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0)); }

    /**
     * \brief Get _y _z _x.
     *
     * Gets _y _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_yzx() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), m128_xmmd_0); }

    /**
     * \brief Get _y _z _x _w.
     *
     * Gets _y _z _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_yzxw() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1)); }

    /**
     * \brief Get _y _z _w.
     *
     * Gets _y _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_yzw() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get _y _z _w _x.
     *
     * Gets _y _z _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_yzwx() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0)); }

    /**
     * \brief Get _y _w.
     *
     * Gets _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_yw() const uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get _y _w _x.
     *
     * Gets _y _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_ywx() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), m128_xmmd_0); }

    /**
     * \brief Get _y _w _y _z.
     *
     * Gets _y _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_ywxz() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0)); }

    /**
     * \brief Get _y _w _z.
     *
     * Gets _y _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_ywz() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), m128_xmmd_1); }

    /**
     * \brief Get _y _w _z _y.
     *
     * Gets _y _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_ywzx() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0)); }

    /**
     * \brief Get _z.
     *
     * Gets _z element from vector.
     * \return double.
     */
    uX_constexpr double uX_ABI get_z() const uX_noexcept { return _z; }

    /**
     * \brief Get _z _x.
     *
     * Gets _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_zx() const uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0)); }

    /**
     * \brief Get _z _x _y.
     *
     * Gets _z _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_zxy() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get _z _x _y _w.
     *
     * Gets _z _x _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_zxyw() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get _z _x _w.
     *
     * Gets _z _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_zxw() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get _z _x _w _y.
     *
     * Gets _z _x _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_zxwy() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get _z _y.
     *
     * Gets _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_zy() const uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1)); }

    /**
     * \brief Get _z _y _x.
     *
     * Gets _z _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_zyx() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), m128_xmmd_0); }

    /**
     * \brief Get _z _y _x _w.
     *
     * Gets _z _y _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_zyxw() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1)); }

    /**
     * \brief Get _z _y _w.
     *
     * Gets _z _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_zyw() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get _z _y _w _x.
     *
     * Gets _z _y _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_zywx() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0)); }

    /**
     * \brief Get _z _w.
     *
     * Gets _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_zw() const uX_noexcept { return vecdouble2(m128_xmmd_1); }

    /**
     * \brief Get _z _w _x.
     *
     * Gets _z _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_zwx() const uX_noexcept { return vecdouble3(m128_xmmd_1, m128_xmmd_0); }

    /**
     * \brief Get _z _w _x _y.
     *
     * Gets _z _w _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_zwxy() const uX_noexcept { return vecdouble4(m128_xmmd_1, m128_xmmd_0); }

    /**
     * \brief Get _z _w _y.
     *
     * Gets _z _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_zwy() const uX_noexcept { return vecdouble3(m128_xmmd_1, _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get _z _w _y _x.
     *
     * Gets _z _w _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_zwyx() const uX_noexcept { return vecdouble4(m128_xmmd_1, _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0)); }

    /**
     * \brief Get _w.
     *
     * Gets _w element from vector.
     * \return double.
     */
    uX_constexpr double uX_ABI get_w() const uX_noexcept { return _w; }

    /**
     * \brief Get _w _x.
     *
     * Gets _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_wx() const uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0)); }

    /**
     * \brief Get _w _x _y.
     *
     * Gets _w _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_wxy() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get _w _x _y _z.
     *
     * Gets _w _x _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_wxyz() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0)); }

    /**
     * \brief Get _w _x _z.
     *
     * Gets _w _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_wxz() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), m128_xmmd_1); }

    /**
     * \brief Get _w _x _z _y.
     *
     * Gets _w _x _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_wxzy() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1)); }

    /**
     * \brief Get _w _y.
     *
     * Gets _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_wy() const uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get _w _y _x.
     *
     * Gets _w _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_wyx() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), m128_xmmd_0); }

    /**
     * \brief Get _w _y _x _z.
     *
     * Gets _w _y _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_wyxz() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0)); }

    /**
     * \brief Get _w _y _z.
     *
     * Gets _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_wyz() const uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), m128_xmmd_1); }

    /**
     * \brief Get _w _y _z _x.
     *
     * Gets _w _y _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_wyzx() const uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0)); }

    /**
     * \brief Get _w _z.
     *
     * Gets _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_wz() const uX_noexcept { return vecdouble2(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0)); }

    /**
     * \brief Get _w _z _x.
     *
     * Gets _w _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_wzx() const uX_noexcept { return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), m128_xmmd_0); }

    /**
     * \brief Get _w _z _x _y.
     *
     * Gets _w _z _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_wzxy() const uX_noexcept { return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), m128_xmmd_0); }

    /**
     * \brief Get _w _z _y.
     *
     * Gets _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_wzy() const uX_noexcept { return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get _w _z _y _x.
     *
     * Gets _w _z _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_wzyx() const uX_noexcept { return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0)); }

    /**
     * \brief Get reference to vector.
     *
     * Gets reference to vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref() uX_noexcept { return vecdouble4(m128_xmmd_0, m128_xmmd_1); }

    /**
     * \brief Get reference to _x.
     *
     * Gets reference to _x element from vector.
     * \return double.
     */
    uX_constexpr double& uX_ABI ref_x() uX_noexcept { return _x; }

    /**
     * \brief Get reference to _x _y.
     *
     * Gets reference to _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_xy() uX_noexcept { return vecdouble2(m128_xmmd_0); }

    /**
     * \brief Get reference to _x _y _z.
     *
     * Gets reference to _x _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_xyz() uX_noexcept { return vecdouble3(m128_xmmd_0, m128_xmmd_1); }

    /**
     * \brief Get reference to _x _y _z _w.
     *
     * Gets reference to _x _y _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_xyzw() uX_noexcept { return vecdouble4(m128_xmmd_0, m128_xmmd_1); }

    /**
     * \brief Get reference to _x _y _w.
     *
     * Gets reference too _x _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_xyw() uX_noexcept { return vecdouble3(m128_xmmd_0, _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get reference to _x _y _w _z.
     *
     * Gets reference to _x _y _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_xywz() uX_noexcept { return vecdouble4(m128_xmmd_0, _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0)); }

    /**
     * \brief Get reference to _x _z.
     *
     * Gets reference to _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_xz() uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0)); }

    /**
     * \brief Get reference to _x _z _y.
     *
     * Gets reference to _x _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_xzy() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get reference to _x _z _y _w.
     *
     * Gets reference to _x _z _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_xzyw() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get reference to _x _z _w.
     *
     * Gets reference to _x _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_xzw() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), m128_xmmd_1); }

    /**
     * \brief Get reference to _x _z _w _y.
     *
     * Gets reference to _x _z _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_xzwy() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get reference to _x _w.
     *
     * Gets reference to _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_xw() uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1)); }

    /**
     * \brief Get reference to _x _w _y.
     *
     * Gets reference to _x _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_xwy() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get reference to _x _w _y _z.
     *
     * Gets reference to _x _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_xwyz() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0)); }

    /**
     * \brief Get reference to _x _w _z.
     *
     * Gets reference to _x _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_xwz() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), m128_xmmd_1); }

    /**
     * \brief Get reference to _x _w _z _y.
     *
     * Gets reference to _x _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_xwzy() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1)); }

    /**
     * \brief Get reference to _y.
     *
     * Gets reference to _y elements from vector.
     * \return double.
     */
    uX_constexpr double& uX_ABI ref_y() uX_noexcept { return _y; }

    /**
     * \brief Get reference to _y _x.
     *
     * Gets reference to _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_yx() uX_noexcept { return vecdouble2(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0)); }

    /**
     * \brief Get reference to _y _x _z.
     *
     * Gets reference to _y _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_yxz() uX_noexcept { return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), m128_xmmd_1); }

    /**
     * \brief Get reference to _y _x _z _w.
     *
     * Gets reference to _y _x _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_yxzw() uX_noexcept { return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), m128_xmmd_1); }

    /**
     * \brief Get reference to _y _x _w.
     *
     * Gets reference to _y _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_yxw() uX_noexcept { return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get reference to _y _x _w _z.
     *
     * Gets reference to _y _x _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_yxwz() uX_noexcept { return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0)); }

    /**
     * \brief Get reference to _y _z.
     *
     * Gets reference to _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_yz() uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0)); }

    /**
     * \brief Get reference to _y _z _x.
     *
     * Gets reference to _y _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_yzx() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), m128_xmmd_0); }

    /**
     * \brief Get reference to _y _z _x _w.
     *
     * Gets reference to _y _z _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_yzxw() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1)); }

    /**
     * \brief Get reference to _y _z _w.
     *
     * Gets reference to _y _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_yzw() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get reference to _y _z _w _x.
     *
     * Gets reference to _y _z _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_yzwx() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0)); }

    /**
     * \brief Get reference to _y _w.
     *
     * Gets reference to _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_yw() uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get reference to _y _w _x.
     *
     * Gets reference to _y _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_ywx() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), m128_xmmd_0); }

    /**
     * \brief Get reference to _y _w _y _z.
     *
     * Gets reference to _y _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_ywxz() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0)); }

    /**
     * \brief Get reference to _y _w _z.
     *
     * Gets reference to _y _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_ywz() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), m128_xmmd_1); }

    /**
     * \brief Get reference to _y _w _z _y.
     *
     * Gets reference to _y _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_ywzx() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0)); }

    /**
     * \brief Get reference to _z.
     *
     * Gets reference to _z element from vector.
     * \return double.
     */
    uX_constexpr double& uX_ABI ref_z() uX_noexcept { return _z; }

    /**
     * \brief Get reference to _z _x.
     *
     * Gets reference to _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_zx() uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0)); }

    /**
     * \brief Get reference to _z _x _y.
     *
     * Gets reference to _z _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_zxy() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get reference to _z _x _y _w.
     *
     * Gets reference to _z _x _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_zxyw() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get reference to _z _x _w.
     *
     * Gets reference to _z _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_zxw() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get reference to _z _x _w _y.
     *
     * Gets reference to _z _x _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_zxwy() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get reference to _z _y.
     *
     * Gets reference to _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_zy() uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1)); }

    /**
     * \brief Get reference to _z _y _x.
     *
     * Gets reference to _z _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_zyx() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), m128_xmmd_0); }

    /**
     * \brief Get reference to _z _y _x _w.
     *
     * Gets reference to _z _y _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_zyxw() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1)); }

    /**
     * \brief Get reference to _z _y _w.
     *
     * Gets reference to _z _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_zyw() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1)); }

    /**
     * \brief Get reference to _z _y _w _x.
     *
     * Gets reference to _z _y _w _xelements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_zywx() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0)); }

    /**
     * \brief Get reference to _z _w.
     *
     * Gets reference to _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_zw() uX_noexcept { return vecdouble2(m128_xmmd_1); }

    /**
     * \brief Get reference to _z _w _x.
     *
     * Gets reference to _z _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_zwx() uX_noexcept { return vecdouble3(m128_xmmd_1, m128_xmmd_0); }

    /**
     * \brief Get reference to _z _w _x _y.
     *
     * Gets reference to _z _w _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_zwxy() uX_noexcept { return vecdouble4(m128_xmmd_1, m128_xmmd_0); }

    /**
     * \brief Get reference to _z _w _y.
     *
     * Gets reference to _z _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_zwy() uX_noexcept { return vecdouble3(m128_xmmd_1, _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get reference to _z _w _y _x.
     *
     * Gets reference to _z _w _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_zwyx() uX_noexcept { return vecdouble4(m128_xmmd_1, _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0)); }

    /**
     * \brief Get reference to _w.
     *
     * Gets reference to _w element from vector.
     * \return double.
     */
    uX_constexpr double& uX_ABI ref_w() uX_noexcept { return _w; }

    /**
     * \brief Get reference to _w _x.
     *
     * Gets reference to _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_wx() uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0)); }

    /**
     * \brief Get reference to _w _x _y.
     *
     * Gets reference to _w _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_wxy() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get reference to _w _x _y _z.
     *
     * Gets reference to _w _x _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_wxyz() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0)); }

    /**
     * \brief Get reference to _w _x _z.
     *
     * Gets reference to _w _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_wxz() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), m128_xmmd_1); }

    /**
     * \brief Get reference to _w _x _z _y.
     *
     * Gets reference to _w _x _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_wxzy() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1)); }

    /**
     * \brief Get reference to _w _y.
     *
     * Gets reference to _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_wy() uX_noexcept { return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get reference to _w _y _x.
     *
     * Gets reference to _w _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_wyx() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), m128_xmmd_0); }

    /**
     * \brief Get reference to _w _y _x _z.
     *
     * Gets reference to _w _y _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_wyxz() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0)); }

    /**
     * \brief Get reference to _w _y _z.
     *
     * Gets reference to _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_wyz() uX_noexcept { return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), m128_xmmd_1); }

    /**
     * \brief Get reference to _w _y _z _x.
     *
     * Gets reference to _w _y _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_wyzx() uX_noexcept { return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0)); }

    /**
     * \brief Get reference to _w _z.
     *
     * Gets reference to _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_wz() uX_noexcept { return vecdouble2(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0)); }

    /**
     * \brief Get reference to _w _z _x.
     *
     * Gets reference to _w _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_wzx() uX_noexcept { return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), m128_xmmd_0); }

    /**
     * \brief Get reference to _w _z _x _y.
     *
     * Gets reference to _w _z _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_wzxy() uX_noexcept { return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), m128_xmmd_0); }

    /**
     * \brief Get reference to _w _z _y.
     *
     * Gets reference to _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_wzy() uX_noexcept { return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1)); }

    /**
     * \brief Get reference to _w _z _y _x
     *
     * Gets reference to _w _z _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_wzyx() uX_noexcept { return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0)); }

    /**
     * \brief Set the vector.
     *
     * Sets all vector elements.
     *
     * \param InHxmmd_a.
     */
    void uX_ABI set(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x.
     *
     * Sets the vector _x element.
     *
     * \param Indouble_a.
     */
    void uX_ABI set_x(double Indouble_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y.
     *
     * Sets the vector _x _y elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xy(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y _z.
     *
     * Sets the vector _x _y _z elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xyz(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y _z _w.
     *
     * Sets the vector _x _y _z _w elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xyzw(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y _w.
     *
     * Sets the vector _x _y _w elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xyw(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _y _w _z.
     *
     * Sets the vector _x _y _w _z elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xywz(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z.
     *
     * Sets the vector _x _z elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xz(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z _y.
     *
     * Sets the vector _x _z _y elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xzy(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z _y _w.
     *
     * Sets the vector _x _z _y _w elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xzyw(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z _w.
     *
     * Sets the vector _x _z _w elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xzw(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _z _w _y.
     *
     * Sets the vector _x _z _w _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xzwy(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w.
     *
     * Sets the vector _x _w elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xw(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w _y.
     *
     * Sets the vector _x _w _y elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xwy(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w _y _z.
     *
     * Sets the vector _x _w _y _z elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xwyz(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w _z.
     *
     * Sets the vector _x _w _z elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xwz(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _x _w _z _y.
     *
     * Sets the vector _x _w _z _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_xwzy(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y.
     *
     * Sets the vector _y element.
     *
     * \param Indouble_a.
     */
    void uX_ABI set_y(double Indouble_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x.
     *
     * Sets the vector _y _x elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_yx(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x _z.
     *
     * Sets the vector _y _x _z elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_yxz(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x _z _w.
     *
     * Sets the vector _y _x _z _w elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_yxzw(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x _w.
     *
     * Sets the vector _y _x _w elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_yxw(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _x _w _z.
     *
     * Sets the vector _y _x _w _z elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_yxwz(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z.
     *
     * Sets the vector _y _z elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_yz(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z _x.
     *
     * Sets the vector _y _z _x elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_yzx(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z _x _w.
     *
     * Sets the vector _y _z _x _w elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_yzxw(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z _w.
     *
     * Sets the vector _y _z _w elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_yzw(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _z _w _x.
     *
     * Sets the vector _y _z _w _x elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_yzwx(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w.
     *
     * Sets the vector _y _w elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_yw(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w _x.
     *
     * Sets the vector _y _w _x elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_ywx(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w _y _z.
     *
     * Sets the vector _y _w _y _z elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_ywxz(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w _z.
     *
     * Sets the vector _y _w _z elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_ywz(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _y _w _z _y.
     *
     * Sets the vector _y _w _z _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_ywzx(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z.
     *
     * Sets the vector _z element.
     *
     * \param Indouble_a.
     */
    void uX_ABI set_z(double Indouble_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x.
     *
     * Sets the vector _z _x elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zx(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x _y.
     *
     * Sets the vector _z _x _y elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zxy(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x _y _w.
     *
     * Sets the vector _z _x _y _w elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zxyw(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x _w.
     *
     * Sets the vector _z _x _w elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zxw(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _x _w _y.
     *
     * Sets the vector _z _x _w _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zxwy(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y.
     *
     * Sets the vector _z _y elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zy(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y _x.
     *
     * Sets the vector _z _y _x elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zyx(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y _x _w.
     *
     * Sets the vector _z _y _x _w elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zyxw(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y _w.
     *
     * Sets the vector _z _y _w elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zyw(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _y _w.
     *
     * Sets the vector _z _y _w _x elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zywx(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w.
     *
     * Sets the vector _z _w elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zw(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w _x.
     *
     * Sets the vector _z _w _x elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zwx(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w _x _y.
     *
     * Sets the vector _z _w _x _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zwxy(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w _y.
     *
     * Sets the vector _z _w _y elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zwy(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _z _w _y _x.
     *
     * Sets the vector _z _w _y _x elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_zwyx(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w.
     *
     * Sets the vector _w element.
     *
     * \param Indouble_a.
     */
    void uX_ABI set_w(double Indouble_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x.
     *
     * Sets the vector _w _x elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wx(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x _y.
     *
     * Sets the vector _w _x _y elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wxy(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x _y _z.
     *
     * Sets the vector _w _x _y _z elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wxyz(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x _z.
     *
     * Sets the vector _w _x _z elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wxz(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _x _z _y.
     *
     * Sets the vector _w _x _z _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wxzy(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y.
     *
     * Sets the vector _w _y elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wy(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y _x.
     *
     * Sets the vector _w _y _x elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wyx(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y _x _z.
     *
     * Sets the vector _w _y _x _z elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wyxz(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y _z.
     *
     * Sets the vector _w _y _z elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wyz(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _y _z _x.
     *
     * Sets the vector _w _y _z _x elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wyzx(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z.
     *
     * Sets the vector _w _z elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wz(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z _x.
     *
     * Sets the vector _w _z _x elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wzx(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z _x _y.
     *
     * Sets the vector _w _z _x _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wzxy(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z _y.
     *
     * Sets the vector _w _z _y elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wzy(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Set the vector _w _z _y _x.
     *
     * Sets the vector _w _z _y _x elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    void uX_ABI set_wzyx(const vecdouble4 InHxmmd_a) uX_noexcept;

    /* Bitwise Operators */

    /**
     * \brief Bitwise function ANDNOT.
     *
     * Performs the compute and not from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI andnot(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI operator&(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator OR.
     *
     * Performs the compute or from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI operator|(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator XOR.
     *
     * Performs the compute xor from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI operator^(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator NOT.
     *
     * Performs the compute not from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI operator~(const vecdouble4 InHxmmd_a) uX_noexcept;

    /* Logical Operators */

    /**
     * \brief Logical function ANDNOT.
     *
     * Performs the compute and not from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     * \return boolean integer.
     */
    friend bool_t uX_ABI bandnot(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator&&(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator OR.
     *
     * Performs the compute OR from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator||(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator NOT.
     *
     * Performs the compute not from the 1 parameter.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator!(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Logical function HORIZONTAL AND.
     *
     * Performs the compute horizontal and in all bits from the parameter. Returns true if all bits are 1.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend bool_t uX_ABI horizontal_and(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Logical function HORIZONTAL OR.
     *
     * Performs the compute horizontal or in all bits from the parameter. Returns true if at least one bit is 1.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend bool_t uX_ABI horizontal_or(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Logical operator assignment AND.
     *
     * Performs the compute and from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4& uX_ABI operator&=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator assignment OR.
     *
     * Performs the compute or from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4& uX_ABI operator|=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator assignment XOR.
     *
     * Performs the compute xor from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4& uX_ABI operator^=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /* Arithmetic Operators */

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble4 uX_ABI operator+(const vecdouble4 InHxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble4 uX_ABI operator+(double Indouble_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble4 uX_ABI operator+(const vecdouble4 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble4 uX_ABI operator+(const __m128d Inxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param InHxmmd_b.
     */
    friend vecdouble4 uX_ABI operator+(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble4 uX_ABI operator-(const vecdouble4 InHxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble4 uX_ABI operator-(double Indouble_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble4 uX_ABI operator-(const vecdouble4 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble4 uX_ABI operator-(const __m128d Inxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI operator-(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble4 uX_ABI operator*(const vecdouble4 InHxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble4 uX_ABI operator*(double Indouble_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble4 uX_ABI operator*(const vecdouble4 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble4 uX_ABI operator*(const __m128d Inxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI operator*(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble4 uX_ABI operator/(const vecdouble4 InHxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble4 uX_ABI operator/(double Indouble_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble4 uX_ABI operator/(const vecdouble4 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble4 uX_ABI operator/(const __m128d Inxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI operator/(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4& uX_ABI operator+=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4& uX_ABI operator-=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4& uX_ABI operator*=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4& uX_ABI operator/=(vecdouble4& InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /* Unary Operators */

    /**
     * \brief Unary prefix increment operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble4& uX_ABI operator++(vecdouble4& InHxmmd_a) uX_noexcept;

    /**
     * \brief Unary prefix decrement operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble4& uX_ABI operator--(vecdouble4& InHxmmd_a) uX_noexcept;

    /**
     * \brief Unary postfix increment operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble4 uX_ABI operator++(vecdouble4& InHxmmd_a, int) uX_noexcept;

    /**
     * \brief Unary postfix decrement operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble4 uX_ABI operator--(vecdouble4& InHxmmd_a, int) uX_noexcept;

    /**
     * \brief Unary minus operator.
     *
     * Performs the compute minus. Change sign bit, even for 0, INF and NAN.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble4 uX_ABI operator-(const vecdouble4 InHxmmd_a) uX_noexcept;

    /* Comparison Operators */

    /**
     * \brief Comparison operator equal.
     *
     * Performs the compute equality from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI operator==(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator less than.
     *
     * Performs the compute less than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI operator<(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator less than or equal.
     *
     * Performs the compute less than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI operator<=(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator greater than.
     *
     * Performs the compute greater than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI operator>(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator greater than or equal.
     *
     * Performs the compute greater than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI operator>=(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator not equal.
     *
     * Performs the compute not equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble4 uX_ABI operator!=(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Index operator.
     *
     * Element Access Only, no modifications to elements.
     *
     * \param index element to get.
     * \return double
     */
    const double& uX_ABI operator[](count_t index) const uX_noexcept;

    /**
     * \brief Index operator.
     *
     * Element Access and Modification.
     *
     * \param index element to get.
     * \return double
     */
    double& uX_ABI operator[](count_t index) uX_noexcept;

    /**
     * \brief Load unaligned.
     *
     * Performs load from type __m128d* unaligned.
     *
     * \param Inpdouble pointer value to copy from.
     */
    vecdouble4& uX_ABI m128_load(uX_InReads(2) const __m128d* Inpdouble) uX_noexcept;

    /**
     * \brief Load aligned.
     *
     * Performs load from type __m128d* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Inpdouble pointer value to copy from.
     */
    vecdouble4& uX_ABI m128_load_a(uX_InReads(2) const __m128d* Inpdouble) uX_noexcept;

    /**
     * \brief Load unaligned.
     *
     * Performs load from type double* unaligned.
     *
     * \param Inpdouble pointer value to copy from.
     */
    vecdouble4& uX_ABI load(uX_InReads(4) const double* Inpdouble) uX_noexcept;

    /**
     * \brief Load aligned.
     *
     * Performs load from type double* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Inpdouble pointer value to copy from.
     */
    vecdouble4& uX_ABI load_a(uX_InReads(4) const double* Inpdouble) uX_noexcept;
    
    /**
     * \brief Store function unaligned.
     *
     * Performs store to type __m128d* unaligned.
     *
     * \param Outpdouble pointer value to store to.
     */
    void uX_ABI m128_store(uX_OutWrites(2) __m128d* Outpdouble) const uX_noexcept;

    /**
     * \brief Store function aligned.
     *
     * Performs store to type __m128d* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Outpdouble pointer value to store to.
     */
    void uX_ABI m128_store_a(uX_OutWrites(2) __m128d* Outpdouble) const uX_noexcept;

    /**
     * \brief Store function unaligned.
     *
     * Performs store to type double* unaligned.
     *
     * \param Outpdouble pointer value to store to.
     */
    void uX_ABI store(uX_OutWrites(4) double* Outpdouble) const uX_noexcept;

    /**
     * \brief Store function aligned.
     *
     * Performs store to type double* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Outpdouble pointer value to store to.
     */
    void uX_ABI store_a(uX_OutWrites(4) double* Outpdouble) const uX_noexcept;

    /**
     * \brief Insert function.
     *
     * Performs insert from type double on the mask index.
     *
     * \param value double to copy from.
     * \param index element to set.
     * \return vector
     */
    const vecdouble4 uX_ABI insert(double value, count_t index) uX_noexcept;

    /**
     * \brief Extract function.
     *
     * Performs extract element from mask index.
     *
     * \param index element to get.
     * \return double
     */
    double uX_ABI extract(count_t index) const uX_noexcept;

    /**
     * \brief Set all elements to zero.
     */
    vecdouble4& uX_ABI zero() uX_noexcept;

    /**
     * \brief Cut off vector to n elements.
     *
     * Performs the cut off vector to n elements.
     * The last 4-n elements are set to zero.
     *
     * \param indexN element's to cut.
     */
    vecdouble4& uX_ABI cutoff(count_t indexN) uX_noexcept;

    /**
     * \brief Flip Sign function.
     *
     * Performs the flip sign off vector on all elements.
     *
     * \param Inxmmd_a the vector to flip sign.
     * \return vector.
     */
    friend vecdouble4 uX_ABI flip_sign(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Test if all elements if is zero.
     *
     * Performs the test if all elements are zero.
     *
     * \param Inxmmd_a the vector to test.
     * \return boolean integer.
     */
    friend bool_t uX_ABI is_zero(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Select between two operands.
     *
     * Performs the selection between two operands.
     * The first vector is boolean vector mask that chooses between the elements of the second and the third vector.
     * Corresponds to this pseudo code:
     *  for (int i () { return 0; i < 4; i++) result[i] () { return s[i] ? a[i] : b[i];
     *
     * \param Inxmm_f the boolean vector mask.
     * \param Inxmmd_a the a vector to select.
     * \param Inxmmd_b the b vector to select.
     * \return the selected vector elements.
     */
    friend vecdouble4 uX_ABI select(const vecdouble4 InHxmmd_f, const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Conditional add.
     *
     * Performs the conditional add in all elements selected by the first boolean vector mask on the second and third vector elements.
     * Corresponds to this pseudo code:
     *  result[i] () { return f[i] ? (a[i] + b[i]) : a[i]
     *
     * \param Inxmm_f the boolean vector mask.
     * \param Inxmmd_a the a vector to add.
     * \param Inxmmd_b the b vector to add.
     * \return the selected vector addition.
     */
    friend vecdouble4 uX_ABI if_add(const vecdouble4 InHxmmd_f, const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Conditional subtract.
     *
     * Performs the conditional subtract in all elements selected by the first boolean vector mask on the second and third vector elements.
     * Corresponds to this pseudo code:
     *  result[i] () { return f[i] ? (a[i] - b[i]) : a[i]
     *
     * \param Inxmm_f the boolean vector mask.
     * \param Inxmmd_a the a vector to subtract.
     * \param Inxmmd_b the b vector to subtract.
     * \return the selected vector subtraction.
     */
    friend vecdouble4 uX_ABI if_sub(const vecdouble4 InHxmmd_f, const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Conditional multiply.
     *
     * Performs the conditional multiply in all elements selected by the first boolean vector mask on the second and third vector elements.
     * Corresponds to this pseudo code:
     *  result[i] () { return f[i] ? (a[i] * b[i]) : a[i]
     *
     * \param Inxmm_f the boolean vector mask.
     * \param Inxmmd_a the a vector to multiply.
     * \param Inxmmd_b the b vector to multiply.
     * \return the selected vector multiplication.
     */
    friend vecdouble4 uX_ABI if_mul(const vecdouble4 InHxmmd_f, const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Conditional multiply.
     *
     * Performs the conditional divide in all elements selected by the first boolean vector mask on the second and third vector elements.
     * Corresponds to this pseudo code:
     *  result[i] () { return f[i] ? (a[i] / b[i]) : a[i]
     *
     * \param Inxmm_f the boolean vector mask.
     * \param Inxmmd_a the a vector to divide.
     * \param Inxmmd_b the b vector to divide.
     * \return the selected vector division.
     */
    friend vecdouble4 uX_ABI if_div(const vecdouble4 InHxmmd_f, const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Change signs on vector at compile time.
     *
     * Generate a constant vector at compile time stored in memory, and changes the sign of parameter.
     * Each index i0 - i3 is 1 for changing sign on the corresponding element, 0 for no change.
     *
     * \param InHxmmd_a the vector to change.
     *
     */
    template <int i0, int i1, int i2, int i3>
    friend uX_constexpr vecdouble4 uX_ABI change_sign(const vecdouble4 InHxmmd_a) uX_noexcept {
        if ((i0 | i1 | i2 | i3) == 0) return InHxmmd_a;
        return InHxmmd_a ^ vecdouble4(constant4ui64<i0 ? 0x8000000000000000 : 0, i1 ? 0x8000000000000000 : 0, i2 ? 0x8000000000000000 : 0, i3 ? 0x8000000000000000 : 0>());
    }

    /**
     * \brief Sign bit.
     *
     * Gives true for elements that have the sign bit set.
     * Note that sign_bit(vecdouble4(-0.0f)) gives true, while vecdouble4(-0.0f) < vecdouble4(0.0f) gives false.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble4 uX_ABI sign_bit(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Sign combine.
     *
     * Changes the sign of a when b has the sign bit set.
     * Same as select(sign_bit(b), -a, a)
     *
     * \param Inxmmd_a the a vector.
     * \param Inxmmd_b the b vector.
     * \return vector.
     */
    friend vecdouble4 uX_ABI sign_combine(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Is finite.
     *
     * Gives true for elements that are normal, denormal or zero, false for INF and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble4 uX_ABI is_finite(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Is inf.
     *
     * Gives true for elements that are +INF or -INF, false for finite numbers and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble4 uX_ABI is_inf(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Is nan.
     *
     * Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble4 uX_ABI is_nan(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Is subnormal.
     *
     * Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble4 uX_ABI is_subnormal(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Is zero or subnormal.
     *
     * Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble4 uX_ABI is_zero_or_subnormal(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Infinite.
     *
     * \return a vector where all elements are +INF.
     */
    vecdouble4& uX_ABI infinite() uX_noexcept;

    /**
     * \brief Nan.
     *
     * \return a vector where all elements are NAN (quiet).
     */
    vecdouble4& uX_ABI nan() uX_noexcept;

    /**
     * \brief Is Horizontal add.
     *
     * Calculates the sum of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend double uX_ABI horizontal_add(const vecdouble4 InHxmmd_a) uX_noexcept;
    
    /**
     * \brief Horizontal sub.
     *
     * Calculates the subtraction of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend double uX_ABI horizontal_sub(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Horizontal mull.
     *
     * Calculates the multiplication of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend double uX_ABI horizontal_mul(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Max.
     *
     * Computes the max a > b ? a : b.
     *
     * \param Inxmmd_a the a vector.
     * \param Inxmmd_b the b vector.
     * \return vector.
     */
    friend vecdouble4 uX_ABI max(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Min.
     *
     * Computes the min a < b ? a : b.
     *
     * \param Inxmmd_a the a vector.
     * \param Inxmmd_b the b vector.
     * \return vector.
     */
    friend vecdouble4 uX_ABI min(const vecdouble4 InHxmmd_a, const vecdouble4 InHxmmd_b) uX_noexcept;

    /**
     * \brief Abs.
     *
     * Computes the absolute value.
     *
     * \param Inxmmd_a the a vector..
     * \return vector.
     */
    friend vecdouble4 uX_ABI abs(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Square.
     *
     * Computes the a * a.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble4 uX_ABI square(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief Scale.
     *
     * Computes the a * s.
     *
     * \param Inxmmd_a the a vector.
     * \param Indouble_s the double scale factor.
     * \return vector.
     */
    friend vecdouble4 uX_ABI scale(const vecdouble4 InHxmmd_a, double Indouble_s) uX_noexcept;

    /**
     * \brief rcp.
     *
     * Computes the reciprocal.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble4 uX_ABI rcp(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief sqrt.
     *
     * Computes the square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble4 uX_ABI sqrt(const vecdouble4 InHxmmd_a) uX_noexcept;

    /**
     * \brief rsqrt.
     *
     * Computes the reciprocal square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble4 uX_ABI rsqrt(const vecdouble4 InHxmmd_a) uX_noexcept;

protected:

private:
    union
    {
        struct
        {
            __m128d     m128_xmmd_0,
                        m128_xmmd_1;
        };
        struct
        {
            double   _x, _y, _z, _w;
        };
        __m128d        m128_xmmd[2];
        double            m128_d[4];
    };

public:
    uX_const uint32_t uX_ABI m128_xmm_ptr_lenght    () const uX_noexcept { return  2; }
    uX_const uint32_t uX_ABI m128_xmm_ptr_size      () const uX_noexcept { return 32; }
    uX_const uint32_t uX_ABI m128_xmm_size          () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_xmm_dbl_elements  () const uX_noexcept { return  2; }
    uX_const uint32_t uX_ABI m128_dbl_ptr_lenght    () const uX_noexcept { return  4; }
    uX_const uint32_t uX_ABI m128_dbl_ptr_size      () const uX_noexcept { return 32; }
    uX_const uint32_t uX_ABI m128_dbl_size          () const uX_noexcept { return  8; }

}vecdouble4_t;

#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

#ifndef uX_XMM_VECDOUBLE3_H
#include "uXxmmvecdouble3.h"
#endif  /* uX_XMM_VECDOUBLE3_H */

#ifndef uX_XMM_VECDOUBLE2_H
#include "uXxmmvecdouble2.h"
#endif  /* uX_XMM_VECDOUBLE2_H */

#ifndef uX_XMM_VECDOUBLE1_H
#include "uXxmmvecdouble1.h"
#endif  /* uX_XMM_VECDOUBLE1_H */

#ifndef uX_XMM_VECQWORD4_H
#include "uXxmmvecqword4.h"
#endif  /* uX_XMM_VECQWORD4_H */

#ifndef uX_XMM_VECUQWORD4_H
#include "uXxmmvecuqword4.h"
#endif  /* uX_XMM_VECUQWORD4_H */

#ifdef uX_SSE2
#include "./inline/uXxmmvecdouble4.inl"
#endif // uX_SSE2

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECDOUBLE4_H
