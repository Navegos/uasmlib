
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

#ifndef uX_XMM_VECDOUBLE1_H
#define uX_XMM_VECDOUBLE1_H 1

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

/** \class vecdouble1
  *
  * \brief SSE SIMD class with the size of 1 double element.
  *
  * The %vecdouble1 class is an 1 element wide 64bit double.
  * It provides interoperability between %vecqword1 and %vecuqword1.
  *
  */
#ifdef uX_SSE2
typedef class uX_API vecdouble1
{
public:
    vecdouble1()uX_default;
    ~vecdouble1()uX_default;

    /**
     * \brief Default constructor initialization from vecdouble1.
     *
     * @param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble1(const vecdouble1& Inxmmd_a) uX_noexcept : m128_xmmd(Inxmmd_a.m128_xmmd) {}

    /**
     * \brief Default constructor initialization from vecdouble1.
     *
     * @param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble1(vecdouble1&& Inxmmd_a) uX_noexcept : m128_xmmd(Inxmmd_a.m128_xmmd) {}

    /**
     * \brief Constructor initialization from type __m128d.
     *
     * @param Inxmmd value to copy from.
     * @warning Only sets the lower _x double element, higher elements gets cleared
     */
    uX_constexpr vecdouble1(const __m128d Inxmmd) uX_noexcept : m128_xmmd(_uX_mm_move_sd(__m128d_false, Inxmmd)) {}

    /**
     * \brief Constructor initialization from type vecdouble4.
     *
     * @param InHxmmd_a value to copy from.
     * @warning Only sets the lower _x double element, higher elements gets cleared
     */
    uX_constexpr vecdouble1(const vecdouble4 InHxmmd_a) uX_noexcept : m128_xmmd(_uX_mm_move_sd(__m128d_false, InHxmmd_a.get_xmmd_0())) {}

    /**
     * \brief Constructor initialization from type vecdouble3.
     *
     * @param InHxmmd_a value to copy from.
     * @warning Only sets the lower _x double element, higher elements gets cleared
     */
    uX_constexpr vecdouble1(const vecdouble3 InHxmmd_a) uX_noexcept : m128_xmmd(_uX_mm_move_sd(__m128d_false, InHxmmd_a.get_xmmd_0())) {}

    /**
     * \brief Constructor initialization from type vecdouble2.
     *
     * @param Inxmmd_a value to copy from.
     * @warning Only sets the lower _x double element, higher elements gets cleared
     */
    uX_constexpr vecdouble1(const vecdouble2 Inxmmd_a) uX_noexcept : m128_xmmd(_uX_mm_move_sd(__m128d_false, Inxmmd_a)) {}

    /**
     * \brief Constructor initialization from type vecfloat2.
     *
     * @param Inxmm_a value to copy from.
     */
    uX_constexpr vecdouble1(const vecfloat2 Inxmm_a) uX_noexcept : m128_xmmd(_uX_mm_castps_pd(Inxmm_a)) {}

    /**
     * \brief Constructor initialization from type vecqword1.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble1(const vecqword1 Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecuqword1.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble1(const vecuqword1 Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecdword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble1(const vecdword2 Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type vecudword2.
     *
     * @param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble1(const vecudword2 Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \brief Constructor initialization from type double.
     *
     * @param Indouble value to copy from.
     * @warning Only sets the lower _x double element, higher elements gets cleared
     */
    uX_constexpr vecdouble1(double Indouble) uX_noexcept : m128_xmmd(_uX_mm_move_sd(__m128d_false, _uX_mm_set_sd(Indouble))) {}

    /**
     * \brief Constructor initialization from 1 type bool_t.
     *
     * \param Inbool_X value to copy from.
     */
    uX_constexpr vecdouble1(const bool_t Inbool_a) uX_noexcept : m128_xmmd(vecdouble1(vecqword1(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 1 type bool.
     *
     * \param Inbool_X value to copy from.
     */
    uX_constexpr vecdouble1(const bool Inbool_a) uX_noexcept : m128_xmmd(vecdouble1(vecqword1(Inbool_a))) {}

    /** \brief __m128d type cast operator.
     *
     * To convert to __m128d.
     */
    uX_constexpr operator __m128d() const uX_noexcept { return m128_xmmd; }

    /** Type cast operator to convert the lower _x element to double. */
    /*operator double() const uX_noexcept;*/ //undesired results

    /**
     * \brief vecdouble1 default assignment operator.
     *
     * To convert from type vecdouble1.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(const vecdouble1& Inxmmd_a) uX_noexcept { return vecdouble1(Inxmmd_a); }

    /**
     * \brief vecdouble1 default assignment operator.
     *
     * To convert from type vecdouble1.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(vecdouble1&& Inxmmd_a) uX_noexcept { return vecdouble1(Inxmmd_a); }

    /**
     * \brief __m128d assignment operator.
     *
     * To convert from type __m128d.
     *
     * \param Inxmmd value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(const __m128d Inxmmd) uX_noexcept { return vecdouble1(Inxmmd); }

    /**
     * \brief vecdouble4 assignment operator.
     *
     * To convert from type vecdouble4.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(const vecdouble4 InHxmmd_a) uX_noexcept { return vecdouble1(InHxmmd_a); }

    /**
     * \brief vecdouble3 assignment operator.
     *
     * To convert from type vecdouble3.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(const vecdouble3 InHxmmd_a) uX_noexcept { return vecdouble1(InHxmmd_a); }

    /**
     * \brief vecdouble2 assignment operator.
     *
     * To convert from type vecdouble2.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(const vecdouble2 Inxmmd_a) uX_noexcept { return vecdouble1(Inxmmd_a); }

    /**
     * \brief vecfloat2 assignment operator.
     *
     * To convert from type vecfloat2.
     *
     * \param Inxmm_a value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(const vecfloat2 Inxmm_a) uX_noexcept { return vecdouble1(Inxmm_a); }

    /**
     * \brief vecqword1 assignment operator.
     *
     * To convert from type vecqword1.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(const vecqword1 Inxmmi_a) uX_noexcept { return vecdouble1(Inxmmi_a); }

    /**
     * \brief vecuqword1 assignment operator.
     *
     * To convert from type vecuqword1.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(const vecuqword1 Inxmmi_a) uX_noexcept { return vecdouble1(Inxmmi_a); }

    /**
     * \brief vecdword2 assignment operator.
     *
     * To convert from type vecdword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(const vecdword2 Inxmmi_a) uX_noexcept { return vecdouble1(Inxmmi_a); }

    /**
     * \brief vecudword2 assignment operator.
     *
     * To convert from type vecudword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(const vecudword2 Inxmmi_a) uX_noexcept { return vecdouble1(Inxmmi_a); }

    /**
     * \brief double assignment operator
     *
     * To convert from type double.
     *
     * \param Indouble_a double value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(double Indouble_a) uX_noexcept { return vecdouble1(Indouble_a); }

    /**
     * \brief bool_t assignment operator.
     *
     * To convert from type bool_t.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(const bool_t Inbool_a) uX_noexcept { return vecdouble1(Inbool_a); }

    /**
     * \brief bool assignment operator.
     *
     * To convert from type bool.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecdouble1& uX_ABI operator=(const bool Inbool_a) uX_noexcept { return vecdouble1(Inbool_a); }

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
     * \brief Set the vector.
     *
     * Sets all vector elements.
     *
     * \param Inxmmd.
     */
    void uX_ABI set(const __m128d Inxmmd) uX_noexcept;

    /**
     * \brief Set the vector _x.
     *
     * Sets the vector _x element.
     *
     * \param Indouble_a.
     */
    void uX_ABI set_x(double Indouble_a) uX_noexcept;

    /* Bitwise Operators */

    /**
     * \brief Bitwise function ANDNOT.
     *
     * Performs the compute and not from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI andnot(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator&(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator OR.
     *
     * Performs the compute or from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator|(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator XOR.
     *
     * Performs the compute xor from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator^(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Bitwise operator NOT.
     *
     * Performs the compute not from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator~(const vecdouble1 Inxmmd_a) uX_noexcept;

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
    friend bool_t uX_ABI bandnot(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator&&(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator OR.
     *
     * Performs the compute OR from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator||(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator NOT.
     *
     * Performs the compute not from the 1 parameter.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend bool_t uX_ABI operator!(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief Logical operator assignment AND.
     *
     * Performs the compute and from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1& uX_ABI operator&=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator assignment OR.
     *
     * Performs the compute or from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1& uX_ABI operator|=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Logical operator assignment XOR.
     *
     * Performs the compute xor from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1& uX_ABI operator^=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /* Arithmetic Operators */

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble1 uX_ABI operator+(const vecdouble1 Inxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator+(double Indouble_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble1 uX_ABI operator+(const vecdouble1 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator+(const __m128d Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator+(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble1 uX_ABI operator-(const vecdouble1 Inxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator-(double Indouble_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble1 uX_ABI operator-(const vecdouble1 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator-(const __m128d Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator-(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble1 uX_ABI operator*(const vecdouble1 Inxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator*(double Indouble_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble1 uX_ABI operator*(const vecdouble1 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator*(const __m128d Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator*(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend vecdouble1 uX_ABI operator/(const vecdouble1 Inxmmd_a, double Indouble_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator/(double Indouble_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend vecdouble1 uX_ABI operator/(const vecdouble1 Inxmmd_a, const __m128d Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator/(const __m128d Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator/(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1& uX_ABI operator+=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1& uX_ABI operator-=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1& uX_ABI operator*=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1& uX_ABI operator/=(vecdouble1& Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /* Unary Operators */

    /**
     * \brief Unary prefix increment operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble1& uX_ABI operator++(vecdouble1& Inxmmd_a) uX_noexcept;

    /**
     * \brief Unary prefix decrement operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble1& uX_ABI operator--(vecdouble1& Inxmmd_a) uX_noexcept;

    /**
     * \brief Unary postfix increment operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble1 uX_ABI operator++(vecdouble1& Inxmmd_a, int) uX_noexcept;

    /**
     * \brief Unary postfix decrement operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble1 uX_ABI operator--(vecdouble1& Inxmmd_a, int) uX_noexcept;

    /**
     * \brief Unary minus operator.
     *
     * Performs the compute minus. Change sign bit, even for 0, INF and NAN.
     *
     * \param Inxmmd_a.
     */
    friend vecdouble1 uX_ABI operator-(const vecdouble1 Inxmmd_a) uX_noexcept;

    /* Comparison Operators */

    /**
     * \brief Comparison operator equal.
     *
     * Performs the compute equality from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator==(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator less than.
     *
     * Performs the compute less than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator<(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator less than or equal.
     *
     * Performs the compute less than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator<=(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator greater than.
     *
     * Performs the compute greater than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator>(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator greater than or equal.
     *
     * Performs the compute greater than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator>=(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Comparison operator not equal.
     *
     * Performs the compute not equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend vecdouble1 uX_ABI operator!=(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Set all elements to zero.
     */
    vecdouble1& uX_ABI zero() uX_noexcept;

    /**
     * \brief Flip Sign function.
     *
     * Performs the flip sign off vector on all elements.
     *
     * \param Inxmmd_a the vector to flip sign.
     * \return vector.
     */
    friend vecdouble1 uX_ABI flip_sign(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief Test if all elements if is zero.
     *
     * Performs the test if all elements are zero.
     *
     * \param Inxmmd_a the vector to test.
     * \return boolean integer.
     */
    friend bool_t uX_ABI is_zero(const vecdouble1 Inxmmd_a) uX_noexcept;

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
    friend vecdouble1 uX_ABI select(const vecdouble1 Inxmmd_f, const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

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
    friend vecdouble1 uX_ABI if_add(const vecdouble1 Inxmmd_f, const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

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
    friend vecdouble1 uX_ABI if_sub(const vecdouble1 Inxmmd_f, const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

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
    friend vecdouble1 uX_ABI if_mul(const vecdouble1 Inxmmd_f, const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

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
    friend vecdouble1 uX_ABI if_div(const vecdouble1 Inxmmd_f, const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Change signs on vector at compile time.
     *
     * Generate a constant vector at compile time stored in memory, and changes the sign of parameter.
     * Each index i0 - i1 is 1 for changing sign on the corresponding element, 0 for no change.
     *
     * \param Inxmmd_a the vector to change.
     *
     */
    template <int i0>
    friend uX_constexpr vecdouble1 uX_ABI change_sign(const vecdouble1 Inxmmd_a) uX_noexcept {
        if (i0 == 0) return Inxmmd_a;
        return Inxmmd_a ^ vecdouble1(constant1ui64<i0 ? 0x8000000000000000 : 0>());
    }

    /**
     * \brief Sign bit.
     *
     * Gives true for elements that have the sign bit set.
     * Note that sign_bit(vecdouble1(-0.0f)) gives true, while vecdouble1(-0.0f) < vecdouble1(0.0f) gives false.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble1 uX_ABI sign_bit(const vecdouble1 Inxmmd_a) uX_noexcept;

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
    friend vecdouble1 uX_ABI sign_combine(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Is finite.
     *
     * Gives true for elements that are normal, denormal or zero, false for INF and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble1 uX_ABI is_finite(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief Is inf.
     *
     * Gives true for elements that are +INF or -INF, false for finite numbers and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble1 uX_ABI is_inf(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief Is nan.
     *
     * Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble1 uX_ABI is_nan(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief Is subnormal.
     *
     * Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble1 uX_ABI is_subnormal(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief Is zero or subnormal.
     *
     * Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble1 uX_ABI is_zero_or_subnormal(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief Infinite.
     *
     * \return a vector where all elements are +INF.
     */
    vecdouble1& uX_ABI infinite() uX_noexcept;

    /**
     * \brief Nan.
     *
     * \return a vector where all elements are NAN (quiet).
     */
    vecdouble1& uX_ABI nan() uX_noexcept;

    /**
     * \brief Max.
     *
     * Computes the max a > b ? a : b.
     *
     * \param Inxmmd_a the a vector.
     * \param Inxmmd_b the b vector.
     * \return vector.
     */
    friend vecdouble1 uX_ABI max(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Min.
     *
     * Computes the min a < b ? a : b.
     *
     * \param Inxmmd_a the a vector.
     * \param Inxmmd_b the b vector.
     * \return vector.
     */
    friend vecdouble1 uX_ABI min(const vecdouble1 Inxmmd_a, const vecdouble1 Inxmmd_b) uX_noexcept;

    /**
     * \brief Abs.
     *
     * Computes the absolute value.
     *
     * \param Inxmmd_a the a vector..
     * \return vector.
     */
    friend vecdouble1 uX_ABI abs(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief Square.
     *
     * Computes the a * a.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble1 uX_ABI square(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief Scale.
     *
     * Computes the a * s.
     *
     * \param Inxmmd_a the a vector.
     * \param Indouble_s the double scale factor.
     * \return vector.
     */
    friend vecdouble1 uX_ABI scale(const vecdouble1 Inxmmd_a, double Indouble_s) uX_noexcept;

    /**
     * \brief rcp.
     *
     * Computes the reciprocal.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble1 uX_ABI rcp(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief sqrt.
     *
     * Computes the square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble1 uX_ABI sqrt(const vecdouble1 Inxmmd_a) uX_noexcept;

    /**
     * \brief rsqrt.
     *
     * Computes the reciprocal square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend vecdouble1 uX_ABI rsqrt(const vecdouble1 Inxmmd_a) uX_noexcept;

protected:

private:
    union
    {
        __m128d  m128_xmmd;
        double          _x;
    };

public:
    uX_const uint32_t uX_ABI m128_xmm_size          () const uX_noexcept { return 16; }
    uX_const uint32_t uX_ABI m128_xmm_dbl_elements  () const uX_noexcept { return 2; }
    uX_const uint32_t uX_ABI m128_dbl_size          () const uX_noexcept { return 8; }

}vecdouble1_t;
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

#ifndef uX_XMM_VECDOUBLE2_H
#include "uXxmmvecdouble2.h"
#endif  /* uX_XMM_VECDOUBLE2_H */

#ifndef uX_XMM_VECQWORD1_H
#include "uXxmmvecqword1.h"
#endif  /* uX_XMM_VECQWORD1_H */

#ifndef uX_XMM_VECUQWORD1_H
#include "uXxmmvecuqword1.h"
#endif  /* uX_XMM_VECUQWORD1_H */

#ifdef uX_SSE2
#include "./inline/uXxmmvecdouble1.inl"
#endif // uX_SSE2

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECDOUBLE1_H
