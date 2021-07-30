
/*
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / / /
; / /                                                                               / /
; / /             Copyright 2020 (c) Navegos QA - optimized library                 / /
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
     * \fn uX::xmm::vecdouble2::vecdouble2(vecdouble2 const& Inxmmd_a) uX_noexcept
     * \brief Default constructor initialization from vecdouble2
     * \details Default constructor copies /p vecdouble2
     * \param[in] Inxmmd_a - vecdouble2 Read only
     */
    uX_constexpr vecdouble2(vecdouble2 const& Inxmmd_a) uX_noexcept : m128_xmmd(Inxmmd_a.m128_xmmd) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(vecdouble2&& Inxmmd_a) uX_noexcept
     * \brief Default constructor initialization from vecdouble2
     * \details Default constructor copies /p vecdouble2
     * \param[in] Inxmmd_a - vecdouble2 Read only
     */
    uX_constexpr vecdouble2(vecdouble2&& Inxmmd_a) uX_noexcept : m128_xmmd(Inxmmd_a.m128_xmmd) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(__m128d const Inxmmd) uX_noexcept
     * \brief Constructor initialization from type __m128d
     * \details Constructor copies _x _y elements from /p __m128d
     * \param[in] Inxmmd - __m128d Read only
     * \Note Sets the _x  _y double elements
     */
    uX_constexpr vecdouble2(__m128d const Inxmmd) uX_noexcept : m128_xmmd(Inxmmd) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(vecdouble4 const& InHxmmd_a) uX_noexcept
     * \brief Constructor initialization from type vecdouble4
     * \details Constructor copies low _x _y elements from /p vecdouble4
     * \param[in] InHxmmd_a - vecdouble4 Read only
     * \Note Sets the _x _y double elements
     */
    uX_constexpr vecdouble2(vecdouble4 const InHxmmd_a) uX_noexcept : m128_xmmd(InHxmmd_a.get_xmmd_0()) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(vecdouble3 const& InHxmmd_a) uX_noexcept
     * \brief Constructor initialization from type vecdouble3
     * \details Constructor copies low _x _y elements from /p vecdouble3
     * \param[in] InHxmmd_a - vecdouble3 Read only
     * \Note Sets the _x _y double elements
     */
    uX_constexpr vecdouble2(vecdouble3 const InHxmmd_a) uX_noexcept : m128_xmmd(InHxmmd_a.get_xmmd_0()) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(vecdouble1 const Inxmmd_a) uX_noexcept
     * \brief Constructor initialization from type vecdouble1
     * \details Constructor copies low _x element from /p vecdouble1 and maintains the high _y element
     * \param[in] Inxmmd_a - vecdouble1 Read only
     * \Note Sets the _x double element _y element gets copied
     */
    uX_constexpr vecdouble2(vecdouble1 const Inxmmd_a) uX_noexcept : m128_xmmd(_uX_mm_move_sd(m128_xmmd, Inxmmd_a)) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(vecfloat4 const Inxmm_a) uX_noexcept
     * \brief Constructor initialization from type vecfloat4
     * \details Constructor copies float _x _y _z _w elements from /p vecfloat4
     * \param[in] Inxmm_a - vecfloat4 Read only
     * \warning Only cast's the value, no conversion is made
     * \Note Sets the _x _y double elements
     */
    uX_constexpr vecdouble2(vecfloat4 const Inxmm_a) uX_noexcept : m128_xmmd(_uX_mm_castps_pd(Inxmm_a)) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(vecfloat2 const Inxmm_a) uX_noexcept
     * \brief Constructor initialization from type vecfloat2
     * \details Constructor converts float _x _y elements from /p vecfloat2 to _x _y elements
     * \param[in] Inxmm_a - vecfloat2 Read only
     * \warning Converts the value from float to double.
     * \Note Sets the _x _y double elements
     */
    uX_constexpr vecdouble2(vecfloat2 const Inxmm_a) uX_noexcept : m128_xmmd(_uX_mm_cvtps_pd(Inxmm_a)) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(vecqword2 const Inxmmi_a) uX_noexcept
     * \brief Constructor initialization from type vecqword2
     * \details Constructor copies int64 _x _y elements from /p vecqword2 to _x _y elements
     * \param[in] Inxmmi_a - vecqword2 Read only
     * \warning Only cast's the value, no conversion is made
     * \Note Sets the _x _y double elements
     */
    uX_constexpr vecdouble2(vecqword2 const Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(vecuqword2 const Inxmmi_a) uX_noexcept
     * \brief Constructor initialization from type vecuqword2
     * \details Constructor copies uint64 _x _y elements from /p vecuqword2 to _x _y elements
     * \param[in] Inxmmi_a - vecuqword2 Read only
     * \warning Only cast's the value, no conversion is made
     * \Note Sets the _x _y double elements
     */
    uX_constexpr vecdouble2(vecuqword2 const Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(vecdword4 const Inxmmi_a) uX_noexcept
     * \brief Constructor initialization from type vecdword2
     * \details Constructor copies int32 _x _y _z _w elements from /p vecdword4 to _x _y elements
     * \param[in] Inxmmi_a - vecdword4 Read only
     * \warning Only cast's the value, no conversion is made
     * \Note Sets the _x _y double elements
     */
    uX_constexpr vecdouble2(vecdword4 const Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(vecdword4 const Inxmmi_a) uX_noexcept
     * \brief Constructor initialization from type vecdword2
     * \details Constructor copies uint32 _x _y _z _w elements from /p vecdword4 to _x _y elements
     * \param[in] Inxmmi_a - vecdword4 Read only
     * \warning Only cast's the value, no conversion is made
     * \Note Sets the _x _y double elements
     */
    uX_constexpr vecdouble2(vecudword4 const Inxmmi_a) uX_noexcept : m128_xmmd(_uX_mm_castsi128_pd(Inxmmi_a)) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(double Indouble) uX_noexcept
     * \brief Constructor initialization from type double
     * \details Constructor to broadcast the same double value into all elements
     * \param[in] Indouble - double Read only
     * \warning Broadcasts same float value to all elements
     * \Note Sets the _x _y double elements
     */
    uX_explicit uX_constexpr vecdouble2(double Indouble) uX_noexcept : m128_xmmd(_uX_mm_set1_pd(Indouble)) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(double Indouble_x, double Indouble_y) uX_noexcept
     * \brief Constructor initialization from 2 double types
     * \details Constructor copies p/ Indouble_x p/ Indouble_y to _x _y elements respectively
     * \param[in] Indouble_x - double Read only
     * \param[in] Indouble_y - double Read only
     * \Note Sets the _x _y double elements
     */
    uX_constexpr vecdouble2(double Indouble_x, double Indouble_y) uX_noexcept : m128_xmmd(_uX_mm_setr_pd(Indouble_x, Indouble_y)) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(bool_t const Inbool) uX_noexcept
     * \brief Constructor initialization from type bool_t
     * \details Constructor to broadcast the same bool_t value into all elements
     * \param[in] Inbool - bool_t Read only
     * \warning Broadcasts same value to all elements
     * \Note Sets the _x _y double elements
     */
    uX_explicit uX_constexpr vecdouble2(bool_t const Inbool) uX_noexcept : m128_xmmd(vecdouble2(vecuqword2(Inbool))) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(bool_t const Inbool_x, bool_t const Inbool_y) uX_noexcept
     * \brief Constructor initialization from 2 bool_t types
     * \details Constructor copies p/ Inbool_x p/ Inbool_y to _x _y elements respectively
     * \param[in] Inbool_x - bool_t Read only
     * \param[in] Inbool_y - bool_t Read only
     * \Note Sets the _x _y double elements
     */
    uX_constexpr vecdouble2(bool_t const Inbool_x, bool_t const Inbool_y) uX_noexcept : m128_xmmd(vecdouble2(vecuqword2(Inbool_x, Inbool_y))) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(bool const Inbool) uX_noexcept
     * \brief Constructor initialization from type bool
     * \details Constructor to broadcast the same bool value into all elements
     * \param[in] Inbool - bool Read only
     * \warning Broadcasts same value to all elements
     * \Note Sets the _x _y double elements
     */
    uX_explicit uX_constexpr vecdouble2(bool const Inbool) uX_noexcept : m128_xmmd(vecdouble2(vecuqword2(Inbool))) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(bool const Inbool_x, bool const Inbool_y) uX_noexcept
     * \brief Constructor initialization from 2 bool types
     * \details Constructor copies p/ Inbool_x p/ Inbool_y to _x _y elements respectively
     * \param[in] Inbool_x - bool Read only
     * \param[in] Inbool_y - bool Read only
     * \Note Sets the _x _y double elements
     */
    uX_constexpr vecdouble2(bool const Inbool_x, bool const Inbool_y) uX_noexcept : m128_xmmd(vecdouble2(vecuqword2(Inbool_x, Inbool_y))) {}

    /**
     * \fn uX::xmm::vecdouble2::vecdouble2(double const* const Inpdouble) uX_noexcept
     * \brief Constructor initialization from type double*
     * \details Constructor unaligned copies p/ double[0] p/ double[1] to _x _y elements respectively
     * \param[in] Inpdouble - double* address Read only
     * \Note Sets the _x _y double elements
     */
    uX_explicit uX_constexpr vecdouble2(uX_InReads(2) double const* const Inpdouble) uX_noexcept : m128_xmmd(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble))){}

    /**
     * \brief __m128d type cast operator
     * \details To convert to __m128d
     * \returns __m128d
     */
    uX_constexpr operator __m128d() const uX_noexcept
    {
        return m128_xmmd;
    }

    /** Type cast operator to convert to double*. */
    /*operator double*() const uX_noexcept;*/ //security undesired

    /**
     * \brief vecdouble2 default assignment operator.
     *
     * To convert from type vecdouble2.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(vecdouble2 const& Inxmmd_a) uX_noexcept
    {
        m128_xmmd = Inxmmd_a;
        return *this;
    }

    /**
     * \brief vecdouble2 default assignment operator.
     *
     * To convert from type vecdouble2.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(vecdouble2&& Inxmmd_a) uX_noexcept
    {
        m128_xmmd = Inxmmd_a;
        return *this;
    }

    /**
     * \brief __m128d assignment operator.
     *
     * To convert from type __m128d.
     *
     * \param Inxmmd value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(__m128d const Inxmmd) uX_noexcept
    {
        m128_xmmd = Inxmmd;
        return *this;
    }

    /**
     * \brief vecdouble4 assignment operator.
     *
     * To convert from type vecdouble4.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd = vecdouble2(InHxmmd_a);
        return *this;
    }

    /**
     * \brief vecdouble3 assignment operator.
     *
     * To convert from type vecdouble3.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd = vecdouble2(InHxmmd_a);
        return *this;
    }

    /**
     * \brief vecdouble1 assignment operator.
     *
     * To convert from type vecdouble1.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd = vecdouble2(Inxmmd_a);
        return *this;
    }

    /**
     * \brief vecfloat4 assignment operator.
     *
     * To convert from type vecfloat4.
     *
     * \param Inxmm_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(vecfloat4 const Inxmm_a) uX_noexcept
    {
        m128_xmmd = vecdouble2(Inxmm_a);
        return *this;
    }

    /**
     * \brief vecfloat2 assignment operator
     * \details To convert from type vecfloat2
     * \param[in] Inxmm_a - vecfloat2 Read only
     * \returns vecdouble2
     */
    uX_constexpr vecdouble2& uX_ABI operator=(vecfloat2 const Inxmm_a) uX_noexcept
    {
        m128_xmmd = vecdouble2(Inxmm_a);
        return *this;
    }

    /**
     * \brief vecqword2 assignment operator.
     *
     * To convert from type vecqword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(vecqword2 const Inxmmi_a) uX_noexcept
    {
        m128_xmmd = vecdouble2(Inxmmi_a);
        return *this;
    }

    /**
     * \brief vecuqword2 assignment operator.
     *
     * To convert from type vecuqword2.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(vecuqword2 const Inxmmi_a) uX_noexcept
    {
        m128_xmmd = vecdouble2(Inxmmi_a);
        return *this;
    }

    /**
     * \brief vecdword4 assignment operator.
     *
     * To convert from type vecdword4.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(vecdword4 const Inxmmi_a) uX_noexcept
    {
        m128_xmmd = vecdouble2(Inxmmi_a);
        return *this;
    }

    /**
     * \brief vecudword4 assignment operator.
     *
     * To convert from type vecudword4.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(vecudword4 const Inxmmi_a) uX_noexcept
    {
        m128_xmmd = vecdouble2(Inxmmi_a);
        return *this;
    }

    /**
     * \brief double assignment operator
     *
     * To broadcast the same double value into all elements.
     *
     * \param Indouble_a double value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(double Indouble_a) uX_noexcept
    {
        m128_xmmd = vecdouble2(Indouble_a);
        return *this;
    }

    /**
     * \brief bool_t assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(bool_t const Inbool) uX_noexcept
    {
        m128_xmmd = vecdouble2(Inbool);
        return *this;
    }

    /**
     * \brief bool assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI operator=(bool const Inbool) uX_noexcept
    {
        m128_xmmd = vecdouble2(Inbool);
        return *this;
    }

    /**
     * Assignment operator to convert from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    /*vecdouble2& uX_ABI operator=(uX_InReads(2) double const* const Inpdouble) uX_noexcept;*/ //security undesired

    /**
     * \brief Get vector.
     *
     * Gets vector.
     * \return vector.
     */
    uX_constexpr __m128d uX_ABI get(void) const uX_noexcept
    {
        return m128_xmmd;
    }

    /**
     * \brief Get _x.
     *
     * Gets _x element from vector.
     * \return double.
     */
    uX_constexpr double uX_ABI get_x(void) const uX_noexcept
    {
        return _x;
    }

    /**
     * \brief Get _x _y.
     *
     * Gets _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_xy(void) const uX_noexcept
    {
        return vecdouble2(m128_xmmd);
    }

    /**
     * \brief Get _y.
     *
     * Gets _y element from vector.
     * \return double.
     */
    uX_constexpr double uX_ABI get_y(void) const uX_noexcept
    {
        return _y;
    }

    /**
     * \brief Get _y _x.
     *
     * Gets _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_yx(void) const uX_noexcept
    {
        return vecdouble2(_uX_MM_PERMUTER_IM_PD(m128_xmmd, 1, 0));
    }

    /**
     * \brief Get reference to vector.
     *
     * Gets reference to vector.
     * \return vector.
     */
    uX_constexpr __m128d& uX_ABI ref(void) uX_noexcept
    {
        return m128_xmmd;
    }

    /**
     * \brief Get reference to _x.
     *
     * Gets reference to _x element from vector.
     * \return double.
     */
    uX_constexpr double& uX_ABI ref_x(void) uX_noexcept
    {
        return _x;
    }

    /**
     * \brief Get reference to _x _y.
     *
     * Gets reference to _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_xy(void) uX_noexcept
    {
        /*return static_cast<vecdouble2&>(get_xy());*/
        return *this;
    }

    /**
     * \brief Get reference to _y.
     *
     * Gets reference to _y elements from vector.
     * \return double.
     */
    uX_constexpr double& uX_ABI ref_y(void) uX_noexcept
    {
        return _y;
    }

    /**
     * \brief Get reference to _y _x.
     *
     * Gets reference to _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_yx(void) uX_noexcept
    {
        /*return static_cast<vecdouble2&>(get_yx());*/
        m128_xmmd = get_yx();
        return *this;
    }

    /**
     * \brief Set the vector.
     *
     * Sets all vector elements.
     *
     * \param Inxmm.
     */
    uX_constexpr void uX_ABI set(__m128d const Inxmm) uX_noexcept
    {
        m128_xmmd = Inxmm;
    }

    /**
     * \brief Set the vector _x.
     *
     * Sets the vector _x element.
     *
     * \param Indouble_a.
     */
    uX_constexpr void uX_ABI set_x(double Indouble_a) uX_noexcept
    {
        m128_xmmd = _uX_MM_SETDBL_IM_PD(m128_xmmd, Indouble_a, 0);
    }

    /**
     * \brief Set the vector _x _y.
     *
     * Sets the vector _x _y elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xy(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd = Inxmmd_a;
    }

    /**
     * \brief Set the vector _y.
     *
     * Sets the vector _y element.
     *
     * \param Indouble_a.
     */
    uX_constexpr void uX_ABI set_y(double Indouble_a) uX_noexcept
    {
        m128_xmmd = _uX_MM_SETDBL_IM_PD(m128_xmmd, Indouble_a, 1);
    }

    /**
     * \brief Set the vector _y _x.
     *
     * Sets the vector _y _x elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_yx(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd = _uX_MM_PERMUTER_IM_PD(Inxmmd_a, 1, 0);
    }

    /* Bitwise Operators */

    /**
     * \brief Bitwise function ANDNOT.
     *
     * Performs the compute and not from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI andnot(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_andnot_pd(Inxmmd_b, Inxmmd_a));
    }

    /**
     * \brief Bitwise operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator&(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_and_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Bitwise operator OR.
     *
     * Performs the compute or from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator|(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_or_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Bitwise operator XOR.
     *
     * Performs the compute xor from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator^(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_xor_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Bitwise operator NOT.
     *
     * Performs the compute not from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator~(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_not_pd(Inxmmd_a));
    }

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
    friend uX_constexpr bool_t uX_ABI bandnot(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return _uX_mm_iandnot_pd(Inxmmd_b, Inxmmd_a);
    }

    /**
     * \brief Logical operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     * \return boolean integer.
     */
    friend uX_constexpr bool_t uX_ABI operator&&(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return _uX_mm_iand_pd(Inxmmd_a, Inxmmd_b);
    }

    /**
     * \brief Logical operator OR.
     *
     * Performs the compute OR from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     * \return boolean integer.
     */
    friend uX_constexpr bool_t uX_ABI operator||(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return _uX_mm_ior_pd(Inxmmd_a, Inxmmd_b);
    }

    /**
     * \brief Logical operator NOT.
     *
     * Performs the compute not from the 1 parameter.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend uX_constexpr bool_t uX_ABI operator!(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return _uX_mm_inot_pd(Inxmmd_a);
    }

    /**
     * \brief Logical function HORIZONTAL AND.
     *
     * Performs the compute horizontal and in all bits from the parameter. Returns true if all bits are 1.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend uX_constexpr bool_t uX_ABI horizontal_and(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return _uX_mm_ihand_pd(Inxmmd_a);
    }

    /**
     * \brief Logical function HORIZONTAL OR.
     *
     * Performs the compute horizontal or in all bits from the parameter. Returns true if at least one bit is 1.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend uX_constexpr bool_t uX_ABI horizontal_or(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return _uX_mm_ihor_pd(Inxmmd_a);
    }

    /**
     * \brief Logical operator assignment AND.
     *
     * Performs the compute and from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2& uX_ABI operator&=(vecdouble2& Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble2(_uX_mm_and_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Logical operator assignment OR.
     *
     * Performs the compute or from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2& uX_ABI operator|=(vecdouble2& Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble2(_uX_mm_or_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Logical operator assignment XOR.
     *
     * Performs the compute xor from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2& uX_ABI operator^=(vecdouble2& Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble2(_uX_mm_xor_pd(Inxmmd_a, Inxmmd_b));
    }

    /* Arithmetic Operators */

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator+(vecdouble2 const Inxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_add_pd(Inxmmd_a, _uX_mm_set1_pd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator+(double Indouble_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_add_pd(_uX_mm_set1_pd(Indouble_a), Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator+(vecdouble2 const Inxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_add_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator+(__m128d const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_add_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator+(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_add_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator-(vecdouble2 const Inxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_sub_pd(Inxmmd_a, _uX_mm_set1_pd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator-(double Indouble_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_sub_pd(_uX_mm_set1_pd(Indouble_a), Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator-(vecdouble2 const Inxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_sub_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator-(__m128d const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_sub_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator-(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_sub_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator*(vecdouble2 const Inxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_mul_pd(Inxmmd_a, _uX_mm_set1_pd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator*(double Indouble_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_mul_pd(_uX_mm_set1_pd(Indouble_a), Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator*(vecdouble2 const Inxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_mul_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator*(__m128d const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_mul_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator*(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_mul_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator/(vecdouble2 const Inxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_div_pd(Inxmmd_a, _uX_mm_set1_pd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator/(double Indouble_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_div_pd(_uX_mm_set1_pd(Indouble_a), Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator/(vecdouble2 const Inxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_div_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator/(__m128d const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_div_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator/(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_div_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2& uX_ABI operator+=(vecdouble2& Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble2(_uX_mm_add_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2& uX_ABI operator-=(vecdouble2& Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble2(_uX_mm_sub_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2& uX_ABI operator*=(vecdouble2& Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble2(_uX_mm_mul_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2& uX_ABI operator/=(vecdouble2& Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a = vecdouble2(_uX_mm_div_pd(Inxmmd_a, Inxmmd_b));
    }

    /* Unary Operators */

    /**
     * \brief Unary prefix increment operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmmd_a.
     */
    friend uX_constexpr vecdouble2& uX_ABI operator++(vecdouble2& Inxmmd_a) uX_noexcept
    {
        Inxmmd_a = Inxmmd_a + __m128d_1;
        return Inxmmd_a;
    }

    /**
     * \brief Unary prefix decrement operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmmd_a.
     */
    friend uX_constexpr vecdouble2& uX_ABI operator--(vecdouble2& Inxmmd_a) uX_noexcept
    {
        Inxmmd_a = Inxmmd_a - __m128d_1;
        return Inxmmd_a;
    }

    /**
     * \brief Unary postfix increment operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmmd_a.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator++(vecdouble2& Inxmmd_a, int) uX_noexcept
    {
        vecdouble2 tmpxmm_a0 = Inxmmd_a;
        Inxmmd_a = Inxmmd_a + __m128d_1;
        return tmpxmm_a0;
    }

    /**
     * \brief Unary postfix decrement operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmmd_a.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator--(vecdouble2& Inxmmd_a, int) uX_noexcept
    {
        vecdouble2 tmpxmm_a0 = Inxmmd_a;
        Inxmmd_a = Inxmmd_a - __m128d_1;
        return tmpxmm_a0;
    }

    /**
     * \brief Unary minus operator.
     *
     * Performs the compute minus. Change sign bit, even for 0, INF and NAN.
     *
     * \param Inxmmd_a.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator-(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_negate_pd(Inxmmd_a));
    }

    /* Comparison Operators */

    /**
     * \brief Comparison operator equal.
     *
     * Performs the compute equality from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator==(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_cmpeq_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Comparison operator less than.
     *
     * Performs the compute less than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator<(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_cmplt_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Comparison operator less than or equal.
     *
     * Performs the compute less than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator<=(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_cmple_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Comparison operator greater than.
     *
     * Performs the compute greater than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator>(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_cmpgt_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Comparison operator greater than or equal.
     *
     * Performs the compute greater than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator>=(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_cmpge_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Comparison operator not equal.
     *
     * Performs the compute not equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble2 uX_ABI operator!=(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_cmpneq_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Index operator.
     *
     * Element Access Only, no modifications to elements.
     *
     * \param index element to get.
     * \return double
     */
    uX_constexpr double const& uX_ABI operator[](count_t index) const uX_noexcept
    {
        return extract(index);
    }

    /**
     * \brief Index operator.
     *
     * Element Access and Modification.
     *
     * \param index element to get.
     * \return double
     */
    uX_constexpr double& uX_ABI operator[](count_t index) uX_noexcept
    {
        dblrettype = extract(index);
        return dblrettype;
    }

    /**
     * \brief Load unaligned.
     *
     * Performs load from type double* unaligned.
     *
     * \param Inpdouble pointer value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI load(uX_InReads(2) double const* const Inpdouble) uX_noexcept
    {
        m128_xmmd = _uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble));
        return *this;
    }

    /**
     * \brief Load aligned.
     *
     * Performs load from type double* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Inpdouble pointer value to copy from.
     */
    uX_constexpr vecdouble2& uX_ABI load_a(uX_InReads(2) double const* const Inpdouble) uX_noexcept
    {
        m128_xmmd = _uX_mm_load_pd(reinterpret_cast<__m128d const* const>(Inpdouble));
        return *this;
    }

    /**
     * \brief Store function unaligned.
     *
     * Performs store to type double* unaligned.
     *
     * \param Outpdouble pointer value to store to.
     */
    uX_constexpr void uX_ABI store(uX_OutWrites(2) double* Outpdouble) const uX_noexcept
    {
        _uX_mm_storeu_pd(reinterpret_cast<__m128d*>(Outpdouble), m128_xmmd);
    }

    /**
     * \brief Store function aligned.
     *
     * Performs store to type double* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Outpdouble pointer value to store to.
     */
    uX_constexpr void uX_ABI store_a(uX_OutWrites(2) double* Outpdouble) const uX_noexcept
    {
        _uX_mm_store_pd(reinterpret_cast<__m128d*>(Outpdouble), m128_xmmd);
    }

    /**
     * \brief Insert function.
     *
     * Performs insert from type double on the mask index.
     *
     * \param value double to copy from.
     * \param index element to set.
     * \return vector
     */
    uX_constexpr vecdouble2 const uX_ABI insert(double value, count_t index) uX_noexcept
    {
        if (index > 1) return *this;
        m128_xmmd = _uX_mm_setelts_pd(m128_xmmd, value, index);
        return *this;
    }

    /**
     * \brief Extract function.
     *
     * Performs extract element from mask index.
     *
     * \param index element to get.
     * \return double
     */
    uX_constexpr double uX_ABI extract(count_t index) const uX_noexcept
    {
        if (index > 1) return 0.0;
        return _uX_mm_cvtelts_dbl(m128_xmmd, index);
    }

    /**
     * \brief Set all elements to zero.
     */
    uX_constexpr vecdouble2& uX_ABI zero(void) uX_noexcept
    {
        m128_xmmd = _uX_mm_setzero_pd();
        return *this;
    }

    /**
     * \brief Cut off vector to n elements.
     *
     * Performs the cut off vector to n elements.
     * The last 4-n elements are set to zero.
     *
     * \param indexN element's to cut.
     */
    uX_constexpr vecdouble2& uX_ABI cutoff(count_t indexN) uX_noexcept
    {
        switch (indexN)
        {
            case 1:
                m128_xmmd = _uX_MM_SHUFFLER_IM_PD(m128_xmmd, __m128d_0, 0, 1);
                break;
            case 0:
                m128_xmmd = __m128d_0;
                break;
            default:
                break;
        }
        return *this;
    }

    /**
     * \brief Flip Sign function.
     *
     * Performs the flip sign off vector on all elements.
     *
     * \param Inxmmd_a the vector to flip sign.
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI flip_sign(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_xor_pd(Inxmmd_a, __m128d_sign));
    }

    /**
     * \brief Test if all elements if is zero.
     *
     * Performs the test if all elements are zero.
     *
     * \param Inxmmd_a the vector to test.
     * \return boolean integer.
     */
    friend uX_constexpr bool_t uX_ABI is_zero(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return _uX_mm_iszero_pd(Inxmmd_a);
    }

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
    friend uX_constexpr vecdouble2 uX_ABI select(vecdouble2 const Inxmmd_f, vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_select_pd(Inxmmd_f, Inxmmd_a, Inxmmd_b));
    }

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
    friend uX_constexpr vecdouble2 uX_ABI if_add(vecdouble2 const Inxmmd_f, vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a + (Inxmmd_f & Inxmmd_b);
    }

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
    friend uX_constexpr vecdouble2 uX_ABI if_sub(vecdouble2 const Inxmmd_f, vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a - (Inxmmd_f & Inxmmd_b);
    }

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
    friend uX_constexpr vecdouble2 uX_ABI if_mul(vecdouble2 const Inxmmd_f, vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a * select(Inxmmd_f, Inxmmd_b, vecdouble2(__m128d_1));
    }

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
    friend uX_constexpr vecdouble2 uX_ABI if_div(vecdouble2 const Inxmmd_f, vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return Inxmmd_a / select(Inxmmd_f, Inxmmd_b, vecdouble2(__m128d_1));
    }

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
    friend uX_constexpr vecdouble2 uX_ABI change_sign(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        if ((i0 | i1) == 0) return Inxmmd_a;
        return Inxmmd_a ^ vecdouble2(vecuqword2::constant<i0 ? 0x8000000000000000 : 0, i1 ? 0x8000000000000000 : 0>());
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
    friend uX_constexpr vecdouble2 uX_ABI sign_bit(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_signbit_pd(Inxmmd_a));
    }

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
    friend uX_constexpr vecdouble2 uX_ABI sign_combine(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_signcombine_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Is finite.
     *
     * Gives true for elements that are normal, denormal or zero, false for INF and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI is_finite(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_isfinite_pd(Inxmmd_a));
    }

    /**
     * \brief Is inf.
     *
     * Gives true for elements that are +INF or -INF, false for finite numbers and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI is_inf(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_isinf_pd(Inxmmd_a));
    }

    /**
     * \brief Is nan.
     *
     * Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI is_nan(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_isnan_pd(Inxmmd_a));
    }

    /**
     * \brief Is subnormal.
     *
     * Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI is_subnormal(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_issubnormal_pd(Inxmmd_a));
    }

    /**
     * \brief Is zero or subnormal.
     *
     * Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI is_zero_or_subnormal(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_iszeroorsubnormal_pd(Inxmmd_a));
    }

    /**
     * \brief Infinite.
     *
     * \return a vector where all elements are +INF.
     */
    uX_constexpr vecdouble2& uX_ABI infinite(void) uX_noexcept
    {
        m128_xmmd = _uX_mm_infinite_pd();
        return *this;
    }

    /**
     * \brief Nan.
     *
     * \return a vector where all elements are NAN (quiet).
     */
    uX_constexpr vecdouble2& uX_ABI nan(void) uX_noexcept
    {
        m128_xmmd = _uX_mm_nan_pd();
        return *this;
    }

    /**
     * \brief Is Horizontal add.
     *
     * Calculates the sum of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend uX_constexpr double uX_ABI horizontal_add(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return _uX_mm_horizontaladd_pd(Inxmmd_a);
    }

    /**
     * \brief Horizontal sub.
     *
     * Calculates the subtraction of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend uX_constexpr double uX_ABI horizontal_sub(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return _uX_mm_horizontalsub_pd(Inxmmd_a);
    }

    /**
     * \brief Horizontal mull.
     *
     * Calculates the multiplication of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend uX_constexpr double uX_ABI horizontal_mul(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return _uX_mm_horizontalmul_pd(Inxmmd_a);
    }

    /**
     * \brief Max.
     *
     * Computes the max a > b ? a : b.
     *
     * \param Inxmmd_a the a vector.
     * \param Inxmmd_b the b vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI max(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_max_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Min.
     *
     * Computes the min a < b ? a : b.
     *
     * \param Inxmmd_a the a vector.
     * \param Inxmmd_b the b vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI min(vecdouble2 const Inxmmd_a, vecdouble2 const Inxmmd_b) uX_noexcept
    {
        return vecdouble2(_uX_mm_min_pd(Inxmmd_a, Inxmmd_b));
    }

    /**
     * \brief Abs.
     *
     * Computes the absolute value.
     *
     * \param Inxmmd_a the a vector..
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI abs(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_abs_pd(Inxmmd_a));
    }

    /**
     * \brief Square.
     *
     * Computes the a * a.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI square(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_square_pd(Inxmmd_a));
    }

    /**
     * \brief Scale.
     *
     * Computes the a * s.
     *
     * \param Inxmmd_a the a vector.
     * \param Indouble_s the double scale factor.
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI scale(vecdouble2 const Inxmmd_a, double Indouble_s) uX_noexcept
    {
        return vecdouble2(_uX_mm_scale_pd(Inxmmd_a, Indouble_s));
    }

    /**
     * \brief rcp.
     *
     * Computes the reciprocal.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI rcp(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_rcp_pd(Inxmmd_a));
    }

    /**
     * \brief sqrt.
     *
     * Computes the square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI sqrt(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_sqrt_pd(Inxmmd_a));
    }

    /**
     * \brief rsqrt.
     *
     * Computes the reciprocal square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble2 uX_ABI rsqrt(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        return vecdouble2(_uX_mm_rsqrt_pd(Inxmmd_a));
    }

protected:

private:
    union
    {
        __m128d           m128_xmmd;
        struct
        {
            double           _x, _y;
        };
        double            m128_d[2];
    };
    double               dblrettype;

public:

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
    uX_constexpr count_t const uX_ABI dbl_ptr_lenght(void) const uX_noexcept
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

/*
#ifdef uX_SSE2
#include "./inline/uXxmmvecdouble2.inl"
#endif // uX_SSE2*/

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECDOUBLE2_H
