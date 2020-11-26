
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

#ifndef uX_XMM_VECDOUBLE2_H
#define uX_XMM_VECDOUBLE2_H 1

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
/** \class vecdouble2
  *
  * \brief SSE SIMD class with the size of 2 double elements.
  *
  * The %vecdouble2 class is an 2 elements wide 64bit double.
  * It provides interoperability between %vecdouble1, %vecqword2 and %vecuqword2.
  *
  */
typedef class vecdouble2
{
public:
    vecdouble2()uX_default;
    ~vecdouble2()uX_default;

    /**
     * \brief Default constructor initialization from vecdouble2.
     *
     * @param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2(const vecdouble2& Inxmmd_a) uX_noexcept : m128_xmmd(Inxmmd_a.m128_xmmd) {}

    /**
     * \brief Default constructor initialization from vecdouble2.
     *
     * @param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2(vecdouble2&& Inxmmd_a) uX_noexcept : m128_xmmd(Inxmmd_a.m128_xmmd) {}

    /**
     * \brief Constructor initialization from type __m128d.
     *
     * @param Inxmmd value to copy from.
     */
    uX_constexpr vecdouble2(const __m128d Inxmmd) uX_noexcept : m128_xmmd(Inxmmd) {}

    /**
     * \brief Constructor initialization from type vecdouble4.
     *
     * @param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2(const vecdouble4 InHxmmd_a) uX_noexcept : m128_xmmd(InHxmmd_a.get_xmmd_0()) {}

    /**
     * \brief Constructor initialization from type vecdouble3.
     *
     * @param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2(const vecdouble3 InHxmmd_a) uX_noexcept : m128_xmmd(InHxmmd_a.get_xmmd_0()) {}

    /**
     * \brief Constructor initialization from type vecdouble1.
     *
     * @param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2(const vecdouble1 Inxmmd_a) uX_noexcept : m128_xmmd(_uX_mm_move_sd(m128_xmmd, Inxmmd_a)) {}

    /**
     * \brief Constructor initialization from type vecfloat4.
     *
     * @param Inxmm_a value to copy from.
     */
    uX_constexpr vecdouble2(const vecfloat4 Inxmm_a) uX_noexcept : m128_xmmd(_uX_mm_castps_pd(Inxmm_a)) {}

    /**
     * \brief Constructor initialization from type vecqword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble2(const vecqword2 Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecuqword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble2(const vecuqword2 Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecdword4.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble2(const vecdword4 Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecudword4.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble2(const vecudword4 Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \brief Constructor to broadcast the same double value into all elements.
     *
     * @param Indouble_a double value to copy from.
     */
    uX_explicit uX_constexpr vecdouble2(double Indouble_a) uX_noexcept : m128_xmmd(_uX_mm_set1_pd(Indouble_a)) {}

    /**
     * \brief Constructor initialization from 2 type double.
     *
     * @param Indouble_X value to copy from.
     * @param Indouble_Y value to copy from.
     */
    uX_constexpr vecdouble2(double Indouble_X, double Indouble_Y) uX_noexcept : m128_xmmd(_uX_mm_setr_pd(Indouble_X, Indouble_Y)) {}

    /**
     * \brief Constructor to broadcast the same bool_t value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecdouble2(const bool_t Inbool_a) uX_noexcept : m128_xmmd(vecdouble2(vecqword2(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 2 type bool_t.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     */
    uX_constexpr vecdouble2(const bool_t Inbool_X, const bool_t Inbool_Y) uX_noexcept : m128_xmmd(vecdouble2(vecqword2(Inbool_X, Inbool_Y))) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecdouble2(const bool Inbool_a) uX_noexcept : m128_xmmd(vecdouble2(vecqword2(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 2 type bool.
     *
     * \param Inbool_X value to copy from.
     * \param Inbool_Y value to copy from.
     */
    uX_constexpr vecdouble2(const bool Inbool_X, const bool Inbool_Y) uX_noexcept : m128_xmmd(vecdouble2(vecqword2(Inbool_X, Inbool_Y))) {}

    /**
     * \brief Constructor initialization from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    uX_explicit uX_constexpr vecdouble2(uX_InReads(2) const double* Inpdouble) uX_noexcept : m128_xmmd(_uX_mm_loadu_pd(Inpdouble)) {}

    /** \brief __m128d type cast operator.
     *
     * To convert to __m128d.
     */
    uX_constexpr operator __m128d() const uX_noexcept { return m128_xmmd; }

    /** Type cast operator to convert to double*. */
    /*operator double*() const uX_noexcept;*/ //security undesired

    /**
     * \brief vecdouble2 default assignment operator.
     *
     * To convert from type vecdouble2.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(const vecdouble2& Inxmmd_a) uX_noexcept { return vecdouble2(Inxmmd_a); }

    /**
     * \brief vecdouble2 default assignment operator.
     *
     * To convert from type vecdouble2.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(vecdouble2&& Inxmmd_a) uX_noexcept { return vecdouble2(Inxmmd_a); }

    /**
     * \brief __m128d assignment operator.
     *
     * To convert from type __m128d.
     *
     * \param Inxmmd value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(const __m128d Inxmmd) uX_noexcept { return vecdouble2(Inxmmd); }

    /**
     * \brief vecdouble4 assignment operator.
     *
     * To convert from type vecdouble4.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(const vecdouble4 InHxmmd_a) uX_noexcept { return vecdouble2(InHxmmd_a); }

    /**
     * \brief vecdouble3 assignment operator.
     *
     * To convert from type vecdouble3.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(const vecdouble3 InHxmmd_a) uX_noexcept { return vecdouble2(InHxmmd_a); }

    /**
     * \brief vecdouble1 assignment operator.
     *
     * To convert from type vecdouble1.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(const vecdouble1 Inxmmd_a) uX_noexcept { return vecdouble2(Inxmmd_a); }

    /**
     * \brief vecfloat4 assignment operator.
     *
     * To convert from type vecfloat4.
     *
     * \param Inxmm_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(const vecfloat4 Inxmm_a) uX_noexcept { return vecdouble2(Inxmm_a); }

    /**
     * \brief vecqword2 assignment operator.
     *
     * To convert from type vecqword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(const vecqword2 Inxmmi_a) uX_noexcept { return vecdouble2(Inxmmi_a); }

    /**
     * \brief vecuqword2 assignment operator.
     *
     * To convert from type vecuqword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(const vecuqword2 Inxmmi_a) uX_noexcept { return vecdouble2(Inxmmi_a); }

    /**
     * \brief vecdword4 assignment operator.
     *
     * To convert from type vecdword4.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(const vecdword4 Inxmmi_a) uX_noexcept { return vecdouble2(Inxmmi_a); }

    /**
     * \brief vecudword4 assignment operator.
     *
     * To convert from type vecudword4.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(const vecudword4 Inxmmi_a) uX_noexcept { return vecdouble2(Inxmmi_a); }

    /**
     * \brief double assignment operator
     *
     * To broadcast the same double value into all elements.
     *
     * \param Indouble_a double value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(double Indouble_a) uX_noexcept { return vecdouble2(Indouble_a); }

    /**
     * \brief bool_t assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(const bool_t Inbool_a) uX_noexcept { return vecdouble2(Inbool_a); }

    /**
     * \brief bool assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(const bool Inbool_a) uX_noexcept { return vecdouble2(Inbool_a); }

    /**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    /*vecdouble2& uX_ABI operator=(uX_InReads(2) const double* Inpdouble) uX_noexcept;*/ //security undesired

    /**
     * \brief Get vector.
     *
     * Gets vector.
     * \return vector.
     */
    uX_constexpr __m128d uX_ABI get() const uX_noexcept { return m128_xmmd; }

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
    uX_constexpr vecdouble2 uX_ABI get_xy() const uX_noexcept { return vecdouble2(m128_xmmd); }

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
    uX_constexpr vecdouble2 uX_ABI get_yx() const uX_noexcept { return vecdouble2(_uX_MM_PERMUTER_IM_PD(m128_xmmd, 1, 0)); }

    /**
     * \brief Get reference to vector.
     *
     * Gets reference to vector.
     * \return vector.
     */
    uX_constexpr __m128d& uX_ABI ref() uX_noexcept { return m128_xmmd; }

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
    uX_constexpr vecdouble2& uX_ABI ref_xy() uX_noexcept { return vecdouble2(m128_xmmd); }

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
    uX_constexpr vecdouble2& uX_ABI ref_yx() uX_noexcept { return vecdouble2(_uX_MM_PERMUTER_IM_PD(m128_xmmd, 1, 0)); }

    /**
     * \brief Set the vector.
     *
     * Sets all vector elements.
     *
     * \param Inxmm.
     */
    void uX_ABI set(const __m128d Inxmm) uX_noexcept;

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
     * \param Inxmm_a.
     */
    void uX_ABI set_yx(const vecdouble2 Inxmm_a) uX_noexcept;

    /* Bitwise Operators */

    /**
     * \brief Bitwise function ANDNOT.
     *
     * Performs the compute and not from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI andnot(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator&(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator OR.
     *
     * Performs the compute or from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator|(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator XOR.
     *
     * Performs the compute xor from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator^(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator NOT.
     *
     * Performs the compute not from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator~(const vecdouble2 Inxmmd_a) uX_noexcept;

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
    friend bool_t uX_ABI bandnot(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator&&(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator OR.
     *
     * Performs the compute OR from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator||(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator NOT.
     *
     * Performs the compute not from the 1 parameter.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator!(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Logical function HORIZONTAL AND.
     *
     * Performs the compute horizontal and in all bits from the parameter. Returns true if all bits are 1.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend bool_t uX_ABI horizontal_and(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Logical function HORIZONTAL OR.
     *
     * Performs the compute horizontal or in all bits from the parameter. Returns true if at least one bit is 1.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend bool_t uX_ABI horizontal_or(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Logical operator assignment AND.
     *
     * Performs the compute and from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2& uX_ABI operator&=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator assignment OR.
     *
     * Performs the compute or from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2& uX_ABI operator|=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator assignment XOR.
     *
     * Performs the compute xor from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2& uX_ABI operator^=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /* Arithmetic Operators */

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble2 uX_ABI operator+(const vecdouble2 Inxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator+(double Indouble_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble2 uX_ABI operator+(const vecdouble2 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator+(const __m128d Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator+(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble2 uX_ABI operator-(const vecdouble2 Inxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator-(double Indouble_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble2 uX_ABI operator-(const vecdouble2 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator-(const __m128d Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator-(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble2 uX_ABI operator*(const vecdouble2 Inxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator*(double Indouble_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble2 uX_ABI operator*(const vecdouble2 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator*(const __m128d Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator*(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble2 uX_ABI operator/(const vecdouble2 Inxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator/(double Indouble_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble2 uX_ABI operator/(const vecdouble2 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator/(const __m128d Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator/(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2& uX_ABI operator+=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2& uX_ABI operator-=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2& uX_ABI operator*=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2& uX_ABI operator/=(vecdouble2& Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /* Unary Operators */

    /**
     * \brief Unary prefix increment operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble2& uX_ABI operator++(vecdouble2& Inxmmd_a) uX_noexcept;

    /**
     * \brief Unary prefix decrement operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble2& uX_ABI operator--(vecdouble2& Inxmmd_a) uX_noexcept;

    /**
     * \brief Unary postfix increment operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble2 uX_ABI operator++(vecdouble2& Inxmmd_a, int) uX_noexcept;

    /**
     * \brief Unary postfix decrement operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble2 uX_ABI operator--(vecdouble2& Inxmmd_a, int) uX_noexcept;

    /**
     * \brief Unary minus operator.
     *
     * Performs the compute minus. Change sign bit, even for 0, INF and NAN.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble2 uX_ABI operator-(const vecdouble2 Inxmmd_a) uX_noexcept;

    /* Comparison Operators */

    /**
     * \brief Comparison operator equal.
     *
     * Performs the compute equality from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator==(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator less than.
     *
     * Performs the compute less than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator<(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator less than or equal.
     *
     * Performs the compute less than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator<=(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator greater than.
     *
     * Performs the compute greater than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator>(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator greater than or equal.
     *
     * Performs the compute greater than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator>=(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator not equal.
     *
     * Performs the compute not equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble2 uX_ABI operator!=(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Load unaligned.
     *
     * Performs load from type double* unaligned.
     *
     * \param Inpdouble pointer value to copy from.
     */
    vecdouble2& uX_ABI load(uX_InReads(2) const double* Inpdouble) uX_noexcept;

    /**
     * \brief Load aligned.
     *
     * Performs load from type double* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Inpdouble pointer value to copy from.
     */
    vecdouble2& uX_ABI load_a(uX_InReads(2) const double* Inpdouble) uX_noexcept;

    /**
     * \brief Store function unaligned.
     *
     * Performs store to type double* unaligned.
     *
     * \param Outpdouble pointer value to store to.
     */
    void uX_ABI store(uX_OutWrites(2) double* Outpdouble) const uX_noexcept;

    /**
     * \brief Store function aligned.
     *
     * Performs store to type double* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Outpdouble pointer value to store to.
     */
    void uX_ABI store_a(uX_OutWrites(2) double* Outpdouble) const uX_noexcept;

    /**
     * \brief Insert function.
     *
     * Performs insert from type double on the mask index.
     *
     * \param value double to copy from.
     * \param index element to set.
     * \return vector
     */
    const vecdouble2 uX_ABI insert(double value, count_t index) uX_noexcept;

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
    vecdouble2& uX_ABI zero() uX_noexcept;

    /**
     * \brief Cut off vector to n elements.
     *
     * Performs the cut off vector to n elements.
     * The last 4-n elements are set to zero.
     *
     * \param indexN element's to cut.
     */
    vecdouble2& uX_ABI cutoff(count_t indexN) uX_noexcept;

    /**
     * \brief Flip Sign function.
     *
     * Performs the flip sign off vector on all elements.
     *
     * \param Inxmmd_a the vector to flip sign.
     * \return vector.
     */
    friend vecdouble2 uX_ABI flip_sign(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Test if all elements if is zero.
     *
     * Performs the test if all elements are zero.
     *
     * \param Inxmmd_a the vector to test.
     * \return boolean integer.
     */
    friend bool_t uX_ABI is_zero(const vecdouble2 Inxmmd_a) uX_noexcept;

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
    friend vecdouble2 uX_ABI select(const vecdouble2 Inxmmd_f, const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

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
    friend vecdouble2 uX_ABI if_add(const vecdouble2 Inxmmd_f, const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

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
    friend vecdouble2 uX_ABI if_sub(const vecdouble2 Inxmmd_f, const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

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
    friend vecdouble2 uX_ABI if_mul(const vecdouble2 Inxmmd_f, const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

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
    friend vecdouble2 uX_ABI if_div(const vecdouble2 Inxmmd_f, const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Change signs on vector at compile time.
     *
     * Generate a constant vector at compile time stored in memory, and changes the sign of parameter.
     * Each index i0 - i1 is 1 for changing sign on the corresponding element, 0 for no change.
     *
     * \param Inxmmd_a the vector to change.
     *
     */
    template <int i0, int i1>
    friend uX_constexpr vecdouble2 uX_ABI change_sign(const vecdouble2 Inxmmd_a) uX_noexcept {
        if ((i0 | i1) == 0) return Inxmmd_a;
        return Inxmmd_a ^ vecdouble2(constant2ui64<i0 ? 0x8000000000000000 : 0, i1 ? 0x8000000000000000 : 0>());
    }

    /**
     * \brief Sign bit.
     *
     * Gives true for elements that have the sign bit set.
     * Note that sign_bit(vecdouble2(-0.0f)) gives true, while vecdouble2(-0.0f) < vecdouble2(0.0f) gives false.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble2 uX_ABI sign_bit(const vecdouble2 Inxmmd_a) uX_noexcept;

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
    friend vecdouble2 uX_ABI sign_combine(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Is finite.
     *
     * Gives true for elements that are normal, denormal or zero, false for INF and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble2 uX_ABI is_finite(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Is inf.
     *
     * Gives true for elements that are +INF or -INF, false for finite numbers and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble2 uX_ABI is_inf(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Is nan.
     *
     * Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble2 uX_ABI is_nan(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Is subnormal.
     *
     * Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble2 uX_ABI is_subnormal(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Is zero or subnormal.
     *
     * Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble2 uX_ABI is_zero_or_subnormal(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Infinite.
     *
     * \return a vector where all elements are +INF.
     */
    vecdouble2& uX_ABI infinite() uX_noexcept;

    /**
     * \brief Nan.
     *
     * \return a vector where all elements are NAN (quiet).
     */
    vecdouble2& uX_ABI nan() uX_noexcept;

    /**
     * \brief Is Horizontal add.
     *
     * Calculates the sum of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend double uX_ABI horizontal_add(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Horizontal sub.
     *
     * Calculates the subtraction of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend double uX_ABI horizontal_sub(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Horizontal mull.
     *
     * Calculates the multiplication of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend double uX_ABI horizontal_mul(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Max.
     *
     * Computes the max a > b ? a : b.
     *
     * \param Inxmmd_a the a vector.
     * \param Inxmmd_b the b vector.
     * \return vector.
     */
    friend vecdouble2 uX_ABI max(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Min.
     *
     * Computes the min a < b ? a : b.
     *
     * \param Inxmmd_a the a vector.
     * \param Inxmmd_b the b vector.
     * \return vector.
     */
    friend vecdouble2 uX_ABI min(const vecdouble2 Inxmmd_a, const vecdouble2 Inxmmd_b) uX_noexcept;

    /**
     * \brief Abs.
     *
     * Computes the absolute value.
     *
     * \param Inxmmd_a the a vector..
     * \return vector.
     */
    friend vecdouble2 uX_ABI abs(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Square.
     *
     * Computes the a * a.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble2 uX_ABI square(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief Scale.
     *
     * Computes the a * s.
     *
     * \param Inxmmd_a the a vector.
     * \param Indouble_s the double scale factor.
     * \return vector.
     */
    friend vecdouble2 uX_ABI scale(const vecdouble2 Inxmmd_a, double Indouble_s) uX_noexcept;

    /**
     * \brief rcp.
     *
     * Computes the reciprocal.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble2 uX_ABI rcp(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief sqrt.
     *
     * Computes the square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble2 uX_ABI sqrt(const vecdouble2 Inxmmd_a) uX_noexcept;

    /**
     * \brief rsqrt.
     *
     * Computes the reciprocal square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble2 uX_ABI rsqrt(const vecdouble2 Inxmmd_a) uX_noexcept;

protected:

private:
    union
    {
        __m128d  m128_xmmd;
        struct
        {
            double   _x, _y;
        };
        double    m128_d[2];
    };

public:
    uX_const uint32_t uX_ABI m128_xmm_size          () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_xmm_dbl_elements  () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_dbl_ptr_lenght    () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_dbl_ptr_size      () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_dbl_size          () const uX_noexcept { return 8; }

}vecdouble2_t;
#endif // uX_SSE2

uX_PACK_POP
EXTERN_CC_END
namespace_XMM_end
namespace_uX_end

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

#ifdef uX_SSE2
#include "./inline/uXxmmvecdouble2.inl"
#endif // uX_SSE2

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECDOUBLE2_H
