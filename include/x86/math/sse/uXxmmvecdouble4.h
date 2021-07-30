
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

 /**
  * \defgroup uX_XMM_VECDOUBLE4_CLASS 4 Double Precision SSE SIMD Vector Class
  * \ingroup uX_XMM_VECDOUBLE4
  * To use these class include the header file \p uXxmmvecdouble4.h in your program
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
     * \brief Default constructor initialization from vecdouble4.
     *
     * @param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4(vecdouble4 const& InHxmmd_a) uX_noexcept : m128_xmmd_0(InHxmmd_a.m128_xmmd_0), m128_xmmd_1(InHxmmd_a.m128_xmmd_1) {}

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
    uX_explicit uX_constexpr vecdouble4(__m128d const Inxmmd) uX_noexcept : m128_xmmd_0(Inxmmd), m128_xmmd_1(Inxmmd) {}

    /**
     * \brief Constructor initialization from 2 type __m128d.
     *
     * @param Inxmmd_0 value to copy from.
     * @param Inxmmd_1 value to copy from.
     */
    uX_constexpr vecdouble4(__m128d const Inxmmd_0, __m128d const Inxmmd_1) uX_noexcept : m128_xmmd_0(Inxmmd_0), m128_xmmd_1(Inxmmd_1) {}

    /**
     * \brief Constructor initialization from type vecdouble3.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4(vecdouble3 const InHxmmd_a) uX_noexcept : m128_xmmd_0(InHxmmd_a.get_xmmd_0()), m128_xmmd_1(_uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), m128_xmmd_1, 0, 1)) {}

    /**
     * \brief Constructor initialization from type vecdouble2.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4(vecdouble2 const Inxmmd_a) uX_noexcept : m128_xmmd_0(Inxmmd_a) {}

    /**
     * \brief Constructor initialization from type vecdouble1.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4(vecdouble1 const Inxmmd_a) uX_noexcept : m128_xmmd_0(_uX_mm_move_sd(m128_xmmd_0, Inxmmd_a)) {}
    
    /**
     * \fn uX::xmm::vecdouble4::vecdouble4(vecfloat4 const Inxmm_a) uX_noexcept
     * \brief Constructor initialization from type vecfloat4
     * \details Constructor converts float _x _y _z _w elements from /p vecfloat4 to _x _y _z _w elements
     * \param[in] Inxmm_a - vecfloat4 Read only
     * \warning Converts the value from float to double.
     * \Note Sets the _x _y _z _w double elements
     */
    uX_constexpr vecdouble4(vecfloat4 const Inxmm_a) uX_noexcept : m128_xmmd_0(_uX_mm_cvtps_pd(Inxmm_a)), m128_xmmd_1(_uX_mm_cvtps_pd(Inxmm_a.get_zwxy())) {}

    /**
     * \brief Constructor initialization from type vecqword4.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecdouble4(vecqword4 const InHxmmi_a) uX_noexcept : m128_xmmd_0(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_0())), m128_xmmd_1(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_1())) {}

    /**
     * \brief Constructor initialization from type vecuqword4.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecdouble4(vecuqword4 const InHxmmi_a) uX_noexcept : m128_xmmd_0(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_0())), m128_xmmd_1(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_1())) {}

    /**
     * \brief Constructor to broadcast the same double value into all elements.
     *
     * \param Indouble_a double value to copy from.
     */
    uX_explicit uX_constexpr vecdouble4(double Indouble_a) uX_noexcept : m128_xmmd_0(_uX_mm_set1_pd(Indouble_a)), m128_xmmd_1(_uX_mm_set1_pd(Indouble_a)) {}

    /**
     * \brief Constructor initialization from 4 type double.
     *
     * \param Indouble_x value to copy from.
     * \param Indouble_y value to copy from.
     * \param Indouble_z value to copy from.
     * \param Indouble_w value to copy from.
     */
    uX_constexpr vecdouble4(double Indouble_x, double Indouble_y, double Indouble_z, double Indouble_w) uX_noexcept : m128_xmmd_0(_uX_mm_setr_pd(Indouble_x, Indouble_y)), m128_xmmd_1(_uX_mm_setr_pd(Indouble_z, Indouble_w)) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecdouble4(bool_t const Inbool_a) uX_noexcept : m128_xmmd_0(vecdouble2(vecuqword2(Inbool_a))), m128_xmmd_1(vecdouble2(vecuqword2(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 4 type bool.
     *
     * \param Inbool_x value to copy from.
     * \param Inbool_y value to copy from.
     * \param Inbool_z value to copy from.
     * \param Inbool_w value to copy from.
     */
    uX_constexpr vecdouble4(bool_t const Inbool_x, bool_t const Inbool_y, bool_t const Inbool_z, bool_t const Inbool_w) uX_noexcept : m128_xmmd_0(vecdouble2(vecuqword2(Inbool_x, Inbool_y))), m128_xmmd_1(vecdouble2(vecuqword2(Inbool_z, Inbool_w))) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecdouble4(bool const Inbool_a) uX_noexcept : m128_xmmd_0(vecdouble2(vecuqword2(Inbool_a))), m128_xmmd_1(vecdouble2(vecuqword2(Inbool_a))) {}

    /**
     * \brief Constructor initialization from 4 type bool.
     *
     * \param Inbool_x value to copy from.
     * \param Inbool_y value to copy from.
     * \param Inbool_z value to copy from.
     * \param Inbool_w value to copy from.
     */
    uX_constexpr vecdouble4(bool const Inbool_x, bool const Inbool_y, bool const Inbool_z, bool const Inbool_w) uX_noexcept : m128_xmmd_0(vecdouble2(vecuqword2(Inbool_x, Inbool_y))), m128_xmmd_1(vecdouble2(vecuqword2(Inbool_z, Inbool_w))) {}

    /**
     * \brief Constructor initialization from type __m128d*.
     *
     * \param Inpm128_xmmd pointer value to copy from.
     */
    uX_explicit uX_constexpr vecdouble4(uX_InReads(2) __m128d const* const Inpm128_xmmd) uX_noexcept : m128_xmmd_0(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpm128_xmmd))),
                                                                                                       m128_xmmd_1(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpm128_xmmd+1))) {}

    /**
     * \brief Constructor initialization from type double*.
     *
     * \param Inpdouble pointer value to copy from.
     */
    uX_explicit uX_constexpr vecdouble4(uX_InReads(4) double const* const Inpdouble) uX_noexcept : m128_xmmd_0(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble))),
                                                                                                   m128_xmmd_1(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble+2))) {}

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
    uX_constexpr vecdouble4& uX_ABI operator=(vecdouble4 const& InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = InHxmmd_a.m128_xmmd_0;
        m128_xmmd_1 = InHxmmd_a.m128_xmmd_1;
        return *this;
    }

    /**
     * \brief vecdouble4 default assignment operator.
     *
     * To convert from type vecdouble4.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(vecdouble4&& InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = InHxmmd_a.m128_xmmd_0;
        m128_xmmd_1 = InHxmmd_a.m128_xmmd_1;
        return *this;
    }

    /**
     * \brief __m128d assignment operator.
     *
     * To convert from type __m128d.
     *
     * \param Inxmmd value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(__m128d const Inxmmd) uX_noexcept
    {
        m128_xmmd_0 = Inxmmd;
        m128_xmmd_1 = Inxmmd;
        return *this;
    }

    /**
     * \brief vecdouble3 assignment operator.
     *
     * To convert from type vecdouble3.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = InHxmmd_a.get_xmmd_0();
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), m128_xmmd_1, 0, 1);
        return *this;
    }

    /**
     * \brief vecdouble2 assignment operator.
     *
     * To convert from type vecdouble2.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = Inxmmd_a;
        return *this;
    }

    /**
     * \brief vecdouble1 assignment operator.
     *
     * To convert from type vecdouble1.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_move_sd(m128_xmmd_0, Inxmmd_a);
        return *this;
    }

    /**
     * \brief vecfloat4 assignment operator.
     *
     * To convert from type vecfloat4.
     *
     * \param Inxmm_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(vecfloat4 const Inxmm_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_cvtps_pd(Inxmm_a);
        m128_xmmd_1 = _uX_mm_cvtps_pd(Inxmm_a.get_zwxy());
        return *this;
    }

    /**
     * \brief vecqword4 assignment operator.
     *
     * To convert from type vecqword4.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(vecqword4 const InHxmmi_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_0());
        m128_xmmd_1 = _uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_1());
        return *this;
    }

    /**
     * \brief vecuqword4 assignment operator.
     *
     * To convert from type vecuqword4.
     *
     * \param Inxmmi_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(vecuqword4 const InHxmmi_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_0());
        m128_xmmd_1 = _uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_1());
        return *this;
    }

    /**
     * \brief double assignment operator
     *
     * To broadcast the same double value into all elements.
     *
     * \param Indouble_a double value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(double Indouble_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_set1_pd(Indouble_a);
        m128_xmmd_1 = _uX_mm_set1_pd(Indouble_a);
        return *this;
    }

    /**
     * \brief bool_t assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(bool_t const Inbool_a) uX_noexcept
    {
        m128_xmmd_0 = vecdouble2(vecuqword2(Inbool_a, Inbool_a));
        m128_xmmd_1 = vecdouble2(vecuqword2(Inbool_a, Inbool_a));
        return *this;
    }

    /**
     * \brief bool assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI operator=(bool const Inbool_a) uX_noexcept
    {
        m128_xmmd_0 = vecdouble2(vecuqword2(Inbool_a, Inbool_a));
        m128_xmmd_1 = vecdouble2(vecuqword2(Inbool_a, Inbool_a));
        return *this;
    }

    /**
     * \brief Assignment operator to convert from type double*.
     *
     * \param Inpdouble value to copy from.
     */
    /*vecdouble4& uX_ABI operator=(uX_InReads(4) double const* const Inpdouble) uX_noexcept;*/ //security undesired

    /**
     * \brief Get vector 0.
     *
     * Gets vector 0.
     * \return vector 0.
     */
    uX_constexpr __m128d uX_ABI get_xmmd_0(void) const uX_noexcept
    {
        return m128_xmmd_0;
    }

    /**
     * \brief Get vector 1.
     *
     * Gets vector 1.
     * \return vector 1.
     */
    uX_constexpr __m128d uX_ABI get_xmmd_1(void) const uX_noexcept
    {
        return m128_xmmd_1;
    }

    /**
     * \brief Get reference to vector 0.
     *
     * Gets reference to vector 0.
     * \return vector 0.
     */
    uX_constexpr __m128d& uX_ABI ref_xmmd_0(void) uX_noexcept
    {
        return m128_xmmd_0;
    }

    /**
     * \brief Get reference to vector 1.
     *
     * Gets reference to vector 1.
     * \return vector 1.
     */
    uX_constexpr __m128d& uX_ABI ref_xmmd_1(void) uX_noexcept
    {
        return m128_xmmd_1;
    }

    /**
     * \brief Set the vector 0.
     *
     * Sets vector 0 element.
     *
     * \param Inxmmd.
     */
    uX_constexpr void uX_ABI set_xmmd_0(__m128d const Inxmmd) uX_noexcept
    {
        m128_xmmd_0 = Inxmmd;
    }

    /**
     * \brief Set the vector 1.
     *
     * Sets vector 1 element.
     *
     * \param Inxmmd.
     */
    uX_constexpr void uX_ABI set_xmmd_1(__m128d const Inxmmd) uX_noexcept
    {
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(Inxmmd, __m128d_false, 0, 0);
    }

    /**
     * \brief Get vector.
     *
     * Gets vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get(void) const uX_noexcept
    {
        return *this;
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
        return vecdouble2(m128_xmmd_0);
    }

    /**
     * \brief Get _x _y _z.
     *
     * Gets _x _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_xyz(void) const uX_noexcept
    {
        return vecdouble3(m128_xmmd_0, m128_xmmd_1);
    }

    /**
     * \brief Get _x _y _z _w.
     *
     * Gets _x _y _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_xyzw(void) const uX_noexcept
    {
        return vecdouble4(m128_xmmd_0, m128_xmmd_1);
    }

    /**
     * \brief Get _x _y _w.
     *
     * Gets _x _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_xyw(void) const uX_noexcept
    {
        return vecdouble3(m128_xmmd_0, _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
    }

    /**
     * \brief Get _x _y _w _z.
     *
     * Gets _x _y _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_xywz(void) const uX_noexcept
    {
        return vecdouble4(m128_xmmd_0, _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0));
    }

    /**
     * \brief Get _x _z.
     *
     * Gets _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_xz(void) const uX_noexcept
    {
        return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0));
    }

    /**
     * \brief Get _x _z _y.
     *
     * Gets _x _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_xzy(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
    }

    /**
     * \brief Get _x _z _y _w.
     *
     * Gets _x _z _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_xzyw(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1));
    }

    /**
     * \brief Get _x _z _w.
     *
     * Gets _x _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_xzw(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), m128_xmmd_1);
    }

    /**
     * \brief Get _x _z _w _y.
     *
     * Gets _x _z _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_xzwy(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1));
    }

    /**
     * \brief Get _x _w.
     *
     * Gets _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_xw(void) const uX_noexcept
    {
        return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1));
    }

    /**
     * \brief Get _x _w _y.
     *
     * Gets _x _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_xwy(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
    }

    /**
     * \brief Get _x _w _y _z.
     *
     * Gets _x _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_xwyz(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0));
    }

    /**
     * \brief Get _x _w _z.
     *
     * Gets _x _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_xwz(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), m128_xmmd_1);
    }

    /**
     * \brief Get _x _w _z _y.
     *
     * Gets _x _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_xwzy(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1));
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
        return vecdouble2(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0));
    }

    /**
     * \brief Get _y _x _z.
     *
     * Gets _y _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_yxz(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), m128_xmmd_1);
    }

    /**
     * \brief Get _y _x _z _w.
     *
     * Gets _y _x _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_yxzw(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), m128_xmmd_1);
    }

    /**
     * \brief Get _y _x _w.
     *
     * Gets _y _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_yxw(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
    }

    /**
     * \brief Get _y _x _w _z.
     *
     * Gets _y _x _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_yxwz(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0));
    }

    /**
     * \brief Get _y _z.
     *
     * Gets _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_yz(void) const uX_noexcept
    {
        return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0));
    }

    /**
     * \brief Get _y _z _x.
     *
     * Gets _y _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_yzx(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), m128_xmmd_0);
    }

    /**
     * \brief Get _y _z _x _w.
     *
     * Gets _y _z _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_yzxw(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1));
    }

    /**
     * \brief Get _y _z _w.
     *
     * Gets _y _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_yzw(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
    }

    /**
     * \brief Get _y _z _w _x.
     *
     * Gets _y _z _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_yzwx(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0));
    }

    /**
     * \brief Get _y _w.
     *
     * Gets _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_yw(void) const uX_noexcept
    {
        return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1));
    }

    /**
     * \brief Get _y _w _x.
     *
     * Gets _y _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_ywx(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), m128_xmmd_0);
    }

    /**
     * \brief Get _y _w _y _z.
     *
     * Gets _y _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_ywxz(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0));
    }

    /**
     * \brief Get _y _w _z.
     *
     * Gets _y _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_ywz(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), m128_xmmd_1);
    }

    /**
     * \brief Get _y _w _z _y.
     *
     * Gets _y _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_ywzx(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0));
    }

    /**
     * \brief Get _z.
     *
     * Gets _z element from vector.
     * \return double.
     */
    uX_constexpr double uX_ABI get_z(void) const uX_noexcept
    {
        return _z;
    }

    /**
     * \brief Get _z _x.
     *
     * Gets _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_zx(void) const uX_noexcept
    {
        return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0));
    }

    /**
     * \brief Get _z _x _y.
     *
     * Gets _z _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_zxy(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
    }

    /**
     * \brief Get _z _x _y _w.
     *
     * Gets _z _x _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_zxyw(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 1));
    }

    /**
     * \brief Get _z _x _w.
     *
     * Gets _z _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_zxw(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
    }

    /**
     * \brief Get _z _x _w _y.
     *
     * Gets _z _x _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_zxwy(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1));
    }

    /**
     * \brief Get _z _y.
     *
     * Gets _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_zy(void) const uX_noexcept
    {
        return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1));
    }

    /**
     * \brief Get _z _y _x.
     *
     * Gets _z _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_zyx(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), m128_xmmd_0);
    }

    /**
     * \brief Get _z _y _x _w.
     *
     * Gets _z _y _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_zyxw(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 1));
    }

    /**
     * \brief Get _z _y _w.
     *
     * Gets _z _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_zyw(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 1));
    }

    /**
     * \brief Get _z _y _w _x.
     *
     * Gets _z _y _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_zywx(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0));
    }

    /**
     * \brief Get _z _w.
     *
     * Gets _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_zw(void) const uX_noexcept
    {
        return vecdouble2(m128_xmmd_1);
    }

    /**
     * \brief Get _z _w _x.
     *
     * Gets _z _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_zwx(void) const uX_noexcept
    {
        return vecdouble3(m128_xmmd_1, m128_xmmd_0);
    }

    /**
     * \brief Get _z _w _x _y.
     *
     * Gets _z _w _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_zwxy(void) const uX_noexcept
    {
        return vecdouble4(m128_xmmd_1, m128_xmmd_0);
    }

    /**
     * \brief Get _z _w _y.
     *
     * Gets _z _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_zwy(void) const uX_noexcept
    {
        return vecdouble3(m128_xmmd_1, _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
    }

    /**
     * \brief Get _z _w _y _x.
     *
     * Gets _z _w _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_zwyx(void) const uX_noexcept
    {
        return vecdouble4(m128_xmmd_1, _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0));
    }

    /**
     * \brief Get _w.
     *
     * Gets _w element from vector.
     * \return double.
     */
    uX_constexpr double uX_ABI get_w(void) const uX_noexcept
    {
        return _w;
    }

    /**
     * \brief Get _w _x.
     *
     * Gets _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_wx(void) const uX_noexcept
    {
        return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0));
    }

    /**
     * \brief Get _w _x _y.
     *
     * Gets _w _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_wxy(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
    }

    /**
     * \brief Get _w _x _y _z.
     *
     * Gets _w _x _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_wxyz(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 1, 0));
    }

    /**
     * \brief Get _w _x _z.
     *
     * Gets _w _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_wxz(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), m128_xmmd_1);
    }

    /**
     * \brief Get _w _x _z _y.
     *
     * Gets _w _x _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_wxzy(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 0), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 1));
    }

    /**
     * \brief Get _w _y.
     *
     * Gets _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_wy(void) const uX_noexcept
    {
        return vecdouble2(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1));
    }

    /**
     * \brief Get _w _y _x.
     *
     * Gets _w _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_wyx(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), m128_xmmd_0);
    }

    /**
     * \brief Get _w _y _x _z.
     *
     * Gets _w _y _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_wyxz(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, m128_xmmd_1, 0, 0));
    }

    /**
     * \brief Get _w _y _z.
     *
     * Gets _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_wyz(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), m128_xmmd_1);
    }

    /**
     * \brief Get _w _y _z _x.
     *
     * Gets _w _y _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_wyzx(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 1, 1), _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, m128_xmmd_0, 0, 0));
    }

    /**
     * \brief Get _w _z.
     *
     * Gets _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2 uX_ABI get_wz(void) const uX_noexcept
    {
        return vecdouble2(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0));
    }

    /**
     * \brief Get _w _z _x.
     *
     * Gets _w _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_wzx(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), m128_xmmd_0);
    }

    /**
     * \brief Get _w _z _x _y.
     *
     * Gets _w _z _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_wzxy(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), m128_xmmd_0);
    }

    /**
     * \brief Get _w _z _y.
     *
     * Gets _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3 uX_ABI get_wzy(void) const uX_noexcept
    {
        return vecdouble3(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 1));
    }

    /**
     * \brief Get _w _z _y _x.
     *
     * Gets _w _z _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4 uX_ABI get_wzyx(void) const uX_noexcept
    {
        return vecdouble4(_uX_MM_PERMUTER_IM_PD(m128_xmmd_1, 1, 0), _uX_MM_PERMUTER_IM_PD(m128_xmmd_0, 1, 0));
    }

    /**
     * \brief Get reference to vector.
     *
     * Gets reference to vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref(void) uX_noexcept
    {
        return *this;
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
        vecdbl2rettype = get_xy();
        return vecdbl2rettype;
    }

    /**
     * \brief Get reference to _x _y _z.
     *
     * Gets reference to _x _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_xyz(void) uX_noexcept
    {
        vecdbl3rettype = get_xyz();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _x _y _z _w.
     *
     * Gets reference to _x _y _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_xyzw(void) uX_noexcept
    {
        return *this;
    }

    /**
     * \brief Get reference to _x _y _w.
     *
     * Gets reference too _x _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_xyw(void) uX_noexcept
    {
        vecdbl3rettype = get_xyw();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _x _y _w _z.
     *
     * Gets reference to _x _y _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_xywz(void) uX_noexcept
    {
        *this = get_xywz();
        return *this;
    }

    /**
     * \brief Get reference to _x _z.
     *
     * Gets reference to _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_xz(void) uX_noexcept
    {
        vecdbl2rettype = get_xz();
        return vecdbl2rettype;
    }

    /**
     * \brief Get reference to _x _z _y.
     *
     * Gets reference to _x _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_xzy(void) uX_noexcept
    {
        vecdbl3rettype = get_xzy();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _x _z _y _w.
     *
     * Gets reference to _x _z _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_xzyw(void) uX_noexcept
    {
        *this = get_xzyw();
        return *this;
    }

    /**
     * \brief Get reference to _x _z _w.
     *
     * Gets reference to _x _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_xzw(void) uX_noexcept
    {
        vecdbl3rettype = get_xzw();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _x _z _w _y.
     *
     * Gets reference to _x _z _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_xzwy(void) uX_noexcept
    {
        *this = get_xzwy();
        return *this;
    }

    /**
     * \brief Get reference to _x _w.
     *
     * Gets reference to _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_xw(void) uX_noexcept
    {
        vecdbl2rettype = get_xw();
        return vecdbl2rettype;
    }

    /**
     * \brief Get reference to _x _w _y.
     *
     * Gets reference to _x _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_xwy(void) uX_noexcept
    {
        vecdbl3rettype = get_xwy();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _x _w _y _z.
     *
     * Gets reference to _x _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_xwyz(void) uX_noexcept
    {
        *this = get_xwyz();
        return *this;
    }

    /**
     * \brief Get reference to _x _w _z.
     *
     * Gets reference to _x _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_xwz(void) uX_noexcept
    {
        vecdbl3rettype = get_xwz();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _x _w _z _y.
     *
     * Gets reference to _x _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_xwzy(void) uX_noexcept
    {
        *this = get_xwzy();
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
        vecdbl2rettype = get_yx();
        return vecdbl2rettype;
    }

    /**
     * \brief Get reference to _y _x _z.
     *
     * Gets reference to _y _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_yxz(void) uX_noexcept
    {
        vecdbl3rettype = get_yxz();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _y _x _z _w.
     *
     * Gets reference to _y _x _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_yxzw(void) uX_noexcept
    {
        *this = get_yxzw();
        return *this;
    }

    /**
     * \brief Get reference to _y _x _w.
     *
     * Gets reference to _y _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_yxw(void) uX_noexcept
    {
        vecdbl3rettype = get_yxw();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _y _x _w _z.
     *
     * Gets reference to _y _x _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_yxwz(void) uX_noexcept
    {
        *this = get_yxwz();
        return *this;
    }

    /**
     * \brief Get reference to _y _z.
     *
     * Gets reference to _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_yz(void) uX_noexcept
    {
        vecdbl2rettype = get_yz();
        return vecdbl2rettype;
    }

    /**
     * \brief Get reference to _y _z _x.
     *
     * Gets reference to _y _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_yzx(void) uX_noexcept
    {
        vecdbl3rettype = get_yzx();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _y _z _x _w.
     *
     * Gets reference to _y _z _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_yzxw(void) uX_noexcept
    {
        *this = get_yzxw();
        return *this;
    }

    /**
     * \brief Get reference to _y _z _w.
     *
     * Gets reference to _y _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_yzw(void) uX_noexcept
    {
        vecdbl3rettype = get_yzw();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _y _z _w _x.
     *
     * Gets reference to _y _z _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_yzwx(void) uX_noexcept
    {
        *this = get_yzwx();
        return *this;
    }

    /**
     * \brief Get reference to _y _w.
     *
     * Gets reference to _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_yw(void) uX_noexcept
    {
        vecdbl2rettype = get_yw();
        return vecdbl2rettype;
    }

    /**
     * \brief Get reference to _y _w _x.
     *
     * Gets reference to _y _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_ywx(void) uX_noexcept
    {
        vecdbl3rettype = get_ywx();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _y _w _y _z.
     *
     * Gets reference to _y _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_ywxz(void) uX_noexcept
    {
        *this = get_ywxz();
        return *this;
    }

    /**
     * \brief Get reference to _y _w _z.
     *
     * Gets reference to _y _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_ywz(void) uX_noexcept
    {
        vecdbl3rettype = get_ywz();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _y _w _z _y.
     *
     * Gets reference to _y _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_ywzx(void) uX_noexcept
    {
        *this = get_ywzx();
        return *this;
    }

    /**
     * \brief Get reference to _z.
     *
     * Gets reference to _z element from vector.
     * \return double.
     */
    uX_constexpr double& uX_ABI ref_z(void) uX_noexcept
    {
        return _z;
    }

    /**
     * \brief Get reference to _z _x.
     *
     * Gets reference to _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_zx(void) uX_noexcept
    {
        vecdbl2rettype = get_zx();
        return vecdbl2rettype;
    }

    /**
     * \brief Get reference to _z _x _y.
     *
     * Gets reference to _z _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_zxy(void) uX_noexcept
    {
        vecdbl3rettype = get_zxy();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _z _x _y _w.
     *
     * Gets reference to _z _x _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_zxyw(void) uX_noexcept
    {
        *this = get_zxyw();
        return *this;
    }

    /**
     * \brief Get reference to _z _x _w.
     *
     * Gets reference to _z _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_zxw(void) uX_noexcept
    {
        vecdbl3rettype = get_zxw();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _z _x _w _y.
     *
     * Gets reference to _z _x _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_zxwy(void) uX_noexcept
    {
        *this = get_zxwy();
        return *this;
    }

    /**
     * \brief Get reference to _z _y.
     *
     * Gets reference to _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_zy(void) uX_noexcept
    {
        vecdbl2rettype = get_zy();
        return vecdbl2rettype;
    }

    /**
     * \brief Get reference to _z _y _x.
     *
     * Gets reference to _z _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_zyx(void) uX_noexcept
    {
        vecdbl3rettype = get_zyx();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _z _y _x _w.
     *
     * Gets reference to _z _y _x _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_zyxw(void) uX_noexcept
    {
        *this = get_zyxw();
        return *this;
    }

    /**
     * \brief Get reference to _z _y _w.
     *
     * Gets reference to _z _y _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_zyw(void) uX_noexcept
    {
        vecdbl3rettype = get_zyw();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _z _y _w _x.
     *
     * Gets reference to _z _y _w _xelements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_zywx(void) uX_noexcept
    {
        *this = get_zywx();
        return *this;
    }

    /**
     * \brief Get reference to _z _w.
     *
     * Gets reference to _z _w elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_zw(void) uX_noexcept
    {
        vecdbl2rettype = get_zw();
        return vecdbl2rettype;
    }

    /**
     * \brief Get reference to _z _w _x.
     *
     * Gets reference to _z _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_zwx(void) uX_noexcept
    {
        vecdbl3rettype = get_zwx();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _z _w _x _y.
     *
     * Gets reference to _z _w _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_zwxy(void) uX_noexcept
    {
        *this = get_zwxy();
        return *this;
    }

    /**
     * \brief Get reference to _z _w _y.
     *
     * Gets reference to _z _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_zwy(void) uX_noexcept
    {
        vecdbl3rettype = get_zwy();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _z _w _y _x.
     *
     * Gets reference to _z _w _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_zwyx(void) uX_noexcept
    {
        *this = get_zwyx();
        return *this;
    }

    /**
     * \brief Get reference to _w.
     *
     * Gets reference to _w element from vector.
     * \return double.
     */
    uX_constexpr double& uX_ABI ref_w(void) uX_noexcept
    {
        return _w;
    }

    /**
     * \brief Get reference to _w _x.
     *
     * Gets reference to _w _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_wx(void) uX_noexcept
    {
        vecdbl2rettype = get_wx();
        return vecdbl2rettype;
    }

    /**
     * \brief Get reference to _w _x _y.
     *
     * Gets reference to _w _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_wxy(void) uX_noexcept
    {
        vecdbl3rettype = get_wxy();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _w _x _y _z.
     *
     * Gets reference to _w _x _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_wxyz(void) uX_noexcept
    {
        *this = get_wxyz();
        return *this;
    }

    /**
     * \brief Get reference to _w _x _z.
     *
     * Gets reference to _w _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_wxz(void) uX_noexcept
    {
        vecdbl3rettype = get_wxz();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _w _x _z _y.
     *
     * Gets reference to _w _x _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_wxzy(void) uX_noexcept
    {
        *this = get_wxzy();
        return *this;
    }

    /**
     * \brief Get reference to _w _y.
     *
     * Gets reference to _w _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_wy(void) uX_noexcept
    {
        vecdbl2rettype = get_wy();
        return vecdbl2rettype;
    }

    /**
     * \brief Get reference to _w _y _x.
     *
     * Gets reference to _w _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_wyx(void) uX_noexcept
    {
        vecdbl3rettype = get_wyx();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _w _y _x _z.
     *
     * Gets reference to _w _y _x _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_wyxz(void) uX_noexcept
    {
        *this = get_wyxz();
        return *this;
    }

    /**
     * \brief Get reference to _w _y _z.
     *
     * Gets reference to _w _y _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_wyz(void) uX_noexcept
    {
        vecdbl3rettype = get_wyz();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _w _y _z _x.
     *
     * Gets reference to _w _y _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_wyzx(void) uX_noexcept
    {
        *this = get_wyzx();
        return *this;
    }

    /**
     * \brief Get reference to _w _z.
     *
     * Gets reference to _w _z elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble2& uX_ABI ref_wz(void) uX_noexcept
    {
        vecdbl2rettype = get_wz();
        return vecdbl2rettype;
    }

    /**
     * \brief Get reference to _w _z _x.
     *
     * Gets reference to _w _z _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_wzx(void) uX_noexcept
    {
        vecdbl3rettype = get_wzx();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _w _z _x _y.
     *
     * Gets reference to _w _z _x _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_wzxy(void) uX_noexcept
    {
        *this = get_wzxy();
        return *this;
    }

    /**
     * \brief Get reference to _w _z _y.
     *
     * Gets reference to _w _z _y elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref_wzy(void) uX_noexcept
    {
        vecdbl3rettype = get_wzy();
        return vecdbl3rettype;
    }

    /**
     * \brief Get reference to _w _z _y _x
     *
     * Gets reference to _w _z _y _x elements from vector.
     * \return vector.
     */
    uX_constexpr vecdouble4& uX_ABI ref_wzyx(void) uX_noexcept
    {
        *this = get_wzyx();
        return *this;
    }

    /**
     * \brief Set the vector.
     *
     * Sets all vector elements.
     *
     * \param InHxmmd_a.
     */
    uX_constexpr void uX_ABI set(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = InHxmmd_a.m128_xmmd_0;
        m128_xmmd_1 = InHxmmd_a.m128_xmmd_1;
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
        m128_xmmd_0 = _uX_MM_SETDBL_IM_PD(m128_xmmd_0, Indouble_a, 0);
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
        m128_xmmd_0 = Inxmmd_a;
    }

    /**
     * \brief Set the vector _x _y _z.
     *
     * Sets the vector _x _y _z elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xyz(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = InHxmmd_a.get_xmmd_0();
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), m128_xmmd_1, 0, 1);
    }

    /**
     * \brief Set the vector _x _y _z _w.
     *
     * Sets the vector _x _y _z _w elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xyzw(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = InHxmmd_a.m128_xmmd_0;
        m128_xmmd_1 = InHxmmd_a.m128_xmmd_1;
    }

    /**
     * \brief Set the vector _x _y _w.
     *
     * Sets the vector _x _y _w elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xyw(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = InHxmmd_a.get_xmmd_0();
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, InHxmmd_a.get_xmmd_1(), 0, 0);
    }

    /**
     * \brief Set the vector _x _y _w _z.
     *
     * Sets the vector _x _y _w _z elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xywz(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = InHxmmd_a.m128_xmmd_0;
        m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_1, 1, 0);
    }

    /**
     * \brief Set the vector _x _z.
     *
     * Sets the vector _x _z elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xz(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_0, 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_1, 1, 1);
    }

    /**
     * \brief Set the vector _x _z _y.
     *
     * Sets the vector _x _z _y elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xzy(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_1, 1, 1);
    }

    /**
     * \brief Set the vector _x _z _y _w.
     *
     * Sets the vector _x _z _y _w elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xzyw(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 1);
    }

    /**
     * \brief Set the vector _x _z _w.
     *
     * Sets the vector _x _z _w elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xzw(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_0, 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 1, 0);
    }

    /**
     * \brief Set the vector _x _z _w _y.
     *
     * Sets the vector _x _z _w _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xzwy(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 0);
    }

    /**
     * \brief Set the vector _x _w.
     *
     * Sets the vector _x _w elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xw(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_0, 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, Inxmmd_a, 0, 1);
    }

    /**
     * \brief Set the vector _x _w _y.
     *
     * Sets the vector _x _w _y elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xwy(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, InHxmmd_a.get_xmmd_0(), 0, 1);
    }

    /**
     * \brief Set the vector _x _w _y _z.
     *
     * Sets the vector _x _w _y _z elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xwyz(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 1);
    }

    /**
     * \brief Set the vector _x _w _z.
     *
     * Sets the vector _x _w _z elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xwz(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_0, 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 1);
    }

    /**
     * \brief Set the vector _x _w _z _y.
     *
     * Sets the vector _x _w _z _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_xwzy(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 1);
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
        m128_xmmd_0 = _uX_MM_SETDBL_IM_PD(m128_xmmd_0, Indouble_a, 1);
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
        m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(Inxmmd_a, 1, 0);
    }

    /**
     * \brief Set the vector _y _x _z.
     *
     * Sets the vector _y _x _z elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_yxz(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.get_xmmd_0(), 1, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), m128_xmmd_1, 0, 1);
    }

    /**
     * \brief Set the vector _y _x _z _w.
     *
     * Sets the vector _y _x _z _w elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_yxzw(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_0, 1, 0);
        m128_xmmd_1 = InHxmmd_a.m128_xmmd_1;
    }

    /**
     * \brief Set the vector _y _x _w.
     *
     * Sets the vector _y _x _w elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_yxw(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.get_xmmd_0(), 1, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, InHxmmd_a.get_xmmd_1(), 0, 0);
    }

    /**
     * \brief Set the vector _y _x _w _z.
     *
     * Sets the vector _y _x _w _z elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_yxwz(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_0, 1, 0);
        m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_1, 1, 0);
    }

    /**
     * \brief Set the vector _y _z.
     *
     * Sets the vector _y _z elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_yz(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, Inxmmd_a, 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_1, 1, 1);
    }

    /**
     * \brief Set the vector _y _z _x.
     *
     * Sets the vector _y _z _x elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_yzx(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_1, 1, 1);
    }

    /**
     * \brief Set the vector _y _z _x _w.
     *
     * Sets the vector _y _z _x _w elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_yzxw(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 1);
    }

    /**
     * \brief Set the vector _y _z _w.
     *
     * Sets the vector _y _z _w elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_yzw(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, InHxmmd_a.get_xmmd_0(), 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 1, 0);
    }

    /**
     * \brief Set the vector _y _z _w _x.
     *
     * Sets the vector _y _z _w _x elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_yzwx(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 0);
    }

    /**
     * \brief Set the vector _y _w.
     *
     * Sets the vector _y _w elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_yw(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, Inxmmd_a, 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, Inxmmd_a, 0, 1);
    }

    /**
     * \brief Set the vector _y _w _x.
     *
     * Sets the vector _y _w _x elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_ywx(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, InHxmmd_a.get_xmmd_0(), 0, 1);
    }

    /**
     * \brief Set the vector _y _w _y _z.
     *
     * Sets the vector _y _w _y _z elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_ywxz(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 1);
    }

    /**
     * \brief Set the vector _y _w _z.
     *
     * Sets the vector _y _w _z elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_ywz(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, InHxmmd_a.get_xmmd_0(), 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 1);
    }

    /**
     * \brief Set the vector _y _w _z _y.
     *
     * Sets the vector _y _w _z _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_ywzx(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 1);
    }

    /**
     * \brief Set the vector _z.
     *
     * Sets the vector _z element.
     *
     * \param Indouble_a.
     */
    uX_constexpr void uX_ABI set_z(double Indouble_a) uX_noexcept
    {
        m128_xmmd_1 = _uX_MM_SETDBL_IM_PD(m128_xmmd_1, Indouble_a, 0);
    }

    /**
     * \brief Set the vector _z _x.
     *
     * Sets the vector _z _x elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zx(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_0, 1, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_1, 0, 1);
    }

    /**
     * \brief Set the vector _z _x _y.
     *
     * Sets the vector _z _x _y elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zxy(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 1, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_1, 0, 1);
    }

    /**
     * \brief Set the vector _z _x _y _w.
     *
     * Sets the vector _z _x _y _w elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zxyw(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 1);
    }

    /**
     * \brief Set the vector _z _x _w.
     *
     * Sets the vector _z _x _w elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zxw(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_0, 1, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 0, 0);
    }

    /**
     * \brief Set the vector _z _x _w _y.
     *
     * Sets the vector _z _x _w _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zxwy(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 0);
    }

    /**
     * \brief Set the vector _z _y.
     *
     * Sets the vector _z _y elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zy(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, Inxmmd_a, 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_1, 0, 1);
    }

    /**
     * \brief Set the vector _z _y _x.
     *
     * Sets the vector _z _y _x elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zyx(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_1, 0, 1);
    }

    /**
     * \brief Set the vector _z _y _x _w.
     *
     * Sets the vector _z _y _x _w elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zyxw(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 1);
    }

    /**
     * \brief Set the vector _z _y _w.
     *
     * Sets the vector _z _y _w elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zyw(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, InHxmmd_a.get_xmmd_0(), 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 0, 0);
    }

    /**
     * \brief Set the vector _z _y _w.
     *
     * Sets the vector _z _y _w _x elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zywx(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 0);
    }

    /**
     * \brief Set the vector _z _w.
     *
     * Sets the vector _z _w elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zw(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd_1 = Inxmmd_a;
    }

    /**
     * \brief Set the vector _z _w _x.
     *
     * Sets the vector _z _w _x elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zwx(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), m128_xmmd_0, 0, 1);
        m128_xmmd_1 = InHxmmd_a.get_xmmd_0();
    }

    /**
     * \brief Set the vector _z _w _x _y.
     *
     * Sets the vector _z _w _x _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zwxy(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_1, 0, 1);
        m128_xmmd_1 = InHxmmd_a.get_xmmd_0();
    }

    /**
     * \brief Set the vector _z _w _y.
     *
     * Sets the vector _z _w _y elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zwy(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, InHxmmd_a.get_xmmd_1(), 0, 0);
        m128_xmmd_1 = InHxmmd_a.get_xmmd_0();
    }

    /**
     * \brief Set the vector _z _w _y _x.
     *
     * Sets the vector _z _w _y _x elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_zwyx(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_1, 1, 0);
        m128_xmmd_1 = InHxmmd_a.get_xmmd_0();
    }

    /**
     * \brief Set the vector _w.
     *
     * Sets the vector _w element.
     *
     * \param Indouble_a.
     */
    uX_constexpr void uX_ABI set_w(double Indouble_a) uX_noexcept
    {
        m128_xmmd_1 = _uX_MM_SETDBL_IM_PD(m128_xmmd_1, Indouble_a, 1);
    }

    /**
     * \brief Set the vector _w _x.
     *
     * Sets the vector _w _x elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wx(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(Inxmmd_a, m128_xmmd_0, 1, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, Inxmmd_a, 0, 0);
    }

    /**
     * \brief Set the vector _w _x _y.
     *
     * Sets the vector _w _x _y elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wxy(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), InHxmmd_a.get_xmmd_1(), 1, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, InHxmmd_a.get_xmmd_0(), 0, 0);
    }

    /**
     * \brief Set the vector _w _x _y _z.
     *
     * Sets the vector _w _x _y _z elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wxyz(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 0);
    }

    /**
     * \brief Set the vector _w _x _z.
     *
     * Sets the vector _w _x _z elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wxz(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_0(), m128_xmmd_0, 1, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 0);
    }

    /**
     * \brief Set the vector _w _x _z _y.
     *
     * Sets the vector _w _x _z _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wxzy(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 0);
    }

    /**
     * \brief Set the vector _w _y.
     *
     * Sets the vector _w _y elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wy(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, Inxmmd_a, 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, Inxmmd_a, 0, 0);
    }

    /**
     * \brief Set the vector _w _y _x.
     *
     * Sets the vector _w _y _x elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wyx(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_1, InHxmmd_a.get_xmmd_0(), 0, 0);
    }

    /**
     * \brief Set the vector _w _y _x _z.
     *
     * Sets the vector _w _y _x _z elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wyxz(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 0);
    }

    /**
     * \brief Set the vector _w _y _z.
     *
     * Sets the vector _w _y _z elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wyz(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, InHxmmd_a.get_xmmd_0(), 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), InHxmmd_a.get_xmmd_0(), 0, 0);
    }

    /**
     * \brief Set the vector _w _y _z _x.
     *
     * Sets the vector _w _y _z _x elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wyzx(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 1, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 0);
    }

    /**
     * \brief Set the vector _w _z.
     *
     * Sets the vector _w _z elements with vecdouble2(_x,_y).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wz(vecdouble2 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(Inxmmd_a, 1, 0);
    }

    /**
     * \brief Set the vector _w _z _x.
     *
     * Sets the vector _w _z _x elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wzx(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), m128_xmmd_0, 0, 1);
        m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.get_xmmd_0(), 1, 0);
    }

    /**
     * \brief Set the vector _w _z _x _y.
     *
     * Sets the vector _w _z _x _y elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wzxy(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_1, 0, 1);
        m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_0, 1, 0);
    }

    /**
     * \brief Set the vector _w _z _y.
     *
     * Sets the vector _w _z _y elements with vecdouble3(_x,_y,_z).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wzy(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, InHxmmd_a.get_xmmd_1(), 0, 0);
        m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.get_xmmd_0(), 1, 0);
    }

    /**
     * \brief Set the vector _w _z _y _x.
     *
     * Sets the vector _w _z _y _x elements with vecdouble4(_x,_y,_z,_w).
     *
     * \param Inxmmd_a.
     */
    uX_constexpr void uX_ABI set_wzyx(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_1, 1, 0);
        m128_xmmd_1 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_0, 1, 0);
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
    friend uX_constexpr vecdouble4 uX_ABI andnot(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_andnot_pd(InHxmmd_b.m128_xmmd_0, InHxmmd_a.m128_xmmd_0), _uX_mm_andnot_pd(InHxmmd_b.m128_xmmd_1, InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Bitwise operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator&(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_and_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_and_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Bitwise operator OR.
     *
     * Performs the compute or from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator|(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_or_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_or_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Bitwise operator XOR.
     *
     * Performs the compute xor from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator^(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_xor_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_xor_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Bitwise operator NOT.
     *
     * Performs the compute not from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator~(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_not_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_not_pd(InHxmmd_a.m128_xmmd_1));
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
    friend uX_constexpr bool_t uX_ABI bandnot(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return _uX_mm_iandnot_pd(InHxmmd_b.m128_xmmd_0, InHxmmd_a.m128_xmmd_0) && _uX_mm_iandnot_pd(InHxmmd_b.m128_xmmd_1, InHxmmd_a.m128_xmmd_1);
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
    friend uX_constexpr bool_t uX_ABI operator&&(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return _uX_mm_iand_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0) && _uX_mm_iand_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1);
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
    friend uX_constexpr bool_t uX_ABI operator||(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return _uX_mm_ior_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0) || _uX_mm_ior_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1);
    }

    /**
     * \brief Logical operator NOT.
     *
     * Performs the compute not from the 1 parameter.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend uX_constexpr bool_t uX_ABI operator!(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return _uX_mm_inot_pd(InHxmmd_a.m128_xmmd_0) && _uX_mm_inot_pd(InHxmmd_a.m128_xmmd_1);
    }

    /**
     * \brief Logical function HORIZONTAL AND.
     *
     * Performs the compute horizontal and in all bits from the parameter. Returns true if all bits are 1.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend uX_constexpr bool_t uX_ABI horizontal_and(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return _uX_mm_ihand_pd(InHxmmd_a.m128_xmmd_0) && _uX_mm_ihand_pd(InHxmmd_a.m128_xmmd_1);
    }

    /**
     * \brief Logical function HORIZONTAL OR.
     *
     * Performs the compute horizontal or in all bits from the parameter. Returns true if at least one bit is 1.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend uX_constexpr bool_t uX_ABI horizontal_or(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return _uX_mm_ihor_pd(InHxmmd_a.m128_xmmd_0) || _uX_mm_ihor_pd(InHxmmd_a.m128_xmmd_1);
    }

    /**
     * \brief Logical operator assignment AND.
     *
     * Performs the compute and from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4& uX_ABI operator&=(vecdouble4& InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble4(_uX_mm_and_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_and_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Logical operator assignment OR.
     *
     * Performs the compute or from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4& uX_ABI operator|=(vecdouble4& InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble4(_uX_mm_or_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_or_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Logical operator assignment XOR.
     *
     * Performs the compute xor from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4& uX_ABI operator^=(vecdouble4& InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble4(_uX_mm_xor_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_xor_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /* Arithmetic Operators */

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator+(vecdouble4 const InHxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_add_pd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator+(double Indouble_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_add_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_add_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator+(vecdouble4 const InHxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_add_pd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator+(__m128d const Inxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_add_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_add_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator+(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_add_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator-(vecdouble4 const InHxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_sub_pd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator-(double Indouble_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_sub_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_sub_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator-(vecdouble4 const InHxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_sub_pd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator-(__m128d const Inxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_sub_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_sub_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator-(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_sub_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator*(vecdouble4 const InHxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_mul_pd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator*(double Indouble_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_mul_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_mul_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator*(vecdouble4 const InHxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_mul_pd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator*(__m128d const Inxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_mul_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_mul_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator*(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_mul_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator/(vecdouble4 const InHxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_div_pd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator/(double Indouble_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_div_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_div_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator/(vecdouble4 const InHxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_div_pd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator/(__m128d const Inxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_div_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_div_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator/(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_div_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4& uX_ABI operator+=(vecdouble4& InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble4(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_add_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4& uX_ABI operator-=(vecdouble4& InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble4(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_sub_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4& uX_ABI operator*=(vecdouble4& InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble4(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_mul_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4& uX_ABI operator/=(vecdouble4& InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble4(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_div_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /* Unary Operators */

    /**
     * \brief Unary prefix increment operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmmd_a.
     */
    friend uX_constexpr vecdouble4& uX_ABI operator++(vecdouble4& InHxmmd_a) uX_noexcept
    {
        InHxmmd_a = InHxmmd_a + __m128d_1;
        return InHxmmd_a;
    }

    /**
     * \brief Unary prefix decrement operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmmd_a.
     */
    friend uX_constexpr vecdouble4& uX_ABI operator--(vecdouble4& InHxmmd_a) uX_noexcept
    {
        InHxmmd_a = InHxmmd_a - __m128d_1;
        return InHxmmd_a;
    }

    /**
     * \brief Unary postfix increment operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmmd_a.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator++(vecdouble4& InHxmmd_a, int) uX_noexcept
    {
        vecdouble4 tmpxmm_a0 = InHxmmd_a;
        InHxmmd_a = InHxmmd_a + __m128d_1;
        return tmpxmm_a0;
    }

    /**
     * \brief Unary postfix decrement operator.
     *
     * Performs the compute postfix increment.
     *
     * \param Inxmmd_a.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator--(vecdouble4& InHxmmd_a, int) uX_noexcept
    {
        vecdouble4 tmpxmm_a0 = InHxmmd_a;
        InHxmmd_a = InHxmmd_a - __m128d_1;
        return tmpxmm_a0;
    }

    /**
     * \brief Unary minus operator.
     *
     * Performs the compute minus. Change sign bit, even for 0, INF and NAN.
     *
     * \param Inxmmd_a.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator-(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_negate_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_negate_pd(InHxmmd_a.m128_xmmd_1));
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
    friend uX_constexpr vecdouble4 uX_ABI operator==(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_cmpeq_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpeq_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Comparison operator less than.
     *
     * Performs the compute less than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator<(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_cmplt_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmplt_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Comparison operator less than or equal.
     *
     * Performs the compute less than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator<=(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_cmple_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmple_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Comparison operator greater than.
     *
     * Performs the compute greater than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator>(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_cmpgt_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpgt_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Comparison operator greater than or equal.
     *
     * Performs the compute greater than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator>=(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_cmpge_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpge_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Comparison operator not equal.
     *
     * Performs the compute not equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble4 uX_ABI operator!=(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_cmpneq_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpneq_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
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
     * Performs load from type __m128d* unaligned.
     *
     * \param Inpdouble pointer value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI m128_load(uX_InReads(2) __m128d const* const Inpdouble) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_loadu_pd(Inpdouble);
        m128_xmmd_1 = _uX_mm_loadu_pd(Inpdouble+1);
        return *this;
    }

    /**
     * \brief Load aligned.
     *
     * Performs load from type __m128d* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Inpdouble pointer value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI m128_load_a(uX_InReads(2) __m128d const* const Inpdouble) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_load_pd(Inpdouble);
        m128_xmmd_1 = _uX_mm_load_pd(Inpdouble+1);
        return *this;
    }

    /**
     * \brief Load unaligned.
     *
     * Performs load from type double* unaligned.
     *
     * \param Inpdouble pointer value to copy from.
     */
    uX_constexpr vecdouble4& uX_ABI load(uX_InReads(4) double const* const Inpdouble) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble));
        m128_xmmd_1 = _uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble+2));
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
    uX_constexpr vecdouble4& uX_ABI load_a(uX_InReads(4) double const* const Inpdouble) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_load_pd(reinterpret_cast<__m128d const* const>(Inpdouble));
        m128_xmmd_1 = _uX_mm_load_pd(reinterpret_cast<__m128d const* const>(Inpdouble+2));
        return *this;
    }

    /**
     * \brief Store function unaligned.
     *
     * Performs store to type __m128d* unaligned.
     *
     * \param Outpdouble pointer value to store to.
     */
    uX_constexpr void uX_ABI m128_store(uX_OutWrites(2) __m128d* Outpdouble) const uX_noexcept
    {
        _uX_mm_storeu_pd(Outpdouble, m128_xmmd_0);
        _uX_mm_storeu_pd(Outpdouble+1, m128_xmmd_1);
    }

    /**
     * \brief Store function aligned.
     *
     * Performs store to type __m128d* aligned.
     *
     * \warning It must be aligned by 16.
     *
     * \param Outpdouble pointer value to store to.
     */
    uX_constexpr void uX_ABI m128_store_a(uX_OutWrites(2) __m128d* Outpdouble) const uX_noexcept
    {
        _uX_mm_store_pd(Outpdouble, m128_xmmd_0);
        _uX_mm_store_pd(Outpdouble+1, m128_xmmd_1);
    }

    /**
     * \brief Store function unaligned.
     *
     * Performs store to type double* unaligned.
     *
     * \param Outpdouble pointer value to store to.
     */
    uX_constexpr void uX_ABI store(uX_OutWrites(4) double* Outpdouble) const uX_noexcept
    {
        _uX_mm_storeu_pd(reinterpret_cast<__m128d*>(Outpdouble), m128_xmmd_0);
        _uX_mm_storeu_pd(reinterpret_cast<__m128d*>(Outpdouble+2), m128_xmmd_1);
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
    uX_constexpr void uX_ABI store_a(uX_OutWrites(4) double* Outpdouble) const uX_noexcept
    {
        _uX_mm_store_pd(reinterpret_cast<__m128d*>(Outpdouble), m128_xmmd_0);
        _uX_mm_store_pd(reinterpret_cast<__m128d*>(Outpdouble+2), m128_xmmd_1);
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
    uX_constexpr vecdouble4 const uX_ABI insert(double value, count_t index) uX_noexcept
    {
        if (index > 3) return *this;
        if (index > 1)
        {
            m128_xmmd_1 = _uX_mm_setelts_pd(m128_xmmd_1, value, index-2);
        }
        else
        {
            m128_xmmd_0 = _uX_mm_setelts_pd(m128_xmmd_0, value, index);
        }
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
        if (index > 3) return 0.0;
        return index > 1 ? _uX_mm_cvtelts_dbl(m128_xmmd_1, index - 2) : _uX_mm_cvtelts_dbl(m128_xmmd_0, index);
    }

    /**
     * \brief Set all elements to zero.
     */
    uX_constexpr vecdouble4& uX_ABI zero(void) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_setzero_pd();
        m128_xmmd_1 = _uX_mm_setzero_pd();
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
    uX_constexpr vecdouble4& uX_ABI cutoff(count_t indexN) uX_noexcept
    {
        switch (indexN)
        {
            case 3:
                m128_xmmd_1 = _uX_mm_move_sd(__m128d_0, m128_xmmd_1);
                break;
            case 2:
                m128_xmmd_1 = __m128d_0;
                break;
            case 1:
                m128_xmmd_0 = _uX_mm_move_sd(__m128d_0, m128_xmmd_0);
                m128_xmmd_1 = __m128d_0;
                break;
            case 0:
                m128_xmmd_0 = __m128d_0;
                m128_xmmd_1 = __m128d_0;
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
    friend uX_constexpr vecdouble4 uX_ABI flip_sign(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_xor_pd(InHxmmd_a.m128_xmmd_0, __m128d_sign), _uX_mm_xor_pd(InHxmmd_a.m128_xmmd_1, __m128d_sign));
    }

    /**
     * \brief Test if all elements if is zero.
     *
     * Performs the test if all elements are zero.
     *
     * \param Inxmmd_a the vector to test.
     * \return boolean integer.
     */
    friend uX_constexpr bool_t uX_ABI is_zero(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return _uX_mm_iszero_pd(InHxmmd_a.m128_xmmd_0) && _uX_mm_iszero_pd(InHxmmd_a.m128_xmmd_1);
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
    friend uX_constexpr vecdouble4 uX_ABI select(vecdouble4 const InHxmmd_f, vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_select_pd(InHxmmd_f.m128_xmmd_0, InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_select_pd(InHxmmd_f.m128_xmmd_1, InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
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
    friend uX_constexpr vecdouble4 uX_ABI if_add(vecdouble4 const InHxmmd_f, vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a + (InHxmmd_f & InHxmmd_b);
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
    friend uX_constexpr vecdouble4 uX_ABI if_sub(vecdouble4 const InHxmmd_f, vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a - (InHxmmd_f & InHxmmd_b);
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
    friend uX_constexpr vecdouble4 uX_ABI if_mul(vecdouble4 const InHxmmd_f, vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a * select(InHxmmd_f, InHxmmd_b, vecdouble4(__m128d_1));
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
    friend uX_constexpr vecdouble4 uX_ABI if_div(vecdouble4 const InHxmmd_f, vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a / select(InHxmmd_f, InHxmmd_b, vecdouble4(__m128d_1));
    }

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
    friend uX_constexpr vecdouble4 uX_ABI change_sign(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        if ((i0 | i1 | i2 | i3) == 0) return InHxmmd_a;
        return InHxmmd_a ^ vecdouble4(vecuqword4::constant<i0 ? 0x8000000000000000 : 0, i1 ? 0x8000000000000000 : 0, i2 ? 0x8000000000000000 : 0, i3 ? 0x8000000000000000 : 0>());
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
    friend uX_constexpr vecdouble4 uX_ABI sign_bit(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_signbit_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_signbit_pd(InHxmmd_a.m128_xmmd_1));
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
    friend uX_constexpr vecdouble4 uX_ABI sign_combine(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_signcombine_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_signcombine_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Is finite.
     *
     * Gives true for elements that are normal, denormal or zero, false for INF and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble4 uX_ABI is_finite(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_isfinite_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_isfinite_pd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Is inf.
     *
     * Gives true for elements that are +INF or -INF, false for finite numbers and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble4 uX_ABI is_inf(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_isinf_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_isinf_pd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Is nan.
     *
     * Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble4 uX_ABI is_nan(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_isnan_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_isnan_pd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Is subnormal.
     *
     * Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble4 uX_ABI is_subnormal(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_issubnormal_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_issubnormal_pd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Is zero or subnormal.
     *
     * Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble4 uX_ABI is_zero_or_subnormal(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_iszeroorsubnormal_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_iszeroorsubnormal_pd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Infinite.
     *
     * \return a vector where all elements are +INF.
     */
    uX_constexpr vecdouble4& uX_ABI infinite(void) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_infinite_pd();
        m128_xmmd_1 = _uX_mm_infinite_pd();
        return *this;
    }

    /**
     * \brief Nan.
     *
     * \return a vector where all elements are NAN (quiet).
     */
    uX_constexpr vecdouble4& uX_ABI nan(void) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_nan_pd();
        m128_xmmd_1 = _uX_mm_nan_pd();
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
    friend uX_constexpr double uX_ABI horizontal_add(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return horizontal_add(vecdouble2(_uX_mm_horizontaladd_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_horizontaladd_pd(InHxmmd_a.m128_xmmd_1)));
    }

    /**
     * \brief Horizontal sub.
     *
     * Calculates the subtraction of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend uX_constexpr double uX_ABI horizontal_sub(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return horizontal_sub(vecdouble2(_uX_mm_horizontalsub_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_horizontalsub_pd(InHxmmd_a.m128_xmmd_1)));
    }

    /**
     * \brief Horizontal mull.
     *
     * Calculates the multiplication of all vector elements.
     *
     * \param Inxmmd_a the a vector.
     * \return double.
     */
    friend uX_constexpr double uX_ABI horizontal_mul(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return horizontal_mul(vecdouble2(_uX_mm_horizontalmul_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_horizontalmul_pd(InHxmmd_a.m128_xmmd_1)));
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
    friend uX_constexpr vecdouble4 uX_ABI max(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_max_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_max_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
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
    friend uX_constexpr vecdouble4 uX_ABI min(vecdouble4 const InHxmmd_a, vecdouble4 const InHxmmd_b) uX_noexcept
    {
        return vecdouble4(_uX_mm_min_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_min_pd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Abs.
     *
     * Computes the absolute value.
     *
     * \param Inxmmd_a the a vector..
     * \return vector.
     */
    friend uX_constexpr vecdouble4 uX_ABI abs(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_abs_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_abs_pd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Square.
     *
     * Computes the a * a.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble4 uX_ABI square(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_square_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_square_pd(InHxmmd_a.m128_xmmd_1));
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
    friend uX_constexpr vecdouble4 uX_ABI scale(vecdouble4 const InHxmmd_a, double Indouble_s) uX_noexcept
    {
        return vecdouble4(_uX_mm_scale_pd(InHxmmd_a.m128_xmmd_0, Indouble_s), _uX_mm_scale_pd(InHxmmd_a.m128_xmmd_1, Indouble_s));
    }

    /**
     * \brief rcp.
     *
     * Computes the reciprocal.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble4 uX_ABI rcp(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_rcp_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_rcp_pd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief sqrt.
     *
     * Computes the square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble4 uX_ABI sqrt(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_sqrt_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_sqrt_pd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief rsqrt.
     *
     * Computes the reciprocal square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble4 uX_ABI rsqrt(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        return vecdouble4(_uX_mm_rsqrt_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_rsqrt_pd(InHxmmd_a.m128_xmmd_1));
    }

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
    vecdouble3       vecdbl3rettype;
    vecdouble2       vecdbl2rettype;
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
        return 4;
    }

    /**
     * \brief __m128d pointer length
     * \details Gets the length of __m128d pointer
     * \returns count_t
     * \retval the length of __m128d pointer
     */
    uX_constexpr count_t const uX_ABI xmm_ptr_lenght(void) const uX_noexcept
    {
        return 2;
    }

    /**
     * \brief __m128d pointer size
     * \details Gets the size of __m128d pointer
     * \returns count_t
     * \retval the size of __m128d pointer
     */
    uX_constexpr count_t const uX_ABI xmm_ptr_size(void) const uX_noexcept
    {
        return 32;
    }

    /**
     * \brief double pointer length
     * \details Gets the length of double pointer
     * \returns count_t
     * \retval the length of double pointer
     */
    uX_constexpr count_t const uX_ABI dbl_ptr_lenght(void) const uX_noexcept
    {
        return 4;
    }

    /**
     * \brief double pointer size
     * \details Gets the size of double pointer
     * \returns count_t
     * \retval the size of double pointer
     */
    uX_constexpr count_t const uX_ABI dbl_ptr_size(void) const uX_noexcept
    {
        return 32;
    }

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
