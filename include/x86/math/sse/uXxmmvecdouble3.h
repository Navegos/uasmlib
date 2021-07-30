
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

 /**
  * \defgroup uX_XMM_VECDOUBLE3_CLASS 3 Double Precision SSE SIMD Vector Class
  * \ingroup uX_XMM_VECDOUBLE3
  * To use these class include the header file \p uXxmmvecdouble3.h in your program
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
     * \brief Default constructor initialization from vecdouble3.
     *
     * @param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3(vecdouble3 const& InHxmmd_a) uX_noexcept : m128_xmmd_0(InHxmmd_a.m128_xmmd_0), m128_xmmd_1(InHxmmd_a.m128_xmmd_1) {}

    /**
     * \brief Default constructor initialization from vecdouble3.
     *
     * @param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3(vecdouble3&& InHxmmd_a) uX_noexcept : m128_xmmd_0(InHxmmd_a.m128_xmmd_0), m128_xmmd_1(InHxmmd_a.m128_xmmd_1) {}

    /**
     * \brief Constructor initialization from type __m128d, broadcast the same value into all elements.
     *
     * @param Inxmmd value to copy from.
     */
    uX_explicit uX_constexpr vecdouble3(__m128d const Inxmmd) uX_noexcept : m128_xmmd_0(Inxmmd), m128_xmmd_1(_uX_MM_SHUFFLER_IM_PD(Inxmmd, __m128d_false, 0, 0)) {}

    /**
     * \brief Constructor initialization from 2 type __m128i.
     *
     * @param Inxmmd_0 value to copy from.
     * @param Inxmmd_1 value to copy from.
     */
    uX_constexpr vecdouble3(__m128d const Inxmmd_0, __m128d const Inxmmd_1) uX_noexcept : m128_xmmd_0(Inxmmd_0), m128_xmmd_1(_uX_MM_SHUFFLER_IM_PD(Inxmmd_1, __m128d_false, 0, 0)) {}

    /**
     * \brief Constructor initialization from type vecdouble4.
     *
     * @param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3(vecdouble4 const InHxmmd_a) uX_noexcept : m128_xmmd_0(InHxmmd_a.get_xmmd_0()), m128_xmmd_1(_uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), __m128d_false, 0, 0)) {}

    /**
     * \brief Constructor initialization from type vecdouble2.
     *
     * @param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3(vecdouble2 const Inxmmd_a) uX_noexcept : m128_xmmd_0(Inxmmd_a) {}

    /**
     * \brief Constructor initialization from type vecdouble1.
     *
     * @param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3(vecdouble1 const Inxmmd_a) uX_noexcept : m128_xmmd_0(_uX_mm_move_sd(m128_xmmd_0, Inxmmd_a)) {}
    
    /**
     * \fn uX::xmm::vecdouble3::vecdouble3(vecfloat3 const Inxmm_a) uX_noexcept
     * \brief Constructor initialization from type vecfloat3
     * \details Constructor converts float _x _y _z elements from /p vecfloat3 to _x _y _z elements
     * \param[in] Inxmm_a - vecfloat3 Read only
     * \warning Converts the value from float to double.
     * \Note Sets the _x _y _z double elements
     */
    uX_constexpr vecdouble3(vecfloat3 const Inxmm_a) uX_noexcept : m128_xmmd_0(_uX_mm_cvtps_pd(Inxmm_a)), m128_xmmd_1(_uX_MM_SHUFFLER_IM_PD(_uX_mm_cvtps_pd(Inxmm_a.get_zxy()), __m128d_false, 0, 0)) {}

    /**
     * \brief Constructor initialization from type vecqword3.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecdouble3(vecqword3 const InHxmmi_a) uX_noexcept : m128_xmmd_0(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_0())), m128_xmmd_1(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_1())) {}

    /**
     * \brief Constructor initialization from type vecuqword3.
     *
     * @param InHxmmi_a value to copy from.
     */
    uX_constexpr vecdouble3(vecuqword3 const InHxmmi_a) uX_noexcept : m128_xmmd_0(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_0())), m128_xmmd_1(_uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_1())) {}

    /**
     * \brief Constructor to broadcast the same double value into all elements.
     *
     * @param Indouble_a double value to copy from.
     */
    uX_explicit uX_constexpr vecdouble3(double Indouble_a) uX_noexcept : m128_xmmd_0(_uX_mm_set1_pd(Indouble_a)), m128_xmmd_1(_uX_mm_setr_pd(Indouble_a, 0.0)) {}

    /**
     * \brief Constructor initialization from 3 type double.
     *
     * @param Indouble_x value to copy from.
     * @param Indouble_y value to copy from.
     * @param Indouble_z value to copy from.
     */
    uX_constexpr vecdouble3(double Indouble_x, double Indouble_y, double Indouble_z) uX_noexcept : m128_xmmd_0(_uX_mm_setr_pd(Indouble_x, Indouble_y)), m128_xmmd_1(_uX_mm_setr_pd(Indouble_z, 0.0)) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecdouble3(bool_t const Inbool_a) uX_noexcept : m128_xmmd_0(vecdouble2(vecuqword2(Inbool_a))), m128_xmmd_1(vecdouble2(vecuqword2(Inbool_a, bool_t(0)))) {}

    /**
     * \brief Constructor initialization from 3 type bool.
     *
     * \param Inbool_x value to copy from.
     * \param Inbool_y value to copy from.
     * \param Inbool_z value to copy from.
     */
    uX_constexpr vecdouble3(bool_t const Inbool_x, bool_t const Inbool_y, bool_t const Inbool_z) uX_noexcept : m128_xmmd_0(vecdouble2(vecuqword2(Inbool_x, Inbool_y))), m128_xmmd_1(vecdouble2(vecuqword2(Inbool_z, bool_t(0)))) {}

    /**
     * \brief Constructor to broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_explicit uX_constexpr vecdouble3(bool const Inbool_a) uX_noexcept : m128_xmmd_0(vecdouble2(vecuqword2(Inbool_a, Inbool_a))), m128_xmmd_1(vecdouble2(vecuqword2(Inbool_a, false))) {}

    /**
     * \brief Constructor initialization from 3 type bool.
     *
     * \param Inbool_x value to copy from.
     * \param Inbool_y value to copy from.
     * \param Inbool_z value to copy from.
     */
    uX_constexpr vecdouble3(bool const Inbool_x, bool const Inbool_y, bool const Inbool_z) uX_noexcept : m128_xmmd_0(vecdouble2(vecuqword2(Inbool_x, Inbool_y))), m128_xmmd_1(vecdouble2(vecuqword2(Inbool_z, false))) {}

    /**
     * \brief Constructor initialization from type __m128d*.
     *
     * \param Inpdouble pointer value to copy from.
     */
    uX_explicit uX_constexpr vecdouble3(uX_InReads(2) __m128d const* const Inpm128_xmmd) uX_noexcept : m128_xmmd_0(_uX_mm_loadu_pd(Inpm128_xmmd)),
                                                                                                       m128_xmmd_1(_uX_MM_SHUFFLER_IM_PD(_uX_mm_loadu_pd(Inpm128_xmmd+1), __m128d_false, 0, 0)) {}

    /**
     * \brief Constructor initialization from type double*.
     *
     * @param Inpdouble value to copy from.
     */
    uX_explicit uX_constexpr vecdouble3(uX_InReads(3) double const* const Inpdouble) uX_noexcept : m128_xmmd_0(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble))),
                                                                                                   m128_xmmd_1(_uX_mm_load_sd(Inpdouble+2)) {}

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
    uX_constexpr vecdouble3& uX_ABI operator=(vecdouble3 const& InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = InHxmmd_a.m128_xmmd_0;
        m128_xmmd_1 = InHxmmd_a.m128_xmmd_1;
        return *this;
    }

    /**
     * \brief vecdouble3 default assignment operator.
     *
     * To convert from type vecdouble3.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(vecdouble3&& InHxmmd_a) uX_noexcept
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
    uX_constexpr vecdouble3& uX_ABI operator=(__m128d const Inxmmd) uX_noexcept
    {
        m128_xmmd_0 = Inxmmd;
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(Inxmmd, __m128d_false, 0, 0);
        return *this;
    }

    /**
     * \brief vecdouble4 assignment operator.
     *
     * To convert from type vecdouble4.
     *
     * \param InHxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(vecdouble4 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = InHxmmd_a.get_xmmd_0();
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.get_xmmd_1(), __m128d_false, 0, 0);
        return *this;
    }

    /**
     * \brief vecdouble2 assignment operator.
     *
     * To convert from type vecdouble2.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(vecdouble2 const Inxmmd_a) uX_noexcept
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
    uX_constexpr vecdouble3& uX_ABI operator=(vecdouble1 const Inxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_move_sd(m128_xmmd_0, Inxmmd_a);
        return *this;
    }

    /**
     * \brief vecfloat3 assignment operator.
     *
     * To convert from type vecfloat3.
     *
     * \param Inxmm_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(vecfloat3 const Inxmm_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_cvtps_pd(Inxmm_a);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(_uX_mm_cvtps_pd(Inxmm_a.get_zxy()), __m128d_false, 0, 0);
        return *this;
    }

    /**
     * \brief vecqword3 assignment operator.
     *
     * To convert from type vecqword3.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(vecqword3 const InHxmmi_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_0());
        m128_xmmd_1 = _uX_mm_castsi128_pd(InHxmmi_a.get_xmmi_1());
        return *this;
    }

    /**
     * \brief vecuqword3 assignment operator.
     *
     * To convert from type vecuqword3.
     *
     * \param Inxmmd_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(vecuqword3 const InHxmmi_a) uX_noexcept
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
    uX_constexpr vecdouble3& uX_ABI operator=(double Indouble_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_set1_pd(Indouble_a);
        m128_xmmd_1 = _uX_mm_setr_pd(Indouble_a, 0.0);
        return *this;
    }

    /**
     * \brief bool_t assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(bool_t const Inbool_a) uX_noexcept
    {
        m128_xmmd_0 = vecdouble2(vecuqword2(Inbool_a, Inbool_a));
        m128_xmmd_1 = vecdouble2(vecuqword2(Inbool_a, bool_t(0)));
        return *this;
    }

    /**
     * \brief bool assignment operator.
     *
     * To broadcast the same bool value into all elements.
     *
     * \param Inbool_a value to copy from.
     */
    uX_constexpr vecdouble3& uX_ABI operator=(bool const Inbool_a) uX_noexcept
    {
        m128_xmmd_0 = vecdouble2(vecuqword2(Inbool_a, Inbool_a));
        m128_xmmd_1 = vecdouble2(vecuqword2(Inbool_a, false));
        return *this;
    }

    /**
     * \brief Assignment operator to convert from type double*.
     *
     * @param Inpdouble value to copy from.
     */
     /*vecdouble3& uX_ABI operator=(uX_InReads(3) double const* const Inpdouble) uX_noexcept;*/ //security undesired

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
    uX_constexpr vecdouble3 uX_ABI get(void) const uX_noexcept
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
     * \brief Get reference to vector.
     *
     * Gets reference to vector.
     * \return vector.
     */
    uX_constexpr vecdouble3& uX_ABI ref(void) uX_noexcept
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
        *this = get_xzy();
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
        *this = get_yxz();
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
        *this = get_yzx();
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
        *this = get_zxy();
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
        *this = get_zyx();
        return *this;
    }

    /**
     * \brief Set the vector.
     *
     * Sets all vector elements.
     *
     * \param InHxmmd.
     */
    uX_constexpr void uX_ABI set(vecdouble3 const InHxmmd) uX_noexcept
    {
        m128_xmmd_0 = InHxmmd.m128_xmmd_0;
        m128_xmmd_1 = InHxmmd.m128_xmmd_1;
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
     * \param InHxmmd_a.
     */
    uX_constexpr void uX_ABI set_xyz(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = InHxmmd_a.m128_xmmd_0;
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, m128_xmmd_1, 0, 1);
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
     * \param InHxmmd_a.
     */
    uX_constexpr void uX_ABI set_xzy(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, m128_xmmd_1, 1, 1);
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
     * \param InHxmmd_a.
     */
    uX_constexpr void uX_ABI set_yxz(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_PERMUTER_IM_PD(InHxmmd_a.m128_xmmd_0, 1, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, m128_xmmd_1, 0, 1);
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
     * \param InHxmmd_a.
     */
    uX_constexpr void uX_ABI set_yzx(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, m128_xmmd_1, 1, 1);
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
     * \param InHxmmd_a.
     */
    uX_constexpr void uX_ABI set_zxy(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, InHxmmd_a.m128_xmmd_1, 1, 0);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, m128_xmmd_1, 0, 1);
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
     * \param InHxmmd_a.
     */
    uX_constexpr void uX_ABI set_zyx(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_1, InHxmmd_a.m128_xmmd_0, 0, 1);
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(InHxmmd_a.m128_xmmd_0, m128_xmmd_1, 0, 1);
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
    friend uX_constexpr vecdouble3 uX_ABI andnot(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_andnot_pd(InHxmmd_b.m128_xmmd_0, InHxmmd_a.m128_xmmd_0), _uX_mm_andnot_sd(InHxmmd_b.m128_xmmd_1, InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Bitwise operator AND.
     *
     * Performs the compute and from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator&(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_and_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_and_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Bitwise operator OR.
     *
     * Performs the compute or from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator|(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_or_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_or_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Bitwise operator XOR.
     *
     * Performs the compute xor from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator^(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_xor_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_xor_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Bitwise operator NOT.
     *
     * Performs the compute not from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator~(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_not_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_not_sd(InHxmmd_a.m128_xmmd_1));
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
    friend uX_constexpr bool_t uX_ABI bandnot(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return _uX_mm_iandnot_pd(InHxmmd_b.m128_xmmd_0, InHxmmd_a.m128_xmmd_0) && _uX_mm_iandnot_sd(InHxmmd_b.m128_xmmd_1, InHxmmd_a.m128_xmmd_1);
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
    friend uX_constexpr bool_t uX_ABI operator&&(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return _uX_mm_iand_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0) && _uX_mm_iand_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1);
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
    friend uX_constexpr bool_t uX_ABI operator||(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return _uX_mm_ior_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0) || _uX_mm_ior_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1);
    }

    /**
     * \brief Logical operator NOT.
     *
     * Performs the compute not from the 1 parameter.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend uX_constexpr bool_t uX_ABI operator!(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return _uX_mm_inot_pd(InHxmmd_a.m128_xmmd_0) && _uX_mm_inot_sd(InHxmmd_a.m128_xmmd_1);
    }

    /**
     * \brief Logical function HORIZONTAL AND.
     *
     * Performs the compute horizontal and in all bits from the parameter. Returns true if all bits are 1.
     *
     * \param Inxmmd_a.
     * \return boolean integer.
     */
    friend uX_constexpr bool_t uX_ABI horizontal_and(vecdouble3 const InHxmmd_a) uX_noexcept
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
    friend uX_constexpr bool_t uX_ABI horizontal_or(vecdouble3 const InHxmmd_a) uX_noexcept
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
    friend uX_constexpr vecdouble3& uX_ABI operator&=(vecdouble3& InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble3(_uX_mm_and_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_and_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Logical operator assignment OR.
     *
     * Performs the compute or from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3& uX_ABI operator|=(vecdouble3& InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble3(_uX_mm_or_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_or_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Logical operator assignment XOR.
     *
     * Performs the compute xor from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3& uX_ABI operator^=(vecdouble3& InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble3(_uX_mm_xor_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_xor_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
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
    friend uX_constexpr vecdouble3 uX_ABI operator+(vecdouble3 const InHxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_add_sd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator+(double Indouble_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_add_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_add_sd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator+(vecdouble3 const InHxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_add_sd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator+(__m128d const Inxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_add_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_add_sd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator+(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_add_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator-(vecdouble3 const InHxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_sub_sd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator-(double Indouble_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_sub_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_sub_sd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator-(vecdouble3 const InHxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_sub_sd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator-(__m128d const Inxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_sub_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_sub_sd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator-(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_sub_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator*(vecdouble3 const InHxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_mul_sd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator*(double Indouble_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_mul_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_mul_sd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator*(vecdouble3 const InHxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_mul_sd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator*(__m128d const Inxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_mul_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_mul_sd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator*(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_mul_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Indouble_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator/(vecdouble3 const InHxmmd_a, double Indouble_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, _uX_mm_set1_pd(Indouble_b)), _uX_mm_div_sd(InHxmmd_a.m128_xmmd_1, _uX_mm_set1_pd(Indouble_b)));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Indouble_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator/(double Indouble_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_div_pd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_0), _uX_mm_div_sd(_uX_mm_set1_pd(Indouble_a), InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param InHxmmd_a.
     * \param Inxmmd_b, broadcast same value to all elements.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator/(vecdouble3 const InHxmmd_a, __m128d const Inxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, Inxmmd_b), _uX_mm_div_sd(InHxmmd_a.m128_xmmd_1, Inxmmd_b));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a, broadcast same value to all elements.
     * \param InHxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator/(__m128d const Inxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_div_pd(Inxmmd_a, InHxmmd_b.m128_xmmd_0), _uX_mm_div_sd(Inxmmd_a, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator/(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_div_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator addition.
     *
     * Performs the compute addition from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3& uX_ABI operator+=(vecdouble3& InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble3(_uX_mm_add_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_add_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator subtraction.
     *
     * Performs the compute subtraction from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3& uX_ABI operator-=(vecdouble3& InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble3(_uX_mm_sub_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_sub_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator multiplication.
     *
     * Performs the compute multiplication from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3& uX_ABI operator*=(vecdouble3& InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble3(_uX_mm_mul_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_mul_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Arithmetic operator division.
     *
     * Performs the compute division from the 2 parameters, and assigns to first parameter.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3& uX_ABI operator/=(vecdouble3& InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a = vecdouble3(_uX_mm_div_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_div_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /* Unary Operators */

    /**
     * \brief Unary prefix increment operator.
     *
     * Performs the compute prefix increment.
     *
     * \param Inxmmd_a.
     */
    friend uX_constexpr vecdouble3& uX_ABI operator++(vecdouble3& InHxmmd_a) uX_noexcept
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
    friend uX_constexpr vecdouble3& uX_ABI operator--(vecdouble3& InHxmmd_a) uX_noexcept
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
    friend uX_constexpr vecdouble3 uX_ABI operator++(vecdouble3& InHxmmd_a, int) uX_noexcept
    {
        vecdouble3 tmpxmm_a0 = InHxmmd_a;
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
    friend uX_constexpr vecdouble3 uX_ABI operator--(vecdouble3& InHxmmd_a, int) uX_noexcept
    {
        vecdouble3 tmpxmm_a0 = InHxmmd_a;
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
    friend uX_constexpr vecdouble3 uX_ABI operator-(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_negate_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_negate_sd(InHxmmd_a.m128_xmmd_1));
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
    friend uX_constexpr vecdouble3 uX_ABI operator==(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_cmpeq_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpeq_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Comparison operator less than.
     *
     * Performs the compute less than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator<(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_cmplt_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmplt_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Comparison operator less than or equal.
     *
     * Performs the compute less than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator<=(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_cmple_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmple_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Comparison operator greater than.
     *
     * Performs the compute greater than from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator>(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_cmpgt_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpgt_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Comparison operator greater than or equal.
     *
     * Performs the compute greater than or equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator>=(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_cmpge_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpge_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Comparison operator not equal.
     *
     * Performs the compute not equal from the 2 parameters.
     *
     * \param Inxmmd_a.
     * \param Inxmmd_b.
     */
    friend uX_constexpr vecdouble3 uX_ABI operator!=(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_cmpneq_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_cmpneq_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
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
    uX_constexpr vecdouble3& uX_ABI load(uX_InReads(3) double const* const Inpdouble) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble));
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble+2)), __m128d_false, 0, 0);
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
    uX_constexpr vecdouble3& uX_ABI load_a(uX_InReads(3) double const* const Inpdouble) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_load_pd(reinterpret_cast<__m128d const* const>(Inpdouble));
        m128_xmmd_1 = _uX_MM_SHUFFLER_IM_PD(_uX_mm_loadu_pd(reinterpret_cast<__m128d const* const>(Inpdouble+2)), __m128d_false, 0, 0);
        return *this;
    }

    /**
     * \brief Store function unaligned.
     *
     * Performs store to type double* unaligned.
     *
     * \param Outpdouble pointer value to store to.
     */
    uX_constexpr void uX_ABI store(uX_OutWrites(3) double* Outpdouble) const uX_noexcept
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
    uX_constexpr void uX_ABI store_a(uX_OutWrites(3) double* Outpdouble) const uX_noexcept
    {
        _uX_mm_store_pd(reinterpret_cast<__m128d*>(Outpdouble), m128_xmmd_0);
        _uX_mm_storeu_pd(reinterpret_cast<__m128d*>(Outpdouble+2), m128_xmmd_1);
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
    uX_constexpr vecdouble3 const uX_ABI insert(double value, count_t index) uX_noexcept
    {
        if (index > 2) return *this;
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
        if (index > 2) return 0.0;
        return index > 1 ? _uX_mm_cvtelts_dbl(m128_xmmd_1, index-2) : _uX_mm_cvtelts_dbl(m128_xmmd_0, index);
    }

    /**
     * \brief Set all elements to zero.
     */
    uX_constexpr vecdouble3& uX_ABI zero(void) uX_noexcept
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
    uX_constexpr vecdouble3& uX_ABI cutoff(count_t indexN) uX_noexcept
    {
        switch (indexN)
        {
            break;
            case 2:
                m128_xmmd_1 = __m128d_0;
                break;
            case 1:
                m128_xmmd_0 = _uX_MM_SHUFFLER_IM_PD(m128_xmmd_0, __m128d_0, 0, 1);
                m128_xmmd_1 = __m128d_0;
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
    friend uX_constexpr vecdouble3 uX_ABI flip_sign(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_xor_pd(InHxmmd_a.m128_xmmd_0, __m128d_sign), _uX_mm_xor_sd(InHxmmd_a.m128_xmmd_1, __m128d_0e_sign));
    }

    /**
     * \brief Test if all elements if is zero.
     *
     * Performs the test if all elements are zero.
     *
     * \param Inxmmd_a the vector to test.
     * \return boolean integer.
     */
    friend uX_constexpr bool_t uX_ABI is_zero(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return _uX_mm_iszero_pd(InHxmmd_a.m128_xmmd_0) && _uX_mm_iszero_sd(InHxmmd_a.m128_xmmd_1);
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
    friend uX_constexpr vecdouble3 uX_ABI select(vecdouble3 const InHxmmd_f, vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_select_pd(InHxmmd_f.m128_xmmd_0, InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_select_pd(InHxmmd_f.m128_xmmd_1, InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
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
    friend uX_constexpr vecdouble3 uX_ABI if_add(vecdouble3 const InHxmmd_f, vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
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
    friend uX_constexpr vecdouble3 uX_ABI if_sub(vecdouble3 const InHxmmd_f, vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
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
    friend uX_constexpr vecdouble3 uX_ABI if_mul(vecdouble3 const InHxmmd_f, vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a * select(InHxmmd_f, InHxmmd_b, vecdouble3(__m128d_1));
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
    friend uX_constexpr vecdouble3 uX_ABI if_div(vecdouble3 const InHxmmd_f, vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return InHxmmd_a / select(InHxmmd_f, InHxmmd_b, vecdouble3(__m128d_1));
    }

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
    friend uX_constexpr vecdouble3 uX_ABI change_sign(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        if ((i0 | i1 | i2) == 0) return InHxmmd_a;
        return InHxmmd_a ^ vecdouble3(vecuqword3::constant<i0 ? 0x8000000000000000 : 0, i1 ? 0x8000000000000000 : 0, i2 ? 0x8000000000000000 : 0>());
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
    friend uX_constexpr vecdouble3 uX_ABI sign_bit(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_signbit_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_signbit_sd(InHxmmd_a.m128_xmmd_1));
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
    friend uX_constexpr vecdouble3 uX_ABI sign_combine(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_signcombine_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_signcombine_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Is finite.
     *
     * Gives true for elements that are normal, denormal or zero, false for INF and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble3 uX_ABI is_finite(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_isfinite_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_isfinite_sd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Is inf.
     *
     * Gives true for elements that are +INF or -INF, false for finite numbers and NAN.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble3 uX_ABI is_inf(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_isinf_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_isinf_sd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Is nan.
     *
     * Gives true for elements that are +NAN or -NAN, false for finite numbers and +/-INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble3 uX_ABI is_nan(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_isnan_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_isnan_sd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Is subnormal.
     *
     * Gives true for elements that are denormal (subnormal), false for finite numbers, zero, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble3 uX_ABI is_subnormal(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_issubnormal_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_issubnormal_sd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Is zero or subnormal.
     *
     * Gives true for elements that are zero or subnormal (denormal), false for finite numbers, NAN and INF.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble3 uX_ABI is_zero_or_subnormal(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_iszeroorsubnormal_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_iszeroorsubnormal_sd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Infinite.
     *
     * \return a vector where all elements are +INF.
     */
    uX_constexpr vecdouble3& uX_ABI infinite(void) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_infinite_pd();
        m128_xmmd_1 = _uX_mm_infinite_sd();
        return *this;
    }

    /**
     * \brief Nan.
     *
     * \return a vector where all elements are NAN (quiet).
     */
    uX_constexpr vecdouble3& uX_ABI nan(void) uX_noexcept
    {
        m128_xmmd_0 = _uX_mm_nan_pd();
        m128_xmmd_1 = _uX_mm_nan_sd();
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
    friend uX_constexpr double uX_ABI horizontal_add(vecdouble3 const InHxmmd_a) uX_noexcept
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
    friend uX_constexpr double uX_ABI horizontal_sub(vecdouble3 const InHxmmd_a) uX_noexcept
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
    friend uX_constexpr double uX_ABI horizontal_mul(vecdouble3 const InHxmmd_a) uX_noexcept
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
    friend uX_constexpr vecdouble3 uX_ABI max(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_max_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_max_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
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
    friend uX_constexpr vecdouble3 uX_ABI min(vecdouble3 const InHxmmd_a, vecdouble3 const InHxmmd_b) uX_noexcept
    {
        return vecdouble3(_uX_mm_min_pd(InHxmmd_a.m128_xmmd_0, InHxmmd_b.m128_xmmd_0), _uX_mm_min_sd(InHxmmd_a.m128_xmmd_1, InHxmmd_b.m128_xmmd_1));
    }

    /**
     * \brief Abs.
     *
     * Computes the absolute value.
     *
     * \param Inxmmd_a the a vector..
     * \return vector.
     */
    friend uX_constexpr vecdouble3 uX_ABI abs(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_abs_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_abs_sd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief Square.
     *
     * Computes the a * a.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble3 uX_ABI square(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_square_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_square_sd(InHxmmd_a.m128_xmmd_1));
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
    friend uX_constexpr vecdouble3 uX_ABI scale(vecdouble3 const InHxmmd_a, double Indouble_s) uX_noexcept
    {
        return vecdouble3(_uX_mm_scale_pd(InHxmmd_a.m128_xmmd_0, Indouble_s), _uX_mm_scale_sd(InHxmmd_a.m128_xmmd_1, Indouble_s));
    }

    /**
     * \brief rcp.
     *
     * Computes the reciprocal.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble3 uX_ABI rcp(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_rcp_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_rcp_sd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief sqrt.
     *
     * Computes the square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble3 uX_ABI sqrt(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_sqrt_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_sqrt_sd(InHxmmd_a.m128_xmmd_1));
    }

    /**
     * \brief rsqrt.
     *
     * Computes the reciprocal square root.
     *
     * \param Inxmmd_a the a vector.
     * \return vector.
     */
    friend uX_constexpr vecdouble3 uX_ABI rsqrt(vecdouble3 const InHxmmd_a) uX_noexcept
    {
        return vecdouble3(_uX_mm_rsqrt_pd(InHxmmd_a.m128_xmmd_0), _uX_mm_rsqrt_sd(InHxmmd_a.m128_xmmd_1));
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
            double       _x, _y, _z;
        };
        __m128d        m128_xmmd[2];
        double            m128_d[3];
    };
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
        return 3;
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
        return 3;
    }

    /**
     * \brief double pointer size
     * \details Gets the size of double pointer
     * \returns count_t
     * \retval the size of double pointer
     */
    uX_constexpr count_t const uX_ABI dbl_ptr_size(void) const uX_noexcept
    {
        return 24;
    }

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

#ifndef uX_XMM_VECFLOAT3_H
#include "uXxmmvecfloat3.h"
#endif  /* uX_XMM_VECFLOAT3_H */

#ifndef uX_XMM_VECQWORD3_H
#include "uXxmmvecqword3.h"
#endif  /* uX_XMM_VECQWORD3_H */

#ifndef uX_XMM_VECUQWORD3_H
#include "uXxmmvecuqword3.h"
#endif  /* uX_XMM_VECUQWORD3_H */

/*
#ifdef uX_SSE2
#include "./inline/uXxmmvecdouble3.inl"
#endif // uX_SSE2*/

#endif // uX_SSE

#endif /*defined(uX_INTRINSICS_SUPPORT) && defined(uX_X86_OR_X64_CPU) && !defined(uX_NO_INTRINSICS_SUPPORT)*/

#endif // uX_XMM_VECDOUBLE3_H
