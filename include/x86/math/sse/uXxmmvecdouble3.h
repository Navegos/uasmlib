
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

#ifndef uX_XMM_VECDOUBLE3_H
#define uX_XMM_VECDOUBLE3_H 1

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
/** \class vecdouble3
  *
  * \brief SSE SIMD class with the size of 3 double elements.
  *
  * The %vecdouble3 class is an 3 elements wide 64bit double.
  * It provides interoperability between %vecdword3 and %vecudword3.
  *
  */
typedef class uX_API vecdouble3
{
public:
    vecdouble3()uX_default;
    ~vecdouble3()uX_default;

    /**
     * \brief Default constructor initialization from vecdouble4.
     *
     * @param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3(const vecdouble3& InHxmmd_a) uX_noexcept : m128_xmmd_0(InHxmmd_a.m128_xmmd_0), m128_xmmd_1(InHxmmd_a.m128_xmmd_1) {}

    /**
     * \brief Default constructor initialization from vecdouble4.
     *
     * @param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3(vecdouble3&& InHxmmd_a) uX_noexcept : m128_xmmd_0(InHxmmd_a.m128_xmmd_0), m128_xmmd_1(InHxmmd_a.m128_xmmd_1) {}

    /**
     * \brief Constructor initialization from type __m128d, broadcast the same value into all elements.
     *
     * @param Inxmmd value to copy from.
     */
    uX_explicit uX_constexpr vecdouble3(const __m128d Inxmmd) uX_noexcept : m128_xmmd_0(Inxmmd), m128_xmmd_1(_uX_MM_SHUFFLER_IM_PD(Inxmmd, __m128d_false, 0, 0)) {}

    /**
     * \brief Constructor initialization from 2 type __m128i.
     *
     * @param Inxmmd_0 value to copy from.
     * @param Inxmmd_1 value to copy from.
     */
    uX_constexpr vecdouble3(const __m128d Inxmmd_0, const __m128d Inxmmd_1) uX_noexcept : m128_xmmd_0(Inxmmd_0), m128_xmmd_1(_uX_MM_SHUFFLER_IM_PD(Inxmmd_1, __m128d_false, 0, 0)) {}

    /**
     * \brief Constructor initialization from type vecdouble4.
     *
     * @param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3(const vecdouble4 InHxmmd_a) uX_noexcept : m128_xmmd_0(InHxmmd_a.get_xmmd_0()), m128_xmmd_1(_uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), __m128d_false, 0, 0)) {}

    /**
     * \brief Constructor initialization from type vecdouble2.
     *
     * @param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3(const vecdouble2 Inxmmd_a) uX_noexcept : m128_xmmd_0(Inxmmd_a) {}

    /**
     * \brief Constructor initialization from type vecdouble1.
     *
     * @param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3(const vecdouble1 Inxmmd_a) uX_noexcept : m128_xmmd_0(_uX_mm_move_sd(m128_xmmd_0, Inxmmd_a)) {}

    /**
     * \brief Constructor initialization from type vecqword3.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecdouble3(const vecqword3 InHxmmi_a) uX_noexcept : m128_xmmd_0(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_0())), m128_xmmd_1(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_1())) {}

    /**
     * \brief Constructor initialization from type vecuqword3.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecdouble3(const vecuqword3 InHxmmi_a) uX_noexcept : m128_xmmd_0(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_0())), m128_xmmd_1(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_1())) {}

    /**
     * \brief Constructor to broadcast the same double value into all elements.
     *
     * @param Indouble_a double value to copy from.
     */
    uX_explicit uX_constexpr vecdouble3(double Indouble_a) uX_noexcept : m128_xmmd_0(_uX_mm_set1_pd(Indouble_a)), m128_xmmd_1(_uX_mm_setr_pd(Indouble_a, 0.0)) {}

    /**
     * \brief Constructor initialization from 3 type double.
     *
     * @param Indouble_X value to copy from.
     * @param Indouble_Y value to copy from.
     * @param Indouble_Z value to copy from.
     */
    uX_constexpr vecdouble3(double Indouble_X, double Indouble_Y, double Indouble_Z) uX_noexcept
                           : m128_xmmd_0(_uX_mm_setr_pd(Indouble_X, Indouble_Y)), m128_xmmd_1(_uX_mm_setr_pd(Indouble_Z, 0.0)) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecdouble3(const bool_t Inbool_a) uX_noexcept : m128_xmmd_0(vecdouble2(vecqword2(Inbool_a,Inbool_a))), m128_xmmd_1(vecdouble2(vecqword2(Inbool_a, bool_t(0)))) {}

    /**
     * \brief Constructor initialization from 3 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     * \param Inbool_Z value to copy from.
     */
    uX_constexpr vecdouble3(const bool_t Inbool_X, const bool_t Inbool_Y, const bool_t Inbool_Z) uX_noexcept
                           : m128_xmmd_0(vecdouble2(vecqword2(Inbool_X, Inbool_Y))), m128_xmmd_1(vecdouble2(vecqword2(Inbool_Z, bool_t(0)))) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecdouble3(const bool Inbool_a) uX_noexcept : m128_xmmd_0(vecdouble2(vecqword2(Inbool_a, Inbool_a))), m128_xmmd_1(vecdouble2(vecqword2(Inbool_a, false))) {}

    /**
     * \brief Constructor initialization from 3 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     * \param Inbool_Z value to copy from.
     */
    uX_constexpr vecdouble3(const bool Inbool_X, const bool Inbool_Y, const bool Inbool_Z) uX_noexcept
                           : m128_xmmd_0(vecdouble2(vecqword2(Inbool_X, Inbool_Y))), m128_xmmd_1(vecdouble1(vecqword1(Inbool_Z))) {}

    /**
     * \brief Constructor initialization from type __m128d*.
     *
     * \param Inpdouble pointer value to copy from.
     */
    uX_explicit uX_constexpr vecdouble3(uX_InReads(2) const __m128d* Inpm128_xmmd) uX_noexcept
                                       /*: m128_xmmd_0(Inpm128_xmmd[0]), m128_xmmd_1(Inpm128_xmmd[1]) {}*/
                                       : m128_xmmd_0(_uX_mm_loadu_pd(reinterpret_cast<const double*>(Inpm128_xmmd))), m128_xmmd_1(_uX_MM_SHUFFLER_IM_PD(_uX_mm_loadu_pd(reinterpret_cast<const double*>(Inpm128_xmmd+1)), __m128d_false, 0, 0)) {}

    /**
     * \brief Constructor initialization from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    uX_explicit uX_constexpr vecdouble3(uX_InReads(3) const double* Inpdouble) uX_noexcept
                                       : m128_xmmd_0(_uX_mm_loadu_pd(Inpdouble)), m128_xmmd_1(_uX_MM_SHUFFLER_IM_PD(_uX_mm_loadu_pd(Inpdouble+2), __m128d_false, 0, 0)) {}

    /** \brief __m128d type cast operator.
     *
     * To convert to __m128d.
     */
    /*uX_constexpr operator __m128d() const uX_noexcept { return m128_xmmd; }*/

    /** Type cast operator to convert to double*. */
    /*operator double*() const uX_noexcept;*/ //security undesired

    /**
     * \brief vecdouble3 default assignment operator.
     *
     * To convert from type vecdouble3.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(const vecdouble3& InHxmmd_a) uX_noexcept { return vecdouble3(InHxmmd_a); }

    /**
     * \brief vecdouble3 default assignment operator.
     *
     * To convert from type vecdouble3.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(vecdouble3&& InHxmmd_a) uX_noexcept { return vecdouble3(InHxmmd_a); }

    /**
     * \brief __m128d assignment operator.
     *
     * To convert from type __m128d.
     *
     * \param Inxmmd value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(const __m128d Inxmmd) uX_noexcept { return vecdouble3(Inxmmd); }

    /**
     * \brief vecdouble4 assignment operator.
     *
     * To convert from type vecdouble4.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(const vecdouble4 InHxmmd_a) uX_noexcept { return vecdouble3(InHxmmd_a); }

    /**
     * \brief vecdouble2 assignment operator.
     *
     * To convert from type vecdouble2.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(const vecdouble2 Inxmmd_a) uX_noexcept { return vecdouble3(Inxmmd_a); }

    /**
     * \brief vecdouble1 assignment operator.
     *
     * To convert from type vecdouble1.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(const vecdouble1 Inxmmd_a) uX_noexcept { return vecdouble3(Inxmmd_a); }

    /**
     * \brief vecqword3 assignment operator.
     *
     * To convert from type vecqword3.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(const vecqword3 InHxmmi_a) uX_noexcept { return vecdouble3(InHxmmi_a); }

    /**
     * \brief vecuqword3 assignment operator.
     *
     * To convert from type vecuqword3.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(const vecuqword3 InHxmmi_a) uX_noexcept { return vecdouble3(InHxmmi_a); }

    /**
     * \brief double assignment operator
     *
     * To broadcast the same double value into all elements.
     *
     * \param Indouble_a double value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(double Indouble_a) uX_noexcept { return vecdouble3(Indouble_a); }

    /**
     * \brief bool_t assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(const bool_t Inbool_a) uX_noexcept { return vecdouble3(Inbool_a); }

    /**
     * \brief bool assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(const bool Inbool_a) uX_noexcept { return vecdouble3(Inbool_a); }

    /**
     * \brief Assignment operator to convert from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    /*vecdouble3& uX_ABI operator=(uX_InReads(3) const double* Inpdouble) uX_noexcept;*/ //security undesired
    
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
    uX_constexpr vecdouble3 uX_ABI get() const uX_noexcept { return vecdouble3(m128_xmmd_0, m128_xmmd_1); }

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
     * \brief Get reference to vector.
     *
     * Gets reference to vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref() uX_noexcept { return vecdouble3(m128_xmmd_0, m128_xmmd_1); }

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
     * \brief Set the vector.
     *
     * Sets all vector elements.
     *
     * \param InHxmmd.
     */
    void uX_ABI set(const vecdouble3 InHxmmd) uX_noexcept;

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
     * \param InHxmmd_a.
     */
    void uX_ABI set_xyz(const vecdouble3 InHxmmd_a) uX_noexcept;

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
     * \param InHxmmd_a.
     */
    void uX_ABI set_xzy(const vecdouble3 InHxmmd_a) uX_noexcept;

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
     * \param InHxmmd_a.
     */
    void uX_ABI set_yxz(const vecdouble3 InHxmmd_a) uX_noexcept;

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
     * \param InHxmmd_a.
     */
    void uX_ABI set_yzx(const vecdouble3 InHxmmd_a) uX_noexcept;

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
     * \param InHxmmd_a.
     */
    void uX_ABI set_zxy(const vecdouble3 InHxmmd_a) uX_noexcept;

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
     * \param InHxmmd_a.
     */
    void uX_ABI set_zyx(const vecdouble3 InHxmmd_a) uX_noexcept;

    /* Bitwise Operators */

    /**
     * \brief Bitwise function ANDNOT.
     *
     * Performs the compute and not from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI andnot(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI operator&(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator OR.
     *
     * Performs the compute or from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI operator|(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator XOR.
     *
     * Performs the compute xor from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI operator^(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator NOT.
     *
     * Performs the compute not from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI operator~(const vecdouble3 InHxmmd_a) uX_noexcept;

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
    friend bool_t uX_ABI bandnot(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator&&(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator OR.
     *
     * Performs the compute OR from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator||(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator NOT.
     *
     * Performs the compute not from the 1 parameter.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator!(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Logical function HORIZONTAL AND.
     *
     * Performs the compute horizontal and in all bits from the parameter. Returns true if all bits are 1.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend bool_t uX_ABI horizontal_and(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Logical function HORIZONTAL OR.
     *
     * Performs the compute horizontal or in all bits from the parameter. Returns true if at least one bit is 1.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend bool_t uX_ABI horizontal_or(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Logical operator assignment AND.
     *
     * Performs the compute and from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3& uX_ABI operator&=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator assignment OR.
     *
     * Performs the compute or from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3& uX_ABI operator|=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator assignment XOR.
     *
     * Performs the compute xor from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3& uX_ABI operator^=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /* Arithmetic Operators */

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble3 uX_ABI operator+(const vecdouble3 InHxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble3 uX_ABI operator+(double Indouble_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble3 uX_ABI operator+(const vecdouble3 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble3 uX_ABI operator+(const __m128d Inxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param InHxmmd_b.
     */
    friend vecdouble3 uX_ABI operator+(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble3 uX_ABI operator-(const vecdouble3 InHxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble3 uX_ABI operator-(double Indouble_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble3 uX_ABI operator-(const vecdouble3 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble3 uX_ABI operator-(const __m128d Inxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI operator-(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble3 uX_ABI operator*(const vecdouble3 InHxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble3 uX_ABI operator*(double Indouble_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble3 uX_ABI operator*(const vecdouble3 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble3 uX_ABI operator*(const __m128d Inxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI operator*(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble3 uX_ABI operator/(const vecdouble3 InHxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble3 uX_ABI operator/(double Indouble_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble3 uX_ABI operator/(const vecdouble3 InHxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend vecdouble3 uX_ABI operator/(const __m128d Inxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI operator/(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3& uX_ABI operator+=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3& uX_ABI operator-=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3& uX_ABI operator*=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3& uX_ABI operator/=(vecdouble3& InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /* Unary Operators */

    /**
     * \brief Unary prefix increment operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble3& uX_ABI operator++(vecdouble3& InHxmmd_a) uX_noexcept;

    /**
     * \brief Unary prefix decrement operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble3& uX_ABI operator--(vecdouble3& InHxmmd_a) uX_noexcept;

    /**
     * \brief Unary postfix increment operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble3 uX_ABI operator++(vecdouble3& InHxmmd_a, int) uX_noexcept;

    /**
     * \brief Unary postfix decrement operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble3 uX_ABI operator--(vecdouble3& InHxmmd_a, int) uX_noexcept;

    /**
     * \brief Unary minus operator.
     *
     * Performs the compute minus. Change sign bit, even for 0, INF and NAN.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble3 uX_ABI operator-(const vecdouble3 InHxmmd_a) uX_noexcept;

    /* Comparison Operators */

    /**
     * \brief Comparison operator equal.
     *
     * Performs the compute equality from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI operator==(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator less than.
     *
     * Performs the compute less than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI operator<(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator less than or equal.
     *
     * Performs the compute less than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI operator<=(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator greater than.
     *
     * Performs the compute greater than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI operator>(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator greater than or equal.
     *
     * Performs the compute greater than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI operator>=(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator not equal.
     *
     * Performs the compute not equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble3 uX_ABI operator!=(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Load unaligned.
     *
     * Performs load from type double* unaligned.
     *
     * \param Inpdouble pointer value to copy from.
     */
    vecdouble3& uX_ABI load(uX_InReads(3) const double* Inpdouble) uX_noexcept;

    /**
     * \brief Load aligned.
     *
     * Performs load from type double* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Inpdouble pointer value to copy from.
     */
    vecdouble3& uX_ABI load_a(uX_InReads(3) const double* Inpdouble) uX_noexcept;

    /**
     * \brief Store function unaligned.
     *
     * Performs store to type double* unaligned.
     *
     * \param Outpdouble pointer value to store to.
     */
    void uX_ABI store(uX_OutWrites(3) double* Outpdouble) const uX_noexcept;

    /**
     * \brief Store function aligned.
     *
     * Performs store to type double* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Outpdouble pointer value to store to.
     */
    void uX_ABI store_a(uX_OutWrites(3) double* Outpdouble) const uX_noexcept;

    /**
     * \brief Insert function.
     *
     * Performs insert from type double on the mask index.
     *
     * \param value double to copy from.
     * \param index element to set.
     * \return vector
     */
    const vecdouble3 uX_ABI insert(double value, count_t index) uX_noexcept;

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
    vecdouble3& uX_ABI zero() uX_noexcept;

    /**
     * \brief Cut off vector to n elements.
     *
     * Performs the cut off vector to n elements.
     * The last 4-n elements are set to zero.
     *
     * \param indexN element's to cut.
     */
    vecdouble3& uX_ABI cutoff(count_t indexN) uX_noexcept;

    /**
     * \brief Flip Sign function.
     *
     * Performs the flip sign off vector on all elements.
     *
     * \param Inxmmd_a the vector to flip sign.
     * \return vector.
     */
    friend vecdouble3 uX_ABI flip_sign(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Test if all elements if is zero.
     *
     * Performs the test if all elements are zero.
     *
     * \param Inxmmd_a the vector to test.
     * \return boolean integer.
     */
    friend bool_t uX_ABI is_zero(const vecdouble3 InHxmmd_a) uX_noexcept;

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
    friend vecdouble3 uX_ABI select(const vecdouble3 InHxmmd_f, const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

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
    friend vecdouble3 uX_ABI if_add(const vecdouble3 InHxmmd_f, const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

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
    friend vecdouble3 uX_ABI if_sub(const vecdouble3 InHxmmd_f, const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

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
    friend vecdouble3 uX_ABI if_mul(const vecdouble3 InHxmmd_f, const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

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
    friend vecdouble3 uX_ABI if_div(const vecdouble3 InHxmmd_f, const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Change signs on vector at compile time.
     *
     * Generate a constant vector at compile time stored in memory, and changes the sign of parameter.
     * Each index i0 - i2 is 1 for changing sign on the corresponding element, 0 for no change.
     *
     * \param InHxmmd_a the vector to change.
     *
     */
    template <int i0, int i1, int i2>
    friend uX_constexpr vecdouble3 uX_ABI change_sign(const vecdouble3 InHxmmd_a) uX_noexcept {
        if ((i0 | i1 | i2) == 0) return InHxmmd_a;
        return InHxmmd_a ^ vecdouble3(constant3ui64<i0 ? 0x8000000000000000 : 0, i1 ? 0x8000000000000000 : 0, i2 ? 0x8000000000000000 : 0>());
    }

    /**
     * \brief Sign bit.
     *
     * Gives true for elements that have the sign bit set.
     * Note that sign_bit(vecdouble3(-0.0f)) gives true, while vecdouble3(-0.0f) < vecdouble3(0.0f) gives false.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble3 uX_ABI sign_bit(const vecdouble3 InHxmmd_a) uX_noexcept;

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
    friend vecdouble3 uX_ABI sign_combine(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Is finite.
     *
     * Gives true for elements that are normal, denormal or zero, false for INF and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble3 uX_ABI is_finite(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Is inf.
     *
     * Gives true for elements that are +INF or -INF, false for finite numbers and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble3 uX_ABI is_inf(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Is nan.
     *
     * Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble3 uX_ABI is_nan(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Is subnormal.
     *
     * Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble3 uX_ABI is_subnormal(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Is zero or subnormal.
     *
     * Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble3 uX_ABI is_zero_or_subnormal(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Infinite.
     *
     * \return a vector where all elements are +INF.
     */
    vecdouble3& uX_ABI infinite() uX_noexcept;

    /**
     * \brief Nan.
     *
     * \return a vector where all elements are NAN (quiet).
     */
    vecdouble3& uX_ABI nan() uX_noexcept;

    /**
     * \brief Is Horizontal add.
     *
     * Calculates the sum of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend double uX_ABI horizontal_add(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Horizontal sub.
     *
     * Calculates the subtraction of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend double uX_ABI horizontal_sub(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Horizontal mull.
     *
     * Calculates the multiplication of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend double uX_ABI horizontal_mul(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Max.
     *
     * Computes the max a > b ? a : b.
     *
     * \param Inxmmd_a the a vector.
     * \param Inxmmd_b the b vector.
     * \return vector.
     */
    friend vecdouble3 uX_ABI max(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Min.
     *
     * Computes the min a < b ? a : b.
     *
     * \param Inxmmd_a the a vector.
     * \param Inxmmd_b the b vector.
     * \return vector.
     */
    friend vecdouble3 uX_ABI min(const vecdouble3 InHxmmd_a, const vecdouble3 InHxmmd_b) uX_noexcept;

    /**
     * \brief Abs.
     *
     * Computes the absolute value.
     *
     * \param Inxmmd_a the a vector..
     * \return vector.
     */
    friend vecdouble3 uX_ABI abs(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Square.
     *
     * Computes the a * a.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble3 uX_ABI square(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief Scale.
     *
     * Computes the a * s.
     *
     * \param Inxmmd_a the a vector.
     * \param Indouble_s the double scale factor.
     * \return vector.
     */
    friend vecdouble3 uX_ABI scale(const vecdouble3 InHxmmd_a, double Indouble_s) uX_noexcept;

    /**
     * \brief rcp.
     *
     * Computes the reciprocal.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble3 uX_ABI rcp(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief sqrt.
     *
     * Computes the square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble3 uX_ABI sqrt(const vecdouble3 InHxmmd_a) uX_noexcept;

    /**
     * \brief rsqrt.
     *
     * Computes the reciprocal square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble3 uX_ABI rsqrt(const vecdouble3 InHxmmd_a) uX_noexcept;

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
            double       _x, _y, _z;
        };
        __m128d        m128_xmmd[2];
        double            m128_d[3];
    };

public:
    uX_const uint32_t uX_ABI m128_xmm_ptr_lenght    () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_xmm_ptr_size      () const uX_noexcept { return 32; }
    uX_const uint32_t uX_ABI m128_xmm_size          () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_xmm_dbl_elements  () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_dbl_ptr_lenght    () const uX_noexcept { return 3; }
    uX_const uint32_t uX_ABI m128_dbl_ptr_size      () const uX_noexcept { return 24; }
    uX_const uint32_t uX_ABI m128_dbl_size          () const uX_noexcept { return 8; }

}vecdouble3_t;

#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

#ifndef uX_XMM_VECDOUBLE4_H
#include "uXxmmvecdouble4.h"
#endif  /* uX_XMM_VECDOUBLE4_H */

#ifndef uX_XMM_VECDOUBLE2_H
#include "uXxmmvecdouble2.h"
#endif  /* uX_XMM_VECDOUBLE2_H */

#ifndef uX_XMM_VECDOUBLE1_H
#include "uXxmmvecdouble1.h"
#endif  /* uX_XMM_VECDOUBLE1_H */

#ifndef uX_XMM_VECQWORD3_H
#include "uXxmmvecqword3.h"
#endif  /* uX_XMM_VECQWORD3_H */

#ifndef uX_XMM_VECUQWORD3_H
#include "uXxmmvecuqword3.h"
#endif  /* uX_XMM_VECUQWORD3_H */

#ifdef uX_SSE2
#include "./inline/uXxmmvecdouble3.inl"
#endif // uX_SSE2

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECDOUBLE3_H
